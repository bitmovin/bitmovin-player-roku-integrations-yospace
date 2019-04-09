'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* A class for encapsulating NonLinear VAST Creative elements contained within a VastAd instance
'*
'* @class VASTNonLinear
'* @extends VASTCreative
'* @constructor
'* @param VASTAd        ad      The ad containing this creative
'* @param roXMLElement  root    The root node of this creative in the VAST XML
'* @param String        id      The AdID attribute of the Creative node (if present)
'* @param roXMLElement  parent  The parent "Creatives" element which contains this Linear
'* @param roString      cid     The CreativeID of the Creative node
'*
function VASTNonLinear(ad as dynamic, root as dynamic, id as String, parent as dynamic, cid as String) as object
    ' Class definition
    this = MakeSubClass("VASTNonLinear", {
        properties: {
            '* <p>Resources referenced within this NonLinear creative. Resources
            '* are contained in an associative array with 2 properties.</p>
            '* 
            '* html     -   Contains the URL of an HTML type resource<br> 
            '* images   -   An associative array containing the image type<br> 
            '*              resource(s). The image resources are keyed by their<br>
            '*              mime type
            '* 
            '* @property    resources
            '* @type        roAssociativeArray
            '* @get         GetAllResources
            resources: {
                "GetAllResources": function() as Dynamic : return m._data.resources : end function
            },

            '* An object which contains all defined attributes for this non-linear creative
            '*
            '* @property    attributes
            '* @type        roAssociativeArray
            '* @get         GetAttributes
            attributes: {
                "GetAttributes": function() as Dynamic : return m._data.attributes : end function
            }
        },
    
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":          ys_vnl_destroy,

            "GetImageForType":  ys_vnl_gettype
        }
    }, VASTCreative(invalid, invalid, "", invalid, ""))

    ' Call the constructor (in the superclass)
    this.construct(ad, root, id, parent, cid)
    
    ' Setup and initialise members
    this._data.resources = {
        images: {}
    }

    this._data.attributes = {}

    ' Check for "StaticResource" tags
    res = root.GetNamedElements("StaticResource")    
    if res.Count() > 0 then
        for each i in res
            if i.HasAttribute("creativeType") then
                this._data.resources.images[i.GetAttributes().creativeType] = i.GetText().Trim()
            end if
        end for
    end if

    ' Check for NonLinearClickTracking tags
    res = root.GetNamedElements("NonLinearClickTracking")
    if res.Count() > 0 then
        for each i in res
            ' Store the tracking in the parent as all NonLinears
            ' share the same tracking pool
            ad.GetNonLinearTracking().AddClickTracking(i.GetText().Trim())
        end for
    end if    
    
    ' Check for NonLinearClickThrough tag
    res = root.GetNamedElements("NonLinearClickThrough")
    if res.Count() > 0 then
        this.clickThrough = res[0].GetText().Trim()
    end if

    ' Extract Attributes
    keys = root.GetAttributes().Keys()
    if (keys.Count() > 0) then
        for i = 0 to keys.Count() - 1
            key = keys[i]
            this._data.attributes.AddReplace(key, root.GetAttributes().Lookup(key))
        end for
    end if

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_vnl_destroy()
    m.super_Destroy()
    m._data.resources = invalid
    m._data.attributes = invalid
end sub

' GetImageForType
function ys_vnl_gettype(mime as String) as String
    if m._data.resources.images.DoesExist(mime) then
        return m._data.resources.images.Lookup(mime)
    end if
    
    return ""
end function
