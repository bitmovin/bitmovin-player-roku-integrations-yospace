'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* A class for encapsulating Linear VAST Creative element contained within a VastAd instance
'*
'* @class VASTLinear
'* @extends VASTCreative
'* @constructor
'* @param VASTAd        ad      The ad containing this creative
'* @param roXMLElement  root    The root node of this creative in the VAST XML
'* @param String        id      The AdID attribute of the Creative node (if present)
'* @param roXMLElement  parent  The parent "Creatives" element which contains this Linear
'* @param roString      cid     The CreativeID of the Creative node
'*
function VASTLinear(ad as dynamic, root as dynamic, id as String, parent as dynamic, cid as String) as object
    ' Class definition 
    this = MakeSubClass("VASTLinear", {
        properties: {
            '* <p>An array of all media files associated with this linear so the player can choose
            '* the correct one to play.</p>
            '*
            '* <p>Each object in the returned list contains a "src" property, as well as any
            '* of the other attributes associated with a MediaFile tag as properties.</p>
            '*
            '* @property    mediafiles
            '* @type        roArray of Object
            '* @get         GetMediaFiles
            mediafiles: {
                "GetMediaFiles": function() as Dynamic : return m._data.mediafiles : end function
            },

            '* The duration for this linear creative
            '*
            '* @property    duration
            '* @type        Double
            '* @get         GetDuration
            duration: {
                "GetDuration": function() as Dynamic : return m._data.duration : end function
            },

            '* The skipoffset attribute of the linear creative
            '* (or -1 when not defined)
            '* 
            '* @property    skipOffset
            '* @type        roDouble
            '* @get         GetSkipOffset
            skipoffset: {
                "GetSkipOffset": function() as Dynamic : return m._data.skipoffset : end function
            }
        },
    
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":          ys_vl_destroy
        }
    }, VASTCreative(invalid, invalid, "", invalid, ""))   

    ' Call the constructor (in the superclass)
    this.construct(ad, root, id, parent, cid)
    
    ' Setup and initialise members
    this._data.mediafiles   = []
    this._data.duration     = invalid
    this._data.skipoffset   = -1
    
    ' Extract the ClickThrough and ClickTracking URLs
    clicks = root.GetNamedElements("VideoClicks")
    if clicks.Count() > 0 then
        ct = clicks[0].GetNamedElements("ClickThrough")
        if ct.Count() > 0 then
            this._data.clickthrough = ct[0].GetText().Trim()
        end if
        
        ct = clicks[0].GetNamedElements("ClickTracking")
        if ct.Count() > 0 then
            for each i in ct
                YO_TRACE("Adding click tracking: {0}", i.GetText().Trim())
                
                this._data.tracking.AddClickTracking(i.GetText().Trim())
            end for
        end if
    end if
    
    ' Read the Duration
    d = root.GetNamedElements("Duration")
    if d.Count() > 0 then
        this._data.duration = yo_TimecodeFromString(d[0].GetText())
    end if 
    
    ' Extract the skip offset (if it exists)
    if (root.HasAttribute("skipoffset")) then
        ofs = root.GetAttributes().skipoffset.Trim()
        if (instr(1, ofs, "%") > 0) then
            skpos = (this._data.duration * val(left(ofs, len(ofs) - 1))) / 100
            this._data.skipoffset = skpos
        else
            this._data.skipoffset = yo_TimecodeFromString(ofs)
        end if
    end if

    ' Extract media files
    mm = root.GetNamedElements("MediaFiles")
    if mm.Count() > 0 then
        medias = mm[0].GetNamedElements("MediaFile")
        if medias.Count() > 0 then
            for each mfe in medias
                mf = {}
                ' Enumerate attributes
                for each i in mfe.GetAttributes()
                    mf[i] = mfe.GetAttributes()[i]
                end for
                
                mf["src"] = mfe.GetText().Trim()
                this._data.mediafiles.Push(mf)
            end for
        end if
    end if
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_vl_destroy()
    m.super_Destroy()
    m._data.mediafiles = invalid
end sub
