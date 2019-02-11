'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* This file contains a URL handling class to make it easier to work with
'* URLs, changing query string, host, scheme etc
'* 
'* @class YSURL
'* @constructor
'* @param {String} url The raw URL to be handled by this instance#
'*
function YSURL(url as String) as object
    ' Class definition  
    this = MakeClass("YSURL", {
        properties: {
            scheme: {
                "GetScheme": function() as Dynamic : return m._data.scheme : end function,
                "SetScheme": sub(data) : m._data.scheme = data : end sub
            },
            host: {
                "GetHost": function() as Dynamic : return m._props.get(m, "host") : end function,
                "SetHost": sub(data) : m._props.set(m, "host", data) : end sub
            },
            username: {
                "GetUsername": function() as Dynamic : return m._props.get(m, "username") : end function,
                "SetUsername": sub(data) : m._props.set(m, "username", data) : end sub
            },
            password: {
                "GetPassword": function() as Dynamic : return m._props.get(m, "password") : end function,
                "SetPassword": sub(data) : m._props.set(m, "password", data) : end sub
            },
            port: {
                "GetPort": function() as Dynamic : return m._props.get(m, "port") : end function,
                "SetPort": sub(data) : m._props.set(m, "port", data) : end sub
            },
            path: {
                "GetPath": function() as Dynamic : return m._props.get(m, "path") : end function,
                "SetPath": sub(data) : m._props.set(m, "path", data) : end sub
            },
            query: {
                "GetQuery": function() as Dynamic : return m._props.get(m, "query") : end function,
                "SetQuery": sub(data) : m._props.set(m, "query", data) : end sub
            },
            fragment: {
                "GetFragment": function() as Dynamic : return m._props.get(m, "fragment") : end function,
                "SetFragment": sub(data) : m._props.set(m, "fragment", data) : end sub
            },
            source: {
                "GetSource": function() as Dynamic : return m._props.get(m, "source") : end function
            },
        },

        methods: {
            "GetAuth":      ys_url_getauth,
            "GetUserInfo":  ys_url_userinfo,
            "_parse":       ys_url_parse,
            "ToString":     ys_url_tostring
        }    
    })
    
    ' Setup and initialise members
    this._data.source   = url
    this._data.port     = "-1"
    
    if (url <> invalid) and len(url) > 0 then
        this._parse()
    end if
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

'GetAuth
function ys_url_getauth() as String
    str = ""
    
    ui = m.GetUserInfo()
    if yo_IsNotNull(ui) then
        str = str + ui + "@"
    end if
    
    str = str + m.GetHost()
    
    if yo_IsNotNull(m.GetHost()) and yo_IsNotNull(m.GetPort()) and m.GetPort() <> "-1" then
        str = str + ":" + m.GetPort()
    end if
    
    return str
end function
                        
' ToString()
function ys_url_tostring() as String
    str = ""
    
    if yo_IsNotNull(m.GetScheme()) then
        str = str + m.GetScheme() + ":"
    end if
    
    if yo_IsNotNull(m.GetAuth()) then
        str = str + "//" + m.GetAuth()
    end if
    
    if (yo_IsNotNull(m.GetAuth()) and (m.GetScheme() = "file")) then
        str = str + "//"
    end if
    
    str = str + m.GetPath()
    
    if yo_IsNotNull(m.GetQuery()) then
        str = str + "?" + m.GetQuery()
    end if
    
    if yo_IsNotNull(m.GetFragment()) then
        str = str + "#" + m.GetFragment()
    end if

    return str    
end function

' GetUserInfo()
function ys_url_userinfo() as String
    un = m.GetUsername()
    
    if yo_IsNull(un) then
        return ""
    end if
    
    pw = m.GetPassword()
    return (un + ":" + pw)
end function

' _parse()
sub ys_url_parse()
    str = m.GetSource()
        
    ' Check that the supplied URL is not empty
    if yo_IsNull(str) then
        YO_ERROR("Invalid URL supplied to YSURL")
        return
    end if
    
    ' RegExp to extract the component parts
    p = CreateObject("roRegex", "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)([\?]([^#]*))?(#(.*))?", "ig")
    r = p.Match(str)
    
    ' scheme
    if (r[1] <> invalid) and (r[2] <> invalid) then
        m.SetScheme(r[2])
    end if
    
    ' authority
    if (r[3] <> invalid) then
        authority = CreateObject("roString") 
        authority.SetString(r[4])
        host = CreateObject("roString")
        userdet = CreateObject("roString")
        
        ' userinfo
        if (authority.Instr("@") > -1) then
            userdet.SetString(authority.Split("@")[0])
            host.SetString(authority.Split("@")[1])
            
            if (userdet.Instr(":") <> -1) then
                m.SetUsername(userdet.Split(":")[0])
                m.SetPassword(userdet.Split(":")[1])
            else
                m.SetUsername(userdet.ToStr())
            end if
        else
            host.SetString(authority.ToStr())
        end if
        
        ' port number
        if (host.Instr(":") > -1) then
            port = host.Split(":")[1]
            validPort = true
            
            for i = 0 to len(port)
                c = mid(port, i, 1)
                
                if ((c < "0") or (c > "9")) then
                    validPort = false
                    exit for
                end if
            end for
            
            if (validPort) then
                host = host.Split(":")[0]

                if yo_IsNotNull(port) then
                    m.SetPort(port)
                end if
            end if
        end if
        
        m.SetHost(host)
    end if
    
    ' path
    if (r[5] <> invalid) then
        m.SetPath(r[5])
    end if
    
    ' query string
    if (r[6] <> invalid) then
        m.SetQuery(r[7])
    end if
    
    ' fragment (anchor)
    if (r[8] <> invalid) then
        m.SetFragment(r[9])
    end if
end sub

