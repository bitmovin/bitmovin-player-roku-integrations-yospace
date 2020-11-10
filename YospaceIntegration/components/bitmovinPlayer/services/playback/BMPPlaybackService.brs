sub init()
m.video=invalid
m.maxTimeShift=invalid
m.BitmovinPlayerState=_O__1___O1OI1()
m.BitmovinFields=__OO101I00OOO()
m.VideoNodeControlValues=_I1_0O0_1O01_()
m.playerState=invalid
m.stallingHandler=__1_O10I0O_I0(m.BitmovinPlayerState)
end sub
sub initializeService(__1I1O0100_1_)
m.video=__1I1O0100_1_
end sub
sub startService(_IIOII_1I_0II=invalid)
m.video.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101)),(Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(73)+Chr(73)+Chr(49)+Chr(73)+Chr(&H30)+Chr(&H30)+Chr(&H5f)+Chr(79)+Chr(48)+Chr(&H5f)))
end sub
sub play(_OO_I1OO010_1=invalid)
if not m.stallingHandler.isPrePlaybackStallingInProgress() and(m.playerState=m.BitmovinPlayerState.STALLING or m.playerState=m.BitmovinPlayerState.PLAYING)
return 
end if
onPlay=function()
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end function
if isPaused()
_O1O0_O1I1I__((Chr(99)+Chr(111)+Chr(110)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.RESUME,onPlay)
else 
_O1O0_O1I1I__((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(114)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.PLAY,onPlay)
end if
end sub
sub pause(_II1O00011I01=invalid)
_O1O0_O1I1I__((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(114)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.PAUSE)
end sub
sub seek(_IIO1_1O__0I_)
if isLive()return 
onSeek=function()
m.top.eventOccurred={eventName:m.BitmovinFields.SEEK,eventData:(1=1)}
end function
_O1O0_O1I1I__((Chr(115)+Chr(101)+Chr(&H65)+Chr(107)),_IIO1_1O__0I_,onSeek)
end sub
sub instantReplay(_OO_I1I10I1_I=invalid)
if m.playerState<>m.BitmovinPlayerState.STALLING and m.playerState<>m.BitmovinPlayerState.PLAYING
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end if
_O1O0_O1I1I__((Chr(99)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(114)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.INSTANT_REPLAY)
end sub
sub mute(___I0_IO1I0I_=invalid)
if isMuted()return 
onMute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.MUTED,eventData:(1=1)}
end function
_O1O0_O1I1I__((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)),(1=1),onMute)
end sub
sub unmute(_O000O_00_0I_=invalid)
if not isMuted()return 
onUnmute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.UNMUTED,eventData:(1=1)}
end function
_O1O0_O1I1I__((Chr(109)+Chr(&H75)+Chr(&H74)+Chr(&H65)),(1=2),onUnmute)
end sub
function isMuted(_1_O_I1IOOI0I=invalid)
return m.video.mute 
end function
function isPaused(_0O0_I1OO_OO_=invalid)
return _0_001_I0_I00((Chr(112)+Chr(97)+Chr(117)+Chr(115)+Chr(101)+Chr(&H64))) 
end function
function isPlaying(__OIIIII0I0__=invalid)
return _0_001_I0_I00((Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(105)+Chr(110)+Chr(&H67))) 
end function
function isStalled(_0010_1O0OI_1=invalid)
return _0_001_I0_I00((Chr(98)+Chr(117)+Chr(&H66)+Chr(102)+Chr(101)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(103))) 
end function
function isLive(__OOO_1_OOOO0=invalid)
if m.video.content=invalid or __O_I_I1OIOO1()=invalid return(1=2) 
currentPlaylistItem=__O_I_I1OIOO1()
return currentPlaylistItem.live 
end function
sub preload(_1O__0O_O0__1=invalid)
_O1O0_O1I1I__((Chr(99)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(108)),m.VideoNodeControlValues.PREBUFFER)
end sub
function getDuration(__0___O0_1II_=invalid)
if isLive()return-1 
return m.video.duration 
end function
sub timeShift(__I_1I0__011O)
if isLive()=(1=2)return 
if(__I_1I0__011O>=getMaxTimeShift()) and(__I_1I0__011O<=0)
newTime=m.video.duration+__I_1I0__011O
onTimeShift=function(_00_I_OI00IO0)
m.top.eventOccurred={eventName:m.BitmovinFields.TIME_SHIFT,eventData:_00_I_OI00IO0}
end function
_O1O0_O1I1I__((Chr(115)+Chr(&H65)+Chr(101)+Chr(107)),newTime,onTimeShift,__I_1I0__011O)
end if
end sub
function getTimeShift(_O0O__1_0_11_=invalid)
if isLive()=(1=2)return invalid 
return(m.Video.position-m.Video.duration) 
end function
function getMaxTimeShift(_O_I__11111OI=invalid)
if isLive()=(1=2)return invalid 
return m.maxTimeShift 
end function
sub setPlayerState(_I1__OI01O1OI)
if _100I_1__00__(_I1__OI01O1OI)=m.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
newState=_100I_1__00__(_I1__OI01O1OI)
m.playerState=newState
m.top.eventOccurred={eventName:m.BitmovinFields.PLAYER_STATE,eventData:newState}
end sub
sub stopService()
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)))
m.maxTimeShift=invalid
m.playerState=m.BitmovinPlayerState.NONE
end sub
sub _O1O0_O1I1I__(_1IO0IIOOO1OO,_11I_01_0O111,_O_0O0O10I010=__001IO1O_0OO,___1011_O_OIO=invalid)
if m.video.content=invalid
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:(Chr(83)+Chr(&H4f)+Chr(85)+Chr(&H52)+Chr(&H43)+Chr(&H45)),message:(Chr(&H4e)+Chr(&H6f)+Chr(&H20)+Chr(&H76)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(111)+Chr(&H20)+Chr(115)+Chr(&H6f)+Chr(117)+Chr(114)+Chr(99)+Chr(&H65)+Chr(&H20)+Chr(&H69)+Chr(&H73)+Chr(&H20)+Chr(99)+Chr(117)+Chr(&H72)+Chr(114)+Chr(101)+Chr(110)+Chr(116)+Chr(&H6c)+Chr(121)+Chr(32)+Chr(108)+Chr(111)+Chr(&H61)+Chr(100)+Chr(&H65)+Chr(100)+Chr(46)+Chr(32)+Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(32)+Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(111)+Chr(108)+Chr(115)+Chr(32)+Chr(97)+Chr(&H72)+Chr(&H65)+Chr(32)+Chr(117)+Chr(110)+Chr(97)+Chr(118)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H61)+Chr(98)+Chr(108)+Chr(&H65)+Chr(46))}}
else 
m.video[_1IO0IIOOO1OO]=_11I_01_0O111
if ___1011_O_OIO=invalid
_O_0O0O10I010()
else 
_O_0O0O10I010(___1011_O_OIO)
end if
end if
end sub
function _0_001_I0_I00(__O101O1_1OI1)
return m.Video.state=__O101O1_1OI1 
end function
function __O_I_I1OIOO1()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
function _100I_1__00__(_I00O000_OI_I)
if _I00O000_OI_I=(Chr(&H62)+Chr(&H75)+Chr(102)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67))return m.BitmovinPlayerState.STALLING 
return _I00O000_OI_I 
end function
sub _OIII1I00_O0_(_IOII10O1O1_1)
m.stallingHandler.setStallingStatus(_100I_1__00__(_IOII10O1O1_1.getData()))
end sub
