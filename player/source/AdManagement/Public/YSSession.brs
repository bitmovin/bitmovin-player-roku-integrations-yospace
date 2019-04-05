'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* The YSSession class is the base class type for the different types
'* of session supported by the Ad Management SDK
'*
'* @class YSSession
'* @constructor
'* @param YSSessionManager  mgr     The SessionManager instance
'* @param roString          source  The initial URL to be fetched
'* @param Dynamic           cb      Callback to be invoked once the session init has completed
function YSSession(mgr as Dynamic, src as Dynamic, cb = invalid as Dynamic) as Object
    ' Class definition    
    this = MakeClass("YSSession", {
        properties: {
            '* The session manager instance which owns this session
            '*
            '* @property    manager
            '* @type        YSSessionManager
            '* @get         GetManager
            manager: {
                "GetManager": function() as Dynamic : return m._data.manager : end function
            },

            '* Original URL supplied when instantiating the session. This can either be
            '* a playlist-type URL or a VMAP configuration URL.
            '* 
            '* @property    source
            '* @type        YSURL
            '* @get         GetSource
            source: {
                "GetSource": function() as Dynamic : return m._data.source : end function
            },

            '* The hostname that the player should be targetting (which is determined
            '* once the session has been initialized and refers to the specific edge
            '* node).
            '* 
            '* @property    hostnode
            '* @type        roString
            '* @get         GetHostNode
            hostnode: {
                "GetHostNode": function() as Dynamic : return m._data.hostnode : end function
            },

            '* The Session ID for the current session (Jsessionid) obtained 
            '* once the session has been initialized.
            '* 
            '* @property    sessionid
            '* @type        roString
            '* @get         GetSessionID
            sessionid: {
                "GetSessionID": function() as Dynamic : return m._data.sessionid : end function
            },

            '* The URL of the analytics endpoint to be polled for additional
            '* advert and/or stream data (VAST or VMAP).
            '* 
            '* @property    analyticsurl
            '* @type        roString
            '* @get         GetAnalyticsURL
            analyticsurl: {
                "GetAnalyticsURL": function() as Dynamic : return m._data.analyticsurl : end function
            },

            '* The URL of the endpoint to be polled during a paused
            '* Live-Pause capable stream
            '* 
            '* @property    livepauseurl
            '* @type        roString
            '* @get         GetLivePauseURL
            livepauseurl: {
                "GetLivePauseURL": function() as Dynamic : return m._data.livepauseurl : end function
            },

            '* The URL of the master playlist.
            '* 
            '* @property    masterurl
            '* @type        YSURL
            '* @get         GetMasterURL
            masterurl: {
                "GetMasterURL": function() as Dynamic : return m._data.masterurl : end function
            },

            '* <p>An instance of the YSTimeline class which contains a representation
            '* of the current stream being played back. It includes information
            '* about advert breaks and underlying content.</p>
            '* 
            '* <p>This instance is of limited use for a VAST stream (i.e. live) as
            '* the positional information is not known.<p>
            '* 
            '* @property    timeline
            '* @type        YSTimeline
            '* @get         GetTimeline
            timeline: {
                "GetTimeline": function() as Dynamic : return m._data.timeline : end function
            },

            '* <p>Object containing a bucketized list of the ads for the current
            '* stream. This is used for correlating ID3 metadata with the respective
            '* advert VAST data during live streams.</p>
            '* <p>Each element in the object contains an array of YSAdvert.</p>
            '* 
            '* @property    adbreaks
            '* @type        roAssociativeArray
            '* @get         GetAdBreaks
            adbreaks: {
                "GetAdBreaks": function() as Dynamic : return m._data.adbreaks : end function
            },

            '* Current advert being played in the player (based on ID3 tag or position
            '* reporting.
            '* 
            '* @property    currentad
            '* @type        YSAdvert
            '* @get         GetCurrentAdvert
            currentad: {
                "GetCurrentAdvert": function() as Dynamic : return m._data.currentad : end function
            },

            ' Internal handle to the setTimeout call used to detect the end of the break
            breakendtimer: {
                "GetBreakEndTimer": function() as Dynamic : return m._data.breakendtimer : end function
            },
            
            '* <p>Object containing player callback functions.</p>
            '* 
            '* See {{#crossLink "YSSessionManager/registerPlayer:method"}}YSSessionManager.registerPlayer(){{/crossLink}}
            '* for more details.
            '* 
            '* @property    player
            '* @type        roAssociativeArray
            '* @get         GetPlayer
            '* @set         SetPlayer
            player: {
                "GetPlayer": function() as Dynamic : return m._data.player : end function,
                "SetPlayer": sub(data) : m._data.player = data : end sub
            },
            
            '* Previously reported playback position.
            '* 
            '* @property    lastposition
            '* @type        roDouble
            '* @get         GetLastPosition   
            lastposition: {
                "GetLastPosition": function() as Dynamic : return m._data.lastposition : end function
            },     

            '* Type of stream being played (either empty string "", "hls" or "dash")
            '*
            '* @property    streamtype
            '* @type        roString
            '* @get         GetStreamType
            streamtype: {
                "GetStreamType": function() as Dynamic : return m._data.streamtype : end function
            },
            
            '* Whether the session is paused
            '*
            '* @property    sessionpaused
            '* @type        roBoolean
            '* @get         IsPaused
            '* @protected
            sessionpaused: {
                "IsPaused": function() as Dynamic : return m._data.sessionpaused : end function
            },
            
            '* Whether the session has started playing yet
            '*
            '* @property    isplaying
            '* @type        roBoolean
            '* @get         IsPlaying
            '* @protected
            isplaying: {
                "IsPlaying": function() as Dynamic : return m._data.isplaying : end function
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
            },

            '* An array containing the YSAdBreak instances which correspond to empty
            '* breaks in the upcoming content (i.e. failed to fill)
            '*
            '* @property    missedbreaks
            '* @type        roArray
            '* @get         GetMissedBreaks
            missedbreaks: {
                "GetMissedBreaks": function() as Dynamic : return m._data.missedbreaks : end function
            }

            'policy:         yo_RO("YSPlayerPolicy",       "GetPolicy")
        },
    
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            '* @protected
            "Destroy":              ys_yss_destroy,
            
            '* Called by the Session Manager in order to cause an analytics 
            '* "ping" to be made. If there is no Analytics URL obtained 
            '* during session initialization, this method won't do anything,
            '* otherwise it will fetch the XML (VAST or VMAP as appropriate) and
            '* notify the callback method. The callback method is then 
            '* responsible for setting up the next "ping" call at an appropriate
            '* time interval.
            '* 
            '* @method      PingAnalytics
            "PingAnalytics":        ys_yss_pinganalytics,
            
            '* <p>Called by the SessionManager when it receives a response to an analytics request.
            '* This causes the response to be parsed and handled accordingly.</p>
            '* 
            '* <p>There is no default implementation in the <code>YSSession</code> class and it should be
            '* considered "abstract" - to be overriden in descendants.</p>
            '* 
            '* @method  ProcessAnalytics
            '* @param   {Document} response Analytics response (in VAST or VMAP format) which should be parsed
            '* by the session in order to determine upcoming adverts
            "ProcessAnalytics":     ys_yss_processanalytics,
            
            '* <p>Called by the SessionManager when it is handed ID3 metadata from the video player.
            '* This causes the appropriate tracking calls to be made to the advertising server.</p>
            '* 
            '* <p>There is no default implementation in the <code>YSSession</code> class and it should be
            '* considered "abstract" - to be overriden in descendants.</p>
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
            '* @method HandleMetadata
            '* @param {Object} data The object containing the ID3 metadata, having already been
            '* parsed into an Object by the video player
            "HandleMetadata":       ys_yss_metadata,

            '* <p>Called by the SessionManager when it is notified by the video player of a change
            '* to the playhead position.</p>
            '* 
            '* <p>There is no default implementation in the <code>YSSession</code> class and it should be
            '* considered "abstract" - to be overriden in descendants.</p>
            '* 
            '* <p>For VAST-only analytics, ID3 data will be required in order to synchronize the advert data
            '* with the playing advert within the stream. In this case, setting the <code>useID3</code> property
            '* will have no effect. For VMAP analytics, both methods of synchronization are supported.</p>
            '* 
            '* @method UpdatePosition
            '* @param {Number} offset New playback head position (in seconds)
            '* @param {Boolean} useID3 Whether analytics processing should be made on the basis
            '* of received ID3 metadata (<code>true</code>) or based on playhead position
            "UpdatePosition":       ys_yss_updateposition,

            '* Determine whether there is an advert currently being played.
            '* 
            '* @method IsInAnAdvert
            '* @return {Boolean} <code>true</code> if the playhead is currently within an
            '* advert, otherwise <code>false</code>.
            "IsInAnAdvert":         ys_yss_isinanadvert,
            
            '* The URL for the master playlist (which should be the initial playlist
            '* loaded by the video player).
            '* 
            '* @method MasterPlaylistURL
            '* @return {String} URL of the master M3U8 manifest/playlist
            "MasterPlaylistURL":    ys_yss_masterplaylisturl,
            
            '* Load a master playlist from which the analytics URL 
            '* can be extracted.
            '* 
            '* @method  LoadPlaylist
            "LoadPlaylist":         ys_yss_loadplaylist,

            '* Helper function called once an M3U8 playlist has been loaded. the
            '* content of the playlist will be contained in <code>this.playlist.content</code>.
            '* 
            '* @event   PlaylistLoaded
            "PlaylistLoaded":       ys_yss_playlistloaded,

            '* Helper function called once an M3U8 playlist fails to load correctly. 
            '* 
            '* @event   PlaylistNotLoaded
            '* @param   roDynamic   e   Reason why playlist was not loaded
            "PlaylistNotLoaded":    ys_yss_playlistnotloaded,

            '* <p>Helper function used by the session to set up a timer to detect the end of an 
            '* advert break. This will only be required for ID3-based analytics, as it is the
            '* absence of ID3 data which indicates the end of a break, rather than a specific trigger.</p>
            '* 
            '* <p>For positional-based analytics, this isn't needed as the position will determine with accuracy
            '* when the break has ended.</p>
            '* 
            '* <p>If the break end timer is already running, it will be stopped without firing, and restarted
            '* from the beginning.</p>
            '* 
            '* @method  StartBreakEndTimer
            '* @param   {??}    duration    Timeout duration which determines how long after seeing an
            '*                              ID3 tag the end of the break may be considered to have occurred. 
            '*                              If not provided, a default value will be used.
            "StartBreakEndTimer":   ys_yss_starttimer,

            '* <p>Helper function used to stop the break end timer (without firing its payload). If 
            '* there is no active timer, this method call has no effect.</p>
            '* 
            '* @method  StopBreakEndTimer
            "StopBreakEndTimer":    ys_yss_stoptimer,

            '* <p>Helper function which is used once the ad break starts. This should be fired directly.</p>
            '*
            '* @method  HandleBreakStart
            '* @param   YSAdBreak   brk     Ad break which was started
            "HandleBreakStart":     ys_yss_breakstart,

            '* <p>Helper function which is used once the ad break has ended. This can either be fired directly,
            '* or will automatically be fired upon the expiration of the break end timer (if running).</p>
            '* 
            '* <p>There is no default implementation in the <code>YSSession</code> class and it should be
            '* considered "abstract" - to be overriden in descendants.</p>
            '* 
            '* @method  HandleBreakEnd
            '* @param   YSAdBreak   brk     Ad break which was ended
            "HandleBreakEnd":       ys_yss_breakend,

            "SetPaused":            ys_yss_setpaused,
            
            "GetCurrentBreak":      ys_yss_getcurrentbreak,
            
            "GetAdById":            ys_yss_getadbyid,
            
            '* Convenience method to obtain the clickthrough URL for the linear creative
            '* inside the currently playing advert.
            '*
            '* @method  GetLinearClickthrough
            '* @return  Dynamic     String containing URL for the current advert, or invalid
            '*                      if we are not currently in an advert
            "GetLinearClickthrough": ys_yss_getlinearclickthrough,
            
            '*
            '* Called to advise the tracking module that it should begin suppressing external
            '* analytics calls. A value of true indicates suppressed mode, 
            '* and has no return value. A value of false indicates that
            '* suppression should be ended, and returns a list of suppressed calls thus far.
            '* 
            '* @method  SuppressAnalytics
            '* @param   roBoolean   state   Whether to suppress
            '* @return  roArray     Array of suppressed calls (or invalid)
            "SuppressAnalytics":    ys_yss_suppress,

            '* Helper function used by the SDK to mark an empty (unsatisfied) break.
            '* This is so that slot impressions can still be fired.
            '*
            '* @method  AddEmptyBreak
            '* @param   YSAdBreak   brk     Break to be added as empty
            "AddEmptyBreak":        ys_yss_addemptybreak,

            "HandleAdvertStart":    ys_yss_advertstart,

            "HandleAdvertEnd":      ys_yss_advertend,

            "ReportLinearEvent":    ys_yss_reportlinear,

            "ReportNonLinearEvent": ys_yss_reportnonlinear,

            ' Internal function to begin session init
            "BeginSession":         ys_yss_beginsession,

            ' Internal constructor    
            "construct":            ys_yss_construct
        }
    })

    ' Call constructor method   
    this.construct(mgr, src, cb)

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' construct() 
sub ys_yss_construct(mgr as Dynamic, src as Dynamic, cb as Dynamic)
    ' Setup and initialise members
    m._data.manager         = mgr
    m._data.source          = invalid
    m._data.hostnode        = ""
    m._data.sessionid       = ""
    m._data.analyticsurl    = ""
    m._data.livepauseurl    = ""
    m._data.masterurl       = ""
    m._data.timeline        = YSTimeline()
    m._data.adbreaks        = {}
    m._data.missedbreaks    = []
    m._data.currentad       = invalid
    m._data.player          = invalid
    m._data.lastposition    = 0.0
    m._data.oncomplete      = cb
    m._data.streamtype      = ""
    m._data.sessionpaused   = false
    m._data.isplaying       = false
    m._data.suppressed      = false
    m._data.playlist        = invalid
    
    if src <> invalid then
        m._data.source      = YSURL(src)
        m._data.masterurl   = invalid
        m._data.hostnode    = m._data.source.GetHost()
        
        YO_DEBUG("Host node: {0}", m._data.hostnode)
    end if      
