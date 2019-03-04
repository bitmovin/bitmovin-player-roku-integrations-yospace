'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* The YSTimer class is a workaround class used to provide SetInterval and SetTimeout
'* functionality under Brightscript 
'*
'* @class   YSTimer
'* @constructor
function YSTimer() as Object
    ' Class definition    
    this = MakeClass("YSTimer", {
        properties: {
            timer: {
                "GetTimer": function() as Dynamic : return m._data.timer : end function
            },
            nextid: {
                "GetNextID": function() as Dynamic : return m._data.nextid : end function
            },
            intervals: {
                "GetIntervals": function() as Dynamic : return m._data.intervals : end function
            },
            lasttime: {
                "GetLastTime": function() as Dynamic : return m._data.lasttime : end function
            }
        },
        
        methods: {
            '* Cause any registered timers to be fired
            '* 
            '* @method Ping
            "Ping":             ys_yst_ping,
            
            "SetTimeout":       ys_yst_settimeout,
            "SetInterval":      ys_yst_setinterval,
            "ClearTimeout":     ys_yst_clearinterval,   ' These are intentionally 
            "ClearInterval":    ys_yst_clearinterval,   ' pointing to the same sub
            "_addMember":       ys_yst_addmember,
            "_getElapsed":      ys_yst_getelapsed,
            "Flush":            ys_yst_flush
        }
    })

    ' Setup and initialise members
    this._data.intervals    = {}
    this._data.nextid       = 1
    
    this._data.timer        = CreateObject("roTimespan")
    this._data.timer.Mark()
    this._data.lasttime     = this._data.timer.TotalMilliseconds()
    
    return this
end function

function ys_yst_flush() as integer
    YO_DEBUG("Timer:: Flush")
    
    rv = m.GetIntervals().Count()
    m._data.intervals = {}
    return rv
end function

sub ys_yst_ping()
    m._data.lasttime = m.GetTimer().TotalMilliseconds()
    tofire = m._getElapsed()
    for fireidx = 0 to tofire.Count() - 1
        fire = tofire[fireidx]
        if (fire.repeats = false) then
            m._data.intervals.Delete(StrI(fire.key).Trim())
        end if
        
        if (fire.payload <> invalid) then
            fire.callback(fire.scope, fire.payload)
        else
            fire.callback(fire.scope)
        end if
    end for
end sub

function ys_yst_settimeout(duration as Integer, scope as Dynamic, cb as Function, pl = invalid as Dynamic) as Integer
    return m._addMember(duration, scope, cb, false, pl)
end function

function ys_yst_setinterval(duration as Integer, scope as Dynamic, cb as Function) as Integer
    return m._addMember(duration, scope, cb, true)
end function

sub ys_yst_clearinterval(id as Integer)
    refid = StrI(id).Trim()
    m._data.intervals.Delete(refid)
    m.Ping()
end sub

function ys_yst_addmember(duration as Integer, scope as Dynamic, cb as Function, rep as Boolean, pl = invalid as Dynamic) as Integer
    id = m.GetNextID()
    'm.Ping()
    item = {
        key: id,
        period: duration,
        callback: cb,
        repeats: rep,
        nextfire: m.GetLastTime() + duration, 
        scope: scope,
        payload: pl
    }
    m._data.intervals.AddReplace(StrI(id).Trim(), item)
    m._data.nextid = m._data.nextid + 1
    
    return id
end function

function ys_yst_getelapsed() as Object
    rv = []
    now = m.GetLastTime()
    items = m.GetIntervals()
    for each item in items
        if items[item].nextfire <= now then
            if (items[item].repeats = true) then
                items[item].nextfire = now + items[item].period
            end if

            rv.Push(items[item])
        end if
    end for
    
    return rv
end function