sub init()
  m.DEBUG = false
  m.isConvivaYoSpace = false
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

sub updateContentMetadata(metadataOverrides = invalid)
  if metadataOverrides <> invalid
    m.contentMetadataBuilder.callFunc("setOverrides", metadataOverrides)
  end if
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
  if m.conviva.getConvivaTask(m.video) = invalid
    return
  end if
  m.conviva.convivaYoSpaceVideoNode = m.video
  m.conviva.convivaYoSpaceSession = m.session
  m.isConvivaYoSpace = true
  ' The code above should be removed once Conviva supports multiple listeners for YoSpace. Because for this Conviva version it overrides YoSpace callbacks
  ' Once Conviva is not overriding YoSpace callbacks any more . We can remove this code and call the below method
  ' m.conviva.monitorYoSpaceSDK(m.video, m.session)
end sub

sub setContentPauseMonitoring()
  if isSessionActive()
    m.conviva.setContentPauseMonitoring(m.video)
  end if
end sub

sub setContentResumeMonitoring()
  if isSessionActive()
    m.conviva.setContentResumeMonitoring(m.video)
  end if
end sub

sub reportSeekStarted()
  if isSessionActive()
    m.conviva.reportSeekStarted(m.video, -1)
  end if
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

sub onSourceLoaded()
  ' Conviva 3.0.9 starts content monitoring by watching for the video.control to go to "play". If video.control was already "play"
  ' in createConvivaSession (e.g. for autoplay) then the Conviva session won't go into content monitoring unless explicitly
  ' nudged to do so. Only resume monitoring if the control is currently "play" so non-autoplay video stay in the correct state.
  if m.video <> invalid and m.video.control = "play"
    setContentResumeMonitoring()
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
  if m.conviva <> invalid then
    debugLog("[ConvivaAnalytics] closing session")
    m.conviva.endMonitoring(m.video)
    m.top.cSession = false
    m.contentMetadataBuilder.callFunc("reset")
  end if
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
  m.contentMetadataBuilder.callFunc("setStreamUrl", m.top.PlaybackURL)
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
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SOURCE_LOADED
    onSourceLoaded()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.VIDEO_ERROR
    onVideoError()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.END_SESSION
    endSession()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.MONITOR_VIDEO
    monitorVideo(data.arguments.contentMetaData)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.MONITOR_YOSPACE_SDK
    monitorYoSpaceSDK()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.UPDATE_CONTENT_METADATA
    updateContentMetadata(data.arguments.contentMetaData)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.REPORT_SEEK_STARTED
    reportSeekStarted()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.REPORT_PLAYBACK_DEFICIENCY
    reportPlaybackDeficiency(data.arguments.message, data.arguments.isFatal, data.arguments.endSession)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SEND_CUSTOM_APPLICATION_EVENT
    sendCustomApplicationEvent(data.arguments.name, data.arguments.attributes)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SEND_CUSTOM_PLAYBACK_EVENT
    sendCustomPlaybackEvent(data.arguments.name, data.arguments.attributes)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.REPORT_COMPANION_EVENT
    reportCompanionEvent(data.arguments.companionId, data.arguments.event)
  end if
end sub

' The below methods should be removed once Conviva supports multiple listeners for YoSpace. Because for this Conviva version it overrides YoSpace callbacks
sub onAdBreakStart(dummy as Dynamic)
  if (getCurrentAdBreak() <> invalid) then
    m.top.IsActiveAd = getCurrentAdBreak().IsActive()
    m.top.activeAdBreak = mapAdBreak(getCurrentAdBreak(), m.top.Timeline)
    m.top.adBreakStart = m.top.activeAdBreak
    ' We call OnYoSpaceAdBreakStart() in order to report that an ad break has been started
    ' Remove this once conviva allows multiple listeners for YoSpace callbacks
    if m.isConvivaYoSpace then m.conviva.OnYoSpaceAdBreakStart(getCurrentAdBreak())
    setContentPauseMonitoring()
  end if
end sub

sub onAdBreakEnd(dummy as dynamic)
  m.top.adBreakEnd = m.top.activeAdBreak
  m.top.IsActiveAd = false
  m.top.activeAdBreak = invalid
  ' We call OnYoSpaceAdBreakEnd() in order to report that an ad break has ended
  ' Remove this once conviva allows multiple listeners for YoSpace callbacks
  if m.isConvivaYoSpace then m.conviva.OnYoSpaceAdBreakEnd(getCurrentAdBreak())
  setContentResumeMonitoring()
end sub

' Called whenever an individual advert starts
sub onAdStart(miid as string)
  if isLastAd(miid) then m.lastAd = miid

  advert = getCurrentAd()
  if (advert <> invalid) then
    m.top.IsAdvert = true
    m.top.activeAd = mapAd(advert)
  else
    m.top.IsAdvert = false
  end if

  m.top.advertStart = m.top.activeAd.id
  ' We call OnYoSpaceAdStart() in order to create an independent advert session in Conviva.
  ' Remove this once conviva allows multiple listeners for YoSpace callbacks
  if m.isConvivaYoSpace then m.conviva.OnYoSpaceAdStart()
end sub
' Called whenever an individual advert completes
sub onAdEnd(miid as string)
  if miid = m.lastAd
    YO_INFO("onAdEnd - miid {0} matches m.lastAd {1}; setting m.lastAd back to invalid", miid, m.lastAd)
    m.lastAd = invalid
  end if
  m.top.advertEnd = miid
  m.top.IsAdvert = false
  m.top.activeAd = invalid
  ' We call OnYoSpaceAdEnd() in order to end the monitoring session of the ad
  ' Remove this once conviva allows multiple listeners for YoSpace callbacks
  if m.isConvivaYoSpace then m.conviva.OnYoSpaceAdEnd()
end sub