end sub

sub ys_yss_beginsession(url as String)
    if (url <> invalid) and (url <> "") then
        m._data.source      = YSURL(url)
        m._data.masterurl   = invalid
        m._data.hostnode    = m._data.source.GetHost()
        
        YO_DEBUG("Host node: {0}", m._data.hostnode)
    end if
end sub

' Destroy()
sub ys_yss_destroy()
    YO_TRACE("Shutting down Session")

    m._data.manager         = invalid
    m._data.source          = invalid
    m._data.masterurl       = invalid
    m._data.currentad       = invalid
    m._data.player          = invalid
    m._data.oncomplete      = invalid
    m._data.streamtype      = "invalid"
    m._data.oncomplete      = invalid
    m._data.playlist        = invalid

    m.StopBreakEndTimer()
    
    if (m._data.timeline <> invalid) then
        m._data.timeline.Destroy()
        m._data.timeline    = invalid
    end if

    if (m._data.adbreaks <> invalid) then
        for each j in m._data.adbreaks
            ads = m._data.adbreaks[j]
            while (ads.Count() > 0)
                ad = ads.Pop()
                ad.Destroy()
            end while
            
            m._data.adbreaks.Delete(j)
        end for
    end if
    
    m._data.adbreaks        = invalid

    if (m._data.missedbreaks <> invalid) then
        while (m._data.missedbreaks.Count() > 0)
            ad = m._data.missedbreaks.Pop()
            ad.Destroy()
        end while
    end if
    
    m._data.missedbreaks    = invalid
