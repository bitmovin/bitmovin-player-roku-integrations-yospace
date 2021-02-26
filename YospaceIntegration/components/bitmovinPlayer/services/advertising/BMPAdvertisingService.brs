sub init()
m.adList=[]
m.activeAdBreak=invalid
m.BitmovinComponentIds=_101I__01OO_0()
m.eventListenerFactory=_11I0I_1I10_1()
m.EventListenerTypes=_O0_OI1I_111_()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
m.InternalAdEvents=_1OII_1_0_II_()
end sub
function initializeService(_1__00I1_1O_O,_0OI_1001OI0I)
m.BitmovinPlayer=_1__00I1_1O_O
m.BitmovinPlayerTask=_0OI_1001OI0I
m.video=m.BitmovinPlayer.findNode(m.BitmovinComponentIds.MAIN_VIDEO)
m.adEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.AD_EVENT_LISTENER)
m.scheduleAdBreakEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER)
m.setUpAdHandlerOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(&H41)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER,Chr(0),{"view":m.BitmovinPlayer,"videoNode":m.video,"adContentMetadata":{genre:{name:(Chr(115)+Chr(&H70)+Chr(&H65)+Chr(&H63)+Chr(105)+Chr(&H61)+Chr(&H6c)),isKidsContent:(1=2)},length:1,id:(Chr(&H64)+Chr(&H65)+Chr(102)+Chr(&H61)+Chr(&H75)+Chr(&H6c)+Chr(116)+Chr(&H5f)+Chr(105)+Chr(&H64))}})
end function
function startService(_01__IO_O1I1I=invalid)
___101I1O10_0()
m.isAdRunning=(1=2)
m.setUpAdHandlerOperation.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end function
sub ___101I1O10_0()
m.adEventListener.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(79)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(95)+Chr(49)+Chr(73)+Chr(&H49)+Chr(79)+Chr(&H5f)+Chr(&H5f)+Chr(&H5f)+Chr(79)+Chr(73)+Chr(&H49)+Chr(&H30)))
m.adEventListener.callfunc((Chr(&H73)+Chr(&H75)+Chr(98)+Chr(&H73)+Chr(&H63)+Chr(&H72)+Chr(&H69)+Chr(&H62)+Chr(&H65)),m.BitmovinPlayerTask)
m.scheduleAdBreakEventListener.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(73)+Chr(&H30)+Chr(79)+Chr(&H4f)+Chr(&H49)+Chr(&H30)+Chr(95)+Chr(&H49)+Chr(48)+Chr(73)+Chr(73)+Chr(&H31)))
m.scheduleAdBreakEventListener.callfunc((Chr(&H73)+Chr(117)+Chr(98)+Chr(115)+Chr(99)+Chr(&H72)+Chr(105)+Chr(&H62)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
function stopService(_I1O110_1I1IO=invalid)
_OOOO_1__001O()
m.adEventListener.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)))
m.scheduleAdBreakEventListener.unobserveFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)))
m.adList=[]
m.isAdRunning=(1=2)
m.activeAdBreak=invalid
end function
function getAdList(_1I_0IO00_I_0=invalid)
if type(m.adlist)<>(Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(114)+Chr(114)+Chr(&H61)+Chr(121))return[] 
return m.adList 
end function
function scheduleAds(__I0O_1_0IO_1)
_1OO_I11I1I0I(__I0O_1_0IO_1)
end function
function getActiveAdBreak(___O1OI01I00I=invalid)
return m.activeAdBreak 
end function
function discardAdBreak(_OO01_O0_10__)
_1101I1I00__I(_OO01_O0_10__)
end function
function isAd(_0II100_10_01=invalid)
return m.isAdRunning 
end function
sub _1OO_I11I1I0I(_1_1OO0_00_0O)
scheduleAdsOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(65)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SCHEDULE_ADS,Chr(0),{"adBreaks":_1_1OO0_00_0O})
scheduleAdsOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(95)+Chr(49)+Chr(&H31)+Chr(95)+Chr(73)+Chr(73)+Chr(&H31)+Chr(&H30)+Chr(&H5f)+Chr(&H49)+Chr(79)+Chr(&H4f)))
scheduleAdsOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _1101I1I00__I(_O110O0I01_0I)
discardAdBreakOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK,Chr(0),{"adBreakId":_O110O0I01_0I})
discardAdBreakOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(95)+Chr(95)+Chr(49)+Chr(49)+Chr(&H5f)+Chr(73)+Chr(73)+Chr(&H31)+Chr(&H30)+Chr(&H5f)+Chr(73)+Chr(79)+Chr(79)))
discardAdBreakOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _OOOO_1__001O()
clearAdBreaksOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H41)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS)
clearAdBreaksOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(Chr(&H5f)+Chr(&H5f)+Chr(&H31)+Chr(&H31)+Chr(95)+Chr(73)+Chr(&H49)+Chr(49)+Chr(&H30)+Chr(&H5f)+Chr(&H49)+Chr(79)+Chr(&H4f)))
clearAdBreaksOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub __11_II10_IOO(_IIIO0I0OI10O)
operationResponse=_IIIO0I0OI10O.getData().response
operation=_IIIO0I0OI10O.getRoSGNode()
m.adList=operationResponse.adList
operation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)))
end sub
sub _I0OOI0_I0II1(_1_0_0II0____)
internalAdEventType=_1_0_0II0____.getData().internalEventType
adBreakList=_1_0_0II0____.getData().eventData.adBreakList
m.adList=adBreakList
end sub
sub __1IIO___OII0(__1I__1O111I0)
internalAdEventType=__1I__1O111I0.getData().internalEventType
externalEventData=__1I__1O111I0.getData().externalEventData
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
