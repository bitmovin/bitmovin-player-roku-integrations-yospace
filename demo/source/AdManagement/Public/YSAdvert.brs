'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* The YSAdvert class is an encapsulation of a VAST advert and handles playback
'* timing, firing of tracking events, safety timeout (to ensure no dangling adverts
'* are left in the session).
'*
'* @class YSAdvert
'* @constructor
'* @param   VASTAd      ad      The decoded VAST advert data
'* @param   Function    cb_wd   Function to call if the watchdog timer expires
'* @param   YSAdBreak   brk     Break which contains this advert
function YSAdvert(ad as Dynamic, cb_wd as Dynamic, brk as Dynamic) as Object
    ' Class definition
    this = MakeClass("YSAdvert", {
        properties: {
            '* Indicates whether the advert is currently "live" or not.
            '* This does not necessarily mean that the advert is also
            '* being played - check the paused property to see if the
            '* advert playback is currently paused. This simply means
            '* the the break is in the active rotation because it has
            '* not yet been viewed by the player.
            '*
            '* @property    active
            '* @type        roBoolean
            '* @get         IsActive
            active: {
                "IsActive": function() as Dynamic : return m._data.active : end function
            },

            '* The VAST Advert encapsulated by this instance.
            '*
            '* @property    advert
            '* @type        VASTAd
            '* @get         GetAdvert
            advert: {
                "GetAdvert": function() as Dynamic : return m._data.advert : end function
            },

            '* The duration of the linear advert (in seconds).
            '*
            '* @property    duration
            '* @type        roDouble
            '* @get         GetDuration
            duration: {
                "GetDuration": function() as Dynamic : return m._data.duration : end function
            },

            '* The callback function which gets invoked if the timer
            '* watchdog fires (indicating that the advert should have
            '* completed).
            '*
            '* @property    callback
            '* @type        roFunction
            '* @get         GetCallback
            callback: {
                "GetCallback": function() as Dynamic : return m._data.callback : end function
            },

            '* The handle of the setTimeout timer used for detecting
            '* the end of the advert (as a safety measure).
            '*
            '* @property    watchdog
            '* @type        roDouble
            '* @get         GetWatchdog
            watchdog: {
                "GetWatchdog": function() as Dynamic : return m._data.watchdog : end function
            },

            '* The start time of this playback period (either from initial
            '* activation, or since resuming following a pause). Value represents
            '* number of milliseconds.
            '*
            '* @property    startpos
            '* @type        roDouble
            '* @get         GetStartPosition
            startpos: {
                "GetStartPosition": function() as Dynamic : return m._data.startpos : end function
            },

            '* The number of seconds already played back in this advert
            '* during previous playback sessions. Usually this will be
            '* zero, but if the advert was paused, any duration played
            '* back will be accumulated into this property.
            '*
            '* @property    elapsed
            '* @type        roDouble
            '* @get         GetAlreadyElapsed
            elapsed: {
                "GetAlreadyElapsed": function() as Dynamic : return m._data.elapsed : end function
            },

            '* Determine if the advert playback is currently paused.
            '*
            '* @property    paused
            '* @type        roBoolean
            '* @get         IsPaused
            paused: {
                "IsPaused": function() as Dynamic : return m._data.paused : end function
            },

            '* <p>This property represents the highest tracking point
            '* which was fired in the usual sequence order. It is used
            '* in order to ensure that quartile tracking is fired and in
            '* the correct sequence.</p>
            '*
            '* <p>The tracking points value is mapped as follows:
            '* <br>0 = No tracking has been made
            '* <br>1 = Impression/View has been fired
            '* <br>2 = First Quartile Fired
            '* <br>3 = Midpoint Fired
            '* <br>4 = Third Quartile Fired
            '* <br>5 = Complete Fired
            '* <br><br>
            '* So to check if the midpoint needs to be fired (for example),
            '* check to see if the trackingPoint is less than 3
            '* </p>
            '*
            '* @property    trkpoint
            '* @type        roInt
            '* @get         GetTrackingPoint
            trkpoint: {
                "GetTrackingPoint": function() as Dynamic : return m._data.trkpoint : end function
            },

            '* A reference back to the underlying YSAdBreak instance which
            '* contains this advert. This will return <code>null</code>
            '* for LIVE sessions as the start and end of a break cannot be
            '* determined ahead of time.
            '*
            '* @property    adbrk
            '* @type        YSAdBreak
            '* @get         GetBreak
            adbrk: {
                "GetBreak": function() as Dynamic : return m._data.adbrk : end function
            }
        },

        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":              ys_ysa_destroy,

            '* Helper function for obtaining the advert's ID (without yospace suffix)
            '*
            '* @method  GetAdvertID
            '* @return  roString    Advert ID of the suffix (without the _yo_miid suffix)
            "GetAdvertID":          ys_ysa_getadid,

            '* Helper function for obtaining the advert's Creative ID
            '*
            '* @method  GetCreativeId
            '* @return  roString    Creative ID of the linear advert
            "GetCreativeId":        ys_ysa_getcreativeid,

            '* Helper function for obtaining the Media Item ID (MIID) from the contained advert.
            '*
            '* @method  GetMediaID
            '* @return  roString    Media ID of the advert (or the ID if it isn't a Yospace Ad)
            "GetMediaID":           ys_ysa_getmiid,

            '* Determines whether this advert is "filler" or regular advert.
            '*
            '* @method  IsFiller
            '* @return  roBoolean       true if this advert is filler, otherwise false
            "IsFiller":             ys_ysa_isfiller,

            '* Helper function which needs to be regularly called by the Session class. This resets the
            '* safety timer which detects the end of an advert (should the player miss a closing ID3 tag,
            '* for example). It is also responsible for the firing of position-based tracking (eg quartiles).
            '*
            '* @method  PingWatchdog
            '* @return  roArray     Array of fired tracking points. Each item is an object which contains
            '*                      "track_id", "progress" and "asset"
            "PingWatchdog":         ys_ysa_ping,

            '* Start the safety timer running which will automatically mark the advert as complete
            '* after its duration if an ID3 metadata tag is accidentally skipped over. If the watchdog
            '* is already running, this will <b>not</b> restart it - a call must first be made to
            '* <code>stopWatchdog()</code>.
            '*
            '* @method  StartWatchdog
            '* @param   roDouble    timeout     Timeout duration in seconds
            "StartWatchdog":        ys_ysa_start,

            '* Stop the safety timer (watchdog) from running. The watchdog is <b>not</b> triggered
            '* provided that this method is called before the timer has elapsed.
            '*
            '* @method stopWatchdog
            "StopWatchdog":         ys_ysa_stop,

            '* Mark the advert as currently being displayed/rendered. This is so that the appropriate timestamps
            '* can be calculated, and the impression tracking call made (if required).
            '* @method  SetActive
            '* @param   roBoolean   active  Whether the advert is showing (active <code>true</code>)
            '* or removing/completing (active <code>false</code>)
            "SetActive":            ys_ysa_setactive,

            '* <p>Helper function used to trigger a tracking event in the advert.</p>
            '*
            '* @method InvokeTracking
            '* @param roString what The name of the event to be fired
            '* @param roBoolean linearOnly Whether to fire events only in linears (true)
            '*                  or also in Non-Linears (false)
            '* @param Double    _duration The number of seconds which have elapsed in
            '*                  the playback of this advert
            '* @protected
            "InvokeTracking":       ys_ysa_invoke,

            '* Determine the total number of seconds this advert has been playing. This
            '* includes any accumulated playback time prior to this playback session, as
            '* well as any playback time in this session.
            '*
            '* @method      TimeElapsed
            '* @return      roDouble    Number of seconds of playback time elapsed in total
            "TimeElapsed":          ys_ysa_elapsed,

            '* Notify that the playback of this advert has been paused.
            '*
            '* @method AdPaused
            "AdPaused":             ys_ysa_paused,

            '* Notify that the playback of this advert has been resumed following
            '* an earlier pause.
            '*
            '* @method AdResumed
            "AdResumed":            ys_ysa_resumed,

            '* Mark whether analytics should be suppressed in this advert
            '*
            '* @method  IsSuppressed
            '* @param {roBoolean} active Whether the tracking is suppressed
            '* @return roArray Array of suppressed calls (when disabling) otherwise invalid
            "IsSuppressed":         ys_ysa_issuppressed,

            '* Fires a tracking beacon for the currently active linear creative
            '*
            '* @method      ReportLinearEvent
            '* @param   String  event   VAST event name to be fired (eg "skip")
            "ReportLinearEvent":    ys_ysa_reportlinear,

            '* Fires a tracking beacon for one of the currently displayed
            '* non-linear creatives
            '*
            '* @method  ReportNonLinearEvent
            '* @param   Integer id      Index number of the non-linear
            '* @param   String  event   VAST event name to be fired (eg "skip")
            "ReportNonLinearEvent": ys_ysa_reportnonlinear
        }
    })

    ' Setup and initialise members
    this._data.active   = true
    this._data.advert   = ad
    this._data.duration = ad.GetLinear().GetDuration()
    this._data.callback = cb_wd
    this._data.watchdog = invalid
    this._data.startpos = invalid
    this._data.elapsed  = 0.0
    this._data.paused   = false
    this._data.trkpoint = 0
    this._data.adbrk  = brk

    ' Bind the advert to this instance
    ad._data.container = this

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_ysa_destroy()
    m._data.adbrk = invalid
