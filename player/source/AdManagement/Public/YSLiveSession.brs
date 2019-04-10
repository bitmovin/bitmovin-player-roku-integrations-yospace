'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* The YSLiveSession class is the derived class type for
'* a Live type session (playlist only) with VAST-style analytics.
'*
'* @class YSLiveSession
'* @extends YSSession
'* @constructor
'* @param YSSessionManager  mgr     The SessionManager instance
'* @param {String} source The initial URL to be fetched. This will be an M3U8.
'* @param {Function} cb Callback function to call once init is complete
function YSLiveSession(mgr as Dynamic, source as Dynamic, cb = invalid as Dynamic) as Object

    ' Class definition    
    this = MakeSubClass("YSLiveSession", {
        properties: {
            '* The YSAdBreak instance which relates to the current advert break being played.
            '* This will be <code>invalid</code> if we are not currently inside an advert break.
            '* 
            '* @property currentbreak
            '* @type YSAdBreak
            '* @get GetCurrentBreak
            currentbreak: {
                "GetCurrentBreak": function() as Dynamic : return m._data.currentbreak : end function
            },
            
            '* An array containing the YSAdBreak instances which correspond to upcoming
            '* breaks in the live playback.
            '* 
            '* @property currentbreaks
            '* @type roArray of YSAdBreak
            '* @get GetCurrentBreaks
            currentbreaks: {
                "GetCurrentBreaks": function() as Dynamic : return m._data.currentbreaks : end function
            },
            
            ' Internal property used for ignoring early polls
            pollcount: {
                "GetPollCount": function() as Dynamic : return m._data.pollcount : end function,
                "SetPollCount": sub(data) : m._data.pollcount = data : end sub
            },
            
            ' Internal property used for handling metadata received too soon
            deferred: {
                "IsDeferred": function() as Dynamic : return m._data.deferred : end function,
                "SetDeferred": sub(data) : m._data.deferred = data : end sub
            }
        },
    
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":              ys_ysls_destroy,

            ' Internal function to begin session init
            "BeginSession":         ys_ysls_beginsession,

            '* <p>Called by the SessionManager when it receives a response to an analytics request.
            '* This causes the response to be parsed and handled accordingly.</p>
            '* 
            '* @method  ProcessAnalytics
            '* @param   roAssociativeArray  response    Analytics response (in VAST format) which should be parsed
            '*                                          by the session in order to determine upcoming adverts
            "ProcessAnalytics":     ys_ysls_processanalytics,

            '* <p>Helper function called when the currently displayed advert is presented for "too long". This
            '* may occur if ID3 metadata is not correctly supplied (or is missed from the playback).</p>
            '* 
            '* @event   OnAdTimeout
            '* @param   roString    miid    Media Item ID of the relevant advert
            "OnAdTimeout":          ys_ysls_onadtimeout,

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
            "HandleMetadata":       ys_ysls_handlemetadata,

            '* <p>Called by the SessionManager when it is notified by the video player of a change
            '* to the playhead position.</p>
            '* 
            '* <p>ID3 data will be required in order to synchronize the advert data with the playing advert within 
            '* the stream. Because of this case, setting the <code>useID3</code> property will have no effect.</p>
            '* 
            '* @method  UpdatePosition
            '* @param   roFloat     offset      New playback head position (in seconds)
            '* @param   roBoolean   [useID3]    [UNUSED] Whether analytics processing should be made on the basis
            '*                                  of received ID3 metadata (<code>true</code>) or based on playhead position.
            "UpdatePosition":       ys_ysls_updateposition,

            '* <p>Helper function which is used once the ad break has ended. This can either be fired directly,
            '* or will automatically be fired upon the expiration of the break end timer (if running).</p>
            '* 
            '* @method  HandleBreakEnd
            "HandleBreakEnd":       ys_ysls_handlebreakend,

            '* <p>Helper function to determine if the advert "bucket" is empty.</p>
            '* 
            '* @method  HaveMoreAds
            '* @return Boolean true if there are more ads, otherwise false
            "HaveMoreAds":          ys_ysls_havemoreads,
            
            "ProcessCachedMetadata": ys_ysls_processcachedmeta
        }
    }, YSSession(invalid, invalid))

    ' Call the constructor (in the superclass)
    this.construct(mgr, source, cb)
    YO_TRACE("Constructing YSLiveSession")
        
    ' Setup and initialise members
    this._data.pollcount    = 0
    this._data.deferred     = false
    this._data.lastTag      = {}
    this._data.currentbreak = invalid
    this._data.deferredtags = []
    this._data.currentbreaks = []
    this.GetTimeline().Clear()
    
    ' Start off the session
    if (source <> "") then
        this._data.masterurl = YSURL(this.GetSource().ToString())
        this.LoadPlaylist()
    end if

    return this    
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------
    
