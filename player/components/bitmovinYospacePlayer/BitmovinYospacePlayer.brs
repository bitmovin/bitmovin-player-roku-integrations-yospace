sub init()
  m.source = {}
  m.top.DebugVerbosityEnum = getDebugVerbosityEnums()

  m.top.findNode("loadPlayerTask").findNode("BitmovinPlayerSDK").observeField("loadStatus", "onBitmovinPlayerSDKLoaded")
  YO_LOGLEVEL(m.top.DebugVerbosityEnum.INFO)

  ' inizialize the yospace sdk
  m.session   = YSSessionManager()
  YO_INFO("Initialized Yospace SDK Version: {0}", m.session.GetVersion())

  m.player    = {}
  m.player["AdBreakStart"]    = yo_Callback(cb_ad_break_start, m)
  m.player["AdvertStart"]     = yo_Callback(cb_advert_start, m)
  m.player["AdvertEnd"]       = yo_Callback(cb_advert_end, m)
  m.player["AdBreakEnd"]      = yo_Callback(cb_ad_break_end, m)
end sub

sub onBitmovinPlayerSDKLoaded()
  if m.top.findNode("loadPlayerTask").findNode("BitmovinPlayerSDK").loadStatus = "ready"
    m.bitmovinPlayer = createObject("roSGNode", "BitmovinPlayerSDK:BitmovinPlayer")
    m.bitmovinPlayer.id = "BitmovinPlayer"

    m.top.BitmovinFunctions = m.bitmovinPlayer.BitmovinFunctions
    m.top.BitmovinFields = m.bitmovinPlayer.BitmovinFields
    m.top.BitmovinPlayerState = m.bitmovinPlayer.BitmovinPlayerState

    m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.ERROR, "catchVideoError")
    m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.WARNING, "catchVideoWarning")
    m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.SEEK, "onSeek")
    m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.SEEKED, "onSeeked")
    m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.PLAYER_STATE, "onPlayerStateChanged")

    m.top.appendChild(m.bitmovinPlayer)
    m.top.isPlayerReady = true
  end if
end sub

' ---------------------------- bitmovin player field event handlers ----------------------------
sub catchVideoError()
  m.top.error = m.bitmovinPlayer.error
end sub

sub catchVideoWarning()
  m.top.warning = m.bitmovinplayer.warning
end sub

sub onSeek()
  m.top.seek = m.bitmovinPlayer.seek
end sub

sub onSeeked()
  m.top.seeked = m.bitmovinPlayer.seeked
end sub

sub onPlayerStateChanged()
  m.top.playerState = m.bitmovinPlayer.playerState
end sub

' ---------------------------- bitmovin player api function ----------------------------
' OVERRIDEN setup method
sub setup(params)
  ' yospace config
  if params.yospaceConfig.debugVerbosity <> invalid
    YO_LOGLEVEL(params.yospaceConfig.debugVerbosity)
  end if
  config = {}
  config.append(params.config)
  if (config.source <> invalid)
    setupCfg = {}
    setupCfg.append(config)
    setupCfg.source = invalid
    m.bitmovinplayer.callFunc(m.top.BitmovinFunctions.SETUP, setupCfg)
    load(config.source)
  else
    m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SETUP, config)
  end if
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

' OVERRIDEN load method
sub load(params)
  m.source.append(params)
  video = m.bitmovinPlayer.findNode("MainVideo")
  video.observeField("state", "onVideoPlaybackState")
  video.observeField("position", "onVideoPosition")
  video.observeField("timedMetaData", "onTimedMetaData")

  video.timedMetaDataSelectionKeys = ["*"]

  video.notificationInterval = 0.5

  ' the player sets this to "true" regradless of the stream being live or VOD
  ' video.enableTrickPlay = false

  requestYospaceURL(m.source)
end sub

sub mute(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.MUTE, params)
end sub

sub unmute(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.UNMUTE, params)
end sub

function isMuted(params)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_MUTED, params)
end function

sub captionMode(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.CAPTION_MODE, params)
end sub

function isPlaying(params)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_PLAYING, params)
end function

function isPaused(params)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_PAUSED, params)
end function

function isStalled(params)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_STALLED, params)
end function

function availableSubtitles(params)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.AVAILABLE_SUBTITLES, params)
end function

function getSubtitle(params)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_SUBTITLE, params)
end function

sub setSubtitles(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SET_SUBTITLE, params)
end sub

function availableAudio(params)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.AVAILABLE_AUDIO, params)
end function

function getAudio(params)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_AUDIO, params)
end function

sub setAudio(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SET_AUDIO, params)
end sub