end sub

' SuppressAnalytics
function ys_yss_suppress(state as Boolean) as Dynamic
    if (state = true) then
        if (m.GetCurrentAdvert() <> invalid) and (m.IsSuppressed() = false) then
            m.GetCurrentAdvert().IsSuppressed(true)
        end if
        
        m.StopBreakEndTimer()
    else
        m.StartBreakEndTimer()

        if (m.GetCurrentAdvert() <> invalid) and (m.IsSuppressed() = true) then
            ' set here due to early return
            m._data.suppressed = false
            return m.GetCurrentAdvert().IsSuppressed(false)
        end if
    end if

    m._data.suppressed = state
    return invalid
end function

' SetPaused()
sub ys_yss_setpaused(paused as Boolean)
    m._data.ispaused = paused
    
    if (paused = true) and (not m.IsPlaying()) then
        m._data.isplaying = true
    end if
end sub

function ys_yss_getcurrentbreak() as Dynamic
    if (m._CLASSNAME = "YSLiveSession") then
        if (m._data.currentad <> invalid) and (m._data.currentbreak <> invalid) then
            return m._data.currentbreak
        end if
    else
        tlele = m.GetTimeline().GetElementAtTime(m.GetLastPosition())
        if (tlele <> invalid and tlele.GetType() = "ADVERT") then
            return tlele.GetAdverts()
        else if (m._data.currentad <> invalid) then
            return m._data.currentad.GetBreak()
        end if
    end if
    
    return invalid
