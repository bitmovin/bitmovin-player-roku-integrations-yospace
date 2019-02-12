sub init()
  m.bitmovinPlayer = createObject("roSGNode", "BitmovinPlayerSDK:BitmovinPlayer")
  m.bitmovinPlayer.id = "BitmovinPlayer"

  m.top.BitmovinFunctions = m.bitmovinPlayer.BitmovinFunctions
  m.top.BitmovinFields = m.bitmovinPlayer.BitmovinFields
  m.top.BitmovinPlayerState = m.bitmovinPlayer.BitmovinPlayerState

  m.top.appendChild(m.bitmovinPlayer)

  'inizialize the yospace sdk
  m.session   = YSSessionManager()
  YO_INFO("Initialized Yospace SDK Version: {0}", m.session.GetVersion())

  m.player    = {}
  m.player["AdBreakStart"]    = yo_Callback(cb_ad_break_start, m)
  m.player["AdvertStart"]     = yo_Callback(cb_advert_start, m)
  m.player["AdvertEnd"]       = yo_Callback(cb_advert_end, m)
  m.player["AdBreakEnd"]      = yo_Callback(cb_ad_break_end, m)
  m.player["UpdateTimeline"]  = yo_Callback(cb_update_timeline, m)

  m.timeline = []
end sub

'---------------------------- bitmovin player api function ----------------------------
'OVERRIDEN setup method
sub setup(params)
  m.config = {}
  m.config.append(params)
  requestYospaceURL(m.config)
end sub

sub play(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.PLAY, params)
end sub

sub pause(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.PAUSE, params)
end sub

sub unload(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.UNLOAD, params)
end sub

sub preload(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.PRELOAD, params)
end sub

sub seek(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.SEEK, params)
end sub

sub load(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.LOAD, params)
end sub

sub mute(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.MUTE, params)
end sub

sub unmute(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.UNMUTE, params)
end sub

sub isMuted(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.IS_MUTED, params)
end sub

sub captionMode(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.CAPTION_MODE, params)
end sub

sub isPlaying(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.IS_PLAYING, params)
end sub

sub isPaused(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.IS_PAUSED, params)
end sub

sub isStalled(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.IS_STALLED, params)
end sub

sub availableSubtitles(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.AVAILABLE_SUBTITLES, params)
end sub

sub getSubtitles(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.GET_SUBTITLES, params)
end sub

sub setSubtitles(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.SET_SUBTITLES, params)
end sub

sub availableAudio(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.AVAILABLE_AUDIO, params)
end sub

sub getAudio(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.GET_AUDIO, params)
end sub

sub setAudio(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.SET_AUDIO, params)
end sub

'---------------------------- additional wrappen functions ----------------------------



'---------------------------- yospace api calls ----------------------------

sub requestYospaceURL(config)
  'm.session.CreateForVOD(config.source.hls, {}, yo_Callback(cb_session_ready))
  m.session.CreateForLive(config.source.hls, {}, yo_Callback(cb_session_ready))
end sub

sub cb_session_ready(response as Dynamic)
  m.session.RegisterPlayer(m.player)
  m.timeline = m.session.GetTimeline()
  m.config.source.hls = m.session.GetMasterPlaylist()
  load(m.config.source)
end sub

'---------------------------- yospace callbacks ----------------------------

sub cb_ad_break_start(dummy = invalid as Dynamic)
    YO_TRACE("AD BREAK START")
end sub

' Called whenever an individual advert starts
sub cb_advert_start(miid as String)
    YO_TRACE("ADVERT START for {0}", miid)

    ' Display the "Advertisement" overlay
    m.advert.visible = true
end sub

' Called whenever an individual advert completes
sub cb_advert_end(miid as String)
    YO_TRACE("ADVERT END for {0}", miid)

    ' Hide the "Advertisement" overlay
    m.advert.visible = false
end sub

' Called whenever the player exits an advert break
sub cb_ad_break_end(dummy = invalid as Dynamic)
    YO_TRACE("AD BREAK END")

    if (m.seekTarget <> -1) then
        YO_DEBUG(" ************ POST ADVERT SEEK ALLOWED")
        m.video.seek = m.seekTarget
        m.seekTarget = -1
    end if
end sub

sub cb_update_timeline(tl as Dynamic)
    YO_DEBUG("TIMELINE UPDATED IN APP")

    if (tl <> invalid) then
        ' For this demo app, we will pre-process the timeline
        ' into an array suitable for display by our Hud component
        eles = tl.GetAllElements()
        dur     = 0.0   ' Total timeline duration
        content = {}
        content["elements"] = []

        for each ele in eles
            if ele.GetType() = "VOD" then
                ' Add a simply VOD element
                content["elements"].Push({mode:"VOD", size:ele.GetDuration()})
            else if ele.GetType() = "LIVE" then
                ' Add a piece of live content
                content["elements"].Push({mode:"LIVE", size:ele.GetDuration()})
            else
                ' For advert breaks, we are given the entire break
                ads = ele.GetAdverts().GetAdverts()

                ' So we will iterate through the break to add individual ad pieces
                for each ad in ads
                    ' Add a single advert item. Notionally, IsActive() means that the
                    ' ad should be watched and should not be "skippable"
                    content["elements"].Push({mode:"ADVERT", size:ad.GetDuration(), state:ad.IsActive()})
                end for
            end if

            ' Record the duration into the total duration count
            dur = dur + ele.GetDuration()
        end for

        ' Assign the final total duration calculated and pass the
        ' timeline object to our Hud component
        YO_TRACE("Total Duration: {0}", dur)
        content["duration"] = dur
        m.hud.content       = content

        ' Set the total stream duration as appropriate
        if (m.session.GetSession()._CLASSNAME = "YSLiveSession") then
            ' We ensure that the duration is not set for live content
            ' so that the progress tracker and timeline isn't displayed
            m.hud.duration = 0.0
        else
            ' Update the duration in the Hud
            m.hud.duration = dur
        end if
    else
        YO_WARN("Timeline was invalid")
    end if
end sub
