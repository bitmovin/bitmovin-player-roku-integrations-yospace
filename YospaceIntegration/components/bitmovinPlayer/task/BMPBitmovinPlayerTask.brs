sub init()
m.top.functionName="_IO1O__O_OI0O"
m.EventListenerTypes=_O11II11O_0O_()
m.BitmovinAsyncOperationWorkerTypes=_IOI0101_IOO_()
m.VideoNodeControlValues=__OO0_IOII001()
m.BitmovinPlayerTaskControlValues=_01I00I1100OO()
m.BitmovinPlayerTaskFieldNames=_0IOO__IOO1__()
end sub
sub runTask(_I_OI0101_O__=invalid)
if isTaskRunning()return 
m.port=CreateObject((Chr(114)+Chr(&H6f)+Chr(77)+Chr(&H65)+Chr(115)+Chr(115)+Chr(97)+Chr(103)+Chr(101)+Chr(&H50)+Chr(111)+Chr(&H72)+Chr(116)))
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS,m.port)
resetState()
m.top.control=m.BitmovinPlayerTaskControlValues.RUN
end sub
sub stopTask(_0I_1__I00II0=invalid)
m.top.control=m.BitmovinPlayerTaskControlValues.stop
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS)
resetState()
if not _I1_I11_1O_0I(m.port)m.port=invalid
end sub
function isTaskRunning(_11II1I0_10O0=invalid)
return m.top.state=m.BitmovinPlayerTaskControlValues.RUN 
end function
sub _IO1O__O_OI0O()
licenseServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(76)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(87)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(101)+Chr(&H72)))
impressionServiceWorker=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(73)+Chr(109)+Chr(112)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(110)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(87)+Chr(111)+Chr(&H72)+Chr(&H6b)+Chr(&H65)+Chr(&H72)))
thumbnailServiceWorker=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H54)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(105)+Chr(108)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H57)+Chr(111)+Chr(&H72)+Chr(107)+Chr(&H65)+Chr(114)))
advertisingServiceWorker=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(&H64)+Chr(118)+Chr(101)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H57)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(101)+Chr(114)))
metadataServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(97)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(87)+Chr(&H6f)+Chr(&H72)+Chr(&H6b)+Chr(101)+Chr(&H72)))
while(1=1)
msg=wait(0,m.port)
if type(msg)=(Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74))
field=msg.GetField()
fieldData=msg.GetData()
if(msg.getNode()=(Chr(&H4d)+Chr(97)+Chr(105)+Chr(110)+Chr(&H56)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(&H6f)))
if field=(Chr(112)+Chr(111)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)) and __IIO1100O100(fieldData,m.previousVideoPosition)
advertisingServiceWorker.callFunc((Chr(99)+Chr(104)+Chr(&H65)+Chr(&H63)+Chr(107)+Chr(&H41)+Chr(&H64)+Chr(115)),field,fieldData)
m.previousVideoPosition=fieldData
else if field=(Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)) and fieldData=(Chr(102)+Chr(&H69)+Chr(110)+Chr(105)+Chr(115)+Chr(&H68)+Chr(101)+Chr(100))
advertisingServiceWorker.callFunc((Chr(99)+Chr(104)+Chr(101)+Chr(&H63)+Chr(107)+Chr(65)+Chr(100)+Chr(115)),field,fieldData)
resetState()
else if field=(Chr(&H64)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e))
advertisingServiceWorker.callFunc((Chr(&H64)+Chr(117)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(67)+Chr(&H68)+Chr(97)+Chr(110)+Chr(103)+Chr(101)+Chr(&H64)),invalid)
end if
else if field=m.BitmovinPlayerTaskFieldNames.SUBSCRIBE
eventListener=fieldData
if eventListener<>invalid
if eventListener.type=m.EventListenerTypes.AD_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(65)+Chr(&H64)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4c)+Chr(&H69)+Chr(&H73)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(&H65)+Chr(114)),eventListener)
else if eventListener.type=m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(83)+Chr(&H63)+Chr(104)+Chr(101)+Chr(100)+Chr(&H75)+Chr(108)+Chr(&H65)+Chr(65)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(97)+Chr(107)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H4c)+Chr(&H69)+Chr(&H73)+Chr(116)+Chr(&H65)+Chr(110)+Chr(101)+Chr(114)),eventListener)
end if
m.top.subscribe=invalid
end if
else if field=m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS and not _I1_I11_1O_0I(m.top.video)
setVideoNodeObservers(m.top.video)
else if field=m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION
asyncOperation=fieldData
if asyncOperation<>invalid
m.top.handleOperation=invalid
asyncOperationWorkerType=asyncOperation.workerType
if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.LICENSE
licenseServiceWorker.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(&H65)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.IMPRESSION
impressionServiceWorker.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(101)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.THUMBNAIL
thumbnailServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(&H65)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.ADVERTISING
advertisingServiceWorker.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(101)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)),asyncOperation,m.top)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.METADATA
metadataServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(&H65)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),asyncOperation)
else 
?(Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(32)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(110)+Chr(111)+Chr(&H74)+Chr(32)+Chr(&H73)+Chr(117)+Chr(112)+Chr(&H70)+Chr(111)+Chr(114)+Chr(116)+Chr(101)+Chr(&H64))
end if
end if
end if
end if
end while
end sub
sub setVideoNodeObservers(_I100OIO___01)
if not isTaskRunning()return 
removeVideoNodeObservers(_I100OIO___01)
_I100OIO___01.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),m.port)
_I100OIO___01.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)),m.port)
_I100OIO___01.observeFieldScoped((Chr(&H64)+Chr(117)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.port)
end sub
sub removeVideoNodeObservers(_0OOIOIO_00I_)
_0OOIOIO_00I_.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)))
_0OOIOIO_00I_.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101)))
_0OOIOIO_00I_.unobserveFieldScoped((Chr(&H64)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(110)))
end sub
function __IIO1100O100(__O0_00O000_I,_O__I1OOIIIO0)
if _I1_I11_1O_0I(_O__I1OOIIIO0)return(1=1) 
return not __011O01OIOOO(__O0_00O000_I,_O__I1OOIIIO0) 
end function
sub resetState(____0O01I0I_I=invalid)
m.previousVideoPosition=invalid
end sub
