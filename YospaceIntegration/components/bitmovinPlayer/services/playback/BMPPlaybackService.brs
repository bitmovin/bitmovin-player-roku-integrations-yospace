sub init()
m.video=invalid
m.maxTimeShift=invalid
m.BitmovinPlayerState=_II0_0_O__10O()
m.BitmovinFields=_O_10OO110010()
m.VideoNodeControlValues=_I_0OO0II11OI()
m.playerState=invalid
m.stallingHandler=_O___0_I_O10I(m.BitmovinPlayerState)
end sub
sub initializeService(_I0IIO1I1O0O0)
m.video=_I0IIO1I1O0O0
end sub
sub startService(_II1O___O0I10=invalid)
m.video.observeFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(116)+Chr(101)),(Chr(95)+Chr(&H31)+Chr(73)+Chr(&H31)+Chr(&H4f)+Chr(79)+Chr(&H4f)+Chr(&H5f)+Chr(79)+Chr(79)+Chr(&H49)+Chr(&H5f)+Chr(&H30)))
end sub
sub play(_O0_0___O_1_O=invalid)
if not m.stallingHandler.isPrePlaybackStallingInProgress() and(m.playerState=m.BitmovinPlayerState.STALLING or m.playerState=m.BitmovinPlayerState.PLAYING)
return 
end if
onPlay=function()
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end function
if isPaused()
_1I11I1O__IOO((Chr(99)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.RESUME,onPlay)
else 
_1I11I1O__IOO((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.PLAY,onPlay)
end if
end sub
sub pause(_I111O1I_0OI0=invalid)
_1I11I1O__IOO((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.PAUSE)
end sub
sub seek(_IIO0_11__OI0)
if isLive()return 
onSeek=function()
m.top.eventOccurred={eventName:m.BitmovinFields.SEEK,eventData:(1=1)}
end function
_1I11I1O__IOO((Chr(&H73)+Chr(101)+Chr(101)+Chr(&H6b)),_IIO0_11__OI0,onSeek)
end sub
sub instantReplay(__OO01__I1I0I=invalid)
if m.playerState<>m.BitmovinPlayerState.STALLING and m.playerState<>m.BitmovinPlayerState.PLAYING
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end if
_1I11I1O__IOO((Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.INSTANT_REPLAY)
end sub
sub mute(_IIIOI1_1_101=invalid)
if isMuted()return 
onMute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.MUTED,eventData:(1=1)}
end function
_1I11I1O__IOO((Chr(109)+Chr(117)+Chr(&H74)+Chr(&H65)),(1=1),onMute)
end sub
sub unmute(_OOI_OO0OIIOI=invalid)
if not isMuted()return 
onUnmute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.UNMUTED,eventData:(1=1)}
end function
_1I11I1O__IOO((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(&H65)),(1=2),onUnmute)
end sub
function isMuted(__OOO1_0OO010=invalid)
return m.video.mute 
end function
function isPaused(_I_00__O1__I1=invalid)
return _0O10I_0001_1((Chr(&H70)+Chr(&H61)+Chr(&H75)+Chr(115)+Chr(101)+Chr(&H64))) 
end function
function isPlaying(_01OII0O1011I=invalid)
return _0O10I_0001_1((Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(103))) 
end function
function isStalled(__1I_000_I1_0=invalid)
return _0O10I_0001_1((Chr(&H62)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103))) 
end function
function isLive(__10IO10_1011=invalid)
if m.video.content=invalid or _OOOO11_I1I__()=invalid return(1=2) 
currentPlaylistItem=_OOOO11_I1I__()
return currentPlaylistItem.live 
end function
sub preload(_1OO0_1II1_01=invalid)
_1I11I1O__IOO((Chr(&H63)+Chr(111)+Chr(110)+Chr(116)+Chr(114)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.PREBUFFER)
end sub
function getDuration(_I_OI11I11OO0=invalid)
if isLive()return-1 
return m.video.duration 
end function
sub timeShift(_1IOOI_O_IO0I)
if isLive()=(1=2)return 
if(_1IOOI_O_IO0I>=getMaxTimeShift()) and(_1IOOI_O_IO0I<=0)
newTime=m.video.duration+_1IOOI_O_IO0I
onTimeShift=function(_1I0_OI01OIII)
m.top.eventOccurred={eventName:m.BitmovinFields.TIME_SHIFT,eventData:_1I0_OI01OIII}
end function
_1I11I1O__IOO((Chr(115)+Chr(&H65)+Chr(&H65)+Chr(&H6b)),newTime,onTimeShift,_1IOOI_O_IO0I)
end if
end sub
function getTimeShift(_0I__0OOO_IOO=invalid)
if isLive()=(1=2)return invalid 
return(m.Video.position-m.Video.duration) 
end function
function getMaxTimeShift(__0_01O10O1I1=invalid)
if isLive()=(1=2)return invalid 
return m.maxTimeShift 
end function
sub setPlayerState(_O_I_1II0O__1)
if __011O001_I_0(_O_I_1II0O__1)=m.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
newState=__011O001_I_0(_O_I_1II0O__1)
m.playerState=newState
m.top.eventOccurred={eventName:m.BitmovinFields.PLAYER_STATE,eventData:newState}
end sub
sub stopService()
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)))
m.maxTimeShift=invalid
m.playerState=m.BitmovinPlayerState.NONE
end sub
sub _1I11I1O__IOO(___01O_IOO_I1,_0O1101III00I,_II1101O0_0_I=_IO0_IIIO010_,_OII11I_0O_11=invalid)
if m.video.content=invalid
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:(Chr(83)+Chr(79)+Chr(&H55)+Chr(82)+Chr(67)+Chr(&H45)),message:(Chr(&H4e)+Chr(&H6f)+Chr(32)+Chr(118)+Chr(105)+Chr(&H64)+Chr(101)+Chr(111)+Chr(&H20)+Chr(&H73)+Chr(&H6f)+Chr(&H75)+Chr(&H72)+Chr(&H63)+Chr(101)+Chr(32)+Chr(105)+Chr(115)+Chr(32)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H6c)+Chr(&H79)+Chr(&H20)+Chr(108)+Chr(111)+Chr(97)+Chr(100)+Chr(&H65)+Chr(&H64)+Chr(&H2e)+Chr(&H20)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(114)+Chr(111)+Chr(&H6c)+Chr(115)+Chr(32)+Chr(&H61)+Chr(&H72)+Chr(101)+Chr(32)+Chr(&H75)+Chr(&H6e)+Chr(97)+Chr(118)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H61)+Chr(98)+Chr(108)+Chr(101)+Chr(&H2e))}}
else 
m.video[___01O_IOO_I1]=_0O1101III00I
if _OII11I_0O_11=invalid
_II1101O0_0_I()
else 
_II1101O0_0_I(_OII11I_0O_11)
end if
end if
end sub
function _0O10I_0001_1(_0I_O11O_I0IO)
return m.Video.state=_0I_O11O_I0IO 
end function
function _OOOO11_I1I__()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
function __011O001_I_0(__0I0OIII1101)
if __0I0OIII1101=(Chr(&H62)+Chr(&H75)+Chr(102)+Chr(&H66)+Chr(101)+Chr(114)+Chr(105)+Chr(&H6e)+Chr(&H67))return m.BitmovinPlayerState.STALLING 
return __0I0OIII1101 
end function
sub _1I1OOO_OOI_0(_O0I1OII__000)
m.stallingHandler.setStallingStatus(__011O001_I_0(_O0I1OII__000.getData()))
end sub
