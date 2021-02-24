sub init()
m.adList=[]
m.activeAdBreak=invalid
m.BitmovinComponentIds=_1011I__1I0OI()
m.eventListenerFactory=_OI__1OO1O0OI()
m.EventListenerTypes=__OOO___0_0O1()
m.asyncOperationFactory=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(70)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.BitmovinAsyncOperationTypes=___IO10I10001()
m.InternalAdEvents=_0_110I0I1_1_()
end sub
function initializeService(___OO0I0IIOOO,_0I_0_1_O0O_0)
m.BitmovinPlayer=___OO0I0IIOOO
m.BitmovinPlayerTask=_0I_0_1_O0O_0
m.video=m.BitmovinPlayer.findNode(m.BitmovinComponentIds.MAIN_VIDEO)
m.adEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.AD_EVENT_LISTENER)
m.scheduleAdBreakEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER)
m.setUpAdHandlerOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER,Chr(0),{"view":m.BitmovinPlayer,"videoNode":m.video,"adContentMetadata":{genre:{name:(Chr(&H73)+Chr(&H70)+Chr(101)+Chr(99)+Chr(105)+Chr(97)+Chr(&H6c)),isKidsContent:(1=2)},length:1,id:(Chr(&H64)+Chr(101)+Chr(102)+Chr(97)+Chr(117)+Chr(108)+Chr(&H74)+Chr(&H5f)+Chr(&H69)+Chr(&H64))}})
end function
function startService(_0100O_11_OI1=invalid)
_O00O010IOI1_()
m.isAdRunning=(1=2)
m.setUpAdHandlerOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
end function
sub _O00O010IOI1_()
m.adEventListener.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(100)),(Chr(&H5f)+Chr(49)+Chr(48)+Chr(95)+Chr(95)+Chr(&H31)+Chr(&H31)+Chr(49)+Chr(&H49)+Chr(&H30)+Chr(&H49)+Chr(79)+Chr(48)))
m.adEventListener.callfunc((Chr(115)+Chr(117)+Chr(98)+Chr(&H73)+Chr(99)+Chr(114)+Chr(105)+Chr(&H62)+Chr(101)),m.BitmovinPlayerTask)
m.scheduleAdBreakEventListener.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(&H4f)+Chr(79)+Chr(73)+Chr(79)+Chr(&H4f)+Chr(&H5f)+Chr(48)+Chr(&H49)+Chr(&H49)+Chr(49)+Chr(48)+Chr(&H4f)))
m.scheduleAdBreakEventListener.callfunc((Chr(115)+Chr(117)+Chr(98)+Chr(&H73)+Chr(&H63)+Chr(114)+Chr(&H69)+Chr(98)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
function stopService(_II0O01_1O0_0=invalid)
_1_O_OO0II_1O()
m.adEventListener.unobserveFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(&H64)))
m.scheduleAdBreakEventListener.unobserveFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)))
m.adList=[]
m.isAdRunning=(1=2)
m.activeAdBreak=invalid
end function
function getAdList(_10O0__10O_11=invalid)
if type(m.adlist)<>(Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(114)+Chr(&H72)+Chr(97)+Chr(&H79))return[] 
return m.adList 
end function
function scheduleAds(_0O10__10OI_0)
__011I1___00O(_0O10__10OI_0)
end function
function getActiveAdBreak(_O0I1IO010O1I=invalid)
return m.activeAdBreak 
end function
function discardAdBreak(_I_01II0_0OI1)
_0O_0_II_O01_(_I_01II0_0OI1)
end function
function isAd(_I1O101_I_0O_=invalid)
return m.isAdRunning 
end function
sub __011I1___00O(_0OO_O10I0OO1)
scheduleAdsOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.SCHEDULE_ADS,Chr(0),{"adBreaks":_0OO_O10I0OO1})
scheduleAdsOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)),(Chr(&H5f)+Chr(&H5f)+Chr(49)+Chr(&H5f)+Chr(&H5f)+Chr(&H4f)+Chr(79)+Chr(&H30)+Chr(&H30)+Chr(48)+Chr(48)+Chr(49)+Chr(95)))
scheduleAdsOperation.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _0O_0_II_O01_(_I1OI000II01_)
discardAdBreakOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK,Chr(0),{"adBreakId":_I1OI000II01_})
discardAdBreakOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(&H74)),(Chr(&H5f)+Chr(95)+Chr(&H31)+Chr(95)+Chr(&H5f)+Chr(&H4f)+Chr(&H4f)+Chr(48)+Chr(&H30)+Chr(48)+Chr(48)+Chr(&H31)+Chr(95)))
discardAdBreakOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(&H74)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _1_O_OO0II_1O()
clearAdBreaksOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS)
clearAdBreaksOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)),(Chr(95)+Chr(95)+Chr(49)+Chr(&H5f)+Chr(&H5f)+Chr(&H4f)+Chr(&H4f)+Chr(&H30)+Chr(48)+Chr(&H30)+Chr(48)+Chr(49)+Chr(95)))
clearAdBreaksOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub __1__OO00001_(__0O00_101O_0)
operationResponse=__0O00_101O_0.getData().response
operation=__0O00_101O_0.getRoSGNode()
m.adList=operationResponse.adList
operation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)))
end sub
sub _OOIOO_0II10O(_0O0_II001I_0)
internalAdEventType=_0O0_II001I_0.getData().internalEventType
adBreakList=_0O0_II001I_0.getData().eventData.adBreakList
m.adList=adBreakList
end sub
sub _10__111I0IO0(_IOO01_O0IO_1)
internalAdEventType=_IOO01_O0IO_1.getData().internalEventType
externalEventData=_IOO01_O0IO_1.getData().externalEventData
if internalAdEventType=m.InternalAdEvents.AD_BREAK_STARTED
m.BitmovinPlayer.adBreakStarted=externalEventData
m.activeAdBreak=externalEventData.adBreak
else if internalAdEventType=m.InternalAdEvents.AD_BREAK_FINISHED
m.BitmovinPlayer.adBreakFinished=externalEventData
m.activeAdBreak=invalid
m.BitmovinPlayer.setFocus((1=1))
else if internalAdEventType=m.InternalAdEvents.AD_INTERACTION
m.BitmovinPlayer.adInteraction=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_ERROR
m.isAdRunning=(1=2)
m.BitmovinPlayer.adError=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_FINISHED
m.isAdRunning=(1=2)
m.BitmovinPlayer.adFinished=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_QUARTILE
m.BitmovinPlayer.adQuartile=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_STARTED
m.isAdRunning=(1=1)
m.top.eventOccurred=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_SKIPPED
m.isAdRunning=(1=2)
m.BitmovinPlayer.adSkipped=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_PAUSE or internalAdEventType=m.InternalAdEvents.AD_RESUME or internalAdEventType=m.InternalAdEvents.AD_PLAYHEAD
m.top.eventOccurred=externalEventData
end if
end sub
