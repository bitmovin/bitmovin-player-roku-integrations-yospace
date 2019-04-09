'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* The YSTimelineElement class is the base class type which represents
'* a single period of time within a YSTimeline instance and from which
'* different types of time period are derived (VOD, ADVERT and LIVE)
'*
'* @class   YSTimelineElement
'* @param   Double  offset      The time offset of this element (in seconds)
'* @param   Double  duration    The length of this element (in seconds)
'* @constructor
function YSTimelineElement(offset as Double, duration as Double) as Object
    ' Class definition   
    this = MakeClass("YSTimelineElement", {
        properties: {
            '* The type description for this timeline element. Can be
            '* one of the values defined by "VOD", "ADVERT" or "LIVE".
            '* 
            '* @property    elemtype
            '* @type        roString
            '* @get         GetType
            elemtype: {
                "GetType": function() as Dynamic : return m._data.elemtype : end function
            },

            '* The start offset of this element (in seconds) from the 
            '* beginning of the stream.
            '* 
            '* @property    offset
            '* @type        roDouble
            '* @get         GetOffset
            offset: {
                "GetOffset": function() as Dynamic : return m._data.offset : end function
            },

            '* The duration of this element (in seconds).
            '* 
            '* @property    duration
            '* @type        roDouble
            '* @get         GetDuration
            duration: {
                "GetDuration": function() as Dynamic : return m._data.duration : end function
            }
        },

        methods: {
            ' Internal constructor    
            "construct":            ys_yste_construct,

            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":              ys_yste_destroy
        }
    }) 

    ' Call constructor method    
    this.construct(offset, duration)
    
    return this    
end function

'---------------------------------------------------------------------------------------------------------------------------------

'* The YSTimelineVODElement class is a derived class type which represents
'* a single period of time within a YSTimeline instance which contains
'* Video-On-Demand type content (VOD)
'*
'* @class   YSTimelineVODElement
'* @extends YSTimelineElement
'* @param   Double      offset      The time offset of this element (in seconds)
'* @param   Double      duration    The length of this element (in seconds)
'* @constructor
function YSTimelineVODElement(offset as Double, duration as Double) as Object
    this = MakeSubClass("YSTimelineVODElement", {
        properties: {
        },

        methods: {
        }
    }, YSTimelineElement(offset, duration))
    
    this.construct(offset, duration)
    this._data.elemtype = "VOD"
    
    return this
end function

'---------------------------------------------------------------------------------------------------------------------------------

'* The YSTimelineLiveElement class is a derived class type which represents
'* a single period of time within a YSTimeline instance which contains
'* live type content.
'*
'* @class   YSTimelineLiveElement
'* @extends YSTimelineElement
'* @param   Double      offset      The time offset of this element (in seconds)
'* @param   Double      duration    The length of this element (in seconds)
'* @constructor
function YSTimelineLiveElement(offset as Double, duration as Double) as Object
    this = MakeSubClass("YSTimelineLiveElement", {
        properties: {
        },

        methods: {
        }
    }, YSTimelineElement(offset, duration))

    this.construct(offset, duration)
    this._data.elemtype = "LIVE"

    return this    
end function

'---------------------------------------------------------------------------------------------------------------------------------

'* The YSTimelineAdvertElement class is a derived class type which represents
'* a single period of time within a YSTimeline instance which contains
'* advertisement content (a single advert).
'*
'* @class YSTimelineAdvertElement
'* @extends YSTimelineElement
'* @param   Double      offset      The time offset of this element (in seconds)
'* @param   Double      duration    The length of this element (in seconds)
'* @param {YSAdvert} ad The advert definition relating to this time period
'* @constructor
function YSTimelineAdvertElement(offset as Double, duration as Double, ad as Dynamic) as Object
    this = MakeSubClass("YSTimelineAdvertElement", {
        properties: {
            '* Encapsulation of the Adverts (using a YSAdBreak instance) for
            '* the content contained within this element.
            '* 
            '* @property    adbrk
            '* @type        YSAdBreak
            '* @get         GetAdverts
            adbrk: {
                "GetAdverts": function() as Dynamic : return m._data.adbrk : end function
            }
        },

        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":      ys_ystlae_destroy
        }
    }, YSTimelineElement(offset, duration))

    this.construct(offset, duration)
    this._data.elemtype = "ADVERT"
    this._data.adbrk  = ad

    return this
end function

