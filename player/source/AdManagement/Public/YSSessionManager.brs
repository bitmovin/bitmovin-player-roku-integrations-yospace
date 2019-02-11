'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* The YSSessionManager class represents a session within the CSM and provides
'* an interface to the Ad Management SDK
'*
'* @class YSSessionManager
'* @constructor
function YSSessionManager() as Object
    ' Class definition
    this = MakeClass("YSSessionManager", {
        properties: {
            session: {
                "GetSession": function() as Dynamic : return m._data.session : end function
            },

            poller: {
                "GetPoller": function() as Dynamic : return m._data.poller : end function
            },

            player: {
                "GetPlayer": function() as Dynamic : return m._data.player : end function
            },

            properties: {
                "GetProperties": function() as Dynamic : return m._data.properties : end function
            }
        },

        methods: {
            '* Read version string of SDK
            '*
            '* @method  GetVersion
            '* @return  roString    Version details as a string
            "GetVersion":           ys_yssm_getversion,

            '* Helper function to override default property values with supplied ones. Only
            '* existing keys in the default object will be overwritten.
            '*
            '* @method  MergeProperties
            '* @param   roAssociativeArray  custom  New properties which override defaults
            '* @param   roAssociativeArray  dflt    Default properties (which will be overriden)
            "MergeProperties":      ys_yssm_mergeproperties,

            '* <p>Creates a YSSessionManager object, providing a URL to play a NonLinear video stream.</p>
            '*
            '* <p>Starts to create and initialise the Session Manager, passing a stream URL, a
            '* session-initialisation property object and a delegate to receive initialisation
            '* callbacks. The client can also pass in an arbitrary set of parameters to be sent
            '* in the request.</p>
            '*
            '* <p>When the YSSessionManager completes initialisation a delegate call is invoked to
            '* indicate that the session was constructed (and whether this was successfully or not).</p>
            '*
            '* @method  CreateForNonLinear
            '* @param   roString            url     URL to the Yospace CSM
            '* @param   roAssociativeArray  props   An initialisation properties object
            "CreateForNonLinear":   ys_yssm_createnonlinear,

            '* <p>Creates a YSSessionManager object, providing a URL to play a VOD video stream.</p>
            '*
            '* <p>Starts to create and initialise the Session Manager, passing a stream URL, a
            '* session-initialisation property object and a delegate to receive initialisation
            '* callbacks. The client can also pass in an arbitrary set of parameters to be sent
            '* in the request.</p>
            '*
            '* <p>When the YSSessionManager completes initialisation a delegate call is invoked to
            '* indicate that the session was constructed (and whether this was successfully or not).</p>
            '*
            '* @method  CreateForVOD
            '* @param   roString            url     URL to the Yospace CSM
            '* @param   roAssociativeArray  props   An initialisation properties object
            "CreateForVOD":         ys_yssm_createvod,

            '* <p>Creates a YSSessionManager object, providing a URL to play a Live video stream.</p>
            '*
            '* <p>Starts to create and initialise the Session Manager, passing a stream URL, a
            '* session-initialisation property object and a delegate to receive initialisation
            '* callbacks. The client can also pass in an arbitrary set of parameters to be sent
            '* in the request.</p>
            '*
            '* <p>When the YSSessionManager completes initialisation a delegate call is invoked to
            '* indicate that the session was constructed (and whether this was successfully or not).</p>
            '*
            '* @method  CreateForLive
            '* @param   roString            url     URL to the Yospace CSM
            '* @param   roAssociativeArray  props   An initialisation properties object
            "CreateForLive":        ys_yssm_createlive,

            '* <p>Helper function which is called when the session has been started. This will notify
            '* the caller that everything is ready, and set up the analytics polling.</p>
            '*
            '* @event sessionConstructed
            '* @param {Boolean} success Indicates whether the session was started successfully
            "SessionConstructed":   ys_yssm_sessionconstructed,

            '* <p>A helper function used by the SessionManager to process the analytics responses
            '* delivered as a result of the poller triggering new requests to the CSM.</p>
            '*
            '* @event onAnalytics
            '* @param {Boolean} success Indicates whether the analytics request was successful
            '* @param {Document|*} response Response from the request, or reason for failure
            "OnAnalytics":          ys_yssm_onanalytics,

            '* @method  ReportPlayerEvent
            '* @param   roString            evt     Event identifier (see YSPlayerEvents constants)
            '* @param   roAssociativeArray  data    Data associated with the event. The content of this parameter
            '*                                      is optional and may vary, depending on the event type
            "ReportPlayerEvent":    ys_yssm_reportplayerevent,

            '* <p>Helper function used by the session manager to invoke tracking calls
            '* if the player is currently within an advert break.</p>
            '*
            '* @method  InvokeTracking
            '* @param   roString    what        Identifier of tracking point to be fired
            '* @param   roBoolean   linearOnly  Whether the tracking applies only to linear adverts
            '*                                  (<code>true</code>) or also to non-linears (<code>false</code>).
            '* @param   roDouble    [_duration] Time offset of the tracking point being fired (within the
            '*                                  advert, specified in seconds)
            "InvokeTracking":       ys_yssm_invoketracking,

            '* Registers a player object which contains a set of standard callback functions
            '* which are invoked when the SessionManager wants to interact with the player.
            '*
            '* @method registerPlayer
            '* @param {Object} cb_obj Callback object containing the required functions.
            '* @example
            '* <pre class="code prettyprint">
            '* var cb_obj = {
            '*    AdBreakStart: function() {
            '*        // Function gets called whenever an advert break starts.
            '*        // This fictitious example causes the video player to display
            '*        // a clickable element
            '*        myPlayer.showClickableElement();
            '*        myPlayer.setOnClick(function() {
            '*            myPlayer.sessMgr.reportPlayerEvent(YSPlayerEvents.CLICK);
            '*        });
            '*    },
            '*    AdvertStart: function(mediaId) {
            '*        // Function gets called at the start of each advert within a break
            '*        // (except for filler content - eg ident etc)
            '*        var advert = myPlayer.sessMgr.session.currentAdvert;
            '*        var ad = advert.advert;   // Obtain the actual underlying ad
            '*        var nonLinears = ad.getNonLinears();
            '*        if ((nonLinears !== null) && (nonLinears.length > 0)) {
            '*            var idx = 0; // This will hold the non-Linear Index
            '*            for (var i = 0; i < nonLinears.length; i++) {
            '*                var item = nonLinears[i];
            '*
            '*                // This item now needs to be added as a non-linear to the display.
            '*                var imgs = item.getAllResources()['images'];
            '*
            '*                // imgs will now contain an object whose properties are the mime type of
            '*                // available images and the values the urls of the images.
            '*                for (var j in imgs) {
            '*                    if (imgs.hasOwnProperty(j)) {    // or hasOwnProperty('image/png') to restrict type
            '*                        myPlayer.addNonLinear(imgs[j], idx++, function(_index) {
            '*                             myPlayer.sessMgr.reportPlayerEvent(YSPlayerEvents.NONLINEAR, _index);
            '*                        });
            '*                    }
            '*                }
            '*            }
            '*        }
            '*    },
            '*    AdvertEnd: function(mediaId) {
            '*        // Function gets called at the end of each advert within a break
            '*        // (except for filler content - eg ident etc)
            '*        myPlayer.removeAllNonLinears();
            '*    },
            '*    AdBreakEnd: function() {
            '*        // Function gets called at the end of an advert break signalling a return to main content
            '*        // This fictitious example causes the video player to remove
            '*        // the clickable element it added previously
            '*        myPlayer.removeClickableElement();
            '*        myPlayer.setOnClick(null);
            '*    },
            '*    UpdateTimeline: function(timeline) {
            '*        // Function gets called whenever there is updated information concerning the playback timeline
            '*        // (for VoD and NonLinear content only)
            '*        // TODO: DOCUMENTATION TO FOLLOW!
            '*    }
            '* };
            '* sessMgr.registerPlayer(cb_obj);
            "RegisterPlayer":       ys_yssm_registerplayer,

            "PingTimer":            ys_yssm_pingtimer,

            '* Obtain the master playlist URL from the session
            '*
            '* @method  GetMasterPlaylist
            '* @return  roString    URL to the master playlist
            "GetMasterPlaylist":    ys_yssm_getmasterplaylist,

            '* Determine if the current session is a valid Yospace DAI stream
            '*
            '* @method  IsYospaceStream
            '* @return  roBoolean   true if stream appears to be a Yospace stream otherwise false
            "IsYospaceStream":      ys_yssm_isyospace,

            '* Obtain the playback timeline contained in the session. Once the session has
            '* been initialized, it will have a timeline. The timeline may be updated as new
            '* analytics information is fetched during playback.
            '*
            '* @method  GetTimeline
            '* @return  YSTimeline      Instance of the Timeline object contained within the session
            "GetTimeline":          ys_yssm_gettimeline,

            '* Method which can be used by the controlling application to shutdown the
            '* current session immediately and free up any resources used by the session
            '*
            '* @method  Shutdown
            "Shutdown":             ys_yssm_shutdown
        }
    })

    ' Setup and initialise members
    this._data.session      = invalid
    this._data.poller       = invalid
    this._data.player       = invalid
    this._data._pingCB      = invalid

    this._data.properties   = {
        USE_ID3: true
    }

    ' Construct Polling Timer and Internet Task Manager
    GetGlobalAA().timer = YSTimer()
    GetGlobalAA().taskman = YORokuTasks()

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

