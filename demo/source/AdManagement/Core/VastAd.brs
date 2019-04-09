'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* Represents a single VAST ad from the VAST XML response
'*
'* @class VASTAd
'* @constructor
'* @param {VASTAds} parent Parent VAST collection which contains this ad
'* @param {roXMLElement} elem The root element of this <Ad> in the VAST XML response
'*
function VASTAd(parent as Dynamic, elem as Dynamic) as object
    ' Class definition   
    this = MakeClass("VASTAd", {
        properties: {
            '* A reference back to the YSAdvert containing this advert
            '*
            '* @property    container
            '* @type        YSAdvert
            '* @get         GetContainer
            container: {
                "GetContainer": function() as Dynamic : return m._data.container : end function
            },

            '* A reference back to the parent VASTAds collection which owns this instance.
            '* 
            '* @property    vast
            '* @type        VASTAds
            '* @get         GetVastAds
            vast: {
                "GetVastAds": function() as Dynamic : return m._data.vast : end function
            },
            
            '* The original unmodified VAST associated with this advert.
            '* 
            '* @property    vastxml
            '* @type        roXMLElement
            '* @get         GetVastXML
            vastxml: {
                "GetVastXML": function() as Dynamic : return m._data.vastxml : end function
            },
            
            '* The ID of the Ad tag provided in the VAST response.
            '* 
            '* @property    id
            '* @type        roString
            '* @get         GetId
            id: {
                "GetId": function() as Dynamic : return m._data.id : end function
            },

            '* The AdTitle element of the InLine tag provided in the VAST response.
            '* 
            '* @property    adtitle
            '* @type        roString
            '* @get         GetAdTitle
            adtitle: {
                "GetAdTitle": function() as Dynamic : return m._data.adtitle : end function
            },

            '* The Description element of the InLine tag provided in the VAST response.
            '* 
            '* @property    description
            '* @type        roString
            '* @get         GetDescription
            description: {
                "GetDescription": function() as Dynamic : return m._data.description : end function
            },

            '* The Advertiser element of the InLine tag provided in the VAST response.
            '* 
            '* @property    advertiser
            '* @type        roString
            '* @get         GetAdvertiser
            advertiser: {
                "GetAdvertiser": function() as Dynamic : return m._data.advertiser : end function
            },

            '* The Survey element of the InLine tag provided in the VAST response.
            '* 
            '* @property    survey
            '* @type        roString
            '* @get         GetSurvey
            survey: {
                "GetSurvey": function() as Dynamic : return m._data.survey : end function
            },

            '* The version attribute of the AdSystem element of the InLine tag provided in the VAST response.
            '* 
            '* @property    version
            '* @type        roString
            '* @get         GetVersion
            version: {
                "GetVersion": function() as Dynamic : return m._data.version : end function
            },

            '* The AdSystem element text of the InLine tag provided in the VAST response.
            '* 
            '* @property    adsystem
            '* @type        roString
            '* @get         GetAdSystem
            adsystem: {
                "GetAdSystem": function() as Dynamic : return m._data.adsystem : end function
            },

            '* The sequence number of this Ad where supplied (otherwise roInvalid)
            '* 
            '* @property    sequence
            '* @type        roString
            '* @get         GetSequence
            sequence: {
                "GetSequence": function() as Dynamic : return m._data.sequence : end function
            },

            '* The linear creative contained within this Ad, or roInvalid where the ad
            '* does not contain a linear creative.
            '* 
            '* @property    linear
            '* @type        VASTLinear
            '* @get         GetLinear
            linear: {
                "GetLinear": function() as Dynamic : return m._data.linear : end function
            },

            '* An array of NonLinear creatives contained within this ad. If there are
            '* no NonLinear creatives, the array will be empty.
            '* 
            '* @property    nonlinears
            '* @type        roArray of VASTNonLinear
            '* @get         GetNonLinears
            nonlinears: {
                "GetNonLinears": function() as Dynamic : return m._data.nonlinears : end function
            },

            '* TrackingEvents instance which collates all the tracking tags for
            '* all NonLinear creatives within this ad block (as the tracking is 
            '* shared for all non-linears).
            '* 
            '* @property    nonlintracking
            '* @type        TrackingEvents
            '* @get         GetNonLinearTracking
            nonlintracking: {
                "GetNonLinearTracking": function() as Dynamic : return m._data.nonlintracking : end function
            },

            '* <code>true</code> if the ad contains an Inline element with
            '* creatives. This doesn't actually check for valid creatives though.
            '* 
            '* @property    hasContent
            '* @type        roBoolean
            '* @get         HasContent
            hascontent: {
                "HasContent": function() as Dynamic : return m._data.hascontent : end function
            },

            '* An array of tracking URLs which should be fetched when the first
            '* of any adverts contained in this advert block are displayed (i.e.
            '* the impression tracking URLs).
            '* 
            '* @property    impressions
            '* @type        roArray of String
            '* @get         GetImpressions
            impressions: {
                "GetImpressions": function() as Dynamic : return m._data.impressions : end function
            },

            '* Determine whether the array of impressions URLs has been fetched
            '* or not. This property is used internally to determine on advert
            '* invocation to determine whether it needs to make the impression
            '* calls, or whether they have already been handled by another creative
            '* within this advert block.
            '* 
            '* @property    sentimpression
            '* @type        roBoolean
            '* @get         HasSentImpression
            '* @set         ImpressionSent
            sentimpression: {
                "HasSentImpression": function() as Dynamic : return m._data.sentimpression : end function,
                "ImpressionSent": sub(data) : m._data.sentimpression = data : end sub
            },

            '* Array of Extension items, where provided in the VAST XML. Each item
            '* in the array is an Element containing the XML node of each Extension,
            '* including the <Extension> start and end tags.
            '* 
            '* @property    extensions
            '* @type        roArray of roXMLElement
            '* @get         GetExtensions
            extensions: {
                "GetExtensions": function() as Dynamic : return m._data.extensions : end function
            },

            '* Array of AdvertWrapper items, obtained from the Extensions in the XML
            '* 
            '* @property    advertlineage
            '* @type        roArray
            '* @get         GetAdvertLineage
            advertlineage: {
                "GetAdvertLineage": function() as Dynamic : return m._data.advertlineage : end function
            }
        },
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":      ys_va_destroy,

            '* Determines if this ad has the given sequence number
            '*
            '* @method IsNumber
            '* @param {integer} seq The target sequence number
            '* @return {roBoolean} true if this ad has the given sequence 
            '* number, otherwise false
            "IsNumber":     ys_va_isnumber,
            
            '* Determines if this ad has a sequence number
            '*
            '* @method HasSequence
            '* @return {roBoolean} true if this ad has a sequence 
            '* number defined, otherwise false
            "HasSequence":  ys_va_hassequence,
            
            '* Determine if this ad has any content (wrapped or inline) or not
            '*
            '* @method IsEmpty
            '* @return {roBoolean} true if this ad contains an inline 
            '* creative defined, otherwise false
            "IsEmpty":      ys_va_isempty
        }
    }) 

    ' Setup and initialise members
    this._data.container        = invalid
    this._data.vast             = parent
    this._data.vastxml          = elem
    this._data.id               = ""
    this._data.adtitle          = ""
    this._data.description      = ""
    this._data.advertiser       = ""
    this._data.survey           = ""
    this._data.version          = ""
    this._data.adsystem         = ""
    this._data.sequence         = invalid
    this._data.linear           = invalid
    this._data.nonlinears       = []
    this._data.hascontent       = true
    this._data.impressions      = []
    this._data.sentimpression   = false
    this._data.extensions       = []
    this._data.advertlineage    = invalid
    
    ' Construct the nonlinear tracking events instance. This will be
    ' referred to by all VASTNonLinear instances
    this._data.nonlintracking = TrackingEvents(invalid, this)
    
    ' Extract sequence attribute (if present)    
    if elem.HasAttribute("sequence") then
        this._data.sequence = elem.GetAttributes().sequence
        YO_DEBUG("VASTAd: Found sequence: {0}", this.GetSequence())
    end if
    
    ' Extract ID (if present)
    if elem.HasAttribute("id") then
        this._data.id = elem.GetAttributes().id
        YO_DEBUG("VASTAd: Found id: {0}", this.GetId())
    end if
    
    ' Check for and obtain the Inline element
    inlines = elem.GetNamedElements("InLine")
    if inlines.Count() > 0 then
        inline = inlines[0]
        YO_DEBUG("VASTAd: Found Inline")
        
        ' Extract optional elements
        ' (AdSystem, AdTitle, Description, Survey, Advertiser)
        opt = inline.GetNamedElements("AdSystem")
        if opt.Count() > 0 then
            sys = opt[0]
            this._data.adsystem = sys.GetText()
            YO_DEBUG("VASTAd: Setting AdSystem: {0}", this.GetAdSystem())
            
            if sys.HasAttribute("version") then
                this._data.version = sys.GetAttributes().version
                YO_DEBUG("VASTAd: Setting version: {0}", this.GetVersion())
            end if
        end if

        opt = inline.GetNamedElements("AdTitle")
        if opt.Count() > 0 then
            this._data.adtitle = opt[0].GetText()
            YO_DEBUG("VASTAd: Setting title: {0}", this.GetAdTitle())
        end if

        opt = inline.GetNamedElements("Description")
        if opt.Count() > 0 then
            this._data.description = opt[0].GetText()
            YO_DEBUG("VASTAd: Setting Description: {0}", this.GetDescription())
        end if

        opt = inline.GetNamedElements("Survey")
        if opt.Count() > 0 then
            this._data.survey = opt[0].GetText()
            YO_DEBUG("VASTAd: Setting Survey: {0}", this.GetSurvey())
        end if

        opt = inline.GetNamedElements("Advertiser")
        if opt.Count() > 0 then
            this._data.advertiser = opt[0].GetText()
            YO_DEBUG("VASTAd: Setting Advertiser: {0}", this.GetAdvertiser())
        end if

        ' Extract impressions
        this._data.impressions = []
        opt = inline.GetNamedElements("Impression")
        if opt.Count() > 0 then
            YO_DEBUG("VASTAd: Found Impressions. Count: {0}", opt.Count())

            for each imp in opt
                this._data.impressions.Push(imp.GetText().Trim())
                YO_DEBUG("VASTAd: Adding Impression: {0}", imp.GetText())
            end for
        end if
        
        ' Extract Extensions
        this._data.extensions = []
        exts = elem.GetNamedElements("Extensions")
        if exts.Count() > 0 then
            YO_DEBUG("VASTAd: Found Extensions. Count: {0}", exts.Count())

            for each i in exts
                ext = i.GetNamedElements("Extension")
                if ext.Count() > 0 then
                    YO_DEBUG("VASTAd: Found extension. Count: {0}", ext.Count())

                    for each j in ext
                        YO_DEBUG("VASTAd: Processing Extension")

                        if ((j.HasAttribute("type")) and (j.GetAttributes().type = "com.yospace.wrapperhierarchy")) then
                            nextNode = j.GetChildElements()
                            lineage = invalid

                            while ((nextNode <> invalid) and (nextNode.Count() > 0))
                                if (nextNode.GetName() = "AdWrapper") then
                                    lin_id = nextNode.GetAttributes().id
                                    lin_cid = nextNode.GetAttributes().creativeId
                                    lin_adsys = nextNode.GetAttributes().AdSystem

                                    YO_DEBUG("VASTAd: Detected Hierarchy: {0} / {1} / {2}", lin_id, lin_cid, lin_adsys)
                                    lineNode = AdvertWrapper(lin_id, lin_cid, lin_adsys)
                                    if (lineage = invalid) then
                                        m._data.advertlineage = lineNode
                                    else
                                        lineage.SetChild(lineNode)
                                    end if

                                    lineage = lineNode
                                end if

                                nextNode = nextNode.GetChildElements()
                            end while
                        else
                            this._data.extensions.Push(j)
                        end if
                    end for
                end if
            end for
        end if
        
        ' Extract Creatives
        opt = inline.GetNamedElements("Creatives")
        if opt.Count() > 0 then
            YO_DEBUG("VASTAd: Found creatives. Count: {0}", opt.Count())

            creatives = opt[0].GetNamedElements("Creative")
            if creatives.Count() > 0 then
                YO_DEBUG("VASTAd: Found Creative. Count: {0}", creatives.Count())
                
                for each i in creatives
                    AdId = ""
                    CreativeId = ""
                    
                    if i.HasAttribute("AdID") then
                        AdId = i.GetAttributes().AdID
                        YO_DEBUG("VASTAd: Extracted AdID: {0}", AdId)
                    end if
                    
                    if i.HasAttribute("id") then
                        CreativeId = i.GetAttributes().id
                        YO_DEBUG("VASTAd: Extracted CreativeID: {0}", CreativeId)
                    end if

                    creative = i.GetChildElements()[0]
                    if creative.GetName() = "Linear" then
                        YO_DEBUG("VASTAd: Found Linear Ad")

                        this._data.linear = VASTLinear(this, creative, AdId, i, CreativeId)
                    else if creative.GetName() = "NonLinearAds" then
                        YO_DEBUG("VASTAd: Found NonLinear Ads Block")

                        nonlins = creative.GetNamedElements("NonLinear")
                        if nonlins.Count() > 0 then
                            YO_DEBUG("VASTAd: NonLinear Count: {0}", nonlins.Count())

                            for each j in nonlins
                                n = VASTNonLinear(this, j, AdId, nonlins, CreativeId)
                                this._data.nonlinears.Push(n)
                            end for
                        end if
                    else
                        YO_WARN("VASTAd: Skipping Creative with tag: {0}", creative.GetName())
                    end if
                end for
            end if        
        else
            this._data.hascontent = false
        end if
    else
        YO_WARN("VASTAd: Found no inline element")
        this._data.hascontent = false
    end if
    
    return this
