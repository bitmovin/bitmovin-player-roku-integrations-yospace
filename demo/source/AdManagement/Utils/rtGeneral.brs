'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
function yo_IsNull(item as dynamic) as Boolean
    if (item = invalid) then
        return true
    end if
    
    if (type(item) = "String") and (len(item) = 0) then
        return true
    end if
    
    if (type(item) = "Integer") and (item = 0) then
        return true
    end if
    
    if (type(item) = "roString") then
        return yo_IsNull(item.GetString())
    end if

    if (type(item) = "roInt") then
        return yo_IsNull(item.GetInt())
    end if
end function

function yo_IsNotNull(item as dynamic) as Boolean
    return not yo_IsNull(item)
end function

function MakeClass(name as String, spec as object) as object
    clazz = CreateObject("roAssociativeArray")
    clazz["_INSTANCEID"] = _rdObject_makeRandom()
    clazz["_CLASSNAME"] = name
    clazz._proto = spec
    clazz._data = CreateObject("roAssociativeArray")
    clazz._props = CreateObject("roAssociativeArray")
    clazz._props.get = function(scope, prop) as Dynamic
        return scope["_data"][prop]
    end function
    
    clazz._props.set = sub(scope, prop, data)
        scope["_data"][prop] = data
    end sub
    
    clazz._props.mcall = sub(scope, method, data)
        scope[method](data)
    end sub

    for each prop in spec.properties
        clazz._data[prop] = invalid
        for each accessor in spec.properties[prop]
            clazz[accessor] = spec.properties[prop][accessor]
        end for
    end for
    
    for each meth in spec.methods
        clazz[meth] = spec.methods[meth]
    end for
    
    return clazz
end function

function _rdObject_makeRandom() as String
    rand = ""
    for j = 1 to 8
        rand = rand + Chr(65 + Rnd(26) - 1)
    end for
    return rand
end function

function MakeSubClass(name as String, spec as object, super as object) as object
    ' Start with our own specification
    clazz = MakeClass(name, spec)

    ' And then merge in any properties/methods from
    ' the super-class, renaming where required
    for each prop in super._proto.properties
        clazz._data[prop] = invalid
        for each accessor in super._proto.properties[prop]
            if (clazz.DoesExist(accessor)) then
                clazz["super_" + accessor] = super._proto.properties[prop][accessor]
            else
                clazz[accessor] = super._proto.properties[prop][accessor]
            end if
        end for
    end for
    
    for each meth in super._proto.methods
        if (clazz.DoesExist(meth)) then
            clazz["super_" + meth] = super._proto.methods[meth]
        else
            clazz[meth] = super._proto.methods[meth]
        end if
    end for
    
    ' Return merged class
    return clazz
end function

'* Takes a string and returns it as a number of seconds if it is a timecode,
'* otherwise just returns the string (XX% for example)
'*
'* @method yo_TimecodeFromString
'* @param {String} time Timecode as string (either "HH:MM:SS.mmm" or "XX%")
'* @return {roDouble|String} Timecode in seconds (for "HH:MM:SS.mmm" types,
'* or source string where a non-timecode string is supplied)
function yo_TimecodeFromString(time as String) as dynamic
    if Instr(1, time, ":") = 0 then
        return time
    end if
    
    rv = (Val(Mid(time, 1, 2), 10) * 3600) + (Val(Mid(time, 4, 2), 10) * 60) + (Val(Mid(time, 7)))
    return rv
end function

'* Takes a timestamp and returns it as a timecode string HH:MM:SS
'*
'* @method yo_TimecodeToString
'* @param {roDouble} time Timestamp in seconds
'* @return {String} Timestamp as timecode string (HH:MM:SS.mmm)
function yo_TimecodeToString(time as Double) as String
    hrs     = "0" + StrI(Int(time / 3600), 10)
    mins    = "0" + StrI(Int((time mod 3600) / 60), 10)
    secs    = "0" + Mid(Str(time - (60 * int(time / 60))), 2)
    frac    = ".000"
    treg    = CreateObject("roRegex", "(^|:|\.)0(\d{2})", "g")
    ts1     = hrs + ":" + mins + ":" + secs
    ts2     = treg.ReplaceAll(ts1, "\1\2")
    fs      = Instr(1, secs, ".") + 1
    if fs > 1 then fs = 2
    return  Left(ts2 + Mid(frac, fs), 12)
end function

'* Create a wrapper which enables a function to be used as a callback by the SDK while
'* preserving the scope of the m variable if required.
'* 
'* @function    yo_Callback
'* @param   cb      Dynamic     Name of the function to be called (usually a String)
'* @param   scope   Dynamic     Scope to use when the callback is invoked (as the m variable)
'* @return  Dynamic             Object which can be used as a callback by the SDK
function yo_Callback(cb as Dynamic, scope = invalid as Dynamic) as Dynamic
    rv = {}
    rv.callback = cb
    
    ' Behaviour truth table
    '
    '    SCOPE         CALLBACK            METHOD          ACTION
    ' ============================================================================
    ' 1. VALID         FUNCTION            N/A             Direct Invoke
    ' 2. VALID         STRING              NOT EXIST       NO ACTION
    ' 3. VALID         STRING              EXISTS          Invoke as scope property
    ' 4. INVALID       FUNCTION            N/A             Direct Invoke
    ' 5. INVALID       STRING              N/A             NO ACTION (Unsupported usage)

    if (scope = invalid) then
        rv.scope = invalid
    else
        rv.scope = scope
    end if

    if ((scope = invalid) and ((type(rv.callback) <> "roFunction") and (type(rv.callback) <> "Function"))) then
        ' Case 5
        ? : ? "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&" : ?
        ? "  INCORRECT USE OF yo_Callback FOR CALLBACK: "; cb
        ? : ? "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&" : ?

        rv.invoke = function(data = invalid as Dynamic)
            ? "  IGNORING CALLBACK: "; m.callback
        end function
    else
        ' Cases 1 thru 4
        rv.invoke = function(data = invalid as Dynamic)
            if ((type(m.callback) <> "roFunction") and (type(m.callback) <> "Function")) and m.scope <> invalid then
                ' Cases 2 and 3
                if m.scope.DoesExist(m.callback) then
                    ' Case 3
                    m.scope[m.callback](data)   ' Scope is implicitly restored
                else
                    ' Case 2
                    ? " ATTEMPT TO INVOKE CALLBACK ON OBJECT WITH NO SUCH METHOD: "; m.callback
                end if
            else
                ' Cases 1 and 4 - First restore scope where possible
                fn = m.callback
                if (m.scope <> invalid) then
                    m = m.scope
                end if

                fn(data)
            end if        
        end function
    end if
    
    return rv
end function

'sub yo_Debug()