sub ys_yssm_shutdown()
    YO_INFO("Shutting down AdManagement session")

    if (m.GetSession() <> invalid) then
        m.GetSession().Destroy()
        m._data.session = invalid
    end if

    if (m.GetPoller() <> invalid) then
        m.GetPoller().Destroy()
        m._data.poller = invalid
    end if

    m._data.player      = invalid
    m._data.properties  = invalid
    m._data._pingCB     = invalid
end sub

sub ys_yssm_pingtimer()
    tim = GetGlobalAA().timer
    tim.Ping()
end sub

' GetVersion
function ys_yssm_getversion() as String
    return "1.4-0 / ROKU"
end function

' MergeProperties
sub ys_yssm_mergeproperties(custom as Dynamic, dflt as Dynamic)
    ' // TODO: Validate whether this works in BrightScript
    keys = dflt.Keys()
    if (keys.Count() > 0) then
        for i = 0 to keys.Count() - 1
            key = keys[i]
            if (custom.DoesExist(key)) then
                dflt[key] = custom.Lookup(key)
            end if
        end for
    end if
end sub

' CreateForNonLinear
sub ys_yssm_createnonlinear(url as String, props = invalid as Dynamic, cb = invalid as Dynamic)
    YO_TRACE("Creating for NonLinear: {0}", url)

    if (props <> invalid) then
        m.MergeProperties(props, m.GetProperties())
    end if

    ' Build session
    m._data.listener = cb

    tim = GetGlobalAA().timer
    YO_DEBUG("Shutting down timers. Expired Count: {0}", tim.Flush())

    m._data.session = YSVODSession(m, "", yo_Callback("SessionConstructed", m), true)
    m._data.session.BeginSession(url)
