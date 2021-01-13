sub init()
  m.top.id = CreateObject("roDeviceInfo").getRandomUuid()
  m.top.observeFieldScoped("focusedChild", "onFocusChanged")

  m.source = {}
  m.top.DebugVerbosityEnum = getDebugVerbosityEnums()
  m.BitmovinYospaceTaskEnums = getBitmovinYospaceTaskEnum()
  m.TIMELINE_ENTRY_TYPE_ADVERT = "ADVERT"

  m.policy = initBitmovinYospacePlayerPolicy()
  m.policyHelper_seekStartPosition = -1

  m.bitmovinPlayer = createObject("roSGNode", "BitmovinPlayer")
  m.bitmovinPlayer.id = "BitmovinPlayer"

  m.BitmovinFunctions = m.bitmovinPlayer.BitmovinFunctions
  m.BitmovinFunctions.Append(getYospaceRelatedFunctions())
  m.top.BitmovinFunctions = m.BitmovinFunctions

  m.BitmovinFields = m.bitmovinPlayer.BitmovinFields
  m.BitmovinFields.Append(getYospaceRelatedFields())
  m.top.BitmovinFields = m.BitmovinFields

  m.top.BitmovinPlayerState = m.bitmovinPlayer.BitmovinPlayerState

  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.ERROR, "catchVideoError")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.WARNING, "catchVideoWarning")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.SEEK, "onSeek")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.SEEKED, "onSeeked")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.PLAYER_STATE, "onPlayerStateChanged")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.CURRENT_TIME, "onCurrentTimeChanged")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.TIME_SHIFT, "onTimeShift")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.TIME_SHIFTED, "onTimeShifted")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.SOURCE_LOADED, "onSourceLoaded")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.SOURCE_UNLOADED, "onSourceUnloaded")
  m.bitmovinPlayer.ObserveField(m.top.BitmovinFields.PLAY, "onPlay")
  m.bitmovinPlayer.observeField(m.top.BitmovinFields.METADATA, "onMetadata")


  m.bitmovinPlayer.findNode("KeyEventHandler").callFunc("setKeyPressValidationCallback", "isKeyPressValid", m.top)

  m.top.appendChild(m.bitmovinPlayer)

end sub

sub initializeYoSpace()
  m.yospaceTask = CreateObject("roSGNode", "BitmovinYospacePlayerTask")
  m.yospaceTask.observeField("taskReady", "onTaskReady")
end sub

sub onTaskReady()
  m.yospaceTask.bitmovinYospacePlayer = m.top
  setFieldObservers()
  m.top.isPlayerReady = true
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
  updatePolicyHelper_seekStartPosition()
end sub

sub onSeeked()
  m.top.seeked = toMagicTime(m.bitmovinPlayer.seeked,m.yospaceTask.Timeline)
end sub

sub onPlayerStateChanged()
  m.top.playerState = m.bitmovinPlayer.playerState
  reportPlayerStateChanged(m.top.playerState)
end sub

sub onTimeShift()
  m.top.timeShift = m.bitmovinplayer.timeShift
end sub

sub onTimeShifted()
  m.top.timeShifted = m.bitmovinplayer.timeShifted
end sub

sub onSourceLoaded()
  m.top.sourceLoaded = m.bitmovinPlayer.sourceLoaded
end sub

sub onSourceUnloaded()
  reportPlayerStateChanged(m.top.BitmovinPlayerState.FINISHED)
  resetYospaceTask()
  m.policy.resetWatchedAdBreaks()
  m.top.sourceUnloaded = m.bitmovinPlayer.sourceUnloaded
end sub

sub onPlay()
  m.top.play = m.bitmovinPlayer.play
end sub

' ---------------------------- bitmovin player api function ----------------------------
' OVERRIDEN setup method
sub setup(params)
  ' yospace config
  if params.yospaceConfig.debugVerbosity <> invalid
    m.yospaceTask.callFunction = {id: m.BitmovinYospaceTaskEnums.Functions.SET_DEBUG_LEVEL, arguments: {debugLevel: params.yospaceConfig.debugVerbosity}}
  end if

  if params.yospaceConfig.enableRAF <> invalid
    m.yospaceTask.callFunction = {id: m.BitmovinYospaceTaskEnums.Functions.SET_ENABLE_RAF, arguments: {enableRAF: params.yospaceConfig.enableRAF}}
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
  if m.policy.canPause()
    m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.PAUSE, params)
  end if
end sub

sub unload(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.UNLOAD, params)
end sub

sub preload(params)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.PRELOAD, params)
end sub

