sub init()
  m.BitmovinYospaceTaskEnums = getBitmovinYospaceTaskEnum()
  m.lastAd = invalid

  m.top.functionName  = "MonitorSDK"
  m.top.control = "RUN"
end sub

' ---------------------------- Bitmovin YO Space ----------------------------
sub MonitorSDK()
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

    if type(msg) = "roSGNodeEvent" then
      field = msg.GetField()
      data = msg.GetData()

      if (field = m.BitmovinYospaceTaskEnums.ObservableFields.STREAM_CONTENT) then
        requestYospaceURL(data)
      else if (field = m.BitmovinYospaceTaskEnums.ObservableFields.EVENT_REPORT) then
        reportPlayerEvent(data)
      else if (field = m.BitmovinYospaceTaskEnums.ObservableFields.CALL_FUNCTION) then
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
    tl = m.session.GetSession().GetTimeline()
    if (tl <> invalid) then
      updateTimeline(tl)
    end if
    m.top.PlaybackURL = m.session.GetMasterPlaylist()
  end if
end sub

' Called whenever the player enters an advert break
sub onAdBreakStart(dummy as Dynamic)
  if (getCurrentAdBreak() <> invalid) then
    m.top.IsActiveAd = getCurrentAdBreak().IsActive()
    m.top.activeAdBreak = mapAdBreak(getCurrentAdBreak(),m.top.Timeline)
    m.top.adBreakStart = m.top.activeAdBreak
  end if
end sub

function getCurrentAdBreak()
  return m.session.GetSession().GetCurrentBreak()
end function

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
  if miid = m.lastAd then
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
  if timeline <> invalid then
    timelineElements = timeline.GetAllElements()
    for each tlElement in timelineElements
      if tlElement.getType() = "ADVERT" then
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
  if isAdActive() then
    ad = getCurrentAd()
    m.bitmovinPlayer.callFunc("seek", (getAdStartTime(ad) + ad.GetDuration()))
    m.top.adSkipped = ad.GetMediaID()
  end if
end sub

function getCurrentAd()
  return m.session.GetSession().GetCurrentAdvert()
end function

function isAdActive() as Boolean
  return getCurrentAd() <> invalid
end function

function getAdStartTime(ad)
  adStartTime = ad.GetBreak().GetStart()
  for each advert in ad.GetBreak().GetAdverts()
    if advert._INSTANCEID = ad._INSTANCEID then
      return adStartTime
    else
      adStartTime += advert.GetDuration()
    end if
  end for
end function

sub requestYospaceURL(data)
  if (data.type = m.BitmovinYospaceTaskEnums.StreamType.LIVE) then
    m.session.CreateForLive(data.url, data.options, yo_Callback(onSessionReady, m))
    m.top.IsLive = true
  else if (data.type = m.BitmovinYospaceTaskEnums.StreamType.VOD) then
    m.session.CreateForVOD(data.url, data.options, yo_Callback(onSessionReady, m))
    m.top.IsLive = false
  else if (data.type = m.BitmovinYospaceTaskEnums.StreamType.V_LIVE) then
    m.session.CreateForNonLinear(data.url, data.options, yo_Callback(onSessionReady, m))
    m.top.IsLive = true
  end if
end sub

sub reportPlayerEvent(data)
  if (data.id = "suppress") then
    m.session.GetSession().SuppressAnalytics(true)
  else if (data.id = "unsuppress") then
    missed = m.session.GetSession().SuppressAnalytics(false)
    if (missed <> invalid) then
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
  if data.id = m.BitmovinYospaceTaskEnums.Functions.SKIP_AD then
    skipAd()
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SET_CONTENT_METADATA then
    genre = data.arguments[0]
    kidsContent = data.arguments[1]
    id = data.arguments[2]
    length = data.arguments[3]
    nielsenGenre = data.arguments[4]
    nielsenAppId = data.arguments[5]
    setContentMetaData(genre, kidsContent, id, length, nielsenGenre, nielsenAppId)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SET_DEBUG_LEVEL then
    setDebugLevel(data.arguments.debugLevel)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.SET_ENABLE_RAF then
    print "Enable RAF: "; data.arguments.enableRAF
    setEnableRAF(data.arguments.enableRAF)
  else if data.id = m.BitmovinYospaceTaskEnums.Functions.REPORT_COMPANION_EVENT then
    reportCompanionEvent(data.arguments.companionId, data.arguments.event)
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

sub reportCompanionEvent(companionId, event)
  print "Sending companion event "; companionId; event
  m.session.GetSession().ReportCompanionEvent(companionId, event)
end sub

function isLastAd(miid) as Boolean
  if m.top.bitmovinYospacePlayer.callFunc("isLive", invalid) then return true

  adList = m.top.adList
  if adList.Count() <= 0 then return true

  lastAdBreak = adList[adList.Count() - 1].ads
  lastAd = lastAdBreak[lastAdBreak.Count() - 1]
  return lastAd.id = miid
end function

function checkLastAdFinishedWorkaround()
  video = m.top.bitmovinYospacePlayer.findNode("MainVideo")
  if Invalid <> video AND video.position >= (video.duration) then firePostRollFinishedEvents()
end function

sub firePostRollFinishedEvents()
  lastAdMediaId = m.lastAd
  m.lastAd = invalid

  onAdEnd(lastAdMediaId)
  onAdBreakEnd(invalid)
end sub
