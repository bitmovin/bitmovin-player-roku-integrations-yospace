sub init()
m.video=invalid
m.maxTimeShift=invalid
m.BitmovinPlayerState=__O1_I_O1I_0_()
m.VideoNodeControlValues=_10OI1I1I100I()
m.playerState=invalid
m.RokuNativePlayerStates=_OIIIOO00O0I1()
m.stallingHandler=__100I11O1_0O(m.BitmovinPlayerState,m.RokuNativePlayerStates)
m.unsupportedFinishedEventHandler=_0OO11_010O_I(m.RokuNativePlayerStates)
m.bitmovinInternalEventFactory=_IOI0_011_1O1()
m.BitmovinInternalEventTypes=___00__0_1OI_()
end sub
sub initializeService(__010110__OII)
m.video=__010110__OII.videoNode
m.advertisingService=__010110__OII.services.advertisingService
m.configurationService=__010110__OII.services.configurationService
end sub
sub startService(_I_I1_0__II0I=invalid)
setNativePlayerObservers()
end sub
sub play(_I0O1O0O10O_1=invalid)
if not m.stallingHandler.isPrePlaybackStallingInProgress() and(m.playerState=m.BitmovinPlayerState.STALLING or m.playerState=m.BitmovinPlayerState.PLAYING)
return 
end if
onPlay=function()
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.PLAY,(1=1))
end function
if isPaused()
_OOOIII1IO11I((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(114)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.RESUME,onPlay)
else 
_OOOIII1IO11I((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.PLAY,onPlay)
end if
end sub
sub pause(_O11_OOI1OIO_=invalid)
_OOOIII1IO11I((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.PAUSE)
end sub
sub seek(_OI1OI_OOI001)
if isLive()return 
onSeek=function()
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.SEEK,(1=1))
end function
_OOOIII1IO11I((Chr(115)+Chr(&H65)+Chr(&H65)+Chr(107)),_OI1OI_OOI001,onSeek)
end sub
sub instantReplay(_OO0IOOOI1110=invalid)
if m.playerState<>m.BitmovinPlayerState.STALLING and m.playerState<>m.BitmovinPlayerState.PLAYING
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.PLAY,(1=1))
end if
_OOOIII1IO11I((Chr(99)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.INSTANT_REPLAY)
end sub
sub mute(_100IIIO01IIO=invalid)
if isMuted()return 
onMute=function()
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.MUTED,(1=1))
end function
_OOOIII1IO11I((Chr(&H6d)+Chr(117)+Chr(&H74)+Chr(101)),(1=1),onMute)
end sub
sub unmute(_0I_1O0_IO11O=invalid)
if not isMuted()return 
onUnmute=function()
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.UNMUTED,(1=1))
end function
_OOOIII1IO11I((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)),(1=2),onUnmute)
end sub
function isMuted(_I0OIO_0O0OI_=invalid)
return m.video.mute 
end function
function isPaused(_OI0II0OI__I1=invalid)
return _II_OI__1I0I1((Chr(112)+Chr(&H61)+Chr(117)+Chr(&H73)+Chr(101)+Chr(100))) 
end function
function isPlaying(_10I_110__1O0=invalid)
return _II_OI__1I0I1((Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(&H67))) 
end function
function isStalled(_0_I0__I__O0O=invalid)
return _II_OI__1I0I1((Chr(&H62)+Chr(117)+Chr(102)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(&H67))) 
end function
function isLive(_11OOO_O0_OO0=invalid)
if m.video.content=invalid or _O0O10O11O_O0()=invalid return(1=2) 
currentPlaylistItem=_O0O10O11O_O0()
return currentPlaylistItem.live 
end function
sub preload(_01II01__IIO1=invalid)
_OOOIII1IO11I((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.PREBUFFER)
end sub
function getDuration(_O___0I11_OO0=invalid)
if isLive()return-1 
return m.video.duration 
end function
sub timeShift(_1II00OI00O1I)
if isLive()=(1=2)return 
if(_1II00OI00O1I>=getMaxTimeShift()) and(_1II00OI00O1I<=0)
newTime=m.video.duration+_1II00OI00O1I
onTimeShift=function(_I0111_I_0IOI)
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.TIME_SHIFT,_I0111_I_0IOI)
end function
_OOOIII1IO11I((Chr(115)+Chr(&H65)+Chr(101)+Chr(107)),newTime,onTimeShift,_1II00OI00O1I)
end if
end sub
function getTimeShift(_110I00_O10I1=invalid)
if isLive()=(1=2)return invalid 
return(m.Video.position-m.Video.duration) 
end function
function getMaxTimeShift(__0__IO01_0_1=invalid)
if isLive()=(1=2)return invalid 
return m.maxTimeShift 
end function
sub setPlayerState(_I00OO1OI_I01)
if _1OO_0IIOO__0(_I00OO1OI_I01)=m.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
newState=_1OO_0IIOO__0(_I00OO1OI_I01)
m.playerState=newState
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.PLAYER_STATE,{state:newState,video:m.video})
end sub
sub stopService(_I_0O1110O01O=invalid)
removeNativePlayerObservers()
m.maxTimeShift=invalid
internalStopPlayback()
m.playerState=m.BitmovinPlayerState.NONE
end sub
sub internalStopPlayback(_1_0II0O0I_1_=invalid)
if not m.playerState=(Chr(&H65)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72))_OOOIII1IO11I((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(114)+Chr(111)+Chr(108)),m.VideoNodeControlValues.stop)
end sub
sub internalPlay(_IOOO_110011O=invalid)
_OOOIII1IO11I((Chr(99)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.PLAY)
end sub
sub setNativePlayerObservers(_I11_1OI0__1O=invalid)
if _110__I1O00_I(m.video)return 
m.video.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H65)),(Chr(&H5f)+Chr(95)+Chr(49)+Chr(48)+Chr(&H5f)+Chr(95)+Chr(&H31)+Chr(&H31)+Chr(79)+Chr(&H30)+Chr(95)+Chr(49)+Chr(48)))
end sub
sub removeNativePlayerObservers(_1I00_O1_I_1_=invalid)
if _110__I1O00_I(m.video)return 
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)))
end sub
sub _OOOIII1IO11I(_1_II__I1O_I_,_I00_0O10O1_0,__001IO0__IO_=_0I1II10_IO0I,_001__O_0_0IO=invalid)
if m.video.content=invalid
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.WARNING,{code:(Chr(83)+Chr(79)+Chr(&H55)+Chr(&H52)+Chr(&H43)+Chr(69)),message:(Chr(&H4e)+Chr(111)+Chr(32)+Chr(118)+Chr(&H69)+Chr(&H64)+Chr(101)+Chr(111)+Chr(&H20)+Chr(115)+Chr(&H6f)+Chr(&H75)+Chr(&H72)+Chr(&H63)+Chr(101)+Chr(&H20)+Chr(&H69)+Chr(&H73)+Chr(32)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H6c)+Chr(121)+Chr(&H20)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(101)+Chr(&H64)+Chr(46)+Chr(32)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(99)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)+Chr(115)+Chr(32)+Chr(97)+Chr(114)+Chr(101)+Chr(32)+Chr(117)+Chr(&H6e)+Chr(&H61)+Chr(118)+Chr(&H61)+Chr(105)+Chr(108)+Chr(&H61)+Chr(98)+Chr(&H6c)+Chr(101)+Chr(&H2e))})
else 
m.video[_1_II__I1O_I_]=_I00_0O10O1_0
if _001__O_0_0IO=invalid
__001IO0__IO_()
else 
__001IO0__IO_(_001__O_0_0IO)
end if
end if
end sub
function _II_OI__1I0I1(_1_I0__O1OO11)
return m.Video.state=_1_I0__O1OO11 
end function
function _O0O10O11O_O0()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
function _1OO_0IIOO__0(__111I1OIO1OO)
if __111I1OIO1OO=(Chr(&H62)+Chr(117)+Chr(102)+Chr(&H66)+Chr(&H65)+Chr(114)+Chr(105)+Chr(110)+Chr(&H67))return m.BitmovinPlayerState.STALLING 
return __111I1OIO1OO 
end function
sub __10__11O0_10(_0IO1I0_O00__)
if m.video=invalid return 
state=_0IO1I0_O00__.getData()
m.stallingHandler.setStallingStatus(_1OO_0IIOO__0(state))
if not _00II0OI00I1I() and m.stallingHandler.isPrePlaybackStallingInProgress()m.advertisingService.callFunc((Chr(99)+Chr(&H68)+Chr(101)+Chr(&H63)+Chr(107)+Chr(80)+Chr(&H72)+Chr(101)+Chr(&H72)+Chr(&H6f)+Chr(108)+Chr(&H6c)+Chr(65)+Chr(100)+Chr(66)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(107)),invalid)
if not m.unsupportedFinishedEventHandler.isUnsupportedFinishedEvent(state) and state<>m.RokuNativePlayerStates.STOPPED
setPlayerState(state)
end if
m.unsupportedFinishedEventHandler.setLastNativePlayerState(state)
end sub
function getPlayerState()
if m.video=invalid return invalid 
return m.video.state 
end function
function _00II0OI00I1I()
return _1I0_00II1_II(m.configurationService.callFunc((Chr(112)+Chr(108)+Chr(117)+Chr(&H63)+Chr(107)+Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(&H67)),[(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(98)+Chr(97)+Chr(&H63)+Chr(107)),(Chr(97)+Chr(117)+Chr(&H74)+Chr(111)+Chr(112)+Chr(108)+Chr(&H61)+Chr(121))])) 
end function
