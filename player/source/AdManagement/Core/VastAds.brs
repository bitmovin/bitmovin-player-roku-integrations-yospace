'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* The VASTAds class represents a single VAST XML response which might 
'* one or more VAST ads.
'*
'* @class VASTAds
'* @constructor
'*
function VASTAds() as object
    ' Class definition    
    this = MakeClass("VASTAds", {
        properties: {
            ads: {
                "GetAds": function() as Dynamic : return m._data.ads : end function,
                "SetAds": sub(data) : m._data.ads = data : end sub
            }
        },
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":      ys_vads_destroy,

            '* Parse the supplied XML response
            '* 
            '* @method parse
            '* @param {roXMLElement} root The root node of the VAST XML response
            "parse":        ys_vads_parse
        }
    })

    ' Setup and initialise members
    this._data.ads = []
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_vads_destroy()
    while (m._data.ads.Count() > 0)
        ad = m._data.ads.Pop()
        ad.Destroy()
    end while
    
    m._data.ads = invalid
end sub

' parse()
function ys_vads_parse(doc as dynamic) as integer
    top = doc
    if (top.GetName() <> "VAST") then
        YO_DEBUG("Top element not VAST... Searching")
        
        top = doc.GetNamedElements("VAST")
        if (top.Count() = 0) then
            YO_WARN("Could not find VAST tag")
            return 0
        end if
    end if
        
    ads = top.GetNamedElements("Ad")
    adarr = []
    
    if ads.Count() > 0 then
        for each ad in ads
            vad = VASTAd(m, ad)
            if vad.IsEmpty() then
                YO_WARN("Parsed an empty ad")
            else
                YO_DEBUG("Adding ad: ", vad.GetId())
                adarr.Push(vad)
            end if     
        end for    
    else
        YO_DEBUG("No Ad elements")
    end if

    m.SetAds(adarr)
    return adarr.Count()
end function