' Destroy()
sub ys_ysls_destroy()
    m.super_Destroy()
    
    m._data.currentbreak = invalid
    if (m._data.currentbreaks <> invalid) then
        while (m._data.currentbreaks.Count() > 0)
            brk = m._data.currentbreaks.Pop()
            brk.Destroy()
        end while
        
        m._data.currentbreaks = invalid
    end if
    
    if (m._data.loader <> invalid) then
        m._data.loader.Destroy()
        m._data.loader = invalid
    end if
end sub

sub ys_ysls_beginsession(url as String)
    m.super_BeginSession(url)

    m._data.masterurl = YSURL(m.GetSource().ToString())
    m.LoadPlaylist()
end sub

' ProcessAnalytics
sub ys_ysls_processanalytics(response as Dynamic)
    YO_DEBUG("Processing VAST Analytics Data")

    if (m.GetPollCount() < 2) then
        m.SetPollCount(m.GetPollCount() + 1)
    end if
    
    m.super_ProcessAnalytics(response)

    isenhanced = false
    if (response.Instr("<vmap:VMAP") <> -1) then
        YO_DEBUG(" +=+ USING ENHANCED ANALYTICS +=+ ")
        isenhanced = true
    end if

    if (isenhanced = true) then
        m._data.loader = VMAPParser(invalid, invalid, invalid)
        m._data.loader.OnLoadSuccess(response)
        brks = m._data.loader.GetBreaks()
        if (brks.Count() > 0) then
            for each brk in brks
                start = yo_TimecodeFromString(brk.GetPosition())
                offset = start
                adBrk = YSAdBreak(brk)
                adBrk._data.identifier = brk.GetID()
                adBrk._data.desc = brk.GetType()
                adBrk._data.start = offset

                if (brk.GetVastAds() <> invalid) then
                    ads = brk.GetVastAds().GetAds()
                    for each j in ads
                        ad = j.GetLinear()
                        if (ad <> invalid) then
                            treg = CreateObject("roRegex", "([^_]*)_YO_([\s\S]*)", "i")
                            id = treg.Match(ad.GetAd().GetId())
                            miid = id[2]
                            newAd = YSAdvert(j, invalid, adBrk)
                            adBrk._data.adverts.Push(newAd)
                            offset = offset + ad.GetDuration()

                            if (not m.GetAdBreaks().DoesExist(miid)) then
                                m.GetAdBreaks()[miid] = []
                            end if 
                
                            m.GetAdBreaks()[miid].Unshift(newAd)
                        end if
                    end for

                    m._data.currentbreaks.Push(adBrk)
                else
                    YO_DEBUG(" @@ MISSED BREAK @@ Transiting a missed break opportunity")

                    ' Fire slot start impression
                    if (brk.GetTracking() <> invalid) then
                        brk.GetTracking().Track("breakStart", [])
                        brk.GetTracking().Track("breakEnd", [])
                    end if
                end if
            end for
        end if

        if (m._data.deferred) then
            m.ProcessCachedMetadata()
        end if

    else
        m._data.loader = VASTParser(invalid, invalid, invalid)
        m._data.loader.Parse(response)
        ads = m._data.loader.GetAds()
        if (ads = invalid or ads.Count() = 0) then
            return
        end if 

        breaks = ads.GetAds()

        YO_TRACE("New breaks received: {0}", breaks.Count())

        if (breaks.Count() > 0) then
            newbreak = YSAdBreak(invalid)
            
            for i = 0 to breaks.Count() - 1 
                treg    = CreateObject("roRegex", "([^_]*)_YO_([\s\S]*)", "i")
                id = treg.Match(breaks[i].GetID())
                miid = id[2]
                
                YO_TRACE("Adding to bucket, MIID: {0}", miid)

                if (not m.GetAdBreaks().DoesExist(miid)) then
                    m.GetAdBreaks()[miid] = []
                end if 
                
                newAd = YSAdvert(breaks[i], invalid, newbreak)
                YO_TRACE("Advert duration: {0}", newAd.GetDuration())
                
                newbreak._data.adverts.push(newAd)
                m.GetAdBreaks()[miid].Unshift(newAd)
                
                bkt = 0
                for each j in m.GetAdBreaks() 
                    bkt = bkt + m.GetAdBreaks()[j].Count()
                end for
                
                YO_DEBUG("New bucket size: {0}", bkt)
            end for
            
            m._data.currentbreaks.push(newbreak)
        end if

        if (m._data.deferred) then
            m.ProcessCachedMetadata()
        end if
    end if

    if (m._data.deferredtags.Count() > 0) then
        for each tag in m._data.deferredtags
            m.HandleMetadata(tag)
        end for
        
        m._data.deferredtags = []
    end if
