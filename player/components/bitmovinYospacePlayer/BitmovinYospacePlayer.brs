sub init()
  m.bitmovinPlayer = createObject("roSGNode", "BitmovinPlayerSDK:BitmovinPlayer")
  m.bitmovinPlayer.id = "BitmovinPlayer"

  m.top.BitmovinFunctions = m.bitmovinPlayer.BitmovinFunctions
  m.top.BitmovinFields = m.bitmovinPlayer.BitmovinFields
  m.top.BitmovinPlayerState = m.bitmovinPlayer.BitmovinPlayerState

  m.top.appendChild(m.bitmovinPlayer)

  YO_LOGLEVEL(YospaceVerbosity().TRACE)
  'inizialize the yospace sdk
  m.session   = YSSessionManager()
  YO_INFO("Initialized Yospace SDK Version: {0}", m.session.GetVersion())

  m.player    = {}
  m.player["AdBreakStart"]    = yo_Callback(cb_ad_break_start, m)
  m.player["AdvertStart"]     = yo_Callback(cb_advert_start, m)
  m.player["AdvertEnd"]       = yo_Callback(cb_advert_end, m)
  m.player["AdBreakEnd"]      = yo_Callback(cb_ad_break_end, m)

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
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.PLAY, params)
end sub

sub pause(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.PAUSE, params)
end sub

sub unload(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.UNLOAD, params)
end sub

sub preload(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.PRELOAD, params)
end sub

sub seek(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SEEK, params)
end sub

'OVERRIDEN load method
sub load(params)
  video = m.bitmovinPlayer.findNode("MainVideo")
  video.observeField("state", "onVideoPlaybackState")
  video.observeField("position", "onVideoPosition")
  video.observeField("timedMetaData", "onTimedMetaData")

  video.timedMetaDataSelectionKeys = ["*"]

  video.notificationInterval = 0.5

  'the player sets this to "true" regradless of the stream being live or VOD
  'video.enableTrickPlay = false

  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.LOAD, params)
end sub

sub mute(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.MUTE, params)
end sub

sub unmute(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.UNMUTE, params)
end sub

sub isMuted(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_MUTED, params)
end sub

sub captionMode(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.CAPTION_MODE, params)
end sub

sub isPlaying(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_PLAYING, params)
end sub

sub isPaused(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_PAUSED, params)
end sub

sub isStalled(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_STALLED, params)
end sub

sub availableSubtitles(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.AVAILABLE_SUBTITLES, params)
end sub

sub getSubtitles(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_SUBTITLES, params)
end sub

sub setSubtitles(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SET_SUBTITLES, params)
end sub

sub availableAudio(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.AVAILABLE_AUDIO, params)
end sub

sub getAudio(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_AUDIO, params)
end sub

sub setAudio(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SET_AUDIO, params)
end sub

'---------------------------- additional callbacks used by the yospace sdk ----------------------------
sub onVideoPlaybackState()
  video = m.bitmovinPlayer.findNode("MainVideo")
  if video.state = "finished"
    m.session.ReportPlayerEvent(YSPlayerEvents().END)
  else if video.state = "buffering"
    m.session.ReportPlayerEvent(YSPlayerEvents().BUFFER)
  else if video.state = "playing"
    m.session.ReportPlayerEvent(YSPlayerEvents().RESUME)
  else if video.state = "paused"
    m.session.ReportPlayerEvent(YSPlayerEvents().PAUSE)
  else if video.state = "stopped"
    m.session.ReportPlayerEvent(YSPlayerEvents().STALL)
  else
    print "unhandled video state: "; video.state
  end if
end sub

sub onVideoPosition()
  m.session.ReportPlayerEvent(YSPlayerEvents().POSITION, m.bitmovinPlayer.findNode("MainVideo").position)
end sub

sub onTimedMetaData()
  print "Timed Meta Data revieved"
  id3 = m.bitmovinPlayer.findNode("MainVideo").timedMetadata
  if (yo_IsNotNull(id3)) then
    id3obj = {}
    if (id3.Count() = 6) then
      for each i in id3
        if (len(i) = 4) then
          hex = id3[i]
          parsed = ""
          for j = 3 to len(hex) step 2
            pair = mid(hex, j, 2)
            parsed = parsed + chr(val(pair, 16))
          end for
          YO_DEBUG("Decoded ID3 tag: {0} as {1}", i, parsed)
          id3obj[i] = parsed
        end if
      end for
      m.session.ReportPlayerEvent(YSPlayerEvents().METADATA, id3obj)
    end if
  end if
end sub

'---------------------------- yospace api calls ----------------------------
sub requestYospaceURL(config)
  'TODO: Once the config file contains a way to tell if VOD or live should be used, check the config file so that the appropriate function can be called.
  isLive = false
  if isLive
     m.session.CreateForLive(config.source.hls, {USE_ID3:true}, yo_Callback(cb_session_ready))
  else
    m.session.CreateForVOD(config.source.hls, {USE_ID3:false}, yo_Callback(cb_session_ready))
  end if
end sub

sub cb_session_ready(response as Dynamic)
  m.session.RegisterPlayer(m.player)
  m.timeline = m.session.GetTimeline()
  m.config.source.hls = m.session.GetMasterPlaylist()
  load(m.config.source)
end sub

'---------------------------- yospace callbacks ----------------------------
' Called whenever the player enters an advert break
sub cb_ad_break_start(dummy = invalid as Dynamic)
  YO_TRACE("AD BREAK START")
end sub

' Called whenever an individual advert starts
sub cb_advert_start(miid as String)
  YO_TRACE("ADVERT START for {0}", miid)
end sub

' Called whenever an individual advert completes
sub cb_advert_end(miid as String)
  YO_TRACE("ADVERT END for {0}", miid)
end sub

' Called whenever the player exits an advert break
sub cb_ad_break_end(dummy = invalid as Dynamic)
  YO_TRACE("AD BREAK END")
end sub
