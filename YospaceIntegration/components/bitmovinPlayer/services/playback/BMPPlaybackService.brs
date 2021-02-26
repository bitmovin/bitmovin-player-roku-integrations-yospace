sub init()
m.video=invalid
m.maxTimeShift=invalid
m.BitmovinPlayerState=_1_0I_0I00O_0()
m.BitmovinFields=_I__1I0I_O__0()
m.VideoNodeControlValues=_10IO_1_OOI__()
m.playerState=invalid
m.stallingHandler=_010III1O_I1I(m.BitmovinPlayerState)
end sub
sub initializeService(_IOO_0_1I0_OI)
m.video=_IOO_0_1I0_OI
end sub
sub startService(_O1O__O_00_0I=invalid)
m.video.observeFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),(Chr(&H5f)+Chr(95)+Chr(95)+Chr(&H49)+Chr(&H30)+Chr(&H49)+Chr(&H31)+Chr(&H31)+Chr(&H4f)+Chr(73)+Chr(48)+Chr(73)+Chr(48)))
end sub
sub play(_1_0_1O10___0=invalid)
if not m.stallingHandler.isPrePlaybackStallingInProgress() and(m.playerState=m.BitmovinPlayerState.STALLING or m.playerState=m.BitmovinPlayerState.PLAYING)
return 
end if
onPlay=function()
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end function
if isPaused()
_11_11_1O0O_O((Chr(99)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.RESUME,onPlay)
else 
_11_11_1O0O_O((Chr(&H63)+Chr(111)+Chr(110)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.PLAY,onPlay)
end if
end sub
sub pause(_IO100_II_010=invalid)
_11_11_1O0O_O((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)),m.VideoNodeControlValues.PAUSE)
end sub
sub seek(_OIO_1I01__IO)
if isLive()return 
onSeek=function()
m.top.eventOccurred={eventName:m.BitmovinFields.SEEK,eventData:(1=1)}
end function
_11_11_1O0O_O((Chr(115)+Chr(&H65)+Chr(&H65)+Chr(&H6b)),_OIO_1I01__IO,onSeek)
end sub
sub instantReplay(_OIIII_I010O0=invalid)
if m.playerState<>m.BitmovinPlayerState.STALLING and m.playerState<>m.BitmovinPlayerState.PLAYING
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end if
_11_11_1O0O_O((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(114)+Chr(111)+Chr(108)),m.VideoNodeControlValues.INSTANT_REPLAY)
end sub
sub mute(_0IOO0_0_1100=invalid)
if isMuted()return 
onMute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.MUTED,eventData:(1=1)}
end function
_11_11_1O0O_O((Chr(&H6d)+Chr(&H75)+Chr(116)+Chr(&H65)),(1=1),onMute)
end sub
sub unmute(_1__1I_1__10O=invalid)
if not isMuted()return 
onUnmute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.UNMUTED,eventData:(1=1)}
end function
_11_11_1O0O_O((Chr(&H6d)+Chr(117)+Chr(116)+Chr(101)),(1=2),onUnmute)
end sub
function isMuted(__0O_100I_1_0=invalid)
return m.video.mute 
end function
function isPaused(_0O__I00_1IOO=invalid)
return __0_0O0IOI10I((Chr(112)+Chr(&H61)+Chr(&H75)+Chr(115)+Chr(101)+Chr(&H64))) 
end function
function isPlaying(_00O1__OO01I1=invalid)
return __0_0O0IOI10I((Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(103))) 
end function
function isStalled(__O0II0OI__IO=invalid)
return __0_0O0IOI10I((Chr(98)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67))) 
end function
function isLive(_100O_1_1010_=invalid)
if m.video.content=invalid or _0IOO001I1O1O()=invalid return(1=2) 
currentPlaylistItem=_0IOO001I1O1O()
return currentPlaylistItem.live 
end function
sub preload(_I00I_1IO0O_0=invalid)
_11_11_1O0O_O((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(108)),m.VideoNodeControlValues.PREBUFFER)
end sub
function getDuration(__O_II_IOO0I0=invalid)
if isLive()return-1 
return m.video.duration 
end function
sub timeShift(_1111I_00_I_O)
if isLive()=(1=2)return 
if(_1111I_00_I_O>=getMaxTimeShift()) and(_1111I_00_I_O<=0)
newTime=m.video.duration+_1111I_00_I_O
onTimeShift=function(_1_I101011OI1)
m.top.eventOccurred={eventName:m.BitmovinFields.TIME_SHIFT,eventData:_1_I101011OI1}
end function
_11_11_1O0O_O((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(&H6b)),newTime,onTimeShift,_1111I_00_I_O)
end if
end sub
function getTimeShift(__O1IO0I1O_1O=invalid)
if isLive()=(1=2)return invalid 
return(m.Video.position-m.Video.duration) 
end function
function getMaxTimeShift(_0I0O_I_I00_I=invalid)
if isLive()=(1=2)return invalid 
return m.maxTimeShift 
end function
sub setPlayerState(_OOOO__01II_1)
if _0110100O__I_(_OOOO__01II_1)=m.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
newState=_0110100O__I_(_OOOO__01II_1)
m.playerState=newState
m.top.eventOccurred={eventName:m.BitmovinFields.PLAYER_STATE,eventData:newState}
end sub
sub stopService()
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)))
m.maxTimeShift=invalid
m.playerState=m.BitmovinPlayerState.NONE
end sub
sub _11_11_1O0O_O(___I1_O1IIO0I,_O_I_11I1_01O,_101_1OI00111=_OI1OI0I_1_O0,___I0O110__11=invalid)
if m.video.content=invalid
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:(Chr(&H53)+Chr(&H4f)+Chr(85)+Chr(82)+Chr(&H43)+Chr(69)),message:(Chr(&H4e)+Chr(111)+Chr(&H20)+Chr(&H76)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(111)+Chr(32)+Chr(115)+Chr(&H6f)+Chr(117)+Chr(114)+Chr(&H63)+Chr(&H65)+Chr(&H20)+Chr(&H69)+Chr(&H73)+Chr(32)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(108)+Chr(121)+Chr(32)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(&H65)+Chr(100)+Chr(&H2e)+Chr(32)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)+Chr(115)+Chr(32)+Chr(97)+Chr(&H72)+Chr(&H65)+Chr(32)+Chr(&H75)+Chr(&H6e)+Chr(97)+Chr(118)+Chr(97)+Chr(105)+Chr(108)+Chr(&H61)+Chr(&H62)+Chr(108)+Chr(101)+Chr(46))}}
else 
m.video[___I1_O1IIO0I]=_O_I_11I1_01O
if ___I0O110__11=invalid
_101_1OI00111()
else 
_101_1OI00111(___I0O110__11)
end if
end if
end sub
function __0_0O0IOI10I(_01_01O0111_0)
return m.Video.state=_01_01O0111_0 
end function
function _0IOO001I1O1O()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
function _0110100O__I_(_0_10_OOO1111)
if _0_10_OOO1111=(Chr(&H62)+Chr(&H75)+Chr(102)+Chr(102)+Chr(101)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(103))return m.BitmovinPlayerState.STALLING 
return _0_10_OOO1111 
end function
sub ___I0I11OI0I0(_I_1_O1OIIOO1)
m.stallingHandler.setStallingStatus(_0110100O__I_(_I_1_O1OIIOO1.getData()))
end sub
