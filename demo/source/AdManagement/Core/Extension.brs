'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* Base class from which all VMAP extensions derive
'* 
'* @class       YoExtension
'* @constructor
'* @param       roXMLElement    root    The node of the extension XML fragment
'*
function YoExtension(root as dynamic) as object
    ' Class definition
    this = MakeClass("YoExtension", {
        properties: {
            '* This property is set to <code>true</code> for a recognized and correctly
            '* formatted extension type, otherwise it is set to <code>false</code>.
            '* 
            '* @property    isvalid
            '* @type        roBoolean
            '* @get         IsValid
            isvalid: {
                "IsValid": function() as Dynamic : return m._data.isvalid : end function
            },

            '* The contents of the original unmodified XML describing the 
            '* extension (as loaded from the VMAP)
            '* 
            '* @property    extensionxml
            '* @type        roXMLElement
            '* @get         GetRaw
            extensionxml: {
                "GetRaw": function() as Dynamic : return m._data.extensionxml : end function
            }
        },

        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":          ys_yoe_destroy,

            '* Return a string containing the class type. This is overriden by
            '* descendants to enable checking which type of extension has been 
            '* constructed as a result of parsing the XML
            '* 
            '* @method GetTypeName
            '* @return String String containing type name
            "GetTypeName":      ys_yoe_gettypename
        }
    })
    
    ' Setup and initialise members
    this._data.isvalid      = false
    this._data.extensionxml = root
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
'*
'* Represents a single Extension node of type "yospace:Stream"
'* 
'* @class YoStream
'* @extends YoExtension
'* @constructor
'* @param       roXMLElement    root    The node of the yospace:Stream XML fragment
'*
function YoStream(root as dynamic) as object
    this = MakeSubClass("YoStream", {
        properties: {
            '* The duration of the stream (represented as a timecode string)
            '* 
            '* @property    duration
            '* @type        roString
            '* @get         GetDuration
            duration: {
                "GetDuration": function() as Dynamic : return m._data.duration : end function
            },

            '* The unique identifier of this stream
            '* 
            '* @property    id
            '* @type        roString
            '* @get         GetId
            id: {
                "GetId": function() as Dynamic : return m._data.id : end function
            },

            '* The host node of the stream to be played. When combined with The
            '* <code>urlSuffix</code> a complete URL is formed.
            '* 
            '* @property    urldomain
            '* @type        roString
            '* @get         GetUrlDomain
            urldomain: {
                "GetUrlDomain": function() as Dynamic : return m._data.urldomain : end function
            },

            '* The path of the stream to be played. When prefixed by the <code>
            '* urlDomain</code> a complete URL is formed.
            '* 
            '* @property    urlsuffix
            '* @type        roString
            '* @get         GetUrlSuffix
            urlsuffix: {
                "GetUrlSuffix": function() as Dynamic : return m._data.urlsuffix : end function
            },

            '* The starting PDT for a Live-Pause capable stream (to allow sliding window)
            '* 
            '* @property    startpdt
            '* @type        roString
            '* @get         GetStartPDT
            startpdt: {
                "GetStartPDT": function() as Dynamic : return m._data.startpdt : end function
            },

            '* The ending PDT for a Live-Pause capable stream (to allow sliding window)
            '* 
            '* @property    endpdt
            '* @type        roString
            '* @get         GetEndPDT
            endpdt: {
                "GetEndPDT": function() as Dynamic : return m._data.endpdt : end function
            }
        },
        methods: {
        }
    }, YoExtension(invalid))
    
    ' Setup and initialise members
    this._data.isvalid      = true
    this._data.extensionxml = root
    this._data.proxy        = false
    this._data.startpdt     = invalid
    this._data.endpdt       = invalid
    
    ' Parse content
    strm = root.GetChildElements()
    if strm.Count() > 0 then
        if strm[0].GetName() = "yospace:Stream" then
            if strm[0].HasAttribute("duration") then
                this._data.duration = strm[0].GetAttributes().duration
            else
                this._data.isvalid = false
                return this
            end if
            
            ' The following attributes are optional
            if strm[0].HasAttribute("pdtstart") then
                this._data.startpdt = strm[0].GetAttributes().pdtstart
            end if

            if strm[0].HasAttribute("pdtend") then
                this._data.endpdt = strm[0].GetAttributes().pdtend
            end if

            if strm[0].HasAttribute("urlDomain") then
                this._data.urldomain = strm[0].GetAttributes().urlDomain
            else
                YO_DEBUG("No URL domain provided for STREAM")
            end if
            
            if strm[0].HasAttribute("urlSuffix") then
                this._data.urlsuffix = strm[0].GetAttributes().urlSuffix
            else
                YO_DEBUG("No URL suffix provided for STREAM")
            end if

            if strm[0].HasAttribute("id") then
                this._data.id = strm[0].GetAttributes().id
            end if
            
            YO_DEBUG("Stream Extension. ID: {0} Duration: {1}", this.GetId(), this.GetDuration())
            YO_DEBUG("Domain: {0}", this.GetUrlDomain())
            YO_DEBUG("Suffix: {0}", this.GetUrlSuffix())
        else
            ' Wrong tag name provided
            this._data.isvalid = false
        end if        
    else
        ' Nothing to parse - cannot be valid
        this._data.isvalid = false
    end if
     
    return this