end function
    
function ys_yss_getadbyid(id as String) as Dynamic
    rv = invalid

    if (m.GetAdBreaks().DoesExist(id)) then
        ads = m.GetAdBreaks()[id]
        if (ads.Count() > 0) then
            rv = ads.Pop()
        else
            if (ads = invalid) then
                YO_WARN("No adverts have yet been defined")
            else
                YO_WARN("Adverts previously seen for this ID, but none currently available: {0}", id)
            end if
        end if
    else
        YO_WARN("No adverts found in array for this ID, and have not yet seen any: {0}", id)
        
        if (m.GetAdBreaks() = invalid) then 
            YO_WARN("And ad break array is null")
        end if
    end if
    
    return rv
end function
    
' GetLinearClickthrough    
function ys_yss_getlinearclickthrough() as Dynamic
    cturl = invalid

    if (m.GetCurrentAdvert() <> invalid) then
        if (m.GetCurrentAdvert().GetAdvert() <> invalid) then
            if (m.GetCurrentAdvert().GetAdvert().GetLinear() <> invalid) then
                cturl = m.GetCurrentAdvert().GetAdvert().GetLinear().GetClickThrough()
            end if
        end if
    end if

    return cturl
end function

' PingAnalytics()
sub ys_yss_pinganalytics(cb as Dynamic)
    if m.GetAnalyticsURL() <> invalid and len(m.GetAnalyticsURL()) > 0 then
        YO_DEBUG("Pinging {0}", m.GetAnalyticsURL())

        bridge = GetGlobalAA().taskman
        bridge.AddFetchJob(m.GetAnalyticsURL(), cb, invalid)
    end if 
