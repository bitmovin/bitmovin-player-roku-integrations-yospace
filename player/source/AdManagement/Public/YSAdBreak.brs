'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* The YSAdBreak class represents a single advert break and the
'* adverts within it
'* 
'* @class   YSAdBreak
'* @param   YSAdBreak   brk The associated VAST ad break (from VMAP) where available
'* @constructor
'*
function YSAdBreak(brk as Dynamic) as object
    ' Class definition
    this = MakeClass("YSAdBreak", {
        properties: {
            '* Unique ID of the advert break
            '* 
            '* @property    identifier
            '* @type        roString
            '* @get         GetIdentifier
            identifier: {
                "GetIdentifier": function() as Dynamic : return m._data.identifier : end function
            },

            '* (Optional) Description of the advert break
            '* 
            '* @property    desc
            '* @type        roString
            '* @get         GetDescription
            desc: {
                "GetDescription": function() as Dynamic : return m._data.desc : end function
            },

            '* Start of advert break relative to start of stream
            '* (represented in seconds).
            '* 
            '* @property    start
            '* @type        roDouble
            '* @get         GetStart
            start: {
                "GetStart": function() as Dynamic : return m._data.start : end function
            },

            '* Array of adverts contained within this advert break.
            '* 
            '* @property    adverts
            '* @type        roArray of YSAdvert
            '* @get         GetAdverts
            adverts: {
                "GetAdverts": function() as Dynamic : return m._data.adverts : end function
            },

            '* Underlying VMAP Break (where present)
            '*
            '* @property    vmapbreak
            '* @type        AdBreak
            '* @get         GetVMAPBreak
            vmapbreak: {
                "GetVMAPBreak": function() as Dynamic : return m._data.vmapbreak : end function
            }
        },

        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":      ys_ysab_destroy,

            '* Determine if any of the ads in this break are marked as "active"
            '* (i.e. user should be forced to watch them)
            '* 
            '* @method IsActive
            '* @return Boolean  true if there are one or more active ads, otherwise false
            "IsActive":             ys_ysab_isactive,

            '* Retrieve the total duration of all adverts contained within this advert
            '* break.
            '* 
            '* @method GetDuration
            '* @return Double   The total length of all adverts contained within this break
            "GetDuration":          ys_ysab_getduration,

            '* Retrieve the advert which encapsulates the specified playhead position
            '* from within the array of adverts contained within this break.
            '* break.
            '* 
            '* @method  GetAdvertForPosition
            '* @param   Double  offset      The playhead position to be checked
            '* @return  YSAdvert | invalid  The advert at the specified position, or invalid if none
            "GetAdvertForPosition": ys_ysab_getadforpos
        }
    })
    
    ' Setup and initialise members
    this._data.identifier   = ""
    this._data.desc         = ""
    this._data.start        = 0.0
    this._data.adverts      = []
    this._data.vmapbreak    = brk

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_ysab_destroy()
    if (m._data.adverts <> invalid) then
        while (m._data.adverts.Count() > 0)
            ad = m._data.adverts.Pop()
            ad.Destroy()
        end while
        
        m._data.adverts = invalid
    end if

    m._data.vmapbreak = invalid
end sub

' IsActive()
function ys_ysab_isactive() as Boolean
    if (m.GetAdverts() = invalid) or (m.GetAdverts().Count() = 0) then
        ' No adverts, no enforcement!
        return false
    end if
    
    ' Iterate the ad array and if any ads are marked as active then the
    ' break is also considered to be active
    for each ad in m.GetAdverts()
        if ad.IsActive() then
            return true
        end if
    end for
    
    return false
end function

' GetDuration()
function ys_ysab_getduration() as Double
    rv = 0.0
    
    if (m.GetAdverts() <> invalid) and (m.GetAdverts().Count() > 0) then
        ' Iterate ad array and sum the durations
        for each ad in m.GetAdverts()
            rv = rv + ad.GetDuration()
        end for
    end if
    
    return rv
end function

' GetAdvertForPosition()
function ys_ysab_getadforpos(offset as Double) as Dynamic
    if (m.GetAdverts() <> invalid) and (m.GetAdverts().Count() > 0) then
        adstart = m.GetStart()

        for each ad in m.GetAdverts()
            if ((offset >= adstart) and ((offset - adstart) < ad.GetDuration())) then
                return ad
            end if
            
            adstart = adstart + ad.GetDuration()
        end for
    else
        YO_WARN("No adverts!!")
    end if
    
    return invalid
end function
