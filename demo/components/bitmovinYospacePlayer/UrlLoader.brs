'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* This task exists solely for loading data from external URLs.
'* It's made necessary because the Roku RSG components cannot use a
'* roUrlTransfer object in the render thread, so must complete such
'* operations from inside a separate task.
'*

' init() constructor/initializer for the task thread
sub init()
    ' Yospace SDK Initialization
    YO_LOGLEVEL(YospaceVerbosity().WARNING)
    YO_DEBUG("Starting URL Loader")

    m.top.functionName  = "performLoad"
    m.top.control       = "RUN"
end sub

' Thread run() loop
sub performLoad()
    ' Create port for monitoring incoming targeturl field
    ' and bind it
    port = CreateObject("roMessagePort")
    m.top.ObserveFieldScoped("targeturl", port)
    
    ' Thread will run forever, listening for incoming requests
    while true
        msg = wait(0, port)
        
        ' Message received from port - validate it
        if type(msg) = "roSGNodeEvent"
            ' See which field was observed
            field = msg.GetField()
            value = msg.GetData()
            
            if (field = "targeturl") then
                ' Target URL field changed which means a new URL request came in
                ' Create a listener port and create an roUrlTransfer object
                uport   = CreateObject("roMessagePort")
                req     = CreateObject("roUrlTransfer")
                
                ' Bind and set url request properties
                ' // TODO: Allow binding different certs?
                req.SetCertificatesFile("common:/certs/ca-bundle.crt")
                req.SetMessagePort(uport)
                req.SetUrl(value)
                
                ' Begin the request 
                resp = ""
                scode = -1
                
                req.AsyncGetToString()
                
                ' This is a continual loop, but is terminated if needed
                while true
                    ' Wait for a message from the url transfer port
                    ' // TODO: Allow customizable timeout value?
                    umsg = wait(15000, uport)
                    
                    if umsg <> invalid and type(umsg) = "roUrlEvent" then
                        ' Check if it's a type 1 message, otherwise its
                        ' not yet significant
                        if umsg.GetInt() = 1 then
                            ' Check for a success response
                            scode = umsg.GetResponseCode()
                            if ((scode >= 200) and (scode <= 399)) then
                                resp = umsg.GetString()
                            end if
                            
                            ' But in any case, break out of the inner while loop
                            exit while
                        else
                            ' Ignore types not "1"
                            ' 1 means "Transfer complete". 2 means "Transfer started"
                            ' but is apparently not currently implemented
                        end if
                    else
                        ' An invalid or unexpected message type was received
                        YO_DEBUG("Timeout detected in UrlLoader")
                        exit while
                    end if
                end while
                
                ' Response was obtained (or we fell through)
                ' so we need to assign the response field
                ' NOTE: ALWAYS SET THE RESPONSE BEFORE THE RESULT!!
                m.top.response = resp
                m.top.result = scode    ' Code of -1 means "Timeout"
            else
                ' An unrecognized field was observed??
                YO_WARN("UrlLoader observed unknown field: {0}", field)
            end if
        else
            ' An unexpected event was fired. Shouldn't happen!
            YO_ERROR("UrlLoader got unexpected event")
        end if
    end while
end sub