end sub

' ProcessAnalytics()
sub ys_yss_processanalytics(response as Dynamic)
    ' This is an abstract method which is implemented
    ' in descendant classes
end sub

' HandleMetadata()
sub ys_yss_metadata(data as Dynamic)
    ' This is an abstract method which is implemented
    ' in descendant classes
end sub

' UpdatePosition()
sub ys_yss_updateposition(offset as Double)
    ' This is an abstract method which is implemented
    ' in descendant classes
    m._data.lastposition = offset
end sub

' IsInAnAdvert()
function ys_yss_isinanadvert() as Boolean
    if (m.GetCurrentAdvert() <> invalid) then
        return true
    end if
    
    return false
end function

' MasterPlaylistURL()
function ys_yss_masterplaylisturl() as String
    return m.GetMasterURL().ToString()
end function

' LoadPlaylist()
sub ys_yss_loadplaylist()
    m._data.playlist = PlaylistParser("", yo_Callback("PlaylistLoaded", m), yo_Callback("PlaylistNotLoaded", m))
    m._data.playlist.LoadPlaylist(m.MasterPlaylistURL())
end sub

' PlaylistLoaded()
sub ys_yss_playlistloaded(dummy as Dynamic)
    YO_TRACE("Playlist was loaded")
    
    if m._data.playlist.IsXML() then
        YO_DEBUG("Playlist is XML - assuming DASH")

        m._data.streamtype = "dash"

        mpd = m._data.playlist.GetContent()[0]
        if (mpd <> invalid) and (mpd.GetName() = "MPD") then
            if (mpd.HasAttribute("analytics")) then
                m._data.analyticsurl = mpd.GetAttributes().analytics.Trim()
                locurl = YSURL(m._data.analyticsurl)
                paths = locurl.GetPath().split(";")
                m._data.masterurl.SetPath(m._data.masterurl.GetPath() + ";" + paths[1])
                m._data.masterurl.SetHost(locurl.GetHost())
                m._data.hostnode = locurl.GetHost()
                m._data.sessionid = paths[1]
            end if

            if (mpd.HasAttribute("livepause")) then
                m._data.livepauseurl = mpd.GetAttributes().livepause.Trim()
            end if
        end if        
    else
        ' Iterate the playlist looking for the Analytics Token so that
        ' the URL can be extracted and stored
        for each line in m._data.playlist.GetContent()
            if line.Instr("#EXT-X-YOSPACE-ANALYTICS-URL") = 0 then
                ' Extract the value of the analytics URL
                m._data.analyticsurl = right(line, len(line) - 29)
                
                ' Strip surrounding quotes characters if present
                if (left(m._data.analyticsurl, 1) = chr(34)) then
                    m._data.analyticsurl = mid(m.GetAnalyticsURL(), 2, len(m.GetAnalyticsURL()) - 2)
                end if

                locurl = YSURL(m._data.analyticsurl)
                paths = locurl.GetPath().split(";")
                m._data.masterurl.SetPath(m._data.masterurl.GetPath() + ";" + paths[1])
                m._data.masterurl.SetHost(locurl.GetHost())
                m._data.hostnode = locurl.GetHost()
                m._data.sessionid = paths[1]

            else if line.Instr("#EXT-X-YOSPACE-PAUSE") = 0 then
                ' Extract the value of the live pause URL
                m._data.livepauseurl = right(line, len(line) - 21)
                
                ' Strip surrounding quotes characters if present
                if (left(m._data.livepauseurl, 1) = chr(34)) then
                    m._data.livepauseurl = mid(m.GetLivePauseURL(), 2, len(m.GetLivePauseURL()) - 2)
                end if
            end if
        end for
        m._data.streamtype = "hls"
    end if
    
    YO_TRACE("Deduced analytics URL: {0}", m.GetAnalyticsURL())

    if (len(m._data.livepauseurl) > 0) then
        YO_TRACE("Deduced live pause URL: {0}", m.GetLivePauseURL())
    end if

    if (len(m._data.analyticsurl) = 0) then
        if (m._data.oncomplete <> invalid) then
            m._data.oncomplete.invoke({result: YSSessionResult().NO_ANALYTICS, status: YSSessionStatus().NON_YOSPACE_URL, code: invalid})
        end if
    else if (m._CLASSNAME = "YSLivePauseSession") then
        if (len(m._data.livepauseurl) = 0) then
            if (m._data.oncomplete <> invalid) then
                m._data.oncomplete.invoke({result: YSSessionResult().INITIALISED, status: 0, code: YSSessionStatus().NO_LIVEPAUSE})
            end if
        else
            if (m._data.oncomplete <> invalid) then
                m._data.oncomplete.invoke({result: YSSessionResult().INITIALISED, status: 0, code: 0})
            end if
        end if
    else
        if (m._data.oncomplete <> invalid) then
            m._data.oncomplete.invoke({result: YSSessionResult().INITIALISED, status: 0, code: 0})
        end if
    end if