'* The YSTimeline class is a class type which represents
'* a playback timeline containing VOD content, Adverts and Live content.
'*
'* @class YSTimeline
'* @constructor
function YSTimeline() as Object
    this = MakeClass("YSTimeline", {
        properties: {
            '* Array of TimeLine elements which make up this playback timeline.
            '* By looking at the nature (type) of the elements contained, the
            '* nature/type of content fragment can be determined (VOD/LIVE/ADVERT)
            '* 
            '* @property    elements
            '* @type        roArray of YSTimelineElement
            '* @get         GetAllElements
            elements: {
                "GetAllElements": function() as Dynamic : return m._data.elements : end function
            },

            '* When a timeline is being modified dynamically (as part of a LIVE or VLIVE
            '* stream), the <code>modified</code> property indicates that there is new
            '* unprocessed information contained within the timeline since the last time
            '* the property was checked. Reading the property will reset the modified flag
            '* until further modifications are detected.
            '* 
            '* @property    modified
            '* @type        roBoolean
            '* @get         GetModified
            modified: {
                "GetModified": function() as Dynamic : return m._data.modified : end function
            },
            
            '* When playing back a "Live Pause" capable session, this property will 
            '* represent the time offset (in seconds) that the timeline starts relative to 
            '* the start of stream playback.
            '* 
            '* @property startoffset
            '* @type roDouble
            '* @get GetStartOffset
            '* @protected
            startoffset: {
                "GetStartOffset": function() as Dynamic : return m._data.startoffset : end function
            }
        },

        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":                  ys_ystl_destroy,

            '* Add a new timeline element to this timeline instance.
            '* 
            '* @method AppendElement
            '* @param {YSTimelineElement} element Element to be appended
            "AppendElement":            ys_ystl_appendelement,

            '* Clear this timeline instance, removing all timeline elements.
            '* 
            '* @method clear
            "Clear":                    ys_ystl_clear,

            '* Obtain the timeline element which encapsulates the specified playback
            '* offset.
            '* 
            '* @method GetElementAtTime
            '* @param {roDouble} offset Playback offset in seconds
            '* @return {YSTimelineElement|null} Timeline element or null
            "GetElementAtTime":         ys_ystl_elementattime,

            '* Obtain the timeline element which begins soonest following the specified playback
            '* offset.
            '* 
            '* @method GetNextElementForTime
            '* @param {roDouble} offset Playback offset in seconds
            '* @return {YSTimelineElement|null} Timeline element or null
            "GetNextElementForTime":    ys_ystl_nextelement,

            '* <p>Determine whether changes have been made to this playback timeline
            '* since the last call was made to the <code>isModified()</code> method.</p>
            '* 
            '* <p>Invoking this method will also reset the modification flag so that
            '* subsequent calls will return <code>false</code> until such time as further
            '* modification(s) have been made.</p>
            '* 
            '* @method IsModified
            '* @return {Boolean}
            "IsModified":               ys_ystl_ismodified,
            
            '* <p>Obtain the total duration of all elements contained in the timeline</p>
            '* 
            '* @method GetTotalDuration
            '* @return {Double} Total duration of all timeline elements in the timeline
            "GetTotalDuration":         ys_ystl_gettotalduration,

            ' Private Method
            "AdjustContent":            ys_ystl_adjustcontent,
            
            ' Private Method
            "UpdateOffset":             ys_ystl_updateoffset
        }
    })

    ' Setup and initialise members
    this._data.elements = []
    this._data.modified = false
    this._data.startoffset = 0

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' construct() for YSTimelineElement and derived classes
sub ys_yste_construct(offset as Double, duration as Double)
    ' Setup and initialise members
    m._data.elemtype = "INVALID"
    m._data.offset   = offset
    m._data.duration = duration      
end sub

' YSTimelineElement::Destroy()
sub ys_yste_destroy()
end sub

' YSTimelineAdvertElement::Destroy()
sub ys_ystlae_destroy()
    m.super_Destroy()
    m._data.adbrk = invalid
end sub

' YSTimeline::Destroy()
sub ys_ystl_destroy()
    while (m._data.elements.Count() > 0)
        ele = m._data.elements.Pop()
        ele.Destroy()
    end while

    m._data.elements = invalid
end sub

' AppendElement()
sub ys_ystl_appendelement(element as Dynamic)
    m._data.elements.Push(element)
    m._data.modified = true
end sub
    
' Clear()    
sub ys_ystl_clear()
    m._data.elements.Clear()
    m._data.modified = true
end sub
    
' GetElementAtTime()
function ys_ystl_elementattime(offset as Double) as Object
    for each el in m.GetAllElements()
        if ((offset >= el.GetOffset()) and (offset < (el.GetOffset() + el.GetDuration()))) then
            return el
        end if
    end for
        
    return invalid
end function
    
' GetNextElementForTime()
function ys_ystl_nextelement(offset as Double) as Object
    for each el in m.GetAllElements()
        if el.GetOffset() > offset then
            return el
        end if
    end for
    
    return invalid
end function

' GetTotalDuration()
function ys_ystl_gettotalduration() as Double
    td = 0
    for each el in m.GetAllElements()
        td = td + el.GetDuration()
    end for
    
    return td