end sub

sub ys_ysls_processcachedmeta()
    if (m.IsDeferred()) then
        YO_TRACE("Received deferred VAST response")
        
        ' Reset the last seen tag to prevent duplicate checking
        m._data.lastTag      = {}

        m.SetDeferred(false)
    end if
    
    while (m._data.deferredtags.Count() > 0)
        newmeta = m._data.deferredtags.Shift()
        dta = newmeta.metadata
        m.HandleMetadata(dta)

        if (dta.DoesExist("YMID")) then
            typ = dta.YTYP    ' One of "S", "M" or "E"
            seq = dta.YSEQ.Split(":")
            seqA = seq[0]

            if ((typ = "S") and (seqA = "1")) then
                ' First tag of an advert
                m.GetCurrentAdvert()._data.startpos = newmeta.timestamp
            end if
        end if
    end while
end sub

' OnAdTimeout
sub ys_ysls_onadtimeout(miid as String)
    YO_TRACE("!!! Advert Timeout flagged for item: {0}", miid)
end sub

' HandleMetadata
sub ys_ysls_handlemetadata(data as Dynamic)
    shouldActivate = false

    if (not m.IsPlaying()) then
        YO_WARN("Dropping metadata reported before playback has started")
        return
    end if

    if (data <> invalid) then
        YO_DEBUG("Live metadata is non-null")

        isDuplicate = true
        for each qq in data
            if (m._data.lastTag[qq] = invalid or m._data.lastTag[qq] <> data[qq]) then
                isDuplicate = false
            end if

            m._data.lastTag[qq] = data[qq]
        end for
    else
        YO_WARN("Live metadata is null")
        return
    end if
    
    if (isDuplicate) then
        YO_WARN("Live metadata appears to be a duplicate. Ignoring")
        return
    end if
    
    if ((m.GetCurrentBreaks().Count() = 0) and ((m.GetPollCount() < 2) or (m.IsDeferred()))) then
        YO_TRACE("Waiting for initial VAST response... deferring")

        if (not m.IsDeferred()) then
            m._data.deferred = true
            success = m.PingAnalytics(yo_Callback("ProcessAnalytics", m))
        end if

        m._data.deferredtags.Push({timestamp: UpTime(0), metadata: data})

        ' TODO: Handle this in Roku differently?
        'setTimeout(this.handleMetadata.bind(this, data), 250);
        return
    end if
    
    if (m.IsDeferred()) and (m._data.deferredtags.Count() > 0) then
        m._data.deferredtags.Push({timestamp: UpTime(0), metadata: data})
        return
    end if

    ' Only handle YMID type metadata ID3 tags
    if (data.DoesExist("YMID")) then
        miid    = data.Lookup("YMID")             ' Media Item ID
        tagtype = data.Lookup("YTYP")             ' One of "S", "M" or "E"
        seq     = data.Lookup("YSEQ").Split(":")
        seqA    = seq[0]
        seqB    = seq[1]
        
        YO_DEBUG("Valid ID3 found. MIID: {0}", miid)
       
        if (m.IsInAnAdvert() and (m.GetCurrentAdvert().GetMediaID() = miid)) then  
            ' Reset end of break safety timer
            YO_TRACE("Advert still running for MIID: {0} with type: {1}. Seq {2} of {3}", miid, tagtype, seqA, seqB)

            ' Ping safety timer for the ad
            m.StopBreakEndTimer()
            m.StartBreakEndTimer()
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
        else
            wasInAd = m.IsInAnAdvert()
            
            if (wasInAd) then
                ' Stop previous advert as the miid has changed
                YO_TRACE("Currently in an advert, but the media ID has changed. Terminating current advert.")

                m.HandleAdvertEnd(m.GetCurrentAdvert())
                m._data.currentad = invalid
            else
                YO_TRACE("Not yet in an advert")
            end if
            
            ad = m.GetAdById(miid)
            if (ad <> invalid) then
                if ((wasInAd = true) or (tagtype = "S" and seqA = "1")) then 
                    YO_TRACE("Advert starting for MIID: {0} with type: {1}. Seq {2} of {3}", miid, tagtype, seqA, seqB)
                    YO_TRACE("Advert Duration: {0}", ad.GetDuration())

                    m._data.currentad = ad
                    shouldActivate = true
                else
                    YO_WARN("Ignoring advert with MIID: {0} because tag is not a start tag", miid)
                    
                    ' Push this ad back into the bucket
                    m._data.adbreaks[miid].unshift(ad)
                end if

                if (m.GetBreakEndTimer() = invalid) then
                    m._data.currentbreak = m._data.currentbreaks[0]

                    if (m._data.currentbreak = invalid) then
                        YO_WARN("Could not find break")
                    end if

                    m.HandleBreakStart(m._data.currentbreak)
                else
                    m.StopBreakEndTimer()
                    m.StartBreakEndTimer()
                end if

                if ((m.GetCurrentAdvert() <> invalid) and (m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertStart"))) then
                    m.GetPlayer().AdvertStart.invoke(miid)
                end if

                if (m._data.currentad <> invalid) then
                    m._data.currentad.IsSuppressed(m.IsSuppressed())
                    if (shouldActivate) then
                        m._data.currentad.SetActive(true)
                    end if
                end if
            else
                YO_WARN("Could not locate ad for miid: {0}", miid)

                if (m.GetBreakEndTimer() <> invalid) then
                    m.StopBreakEndTimer()
                    m.StartBreakEndTimer()
                end if
            end if
        end if
        
       ' Check for end of break
       if (tagtype = "E") then
            ' This ad is done
            if (m._data.currentad <> invalid) then
                if ((seqA = seqB) or (m._data.currentad.TimeElapsed() > m._data.currentad.GetDuration())) then
                    YO_TRACE("Advert ending for MIID: {0} with type: {1}. Seq {2} of {3}", miid, tagtype, seqA, seqB)

                    if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertEnd"))) then
                        m.GetPlayer().AdvertEnd.invoke(miid)
                    end if
            
                    m.GetCurrentAdvert().SetActive(false)
                    m._data.currentad = invalid
                end if
            end if
        end if
    else
        YO_WARN("Ignoring unrecognized ID3 tag")
    end if
end sub

' UpdatePosition
sub ys_ysls_updateposition(offset as Double)
    m.super_UpdatePosition(offset)

    if (m.IsPaused() or (not m.IsPlaying())) then
        YO_DEBUG("Ignoring position update while not actively playing")

        return
    end if

    if (m.IsInAnAdvert()) then
        'm.GetCurrentAdvert().IsSuppressed(m.IsSuppressed())
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
        
        if (m.GetCurrentAdvert().TimeElapsed() > m.GetCurrentAdvert().GetDuration()) then
            YO_TRACE(" ************* ADVERT HAS EXCEEDED DURATION!! *************")
            miid = m.GetCurrentAdvert().GetMediaID()
            
            if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertEnd"))) then
                m.GetPlayer().AdvertEnd.invoke(miid)
            end if
            
            m.GetCurrentAdvert().SetActive(false)
            m._data.currentad = invalid
        end if
    else if (m.GetBreakEndTimer() <> invalid) then
        if (not m.HaveMoreAds()) then
            YO_DEBUG(" --- COULD STOP BREAK HERE!!!")
            m.HandleBreakEnd(m.GetCurrentBreak())
        else
            YO_DEBUG(" --- WAITING FOR NEXT AD!!!")
        end if        
    end if
end sub

function ys_ysls_havemoreads() as Boolean
    adCount = 0
    
    for each i in m._data.adbreaks
        adCount = adCount + m._data.adbreaks[i].Count()
    end for

    YO_DEBUG("Have more ads? {0}", adCount)
    
    return (adCount > 0)    
end function

' HandleBreakEnd
sub ys_ysls_handlebreakend(brk as Dynamic) 
    m.super_HandleBreakEnd(brk)
    
    if (m._data.currentbreaks.Count() > 0) then
        m._data.currentbreaks.Shift()
    end if
    
    m._data.currentbreak = invalid
end sub
