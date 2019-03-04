'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* The Poller class handles scheduled polling of the analytics URL
'* in order to maintain an updated TimeLine
'*
'* @class YOPoller
'* @constructor
'* @param {Number} low_interval The low-priority polling interval in milliseconds
'* @param {Number} high_interval The high-priority polling interval in milliseconds
 
function YOPoller() as Object
    this = MakeClass("YOPoller", {
        properties: {
            '* Indicates whether the poller instance is actively running.
            '* 
            '* @property running
            '* @type Boolean
            running: {
                "GetRunning": function() as Dynamic : return m._data.running : end function
            },

            '* The handle to the setInterval timer used to generate polling actions.
            '* 
            '* @property timer
            '* @type Number
            timer: {
                "GetTimer": function() as Dynamic : return m._data.timer : end function
            },

            '* The callback function to be fired whenever the poller interval elapses.
            '* 
            '* @property callback
            '* @type Function
            callback: {
                "GetCallback": function() as Dynamic : return m._data.callback : end function
            }
        },
        methods: {
            '* Determine if the poller is active right now and is polling
            '* periodically
            '* 
            '* @method  IsRunning
            '* @return  roBoolean   True if the poller is active currently
            "IsRunning":        ys_yp_isrunning,

            '* Start the poller to make it begin actively polling. If the poller is
            '* already running then it will be stopped and restarted.
            '* 
            '* @method  StartPolling
            '* @param   roFunction  callback    Callback to invoke at poll interval
            "StartPolling":     ys_yp_startpolling,

            '* Terminate the polling process immediately.
            '* 
            '* @method  StopPolling
            "StopPolling":      ys_yp_stoppolling,

            '* Helper method called when the timer runs out.
            '* 
            '* @method  TimerElapsed
            "_timerElapsed":    ys_yp_timerelapsed
        }
    })

    ' Setup and initialise members
    this._data.running      = false
    this._data.timer        = invalid
    this._data.callback     = invalid

    return this
end function
        
'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' IsRunning
function ys_yp_isrunning() as Boolean
    if (m.GetRunning() = true) and (m.GetTimer() <> invalid) then
        return true
    end if
    
    return false
end function

' StartPolling
sub ys_yp_startpolling(scope as Dynamic, callback as Dynamic)
    YO_DEBUG("START POLLING!")
    
    if (m.GetTimer() <> invalid) then
        YO_DEBUG("Stopping first as timer exists")
        m.StopPolling()
    end if
    
    m._data.callback    = callback
    m._data.scope       = scope
    
    ' Need to recreate the timer now
    m._data.running = true
    
    tim = GetGlobalAA().timer
    that = m
    
    YO_DEBUG("Starting poll timer")

    m._data.timer = tim.SetInterval(3000, that, function(what)
        YO_DEBUG(" Timer fired")
        what._timerElapsed()
    end function)
    YO_DEBUG("Timer ID: {0}", m._data.timer)
end sub
    
' StopPolling
sub ys_yp_stoppolling()
    m._data.running = false
    
    if (m.GetTimer() <> invalid) then
        tim = GetGlobalAA().timer
        tim.ClearInterval(m.GetTimer())
    end if
    
    m._data.timer = invalid
end sub

' TimerElapsed
sub ys_yp_timerelapsed()
    YO_DEBUG("Timer Elapsed!")

    if (m.GetCallback() <> invalid) then
        cb = m.GetCallback()
        YO_DEBUG("Invoking callback")
        cb(m._data.scope)
    end if
end sub
