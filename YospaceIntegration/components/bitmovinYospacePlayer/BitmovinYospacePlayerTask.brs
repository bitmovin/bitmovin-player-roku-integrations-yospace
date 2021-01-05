sub init()
  m.BitmovinYospaceTaskEnums = getBitmovinYospaceTaskEnum()

  m.conviva = invalid
  m.top.cSession = false
  m.DEBUG = false
  m.video = invalid
  m.PodIndex = 0
  m.adTracking = invalid

  m.contentMetadataBuilder = CreateObject("roSGNode", "ContentMetadataBuilder")


  m.lastAd = invalid

  m.top.functionName  = "MonitorSDK"
  m.session   = YSSessionManager()

  YO_INFO("Initialized Yospace SDK Version: {0}", m.session.GetVersion())
  m.player = {}
  m.player["AdBreakStart"] = yo_Callback(onAdBreakStart)
  m.player["AdvertStart"] = yo_Callback(onAdStart)
  m.player["AdvertEnd"] = yo_Callback(onAdEnd)
  m.player["AdBreakEnd"] = yo_Callback(onAdBreakEnd)
  m.player["UpdateTimeline"] = yo_Callback(updateTimeline)

  GetGlobalAA().timer = YSTimer()
  GetGlobalAA().taskman = YORokuTasks(false)
  m.top.control="RUN"
end sub

' ---------------------------- Conviva Analytics ----------------------------
sub initializeConviva()
  debugLog("[ConvivaAnalytics] setting up")
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
  m.conviva.reportSeekStarted(m.video, - 1)
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

sub debugLog(message as String)
  if m.DEBUG then ? message
end sub

function getAd(mediaId)
  adBreaks = m.top.player.callFunc(m.top.player.BitmovinFunctions.AD_LIST)
  for each adBreak in adBreaks
      for each ad in adBreak.ads
          if ad.id = mediaId then return ad
      end for
  end for

  return invalid
end function
' ---------------------------- Bitmovin YO Space ----------------------------
sub MonitorSDK()
  port = CreateObject("roMessagePort")
  m.top.ObserveField(m.BitmovinYospaceTaskEnums.ObservableFields.STREAM_CONTENT, port)
  m.top.ObserveField(m.BitmovinYospaceTaskEnums.ObservableFields.EVENT_REPORT, port)
  m.top.ObserveField(m.BitmovinYospaceTaskEnums.ObservableFields.CALL_FUNCTION, port)
  m.top.taskReady = true
  m.bitmovinPlayer = m.top.bitmovinYospacePlayer.findNode("BitmovinPlayer")

  while true
    msg = wait(500, port)
    ' For the last ad it could happen that the playback finished event is fired before the actual adFinished / adBreakFinished event
    if m.lastAd <> invalid then checkLastAdFinishedWorkaround()

    if type(msg) = "roSGNodeEvent"
      field = msg.GetField()
      data = msg.GetData()

      if (field = m.BitmovinYospaceTaskEnums.ObservableFields.STREAM_CONTENT)
        requestYospaceURL(data)
      else if (field = m.BitmovinYospaceTaskEnums.ObservableFields.EVENT_REPORT)
        reportPlayerEvent(data)
      else if (field = m.BitmovinYospaceTaskEnums.ObservableFields.CALL_FUNCTION)
        callFunction(data)
      end if
    else
      tasks = GetGlobalAA().taskman
      tasks.CheckJobs()
    end if
  end while


end sub

sub onSessionReady(data = invalid as Dynamic)
  if (data.result <> YSSessionResult().INITIALISED) then
    YO_ERROR("Initialization failed: {0}", data.status)
    m.top.InitializationFailure = data.status
  else
    m.session.RegisterPlayer(m.player)
    m.top.StreamType = m.session.GetSession().GetStreamType()
    m.top.PlaybackURL = m.session.GetMasterPlaylist()
    tl = m.session.GetSession().GetTimeline()
    if (tl <> invalid) then
      updateTimeline(tl)
    end if

  end if
end sub

' Called whenever the player enters an advert break
sub onAdBreakStart(dummy as Dynamic)
  m.top.IsActiveAd = m.session.GetSession().GetCurrentBreak().IsActive()
  m.top.activeAdBreak = mapAdBreak(m.session.GetSession().GetCurrentBreak(),m.top.Timeline)
  m.top.adBreakStart = m.top.activeAdBreak
end sub

' Called whenever an individual advert starts
sub onAdStart(miid as String)
  if isLastAd(miid) then m.lastAd = miid

  advert = getCurrentAd()
  if (advert <> invalid) then
    m.top.IsAdvert = true
    m.top.activeAd = mapAd(advert)
  else
    m.top.IsAdvert = false
  end if

  m.top.advertStart = m.top.activeAd.id
end sub

' Called whenever an individual advert completes
sub onAdEnd(miid as String)
  if miid = m.lastAd
    YO_INFO("onAdEnd - miid {0} matches m.lastAd {1}; setting m.lastAd back to invalid", miid, m.lastAd)
    m.lastAd = invalid
  end if
  m.top.advertEnd = miid
  m.top.IsAdvert = false
  m.top.activeAd = invalid
end sub