end function

' IsModified()    
function ys_ystl_ismodified() as Boolean
    rv = m.GetModified()
    m._data.modified = false
    
    return rv
end function
    
' UpdateOffset()    
sub ys_ystl_updateoffset(newoffset as Double)
    m._data.startoffset = newoffset

    while (m._data.elements.Count() > 0)
ystl_next:     
        ele = m._data.elements[0]
        if (ele.GetOffset() >= newoffset) then
            ' Not expired
            exit while
        end if

        if ((ele.GetOffset() + ele.GetDuration()) <= newoffset) then
            ' Expire completely
            m._data.elements.Delete(0)
            goto ystl_next
        else
            ' Expire partially
            delta = newoffset - ele.GetOffset()
            ele._data.duration = ele._data.duration - delta
            ele._data.offset = newoffset

            ' Adjust advert content if required
            if (ele._CLASSNAME = "YSTimelineAdvertElement") then
                YO_DEBUG("Validating advert element")

                brk = ele.GetAdverts() ' YSAdBreak

                if (ele.GetDuration() < brk.GetDuration()) then
                    YO_DEBUG("Pruning is required")

                    ads = brk.GetAdverts()
                    newdur = 0
                    
                    if ((ads <> invalid) and (ads.Count() > 0)) then
                        YO_DEBUG("Validating {0} adverts", ads.Count())
                        
                        idx = ads.Count() - 1
                        
                        while (idx >= 0)
                            if (newdur >= ele.GetDuration()) then
                                ' We have enough now - remove all others
                                print "Winding up. Removing from index: "; idx
                                while (idx >= 0) 
                                    ads.shift()
                                    idx = idx -1
                                end while
                            else if (ads[idx].GetDuration() <= (ele.GetDuration() - newdur)) then
                                ' Advert fits in break - skip to next one
                                print "Preserving index: "; idx
                                newdur = newdur + ads[idx].GetDuration()
                                idx = idx - 1
                            else
                                ' Now we are truncating
                                remain = (ele.GetDuration() - newdur)
                                print "Truncating index: "; idx; " to duration: "; remain
                                ads[idx]._data.duration = remain
                                newdur = newdur + remain

                                ' And advance to the next
                                idx = idx - 1
                            end if
                        end while
                    end if
                else
                    print "Prune not required"
                end if
            end if

            print "New duration: "; ele.GetDuration()
            exit while
        end if
    end while
end sub
    
' AdjustContent()
sub ys_ystl_adjustcontent(duration as Double)    
    eles = m.GetAllElements()

    oldlen = 0.0    ' Old timeline length before adjusting
    newlen = 0.0    ' New length of timeline after adjusting
    i = 0
    offset = m.GetStartOffset() ' Offset of the next element
    duration = duration + m.GetStartOffset()
    
    neweles = []

    if (eles <> invalid) then            
        YO_DEBUG("Adjusting Content for length {0}", eles.Count())
        
        while (i < eles.Count())
            ele = eles[i]
            oldlen = oldlen + ele.GetDuration()
            
            if (ele.GetType() = "ADVERT") then
                ' For an advert section, insert a vod prior to the 
                ' section to pad the timeline - as long as its not the first element
                
                'print "Found advert at "; ele.GetOffset(); " with duration "; ele.GetDuration()
                
                if (ele.GetOffset() > m.GetStartOffset()) then
                    ' This advert occurs after the start of the timeline, so we need
                    ' to insert a VOD element before it in order to pad things out
                    newlen = newlen + (ele.GetOffset() - offset)
                    newlen = newlen + ele.GetDuration()
                    
                    YO_DEBUG("Inserting vod. New length: {0}", newlen)
                    
                    neweles.Push(YSTimelineVODElement(offset, ele.GetOffset() - offset))
                else
                    YO_DEBUG("Skipping initial advert")
                end if
        
                neweles.Push(ele)
                offset = ele.GetOffset() + ele.GetDuration()
                i = i + 1
            else
                YO_DEBUG("Removing old VOD element. Old length: {0}", oldlen)

                m._data.elements.Delete(i)
            end if
        end while
    end if
        
    m._data.elements = neweles
    
    if (duration > offset) and (abs(duration - offset) > 1) then
        newlen = newlen + (duration - offset)
        YO_DEBUG("Appending final VOD portion for length: {0}", newlen)

        m.appendElement(YSTimelineVODElement(offset, duration - offset))
    end if
    
    if (newlen <> oldlen) then
        if (m._data.elements.Count() > 0) then
            last = m._data.elements[m._data.elements.Count() - 1]
            YO_DEBUG("Range: {0} to {1} with length: {2}", m._data.elements[0].GetOffset(), (last.GetOffset() + last.GetDuration()), newlen)
        end if
        
        m._data.modified = true
    end if
end sub
