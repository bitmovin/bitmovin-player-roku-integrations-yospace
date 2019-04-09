'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* Extracts tracking events from the given XML fragment
'*
'* @class TrackingEvents
'* @constructor
'* @param {roXMLElement} root The root node which contains <TrackingEvents>
'* @param {VASTAd} ad The Ad instance holding these tracking events
'*
function TrackingEvents(root as dynamic, ad as dynamic) as object
    ' Class definition
    this = MakeClass("TrackingEvents", {
        properties: {
            '* Associative array containing all the tracking events, keyed by the event type name. 
            '* Each key within the object refers to an array of tracking objects.
            '* 
            '* @property    events
            '* @type        roAssociativeArray
            '* @get         GetEvents
            events: {
                "GetEvents": function() as Dynamic : return m._data.events : end function
            },
            
            '* Reference to the VASTAd class which encapsulates these
            '* tracking events
            '*
            '* @property    ad
            '* @type        VASTAd
            '* @get         GetAd
            ad: {
                "GetAd": function() as Dynamic : return m._data.ad : end function
            },

            '* Array containing all of the calls which have been made but which have been
            '* suppressed (because VPAID was active, for example)
            '*
            '* @property    suppressed_calls
            '* @type        roArray
            '* @get         GetSuppressedCalls
            suppressed_calls: {
                "GetSuppressedCalls": function() as Dynamic : return m._data.suppressed_calls : end function
            },

            '* Flag to allow suppressing of external tracking calls. When set to
            '* true then the calls will be added to an array of suppressed calls
            '* instead (for later retrieval)
            '*
            '* @property    suppressed
            '* @type        roBoolean
            '* @get         IsSuppressed
            '* @set         SetSuppressed
            suppressed: {
                "IsSuppressed": function() as Dynamic : return m._data.suppressed : end function,
                "SetSuppressed": sub(data) : m._data.suppressed = data : end sub
            }
        },
        methods: {
            '* Adds a click tracking URI, since those are special case (i.e. Not
            '* contained within a TrackingEvents tag).
            '*
            '* @method AddClickTracking
            '* @param {String} url Tracking URL for click handling
            "AddClickTracking": ys_trk_addclicktracking,
            
            '* Adds a tracking URI
            '*
            '* @method AddTracking
            '* @param String event ID of event for this tracking URI
            '* @param String url Tracking URL for click handling
            "AddTracking": ys_trk_addtracking,
            
            '* Notifies all URLs associated with the given event type.
            ' *
            '* @method Track
            '* @param {String} ev Event type to fire
            '* @param {Object} macros Macros to replace in the tracking URLs
            '* @param {Dynamic} asset Name of asset being played as a string (optional - or invalid)
            '* @param {Dynamic} brkdur Length of current break as timecode string (optional - or invalid)
            "Track": ys_trk_track,
            
            '* Notifies all URLs associated with the given event type.
            ' *
            '* @method ProgressTrack
            '* @param {Object} macros Macros to replace in the tracking URLs
            '* @param {Double} duration Length of advert
            '* @param {Double} position Current position in advert
            "ProgressTrack": ys_trk_progresstrack,
            
            '* Returns all events whose type matches one of the supplied types.
            '*
            '* @method GetEventsOfType
            '* @param {roArray} evts An array of event types to look for (as Strings)
            '* @return {roArray} An array of objects where each refers to a single
            '* event whose type is contained in the supplied array. Each object has
            '* an "event" property containing the event name, a "url" property, and in the
            '* case of progress events an "offset" property
            "GetEventsOfType": ys_trk_getevents,

            '*
            '* Called to advise the tracking module that it should begin suppressing external
            '* analytics calls. A value of true indicates suppressed mode, 
            '* and has no return value. A value of false indicates that
            '* suppression should be ended, and returns a list of suppressed calls thus far.
            '* 
            '* @method SuppressAnalytics
            '* @param {roBoolean} state Whether to suppress
            '* @return {roArray} Array of suppressed calls (or invalid)
            "SuppressAnalytics": ys_trk_suppress,
            
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":         ys_trk_destroy
        }
    })

    ' Setup and initialise members
    this._data.ad               = ad
    this._data.events           = {}
    this._data.suppressed_calls = []
    this._data.suppressed       = false
    this._data.USE_RAF          = false

    ' If there's no source XML, then don't parse anything
    if root = invalid then
        return this
    end if
    
    nsPrefix = ""
    tagPos = Instr(1, root.GetName(), "TrackingEvents")

    YO_DEBUG("Initial Tracking Tag Position: {0}", tagPos)

    ' Check if the root node is "TrackingEvents"
    if tagPos = 0 then
        te = root.GetNamedElements("TrackingEvents")

        if te.Count() = 0 then
            YO_WARN("Cannot identify TrackingEvents tag")
            return this
        else
            top = te[0]
            tagPos = Instr(1, top.GetName(), "TrackingEvents")
            
            YO_DEBUG("Final Tracking Tag Position: {0}", tagPos)
        end if
    else
        top = root
    end if
    
    if (tagPos > 1) then
        nsPrefix = left(top.GetName(), tagPos - 1)
    end if

    YO_DEBUG("Namespace prefix for tracking: {0}", nsPrefix)

    ' Try and obtain the Tracking elements
    tracks = top.GetNamedElements(nsPrefix + "Tracking")
    if tracks.Count() > 0 then
        for each i in tracks
            if i.HasAttribute("event") = false then
                ' Ignore any tags which dont have an "event" attribute
                goto nextitem
            end if
            
            e = i.GetAttributes().event
            offset = invalid
            if e = "progress" then
                ' For progress-style events, the offset is
                ' appended to the event name to make them uniquely
                ' distinguishable
                if i.HasAttribute("offset") then
                    e = e + "-" + i.GetAttributes().offset
                else
                    e = e + "-badoffset"
                end if
            end if
            
            ev = {
                "url":      i.GetText(),
                "offset":   offset,
                "event":    e,
                "expired":  false
            }
            
            YO_TRACE("Adding tracking for event: {0}", e)
            
            ' Create an empty array for this event type if needed
            if this._data.events.DoesExist(e) = false then
                this._data.events[e] = []
            end if
            
            ' Add new event to the array for the relevant type
            this._data.events[e].Push(ev)