end sub

' PlaylistNotLoaded()
sub ys_yss_playlistnotloaded(dummy = invalid as Dynamic)
    if (m._data.oncomplete <> invalid) then
        m._data.oncomplete.invoke({result: YSSessionResult().NOT_INITIALISED, status: dummy, code: YSSessionStatus().CONNECTION_ERROR})
    end if
end sub

' StartBreakEndTimer()
sub ys_yss_starttimer(duration = invalid as Dynamic)
    realdur = 6000  ' Default break tolerance
    
    if (duration <> invalid) then
        realdur = duration
    end if

    if (m.GetBreakEndTimer() <> invalid) then
        m.StopBreakEndTimer()
    end if
    
    ' Following is VERY chatty!
    ' YO_DEBUG("Starting break end timer")

    tim = GetGlobalAA().timer
    prevbrk = m.GetCurrentBreak()
    m._data.breakendtimer = tim.SetTimeout(realdur, m, function(what)
        YO_TRACE("Break end timer has fired")
        what.HandleBreakEnd(what.GetCurrentBreak())
    end function)
end sub
   
' StopBreakEndTimer()
sub ys_yss_stoptimer()
    if (m.GetBreakEndTimer() <> invalid) then
        ' Following is VERY chatty!
        ' YO_DEBUG("Clearing break end timer")
        tim = GetGlobalAA().timer
        tim.ClearTimeout(m.GetBreakEndTimer())
        m._data.breakendtimer = invalid
    else
        YO_DEBUG("Not clearing invalid break end timer")
    end if
