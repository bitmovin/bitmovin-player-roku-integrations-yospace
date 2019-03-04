sub init()
  m.source = {}
  m.top.DebugVerbosityEnum = getDebugVerbosityEnums()
  m.ADVERT$ = "ADVERT"
  m.policy = getDefaultBitmovinYospacePlayerPolicy()

  m.top.findNode("loadPlayerTask").findNode("BitmovinPlayerSDK").observeField("loadStatus", "onBitmovinPlayerSDKLoaded")
  YO_LOGLEVEL(m.top.DebugVerbosityEnum.INFO)

  ' inizialize the yospace sdk
  m.session   = YSSessionManager()
  YO_INFO("Initialized Yospace SDK Version: {0}", m.session.GetVersion())

  m.player = {}
  m.player["AdBreakStart"] = yo_Callback(cb_ad_break_start, m)
  m.player["AdvertStart"] = yo_Callback(cb_advert_start, m)
  m.player["AdvertEnd"] = yo_Callback(cb_advert_end, m)
  m.player["AdBreakEnd"] = yo_Callback(cb_ad_break_end, m)
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
  if isAdActive()
    ad = getCurrentAd()
    seek(getAdStartTime(ad) + ad.GetDuration())
    m.top.AdSkipped = ad.GetMediaID()
  end if
end sub

function ad_list()
  advertElements = []
  timeline = m.session.GetTimeline()
  if timeline <> invalid
    timelineElements = timeline.GetAllElements()
    for each tlElement in timelineElements
      if tlElement.getType() = m.ADVERT$
        advertElements.push(tlElement)
      end if
    end for
    adList = []
    for each adElement in advertElements
      adList.Push(mapAdBreak(adElement.GetAdverts())) ' GetAdverts() returns the adBreak contained in the advert timeline element
    end for
    return adList
  else
    print "timeline invalid"
  end if
  return []
end function

' returns the ad break of the currently active ad, returns invalid if no ad is currently active
function ad_getActiveAdBreak()
  if isAdActive()
    return mapAdBreak(getCurrentAd().GetBreak())
  end if
  return invalid
end function

' returns the currently active ad, returns invalid if no ad is currently active
function ad_getActiveAd()
  if isAdActive()
    return mapAd(getCurrentAd())
  end if
  return invalid
end function

sub setPolicy(p)
  m.policy = p
end sub

sub onAdQuartile(quartile)
  m.top.AdQuartile = quartile
end sub

' ---------------------------- additional callbacks used by the yospace sdk ----------------------------
sub onVideoPlaybackState()
  videoState = m.bitmovinPlayer.findNode("MainVideo").state
  if videoState = "finished"
    m.session.ReportPlayerEvent(YSPlayerEvents().END)
  else if videoState = "buffering"
    m.session.ReportPlayerEvent(YSPlayerEvents().BUFFER)
  else if videoState = "playing"
    m.session.ReportPlayerEvent(YSPlayerEvents().RESUME)
  else if videoState = "paused"
    m.session.ReportPlayerEvent(YSPlayerEvents().PAUSE)
  else if videoState = "stopped"
    m.session.ReportPlayerEvent(YSPlayerEvents().STALL)
  else
    print "unhandled video state: "; videoState
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
     m.session.CreateForLive(source.hls, { USE_ID3: true }, yo_Callback(cb_session_ready))
  else if Lcase(source.assetType) = "vod"
    m.session.CreateForVOD(source.hls, { USE_ID3: false }, yo_Callback(cb_session_ready))
  else
    print "not supported asset type!"
  end if
end sub

' ---------------------------- util functions ----------------------------
function getPlayerPosition()
  return m.bitmovinPlayer.findNode("MainVideo").position
end function

function getCurrentAd()
  return m.session.GetSession().GetCurrentAdvert()
end function

function toMagicTime(playbackTime)
  mTime = playBackTime
  for each timelineElement in m.session.GetTimeline().GetAllElements()
    if timelineElement.GetType() = m.ADVERT$
      if (timelineElement.GetOffset() + timelineElement.GetDuration()) < playbackTime
        mTime -= timelineElement.GetDuration()
      else if (playBackTime > timelineElement.GetOffset()) and (playBackTime < (timelineElement.GetOffset() + timelineElement.GetDuration()))
        mTime -= (playBackTime - timelineElement.GetOffset())
      end if
    end if
  end for
  return mTime
end function

function isAdActive()
  if getCurrentAd() <> invalid
    return true
  else
    return false
  end if
end function

function getAdStartTime(ad)
  adStartTime = ad.GetBreak().GetStart()
  for each advert in ad.GetBreak().GetAdverts()
    if advert._INSTANCEID = ad._INSTANCEID
      return adStartTime
    else
      adStartTime += advert.GetDuration()
    end if
  end for
end function