sub seek(params)
  if m.policy.canSeek()
    seekDestination = m.policy.canSeekTo(params, getCurrentTime())
    list = m.yospaceTask.adList
    seekDestination = toAbsoluteTime(seekDestination, list) - 1
    print "Seeking to destination: "; seekDestination
    m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SEEK, seekDestination)
  end if
end sub

' OVERRIDEN load method
sub load(source)
  m.retryExcludingYospace = source.retryExcludingYospace
  url = ""
  assetType = "vod"

  if type(source) = "roAssociativeArray"
    url = source.hls
    assetType = source.assetType
  else if type(source) = "roSGNode" and source.isSubtype("ContentNode")
    url = source.url
    if source.live then assetType = "live"
  end if

  if url = invalid or url = ""
    ' If the source is invalid we purposly call load on the Bitmovin Player with an invalid source to let the player handle the error
    ' That way we do not have to expose the error handling or import it into the Yospace integration
    m.bitmovinPlayer.callFunc("load", {})
    return
  end if

  m.source = source
  requestYospaceURL(url, assetType)
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

sub timeShift(offset)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.TIME_SHIFT, offset)
end sub

function getTimeShift(params = invalid)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_TIME_SHIFT, params)
end function

function getMaxTimeShift(params = invalid)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_MAX_TIME_SHIFT, params)
end function

function isLive(params = invalid)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_LIVE, params)
end function

function getConfig(params = invalid)
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_CONFIG, params)
end function

function getDuration(params = invalid)
  return toMagicTime(m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_DURATION, params),m.yospaceTask.Timeline)
end function

sub setHttpHeaders(headers)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SET_HTTP_HEADERS, headers)
end sub

sub instantReplay(params = invalid)
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.INSTANT_REPLAY, param)
end sub

' ---------------------------- ad api ----------------------------
sub setTrapDuration(params)
  m.policy.trapDuration = params
end sub

sub setSkipWatchedAdBreaks(params)
  m.policy.skipWatchedAds = params
end sub

sub ad_skip(params = invalid)
  if m.policy.canSkip() = 0
    m.yospaceTask.callFunction = {id: m.BitmovinYospaceTaskEnums.Functions.SKIP_AD}
  end if
end sub

function ad_list(params = invalid)
  return m.yospaceTask.adList
end function

' returns the ad break of the currently active ad, returns invalid if no ad is currently active
function ad_getActiveAdBreak(params = invalid)
  return m.yospaceTask.activeAdBreak
end function

' returns the currently active ad, returns invalid if no ad is currently active
function ad_getActiveAd(params = invalid)
  return m.yospaceTask.activeAd
end function

sub companionRendered(companionId = invalid)
  print "bm ysplayer companionRendered"
  m.yospaceTask.callFunction = {id: m.BitmovinYospaceTaskEnums.Functions.REPORT_COMPANION_EVENT, arguments: {companionId: companionId, event: "creativeView"}}.
end sub

function isKeyPressValid(key)
  if key = "right" or key = "left" or key = "fastforward" or key = "rewind"
    if m.policy.canSeek()
      return true
    end if
    return false
  else if key = "play"
    if m.policy.canPause()
      return true
    end if
    return false
  end if
  return true
end function

sub onAdQuartile(quartile)
  m.top.adQuartile = quartile
end sub

sub reportPlayerStateChanged(videoState)
  if videoState = m.top.BitmovinPlayerState.FINISHED
    m.yospaceTask.EventReport = {id: YSPlayerEvents().END}
  else if videoState = m.top.BitmovinPlayerState.STALLING
    m.yospaceTask.EventReport = {id: YSPlayerEvents().BUFFER}
  else if videoState = m.top.BitmovinPlayerState.PLAYING
    m.yospaceTask.EventReport = {id: YSPlayerEvents().RESUME}
  else if videoState = m.top.BitmovinPlayerState.PAUSED
    m.yospaceTask.EventReport = {id: YSPlayerEvents().PAUSE}
  else if videoState = m.top.BitmovinPlayerState.ERROR
    m.yospaceTask.EventReport = {id: YSPlayerEvents().ERROR}
  else
    print "Not reporting video state to Yospace: "; videoState
  end if
end sub

sub onCurrentTimeChanged()
  m.top.currentTime = toMagicTime(getCurrentTime(), m.yospaceTask.Timeline)
  m.yospaceTask.EventReport = {id: YSPlayerEvents().POSITION, data: getCurrentTime()}
end sub

