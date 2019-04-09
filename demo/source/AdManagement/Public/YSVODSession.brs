'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* The YSVoDSession class is the derived class type for
'* a non-linear start-over or VoD Session type. The main identifying feature 
'* of this type of session is that the initial load is of a VMAP XML document
'* with subsequent Analytics calls (where appropriate) made to a VMAP
'* producing end-point.
'*
'* @class YSVoDSession
'* @extends YSSession
'* @constructor
'* @param YSSessionManager  mgr     The SessionManager instance
'* @param {String} source The initial URL to be fetched. This will be VMAP.
'* @param {Function} complete Callback function to call once the session is ready for use
'* @param {Boolean} isvlive Whether this is an NLSO stream or not
function YSVODSession(mgr as Dynamic, source as String, cb = invalid as Dynamic, isvlive = false as Boolean) as Object
    ' Hack to force parent to be created first
    'YSSession(invalid, invalid)

    ' Class definition 
    this = MakeSubClass("YSVODSession", {
        properties: {
            '* Loader class used for parsing VMAP
            '* 
            '* @property    loader
            '* @type        VMAPParser
            '* @get         GetLoader
            loader: {
                "GetLoader": function() as Dynamic : return m._data.loader : end function
            }
        },
    
        methods: {
            '* This is a helper method which is used to initiate the loading of the initial
            '* VMAP response from the server. Only once this has been done can the session
            '* be truly created.
            '* 
            '* @method grabVMAP
            "GrabVMAP":             ys_ysvs_grabvmap,
            
            '* This helper is called once the VMAP response has been loaded and parsed
            '* and continues the initialization process by starting the session "proper".
            '* 
            '* @event   onVMAPSuccess
            '* @param   roArray of AdBreak  breaks  Array of advert breaks obtained from the VMAP
            "OnVMAPSuccess":        ys_ysvs_onvmapsuccess,

            '* This helper is called if the VMAP response failes to load/parse
            '* 
            '* @event   OnVMAPFailure
            '* @param   roString    Reason for failure
            "OnVMAPFailure":        ys_ysvs_onvmapfailure,

            '* <p>Helper function used for rebuilding the playback timeline structure following an analytics
            '* response. This allows new elements to be added when new adverts are received.</p>
            '* 
            '* @method  RebuildTimeline
            '* @param   roArray of AdBreak  breaks  Array of advert breaks
            "RebuildTimeline":      ys_ysvs_rebuildtimeline,

            "ReplaceOnTimeline":    ys_ysvs_replaceontimeline,

            '* <p>Called by the SessionManager when it receives a response to an analytics request.
            '* This causes the response to be parsed and handled accordingly.</p>
            '* 
            '* @method  ProcessAnalytics
            '* @param   {Document}  response    Analytics response (in VMAP format) which should be parsed
            '*                                  by the session in order to determine upcoming adverts
            '* @param   {Function}  complete    Function which should be called once the parsing has
            '*                                  been completed. This function has 2 properties. The first is a Boolean indicating the 
            '*                                  success of parsing, and the 2nd is either an array of adverts if successful, or the reason
            '*                                  for the failure if unsuccessful.
            "ProcessAnalytics":     ys_ysvs_processanalytics,

            '* <p>Helper function called when the currently displayed advert is presented for "too long". This
            '* may occur if ID3 metadata is not correctly supplied (or is missed from the playback).</p>
            '* 
            '* @event   OnAdTimeout
            '* @param   roString    miid    Media Item ID of the relevant advert
            "OnAdTimeout":          ys_ysvs_onadtimeout,

            '* <p>Called by the SessionManager when it is handed ID3 metadata from the video player.
            '* This causes the appropriate tracking calls to be made to the advertising server.</p>
            '* 
            '* <p>The format of the metadata object should be a decoded ID3 tag. An example description
            '* is shown below:</p>
            '* 
            '* 
            '* <pre class="code prettyprint">
            '*    // var sampleTag = {
            '*    //      'YMID': '117608140',
            '*    //      'YTYP': 'S',
            '*    //      'YSEQ': '1:3',
            '*    //      'YDUR': '0.0',
            '*    //      'YCSP': '117608140'
            '*    // };
            '* </pre>
            '* @method  HandleMetadata
            '* @param   roAssociativeArray  data    The object containing the ID3 metadata, having already been
            '*                                      parsed into an Object by the video player
            "HandleMetadata":       ys_ysvs_handlemetadata,

            '* <p>Called by the SessionManager when it is notified by the video player of a change
            '* to the playhead position.</p>
            '* 
            '* <p>ID3 data will be required in order to synchronize the advert data with the playing advert within 
            '* the stream. Because of this case, setting the <code>useID3</code> property will have no effect.</p>
            '* 
            '* @method  UpdatePosition
            '* @param   roDouble    offset      New playback head position (in seconds)
            '* @param   roBoolean   [useID3]    [UNUSED] Whether analytics processing should be made on the basis
            '*                                  of received ID3 metadata (<code>true</code>) or based on playhead position.
            "UpdatePosition":       ys_ysvs_updateposition,

            ' Internal function to begin session init
            "BeginSession":         ys_ysvs_beginsession,

            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method  Destroy
            "Destroy":              ys_ysvs_destroy
        }
    }, YSSession(invalid, invalid))   

    ' Setup and initialise members
    this._data.loader   = invalid
    this._data.isvlive  = isvlive
    
    ' Call the constructor (in the superclass)
    this.construct(mgr, source, cb)
    YO_TRACE("Constructing YSVoDSession")
        
    if (source <> "") then
        ' Start off by reading the VMAP
        this.GrabVMAP()
    end if

    return this    
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub ys_ysvs_destroy()
    m.super_Destroy()

    if (m._data.loader <> invalid) then
        m._data.loader.Destroy()
        m._data.loader = invalid
    end if
