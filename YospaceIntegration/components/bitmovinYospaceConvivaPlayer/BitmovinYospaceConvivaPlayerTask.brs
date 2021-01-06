sub init()

end sub

' ---------------------------- Conviva Analytics ----------------------------
sub initializeConviva()
  debugLog("[ConvivaAnalytics] setting up")
  m.contentMetadataBuilder = CreateObject("roSGNode", "ContentMetadataBuilder")

  m.video = m.top.player.findNode("MainVideo")

  apiKey = m.top.customerKey
  settings = {}
  settings.customerKey = apiKey

  if m.top.config.gatewayUrl <> invalid
    settings.gatewayUrl = m.top.config.gatewayUrl
  end if
  m.conviva = ConvivaClient(settings)
end sub

sub sendCustomApplicationEvent(eventName, attributes)
  m.conviva.reportAppEvent(m.video, eventName, attributes)
end sub

sub sendCustomPlaybackEvent(eventName, attributes)
  if not isSessionActive()
    debugLog("Cannot send playback event, no active monitoring session")
    return
  end if

  m.conviva.reportContentPlayerEvent(m.video, eventName, attributes)
end sub

sub updateContentMetadata(metadataOverrides)
  m.contentMetadataBuilder.callFunc("setOverrides", metadataOverrides)
  if isSessionActive()
    buildContentMetadata()
    updateSession()
  end if
end sub

function monitorVideo(metadataOverrides)
  if isSessionActive()
    ' Ending Session must be called earlier as possible than CreateConvivaSession because it takes time to clean up session
    ' Can't call createConvivaSession right after endSession()
    endSession()
  end if
  m.contentMetadataBuilder.callFunc("setOverrides", metadataOverrides)
  createConvivaSession()
end function

sub monitorYoSpaceSDK()
  m.video = m.top.player.findNode("MainVideo")
  config = m.bitmovinPlayer.callFunc("getConfig")
  ' Update content metadata in case that there is a missing info
  if isSessionActive()
    buildContentMetadata()
    updateSession()
  end if
  m.conviva.monitorYoSpaceSDK(m.video, m.session)
end sub

sub reportSeekStarted()
  m.conviva.reportSeekStarted(m.video, -1)
end sub

sub onPlay()
  debugLog("[Player Event] onPlay")
end sub

sub onPlaying()
  debugLog("[Player Event] onPlaying")
  m.contentMetadataBuilder.callFunc("setPlaybackStarted", true)
end sub

sub onVideoError()
  if isSessionActive()
    reportPlaybackDeficiency(m.top.player.error.message, true, true) ' close session on video error
  end if
end sub

sub createConvivaSession()
  m.video = m.top.player.findNode("MainVideo") ' Get latest video node
  buildContentMetadata()

  m.conviva.monitorVideoNode(m.video, m.contentMetadataBuilder.callFunc("build"))
  m.top.cSession = true
  m.PodIndex = 0
  debugLog("[ConvivaAnalytics] start session")
end sub

sub endSession()
  debugLog("[ConvivaAnalytics] closing session")
  m.conviva.endMonitoring(m.video)
  m.top.cSession = false
  m.contentMetadataBuilder.callFunc("reset")
end sub

sub reportPlaybackDeficiency(message, isFatal, closeSession = true)
  if not isSessionActive() then return
  debugLog("[ConvivaAnalytics] reporting deficiency")

  m.conviva.reportContentError(m.video, message, isFatal)

  if closeSession
    endSession()
  end if
end sub

function isSessionActive()
  return m.top.cSession
end function

sub buildContentMetadata()
  m.contentMetadataBuilder.callFunc("setDuration", m.video.duration)
  m.contentMetadataBuilder.callFunc("setStreamType", m.top.bitmovinYospacePlayer.callFunc("isLive"))

  internalCustomTags = {
    "integrationVersion": "1.0.0"
  }

  config = m.top.bitmovinYospacePlayer.callFunc("getConfig")
  if config.playback <> invalid and config.playback.autoplay <> invalid
    internalCustomTags.autoplay = ToString(config.playback.autoplay)
  end if

  if config.adaptation <> invalid and config.adaptation.preload <> invalid
    internalCustomTags.preload = ToString(config.adaptation.preload)
  end if

  m.contentMetadataBuilder.callFunc("setCustom", internalCustomTags)

  source = config.source
  if source <> invalid
    buildSourceRelatedMetadata(source)
  end if
end sub

sub buildSourceRelatedMetadata(source)
  if source.title <> invalid
    m.contentMetadataBuilder.callFunc("setAssetName", source.title)
  else
    m.contentMetadataBuilder.callFunc("setAssetName", "Untitled (no source.title set)")
  end if

  m.contentMetadataBuilder.callFunc("setViewerId", m.contentMetadataBuilder.callFunc("getViewerId"))
  m.contentMetadataBuilder.callFunc("setStreamUrl", m.video.content.url)
end sub

sub updateSession()
  if not isSessionActive() then return
  m.conviva.setOrUpdateContentInfo(m.video, m.contentMetadataBuilder.callFunc("build"))
end sub

sub debugLog(message as string)
  if m.DEBUG then ? message
end sub

' ---------------------------- Overridden methods ----------------------------
sub callFunction(data)
  if data.id = m.BitmovinYospaceTaskEnums.Functions.SKIP_AD
    skipAd()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SET_CONTENT_METADATA
    genre = data.arguments[0]
    kidsContent = data.arguments[1]
    id = data.arguments[2]
    length = data.arguments[3]
    nielsenGenre = data.arguments[4]
    nielsenAppId = data.arguments[5]
    setContentMetaData(genre, kidsContent, id, length, nielsenGenre, nielsenAppId)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SET_DEBUG_LEVEL
    setDebugLevel(data.arguments.debugLevel)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SET_ENABLE_RAF
    print "Enable RAF: "; data.arguments.enableRAF
    setEnableRAF(data.arguments.enableRAF)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.INITIALIZE_CONVIVA
    initializeConviva()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.VIDEO_ERROR
    onVideoError()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.MONITOR_VIDEO
    monitorVideo(data.arguments.contentMetaData)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.MONITOR_YOSPACE_SDK
    monitorYoSpaceSDK()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.UPDATE_CONTENT_METADATA
    updateContentMetadata()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.REPORT_SEEK_STARTED
    reportSeekStarted()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.REPORT_PLAYBACK_DEFICIENCY
    reportPlaybackDeficiency(data.arguments.message, data.arguments.isFatal, data.arguments.endSession)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SEND_CUSTOM_APPLICATION_EVENT
    sendCustomApplicationEvent(data.arguments.name, data.arguments.attributes)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SEND_CUSTOM_PLAYBACK_EVENT
    sendCustomPlaybackEvent(data.arguments.name, data.arguments.attributes)
  end if
end sub