nextitem:
        end for
    else
        YO_WARN("Could not find tracking inside tag: {0} with sub-tag: {1}", top.GetName(), nsPrefix + "Tracking")
    end if
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_trk_destroy()
    for each j in m._data.events
        m._data.events[j] = invalid
    end for
    
    m._data.events = invalid
end sub

' AddTracking
sub ys_trk_addtracking(event as String, url as String)
    ev = {
        "url":      url,
        "event":    event,
        "offset":   invalid,
        "expired":  false    
    }
    
    if m._data.events.DoesExist(event) then
        m._data.events[event].Push(ev)
    else
        m._data.events[event] = [ev]
    end if
end sub

' AddClickTracking
sub ys_trk_addclicktracking(url as String)
    m.AddTracking("click", url)
end sub

' @function GetEventsOfType
' @param {roArray} events Array of event types (as string) that you wish returned
function ys_trk_getevents(events as object) as object
    ret = []
    includeProgress = false
    
    if events.Count() = 0 or m._data.events.Count() = 0 then
        YO_DEBUG("tge: empty")
        return ret
    end if
    
    for each i in events
        if i = "progress" then
            for each j in m._data.events.Keys()
                ' Check for events starting with "progress-"
                if left(j, 9) = "progress-" then
                    ret.Push(m._data.events[j])
                end if
            end for        
        else if m._data.events.DoesExist(i) then
            ret.Push(m._data.events[i])
        end if
    end for
    
    return ret
end function

' Track
sub ys_trk_track(event as String, macros as dynamic, asset = invalid as Dynamic, brkdur = invalid as Dynamic)
    if (m.GetAd() <> invalid) then
        YO_TRACE("Tracking {0} in {1}", event, m.GetAd().GetId())
    else
        YO_TRACE("Tracking {0} in Unknown Ad", event)
    end if

    evs = []
    
    if (m._data.events.Count() = 0) or (m._data.events.DoesExist(event) = false) then
        YO_DEBUG("No specific event to be tracked!")
    else
        evs.Append(m._data.events[event])
    end if
    
    ' Build a local copy of all macros
    mac = {}
    if (macros <> invalid) then
        for each mc in macros
            mac[mc] = macros[mc].EncodeUriComponent()
        end for
    end if
    
    ' Now handle a creative view for any creative within an
    ' ad block which will generate an impression
    if event = "creativeView" then
        if (m.GetAd() <> invalid) and (m.GetAd().HasSentImpression() = false) then
            m.GetAd().ImpressionSent(true)
            
            ' Add impression tracking URLs to the list
            for each i in m.GetAd().GetImpressions()
                evs.Push({"url": i, "expired": false, "event": "impression"})
            end for
        else if (m.GetAd() = invalid) then
            YO_WARN(" *** No advert for firing impression")
        else
            YO_DEBUG(" *** Impression already sent")
        end if
    end if
    
    tracking = [] ' RAF Modification V2 01/2018
    for each i in evs
        theUrl = i["url"]
        
        ' Handle the standard CACHEBUSTING macro
        rand = ""
        for j = 1 to 10
            rand = rand + Chr(48 + Rnd(10) - 1)
        end for
        mac["CACHEBUSTING"] = rand
        
        ' Now replace all macro tags in the URL with the appropriate
        ' values taken from the macros array
        for each mc in mac
            key = "[" + mc + "]"
            done = false
            while done = false
                p = Instr(1, theUrl, key)
                if p = 0 then
                    done = true
                else
                    newUrl = left(theUrl, p - 1) + mac[mc] + mid(theUrl, p + Len(key))
                    theUrl = newUrl
                end if
            end while
        end for
        
        if (i["expired"] = false) then
            ' Finally fire the resulting URL
            YO_TRACE("Firing tracking of: {0}", theUrl)
            
            i["expired"] = true

            if (m._data.suppressed) then
                sup_call = {
                    "event": i["event"],
                    "url": theUrl
                }
                m._data.suppressed_calls.Push(sup_call)
            else
                if (m._data.USE_RAF = true) then
                    tracking.push({url: theUrl, event:i["event"], triggered:false}) ' RAF Modification V2 01/2018
                else
                    bridge = GetGlobalAA().taskman
                    bridge.AddFetchJob(theUrl, yo_Callback(ys_trk_fired, m), yo_Callback(ys_trk_notfired, m))
                end if
            end if
        end if
        'm.Fire(theUrl)
    end for

    if 0 < tracking.count() then   ' RAF Modification V2 01/2018
        trackObj = {tracking: tracking, event:event}    ' RAF Modification V2 01/2018
        bridge = GetGlobalAA().taskman  ' RAF Modification V2 01/2018
        bridge.AddFetchJob(trackObj, yo_Callback(ys_trk_fired, m), yo_Callback(ys_trk_notfired, m))    ' RAF Modification V2 01/2018
    end if  ' RAF Modification V2 01/2018
