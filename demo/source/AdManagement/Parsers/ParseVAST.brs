'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* Query the server for available VAST Ads and
'* invoke a callback once everything has been parsed
'*
'* @class       VASTParser
'* @constructor
'* @param       roString    url     The server URL to contact to retrieve the VAST XML. If this
'*                                  parameter is roInvalid then no server call will be made and 
'*                                  a subsequent call to parse() should be made supplying the source XML.
'* @param {Function} success_cb Callback function to call when parsing has completed successfully
'* @param {Function} failure_cb Callback function to call if parsing encounters a failure
function VASTParser(url as Dynamic, success_cb as Dynamic, failure_cb as Dynamic) as object
    ' Class definition
    this = MakeClass("VASTParser", {
        properties: {
            '* A VASTAds instance which contains all of the ads parsed
            '* from the VAST XML either loaded from the server, or supplied
            '* to the parse method. Contains invalid until ads have
            '* been parsed.
            '* 
            '* @property    ads
            '* @type        VASTAds
            '* @get         GetAds
            ads: {
                "GetAds": function() as Dynamic : return m._data.ads : end function,
                "SetAds": sub(data) : m._data.ads = data : end sub
            },
            
            '* URL of the initial VAST XML which was used to fetch the response.
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
            "Destroy":      ys_vastp_destroy,

            '* Invoke the load operation from the server URL supplied during
            '* construction.
            '* 
            '* @method load
            "Load":         ys_vastp_load,
            
            '* Parse the supplied XML response
            '* 
            '* @method Parse
            '* @param {roXMLElement} root The root node of the VAST XML response
            "Parse":        ys_vastp_parse,

            '* Report a failed attempt to fetch
            '*
            '* @method  ReportFail
            '* @param   Dynamic statcode    Status code associated with failure
            "ReportFail":   ys_vastp_reportfail
        }
    })
    
    ' Setup and initialise members
    this._data.ads          = invalid
    this._data.onsuccess    = success_cb
    this._data.onfailure    = failure_cb
    
    if (url <> invalid) then
        this._data.server   = url
    else
        this._data.server   = ""
    end if
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_vastp_destroy()
    m._data.onsuccess = invalid
    m._data.onfailure = invalid
    
    if (m._data.ads <> invalid) then
        m._data.ads.Destroy()
        m._data.ads = invalid
    end if
end sub

' load()
sub ys_vastp_load()
    ' Load XML from Server
    if yo_IsNotNull(m.GetServer()) then
        YO_DEBUG("Loading VAST from: {0}", m.getServer())
       
        bridge = GetGlobalAA().taskman
        bridge.AddFetchJob(m.getServer(), yo_Callback("Parse", m), yo_Callback("ReportFail", m))
    end if
end sub

sub ys_vastp_parse(resp as Dynamic)        
    if yo_IsNotNull(resp) then
        'YO_DEBUG("Got Response: {0}", resp)
        
        doc = CreateObject("roXMLElement")
        success = doc.parse(resp)
        if success then
            YO_DEBUG("Parse success: {0}", success)

            ads = VASTAds()
            cnt = ads.parse(doc)
            m._data.ads = ads
            
            YO_DEBUG("Vast Ads success: {0} ads processed", cnt)
            
            if m._data.onsuccess <> invalid then
                m._data.onsuccess.invoke(ads.GetAds())
            end if
        else 
            if m._data.onfailure <> invalid then
                m.ReportFailure("VAST response was corrupt")
            else
                YO_WARN("VAST was corrupt, but no failure handler")
            end if 
        end if
    else
        if m._data.onfailure <> invalid then
            m.ReportFailure("VAST response was empty")
        else
            YO_WARN("VAST was empty, but no failure handler")
        end if 
    end if
end sub

' ReportFail
sub ys_vastp_reportfail(statcode as Dynamic)
    YO_DEBUG("Got failure fetching VAST")

    if m._data.onfailure <> invalid then
        m._data.onfailure.invoke(statcode)
    end if 
end sub
