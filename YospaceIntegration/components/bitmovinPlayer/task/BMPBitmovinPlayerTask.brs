sub init()
m.top.functionName="_I01II_O1O0O_"
m.EventListenerTypes=__OOO___0_0O1()
m.BitmovinAsyncOperationWorkerTypes=_0OO1II_01I01()
m.VideoNodeControlValues=_IO11II0I_OIO()
m.BitmovinPlayerTaskControlValues=_IOOO0II0_OIO()
m.BitmovinPlayerTaskFieldNames=_O11II0OO_IOO()
end sub
sub runTask(__1110O10__1O=invalid)
if isTaskRunning()return 
m.port=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(77)+Chr(101)+Chr(&H73)+Chr(115)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(80)+Chr(&H6f)+Chr(114)+Chr(&H74)))
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS,m.port)
resetState()
m.top.control=m.BitmovinPlayerTaskControlValues.RUN
end sub
sub stopTask(_0I_010I___I_=invalid)
m.top.control=m.BitmovinPlayerTaskControlValues.stop
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS)
resetState()
if not __OOI0OI11_O0(m.port)m.port=invalid
end sub
function isTaskRunning(__0_0_00I001I=invalid)
return m.top.state=m.BitmovinPlayerTaskControlValues.RUN 
end function
sub _I01II_O1O0O_()
licenseServiceWorker=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(87)+Chr(&H6f)+Chr(114)+Chr(107)+Chr(101)+Chr(&H72)))
impressionServiceWorker=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H49)+Chr(&H6d)+Chr(&H70)+Chr(&H72)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)+Chr(&H57)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(&H72)))
thumbnailServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(84)+Chr(104)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H57)+Chr(&H6f)+Chr(&H72)+Chr(&H6b)+Chr(101)+Chr(&H72)))
advertisingServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(65)+Chr(100)+Chr(&H76)+Chr(101)+Chr(114)+Chr(&H74)+Chr(105)+Chr(115)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H57)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(114)))
metadataServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H4d)+Chr(101)+Chr(&H74)+Chr(&H61)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(97)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)+Chr(87)+Chr(111)+Chr(&H72)+Chr(107)+Chr(&H65)+Chr(&H72)))
while(1=1)
msg=wait(0,m.port)
if type(msg)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74))
field=msg.GetField()
fieldData=msg.GetData()
if(msg.getNode()=(Chr(77)+Chr(&H61)+Chr(&H69)+Chr(&H6e)+Chr(&H56)+Chr(&H69)+Chr(&H64)+Chr(101)+Chr(111)))
if field=(Chr(112)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(110)) and _IO_OIIO1O_IO(fieldData,m.previousVideoPosition)
advertisingServiceWorker.callFunc((Chr(&H63)+Chr(104)+Chr(101)+Chr(&H63)+Chr(107)+Chr(65)+Chr(100)+Chr(115)),field,fieldData)
m.previousVideoPosition=fieldData
else if field=(Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)) and fieldData=(Chr(102)+Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H73)+Chr(104)+Chr(101)+Chr(&H64))
advertisingServiceWorker.callFunc((Chr(99)+Chr(&H68)+Chr(101)+Chr(&H63)+Chr(&H6b)+Chr(65)+Chr(100)+Chr(115)),field,fieldData)
resetState()
else if field=(Chr(&H64)+Chr(117)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110))
advertisingServiceWorker.callFunc((Chr(&H64)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(67)+Chr(104)+Chr(97)+Chr(&H6e)+Chr(103)+Chr(101)+Chr(100)),invalid)
end if
else if field=m.BitmovinPlayerTaskFieldNames.SUBSCRIBE
eventListener=fieldData
if eventListener<>invalid
if eventListener.type=m.EventListenerTypes.AD_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(100)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4c)+Chr(&H69)+Chr(&H73)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(101)+Chr(&H72)),eventListener)
else if eventListener.type=m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H53)+Chr(&H63)+Chr(104)+Chr(&H65)+Chr(&H64)+Chr(&H75)+Chr(&H6c)+Chr(&H65)+Chr(&H41)+Chr(100)+Chr(66)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H6b)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4c)+Chr(105)+Chr(115)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(101)+Chr(114)),eventListener)
end if
m.top.subscribe=invalid
end if
else if field=m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS and not __OOI0OI11_O0(m.top.video)
setVideoNodeObservers(m.top.video)
else if field=m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION
asyncOperation=fieldData
if asyncOperation<>invalid
m.top.handleOperation=invalid
asyncOperationWorkerType=asyncOperation.workerType
if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.LICENSE
licenseServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(101)+Chr(99)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.IMPRESSION
impressionServiceWorker.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.THUMBNAIL
thumbnailServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.ADVERTISING
advertisingServiceWorker.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(101)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),asyncOperation,m.top)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.METADATA
metadataServiceWorker.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else 
?(Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(110)+Chr(&H6f)+Chr(116)+Chr(&H20)+Chr(&H73)+Chr(&H75)+Chr(112)+Chr(&H70)+Chr(&H6f)+Chr(114)+Chr(116)+Chr(&H65)+Chr(100))
end if
end if
end if
end if
end while
end sub
sub setVideoNodeObservers(_I0_I_O010OI_)
if not isTaskRunning()return 
removeVideoNodeObservers(_I0_I_O010OI_)
_I0_I_O010OI_.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.port)
_I0_I_O010OI_.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H65)),m.port)
_I0_I_O010OI_.observeFieldScoped((Chr(&H64)+Chr(&H75)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),m.port)
end sub
sub removeVideoNodeObservers(__O_1O_0I0I0I)
__O_1O_0I0I0I.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)))
__O_1O_0I0I0I.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H65)))
__O_1O_0I0I0I.unobserveFieldScoped((Chr(100)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)))
end sub
function _IO_OIIO1O_IO(_0OO_O00II11_,_I0O1I_OI_00O)
if __OOI0OI11_O0(_I0O1I_OI_00O)return(1=1) 
return not _OO_100100O1O(_0OO_O00II11_,_I0O1I_OI_00O) 
end function
sub resetState(_I_O1I_I0I_1O=invalid)
m.previousVideoPosition=invalid
end sub