' Called whenever the player exits an advert break
sub onAdBreakEnd(dummy as Dynamic)
  print "OnAdBreakEnd: "; m.lastAd
  print m.top.activeAdBreak
  m.top.adBreakEnd = m.top.activeAdBreak
  m.top.IsActiveAd = false
  m.top.activeAdBreak = invalid
end sub

sub updateTimeline(tl as Dynamic)
  if (tl <> invalid) then

    flatTimeline = []
    duration = 0.0
    elements = tl.GetAllElements()

    YO_DEBUG("Element count: {0}", elements.Count())

    for each element in elements
      if element.GetType() = "VOD" then
        ' Add a simply VOD element
        flatTimeline.Push({mode:"VOD", size:element.GetDuration(), offset:element.GetOffset()})
      else if element.GetType() = "LIVE" then
        ' Add a piece of live content
        flatTimeline.Push({mode:"LIVE", size:element.GetDuration(), offset:element.GetOffset()})
      else
        ' For advert breaks, we are given the entire break
        ads = element.GetAdverts().GetAdverts()

        ' So we will iterate through the break to add individual ad pieces
        for each ad in ads
          ' Add a single advert item. Notionally, IsActive() means that the
          ' ad should be watched and should not be "skippable"
          flatTimeline.Push({mode:"ADVERT", size:ad.GetDuration(), offset:element.GetOffset(), state:ad.IsActive()})
        end for
      end if

      ' Record the duration into the total duration count
      duration = duration + element.GetDuration()
    end for

    tlreport = {}
    tlreport["elements"] = flatTimeline
    tlreport["duration"] = duration
    tlreport["offset"] = tl.GetStartOffset()
    m.top.timeline = tlreport

    updateAdList()
  end if
end sub

sub updateAdList()
  advertElements = []
  timeline = m.session.GetTimeline()
  if timeline <> invalid
    timelineElements = timeline.GetAllElements()
    for each tlElement in timelineElements
      if tlElement.getType() = "ADVERT"
        advertElements.push(tlElement)
      end if
    end for
    adList = []
    for each adElement in advertElements
      adList.Push(mapAdBreak(adElement.GetAdverts(),m.top.Timeline)) ' GetAdverts() returns the adBreak contained in the advert timeline element
    end for
    m.top.adList = adList
  else
    print "timeline invalid"
  end if
end sub

sub skipAd()
  if isAdActive()
    ad = getCurrentAd()
    m.bitmovinPlayer.callFunc("seek", (getAdStartTime(ad) + ad.GetDuration()))
    m.top.adSkipped = ad.GetMediaID()
  end if
end sub

function getCurrentAd()
  return m.session.GetSession().GetCurrentAdvert()
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

sub requestYospaceURL(data)
  if (data.type = m.BitmovinYospaceTaskEnums.StreamType.LIVE)
    m.session.CreateForLive(data.url, data.options, yo_Callback(onSessionReady, m))
    m.top.IsLive = true
  else if (data.type = m.BitmovinYospaceTaskEnums.StreamType.VOD)
    m.session.CreateForVOD(data.url, data.options, yo_Callback(onSessionReady, m))
    m.top.IsLive = false
  else if (data.type = m.BitmovinYospaceTaskEnums.StreamType.V_LIVE)
    m.session.CreateForNonLinear(data.url, data.options, yo_Callback(onSessionReady, m))
    m.top.IsLive = true
  end if
end sub

sub reportPlayerEvent(data)
  if (data.id = "suppress")
    m.session.GetSession().SuppressAnalytics(true)
  else if (data.id = "unsuppress")
    missed = m.session.GetSession().SuppressAnalytics(false)
    if (missed <> invalid)
      for i = 0 to missed.Count() - 1
        item = missed[i]
        YO_DEBUG("Missed: {0} Event: {1} with URL: {2}", i, item.event, item.url)
      end for
    end if
  else
    m.session.ReportPlayerEvent(data.id, data.data)
  end if
end sub

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
    print "Enable RAF:Sessionnnnnn "; data.arguments.enableRAF
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

sub setEnableRAF(enableRAF)
  task = GetGlobalAA().taskman
  task.SetUseRAF(enableRAF)
end sub

sub setContentMetadata(genre, kidsContent, id, length, nielsenGenre, nielsenAppId)
  print "TaskContentMetadata"
  bridge = GetGlobalAA().taskman
  bridge.SetContentGenre(genre, kidsContent)
  bridge.SetContentId(id)
  bridge.SetContentLength(length)
  bridge.SetNielsenGenre(nielsenGenre)
  bridge.SetNielsenAppId(nielsenAppId)
end sub

sub setDebugLevel(debugLevel)
  YO_LOGLEVEL(debugLevel)
end sub

function isLastAd(miid)
  if m.top.bitmovinYospacePlayer.callFunc("isLive", invalid) then return true

  adList = m.top.adList
  lastAdBreak = adList[adList.Count() - 1].ads
  lastAd = lastAdBreak[lastAdBreak.Count() - 1]
  return lastAd.id = miid
end function

function checkLastAdFinishedWorkaround()
  video = m.top.bitmovinYospacePlayer.findNode("MainVideo")
  if video.position >= (video.duration) then firePostRollFinishedEvents()
end function

function firePostRollFinishedEvents()
  lastAdMediaId = m.lastAd
  m.lastAd = invalid

  onAdEnd(lastAdMediaId)
  onAdBreakEnd(invalid)
end function
