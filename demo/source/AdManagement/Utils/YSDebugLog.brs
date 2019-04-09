'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

function YospaceVerbosity() as Object
    this = {
        "INFO"          : 0,
        "ERROR"         : 1,
        "WARNING"       : 2,
        "TRACE"         : 3,
        "DEBUG"         : 4
    }

    return this
end function

sub YO_LOGLEVEL(level as integer)
    GetGlobalAA().YospaceLogLevel = level
end sub

function YO_LOGTAG(level as integer) as String
    rv = "LVL " + level.ToStr().Trim()
    if ((level >= 0) and (level <= 4)) then
        tags = ["II:INFO ", "EE:ERROR", "WW:WARN ", "XX:TRACE", "--:DEBUG"]
        return tags[level]
    end if
    
    return rv
end function

sub YO_LOG(level as integer, msg as String, p0 = invalid as Dynamic, p1 = invalid as Dynamic, p2 = invalid as Dynamic, p3 = invalid as Dynamic)
    currentLevel = GetGlobalAA().YospaceLogLevel
    if (currentLevel = invalid) then
        currentLevel = YospaceVerbosity().WARNING
        YO_LOGLEVEL(currentLevel)
    end if
    
    if (level <= currentLevel) then
        prefix = CreateObject("roDateTime").ToISOString() + " [YOSPACE:" + YO_LOGTAG(level) + "] : "
        print prefix ; Substitute(msg, box(p0).ToStr(), box(p1).ToStr(), box(p2).ToStr(), box(p3).ToStr())
    end if
end sub

sub YO_INFO(msg as String, p0 = invalid as Dynamic, p1 = invalid as Dynamic, p2 = invalid as Dynamic, p3 = invalid as Dynamic)
    YO_LOG(YospaceVerbosity().INFO, msg, p0, p1, p2, p3)
end sub

sub YO_WARN(msg as String, p0 = invalid as Dynamic, p1 = invalid as Dynamic, p2 = invalid as Dynamic, p3 = invalid as Dynamic)
    YO_LOG(YospaceVerbosity().WARNING, msg, p0, p1, p2, p3)
end sub

sub YO_ERROR(msg as String, p0 = invalid as Dynamic, p1 = invalid as Dynamic, p2 = invalid as Dynamic, p3 = invalid as Dynamic)
    YO_LOG(YospaceVerbosity().ERROR, msg, p0, p1, p2, p3)
end sub

sub YO_TRACE(msg as String, p0 = invalid as Dynamic, p1 = invalid as Dynamic, p2 = invalid as Dynamic, p3 = invalid as Dynamic)
    YO_LOG(YospaceVerbosity().TRACE, msg, p0, p1, p2, p3)
end sub

sub YO_DEBUG(msg as String, p0 = invalid as Dynamic, p1 = invalid as Dynamic, p2 = invalid as Dynamic, p3 = invalid as Dynamic)
    YO_LOG(YospaceVerbosity().DEBUG, msg, p0, p1, p2, p3)
end sub