end sub

' HandleBreakStart()
sub ys_yss_breakstart(brk as Dynamic)
    ' This is a new break
    YO_TRACE("YSSession::HandleBreakStart")

    if (brk <> invalid) then
        if (brk.GetVMAPBreak() <> invalid) and (brk.GetVMAPBreak().GetTracking() <> invalid) then
            brk.GetVMAPBreak().GetTracking().Track("breakStart", {})
        end if
    end if

    if (m.GetBreakEndTimer() = invalid) then
        if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdBreakStart"))) then
            m.GetPlayer().AdBreakStart.invoke(brk)
        end if

        m.StartBreakEndTimer()
    end if
end sub    

' HandleBreakEnd()
sub ys_yss_breakend(brk as Dynamic)
    YO_TRACE("YSSession::HandleBreakEnd")

    if (brk <> invalid) then
        if (brk.GetVMAPBreak() <> invalid) and (brk.GetVMAPBreak().GetTracking() <> invalid) then
            brk.GetVMAPBreak().GetTracking().Track("breakEnd", {})
        end if
    end if
    
    if (m.IsInAnAdvert()) then
        ' Stop previous advert as the midd has changed
        if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertEnd"))) then
            ad = m.GetCurrentAdvert()
            if (ad <> invalid) then
                m.GetPlayer().AdvertEnd.invoke(ad.GetMediaID())
            else
                YO_WARN("Invoking advert end without a valid advert ID")
                m.GetPlayer().AdvertEnd.invoke("")
            end if
        end if

        m.GetCurrentAdvert().SetActive(false)
        m._data.currentad = invalid
    end if

    if (m.GetBreakEndTimer() <> invalid) then
        m.StopBreakEndTimer()

        YO_DEBUG("Advert break ended - notifying consumer")

        if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdBreakEnd"))) then
            m.GetPlayer().AdBreakEnd.invoke(brk)
        end if
    end if
end sub    

' AddEmptyBreak
sub ys_yss_addemptybreak(brk as Dynamic)
    newbreaks = []
    wasadded = false

    if (m._data.missedbreaks.Count() > 0) then
        for i = 0 to m._data.missedbreaks.Count() - 1
            cbrk = m._data.missedbreaks[i]

            if (brk.GetStart() < cbrk.GetStart()) then
                YO_TRACE("Inserting empty break at: {0}", brk.GetStart())
                newbreaks.Push(brk)
                wasadded = true
            else if (brk.GetStart() = cbrk.GetStart()) then
                newbreaks = invalid
                return
            end if

            newbreaks.Push(cbrk)
        end for
    end if

    if (not wasadded) then
        newbreaks.Push(brk)
    end if

    m._data.missedbreaks = newbreaks
