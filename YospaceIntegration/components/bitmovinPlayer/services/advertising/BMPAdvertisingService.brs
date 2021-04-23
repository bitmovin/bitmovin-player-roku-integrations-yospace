sub init()
m.adList=[]
m.activeAdBreak=invalid
m.BitmovinComponentIds=_0I010I1I1II1()
m.eventListenerFactory=___OO0IIII_OI()
m.EventListenerTypes=_00I1100OI_OI()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(114)+Chr(121)))
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
m.InternalAdEvents=__0_0IOO_I0I_()
end sub
function initializeService(_1OI0__11_III,__O0I1O01OOOO,_0__1_1O_1___)
m.configurationService=_0__1_1O_1___
m.BitmovinPlayer=_1OI0__11_III
m.BitmovinPlayerTask=__O0I1O01OOOO
m.video=m.BitmovinPlayer.findNode(m.BitmovinComponentIds.MAIN_VIDEO)
m.adEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.AD_EVENT_LISTENER)
m.scheduleAdBreakEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER)
m.setUpAdHandlerOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER,Chr(0),{"view":m.BitmovinPlayer,"videoNode":m.video})
end function
function startService(_O001OI0_1I10=invalid)
__11I_O01OO0I()
m.isAdRunning=(1=2)
newData=m.setUpAdHandlerOperation.data
newData.options.config=m.configurationService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(&H43)+Chr(111)+Chr(110)+Chr(&H66)+Chr(105)+Chr(&H67)))
m.setUpAdHandlerOperation.callFunc((Chr(117)+Chr(&H70)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(68)+Chr(&H61)+Chr(&H74)+Chr(&H61)),newData)
m.setUpAdHandlerOperation.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end function
sub __11I_O01OO0I()
m.adEventListener.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(95)+Chr(49)+Chr(49)+Chr(&H31)+Chr(95)+Chr(&H5f)+Chr(&H31)+Chr(49)+Chr(&H30)+Chr(&H31)+Chr(&H31)+Chr(79)+Chr(49)))
m.adEventListener.callfunc((Chr(&H73)+Chr(117)+Chr(98)+Chr(115)+Chr(99)+Chr(114)+Chr(&H69)+Chr(&H62)+Chr(101)),m.BitmovinPlayerTask)
m.scheduleAdBreakEventListener.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(99)+Chr(117)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(95)+Chr(&H4f)+Chr(79)+Chr(79)+Chr(48)+Chr(49)+Chr(73)+Chr(95)+Chr(73)+Chr(48)+Chr(&H5f)+Chr(95)))
m.scheduleAdBreakEventListener.callfunc((Chr(&H73)+Chr(117)+Chr(98)+Chr(&H73)+Chr(99)+Chr(&H72)+Chr(&H69)+Chr(98)+Chr(101)),m.BitmovinPlayerTask)
end sub
function stopService(__I00_0O1OO0O=invalid)
__O1_011O10_0()
m.adEventListener.unobserveFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(117)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(&H64)))
m.scheduleAdBreakEventListener.unobserveFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H64)))
m.adList=[]
m.isAdRunning=(1=2)
m.activeAdBreak=invalid
end function
function getAdList(_0OO__OOIOO_O=invalid)
if type(m.adlist)<>(Chr(114)+Chr(111)+Chr(65)+Chr(114)+Chr(114)+Chr(97)+Chr(&H79))return[] 
return m.adList 
end function
function scheduleAds(_O0__010O0OO1)
__1IO0_I0O11I(_O0__010O0OO1)
end function
function getActiveAdBreak(_III0O_1O1_OO=invalid)
return m.activeAdBreak 
end function
function discardAdBreak(_110_00II1OII)
_I_1OO_0_0IO0(_110_00II1OII)
end function
function isAd(_O_O1O__OII0I=invalid)
return m.isAdRunning 
end function
sub setAudienceMeasurementMetadata(_O0OI011O_O01)
__0O__1010I00(_O0OI011O_O01)
end sub
sub customizeAdBufferingScreen(_OO0I_O1_1O0_)
__I11O1I1O__I(_OO0I_O1_1O0_)
end sub
sub updateAdBufferingScreenWithMetadata(_IOOIOI__0_II)
_11I_O0IO0010(_IOOIOI__0_II)
end sub
sub __1IO0_I0O11I(_O1I1_1I0_100)
scheduleAdsOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SCHEDULE_ADS,Chr(0),{"adBreaks":_O1I1_1I0_100})
scheduleAdsOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(&H49)+Chr(&H5f)+Chr(49)+Chr(&H4f)+Chr(73)+Chr(48)+Chr(&H30)+Chr(73)+Chr(79)+Chr(&H49)+Chr(&H31)+Chr(49)))
scheduleAdsOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _I_1OO_0_0IO0(_1III10I__I1_)
discardAdBreakOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK,Chr(0),{"adBreakId":_1III10I__I1_})
discardAdBreakOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(73)+Chr(&H5f)+Chr(49)+Chr(79)+Chr(&H49)+Chr(&H30)+Chr(&H30)+Chr(&H49)+Chr(79)+Chr(73)+Chr(&H31)+Chr(&H31)))
discardAdBreakOperation.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub __O1_011O10_0()
clearAdBreaksOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS)
clearAdBreaksOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(&H49)+Chr(&H5f)+Chr(&H31)+Chr(79)+Chr(73)+Chr(&H30)+Chr(48)+Chr(73)+Chr(&H4f)+Chr(&H49)+Chr(&H31)+Chr(49)))
clearAdBreaksOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(99)+Chr(117)+Chr(&H74)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub __0O__1010I00(_100_10O1O1OI)
audienceMeasurementMetadataAsyncOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SET_AUDIENCE_MEASUREMENT_METADATA,Chr(0),{"metadata":_100_10O1O1OI})
audienceMeasurementMetadataAsyncOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub __I11O1I1O__I(_II1O__OI_II_)
customizeAdBufferingScreenAsyncOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.CUSTOMIZE_AD_BUFFERING_SCREEN,Chr(0),{"adBufferingScreenConfiguration":_II1O__OI_II_})
customizeAdBufferingScreenAsyncOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _11I_O0IO0010(_OO0I0__O0_10)
asyncOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.UPDATE_AD_BUFFERING_SCREEN_WITH_METADATA,Chr(0),{"metadata":_OO0I0__O0_10})
asyncOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(99)+Chr(117)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _I_1OI00IOI11(__IOO1_01OO1I)
operationResponse=__IOO1_01OO1I.getData().response
operation=__IOO1_01OO1I.getRoSGNode()
m.adList=operationResponse.adList
operation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)))
end sub
sub __OOO01I_I0__(_1_0IOI1O1OO0)
internalAdEventType=_1_0IOI1O1OO0.getData().internalEventType
adBreakList=_1_0IOI1O1OO0.getData().eventData.adBreakList
m.adList=adBreakList
end sub
sub _111__11011O1(_OO11_O1I00I_)
internalAdEventType=_OO11_O1I00I_.getData().internalEventType
externalEventData=_OO11_O1I00I_.getData().externalEventData
if internalAdEventType=m.InternalAdEvents.AD_BREAK_STARTED
m.activeAdBreak=externalEventData.adBreak
else if internalAdEventType=m.InternalAdEvents.AD_BREAK_FINISHED
m.activeAdBreak=invalid
m.BitmovinPlayer.setFocus((1=1))
else if internalAdEventType=m.InternalAdEvents.AD_ERROR
m.isAdRunning=(1=2)
else if internalAdEventType=m.InternalAdEvents.AD_FINISHED
m.isAdRunning=(1=2)
else if internalAdEventType=m.InternalAdEvents.AD_STARTED
m.isAdRunning=(1=1)
else if internalAdEventType=m.InternalAdEvents.AD_SKIPPED
m.isAdRunning=(1=2)
end if
m.top.eventOccurred=externalEventData
end sub