end sub

sub ys_ysvs_beginsession(url as String)
    m.super_BeginSession(url)
    m.GrabVMAP()
end sub

' grabVMAP()
sub ys_ysvs_grabvmap()
    m._data.loader = VMAPParser("", yo_Callback("OnVMAPSuccess", m), yo_Callback("OnVMAPFailure", m))
    m._data.loader.Load(m.GetSource().ToString())
end sub
    
' onVMAPSuccess()
sub ys_ysvs_onvmapsuccess(doc as Dynamic)
    breaks = m.GetLoader().GetBreaks()
    m.RebuildTimeline(breaks)

    if (m._data.masterurl = invalid) then
        YO_WARN("VOD - Cannot start session without playback URL")

        if (m._data.oncomplete <> invalid) then
            m._data.oncomplete.invoke({result: YSSessionResult().NOT_INITIALISED, status: YSSessionStatus().MALFORMED_URL, code: invalid})
        end if

        return
    end if

    if (m._data.isvlive) then
        m.LoadPlaylist()
    else
        YO_DEBUG("Standard VOD - Bypassing session initialisation")

        if (Instr(1, m.GetMasterURL().ToString(), "mpd") > 0) then
            m._data.streamtype = "dash"
        end if

        if (m._data.oncomplete <> invalid) then
            m._data.oncomplete.invoke({result: YSSessionResult().INITIALISED, status: 0, code: 0})
        end if
    end if
end sub
    
' onVMAPFailure()
sub ys_ysvs_onvmapfailure(reason as Dynamic)
    if (m._data.oncomplete <> invalid) then
        if (reason = "ism3u8") then
            m._data.oncomplete.invoke({result: YSSessionResult().NO_ANALYTICS, status: YSSessionStatus().NON_YOSPACE_URL, code: invalid})
        else
            m._data.oncomplete.invoke({result: YSSessionResult().NOT_INITIALISED, status: reason, code: YSSessionStatus().CONNECTION_ERROR})
        end if
    end if
end sub

