sub init()
  m.policyHelper_seekStartPosition = -1
  m.policyHelper_originalSeekDestination = -1

  m.BitmovinYospaceTaskEnums = {
    ObservableFields: {
      STREAM_CONTENT: "StreamContent",
      EVENT_REPORT: "EventReport",
      CALL_AD_FUNCTION: "callAdFunction"
    },
    StreamType: {
      LIVE: "live",
      VOD: "vod",
      V_LIVE: "vlive"
    }
  }

  YO_LOGLEVEL(YospaceVerbosity().INFO)
  m.top.functionName  = "MonitorSDK"
  m.policy = getDefaultBitmovinYospacePlayerPolicy()
  m.session   = YSSessionManager()
  YO_INFO("Initialized Yospace SDK Version: {0}", m.session.GetVersion())

  m.player = {}
  m.player["AdBreakStart"] = yo_Callback(onAdBreakStart)
  m.player["AdvertStart"] = yo_Callback(onAdStart)
  m.player["AdvertEnd"] = yo_Callback(onAdEnd)
  m.player["AdBreakEnd"] = yo_Callback(onAdBreakEnd)
  m.player["UpdateTimeline"] = yo_Callback(updateTimeline)

  GetGlobalAA().timer = YSTimer()
  GetGlobalAA().taskman = YORokuTasks()

  m.top.observeField("bitmovinYospacePlayer", onPlayerRegistered)

  m.top.control = "RUN"
end sub

sub MonitorSDK()
  port = CreateObject("roMessagePort")
  m.top.ObserveField(m.BitmovinYospaceTaskEnums.ObservableFields.STREAM_CONTENT, port)
  m.top.ObserveField(m.BitmovinYospaceTaskEnums.ObservableFields.EVENT_REPORT, port)
  m.top.ObserveField(m.BitmovinYospaceTaskEnums.ObservableFields.CALL_AD_FUNCTION, port)
  m.top.taskReady = true

  while true
    msg = wait(500, port)

    if type(msg) = "roSGNodeEvent"
      field = msg.GetField()
      data = msg.GetData()

      if (field = m.BitmovinYospaceTaskEnums.ObservableFields.STREAM_CONTENT)
        requestYospaceURL(data)
      else if (field = m.BitmovinYospaceTaskEnums.ObservableFields.EVENT_REPORT)
        reportPlayerEvent(data)
      else if (field = m.BitmovinYospaceTaskEnums.ObservableFields.CALL_AD_FUNCTION)
        callAdFunction(data)
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
  m.top.activeAdBreak = mapAdBreak(m.session.GetSession().GetCurrentBreak())
  m.top.adBreakStart = "yes"
end sub

' Called whenever an individual advert starts
sub onAdStart(miid as String)
  updateCanSeek()

  m.top.advertStart = miid

  advert = getCurrentAd()

  if (advert <> invalid) then
    m.top.IsAdvert = true
    m.top.activeAd = mapAd(advert)
  else
    m.top.IsAdvert = false
  end if
end sub

' Called whenever an individual advert completes
sub onAdEnd(miid as String)
  m.top.advertEnd = miid
  m.top.IsAdvert = false
  m.top.activeAd = invalid
end sub

' Called whenever the player exits an advert break
sub onAdBreakEnd(dummy as Dynamic)
  updateCanSeek()

  m.top.adBreakEnd = "yes"
  m.top.IsActiveAd = false
  m.top.activeAdBreak = invalid

  currentElement = m.session.GetTimeline().GetElementAtTime(m.top.bitmovinYospacePlayer.currentTime)
  if m.policyHelper_originalSeekDestination > -1
    if (currentElement.GetOffset() + currentElement.GetDuration()) > m.policyHelper_originalSeekDestination
      seek(m.policyHelper_originalSeekDestination)
      m.policyHelper_originalSeekDestination = -1
    end if
  end if
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
      adList.Push(mapAdBreak(adElement.GetAdverts())) ' GetAdverts() returns the adBreak contained in the advert timeline element
    end for
    m.top.adList = adList
  else
    print "timeline invalid"
  end if
