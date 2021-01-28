sub init()
m.adList=[]
m.activeAdBreak=invalid
m.BitmovinComponentIds=__01_0O1OO_OI()
m.eventListenerFactory=_0I0010IO_1IO()
m.EventListenerTypes=_OO11O11I11_O()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(111)+Chr(114)+Chr(&H79)))
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
m.InternalAdEvents=_I00OOOO__OI1()
end sub
function initializeService(_11II_00_0___,_I0_1I_00OO__)
m.BitmovinPlayer=_11II_00_0___
m.BitmovinPlayerTask=_I0_1I_00OO__
m.video=m.BitmovinPlayer.findNode(m.BitmovinComponentIds.MAIN_VIDEO)
m.adEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.AD_EVENT_LISTENER)
m.scheduleAdBreakEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER)
m.setUpAdHandlerOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER,Chr(0),{"view":m.BitmovinPlayer,"videoNode":m.video,"adContentMetadata":{genre:{name:(Chr(115)+Chr(&H70)+Chr(101)+Chr(&H63)+Chr(&H69)+Chr(97)+Chr(&H6c)),isKidsContent:(1=2)},length:1,id:(Chr(&H64)+Chr(101)+Chr(&H66)+Chr(&H61)+Chr(&H75)+Chr(&H6c)+Chr(&H74)+Chr(&H5f)+Chr(105)+Chr(100))}})
end function
function startService(_O_O1__1OIO_1=invalid)
_I0I0_11I__10()
m.setUpAdHandlerOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end function
sub _I0I0_11I__10()
m.adEventListener.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(48)+Chr(95)+Chr(&H4f)+Chr(95)+Chr(&H31)+Chr(73)+Chr(95)+Chr(&H5f)+Chr(&H49)+Chr(&H30)+Chr(95)+Chr(&H30)))
m.adEventListener.callfunc((Chr(115)+Chr(&H75)+Chr(&H62)+Chr(&H73)+Chr(&H63)+Chr(114)+Chr(105)+Chr(98)+Chr(&H65)),m.BitmovinPlayerTask)
m.scheduleAdBreakEventListener.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(99)+Chr(117)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(&H30)+Chr(&H5f)+Chr(73)+Chr(&H49)+Chr(95)+Chr(&H31)+Chr(&H4f)+Chr(73)+Chr(48)+Chr(73)+Chr(48)+Chr(&H30)))
m.scheduleAdBreakEventListener.callfunc((Chr(&H73)+Chr(&H75)+Chr(98)+Chr(115)+Chr(&H63)+Chr(&H72)+Chr(105)+Chr(&H62)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
function stopService(_II1O_0O1__OI=invalid)
_0_00IIII10OO()
m.adEventListener.unobserveFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)))
m.scheduleAdBreakEventListener.unobserveFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(100)))
m.adList=[]
m.activeAdBreak=invalid
end function
function getAdList(__I_I1OO_O_I1=invalid)
if type(m.adlist)<>(Chr(114)+Chr(&H6f)+Chr(65)+Chr(114)+Chr(114)+Chr(&H61)+Chr(121))return[] 
return m.adList 
end function
function scheduleAds(_OIO100OII_0I)
_I1I_00__I0I1(_OIO100OII_0I)
end function
function getActiveAdBreak(_0_0_1101O1IO=invalid)
return m.activeAdBreak 
end function
function discardAdBreak(__O_011___I1_)
___1010__O1_0(__O_011___I1_)
end function
sub _I1I_00__I0I1(__I0O0_OO11I1)
scheduleAdsOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.SCHEDULE_ADS,Chr(0),{"adBreaks":__I0O0_OO11I1})
scheduleAdsOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(95)+Chr(48)+Chr(49)+Chr(73)+Chr(&H30)+Chr(&H4f)+Chr(&H49)+Chr(&H4f)+Chr(&H49)+Chr(48)+Chr(&H4f)+Chr(&H30)))
scheduleAdsOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub ___1010__O1_0(_I1O01_II00_O)
discardAdBreakOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK,Chr(0),{"adBreakId":_I1O01_II00_O})
discardAdBreakOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(Chr(&H5f)+Chr(95)+Chr(&H30)+Chr(&H31)+Chr(&H49)+Chr(48)+Chr(&H4f)+Chr(&H49)+Chr(79)+Chr(73)+Chr(48)+Chr(79)+Chr(48)))
discardAdBreakOperation.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _0_00IIII10OO()
clearAdBreaksOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(65)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS)
clearAdBreaksOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)),(Chr(&H5f)+Chr(&H5f)+Chr(48)+Chr(&H31)+Chr(&H49)+Chr(&H30)+Chr(79)+Chr(&H49)+Chr(79)+Chr(73)+Chr(&H30)+Chr(79)+Chr(&H30)))
clearAdBreaksOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub __01I0OIOI0O0(_OO1IIOOI0_O_)
operationResponse=_OO1IIOOI0_O_.getData().response
operation=_OO1IIOOI0_O_.getRoSGNode()
m.adList=operationResponse.adList
operation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)))
end sub
sub _0_II_1OI0I00(_OII1100_0II0)
internalAdEventType=_OII1100_0II0.getData().internalEventType
adBreakList=_OII1100_0II0.getData().eventData.adBreakList
m.adList=adBreakList
end sub
sub _0_O_1I__I0_0(_0O1O00OOO00O)
internalAdEventType=_0O1O00OOO00O.getData().internalEventType
externalEventData=_0O1O00OOO00O.getData().externalEventData
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