end function

'-----------------------------------------------------------------------------------------------------------
'*
'* Represents a single Extension node of type "yospace:AdBreak"
'* 
'* @class YoBreak
'* @extends YoExtension
'* @constructor
'* @param       roXMLElement    root    The node of the yospace:Stream XML fragment
'*
function YoBreak(root as dynamic) as object
    ' Class definition
    this = MakeSubClass("YoBreak", {
        properties: {
            '* The duration of the break (represented as a timecode string)
            '* 
            '* @property    duration
            '* @type        roString
            '* @get         GetDuration
            duration: {
                "GetDuration": function() as Dynamic : return m._data.duration : end function
            }
        },
        methods: {
        }
    }, YoExtension(invalid))
    
    ' Setup and initialise members
    this._data.isvalid      = true
    this._data.extensionxml = root
    
    ' Parse content
    brk = root.GetChildElements()
    if brk.Count() > 0 then
        if brk[0].GetName() = "yospace:AdBreak" then
            if brk[0].HasAttribute("duration") then
                this._data.duration = brk[0].GetAttributes().duration
            end if
        else
            ' Wrong tag name provided
            this._data.isvalid = false
        end if        
    else
        this._data.isvalid = false
    end if
     
    return this
end function

'-----------------------------------------------------------------------------------------------------------
'*
'* Represents a single Extensions node containing Extension elements. currently
'* only YoStream and YoBreak extension types are handled
'* 
'* @class Extensions
'* @constructor
'* @param       roXMLElement    root    The node of the vmap:Extensions XML fragment
'*
function Extensions(root as dynamic) as object
    ' Class definition
    this = MakeClass("Extensions", {
        properties: {
            '* An array of YoExtension objects for each of the extensions encapsulated
            '* by this instance. If there are no extensions, this array will be empty.
            '* 
            '* @property    extensions
            '* @type        roArray of YoExtension
            '* @get         GetExtensions
            extensions: {
                "GetExtensions": function() as Dynamic : return m._data.extensions : end function
            }
        },
        methods: {
            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method  Destroy
            "Destroy":          ys_ext_destroy,

            '* Obtain the first extension class whose type matches
            '* the one supplied.
            '* 
            '* @method  GetFirstOfType
            '* @param   String      typetag     Tag of the extension type
            '* @return  YoExtension First extension which matches the
            '*                      type tag provided (or invalid if there 
            '*                      are no matches)
            "GetFirstOfType":       ys_ext_getfirst,

            '* Obtain the next extension class from the array of extensions
            '* whose type matches the one supplied.
            '* 
            '* @method  GetNextOfType
            '* @param   String      typetag     Tag of the extension type
            '* @param   YoExtension previous    The extension in the array which preceeds
            '*                                  the one we want to try to find. If this is 
            '*                                  invalid then the first match which is found 
            '*                                  will be returned
            '* @return  YoExtension First extension which matches the
            '*                      type tag provided (or invalid if there are no matches)
            "GetNextOfType":        ys_ext_getnext,

            '* Obtain an array of all extensions whose type matches
            '* the one supplied.
            '* 
            '* @method  GetAllOfType
            '* @param   String      typetag     Tag of the extension type
            '* @return  roArray of YoExtension  Array of extensions which match the
            '*                                  type tag provided (or an empty array if there 
            '*                                  are none)
            "GetAllOfType":         ys_ext_getall,

            '* Obtain the type name of the class which represents (and
            '* handles/encapsulates) the supplied Extension tag.
            '* 
            '* @method  GetClassForType
            '* @param   String  typetag     Tag of the extension type
            '* @return  String  Class type name for the supplied tag
            "GetClassForType":      ys_ext_getclass
        }
    })

    ' Setup and initialise members
    this._data.extensions = []
    
    ' Parse content
    ext_tag = root
    
    ' Check if the tag name matches the "Extensions" node
    ' otherwise look for it as a child of the supplied root node
    if ext_tag.GetName() <> ("vmap:Extensions") then
        tags = root.GetNamedElements("vmap:Extensions")
        if (tags.Count() > 0) then
            ext_tag = tags[0]
        else
            YO_WARN("Cannot locate VMAP extensions")
            return this
        end if
    end if
    
    extend = ext_tag.GetNamedElements("vmap:Extension")
    if extend.Count() > 0 then
        ' Extract individual Extension elements from the Extensions section
        for each ext in extend
            if ext.HasAttribute("type") then
                ext_typ = ext.GetAttributes().type
                if ext_typ = "http://www.yospace.com/extension/adbreak" then
                    YO_DEBUG("Adding BREAK extension from VMAP")

                    this._data.extensions.Push(YoBreak(ext))
                else if ext_typ = "http://www.yospace.com/extension/stream" then
                    YO_DEBUG("Adding STREAM extension from VMAP")

                    this._data.extensions.Push(YoStream(ext))
                else
                    YO_DEBUG("Ignoring unknown extension type: {0}", ext_typ)
                end if
            else
                YO_WARN("No type defined for extension")
            end if
        end for
    else
        YO_DEBUG("Empty extensions section")
    end if

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' YoExtension::Destroy()
sub ys_yoe_destroy()
    m._data.extensionxml = invalid