' rebuildTimeline()
sub ys_ysvs_rebuildtimeline(breaks as Dynamic)
    YO_DEBUG("<<<<<<<<<<<<<< PARSE COMPLETE >>>>>>>>>>>>>>>>")
    YO_TRACE("Breaks returned. Length: {0}", breaks.Count())
    
    ext = m.GetLoader().GetExtensions()
    strm = []
    if (ext <> invalid) then
        strm = m.GetLoader().GetExtensions().GetAllOfType("http://www.yospace.com/extension/stream")
    end if

    YO_DEBUG("Finding Stream. Count: ", strm.Count())
    
    ' Start by setting the Master URL based on the 
    ' stream data contained within the response
    if ((strm.Count() > 0) and (m.GetMasterURL() = invalid)) then
        murl = m.GetSource().GetScheme() + "://" + strm[0].GetUrlDomain() + strm[0].GetUrlSuffix()
        m._data.hostnode    = strm[0].GetUrlDomain()
        m._data.masterurl   = YSURL(murl)
        YO_TRACE("URL: {0}", m.MasterPlaylistURL())
    else
        YO_DEBUG("Skipping Stream URL")
    end if
    
    ' Build initial Timeline object
    'this.timeline.clear();
    offset = 0
    for each brk in breaks
        start = yo_TimecodeFromString(brk.GetPosition())
        offset = start
        adBrk = YSAdBreak(brk)
        adBrk.adBreakIdentifier     = brk.id
        adBrk.adBreakDescription    = brk.type
        adBrk._data.start           = offset
        
        if (brk.GetVastAds() <> invalid) then
            ads = brk.GetVastAds().GetAds()
            for each adv in ads
                ad = adv.GetLinear()
                if (ad <> invalid) then
                    treg    = CreateObject("roRegex", "([^_]*)_YO_([\s\S]*)", "i")
                    id = treg.Match(adv.GetID())
                    miid = id[2]
                    newAd = YSAdvert(adv, invalid, adBrk)
                    adBrk.GetAdverts().Push(newAd)
                    offset = offset + ad.GetDuration()
                end if
            end for

            m.ReplaceOnTimeline(YSTimelineAdvertElement(adBrk._data.start, adBrk.GetDuration(), adBrk))
        else
            m.AddEmptyBreak(adBrk)
        end if
    end for
    
    duration = offset
    if ((strm.Count() > 0) and (strm[0].IsValid()) and (len(strm[0].GetDuration()) > 0)) then
        duration = yo_TimecodeFromString(strm[0].GetDuration())
    end if
    
    if duration > 0 then
        YO_DEBUG("Preparing to adjust timeline length to: {0}", duration)
        m.GetTimeline().AdjustContent(duration)
    else
        YO_DEBUG("No timeline duration info at this time")
    end if

    if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("UpdateTimeline"))) then
        m.GetPlayer().UpdateTimeline.invoke(m.GetTimeline())
    end if    
end sub
    
' ReplaceOnTimeline()
sub ys_ysvs_replaceontimeline(elem as Dynamic)
    if (m.GetTimeline() = invalid) then
        return
    end if
    
    YO_DEBUG("Replacing on timeline. Type: {0} start: {1} dur: {2}", elem.GetType(), elem.GetOffset(), elem.GetDuration())
    
    el = m.GetTimeline().GetElementAtTime(elem.GetOffset())
    if (el = invalid) then
        ' We dont have this element yet
        YO_DEBUG("Appending new timeline element")

        m.GetTimeline().AppendElement(elem)
        return
    end if
    
    if ((el.GetOffset() <> elem.GetOffset()) or (el.GetDuration() <> elem.GetDuration()) or (el.GetType() <> elem.GetType())) then
        ' Element has changed position, duration or type
        eles = m.GetTimeline().GetAllElements()
        idx = 0
        for item = 0 to eles.Count()
            if eles[item]._INSTANCEID = el._INSTANCEID then
                idx = item
                exit for
            end if
        end for
        'print "Splicing element at index: "; idx
        m.GetTimeline().GetAllElements()[idx] = elem
        'print "Element replaced in timeline!"
    end if
end sub

' ProcessAnalytics()
sub ys_ysvs_processanalytics(response as Dynamic)
    YO_TRACE("Processing VMAP Analytics Data (VOD)")
    
    m.super_ProcessAnalytics(response)
    
    ' We use null as the analytics have already been received
    m._data.loader = VMAPParser(invalid, yo_Callback("ProcessAnalytics", m), invalid)

    if yo_IsNotNull(response) then
        YO_DEBUG("Got VMAP Response")
        
        doc = CreateObject("roXMLElement")
        success = doc.parse(response)
        if success then
            YO_DEBUG("Parsing VMAP response")

            m.GetLoader().parse(doc)
            m.RebuildTimeline(m.GetLoader().GetBreaks())
            
            YO_DEBUG("Timeline Rebuilt")
        else
            YO_WARN("Response was not valid VMAP")
        end if
    else
        YO_WARN("VMAP Response was null in session")
    end if
end sub

' onAdTimeout()
sub ys_ysvs_onadtimeout(miid as String)
    YO_TRACE(" !!! Advert Timeout flagged for item: {0}", miid)
end sub

' HandleMetadata()
sub ys_ysvs_handlemetadata(data as Dynamic)
    ' ID3 Metadata is not handled in VOD
    m.super_HandleMetadata(data)
end sub