end sub

' HandleAdvertStart
sub ys_yss_advertstart(ad as Dynamic)
    if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertStart"))) then
        m.GetPlayer().AdvertStart.invoke(ad.GetMediaID())
    end if
end sub

' HandleAdvertEnd
sub ys_yss_advertend(ad as Dynamic)
    ad.SetActive(false)

    if ((m.GetPlayer() <> invalid) and (m.GetPlayer().DoesExist("AdvertEnd"))) then
        m.GetPlayer().AdvertEnd.invoke(ad.GetMediaID())
    end if
end sub

' ReportLinearEvent
sub ys_yss_reportlinear(event as String)
    if (m.IsInAnAdvert()) then
        ad = m.GetCurrentAdvert()
        if (ad <> invalid) then
            ad.ReportLinearEvent(event)
        end if
    end if
end sub

' ReportNonLinearEvent
sub ys_yss_reportnonlinear(id as integer, event as String)
    if (m.IsInAnAdvert()) then
        ad = m.GetCurrentAdvert()
        if (ad <> invalid) then
            ad.ReportNonLinearEvent(id, event)
        end if
    end if
end sub

'* The YSSessionResult class contains a number of constants
'* used for determining the initialisation result of the
'* Ad Management SDK
'*
'* @class YSSessionResult
'* @constructor
function YSSessionResult() as Object
    this = {}

    '* The AdManagement SDK was successfully initialised
    '*
    '* @property INITIALISED
    this["INITIALISED"]     = "ready"

    '* The AdManagement SDK was not (yet) successfully initialised.
    '* The app may need to consult the YSSessionStatus value in order
    '* to determine the reason for the failure (if an initialisation
    '* attempt was already made).
    '*
    '* @property NOT_INITIALISED
    this["NOT_INITIALISED"] = "error"

    '* The AdManagement SDK was not initialised successfully. The
    '* app may need to consult the YSSessionStatus value in order
    '* to determine the reason for the failure. The stream can still
    '* be played (if desired) but will not benefit from any of the
    '* features implemented by the SDK.
    '*
    '* @property NO_ANALYTICS
    this["NO_ANALYTICS"]    = "no-analytics"
    
    return this
end function

'* The YSSessionStatus class contains a number of constants
'* used for determining the reason for receiving either a
'* NOT_INITIALISED or NO_ANALYTICS result during
'* initialisation of the Ad Management SDK
'*
'* @class YSSessionStatus
'* @constructor
function YSSessionStatus() as Object
    this = {}

    '* A connection with the Yospace CSM could not be established.
    '* There may be a number of different causes for this (for example
    '* a loss of internet connectivity)
    '*
    '* @property    CONNECTION_ERROR
    '* @type        integer
    this["CONNECTION_ERROR"]    = -1

    '* The connection with the Yospace CSM did not complete in a
    '* timely fashion and so the initialisation timed out.
    '*
    '* @property    CONNECTION_TIMEOUT
    '* @type        integer
    this["CONNECTION_TIMEOUT"]  = -2

    '* The playback URL given to the SDK was not correctly formatted
    '*
    '* @property    MALFORMED_URL
    '* @type        integer
    this["MALFORMED_URL"]       = -3

    '* The playback URL given to the SDK was not to a valid Yospace
    '* CSM stream, or the yo.ac=true parameter was omitted.
    '*
    '* @property    NON_YOSPACE_URL
    '* @type        integer
    this["NON_YOSPACE_URL"]     = -10

    '* The playback URL given to the SDK was a valid Yospace CSM
    '* stream, but the stream was not correctly configured to be a
    '* Live-Pause capable stream, so it may only be played as a
    '* standard "Live" stream and therefore may not be paused
    '* or scrubbed.
    '*
    '* @property    NO_LIVEPAUSE
    '* @type        integer
    this["NO_LIVEPAUSE"]        = -11
    
    return this
end function