end sub

' IsSuppressed()
function ys_ysa_issuppressed(active as Boolean) as Dynamic
    rv = []
    lin = invalid
    nonlin = invalid

    if (m.GetAdvert() <> invalid) then
        ad = m.GetAdvert()
        if (ad.GetLinear() <> invalid) then
            lin = ad.GetLinear().GetTracking().SuppressAnalytics(active)
        end if

        if (ad.GetNonLinearTracking() <> invalid) then
            nonlin = ad.GetNonLinearTracking().SuppressAnalytics(active)
        end if
    end if

    if (active = false) then
        ' Build suppressed list
        if (lin <> invalid) then
            for i = 0 to lin.Count() - 1
                rv.Push(lin[i])
            end for
        end if

        if (nonlin <> invalid) then
            for i = 0 to nonlin.Count() - 1
                rv.Push(nonlin[i])
            end for
        end if

        if (m.IsActive() = true) then
            m.StartWatchdog(m.GetDuration())
        end if

        return rv
    else
        m.StopWatchdog()
    end if

    return invalid
end function

' GetAdvertID()
function ys_ysa_getadid() as String
    rv = ""

    if (m.GetAdvert() <> invalid) then
        treg    = CreateObject("roRegex", "([^_]*)_YO_([\s\S]*)", "i")
        id = treg.Match(m.GetAdvert().GetID())
        rv = id[1]
    end if

    return rv