' UpdatePosition()
sub ys_ysvs_updateposition(offset as Double)
    if (m.IsPaused() or (not m.IsPlaying())) then
        YO_WARN("Ignoring position update while not actively playing")
        return
    end if

    ' Check for empty breaks
    if (m._data.missedBreaks.Count() > 0) then
        for each cbrk in m._data.missedbreaks
            if (m._data.lastPosition > cbrk.GetStart()) then
                ' No point checking further
                exit for
            end if

            ' Assume that the last position occurred before this break. Now check if
            ' the current position has surpassed it
            if (offset > cbrk.GetStart()) then
                ' It has, so we've passed a missed break
                YO_DEBUG(" @@ MISSED BREAK @@ Transiting a missed break opportunity")

                ' Fire slot start impression
                brk = cbrk.GetVMAPBreak()
                if (brk <> invalid) and (brk.GetTracking() <> invalid) then
                    brk.GetTracking().Track("breakStart", [])
                    brk.GetTracking().Track("breakEnd", [])
                end if

                exit for
            end if
        end for
    end if

    m.super_UpdatePosition(offset)
    
    if (m.IsInAnAdvert()) then
        ' Reset end of break safety timer
        'print "Advert running for ID: "; m.GetCurrentAdvert().GetMediaID()

        if (not m.IsPaused()) then
            m.StopBreakEndTimer()
            m.StartBreakEndTimer()
        end if

        m.GetCurrentAdvert().IsSuppressed(m.IsSuppressed())
        tracks = m.GetCurrentAdvert().PingWatchdog()

        if ((tracks <> invalid) and (tracks.Count() > 0)) then
            for i = 0 to tracks.Count() - 1
                if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AnalyticsFired"))) then
                    what = tracks[i].track_id
                    tracks[i].Delete("track_id")
                    m.GetPlayer().AnalyticsFired.invoke(what, tracks[i])
                end if
            end for
        end if
    end if

    if (m.GetTimeline() <> invalid) then
        current = m.GetTimeline().GetElementAtTime(offset)
        
        if (current = invalid) then
            YO_DEBUG("No timeline element was found at offset: {0}", offset)
            return
        else
            'print "Current type: "; current.GetType(); " at offset: "; current.GetOffset(); " with Duration: "; current.GetDuration()
        end if

        if (current.GetType() = "ADVERT") then
            ' We are in an advert
            'print "We are in an ad"
        
            ad = current.GetAdverts().GetAdvertForPosition(offset)
            if (ad = invalid) then
                YO_DEBUG("Could not locate current advert!")
                return
            end if
            
            new_miid = ad.GetMediaID()
            miid = ""
            if (m.GetCurrentAdvert() <> invalid) then 
                miid = m.GetCurrentAdvert().GetMediaID()
            end if
            
            if (m.GetCurrentAdvert() <> invalid) and (m.GetCurrentAdvert()._instanceid = ad._instanceid) then
                ' We're in the same ad, so just update tracking
                'print "Check tracking for: "; miid
                'this.currentAdvert.pingWatchdog();
            else
                ' We're in a different ad
                YO_DEBUG("Different ad found")

                if (m.IsInAnAdvert()) then
                    ' Shut down old one first
                    YO_TRACE("Shutting down advert: {0}", miid)

                    if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertEnd"))) then
                        m.GetPlayer().AdvertEnd.invoke(miid)
                    end if
                    
                    m.GetCurrentAdvert().SetActive(false)

                    if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("UpdateTimeline"))) then
                        m.GetPlayer().UpdateTimeline.invoke(m.GetTimeline())
                    end if
                    
                    m._data.currentad = invalid
                else
                    ' This is a new break
                    m.HandleBreakStart(m.GetCurrentBreak())
                end if
                
                ' Now start next one
                YO_DEBUG("Advert starting with ID: {0} and duration: {1}", new_miid, ad.GetDuration())

                m._data.currentad = ad
                m.GetCurrentAdvert().IsSuppressed(m.IsSuppressed())
                m.GetCurrentAdvert().SetActive(true)

                if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertStart"))) then
                    m.GetPlayer().AdvertStart.invoke(new_miid)
                end if
            end if
        else
            ' We should not be in an advert
            'Debugger.print("Not in an advert");
            
            if (m.IsInAnAdvert()) then
                miid = m.GetCurrentAdvert().GetMediaID()

                YO_DEBUG("Shutting down advert: {0}", miid)

                if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertEnd"))) then
                    m.GetPlayer().AdvertEnd.invoke(miid)
                end if
                
                    
                m.GetCurrentAdvert().SetActive(false)

                if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("UpdateTimeline"))) then
                    m.GetPlayer().UpdateTimeline.invoke(m.GetTimeline())
                end if
                
                endedBreak = m.GetCurrentAdvert().GetBreak()
                m._data.currentad = invalid
                
                YO_DEBUG("BREAK ENDS!")
                m.HandleBreakEnd(endedBreak)
            else if (m._data.breakendtimer <> invalid) then
                m.HandleBreakEnd(m.GetCurrentBreak())
            end if
        end if
    end if
end sub
