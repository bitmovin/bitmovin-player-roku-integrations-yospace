'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

function YSPlayerEvents() as Object
    this = {}
    
    this["READY"]           = "ready"
    this["START"]           = "start"
    this["END"]             = "end"
    this["MUTE"]            = "mute"
    this["FULLSCREEN"]      = "fullscreen"
    this["POSITION"]        = "position"
    this["METADATA"]        = "id3"
    this["PAUSE"]           = "pause"
    this["RESUME"]          = "resume"
    this["SEEK_START"]      = "seek_begin"
    this["SEEK_END"]        = "seek_end"
    this["CLICK"]           = "click"
    this["NONLINEAR"]       = "non_linear"
    this["STALL"]           = "buffer"
    this["BUFFER"]          = "buffer"
    this["CONTINUE"]        = "continue"
    this["ERROR"]           = "error"
    this["LINEAR_EVENT"]    = "linear"
    this["NONLINEAR_EVENT"] = "nonlinear"

    return this
end function

