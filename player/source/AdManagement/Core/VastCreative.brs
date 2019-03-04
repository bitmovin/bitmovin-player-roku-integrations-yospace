'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------
'*
'* A base class for VAST creative elements
'*
'* @class VASTCreative
'* @constructor
'* @param VASTAd        ad      The ad containing this creative
'* @param roXMLElement  root    The root node of this creative in the VAST XML
'* @param roString      id      The AdID attribute of the Creative node (if present)
'* @param roXMLElement  parent  The parent "Creatives" element which contains this one
'* @param roString      cid     The CreativeID of the Creative node
'*
function VASTCreative(ad as dynamic, root as dynamic, id as String, parent as dynamic, cid as String) as object
    ' Class definition    
    this = MakeClass("VASTCreative", {
        properties: {
            '* Reference to the VASTAd instance which contains this creative
            '* 
            '* @property    ad
            '* @type        VASTAd
            '* @get         GetAd
            ad: {
                "GetAd": function() as Dynamic : return m._data.ad : end function
            },

            '* Root Element object containing the original VAST XML which
            '* was supplied when the class was constructed.
            '* 
            '* @property    root
            '* @type        roXMLElement
            '* @get         GetRoot
            root: {
                "GetRoot": function() as Dynamic : return m._data.root : end function
            },

            '* URL to be opened when the creative is clicked.
            '* 
            '* @property    clickthrough
            '* @type        roString
            '* @get         GetClickThrough
            clickthrough: {
                "GetClickThrough": function() as Dynamic : return m._data.clickthrough : end function
            },

            '* The AdID of the Creative tag provided in the VAST response.
            '* 
            '* @property    adid
            '* @type        roString
            '* @get         GetAdId
            adid: {
                "GetAdId": function() as Dynamic : return m._data.adid : end function
            },

            '* The CreativeID (id) of the Creative tag provided in the VAST response
            '*
            '* @property    creativeid
            '* @type        String
            '* @get         GetCreativeId
            creativeid: {
                "GetCreativeId": function() as Dynamic : return m._data.creativeid : end function
            },

            '* Array of CreativeExtension items, where provided in the VAST XML. Each item
            '* in the array is an Element containing the XML node of each CreativeExtension,
            '* including the <CreativeExtension> start and end tags.
            '* 
            '* @property    extensions
            '* @type        roArray of roXMLElement
            '* @get         GetCreativeExtensions
            extensions: {
                "GetCreativeExtensions": function() as Dynamic : return m._data.extensions : end function
            },

            '* TrackingEvents associated with this creative.
            '* 
            '* @property    tracking
            '* @type        TrackingEvents
            '* @get         GetTracking
            tracking: {
                "GetTracking": function() as Dynamic : return m._data.tracking : end function
            }
        },
    
        methods: {
            ' Internal constructor    
            "construct":            ys_vcre_construct,

            '* Helper method used for shutting down the instance cleanly
            '*
            '* @method Destroy
            "Destroy":              ys_vcre_destroy,

            '* The Track() method should be called whenever a trackable 
            '* event occurs.
            '*
            '* The video player should report these whenever possible, except all the
            '* progress events (start, complete, midpoint and nnnQuartile), which are
            '* dealt with internally and are only reported for Linear Creative elements 
            '*
            '* @method  Track
            '* @param   {String}    ev          The event type to report
            '* @param   {roDouble}  position    The number of seconds into ad playback where the
            '*                                  event ocurred
            '* @param   {String}    asset       The video asset URL being played
            '* @param   {String}    brktime     The total time of the break containing the advert
            "Track":                ys_vcre_track,
            
            '* The TrackProgress() method should be called periodically 
            '* to ensure that tracking of all progress events occurs
            '*
            '* @method  TrackProgress
            '* @param   {String}    ev          The event type to report
            '* @param   {roDouble}  position    The number of seconds into ad playback where the
            '*                                  event ocurred
            '* @param   {String}    asset       The video asset URL being played
            '* @param   {String}    brktime     The total time of the break containing the advert
            "TrackProgress":                ys_vcre_trackprogress
        }
    })

    ' This is a bit of a hack to allow inheritance
    if ad = invalid then
        ' Hack to enable early instantiation
        return this
    end if

    ' Call constructor method    
    this.construct(ad, root, id, parent, cid)

    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------

' construct()
sub ys_vcre_construct(ad as dynamic, root as dynamic, id as String, parent as dynamic, cid as String)
    YO_DEBUG("Late Constructing Creative")
    
    ' Setup and initialise members
    m._data.ad              = ad
    m._data.clickthrough    = invalid
    m._data.adid            = id
    m._data.creativeid      = cid
    m._data.extensions      = []
    
    ' Extract any CreativeExtension elements
    exts = root.GetNamedElements("CreativeExtensions")
    if exts.Count() > 0 then
        for each i in exts
            ext = i.GetNamedElements("CreativeExtension")
            if ext.Count() > 0 then
                for each j in ext
                    m._data.extensions.Push(j)
                end for
            end if
        end for
    end if
    
    ' Setup the root node to point correctly (as it's slightly different
    ' for a NonLinear creative)
    if root.GetName() = "NonLinear" then
        m._data.root = parent
    else
        m._data.root = root
    end if
    
    ' Now use the correctly targeted root node to look for tracking tags
    if Type(m._data.root) = "roXMLElement" then
        m._data.tracking = TrackingEvents(m._data.root, ad)
    else
        ' Convert an array of single element to actual element (using Simplify)
        m._data.tracking = TrackingEvents(m._data.root.Simplify(), ad)
    end if
end sub

' Destroy()
sub ys_vcre_destroy()
    m._data.root = invalid
    m._data.extensions = invalid
    
    if (m._data.tracking <> invalid) then
        m._data.tracking.Destroy()
    end if
    
    m._data.tracking = invalid
end sub

' Track()
sub ys_vcre_track(event as String, position as Double, asset as String, brktime as String)
    mac = {}
    mac["CONTENTPLAYHEAD"] = yo_TimecodeToString(position)
    mac["ASSETURI"] = asset
    mac["YO:ACTUAL_DURATION"] = brktime
    
    m._data.tracking.Track(event, mac, asset)
    
    m._data.tracking.ProgressTrack(mac, m._data.duration, position)
end sub

sub ys_vcre_trackprogress(position as Double, asset as String, brktime as String)
    mac = {}
    mac["CONTENTPLAYHEAD"] = yo_TimecodeToString(position)
    mac["ASSETURI"] = asset
    mac["YO:ACTUAL_DURATION"] = brktime
    
    m._data.tracking.ProgressTrack(mac, m._data.duration, position)
end sub

