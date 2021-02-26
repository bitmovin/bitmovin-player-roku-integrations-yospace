sub init()
m.top.functionName="_OOI_01IIO00I"
m.EventListenerTypes=_O0_OI1I_111_()
m.BitmovinAsyncOperationWorkerTypes=_1____II01O0O()
m.VideoNodeControlValues=_10IO_1_OOI__()
m.BitmovinPlayerTaskControlValues=_0I0O_11O_1IO()
m.BitmovinPlayerTaskFieldNames=_00I1I_O0100O()
end sub
sub runTask(_I011I0___O10=invalid)
if isTaskRunning()return 
m.port=CreateObject((Chr(114)+Chr(111)+Chr(&H4d)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H61)+Chr(&H67)+Chr(101)+Chr(80)+Chr(&H6f)+Chr(&H72)+Chr(&H74)))
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS,m.port)
resetState()
m.top.control=m.BitmovinPlayerTaskControlValues.RUN
end sub
sub stopTask(_11_0O_O01_OI=invalid)
m.top.control=m.BitmovinPlayerTaskControlValues.stop
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS)
resetState()
if not _OO_O1_O1O0O_(m.port)m.port=invalid
end sub
function isTaskRunning(_11_O_O__101_=invalid)
return m.top.state=m.BitmovinPlayerTaskControlValues.RUN 
end function
sub _OOI_01IIO00I()
licenseServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(76)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(&H57)+Chr(&H6f)+Chr(114)+Chr(107)+Chr(&H65)+Chr(&H72)))
impressionServiceWorker=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H49)+Chr(109)+Chr(112)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)+Chr(87)+Chr(111)+Chr(114)+Chr(107)+Chr(&H65)+Chr(&H72)))
thumbnailServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H54)+Chr(&H68)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H57)+Chr(&H6f)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(114)))
advertisingServiceWorker=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(101)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H57)+Chr(111)+Chr(&H72)+Chr(107)+Chr(101)+Chr(114)))
metadataServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H4d)+Chr(&H65)+Chr(116)+Chr(97)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(&H61)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)+Chr(87)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(&H72)))
while(1=1)
msg=wait(0,m.port)
if type(msg)=(Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116))
field=msg.GetField()
fieldData=msg.GetData()
if(msg.getNode()=(Chr(77)+Chr(97)+Chr(105)+Chr(&H6e)+Chr(86)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(&H6f)))
if field=(Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)) and _IO_OI1OO_00O(fieldData,m.previousVideoPosition)
advertisingServiceWorker.callFunc((Chr(&H63)+Chr(104)+Chr(101)+Chr(&H63)+Chr(&H6b)+Chr(65)+Chr(100)+Chr(115)),field,fieldData)
m.previousVideoPosition=fieldData
else if field=(Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)) and fieldData=(Chr(&H66)+Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(100))
advertisingServiceWorker.callFunc((Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(&H63)+Chr(107)+Chr(65)+Chr(&H64)+Chr(115)),field,fieldData)
resetState()
else if field=(Chr(&H64)+Chr(&H75)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110))
advertisingServiceWorker.callFunc((Chr(100)+Chr(&H75)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H43)+Chr(104)+Chr(&H61)+Chr(&H6e)+Chr(103)+Chr(&H65)+Chr(&H64)),invalid)
end if
else if field=m.BitmovinPlayerTaskFieldNames.SUBSCRIBE
eventListener=fieldData
if eventListener<>invalid
if eventListener.type=m.EventListenerTypes.AD_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(65)+Chr(&H64)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(76)+Chr(105)+Chr(&H73)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H65)+Chr(114)),eventListener)
else if eventListener.type=m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H53)+Chr(99)+Chr(&H68)+Chr(101)+Chr(&H64)+Chr(&H75)+Chr(&H6c)+Chr(&H65)+Chr(&H41)+Chr(&H64)+Chr(&H42)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H6b)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(76)+Chr(105)+Chr(115)+Chr(116)+Chr(101)+Chr(110)+Chr(&H65)+Chr(114)),eventListener)
end if
m.top.subscribe=invalid
end if
else if field=m.BitmovinPlayerTaskFieldNames.SET_VIDEO_NODE_OBSERVERS and not _OO_O1_O1O0O_(m.top.video)
setVideoNodeObservers(m.top.video)
else if field=m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION
asyncOperation=fieldData
if asyncOperation<>invalid
m.top.handleOperation=invalid
asyncOperationWorkerType=asyncOperation.workerType
if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.LICENSE
licenseServiceWorker.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.IMPRESSION
impressionServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.THUMBNAIL
thumbnailServiceWorker.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.ADVERTISING
advertisingServiceWorker.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),asyncOperation,m.top)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.METADATA
metadataServiceWorker.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),asyncOperation)
else 
?(Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H20)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(&H6e)+Chr(111)+Chr(&H74)+Chr(&H20)+Chr(&H73)+Chr(&H75)+Chr(&H70)+Chr(&H70)+Chr(&H6f)+Chr(114)+Chr(116)+Chr(&H65)+Chr(100))
end if
end if
end if
end if
end while
end sub
sub setVideoNodeObservers(__O1IOI10II11)
if not isTaskRunning()return 
removeVideoNodeObservers(__O1IOI10II11)
__O1IOI10II11.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)),m.port)
__O1IOI10II11.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)),m.port)
__O1IOI10II11.observeFieldScoped((Chr(100)+Chr(117)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)),m.port)
end sub
sub removeVideoNodeObservers(__I_OOI0I_IOI)
__I_OOI0I_IOI.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(&H73)+Chr(105)+Chr(116)+Chr(105)+Chr(111)+Chr(110)))
__I_OOI0I_IOI.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)))
__I_OOI0I_IOI.unobserveFieldScoped((Chr(100)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)))
end sub
function _IO_OI1OO_00O(_0OO0111O1_1I,_1IO_O0_O__10)
if _OO_O1_O1O0O_(_1IO_O0_O__10)return(1=1) 
return not __1IO010110_I(_0OO0111O1_1I,_1IO_O0_O__10) 
end function
sub resetState(_O_O01O11OI0O=invalid)
m.previousVideoPosition=invalid
end sub