end sub

' CreateForVOD
sub ys_yssm_createvod(url as String, props = invalid as Dynamic, cb = invalid as Dynamic)
    print "in create Vod"
    print url
    print cb
    YO_TRACE("Creating for VOD: {0}", url)

    if (props <> invalid) then
        m.MergeProperties(props, m.GetProperties())
    end if

    ' Build session
    m._data.listener = cb

    tim = GetGlobalAA().timer
    YO_DEBUG("Shutting down timers. Expired Count: {0}", tim.Flush())

    m._data.session = YSVODSession(m, "", yo_Callback("SessionConstructed", m), false)
    m._data.session.BeginSession(url)
end sub

' CreateForLive
sub ys_yssm_createlive(url as String, props = invalid as Dynamic, cb = invalid as Dynamic)
    YO_TRACE("Creating for Live: {0}", url)

    if (props <> invalid) then
        m.MergeProperties(props, m.GetProperties())
    end if

    ' Build session
    m._data.listener = cb

    tim = GetGlobalAA().timer
    YO_DEBUG("Shutting down timers. Expired Count: {0}", tim.Flush())

    m._data.session = YSLiveSession(m, "", yo_Callback("SessionConstructed", m))
    m._data.session.BeginSession(url)
end sub

' SessionConstructed
sub ys_yssm_sessionconstructed(response as Dynamic)
    YO_TRACE("Session constructed. Result: {0}, Status: {1}, Code: {2}", response.result, response.status, response.code)

    ' Sanity check first!
    if (m.GetSession() = invalid) then
        YO_WARN("Session was constructed, but has now gone away?")
        return
    end if

    ' Normal initialisation code
    if (response.result = YSSessionResult().INITIALISED) then
        if (len(m.GetSession().GetAnalyticsURL()) > 0) then
            m._data.poller = YOPoller()
        end if

        m._data._pingCB = function(what)
            what.GetSession().PingAnalytics(yo_Callback("OnAnalytics", what))
        end function

        if (m.GetSession()._CLASSNAME <> "YSLivePauseSession") then
            YO_DEBUG("Initial ping analytics")
            m._data._pingCB(m)
        end if
    end if

    ' All done!
    if (m._data.listener <> invalid) then
        if (response.status = 0) then
            m._data.listener.invoke({result: response.result, status: response.code})
        else
            m._data.listener.invoke({result: response.result, status: response.status})
        end if
    end if
