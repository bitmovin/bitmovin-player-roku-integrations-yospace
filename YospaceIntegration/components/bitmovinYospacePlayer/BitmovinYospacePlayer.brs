sub init()
  m.top.id = CreateObject("roDeviceInfo").getRandomUuid()
  m.top.observeFieldScoped("focusedChild", "onFocusChanged")

  m.source = {}
  m.top.DebugVerbosityEnum = getDebugVerbosityEnums()
  m.BitmovinYospaceTaskEnums = getBitmovinYospaceTaskEnum()
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
end sub

sub onBitmovinPlayerSDKLoaded()
  if m.BitmovinPlayerSDK.loadStatus = "ready"
    m.bitmovinPlayer = createObject("roSGNode", "BitmovinPlayerSDK:BitmovinPlayer")
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

    m.bitmovinPlayer.findNode("KeyEventHandler").callFunc("setKeyPressValidationCallback", "isKeyPressValid", m.top)

    m.top.appendChild(m.bitmovinPlayer)

    m.yospaceTask = CreateObject("roSGNode", "BitmovinYospacePlayerTask")
    m.yospaceTask.observeField("taskReady", "onTaskReady")
  end if
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
  m.top.seeked = m.bitmovinPlayer.seeked
  checkIfSeekWasAllowed()
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
    if seekDestination <> params then m.policyHelper_originalSeekDestination = params
    m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.SEEK, seekDestination)
  end if
end sub

' OVERRIDEN load method
sub load(params)
  m.source.append(params)
  m.bitmovinPlayer.observeField("metadata", "onMetadata")
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

function getTimeShift()
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_TIME_SHIFT)
end function

function getMaxTimeShift()
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_MAX_TIME_SHIFT)
end function

function isLive()
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.IS_LIVE)
end function

function getConfig()
  return m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.GET_CONFIG)
end function

' ---------------------------- ad api ----------------------------
sub ad_skip()
  if m.policy.canSkip() = 0
    m.yospaceTask.callFunction = {id: m.BitmovinYospaceTaskEnums.Functions.SKIP_AD}
  end if
end sub

function ad_list()
  return m.yospaceTask.adList
end function

' returns the ad break of the currently active ad, returns invalid if no ad is currently active
function ad_getActiveAdBreak()
  return m.yospaceTask.activeAdBreak
end function

' returns the currently active ad, returns invalid if no ad is currently active
function ad_getActiveAd()
  return m.yospaceTask.activeAd
end function

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
  m.top.currentTime = toMagicTime(getCurrentTime())
  m.yospaceTask.EventReport = {id: YSPlayerEvents().POSITION, data: getCurrentTime()}
end sub

sub onMetadata()
  metadata = m.bitmovinPlayer.metadata
  if metadata.Source = "emsg" then metadata = mapEmsgMetaData(metadata) else metadata = mapID3MetaData(metadata)
  if metadata = invalid or metadata.Count() = 0
    print "Received meta data was invalid, not reporting to Yospace"
    return
  end if
  m.yospaceTask.EventReport = {id: YSPlayerEvents().METADATA, data: metadata}
end sub

sub requestYospaceURL(source)
  if Lcase(source.assetType) = "live"
     m.yospaceTask.StreamContent = {type: "live", url: source.hls, options: {USE_ID3: true}}
     m.yospaceTask.observeField("PlaybackURL", "onUrlReceived")
  else if Lcase(source.assetType) = "vod"
    m.yospaceTask.StreamContent = {type: "vod", url: source.hls, options: {USE_ID3: false}}
    m.yospaceTask.observeField("PlaybackURL", "onUrlReceived")
  else
    print "not supported asset type!"
  end if
end sub

sub onUrlReceived()
  m.source.hls = m.yospaceTask.PlaybackURL
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.LOAD, m.source)
end sub

function toMagicTime(playbackTime)
  mTime = playbackTime
  offset = 0
  for each timelineElement in m.yospaceTask.Timeline.elements
    if timelineElement.mode = m.TIMELINE_ENTRY_TYPE_ADVERT
      if ((timelineElement.offset + offset) + timelineElement.size) < playbackTime
        mTime -= timelineElement.size
        offset += timelineElement.size
      else if (playbackTime > (timelineElement.offset + offset)) and (playbackTime < ((timelineElement.offset + offset) + timelineElement.size))
        mTime -= (playbackTime - (timelineElement.offset + offset))
        offset += timelineElement.size
      end if
    else
      offset = 0
    end if
  end for
  return mTime
end function

sub setFieldObservers()
  m.yospaceTask.observeField("AdBreakStart", "onAdBreakStart")
  m.yospaceTask.observeField("AdBreakEnd", "onAdBreakEnd")
  m.yospaceTask.observeField("AdvertStart", "onAdvertStart")
  m.yospaceTask.observeField("AdvertEnd", "onAdvertEnd")
  m.yospaceTask.observeField("adSkipped", "onAdSkipped")
end sub

sub onAdBreakStart()
  m.top.adBreakStarted = m.yospaceTask.AdBreakStart
end sub

sub onAdBreakEnd()
  m.top.adBreakFinished = m.yospaceTask.AdBreakEnd

  currentElement = getCurrentElement(getCurrentTime())
  if m.policyHelper_originalSeekDestination > -1
    if (currentElement.offset + currentElement.size) > m.policyHelper_originalSeekDestination
      seek(m.policyHelper_originalSeekDestination)
      m.policyHelper_originalSeekDestination = -1
    end if
  end if
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

sub setContentMetaData(genre, id, length)
  m.yospaceTask.callFunction = {id: m.BitmovinYospaceTaskEnums.Functions.SET_CONTENT_METADATA, arguments: [genre, id, length]}
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
  if (currentPlayerPosition <> allowedSeek) and (m.policyHelper_seekStartPosition > -1) and (m.policyHelper_originalSeekDestination = -1)
    m.policyHelper_originalSeekDestination = currentPlayerPosition
    m.bitmovinPlayer.callFunc("seek", allowedSeek)
  end if
  m.policyHelper_seekStartPosition = -1
end sub

sub onFocusChanged(event)
  if event.getNode() = m.top.id
    m.bitmovinPlayer.setFocus(true)
  end if
end sub

function getCurrentTime()
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
