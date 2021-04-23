sub init()
m.top.functionName="__O101I011I_0"
m.EventListenerTypes=_00I1100OI_OI()
m.BitmovinAsyncOperationWorkerTypes=_I_II1110O__1()
m.VideoNodeControlValues=__11110O_I_0I()
m.BitmovinPlayerTaskControlValues=_IIII_1001I11()
m.BitmovinPlayerTaskFieldNames=_O__0___O1_I_()
end sub
sub runTask(_11000_O_I_11=invalid)
if isTaskRunning()return 
m.port=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(77)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(101)+Chr(&H50)+Chr(&H6f)+Chr(114)+Chr(116)))
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS,m.port)
resetState()
m.top.control=m.BitmovinPlayerTaskControlValues.RUN
end sub
sub stopTask(_OI0_I1___O_0=invalid)
m.top.control=m.BitmovinPlayerTaskControlValues.stop
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS)
resetState()
if not _1100IO1O_0_I(m.port)m.port=invalid
end sub
function isTaskRunning(_1O01I0OOIOI1=invalid)
return m.top.state=m.BitmovinPlayerTaskControlValues.RUN 
end function
sub __O101I011I_0()
licenseServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(76)+Chr(105)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H57)+Chr(111)+Chr(&H72)+Chr(107)+Chr(101)+Chr(114)))
impressionServiceWorker=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(73)+Chr(109)+Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(110)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(87)+Chr(111)+Chr(&H72)+Chr(&H6b)+Chr(101)+Chr(&H72)))
thumbnailServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(84)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(87)+Chr(111)+Chr(&H72)+Chr(&H6b)+Chr(101)+Chr(114)))
advertisingServiceWorker=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(100)+Chr(118)+Chr(&H65)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(87)+Chr(&H6f)+Chr(114)+Chr(107)+Chr(101)+Chr(114)))
metadataServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H4d)+Chr(&H65)+Chr(116)+Chr(97)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(87)+Chr(&H6f)+Chr(114)+Chr(107)+Chr(101)+Chr(114)))
while(1=1)
msg=wait(0,m.port)
if type(msg)=(Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116))
field=msg.GetField()
fieldData=msg.GetData()
if(msg.getNode()=(Chr(77)+Chr(&H61)+Chr(105)+Chr(&H6e)+Chr(86)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(111)))
if field=(Chr(112)+Chr(111)+Chr(&H73)+Chr(105)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)) and __11_1I1101__(fieldData,m.previousVideoPosition)
advertisingServiceWorker.callFunc((Chr(99)+Chr(104)+Chr(101)+Chr(&H63)+Chr(107)+Chr(65)+Chr(&H64)+Chr(115)),field,fieldData)
m.previousVideoPosition=fieldData
else if field=(Chr(115)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)) and fieldData=(Chr(&H66)+Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H73)+Chr(&H68)+Chr(101)+Chr(&H64))
advertisingServiceWorker.callFunc((Chr(&H63)+Chr(&H68)+Chr(101)+Chr(&H63)+Chr(107)+Chr(&H41)+Chr(&H64)+Chr(&H73)),field,fieldData)
resetState()
else if field=(Chr(&H64)+Chr(117)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110))
advertisingServiceWorker.callFunc((Chr(&H64)+Chr(117)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(67)+Chr(104)+Chr(97)+Chr(110)+Chr(103)+Chr(101)+Chr(&H64)),invalid)
end if
else if field=m.BitmovinPlayerTaskFieldNames.SUBSCRIBE
eventListener=fieldData
if eventListener<>invalid
if eventListener.type=m.EventListenerTypes.AD_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H41)+Chr(100)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4c)+Chr(105)+Chr(&H73)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H65)+Chr(&H72)),eventListener)
else if eventListener.type=m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(83)+Chr(&H63)+Chr(104)+Chr(101)+Chr(&H64)+Chr(117)+Chr(108)+Chr(101)+Chr(65)+Chr(&H64)+Chr(66)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(107)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4c)+Chr(105)+Chr(115)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(101)+Chr(&H72)),eventListener)
end if
m.top.subscribe=invalid
end if
else if field=m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS and not _1100IO1O_0_I(m.top.video)
setVideoNodeObservers(m.top.video)
else if field=m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION
asyncOperation=fieldData
if asyncOperation<>invalid
m.top.handleOperation=invalid
asyncOperationWorkerType=asyncOperation.workerType
if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.LICENSE
licenseServiceWorker.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(101)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.IMPRESSION
impressionServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.THUMBNAIL
thumbnailServiceWorker.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.ADVERTISING
advertisingServiceWorker.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),asyncOperation,m.top)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.METADATA
metadataServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else 
?(Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H20)+Chr(105)+Chr(100)+Chr(&H20)+Chr(110)+Chr(&H6f)+Chr(&H74)+Chr(&H20)+Chr(&H73)+Chr(&H75)+Chr(112)+Chr(112)+Chr(&H6f)+Chr(114)+Chr(116)+Chr(101)+Chr(&H64))
end if
end if
end if
end if
end while
end sub
sub setVideoNodeObservers(_101__0111I_0)
if not isTaskRunning()return 
removeVideoNodeObservers(_101__0111I_0)
_101__0111I_0.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),m.port)
_101__0111I_0.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)),m.port)
_101__0111I_0.observeFieldScoped((Chr(&H64)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.port)
end sub
sub removeVideoNodeObservers(_O11_0I1O00I_)
_O11_0I1O00I_.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)))
_O11_0I1O00I_.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)))
_O11_0I1O00I_.unobserveFieldScoped((Chr(&H64)+Chr(117)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)))
end sub
function __11_1I1101__(_00O_0__0O___,_II0I__O__0II)
if _1100IO1O_0_I(_II0I__O__0II)return(1=1) 
return not _01IO0_01I_1_(_00O_0__0O___,_II0I__O__0II) 
end function
sub resetState(_0I0O_I_I0__I=invalid)
m.previousVideoPosition=invalid
end sub
