sub init()
m.top.functionName="_OIOI0II_0I__"
m.EventListenerTypes=_O0IOI0OI1II0()
m.BitmovinAsyncOperationWorkerTypes=_11O1101_1011()
m.BitmovinPlayerTaskControlValues=_I_I010110O0_()
m.BitmovinPlayerTaskFieldNames=_1_O1O01OI_I_()
end sub
sub runTask(_00OO0_0O1I0I=invalid)
if isTaskRunning()return 
m.port=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H4d)+Chr(&H65)+Chr(115)+Chr(115)+Chr(97)+Chr(&H67)+Chr(101)+Chr(&H50)+Chr(&H6f)+Chr(114)+Chr(116)))
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION,m.port)
m.top.observeFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE,m.port)
m.top.control=m.BitmovinPlayerTaskControlValues.RUN
end sub
sub stopTask(_I011_OO1I00O=invalid)
m.top.control=m.BitmovinPlayerTaskControlValues.stop
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION)
m.top.unobserveFieldScoped(m.BitmovinPlayerTaskFieldNames.SUBSCRIBE)
if not _110__I1O00_I(m.port)m.port=invalid
end sub
function isTaskRunning(_110_OI111OO0=invalid)
return m.top.state=m.BitmovinPlayerTaskControlValues.RUN 
end function
sub _OIOI0II_0I__()
licenseServiceWorker=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H4c)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H57)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(114)))
impressionServiceWorker=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(73)+Chr(109)+Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H57)+Chr(&H6f)+Chr(114)+Chr(107)+Chr(101)+Chr(&H72)))
thumbnailServiceWorker=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H54)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(87)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(101)+Chr(&H72)))
advertisingServiceWorker=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(65)+Chr(100)+Chr(&H76)+Chr(101)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H57)+Chr(111)+Chr(&H72)+Chr(107)+Chr(&H65)+Chr(114)))
metadataServiceWorker=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(77)+Chr(101)+Chr(&H74)+Chr(&H61)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(97)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)+Chr(87)+Chr(&H6f)+Chr(&H72)+Chr(107)+Chr(101)+Chr(114)))
while(1=1)
msg=wait(0,m.port)
if type(msg)=(Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74))
field=msg.GetField()
fieldData=msg.GetData()
if field=m.BitmovinPlayerTaskFieldNames.SUBSCRIBE
eventListener=fieldData
if eventListener<>invalid
if eventListener.type=m.EventListenerTypes.AD_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H41)+Chr(100)+Chr(69)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4c)+Chr(105)+Chr(&H73)+Chr(&H74)+Chr(101)+Chr(110)+Chr(101)+Chr(114)),eventListener)
else if eventListener.type=m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER
advertisingServiceWorker.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H53)+Chr(99)+Chr(104)+Chr(101)+Chr(100)+Chr(117)+Chr(&H6c)+Chr(&H65)+Chr(65)+Chr(100)+Chr(66)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(107)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4c)+Chr(&H69)+Chr(&H73)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(101)+Chr(&H72)),eventListener)
end if
m.top.subscribe=invalid
end if
else if field=m.BitmovinPlayerTaskFieldNames.HANDLE_OPERATION
asyncOperation=fieldData
if asyncOperation<>invalid
m.top.handleOperation=invalid
asyncOperationWorkerType=asyncOperation.workerType
if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.LICENSE
licenseServiceWorker.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(&H74)+Chr(101)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.IMPRESSION
impressionServiceWorker.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(116)+Chr(101)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.THUMBNAIL
thumbnailServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.ADVERTISING
advertisingServiceWorker.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)),asyncOperation)
else if asyncOperationWorkerType=m.BitmovinAsyncOperationWorkerTypes.METADATA
metadataServiceWorker.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(101)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),asyncOperation)
else 
?(Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(32)+Chr(105)+Chr(&H64)+Chr(32)+Chr(&H6e)+Chr(111)+Chr(&H74)+Chr(32)+Chr(&H73)+Chr(117)+Chr(112)+Chr(112)+Chr(111)+Chr(114)+Chr(&H74)+Chr(&H65)+Chr(100))
end if
end if
end if
end if
end while
end sub
