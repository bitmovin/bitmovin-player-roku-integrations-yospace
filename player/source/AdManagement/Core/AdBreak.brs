'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* Represents one AdBreak response within a VMAP document which might contain an AdSource, 
'* TrackingEvents and Extensions.
'* 
'* @class       AdBreak
'* @constructor
'* @param       roXMLElement    root    The node of the vmap:AdBreak XML Fragment
function AdBreak(root as dynamic) as object
    ' Class definition
    this = MakeClass("AdBreak", {
        properties: {
            '* The VAST contained within the AdBreak
            '* (from the VASTAdData Tag)
            '* 
            '* @property    adsource
            '* @type        roXMLElement
            '* @get         GetAdSource
            adsource: {
                "GetAdSource": function() as Dynamic : return m._data.adsource : end function
            },
            
            '* The VASTAds instance which contains and represents all adverts
            '* contained within the AdSource tag (from the VASTAdData tag)
            '* 
            '* @property    vast
            '* @type        VASTAds
            '* @get         GetVastAds
            vast: {
                "GetVastAds": function() as Dynamic : return m._data.vast : end function
            },

            '* Contains the Tracking Events associated with the AdBreak
            '* 
            '* @property    tracking
            '* @type        TrackingEvents
            '* @get         GetTracking
            tracking: {
                "GetTracking": function() as Dynamic : return m._data.tracking : end function
            },

            '* Contains the Extensions tag contained within the AdBreak
            '* 
            '* @property    extensions
            '* @type        Extensions
            '* @get         GetExtensions
            extensions: {
                "GetExtensions": function() as Dynamic : return m._data.extensions : end function
            },

            '* Determines whether the XML data is valid after parsing
            '* 
            '* @property    isvalid
            '* @type        roBoolean
            '* @get         IsValid
            isvalid: {
                "IsValid": function() as Dynamic : return m._data.isvalid : end function
            },

            '* The time offset of the AdBreak, specified either as a timecode string (HH:MM:SS)
            '* or as a percentage(XX%)
            '* 
            '* @property    position
            '* @type        roString
            '* @get         GetPosition
            position: {
                "GetPosition": function() as Dynamic : return m._data.position : end function
            },

            '* The type of ads allowed by this AdBreak ("linear" and/or "nonlinear"). 
            '* Multiple types can be specified as a comma-separated list
            '* 
            '* @property    adtype
            '* @type        roString
            '* @get         GetType
            adtype: {
                "GetType": function() as Dynamic : return m._data.adtype : end function
            },

            '* An optional identifier for the Ad Break
            '* 
            '* @property    id
            '* @type        roString
            '* @get         GetID
            id: {
                "GetID": function() as Dynamic : return m._data.id : end function
            }
        },
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":      ys_ab_destroy
        }
    })
    
    ' Setup and initialise members default values
    this._data.isvalid      = false
    this._data.adsource     = invalid
    this._data.vast         = invalid
    this._data.extensions   = invalid
    this._data.tracking     = invalid
    
    ' Extract time offset attribute if present
    if root.HasAttribute("timeOffset") then
        this._data.position = root.GetAttributes().timeOffset
    else
        this._data.position = ""
    end if
    
    ' Extract Ad types attribute if present 
    if root.HasAttribute("breakType") then
        this._data.adtype = root.GetAttributes().breakType
    else
        this._data.adtype = ""
    end if
    
    ' Extract Ad Break ID attribute if present
    if root.HasAttribute("breakId") then
        this._data.id = root.GetAttributes().breakId
    else
        this._data.id = ""
    end if
    
    ' First looks for AdSource tags (min 0, max 1)
    src = root.GetNamedElements("vmap:AdSource")
    if src.Count() > 0 then
        ' Now checks for VASTAdData (CustomAdData and AdTagURI are not supported)
        ad_data = src[0].GetNamedElements("vmap:VASTAdData")
        if ad_data.Count() > 0 then
            this._data.adsource = ad_data[0].GenXML(true)
            this._data.vast = VASTAds()
            this._data.vast.parse(ad_data[0])  

            if (this._data.vast.GetAds().Count() > 0) then
                this._data.isvalid = true
            end if
        else
            ' Could have AdTagURI or CustomAdData instead but we dont
            ' handle those
            YO_WARN("Not a VASTAdData tag")
        end if
    else
        YO_WARN("No AdSource section in AdBreak")
    end if
    
    ' Try to extract tracking if present
    trk_tag = root.GetNamedElements("vmap:TrackingEvents")
    if trk_tag.Count() > 0 then
        YO_DEBUG("Adding VMAP tracking. Count: {0}", trk_tag.Count())

        this._data.tracking = TrackingEvents(trk_tag[0], invalid)
        this._data.isvalid = true
    else
        YO_DEBUG("No TrackingEvents section in AdBreak")
    end if
    
    ' Try to extract extensions if present
    ext_tag = root.GetNamedElements("vmap:Extensions")
    if ext_tag.Count() > 0 then
        this._data.extensions = Extensions(ext_tag[0])
    else
        YO_DEBUG("No Extensions section in AdBreak")
    end if
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy() 
sub ys_ab_destroy()
    m._data.adsource = invalid
    
    if (m._data.vast <> invalid) then
        m._data.vast.Destroy()
        m._data.vast = invalid
    end if
    
    if (m._data.tracking <> invalid) then
        m._data.tracking.Destroy()
        m._data.tracking = invalid
    end if
    
    if (m._data.extensions <> invalid) then
        m._data.extensions.Destroy()
        m._data.extensions = invalid
    end if
end sub
