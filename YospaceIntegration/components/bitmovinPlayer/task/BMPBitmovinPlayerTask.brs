sub init()
m.top.functionName="_1I0_0_OI1OII"
m.EventListenerTypes=_1OI01IOII0_I()
m.BitmovinAsyncOperationWorkerTypes=_O__1I_1_0_IO()
m.VideoNodeControlValues=_I1_0O0_1O01_()
m.BitmovinPlayerTaskControlValues=_11O1IO1O110_()
m.BitmovinPlayerTaskFieldNames=__10I_I_0O0_O()
end sub
sub runTask(_010OO0IOO_I0=invalid)
if isTaskRunning()return 
m.port=CreateObject((Chr(114)+Chr(111)+Chr(&H4d)+Chr(&H65)+Chr(115)+Chr(115)+Chr(97)+Chr(&H67)+Chr(101)+Chr(80)+Chr(111)+Chr(&H72)+Chr(116)))
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS,m.port)
resetState()
m.top.control=m.BitmovinPlayerTaskControlValues.RUN
end sub
sub stopTask(_IIO_O_O1O01I=invalid)
m.top.control=m.BitmovinPlayerTaskControlValues.stop
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS)
resetState()
if not _IO1IIIOI0_1O(m.port)m.port=invalid
end sub
function isTaskRunning(_0O0_II00_O0_=invalid)
return m.top.state=m.BitmovinPlayerTaskControlValues.RUN 
end function
sub _1I0_0_OI1OII()
licenseServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(76)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(87)+Chr(111)+Chr(&H72)+Chr(&H6b)+Chr(101)+Chr(&H72)))
impressionServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(73)+Chr(&H6d)+Chr(&H70)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H57)+Chr(111)+Chr(114)+Chr(107)+Chr(&H65)+Chr(&H72)))
thumbnailServiceWorker=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H54)+Chr(104)+Chr(117)+Chr(109)+Chr(&H62)+Chr(110)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)+Chr(87)+Chr(&H6f)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(114)))
advertisingServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(&H64)+Chr(118)+Chr(101)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(87)+Chr(111)+Chr(&H72)+Chr(107)+Chr(&H65)+Chr(114)))
while(1=1)
msg=wait(0,m.port)
if type(msg)=(Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116))
field=msg.GetField()
fieldData=msg.GetData()
if(msg.getNode()=(Chr(77)+Chr(97)+Chr(&H69)+Chr(&H6e)+Chr(86)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(&H6f)))
if field=(Chr(&H70)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)) and _00011OIO0OIO(fieldData,m.previousVideoPosition)
advertisingServiceWorker.callFunc((Chr(&H63)+Chr(&H68)+Chr(101)+Chr(&H63)+Chr(&H6b)+Chr(&H41)+Chr(100)+Chr(115)),field,fieldData)
m.previousVideoPosition=fieldData
else if field=(Chr(&H73)+Chr(116)+Chr(97)+Chr(&H74)+Chr(101)) and fieldData=(Chr(102)+Chr(&H69)+Chr(110)+Chr(105)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(100))
advertisingServiceWorker.callFunc((Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(99)+Chr(&H6b)+Chr(65)+Chr(&H64)+Chr(&H73)),field,fieldData)
resetState()
else if field=(Chr(&H64)+Chr(117)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110))
advertisingServiceWorker.callFunc((Chr(100)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H43)+Chr(104)+Chr(&H61)+Chr(110)+Chr(&H67)+Chr(101)+Chr(100)),invalid)
end if
else if field=m.BitmovinPlayerTaskFieldNames.SUBSCRIBE
eventListener=fieldData
if eventListener<>invalid
if eventListener.type=m.EventListenerTypes.AD_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(65)+Chr(&H64)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H4c)+Chr(&H69)+Chr(115)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(&H65)+Chr(114)),eventListener)
m.top.subscribe=invalid
end if
end if
else if field=m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS and not _IO1IIIOI0_1O(m.top.video)
setVideoNodeObservers(m.top.video)
else if field=m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION
asyncOperation=fieldData
if asyncOperation<>invalid
m.top.handleOperation=invalid
asyncOperationWorkerType=asyncOperation.workerType
if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.LICENSE
licenseServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(&H65)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.IMPRESSION
impressionServiceWorker.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.THUMBNAIL
thumbnailServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.ADVERTISING
advertisingServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),asyncOperation,m.top)
else 
?(Chr(65)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(32)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(&H6e)+Chr(111)+Chr(116)+Chr(&H20)+Chr(115)+Chr(117)+Chr(&H70)+Chr(112)+Chr(&H6f)+Chr(&H72)+Chr(&H74)+Chr(101)+Chr(&H64))
end if
end if
end if
end if
end while
end sub
sub setVideoNodeObservers(_IIO10OI0_I1_)
if not isTaskRunning()return 
removeVideoNodeObservers(_IIO10OI0_I1_)
_IIO10OI0_I1_.observeFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.port)
_IIO10OI0_I1_.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)),m.port)
_IIO10OI0_I1_.observeFieldScoped((Chr(&H64)+Chr(117)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(110)),m.port)
end sub
sub removeVideoNodeObservers(_1_O__0OI1_1O)
_1_O__0OI1_1O.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)))
_1_O__0OI1_1O.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H65)))
_1_O__0OI1_1O.unobserveFieldScoped((Chr(100)+Chr(117)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)))
end sub
function _00011OIO0OIO(_I00101_0OO0_,_0O1_I_OIO___)
if _IO1IIIOI0_1O(_0O1_I_OIO___)return(1=1) 
return not _OIO10I1III0O(_I00101_0OO0_,_0O1_I_OIO___) 
end function
sub resetState(_I_I110IIO11_=invalid)
m.previousVideoPosition=invalid
end sub