end sub

' OnAnalytics
sub ys_yssm_onanalytics(response as Dynamic)
    ' Take the opportunity to ping the timer
    tim = GetGlobalAA().timer
    tim.Ping()

    if (m.GetSession() = invalid) then
        YO_WARN("Ignoring analytics response as there is no session")
        return
    end if

    ' // TODO: Fix up the response handling to add success
    m.GetSession().ProcessAnalytics(response)

    ' TODO: Should this start polling before receiving a start event callback?
    m.GetPoller().StartPolling(m, m._data._pingCB)
end sub

' ReportPlayerEvent
sub ys_yssm_reportplayerevent(evt as String, data = invalid as Dynamic)
    ' Use the opportunity to ping the timer
    tim = GetGlobalAA().timer
    tim.Ping()

    if (m.GetSession() = invalid) then
        YO_WARN("Ignoring reported event as there is no session: {0}", evt)
        return
    end if

    stoppoll    = false
    startpoll   = false

    if (evt <> YSPlayerEvents().POSITION) then
        YO_TRACE("Event reported: {0}", evt)
    end if

    if (evt = YSPlayerEvents().FULLSCREEN) then
        if (box(data) = true) then
            m.InvokeTracking("fullscreen", false)
            m.InvokeTracking("expand", false)
        else
            m.InvokeTracking("exitFullscreen", false)
            m.InvokeTracking("collapse", false)
        end if
    else if (evt = YSPlayerEvents().MUTE) then
        if (box(data) = true) then
            m.InvokeTracking("mute", false)
        else
            m.InvokeTracking("unmute", false)
        end if
    else if (evt = YSPlayerEvents().POSITION) then
        m.GetSession().UpdatePosition(data)
    else if (evt = YSPlayerEvents().NONLINEAR) then
        if (m.GetSession().IsInAnAdvert()) then
            _targets = m.GetSession().GetCurrentAdvert().GetAdvert().GetNonLinears()
            if ((_targets <> invalid) and (_targets.Count() > data)) then
                _target = _targets[data].GetClickThrough()

                YO_DEBUG(" <<>> Should open: {0}", _target)
                m.GetSession().ReportNonLinearEvent(data, "click")
            end if
        end if
    else if (evt = YSPlayerEvents().CLICK) then
        if (m.GetSession().IsInAnAdvert()) then
            _target = m.GetSession().GetCurrentAdvert().GetAdvert().GetLinear().GetClickThrough()

            YO_DEBUG(" <<>> Should open: {0}", _target)
            m.InvokeTracking("click", true)
        end if
    else if (evt = YSPlayerEvents().PAUSE) or (evt = YSPlayerEvents().STALL) then
        if (evt = YSPlayerEvents().PAUSE) then
            m.InvokeTracking("pause", false)

            ' // TODO: Add YSLivePausePession handling
        end if

        if (m.GetSession().IsInAnAdvert()) then
            m.GetSession().GetCurrentAdvert().AdPaused()
            m.GetSession().StopBreakEndTimer()
        end if

        stoppoll = true
    else if (evt = YSPlayerEvents().END) then
        stoppoll = true
        m.GetSession().ReportLinearEvent("closeLinear")
    else if (evt = YSPlayerEvents().RESUME) or (evt = YSPlayerEvents().CONTINUE) then
        if (evt = YSPlayerEvents().RESUME) then
            m.InvokeTracking("resume", false)
        end if

        if (m.GetSession().IsInAnAdvert()) then
            m.GetSession().GetCurrentAdvert().AdResumed()

            if (m.GetSession()._CLASSNAME = "YSLiveSession") then
                m.GetSession().StartBreakEndTimer()
            end if
        end if

        startpoll = true
    else if (evt = YSPlayerEvents().START) then
        startpoll = true

        ' // TODO: Possibly set up a delayed initial poll here?
    else if (evt = YSPlayerEvents().METADATA) then
        ' Check for break start/stop
        m.GetSession().HandleMetadata(data)
    else if (evt = YSPlayerEvents().LINEAR_EVENT) then
        m.GetSession().ReportLinearEvent(data)
    else if (evt = YSPlayerEvents().NONLINEAR_EVENT) then
        if (type(data) <> "roAssociativeArray") then
            return
        end if

        if (data.DoesExist("which") and data.DoesExist("event")) then
            m.GetSession().ReportNonLinearEvent(data.which, data.event)
        else
            YO_WARN("Non-Linear event could not be fired as parameters 'which' or 'event' are missing")
        end if
    end if

    if (stoppoll = true) then
        if (m.GetPoller() <> invalid) then
            YO_DEBUG("Stopping the poller")
            m.GetPoller().StopPolling()
        end if

        m.GetSession().StopBreakEndTimer()
        m.GetSession()._data.isplaying = false
    end if

    if (startpoll = true) then
        if (m.GetPoller() <> invalid) then
            YO_DEBUG("Restarting the poller")
            m.GetPoller().StartPolling(m, m._data._pingCB)
        end if

        m.GetSession()._data.isplaying = true
    end if
