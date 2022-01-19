sub init()
m.adList=[]
m.activeAdBreak=invalid
m.isRunning=(1=2)
m.BitmovinComponentIds=__0I00OO11O0_()
m.eventListenerFactory=_O11OO0O10O1O()
m.EventListenerTypes=_O0IOI0OI1II0()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(111)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
m.InternalAdEvents=_10_0O1IO_O__()
end sub
function initializeService(_011I_I_IO__O)
m.configurationService=_011I_I_IO__O.services.configurationService
m.BitmovinPlayer=_011I_I_IO__O.player
m.BitmovinPlayerTask=_011I_I_IO__O.task
m.video=_011I_I_IO__O.videoNode
m.adEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.AD_EVENT_LISTENER)
m.scheduleAdBreakEventListener=m.eventListenerFactory.createEventListener(m.EventListenerTypes.SCHEDULE_AD_BREAK_EVENT_LISTENER)
m.setUpAdHandlerOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER,Chr(0),{"view":m.BitmovinPlayer,"videoNode":m.video})
end function
function startService(__III01_1O1II=invalid)
if m.isRunning return invalid 
_01O1OIOII01I()
m.isAdRunning=(1=2)
newData=m.setUpAdHandlerOperation.data
newData.options.autoplay=m.configurationService.callFunc((Chr(&H70)+Chr(108)+Chr(&H75)+Chr(99)+Chr(&H6b)+Chr(67)+Chr(111)+Chr(110)+Chr(102)+Chr(&H69)+Chr(103)),[(Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(97)+Chr(&H75)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121))])
m.setUpAdHandlerOperation.callFunc((Chr(117)+Chr(&H70)+Chr(&H64)+Chr(97)+Chr(116)+Chr(101)+Chr(68)+Chr(&H61)+Chr(&H74)+Chr(97)),newData)
m.setUpAdHandlerOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
m.isRunning=(1=1)
end function
sub _01O1OIOII01I()
m.adEventListener.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H30)+Chr(&H4f)+Chr(&H31)+Chr(79)+Chr(&H4f)+Chr(&H31)+Chr(79)+Chr(79)+Chr(&H31)+Chr(48)+Chr(&H49)+Chr(48)))
m.adEventListener.callfunc((Chr(115)+Chr(117)+Chr(98)+Chr(115)+Chr(99)+Chr(&H72)+Chr(105)+Chr(98)+Chr(101)),m.BitmovinPlayerTask)
m.scheduleAdBreakEventListener.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(49)+Chr(95)+Chr(&H31)+Chr(49)+Chr(48)+Chr(&H5f)+Chr(&H49)+Chr(48)+Chr(95)+Chr(48)+Chr(&H49)+Chr(79)))
m.scheduleAdBreakEventListener.callfunc((Chr(115)+Chr(&H75)+Chr(98)+Chr(&H73)+Chr(&H63)+Chr(114)+Chr(105)+Chr(&H62)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
function stopService(_OOOOIIO0IO11=invalid)
_11I_OII1OI01()
m.adEventListener.unobserveFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)))
m.scheduleAdBreakEventListener.unobserveFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(&H64)))
m.adList=[]
m.isAdRunning=(1=2)
m.activeAdBreak=invalid
m.isRunning=(1=2)
end function
function getAdList(_10I1IIO_OI1I=invalid)
if type(m.adlist)<>(Chr(114)+Chr(&H6f)+Chr(65)+Chr(&H72)+Chr(114)+Chr(&H61)+Chr(121))return[] 
return m.adList 
end function
function scheduleAds(__1IO0_I0I___)
_0II01O00OO_O(__1IO0_I0I___)
end function
function initializeDemandApi(__0II0O0I00_1)
_1O1_I_I0O__0(__0II0O0I00_1)
end function
function getActiveAdBreak(_O11OI0_IOI00=invalid)
return m.activeAdBreak 
end function
function discardAdBreak(__1_0_O0_0I01)
_I0_00O0100O0(__1_0_O0_0I01)
end function
function isAd(_00_001_0__OO=invalid)
return m.isAdRunning 
end function
sub customizeAdBufferingScreen(_0__I_10I__01)
__IO0IIO11IOI(_0__I_10I__01)
end sub
sub onVideoError(_1I11__1___1I=invalid)
_11I_I_II_IOO()
end sub
sub checkPrerollAdBreak(_II00IO00IO__=invalid)
_IOIO_I_I111_()
end sub
sub checkAdBreaks(_10O0IO0IOIOI)
__O0OO11IO1I0(_10O0IO0IOIOI)
end sub
sub contentDurationChanged(_I1_0O0011O10=invalid)
_0II01OO11I0_()
end sub
sub updateMetadata(__1IO11_O00OO)
_11101O__0I10(__1IO11_O00OO)
end sub
sub _0II01O00OO_O(_O00I1O_O0OOI)
scheduleAdsOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.SCHEDULE_ADS,Chr(0),{"adBreaks":_O00I1O_O0OOI})
scheduleAdsOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _1O1_I_I0O__0(__0O1_O_I01IO)
initializeDemandApiOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.INITIALIZE_DEMAND_API,Chr(0),{"adConfig":__0O1_O_I01IO})
initializeDemandApiOperation.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _I0_00O0100O0(_I1I01I0001_1)
discardAdBreakOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK,Chr(0),{"adBreakId":_I1I01I0001_1})
discardAdBreakOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _11I_OII1OI01()
clearAdBreaksOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS)
clearAdBreaksOperation.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub __IO0IIO11IOI(_I_1_I_OIOIO_)
customizeAdBufferingScreenAsyncOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.CUSTOMIZE_AD_BUFFERING_SCREEN,Chr(0),{"adBufferingScreenConfiguration":_I_1_I_OIOIO_})
customizeAdBufferingScreenAsyncOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _11I_I_II_IOO()
asyncOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(65)+Chr(&H73)+Chr(121)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.ON_VIDEO_ERROR)
asyncOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub _IOIO_I_I111_()
asyncOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.CHECK_PREROLL_AD_BREAK,Chr(0))
asyncOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
sub __O0OO11IO1I0(_I_10IIII0OO0)
asyncOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.CHECK_AD_BREAKS,Chr(0),_I_10IIII0OO0)
asyncOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _0II01OO11I0_()
asyncOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.CONTENT_DURATION_CHANGED,Chr(0))
asyncOperation.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _11101O__0I10(_IIIIO_1O0I0I)
asyncOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.UPDATE_ADVERTISING_METADATA,Chr(0),_IIIIO_1O0I0I)
asyncOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)),m.BitmovinPlayerTask)
end sub
sub _1_110_I0_0IO(_0O1OO01_IOO0)
internalAdEventType=_0O1OO01_IOO0.getData().type
adBreakList=_0O1OO01_IOO0.getData().data.adBreakList
m.adList=adBreakList
end sub
sub _0O1OO1OO10I0(_1I111O0__1__)
internalAdEventData=_1I111O0__1__.getData()
internalAdEventType=internalAdEventData.type
if internalAdEventType=m.InternalAdEvents.AD_BREAK_STARTED
m.activeAdBreak=internalAdEventData.data
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
m.top.eventOccurred=internalAdEventData
end sub
sub setAdvertisingDebugOutput(_I011IO_O0I10)
_IIO101I_0O00(_I011IO_O0I10)
end sub
sub _IIO101I_0O00(_O11O0I10__I_)
setAdvertisingDebugOutputOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.SET_ADVERTISING_DEBUG_OUTPUT,Chr(0),{"enableAdvertisingDebugOutput":_O11O0I10__I_})
setAdvertisingDebugOutputOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(101)),m.BitmovinPlayerTask)
end sub