' ---------------------------- ad api ----------------------------
sub ad_skip()
  ad = getCurrentAd()
  timeline = m.session.GetTimeline()
  skipDestination = 0
  if ad <> invalid
    for each element in timeline.GetAllElements()
      if element.getType() = "ADVERT"
        for each e in element.GetAdverts().GetAdverts()
          if e._INSTANCEID = ad._INSTANCEID
            skipDestination = element.GetOffset()
            ads = e.GetBreak().GetAdverts()
            for each a in ads
              if a._INSTANCEID = e._INSTANCEID
                skipDestination += a.GetDuration()
                EXIT FOR
              else
                skipDestination += a.GetDuration()
              end if
            end for
          end if
        end for
      end if
    end for
    seek(skipDestination)
    m.top.adSkipped = ad.GetMediaID()
  end if
end sub

function ad_list()
  allAds = []
  timeline = m.session.GetTimeline()
  if timeline <> invalid
    elements = timeline.GetAllElements()
    for each e in elements
      if e.getType() = "ADVERT"
        allAds.push(e)
      end if
    end for
    adList = []
    for each entry in allAds
      adList.Push(mapAdBreak(entry.GetAdverts()))
    end for
    return adList
  else
    print "timeline invalid"
  end if
end function

' returns the ad break of the currently active ad, returns invalid if no ad is currently active
function ad_getActiveAdBreak()
  ad = getCurrentAd()
  if ad <> invalid
  ' Variable name cannot be simply "adBreak" as it would interfere with an already existing "adBreak" from the yospaceSDK
    myAdBreak = ad.GetBreak()
    if myAdBreak <> invalid
      return mapAdBreak(myAdBreak)
    end if
  end if
  return invalid
end function

' returns the currently active ad, returns invalid if no ad is currently active
function ad_getActiveAd()
  ad = getCurrentAd()
  if ad <> invalid
    return mapAd(ad)
  else
    return invalid
  end if
end function

sub onAdQuartile(quartile)
  m.top.adQuartile = quartile
end sub

' ---------------------------- additional callbacks used by the yospace sdk ----------------------------
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
  m.session.ReportPlayerEvent(YSPlayerEvents().POSITION, getPlayerPosition())
end sub

sub onTimedMetaData()
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

' ---------------------------- yospace api call ----------------------------
sub requestYospaceURL(source)
  if Lcase(source.assetType) = "live"
     m.session.CreateForLive(source.hls, {USE_ID3:true}, yo_Callback(cb_session_ready))
  else if Lcase(source.assetType) = "vod"
    m.session.CreateForVOD(source.hls, {USE_ID3:false}, yo_Callback(cb_session_ready))
  else
    print "not supported asset type!"
  end if
end sub

sub cb_session_ready(response as Dynamic)
  m.session.RegisterPlayer(m.player)
  m.source.hls = m.session.GetMasterPlaylist()
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.LOAD, m.source)
end sub

' ---------------------------- yospace callbacks ----------------------------
' Called whenever the player enters an advert break
sub cb_ad_break_start(dummy = invalid as Dynamic)
  YO_TRACE("AD BREAK START")
  getCurrentAdBreak()
  m.top.adBreakStarted = getCurrentAdBreak()._INSTANCEID
end sub

' Called whenever an individual advert starts
sub cb_advert_start(miid as String)
  YO_TRACE("ADVERT START for {0}", miid)
  m.top.adStarted = getCurrentAd().GetMediaID()
end sub

' Called whenever an individual advert completes
sub cb_advert_end(miid as String)
  YO_TRACE("ADVERT END for {0}", miid)
  m.top.adFinised = getCurrentAd().GetMediaID()
end sub

' Called whenever the player exits an advert break
sub cb_ad_break_end(dummy = invalid as Dynamic)
  YO_TRACE("AD BREAK END")
  m.top.adBreakFinished = getCurrentAdBreak((getPlayerPosition()-1))._INSTANCEID
end sub

' ---------------------------- util functions ----------------------------
function getPlayerPosition()
  return m.bitmovinPlayer.findNode("MainVideo").position
end function

function getCurrentAd()
  return m.session.GetSession().GetCurrentAdvert()
end function

function getCurrentAdBreak(time = invalid)
  timeline = m.session.GetTimeline()
  if time = invalid
    time = getPlayerPosition()
  end if
  element = timeline.GetElementAtTime(time)
  if element.GetType() = "ADVERT"
    return element.GetAdverts()
  end if
end function

function toMagicTime(playbackTime)
  mTime = playBackTime
  for each timelineElement in m.session.GetTimeline().GetAllElements()
    if timelineElement.GetType() = "ADVERT"
      if (timelineElement.GetOffset() + timelineElement.GetDuration()) < playbackTime
        mTime -= timelineElement.GetDuration()
      else if (playBackTime > timelineElement.GetOffset()) and (playBackTime < (timelineElement.GetOffset() + timelineElement.GetDuration()))
        mTime -= (playBackTime - timelineElement.GetOffset())
      end if
    end if
  end for
  return mTime
end function