end function

'*
'* Represents a single VAST lineage node
'*
'* @class AdvertWrapper
'* @constructor
'* @param roString  id          ID attribute
'* @param roString  creative    Creative ID attribute
'* @param roString  system      AdSystem attribute
'*
function AdvertWrapper(id as String, creative as String, system as String) as object
    ' Class definition   
    this = MakeClass("AdvertWrapper", {
        properties: {
            '* ID of this wrapper element
            '*
            '* @property    adid
            '* @type        String
            '* @get         GetAdId
            adid: {
                "GetAdId": function() as Dynamic : return m._data.adid : end function
            },

            '* ID of the creative in the wrapper
            '*
            '* @property    creativeid
            '* @type        String
            '* @get         GetCreativeId
            creativeid: {
                "GetCreativeId": function() as Dynamic : return m._data.creativeid : end function
            },

            '* AdSystem of this wrapper element
            '*
            '* @property    adsystem
            '* @type        String
            '* @get         GetAdSystem
            adsystem: {
                "GetAdSystem": function() as Dynamic : return m._data.adsystem : end function
            },

            '* Pointer to next child node
            '*
            '* @property    child
            '* @type        AdvertWrapper
            '* @get         GetChild
            '* @set         SetChild
            child: {
                "GetChild": function() as Dynamic : return m._data.child : end function,
                "SetChild": sub(data) : m._data.child = data : end sub
            }
        },
        methods: {
        }
    })

    this._data.adid = id
    this._data.creativeid = creative
    this._data.adsystem = system
    this._data.child = invalid

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_va_destroy()
    m._data.hascontent      = false
    m._data.vast            = invalid
    m._data.vastxml         = invalid
    m._data.impressions     = invalid
    m._data.extensions      = invalid
    m._data.container       = invalid
    m._data.advertlineage   = invalid

    if (m._data.linear <> invalid) then
        m._data.linear.Destroy()
        m._data.linear = invalid
    end if
    
    if (m._data.nonlintracking <> invalid) then
        m._data.nonlintracking.Destroy()
        m._data.nonlintracking = invalid
    end if
    
    if (m._data.nonlinears <> invalid) then
        while (m._data.nonlinears.Count() > 0)
            nl = m._data.nonlinears.Pop()
            nl.Destroy()
        end while
        
        m._data.nonlinears = invalid
    end if
end sub

' IsNumber()
function ys_va_isnumber(seq as integer) as Boolean
    if (m.GetSequence() <> invalid) and (Val(m.GetSequence()) = seq) then
        return true
    end if
    
    return false
end function

' HasSequence()
function ys_va_hassequence() as Boolean
    if (m.GetSequence() = invalid) or (Val(m.GetSequence()) = 0) then
        return false
    end if
    
    return true
end function

' IsEmpty()
function ys_va_isempty() as Boolean
    return not m._data.hascontent
end function