end sub

' InvokeTracking
sub ys_yssm_invoketracking(what as String, linearOnly as Boolean, _duration = 0.0 as Double)
    ' We will use this opportunity to ping the timer
    tim = GetGlobalAA().timer
    tim.Ping()

    ' Only need to track if we are actually in an advert!
    if ((m.GetSession().IsInAnAdvert()) and (m.GetSession().GetCurrentAdvert().GetAdvert() <> invalid)) then
        m.GetSession().GetCurrentAdvert().InvokeTracking(what, linearOnly, _duration)

        if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AnalyticsFired"))) then
            m.GetPlayer().AnalyticsFired.invoke(what, invalid)
        end if
    end if
end sub

' RegisterPlayer
sub ys_yssm_registerplayer(cb_obj as Dynamic)
    m._data.player = cb_obj
    m.GetSession().SetPlayer(m.GetPlayer())
end sub

' GetMasterPlaylist
function ys_yssm_getmasterplaylist() as String
    return m.GetSession().GetMasterURL().ToString()
end function

' GetTimeline
function ys_yssm_gettimeline() as Object
    return m.GetSession().GetTimeline()
end function

' IsYospaceStream
function ys_yssm_isyospace() as Boolean
    ' No session --- no stream!
    if (m.GetSession() = invalid) then
        return false
    end if

    ' Has Yospace Poller URL, must be Yospace
    if (len(m.GetSession().GetAnalyticsURL()) > 0) then
        return true
    end if

    if (m.GetSession()._CLASSNAME = "YSVODSession") then
        tl = m.GetTimeline()
        if ((tl <> invalid) and (tl.GetAllElements().Count() > 1)) then
            ' Theres at least 2 timeline elements. Ideally we should check
            ' if one of those is an advert element, but this should only
            ' occur on a Yospace stream anyway, regardless of element type
            return true
        end if
    end if

    return false
end function