end function

' GetMediaID()
function ys_ysa_getmiid() as String
    rv = ""

    if (m.GetAdvert() <> invalid) then
        treg    = CreateObject("roRegex", "([^_]*)_YO_([\s\S]*)", "i")
        id = treg.Match(m.GetAdvert().GetID())
        rv = id[2]
    end if

    return rv
end function

function ys_ysa_getcreativeid() as String
    rv = ""

    if (m.GetAdvert() <> invalid) then
        linear = m.GetAdvert().GetLinear()
        if (linear <> invalid) then
            rv = linear.GetCreativeId()
        end if
    end if

    return rv
end function

' ys_ysa_isfiller
function ys_ysa_isfiller() as Boolean
    if LCase(m.GetAdvert().GetAdTitle()) = "filler" then
        return true
    end if

    return false
end function

' PingWatchdog()
function ys_ysa_ping() as Dynamic
    triggers = []

    if (m.IsPaused() = true) then
        return triggers
    end if

    ' If there is a watchdog already running, stop it
    if m.GetWatchdog() <> invalid then
        m.StopWatchdog()
    end if

    ' Begin the new watchdog timer period
    m.StartWatchdog(m.GetDuration())

    ' Check whether tracking needs to be fired
    if (m.GetDuration() > 0) then
        done    = m.TimeElapsed()
        dur     = m.GetDuration()
        assetn  = "dummyasset"
        brk     = m.GetBreak()
        brkdur  = ""

        if (m.GetAdvert() <> invalid) then
            lin = m.GetAdvert().GetLinear()
            if (lin <> invalid) then
                medias = lin.GetMediaFiles()
                if (medias <> invalid) and (medias.Count() > 0) then
                    assetn = medias[0]["src"]
                end if

                brkdur = yo_TimecodeToString(brk.GetDuration())
                lin.TrackProgress(done, assetn, brkdur)
            end if
        end if

        if (done > (dur / 4)) then
            if (m.GetTrackingPoint() < 2) then
                YO_TRACE(" -=-> First Quartile")
                triggers.Push({track_id: "firstQuartile", progress: done, asset: assetn})
                m._data.advert.getLinear().Track("firstQuartile", done, assetn, brkdur)
                m._data.trkpoint = 2
                onAdQuartile(m._data.trkpoint)
            end if
        end if

        if (done > (dur / 2)) then
            if (m.GetTrackingPoint() < 3) then
                YO_TRACE(" -=-> Midpoint")
                triggers.Push({track_id: "midpoint", progress: done, asset: assetn})
                m.GetAdvert().GetLinear().Track("midpoint", done, assetn, brkdur)
                m._data.trkpoint = 3
                onAdQuartile(m._data.trkpoint)
            end if
        end if

        if (done > (3 * dur / 4)) then
            if (m.GetTrackingPoint() < 4) then
                YO_TRACE(" -=-> Third Quartile")
                triggers.Push({track_id: "thirdQuartile", progress: done, asset: assetn})
                m.GetAdvert().GetLinear().Track("thirdQuartile", done, assetn, brkdur)
                m._data.trkpoint = 4
                onAdQuartile(m._data.trkpoint)
            end if
        end if
    end if

    return triggers