end sub

' YoExtension::GetTypeName()
function ys_yoe_gettypename() as String
    return m._CLASSNAME
end function

' Extensions::Destroy()
sub ys_ext_destroy()
    while (m._data.extensions.Count() > 0)
        ext = m._data.extensions.Pop()
        ext.Destroy()
    end while
    
    m._data.extensions = invalid
end sub

' GetFirstOfType()
function ys_ext_getfirst(typ as String) as object
    return m.GetNextOfType(typ, invalid)
end function
    
' GetNextOfType()
function ys_ext_getnext(typ as String, prev as dynamic) as object
    ret = invalid
    t = m.GetClassForType(typ)
    found = false
    
    if (t <> "") then
        for each ext in m.GetExtensions()
            if ext.GetTypeName() = t then
                if (prev = invalid) or (found = true) then
                    ret = ext
                    exit for
                else if (ext = prev) then
                    found = true
                end if
            end if
        end for
    end if
    
    return ret
end function
    
' GetAllOfType()
function ys_ext_getall(typ as string) as object
    ret = []
    t = m.GetClassForType(typ)
    
    if t <> "" then
        for each ext in m.GetExtensions()
            if ext.GetTypeName() = t then
                ret.Push(ext)
            end if
        end for
    end if
    
    return ret
end function

' GetClassForType()    
function ys_ext_getclass(tag as String) as String
    if tag = "http://www.yospace.com/extension/adbreak" then
        return "YoBreak"
    else if tag = "http://www.yospace.com/extension/stream" then
        return "YoStream"
    end if
    
    return ""
end function    