end sub

sub skipAd()
  if isAdActive()
    if m.policy.canSkip() = 0
      ad = getCurrentAd()
      m.top.bitmovinYospacePlayer.callFunc("seek", (getAdStartTime(ad) + ad.GetDuration()))
      m.top.adSkipped = ad.GetMediaID()
    else
      print "Skip not allowed!"
    end if
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

sub mute(arguments)
  if m.policy.canMute()
    m.top.bitmovinYospacePlayer.callFunc("mute", arguments)
  end if
end sub

sub pause(arguments)
  if m.policy.canPause()
    m.top.bitmovinYospacePlayer.callFunc("pause", arguments)
  end if
end sub

sub seek(arguments)
  if m.policy.canSeek()
    seekDestination = m.policy.canSeekTo(arguments)
    if seekDestination <> arguments then m.policyHelper_originalSeekDestination = m.top.bitmovinYospacePlayer.currentTime
    m.top.bitmovinYospacePlayer.callFunc("seek", seekDestination)
  end if
end sub

sub onPlayerRegistered()
  m.top.bitmovinYospacePlayer.observeField(m.top.bitmovinYospacePlayer.BitmovinFields.SEEK, updatePolicyHelper_seekStartPosition)
  m.top.bitmovinYospacePlayer.observeField(m.top.bitmovinYospacePlayer.BitmovinFields.SEEKED, checkIfSeekWasAllowed)
  updateCanSeek()
end sub

sub updatePolicyHelper_seekStartPosition()
  m.policyHelper_seekStartPosition = m.top.bitmovinYospacePlayer.currentTime
end sub

sub checkIfSeekWasAllowed()
  currentPlayerPosition = m.top.bitmovinYospacePlayer.currentTime
  ' Since there is no way of stopping the default UI and its build in key event handler
  ' from seeking to any point in the video,
  ' the check if seeking is allowed has to be made after seeking has happened
  ' and, if necessary, has to be corrected.
  allowedSeek = m.policy.canSeekTo(currentPlayerPosition, m.policyHelper_seekStartPosition)
  if (currentPlayerPosition <> allowedSeek) and (m.policyHelper_seekStartPosition > -1)
    m.policyHelper_originalSeekDestination = currentPlayerPosition
    m.top.bitmovinYospacePlayer.callFunc("seek", allowedSeek)
  end if
  m.policyHelper_seekStartPosition = -1
end sub

sub updateCanSeek()
  m.top.canSeek = m.policy.canSeek()
end sub

sub requestYospaceURL(data)
  if (data.type = m.BitmovinYospaceTaskEnums.StreamType.LIVE)
    m.session.CreateForLive(data.url, data.options, yo_Callback(onSessionReady, m))
    m.top.IsLive = true
  else if (data.type = m.BitmovinYospaceTaskEnums.StreamType.VOD)
    m.session.CreateForVOD(data.url, data.options, yo_Callback(onSessionReady, m))
    m.top.IsLive = false
  else if (data.type = m.BitmovinYospaceTaskEnums.StreamType.V_LIVE)
    m.session.CreateForNonLinear(data.url, data.options, yo_Callback(onSessionReady, m))
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

sub callAdFunction(data)
  if data.id = "skipAd"
    skipAd()
  else if data.id = "seek"
    seek(data.arguments)
  else if data.id = "pause"
    pause(data.arguments)
  else if data.id = "mute"
    mute(data.arguments)
  else if data.id = "setContentMetaData"
    setContentMetaData(data.arguments.genre, data.arguments.id, data.arguments.length)
  end if
end sub

sub setContentMetaData(genre, id, length)
  bridge = GetGlobalAA().taskman
  bridge.SetContentGenre(genre)
  bridge.SetContentId(id)
  bridge.SetContentLength(length)
end sub
