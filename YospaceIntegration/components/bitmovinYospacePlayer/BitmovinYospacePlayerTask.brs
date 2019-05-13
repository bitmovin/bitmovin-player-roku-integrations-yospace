sub init()
  m.policyHelper_seekStartPosition = -1
  m.policyHelper_originalSeekDestination = -1

  YO_LOGLEVEL(YospaceVerbosity().INFO)
  m.top.functionName  = "MonitorSDK"
  m.policy = getDefaultBitmovinYospacePlayerPolicy()
  m.session   = YSSessionManager()
  YO_INFO("Initialized Yospace SDK Version: {0}", m.session.GetVersion())

  m.player = {}
  m.player["AdBreakStart"] = yo_Callback(thd_cb_ad_break_start)
  m.player["AdvertStart"] = yo_Callback(thd_cb_advert_start)
  m.player["AdvertEnd"] = yo_Callback(thd_cb_advert_end)
  m.player["AdBreakEnd"] = yo_Callback(thd_cb_ad_break_end)
  m.player["UpdateTimeline"] = yo_Callback(thd_cb_update_timeline)

  GetGlobalAA().timer = YSTimer()
  GetGlobalAA().taskman = YORokuTasks()

  m.top.observeField("bitmovinYospacePlayer", onPlayerRegistered)

  m.top.control = "RUN"
end sub

sub MonitorSDK()
  port = CreateObject("roMessagePort")
  m.top.ObserveField("StreamContent", port)
  m.top.ObserveField("EventReport", port)
  m.top.ObserveField("callAdFunction", port)
  m.top.taskReady = true

  while true
    msg = wait(500, port)

    if type(msg) = "roSGNodeEvent"
      field = msg.GetField()
      data = msg.GetData()

      if (field = "StreamContent")
        if (data.type = "live")
          m.session.CreateForLive(data.url, data.options, yo_Callback(thd_cb_session_ready, m))
        else if (data.type = "vod")
          m.session.CreateForVOD(data.url, data.options, yo_Callback(thd_cb_session_ready, m))
        else if (data.type = "vlive")
          m.session.CreateForNonLinear(data.url, data.options, yo_Callback(thd_cb_session_ready, m))
        end if
      else if (field = "EventReport")
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
      else if (field = "callAdFunction")
        if data.id = "ad_skip"
          ad_skip()
        else if data.id = "seek"
          seek(data.arguments)
        else if data.id = "pause"
          pause(data.arguments)
        else if data.id = "mute"
          mute(data.arguments)
        end if
      end if
    else
      tasks = GetGlobalAA().taskman
      tasks.CheckJobs()
    end if
  end while
end sub

sub thd_cb_session_ready(data = invalid as Dynamic)
  YO_TRACE("Thread Session Ready. Status: {0}", data.result)
  YO_TRACE("Result Code: {0}", data.status)

  if (data.result <> YSSessionResult().INITIALISED) then
    YO_ERROR("Initialization failed: {0}", data.status)
  else
    YO_DEBUG("Initialization succeeded (in thread)")

    ' Register our observer object to bind callbacks
    m.session.RegisterPlayer(m.player)

    m.top.IsLive = (m.session.GetSession()._CLASSNAME = "YSLiveSession")
    m.top.StreamType = m.session.GetSession().GetStreamType()
    m.top.PlaybackURL = m.session.GetMasterPlaylist()
    tl = m.session.GetSession().GetTimeline()
    if (tl <> invalid) then
      YO_DEBUG("Initial timeline update")
      thd_cb_update_timeline(tl)
    else
      YO_DEBUG("No initial timeline to update")
    end if
  end if
end sub

' Called whenever the player enters an advert break
sub thd_cb_ad_break_start(dummy as Dynamic)
  YO_TRACE("(thread) AD BREAK START")
  m.top.IsActiveAd = m.session.GetSession().GetCurrentBreak().IsActive()
  m.top.activeAdBreak = mapAdBreak(m.session.GetSession().GetCurrentBreak())
  m.top.AdBreakStart = "yes"
end sub

' Called whenever an individual advert starts
sub thd_cb_advert_start(miid as String)
  YO_TRACE("(thread) ADVERT START for {0}", miid)

  m.top.AdvertStart = miid

  advert = getCurrentAd()

  if (advert <> invalid) then
    m.top.IsAdvert = true
    m.top.activeAd = mapAd(advert)
  else
    m.top.IsAdvert = false
  end if
end sub

' Called whenever an individual advert completes
sub thd_cb_advert_end(miid as String)
  YO_TRACE("(thread) ADVERT END for {0}", miid)

  m.top.AdvertEnd = miid
  m.top.IsAdvert = false
  m.top.activeAd = invalid
end sub

' Called whenever the player exits an advert break
sub thd_cb_ad_break_end(dummy as Dynamic)
  YO_TRACE("(thread) AD BREAK END")

  m.top.AdBreakEnd = "yes"
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

sub thd_cb_update_timeline(tl as Dynamic)
  if (tl <> invalid) then

    flattl = []
    duration = 0.0
    eles = tl.GetAllElements()

    YO_DEBUG("Element count: {0}", eles.Count())

    for each ele in eles
      if ele.GetType() = "VOD" then
        ' Add a simply VOD element
        flattl.Push({mode:"VOD", size:ele.GetDuration(), offset:ele.GetOffset()})
      else if ele.GetType() = "LIVE" then
        ' Add a piece of live content
        flattl.Push({mode:"LIVE", size:ele.GetDuration(), offset:ele.GetOffset()})
      else
        ' For advert breaks, we are given the entire break
        ads = ele.GetAdverts().GetAdverts()

        ' So we will iterate through the break to add individual ad pieces
        for each ad in ads
          ' Add a single advert item. Notionally, IsActive() means that the
          ' ad should be watched and should not be "skippable"
          flattl.Push({mode:"ADVERT", size:ad.GetDuration(), offset:ele.GetOffset(), state:ad.IsActive()})
        end for
      end if

      ' Record the duration into the total duration count
      duration = duration + ele.GetDuration()
    end for

    YO_DEBUG("Timeline is valid. Duration: {0}", duration)

    tlreport = {}
    tlreport["elements"] = flattl
    tlreport["duration"] = duration
    tlreport["offset"] = tl.GetStartOffset()
    m.top.Timeline = tlreport

    YO_DEBUG("Timeline field updated")
    updateAdList()
  else
    YO_WARN("Timeline is invalid")
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

sub ad_skip()
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
  m.top.bitmovinYospacePlayer.observeField("onSeek", updatePolicyHelper_seekStartPosition)
  m.top.bitmovinYospacePlayer.observeField("onSeeked", checkIfSeekWasAllowed)
  m.top.canSeek = m.policy.canSeek()
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
