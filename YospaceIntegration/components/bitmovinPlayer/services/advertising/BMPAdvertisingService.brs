sub init()
m.adList=[]
m.activeAdBreak=invalid
m.BitmovinComponentIds=_00I10OOO01OO()
m.eventListenerFactory=_010_I_OI10I_()
m.EventListenerTypes=_1OI01IOII0_I()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(70)+Chr(97)+Chr(99)+Chr(&H74)+Chr(111)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=_001_100I0III()
m.InternalAdEvents=_11_0OIIIOI0O()
end sub
function initializeService(_00I11I0OI101,_1_O011__1O01)
m.BitmovinPlayer=_00I11I0OI101
m.BitmovinPlayerTask=_1_O011__1O01
m.video=m.BitmovinPlayer.findNode(m.BitmovinComponentIds.MAIN_VIDEO)
m.adEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.AD_EVENT_LISTENER)
m.setUpAdHandlerOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER,Chr(0),{"view":m.BitmovinPlayer,"videoNode":m.video,"adContentMetadata":{genre:{name:(Chr(115)+Chr(&H70)+Chr(&H65)+Chr(99)+Chr(&H69)+Chr(97)+Chr(108)),isKidsContent:(1=2)},length:1,id:(Chr(100)+Chr(101)+Chr(&H66)+Chr(&H61)+Chr(&H75)+Chr(&H6c)+Chr(&H74)+Chr(95)+Chr(&H69)+Chr(100))}})
end function
function startService(__0OI1___I___=invalid)
m.adEventListener.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H30)+Chr(79)+Chr(73)+Chr(48)+Chr(73)+Chr(&H30)+Chr(49)+Chr(&H49)+Chr(&H4f)+Chr(95)+Chr(79)+Chr(79)))
m.adEventListener.callfunc((Chr(115)+Chr(&H75)+Chr(98)+Chr(115)+Chr(99)+Chr(114)+Chr(&H69)+Chr(&H62)+Chr(&H65)),m.BitmovinPlayerTask)
m.setUpAdHandlerOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
end function
function stopService(_I1OI00II0000=invalid)
_O0IOO__IO10I()
m.adEventListener.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H64)))
m.adList=[]
m.activeAdBreak=invalid
end function
function getAdList(_IO1OO1O_1000=invalid)
if type(m.adlist)<>(Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H72)+Chr(114)+Chr(&H61)+Chr(121))return[] 
return m.adList 
end function
function scheduleAds(_O__O0I0O__I1)
_O0_1OI_OOI1O(_O__O0I0O__I1)
end function
function getActiveAdBreak(__1IO11I_I_00=invalid)
return m.activeAdBreak 
end function
function discardAdBreak(_011IOO00I1I1)
__II_I_00_OO0(_011IOO00I1I1)
end function
sub _O0_1OI_OOI1O(__00_0O_11OI_)
scheduleAdsOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SCHEDULE_ADS,Chr(0),{"adBreaks":__00_0O_11OI_})
scheduleAdsOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(&H49)+Chr(95)+Chr(&H4f)+Chr(48)+Chr(79)+Chr(&H31)+Chr(49)+Chr(48)+Chr(&H4f)+Chr(48)+Chr(&H30)+Chr(&H30)))
scheduleAdsOperation.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub __II_I_00_OO0(_0O_I_O_I1OOI)
discardAdBreakOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK,Chr(0),{"adBreakId":_0O_I_O_I1OOI})
discardAdBreakOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(Chr(&H5f)+Chr(73)+Chr(95)+Chr(79)+Chr(48)+Chr(79)+Chr(&H31)+Chr(&H31)+Chr(48)+Chr(&H4f)+Chr(&H30)+Chr(&H30)+Chr(&H30)))
discardAdBreakOperation.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _O0IOO__IO10I()
clearAdBreaksOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS)
clearAdBreaksOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(73)+Chr(&H5f)+Chr(&H4f)+Chr(&H30)+Chr(79)+Chr(49)+Chr(49)+Chr(&H30)+Chr(&H4f)+Chr(48)+Chr(&H30)+Chr(48)))
clearAdBreaksOperation.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _I_O0O110O000(_1O0_I11O_110)
operationResponse=_1O0_I11O_110.getData().response
operation=_1O0_I11O_110.getRoSGNode()
m.adList=operationResponse.adList
operation.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(&H74)))
end sub
sub _0OI0I01IO_OO(_O01IOOO1OIOO)
internalAdEventType=_O01IOOO1OIOO.getData().internalEventType
externalEventData=_O01IOOO1OIOO.getData().externalEventData
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
m.BitmovinPlayer.adStarted=externalEventData
else if internalAdEventType=m.InternalAdEvents.AD_SKIPPED
m.BitmovinPlayer.adSkipped=externalEventData
end if
end sub