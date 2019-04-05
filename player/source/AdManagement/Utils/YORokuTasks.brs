'*
'* BrightScript AdManagement SDK for Roku
'* Copyright (c) 2016-2018 Yospace Technologies Ltd. All Rights Reserved.
'*
'-----------------------------------------------------------------------------------------------------------

'* This class exists solely to bridge language and implementation deficiencies in the Roku
'* platform with regard to missing callbacks, inability to pass function pointers, lack of scoping
'* when interacting with task threads, and RSG restrictions in the ability to load and parse external content.
'*
'* @class YORokuTasks
'* @constructor

' Change this to switch
#const SHOULD_USE_RAF = false
#const USE_LOADER_TASK = true

#if SHOULD_USE_RAF
    Library "Roku_Ads.brs"  ' RAF Modification V2 01/2018
#endif

function YORokuTasks() as Object
    ' Class definition    
    this = MakeClass("YORokuTasks", {
        properties: {
        },
    
        methods: {
            '* <p>Called in order to add a loading job into the URL loading queue.</p>
            '* 
            '* @method  AddFetchJob
            '* @param   roString            url     URL to be retrieved
            '* @param   roFunction          goodcb  Callback to be fired on completion (from yo_Callback)
            '* @param   roFunction          failcb  Callback to be fired on failure (from yo_Callback)
            "AddFetchJob":      yo_rt_addfetchjob,

            "OnLoaderResponse": yo_rt_onloader,
            "CheckJobs":        yo_rt_checkjobs,
            "GetNextId":        yo_rt_getnextid,

            ' These methods allow setting demographic information for use by
            ' the Roku RAF framework.
            "SetContentGenre":  yo_rt_setgenre,  ' RAF Modification V2 01/2018
            "SetContentId":     yo_rt_setid,     ' RAF Modification V2 01/2018
            "SetContentLength": yo_rt_setlength  ' RAF Modification V2 01/2018
        }
    })


    ' Setup and initialise members
    this._data.loadjobs     = {}
    this._data.nextid       = 1

#if USE_LOADER_TASK
    this._data.loader       = CreateObject("roSGNode", "UrlLoader")
    this._data.loader.observeFieldScoped("result", "yo_rt_loaderresponse")
#else
    this._data.loader       = invalid    
#end if

#if SHOULD_USE_RAF
    this._data.adIface = Roku_Ads()     ' RAF Modification
    this._data.adIface.enableAdMeasurements(true)' RAF Modification V2 01/2018
#end if
    
    YO_TRACE("YORokuTasks constructed")
    
    return this
end function

'-----------------------------------------------------------------------------------------------------------
' LOCAL METHOD DEFINITIONS
'-----------------------------------------------------------------------------------------------------------
 
' CheckJobs
sub yo_rt_checkjobs()
    if (m._data.loadjobs.count() > 0) then
        jobid = m._data.loadjobs.Keys()[0]
        job = m._data.loadjobs[jobid]
        if not job.active then
            YO_DEBUG("Making load job: {0} active", jobid)
            
            job.active = true
            
            ' There can be 2 kinds of jobs - either an Associative Array
            ' which indicates that the job is intended for firing using
            ' the Roku RAF framework, or a URL to be loaded externally
            if type(job.url) = "roAssociativeArray" then
                trackObj = job.url              ' RAF Jan. 2018
                
                if invalid <> trackObj["tracking"] and invalid <> trackObj["event"] ' Sanity check RAF Jan. 2018
                    adStruct = {tracking:trackObj.tracking, adServer:invalid}
                    
                    if trackobj.event = "creativeView" and trackObj.tracking[0].event = "impression"
                      event = "impression"
                    else
                      event = trackObj.event
                    end if ' RAF Jan. 2018
                    
                    m._data.adIface.fireTrackingEvents(adStruct, {type:event}) ' non-blocking call RAF Jan.2018
                    yo_rt_loaderresponse("")                                         ' RAF Jan. 2018
                end if                                                   ' RAF Jan. 2018
            else
#if USE_LOADER_TASK    
                ' Use separate URLLoader task        
                m._data.loader.targeturl = job.url
