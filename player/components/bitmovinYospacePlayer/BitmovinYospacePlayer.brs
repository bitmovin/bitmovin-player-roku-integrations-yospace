sub init()
  m.source = {}
  m.top.DebugVerbosityEnum = getDebugVerbosityEnums()
  m.TIMELINE_ENTRY_TYPE_ADVERT = "ADVERT"

  m.policy = getDefaultBitmovinYospacePlayerPolicy()
  m.policyHelper_seekStartPosition = -1
  m.policyHelper_originalSeekDestination = -1

  m.BitmovinPlayerSDK = CreateObject("roSgNode", "componentLibrary")
  m.BitmovinPlayerSDK.id = "BitmovinPlayerSDK"
  m.BitmovinPlayerSDK.uri = "https://cdn.bitmovin.com/player/roku/1/bitmovinplayer.zip"
  m.BitmovinPlayerSDK.observeField("loadStatus", "onBitmovinPlayerSDKLoaded")

  m.BitmovinPlayerSDKLoaderTask = CreateObject("roSgNode", "Task")
  m.BitmovinPlayerSDKLoaderTask.appendChild(m.BitmovinPlayerSDK)
  m.top.appendChild(m.BitmovinPlayerSDKLoaderTask)

  YO_LOGLEVEL(m.top.DebugVerbosityEnum.INFO)

  ' initialize the Yospace SDK
  m.session = YSSessionManager()

  YO_INFO("Initialized Yospace SDK Version: {0}", m.session.GetVersion())

  m.yospaceAdEventCallbacks = {}
  m.yospaceAdEventCallbacks["AdBreakStart"] = yo_Callback(cb_ad_break_start, m)
  m.yospaceAdEventCallbacks["AdvertStart"] = yo_Callback(cb_advert_start, m)
  m.yospaceAdEventCallbacks["AdvertEnd"] = yo_Callback(cb_advert_end, m)
  m.yospaceAdEventCallbacks["AdBreakEnd"] = yo_Callback(cb_ad_break_end, m)
end sub

sub onBitmovinPlayerSDKLoaded()
  if m.BitmovinPlayerSDK.loadStatus = "ready"
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

    m.bitmovinPlayer.findNode("KeyEventHandler").callFunc("setKeyPressValidationCallback", "isKeyPressValid", m.top)

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
  m.policyHelper_seekStartPosition = getPlayerPosition()
end sub

sub onSeeked()
  m.top.seeked = m.bitmovinPlayer.seeked
  currentPlayerPosition = getPlayerPosition()
  ' Since there is no way of stopping the default UI and its build in key event handler
  ' from seeking to any point in the video,
  ' the check if seeking is allowed has to be made after seeking has happened
  ' and, if necessary, has to be corrected.
  allowedSeek = m.policy.canSeekTo(currentPlayerPosition, m.policyHelper_seekStartPosition)
  if (currentPlayerPosition <> allowedSeek) and (m.policyHelper_seekStartPosition > -1)
    m.policyHelper_originalSeekDestination = currentPlayerPosition
    seek(allowedSeek)
  end if
  m.policyHelper_seekStartPosition = -1
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
  if m.policy.canSeek()
    seekDestination = m.policy.canSeekTo(params)
    if seekDestination <> params then m.policyHelper_originalSeekDestination = getPlayerPosition()
    m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SEEK, seekDestination)
  end if
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
  if m.policy.canMute()
    m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.MUTE, params)
  end if
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
  if m.policy.canPause()
    return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_PAUSED, params)
  end if
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
    if m.policy.canSkip() = 0
      ad = getCurrentAd()
      seek(getAdStartTime(ad) + ad.GetDuration())
      m.top.AdSkipped = ad.GetMediaID()
    else
      print "Skip not allowed!"
    end if
  end if
end sub

function ad_list()
  advertElements = []
  timeline = m.session.GetTimeline()
  if timeline <> invalid
    timelineElements = timeline.GetAllElements()
    for each tlElement in timelineElements
      if tlElement.getType() = m.TIMELINE_ENTRY_TYPE_ADVERT
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

function isKeyPressValid(key)
  if key = "right" or key = "left"
    if m.policy.canSeek()
      return true
    end if
    return false
  end if
  return true
end function

sub onAdQuartile(quartile)
  m.top.adQuartile = quartile
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
  metaData = m.bitmovinPlayer.findNode("MainVideo").timedMetadata
  if metaData.Source = "emsg" then metaData = mapEmsgMetaData(metaData) else metaData = mapID3MetaData(metaData)
  if metaData = invalid or metaData.Count() = 0
    print "Recieved meta data was invalid, not reporting to Yospace"
    return
  end if
  m.session.ReportPlayerEvent(YSPlayerEvents().METADATA, metaData)
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
function getPlayerPosition() as Float
  return m.bitmovinPlayer.findNode("MainVideo").position
end function

function getCurrentAd()
  return m.session.GetSession().GetCurrentAdvert()
end function

function toMagicTime(playbackTime)
  mTime = playBackTime
  for each timelineElement in m.session.GetTimeline().GetAllElements()
    if timelineElement.GetType() = m.TIMELINE_ENTRY_TYPE_ADVERT
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
  return getCurrentAd() <> invalid
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
