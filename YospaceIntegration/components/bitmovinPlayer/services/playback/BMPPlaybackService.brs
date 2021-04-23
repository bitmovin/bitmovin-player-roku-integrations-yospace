sub init()
m.video=invalid
m.maxTimeShift=invalid
m.BitmovinPlayerState=_I1O_I1IO0010()
m.BitmovinFields=_0OOO_00I01OO()
m.VideoNodeControlValues=__11110O_I_0I()
m.playerState=invalid
m.stallingHandler=_OOII0I_1001O(m.BitmovinPlayerState)
end sub
sub initializeService(__O_O_O0I_I00)
m.video=__O_O_O0I_I00
end sub
sub startService(_IO__0O__IOOO=invalid)
m.video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(101)),(Chr(95)+Chr(&H30)+Chr(&H31)+Chr(&H31)+Chr(&H4f)+Chr(73)+Chr(&H49)+Chr(&H5f)+Chr(&H5f)+Chr(49)+Chr(95)+Chr(&H5f)+Chr(&H30)))
end sub
sub play(_1O_I_I01_O_I=invalid)
if not m.stallingHandler.isPrePlaybackStallingInProgress() and(m.playerState=m.BitmovinPlayerState.STALLING or m.playerState=m.BitmovinPlayerState.PLAYING)
return 
end if
onPlay=function()
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end function
if isPaused()
_0IOOIOI1_III((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(108)),m.VideoNodeControlValues.RESUME,onPlay)
else 
_0IOOIOI1_III((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(111)+Chr(108)),m.VideoNodeControlValues.PLAY,onPlay)
end if
end sub
sub pause(_I0IOO00I__0I=invalid)
_0IOOIOI1_III((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(108)),m.VideoNodeControlValues.PAUSE)
end sub
sub seek(_O11O001I_0_O)
if isLive()return 
onSeek=function()
m.top.eventOccurred={eventName:m.BitmovinFields.SEEK,eventData:(1=1)}
end function
_0IOOIOI1_III((Chr(115)+Chr(&H65)+Chr(101)+Chr(&H6b)),_O11O001I_0_O,onSeek)
end sub
sub instantReplay(_110II000O1_1=invalid)
if m.playerState<>m.BitmovinPlayerState.STALLING and m.playerState<>m.BitmovinPlayerState.PLAYING
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end if
_0IOOIOI1_III((Chr(99)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(114)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.INSTANT_REPLAY)
end sub
sub mute(_1IO_000O0O0I=invalid)
if isMuted()return 
onMute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.MUTED,eventData:(1=1)}
end function
_0IOOIOI1_III((Chr(109)+Chr(117)+Chr(&H74)+Chr(101)),(1=1),onMute)
end sub
sub unmute(_011_11O0I_1I=invalid)
if not isMuted()return 
onUnmute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.UNMUTED,eventData:(1=1)}
end function
_0IOOIOI1_III((Chr(109)+Chr(117)+Chr(116)+Chr(101)),(1=2),onUnmute)
end sub
function isMuted(_O_OI111_II_O=invalid)
return m.video.mute 
end function
function isPaused(_I1OI011_IO0I=invalid)
return _11I_I01__II1((Chr(&H70)+Chr(&H61)+Chr(117)+Chr(115)+Chr(&H65)+Chr(&H64))) 
end function
function isPlaying(_IIO0O_I01101=invalid)
return _11I_I01__II1((Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(&H6e)+Chr(&H67))) 
end function
function isStalled(_1OO_0_IO1O1O=invalid)
return _11I_I01__II1((Chr(&H62)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(103))) 
end function
function isLive(_O_0I0I1_001_=invalid)
if m.video.content=invalid or _IOI0_IO01110()=invalid return(1=2) 
currentPlaylistItem=_IOI0_IO01110()
return currentPlaylistItem.live 
end function
sub preload(_OOIO00IO100_=invalid)
_0IOOIOI1_III((Chr(99)+Chr(111)+Chr(110)+Chr(&H74)+Chr(114)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.PREBUFFER)
end sub
function getDuration(_I_01I0I01_I_=invalid)
if isLive()return-1 
return m.video.duration 
end function
sub timeShift(_1001_O_0I1_O)
if isLive()=(1=2)return 
if(_1001_O_0I1_O>=getMaxTimeShift()) and(_1001_O_0I1_O<=0)
newTime=m.video.duration+_1001_O_0I1_O
onTimeShift=function(_OI_0__O00__I)
m.top.eventOccurred={eventName:m.BitmovinFields.TIME_SHIFT,eventData:_OI_0__O00__I}
end function
_0IOOIOI1_III((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(107)),newTime,onTimeShift,_1001_O_0I1_O)
end if
end sub
function getTimeShift(_1_IOI_II_I_O=invalid)
if isLive()=(1=2)return invalid 
return(m.Video.position-m.Video.duration) 
end function
function getMaxTimeShift(__OO01OOO1I0_=invalid)
if isLive()=(1=2)return invalid 
return m.maxTimeShift 
end function
sub setPlayerState(_IIOOI0O__0O1)
if __1_0_I0_0I0O(_IIOOI0O__0O1)=m.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
newState=__1_0_I0_0I0O(_IIOOI0O__0O1)
m.playerState=newState
m.top.eventOccurred={eventName:m.BitmovinFields.PLAYER_STATE,eventData:newState}
end sub
sub stopService()
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)))
m.maxTimeShift=invalid
m.playerState=m.BitmovinPlayerState.NONE
end sub
sub _0IOOIOI1_III(_II0OOIO_O010,_0I1_I0_110_I,___1II0I1II00=_01_1_III_0_1,_I_0_II100_IO=invalid)
if m.video.content=invalid
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:(Chr(83)+Chr(79)+Chr(85)+Chr(&H52)+Chr(&H43)+Chr(&H45)),message:(Chr(78)+Chr(&H6f)+Chr(32)+Chr(&H76)+Chr(105)+Chr(&H64)+Chr(101)+Chr(111)+Chr(32)+Chr(115)+Chr(&H6f)+Chr(117)+Chr(&H72)+Chr(99)+Chr(&H65)+Chr(32)+Chr(105)+Chr(115)+Chr(32)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(108)+Chr(121)+Chr(32)+Chr(&H6c)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(101)+Chr(100)+Chr(&H2e)+Chr(32)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(32)+Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(&H6c)+Chr(115)+Chr(&H20)+Chr(&H61)+Chr(&H72)+Chr(&H65)+Chr(32)+Chr(&H75)+Chr(110)+Chr(97)+Chr(118)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H61)+Chr(&H62)+Chr(&H6c)+Chr(101)+Chr(46))}}
else 
m.video[_II0OOIO_O010]=_0I1_I0_110_I
if _I_0_II100_IO=invalid
___1II0I1II00()
else 
___1II0I1II00(_I_0_II100_IO)
end if
end if
end sub
function _11I_I01__II1(_OI0011OOI11_)
return m.Video.state=_OI0011OOI11_ 
end function
function _IOI0_IO01110()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
function __1_0_I0_0I0O(_0_0O0I_O1_1O)
if _0_0O0I_O1_1O=(Chr(98)+Chr(&H75)+Chr(102)+Chr(&H66)+Chr(101)+Chr(114)+Chr(105)+Chr(&H6e)+Chr(103))return m.BitmovinPlayerState.STALLING 
return _0_0O0I_O1_1O 
end function
sub _011OII__1__0(__I0I00_O01_0)
m.stallingHandler.setStallingStatus(__1_0_I0_0I0O(__I0I00_O01_0.getData()))
end sub