sub onMetadata()
  metadata = m.bitmovinPlayer.metadata
  if metadata.Source = "emsg" then metadata = mapEmsgMetaData(metadata) else metadata = mapID3MetaData(metadata)
  if metadata = invalid or metadata.Count() = 0
    print "Received meta data was invalid, not reporting to Yospace"
    return
  end if
  if isLive() = true
    m.yospaceTask.EventReport = {id: YSPlayerEvents().METADATA, data: metadata}
  end if
end sub

sub requestYospaceURL(url, assetType)
  if assetType = invalid or Lcase(assetType) = "none"
    m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.LOAD, m.source)
  else if Lcase(assetType) = "live"
     m.yospaceTask.StreamContent = {type: "live", url: url, options: {USE_ID3: true}}
  else if Lcase(assetType) = "vod"
    m.yospaceTask.StreamContent = {type: "vod", url: url, options: {USE_ID3: false}}
  else
    print "not supported asset type!"
  end if
end sub

sub onInitializationFailure()
  print "Initialization failed; ", m.yospaceTask.InitializationFailure
  if m.retryExcludingYospace = true
    print "Retrying excluding Yospace"
    m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.LOAD, m.source)
  end if
end sub

sub onUrlReceived()
  if type(m.source) = "roAssociativeArray"
    m.source.hls = m.yospaceTask.PlaybackURL
  else if type(m.source) = "roSGNode" and m.source.isSubtype("ContentNode")
    m.source.url = m.yospaceTask.PlaybackURL
  end if
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.LOAD, m.source)
  m.top.playbackUrl = m.yospaceTask.PlaybackURL
end sub

sub setFieldObservers()
  m.yospaceTask.observeField("AdBreakStart", "onAdBreakStart")
  m.yospaceTask.observeField("AdBreakEnd", "onAdBreakEnd")
  m.yospaceTask.observeField("AdvertStart", "onAdvertStart")
  m.yospaceTask.observeField("AdvertEnd", "onAdvertEnd")
  m.yospaceTask.observeField("adSkipped", "onAdSkipped")
  m.yospaceTask.observeField("PlaybackURL", "onUrlReceived")
  m.yospaceTask.observeField("InitializationFailure", "onInitializationFailure")
end sub

sub onAdBreakStart()
  m.top.adBreakStarted = m.yospaceTask.AdBreakStart
end sub

sub onAdBreakEnd()
  print "BitmovinYospacePlayer::onAdBreakEnd "; m.yospaceTask.AdBreakEnd
  m.policy.markAdBreakWatched(m.yospaceTask.AdBreakEnd)
  m.top.adBreakFinished = m.yospaceTask.AdBreakEnd

  currentElement = getCurrentElement(getCurrentTime())
end sub

sub onAdvertStart()
  m.top.adStarted = m.yospaceTask.AdvertStart
end sub

sub onAdvertEnd()
  m.top.adFinished = m.yospaceTask.AdvertEnd
end sub

sub onAdSkipped()
  m.top.adSkipped = m.yospaceTask.adSkipped
end sub

sub setContentMetaData(params)
  m.yospaceTask.callFunction = {id: m.BitmovinYospaceTaskEnums.Functions.SET_CONTENT_METADATA, arguments: params}
end sub

sub updatePolicyHelper_seekStartPosition()
  m.policyHelper_seekStartPosition = getCurrentTime()
end sub

sub checkIfSeekWasAllowed()
  currentPlayerPosition = getCurrentTime()
  ' Since there is no way of stopping the default UI and its built-in key event handler
  ' from seeking to any point in the video,
  ' the check if seeking is allowed has to be made after seeking has happened
  ' and, if necessary, has to be corrected.
  allowedSeek = m.policy.canSeekTo(currentPlayerPosition, m.policyHelper_seekStartPosition)
  if (currentPlayerPosition <> allowedSeek) and (m.policyHelper_seekStartPosition > -1)
    print "Seeking again because seek wasnt allowed: " + Str(allowedSeek)
    m.bitmovinPlayer.callFunc("seek", allowedSeek)
  end if
  m.policyHelper_seekStartPosition = -1
end sub

sub onFocusChanged(event)
  if event.getNode() = m.top.id
    m.bitmovinPlayer.setFocus(true)
  end if
end sub

function getCurrentTime(params = invalid)
  return m.bitmovinPlayer.currentTime
end function

function getCurrentElement(currentTime)
  allElements = m.yospaceTask.timeline.elements
  time = 0
  for each element in allElements
    time += element.size
    if currentTime < time then return element
  end for
end function

sub resetYospaceTask()
  m.yospaceTask.adList = []
  m.yospaceTask.lastAd = invalid
  m.yospaceTask.activeAdBreak = invalid
  m.yospaceTask.activeAd = invalid
end sub

