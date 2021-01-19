sub init()
m.adList=[]
m.activeAdBreak=invalid
m.BitmovinComponentIds=_O0OIII0IO00O()
m.eventListenerFactory=_0I_01O0O__I0()
m.EventListenerTypes=_O11II11O_0O_()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
m.InternalAdEvents=_I1O0IO00IO1O()
end sub
function initializeService(_IO_IIII1IO0I,_1_I11O1_0010)
m.BitmovinPlayer=_IO_IIII1IO0I
m.BitmovinPlayerTask=_1_I11O1_0010
m.video=m.BitmovinPlayer.findNode(m.BitmovinComponentIds.MAIN_VIDEO)
m.adEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.AD_EVENT_LISTENER)
m.scheduleAdBreakEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER)
m.setUpAdHandlerOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER,Chr(0),{"view":m.BitmovinPlayer,"videoNode":m.video,"adContentMetadata":{genre:{name:(Chr(115)+Chr(&H70)+Chr(&H65)+Chr(&H63)+Chr(&H69)+Chr(&H61)+Chr(&H6c)),isKidsContent:(1=2)},length:1,id:(Chr(&H64)+Chr(&H65)+Chr(102)+Chr(97)+Chr(117)+Chr(108)+Chr(&H74)+Chr(&H5f)+Chr(105)+Chr(100))}})
end function
function startService(_1OI0_I_1__I_=invalid)
_O_I1IO1II1OI()
m.setUpAdHandlerOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
end function
sub _O_I1IO1II1OI()
m.adEventListener.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(117)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(95)+Chr(&H49)+Chr(95)+Chr(&H30)+Chr(&H30)+Chr(&H30)+Chr(&H30)+Chr(&H5f)+Chr(&H49)+Chr(&H4f)+Chr(79)+Chr(&H4f)+Chr(&H49)))
m.adEventListener.callfunc((Chr(115)+Chr(&H75)+Chr(&H62)+Chr(115)+Chr(&H63)+Chr(114)+Chr(105)+Chr(98)+Chr(&H65)),m.BitmovinPlayerTask)
m.scheduleAdBreakEventListener.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(49)+Chr(&H4f)+Chr(&H30)+Chr(&H31)+Chr(73)+Chr(&H30)+Chr(95)+Chr(&H5f)+Chr(&H5f)+Chr(79)+Chr(48)+Chr(&H30)))
m.scheduleAdBreakEventListener.callfunc((Chr(115)+Chr(117)+Chr(&H62)+Chr(115)+Chr(&H63)+Chr(114)+Chr(&H69)+Chr(98)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
function stopService(_11I_I_0I_OO0=invalid)
_O_O1I01I_I0O()
m.adEventListener.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(79)+Chr(99)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(100)))
m.scheduleAdBreakEventListener.unobserveFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(100)))
m.adList=[]
m.activeAdBreak=invalid
end function
function getAdList(_IO_O0O_I10OO=invalid)
if type(m.adlist)<>(Chr(&H72)+Chr(111)+Chr(&H41)+Chr(114)+Chr(114)+Chr(&H61)+Chr(&H79))return[] 
return m.adList 
end function
function scheduleAds(_O0OIO__1OO_I)
_II0II0OI0IIO(_O0OIO__1OO_I)
end function
function getActiveAdBreak(__O01_I0_1OOO=invalid)
return m.activeAdBreak 
end function
function discardAdBreak(_11IOI_1I_IO1)
_IOI1IIOO0_II(_11IOI_1I_IO1)
end function
sub _II0II0OI0IIO(_OO_O1II00O_I)
scheduleAdsOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.SCHEDULE_ADS,Chr(0),{"adBreaks":_OO_O1II00O_I})
scheduleAdsOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(&H4f)+Chr(95)+Chr(&H49)+Chr(&H5f)+Chr(&H30)+Chr(&H31)+Chr(48)+Chr(95)+Chr(48)+Chr(48)))
scheduleAdsOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _IOI1IIOO0_II(_0IOOI_011I_O)
discardAdBreakOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK,Chr(0),{"adBreakId":_0IOOI_011I_O})
discardAdBreakOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(79)+Chr(&H49)+Chr(79)+Chr(95)+Chr(&H49)+Chr(95)+Chr(&H30)+Chr(49)+Chr(&H30)+Chr(95)+Chr(48)+Chr(48)))
discardAdBreakOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _O_O1I01I_I0O()
clearAdBreaksOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS)
clearAdBreaksOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(79)+Chr(&H5f)+Chr(&H49)+Chr(&H5f)+Chr(48)+Chr(&H31)+Chr(&H30)+Chr(&H5f)+Chr(&H30)+Chr(&H30)))
clearAdBreaksOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _OIO_I_010_00(_I_IIIO01II10)
operationResponse=_I_IIIO01II10.getData().response
operation=_I_IIIO01II10.getRoSGNode()
m.adList=operationResponse.adList
operation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)))
end sub
sub _1O01I0___O00(_III_OO0IO0OI)
internalAdEventType=_III_OO0IO0OI.getData().internalEventType
adBreakList=_III_OO0IO0OI.getData().eventData.adBreakList
m.adList=adBreakList
end sub
sub _I_0000_IOOOI(_OOOO0_I00__1)
internalAdEventType=_OOOO0_I00__1.getData().internalEventType
externalEventData=_OOOO0_I00__1.getData().externalEventData
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
m.BitmovinPlayer.adError=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_FINISHED
m.BitmovinPlayer.adFinished=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_QUARTILE
m.BitmovinPlayer.adQuartile=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_STARTED
m.top.eventOccurred=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_SKIPPED
m.BitmovinPlayer.adSkipped=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_PAUSE or internalAdEventType=m.InternalAdEvents.AD_RESUME
m.top.eventOccurred=externalEventData
end if
end sub