end function

' StartWatchdog()
sub ys_ysa_start(timeout as integer)
    if m.GetWatchdog() <> invalid then
        ' Already running
        return
    end if

    'var that = this;
    'this.watchdog = setTimeout(
    '    function() {
    '        if (typeof that.watchdogCallback === 'function') {
    '            that.watchdogCallback.call(this);
    '        }
    '    },
    '    (timeout * 1000)
    ');
end sub

' StopWatchdog()
sub ys_ysa_stop()
    if m.GetWatchdog() <> invalid then
        'clearTimeout(this.watchdog);
        m._data.watchdog = invalid
    end if
end sub

'ys_ysa_setactive
sub ys_ysa_setactive(active as Boolean)
    if not m.IsActive() then
        ' Ignore a request to re-activate an old ad
        return
    end if

    if (active = true) then
        m._data.active      = active
        m._data.startpos    = UpTime(0)
        m._data.elapsed     = 0
        m._data.trkpoint    = 0
        m.StartWatchdog(m.GetDuration())

        YO_TRACE(" -=-> Creative View/Start")

        ' The "creativeView" will also trigger the impression if necessary
        m.InvokeTracking("creativeView", false)
        m.InvokeTracking("start", false)
    else
        YO_TRACE(" -=-> Complete")

        m.StopWatchdog()
        if (not m.IsPaused()) then
            if (m._data.trkpoint >= 4) then
                m.InvokeTracking("complete", false, m.GetDuration())
            end if

            m._data.active = active
        end if
    end if
end sub

' InvokeTracking()
sub ys_ysa_invoke(what as String, linearOnly = invalid as Dynamic, _duration = invalid as Dynamic)
    elapsed = 0
    if (_duration <> invalid) then
        elapsed = _duration
    end if
    brk = m.GetBreak()
    brkdur = ""
    assetn  = "dummyasset"

    ' First deal with Linears
    linear = m.GetAdvert().GetLinear()
    if (linear <> invalid) then
        if (_duration = invalid) then
            elapsed = m.TimeElapsed()
        else
            elapsed = _duration
        end if

        medias = linear.GetMediaFiles()
        if ((medias <> invalid) and (medias.Count() > 0)) then
            assetn = medias[0].src
        end if

        brkdur = yo_TimecodeToString(brk.GetDuration())
        linear.Track(what, elapsed, assetn, brkdur)
    end if

    if ((linearOnly <> invalid) and (linearOnly = false)) then
        ' Now handle Non-Linears
        YO_DEBUG("Tracking non-linears")

        tracking = m.GetAdvert().GetNonLinearTracking()
        if tracking <> invalid then
            tracking.Track(what, invalid, assetn, brkdur)
        end if
    end if
end sub

' TimeElapsed()
function ys_ysa_elapsed() as Double
    if m.IsPaused() then
        return m.GetAlreadyElapsed()
    end if

    return (m.GetAlreadyElapsed() + (UpTime(0) - m.GetStartPosition()))
end function

' AdPaused()
sub ys_ysa_paused()
    if not m.IsPaused() then
        YO_DEBUG(" -=-> Paused")

        m.StopWatchdog()

        m._data.elapsed     = m.TimeElapsed()
        m._data.paused      = true
        m._data.startpos    = 0.0
    end if
end sub

' AdResumed()
sub ys_ysa_resumed()
    if m.IsPaused() then
        YO_DEBUG(" -=-> Resumed")
        m._data.startpos    = UpTime(0)
        m._data.paused      = false

        m.PingWatchdog()
    end if
end sub

sub ys_ysa_reportlinear(event as String)
    m.InvokeTracking(event, true, m.GetDuration())
end sub

sub ys_ysa_reportnonlinear(id as Integer, event as String)
    assetn = ""
    elapsed = 0
    brk = m.GetBreak()
    brkdur = ""

    ' First deal with Linears
    linear = m.GetAdvert().GetLinear()
    if (linear <> invalid) then
        elapsed = m.TimeElapsed()

        medias = linear.GetMediaFiles()
        if ((medias <> invalid) and (medias.Count() > 0)) then
            assetn = medias[0].src
        end if

        brkdur = yo_TimecodeToString(brk.GetDuration())
    end if

    tracking = m.GetAdvert().GetNonLinearTracking()
    if tracking <> invalid then
        tracking.Track(what, elapsed, assetn, brkdur)
    end if
end sub