#else                
                ' Use Brightscript Native (because we are running
                ' on a separate task thread already)
                req = CreateObject("roUrlTransfer")
                m._data.loader = req
                m._data.msgport = CreateObject("roMessagePort")
                
                ' Bind and set url request properties
                ' // TODO: Allow binding different certs?
                req.SetCertificatesFile("common:/certs/ca-bundle.crt")
                req.SetMessagePort(m._data.msgport)
                req.SetUrl(job.url)
                
                YO_DEBUG("Performing native URL fetch: {0}", job.url)

                ' Begin the request 
                resp = ""
                scode = -1
                req.AsyncGetToString()
                
                ' This is a continual loop, but is terminated if needed
                while true
                    ' Wait for a message from the url transfer port
                    ' // TODO: Allow customizable timeout value?
                    umsg = wait(15000, m._data.msgport)
                    
                    if umsg <> invalid and type(umsg) = "roUrlEvent" then
                        ' Check if it's a type 1 message, otherwise its
                        ' not yet significant
                        if umsg.GetInt() = 1 then
                            ' Check for a success response
                            scode = umsg.GetResponseCode()
                            if ((scode >= 200) and (scode <= 399)) then
                                resp = umsg.GetString()
                            end if
                            
                            ' But in any case, break out of the inner while loop
                            exit while
                        else
                            ' Ignore types not "1"
                            ' 1 means "Transfer complete". 2 means "Transfer started"
                            ' but is apparently not currently implemented
                        end if
                    else
                        ' An invalid or unexpected message type was received
                        YO_DEBUG("Timeout detected in UrlLoader")
                        exit while
                    end if
                end while

                m.OnLoaderResponse(resp, scode)
#end if
            end if
        else
            YO_DEBUG("Already have an active job. QSize: {0}", m._data.loadjobs.Count())
            'YO_DEBUG("Job is: {0}", job.url)
        end if
    end if
end sub

' AddFetchJob
sub yo_rt_addfetchjob(source as Dynamic, goodcb as Dynamic, failcb as Dynamic)
    #if SHOULD_USE_RAF
        YO_DEBUG("Adding RAF job for event")
    #else
        YO_DEBUG("Adding fetch job")
    #end if

    jobid = m.GetNextID()
    m._data.loadjobs[jobid] = {url: source, onsuccess:goodcb, onfailure: failcb, active:false, loader:invalid}
    m.CheckJobs()
end sub

sub yo_rt_onloader(resp as Dynamic, rcode = 200 as Integer)
    if (type(resp) = "roSGNodeEvent") then
        rcode = resp.getData()
        loadresp = m._data.loader.response
    else
        ' This is a "default" status for non-URLLoader jobs
        loadresp = resp
    end if

    ' Sanity check - there should always be jobs!    
    if (m._data.loadjobs.count() > 0) then
        ' This should be the job which completed
        jobid = m._data.loadjobs.Keys()[0]

        ' Remove the completed job from the queue
        job = m._data.loadjobs[jobid]
        m._data.loadjobs.Delete(jobid)

        ' And finally inform the consumer
        YO_DEBUG("Completed job: {0} with result code: {1}", jobid, rcode)
        if ((rcode >= 200) and (rcode <= 399)) then
            if (job.onsuccess <> invalid) then
                job.onsuccess.invoke(loadresp)
            end if
        else
            if (job.onfailure <> invalid) then
                job.onfailure.invoke(rcode)
            end if
        end if

        ' Check for next task
        m.CheckJobs()
    else
        YO_ERROR("Fetch job complete without pending jobs!")
    end if
end sub

' GetNextId
function yo_rt_getnextid() as String
    rv = StrI(m._data.nextid).Trim()
    m._data.nextid = m._data.nextid + 1

    return rv
end function

' This is a shim function which is called when the observed response
' field in the URL Loader task is modified.
'
' It obtains the correct instance of this class (stored in the Global AA) and calls
' the "real" handler method so that the scope is now correct.
sub yo_rt_loaderresponse(resp as Dynamic)
    bridge = GetGlobalAA().taskman
    bridge.OnLoaderResponse(resp)
end sub

' SetContentGenre
sub yo_rt_setgenre(genres as String, kidsContent as Boolean)
#if SHOULD_USE_RAF
    if (m._data.adIface <> invalid) then
        m._data.adIface.setContentGenre(genres, kidsContent)
    end if
#end if    
end sub

' SetContentId
sub yo_rt_setid(id as String)
#if SHOULD_USE_RAF
    if (m._data.adIface <> invalid) then
        m._data.adIface.setContentId(id)
    end if
#end if    
end sub

' SetContentLength
sub yo_rt_setlength(cl as integer)
#if SHOULD_USE_RAF
    if (m._data.adIface <> invalid) then
        m._data.adIface.setContentLength(cl)
    end if
#end if    
end sub
