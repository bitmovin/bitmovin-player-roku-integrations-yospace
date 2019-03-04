'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* Load an M3U8 Playlist and decode the tokens inside it and
'* invoke a callback once everything has been parsed
'*
'* @class       PlaylistParser
'* @constructor
'* @param       roString    url     The server URL to contact to retrieve the M3U8 Playlist
'*
function PlaylistParser(url as String, onsuccess as Dynamic, onfailure as Dynamic) as object
    ' Class definition
    this = MakeClass("PlaylistParser", {
        properties: {
            '* URL of the M3U8 Playlist to be loaded
            '* 
            '* @property    server
            '* @type        roString
            '* @get         GetServer
            server: {
                "GetServer": function() as Dynamic : return m._data.server : end function
            },

            '* The "raw" content of the loaded M3U8 as an array of Strings, each
            '* representing a single line in the M3U8.
            '* 
            '* @property    content
            '* @type        roArray of String
            '* @get         GetContent
            content: {
                "GetContent": function() as Dynamic : return m._data.content : end function
            },

            '* Returns whether the playlist was XML or not
            '*
            '* @property    isxml  
            '* @type        roBoolean
            '* @get         IsXML
            isxml: {
                "IsXML": function() as Dynamic : return m._data.isxml : end function
            }
        },
    
        methods: {
            '* Load a playlist from the URL
            '* 
            '* @method LoadPlaylist
            '* @param {roString} url The M3U8 playlist or XML DASH playlist URL
            "LoadPlaylist":    ys_m3u8p_loadplaylist,

            '* Parse the supplied response
            '* 
            '* @method Parse
            '* @param {Dynamic} root The M3U8 playlist or XML DASH playlist
            "Parse":    ys_m3u8p_parse,

            '* Report a failed attempt to fetch
            '*
            '* @method  ReportFail
            '* @param   Dynamic statcode    Status code associated with failure
            "ReportFail":   ys_m3u8p_reportfail
        }
    })

    ' Setup and initialise members
    this._data.content      = []
    this._data.server       = box(url)
    this._data.onloaded     = onsuccess
    this._data.onnotloaded  = onfailure
    this._data.isxml        = false
    
    ' Load and parse the manifest    
    if (url <> invalid) and (url <> "") then
        ' Load the Playlist
        bridge = GetGlobalAA().taskman
        bridge.AddFetchJob(url, yo_Callback("Parse", this), yo_Callback("ReportFail", this))
    end if
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' Destroy()
sub Destroy()
    this._data.content      = invalid
    this._data.onloaded     = invalid
    this._data.onnotloaded  = invalid
end sub

sub ys_m3u8p_loadplaylist(url as String)
    if (url <> invalid) and (url <> "") then
        ' Load the Playlist
        bridge = GetGlobalAA().taskman
        bridge.AddFetchJob(url, yo_Callback("Parse", m), yo_Callback("ReportFail", m))
    end if
end sub

' parse()
sub ys_m3u8p_parse(doc as Dynamic)
    YO_DEBUG("Playlist parse...")

    if type(doc) <> "roString" or doc = invalid or doc = "" then
        txt = []
    end if
    
    xmldoc = CreateObject("roXMLElement")
    success = xmldoc.parse(doc)
    if success then
        YO_DEBUG("Appears to be XML")
        m._data.isxml = true
        m._data.content = [xmldoc]
    else
        YO_DEBUG("Does not appear to be XML")
            
        sa = CreateObject("roRegex", "\s+", "g")
        txt = sa.Split(doc)
        
        ' If there are lines of text in the manifest
        if txt.Count() > 0 then
            YO_DEBUG("Parsing HLS playlist...")
            for each l in txt
                ' Only handle non-empty lines
                if (len(l) > 0) then
                    m._data.content.Push(l)
                    
                    ' Check for the analytics URL
                    if l.Instr("#EXT-X-YOSPACE-ANALYTICS-URL") = 0 then
                        ' Extract the URL and remove surrounding quotes 
                        ' (if present)
                        aurl = Mid(l, 30)
                        if left(aurl, 1) = chr(34) then
                            aurl = mid(aurl, 2, len(aurl) - 2)
                        end if
                    end if
                end if
            end for        
        else
            YO_WARN("Playlist has no lines")
        end if
    end if

    if m._data.onloaded <> invalid and m._data.content.Count() > 0 then
        m._data.onloaded.invoke(m)
    else  if m._data.onnotloaded <> invalid then
        m._data.onnotloaded.invoke(m)
    end if
end sub

' ReportFail
sub ys_m3u8p_reportfail(statcode as Dynamic)
    YO_DEBUG("ParsePlaylist failure: {0}", statcode)
    
    if m._data.onnotloaded <> invalid then
        m._data.onnotloaded.invoke(statcode)
    end if
end sub