sub init()
m.top.functionName="_I_01_O_10I_O"
m.EventListenerTypes=_OO11O11I11_O()
m.BitmovinAsyncOperationWorkerTypes=__III1O00_110()
m.VideoNodeControlValues=_I_0OO0II11OI()
m.BitmovinPlayerTaskControlValues=__III_O0OIOO1()
m.BitmovinPlayerTaskFieldNames=_000_11OO0I_O()
end sub
sub runTask(_1001I1I_1_I_=invalid)
if isTaskRunning()return 
m.port=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(77)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(80)+Chr(&H6f)+Chr(114)+Chr(&H74)))
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS,m.port)
resetState()
m.top.control=m.BitmovinPlayerTaskControlValues.RUN
end sub
sub stopTask(_OO0O110010I_=invalid)
m.top.control=m.BitmovinPlayerTaskControlValues.stop
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS)
resetState()
if not ___0O_II_00I_(m.port)m.port=invalid
end sub
function isTaskRunning(_OO101I1I_101=invalid)
return m.top.state=m.BitmovinPlayerTaskControlValues.RUN 
end function
sub _I_01_O_10I_O()
licenseServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(110)+Chr(115)+Chr(101)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)+Chr(87)+Chr(&H6f)+Chr(114)+Chr(&H6b)+Chr(101)+Chr(&H72)))
impressionServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(73)+Chr(109)+Chr(112)+Chr(114)+Chr(101)+Chr(115)+Chr(115)+Chr(105)+Chr(111)+Chr(110)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(87)+Chr(111)+Chr(&H72)+Chr(107)+Chr(101)+Chr(&H72)))
thumbnailServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(84)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(&H61)+Chr(105)+Chr(108)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H57)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(&H72)))
advertisingServiceWorker=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(&H72)+Chr(116)+Chr(105)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)+Chr(&H57)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(101)+Chr(114)))
metadataServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(97)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(&H57)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(&H72)))
while(1=1)
msg=wait(0,m.port)
if type(msg)=(Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116))
field=msg.GetField()
fieldData=msg.GetData()
if(msg.getNode()=(Chr(&H4d)+Chr(&H61)+Chr(105)+Chr(110)+Chr(&H56)+Chr(&H69)+Chr(100)+Chr(101)+Chr(111)))
if field=(Chr(112)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)) and _1I01II_O01_O(fieldData,m.previousVideoPosition)
advertisingServiceWorker.callFunc((Chr(99)+Chr(&H68)+Chr(101)+Chr(99)+Chr(107)+Chr(65)+Chr(100)+Chr(&H73)),field,fieldData)
m.previousVideoPosition=fieldData
else if field=(Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)) and fieldData=(Chr(&H66)+Chr(&H69)+Chr(110)+Chr(105)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(&H64))
advertisingServiceWorker.callFunc((Chr(&H63)+Chr(104)+Chr(101)+Chr(&H63)+Chr(&H6b)+Chr(&H41)+Chr(&H64)+Chr(115)),field,fieldData)
resetState()
else if field=(Chr(&H64)+Chr(117)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110))
advertisingServiceWorker.callFunc((Chr(100)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H43)+Chr(&H68)+Chr(97)+Chr(110)+Chr(&H67)+Chr(&H65)+Chr(100)),invalid)
end if
else if field=m.BitmovinPlayerTaskFieldNames.SUBSCRIBE
eventListener=fieldData
if eventListener<>invalid
if eventListener.type=m.EventListenerTypes.AD_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H41)+Chr(100)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(76)+Chr(105)+Chr(115)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(&H65)+Chr(114)),eventListener)
else if eventListener.type=m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H53)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(&H64)+Chr(117)+Chr(&H6c)+Chr(101)+Chr(65)+Chr(100)+Chr(&H42)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(107)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(76)+Chr(105)+Chr(&H73)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(&H65)+Chr(&H72)),eventListener)
end if
m.top.subscribe=invalid
end if
else if field=m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS and not ___0O_II_00I_(m.top.video)
setVideoNodeObservers(m.top.video)
else if field=m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION
asyncOperation=fieldData
if asyncOperation<>invalid
m.top.handleOperation=invalid
asyncOperationWorkerType=asyncOperation.workerType
if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.LICENSE
licenseServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.IMPRESSION
impressionServiceWorker.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(101)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.THUMBNAIL
thumbnailServiceWorker.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(101)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.ADVERTISING
advertisingServiceWorker.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(101)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),asyncOperation,m.top)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.METADATA
metadataServiceWorker.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(110)),asyncOperation)
else 
?(Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(32)+Chr(&H69)+Chr(100)+Chr(&H20)+Chr(&H6e)+Chr(&H6f)+Chr(116)+Chr(32)+Chr(115)+Chr(117)+Chr(112)+Chr(&H70)+Chr(&H6f)+Chr(&H72)+Chr(116)+Chr(&H65)+Chr(&H64))
end if
end if
end if
end if
end while
end sub
sub setVideoNodeObservers(_O1_OI0IIII1_)
if not isTaskRunning()return 
removeVideoNodeObservers(_O1_OI0IIII1_)
_O1_OI0IIII1_.observeFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)),m.port)
_O1_OI0IIII1_.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)),m.port)
_O1_OI0IIII1_.observeFieldScoped((Chr(&H64)+Chr(117)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),m.port)
end sub
sub removeVideoNodeObservers(__O0I1OO0OIO1)
__O0I1OO0OIO1.unobserveFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)))
__O0I1OO0OIO1.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)))
__O0I1OO0OIO1.unobserveFieldScoped((Chr(&H64)+Chr(117)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)))
end sub
function _1I01II_O01_O(_OO0OO_IO1I_I,_00OO_OO1O_II)
if ___0O_II_00I_(_00OO_OO1O_II)return(1=1) 
return not _O_OI1IOO1O00(_OO0OO_IO1I_I,_00OO_OO1O_II) 
end function
sub resetState(_OI011___1O__=invalid)
m.previousVideoPosition=invalid
end sub