end sub

' ProgressTrack
sub ys_trk_progresstrack(macros as dynamic, duration as Double, position as Double)
    evs = []
    ofspos = duration
        
    if (m._data.events.Count() > 0) then
        for each i in m._data.events
            ev = m._data.events[i]
            for each j in ev
                if left(j.event, 9) = "progress-" then
                    tgt = right(j.event, len(j.event) - 9)
                    if tgt.Instr("%") >= 0 then
                        ' Percentage offset
                        offset = left(tgt, len(tgt) - 1)
                        ofspos = (val(offset) * duration) * 100
                    else
                        ofspos = yo_TimeCodeFromString(tgt)
                    end if
                    
                    if (position > ofspos) then
                        evs.push(j)
                    end if
                end if
            end for
        end for        
    end if

    if (evs.Count() > 0) then
        ' Build a local copy of all macros
        mac = {}
        if (macros <> invalid) then
            for each mc in macros
                mac[mc] = macros[mc].EncodeUriComponent()
            end for
        end if

        ' tracking = [] ' RAF Jan. 2018
        for each i in evs
            theUrl = i["url"]
            
            ' Handle the standard CACHEBUSTING macro
            rand = ""
            for j = 1 to 10
                rand = rand + Chr(48 + Rnd(10) - 1)
            end for
            mac["CACHEBUSTING"] = rand
            
            ' Now replace all macro tags in the URL with the appropriate
            ' values taken from the macros array
            for each mc in mac
                key = "[" + mc + "]"
                done = false
                while done = false
                    p = Instr(1, theUrl, key)
                    if p = 0 then
                        done = true
                    else
                        newUrl = left(theUrl, p - 1) + mac[mc] + mid(theUrl, p + Len(key))
                        theUrl = newUrl
                    end if
                end while
            end for
            
            if (i["expired"] = false) then
                ' Finally fire the resulting URL
                YO_TRACE("Firing tracking of: {0}", theUrl)
                
                i["expired"] = true
                
                if (m._data.suppressed = true) then
                    sup_call = {
                        "event": i["event"],
                        "url": theUrl
                    }
                    m._data.suppressed_calls.Push(sup_call)
                else
                    if (m._data.USE_RAF = true) then
                        trackObj = {tracking: {url: theUrl, event:i["event"], triggered:false}, event: i["event"]}  ' RAF Modification V2 01/2018
                        bridge = GetGlobalAA().taskman  ' RAF Modification V2 01/2018
                        bridge.AddFetchJob(trackObj, yo_Callback(ys_trk_fired, m), yo_Callback(ys_trk_notfired, m))    ' RAF Modification V2 01/2018
                    else
                        bridge = GetGlobalAA().taskman
                        bridge.AddFetchJob(theUrl, yo_Callback(ys_trk_fired, m), yo_Callback(ys_trk_notfired, m))
                    end if
                end if
            end if
        end for
    end if
        
end sub

function ys_trk_suppress(state as Boolean) as Dynamic
    if state = true then
        if (m._data.suppressed = false) then
            m._data.suppressed_calls = []
            m._data.suppressed = true
        end if
    else
        m._data.suppressed = false
    endif
    
    return m._data.suppressed_calls
end function

sub ys_trk_fired(dummy as Dynamic)
    YO_DEBUG("Fire complete")
end sub

sub ys_trk_notfired(statcode as Dynamic)
    YO_WARN("Fire not complete: {0}", statcode)
end sub