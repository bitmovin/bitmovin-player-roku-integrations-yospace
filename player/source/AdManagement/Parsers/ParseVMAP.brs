'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* Query the server for available Ad Breaks and Yospace stream data and
'* invoke a callback once everything has been parsed
'*
'* @class       VMAPParser
'* @constructor
'* @param       roString    url     The server URL to contact to retrieve the VMAP XML
'* @param {Function} success_cb Callback function to call when parsing has completed successfully
'* @param {Function} failure_cb Callback function to call if parsing encounters a failure
function VMAPParser(url as Dynamic, success_cb as Dynamic, failure_cb as Dynamic) as object
    ' Class definition
    this = MakeClass("VMAPParser", {
        properties: {
            '* Array of AdBreak instances which represent the AdBreak elements
            '* contained within the VMAP response.
            '* 
            '* @property    breaks
            '* @type        roArray of AdBreak
            '* @get         GetBreaks
            breaks: {
                "GetBreaks": function() as Dynamic : return m._data.breaks : end function
            },

            '* Global Extension tags contained within the VMAP response
            '* 
            '* @property    extensions
            '* @type        Extensions
            '* @get         GetExtensions
            extensions: {
                "GetExtensions": function() as Dynamic : return m._data.extensions : end function
            },

            '* URL of the initial VMAP XML which was used to fetch the response.
            '* 
            '* @property    server
            '* @type        roString
            '* @get         GetServer
            server: {
                "GetServer": function() as Dynamic : return m._data.server : end function
            }
        },
    
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":      ys_vmapp_destroy,

            '* Invoke the load operation using the URL provided
            '* 
            '* @method load
            "Load":         ys_vmapp_load,
            
            '* Parse the supplied XML document as a VMAP response. This method
            '* is automatically called when a server URL is provided during
            '* construction, but where empty string is supplied in place of the
            '* server URL, can be called manually and the XML document provided.
            '* 
            '* @method  parse
            '* @param   roXMLElement  doc     Root node of the VMAP XML response
            "parse":    ys_vmapp_parse,

            '* Method called when the VMAP XML has been loaded and is ready to parse
            '*
            '* @method  onLoadSuccess
            '* @param   String          Loaded XML (as a String)
            "onLoadSuccess": ys_vmapp_success,

            '* Report a failed attempt to fetch
            '*
            '* @method  onLoadFailure
            '* @param   Dynamic statcode    Status code associated with failure
            "onLoadFailure":   ys_vmapp_failure
        }
    })

    ' Setup and initialise members
    this._data.breaks       = []
    this._data.extensions   = invalid
    this._data.server       = box(url)
    this._data.onsuccess    = success_cb
    this._data.onfailure    = failure_cb
    
    if (url <> invalid) and (url <> "") then
        ' Load the XML
        YO_DEBUG("Fetching VMAP")
        bridge = GetGlobalAA().taskman
        bridge.AddFetchJob(this.GetServer(), yo_Callback("onLoadSuccess", this), yo_Callback("onLoadFailure", this))
    end if
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_vmapp_destroy()
    m._data.onsuccess = invalid
    m._data.onfailure = invalid
    
    if (m._data.extensions <> invalid) then
        m._data.extensions.Destroy()
        m._data.extensions = invalid
    end if
    
    while (m._data.breaks.Count() > 0)
        brk = m._data.breaks.Pop()
        brk.Destroy()
    end while
    
    m._data.breaks = invalid
end sub

sub ys_vmapp_load(url as String)
    m._data.server       = box(url)
    
    if (url <> "") then
        ' Load the XML
        YO_DEBUG("Fetching VMAP")
        bridge = GetGlobalAA().taskman
        bridge.AddFetchJob(m.GetServer(), yo_Callback("onLoadSuccess", m), yo_Callback("onLoadFailure", m))
    end if
end sub

' onLoadFailure
sub ys_vmapp_failure(statcode as Dynamic)
    YO_WARN("Failed to load VMAP from '{0}': {1}", m.GetServer(), statcode)

    if m._data.onfailure <> invalid then
        m._data.onfailure.invoke(statcode)
    end if 
end sub

' onLoadSuccess
sub ys_vmapp_success(resp)
    YO_DEBUG("ys_vmapp_success")
    
    if yo_IsNotNull(resp) then
        YO_DEBUG("Got VMAP Response")
        
        doc = CreateObject("roXMLElement")
        success = doc.parse(resp)
        if success then
            YO_DEBUG("Parsing VMAP response")
            if m.parse(doc) = true and m._data.onsuccess <> invalid then
                m._data.onsuccess.invoke(doc)
            else if m._data.onfailure <> invalid then
                m._data.onfailure.invoke("Failed to parse XML")
            end if 
        else
            YO_ERROR("Response was not valid VMAP")
            if m._data.onfailure <> invalid then
                if (Instr(1, resp, "#EXTM3U") > 0) then
                    m._data.onfailure.invoke("ism3u8")
                else
                    m._data.onfailure.invoke("badvmap")
                end if
            end if 
        end if
    else
        YO_WARN("VMAP Response was null in parser")
        if m._data.onfailure <> invalid then
            m._data.onfailure.invoke("badvmap")
        end if 
    end if
end sub

' parse()
function ys_vmapp_parse(doc as dynamic) as Boolean
    adbreaks = doc.GetNamedElements("vmap:AdBreak")
    if adbreaks.Count() > 0 then
        YO_DEBUG("Found {0} break elements", adbreaks.Count())
        
        for each bn in adbreaks
            break = AdBreak(bn)
            
            if break.IsValid() then
                m._data.breaks.Push(break)
            end if
        end for
    else
        YO_TRACE("No Adbreak Elements were Found")
    end if

    exts = doc.GetNamedElements("vmap:Extensions")
    if exts.Count() > 0 then
        m._data.extensions = Extensions(exts[0])
    else
        YO_WARN("No Extensions were found")
    end if
    
    goodVmap = true
    if ((m._data.extensions <> invalid) and (m._data.extensions.GetExtensions() <> invalid)) then
        for each ext in m._data.extensions.GetExtensions()
            if ext.IsValid() <> true then
                goodVmap = false
                exit for
            end if
        end for
    end if
        
    return goodVmap
end function

