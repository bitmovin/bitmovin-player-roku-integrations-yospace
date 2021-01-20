sub init()
m.video=invalid
m.maxTimeShift=invalid
m.BitmovinPlayerState=__OII0I0O_O01()
m.BitmovinFields=_0O1I0_1O_O0I()
m.VideoNodeControlValues=__OO0_IOII001()
m.playerState=invalid
m.stallingHandler=_IO_O10O__0IO(m.BitmovinPlayerState)
end sub
sub initializeService(_1_OIIO110OO0)
m.video=_1_OIIO110OO0
end sub
sub startService(_OIIIO010IO_1=invalid)
m.video.observeFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(116)+Chr(101)),(Chr(95)+Chr(95)+Chr(48)+Chr(&H4f)+Chr(&H49)+Chr(&H31)+Chr(95)+Chr(&H4f)+Chr(48)+Chr(73)+Chr(95)+Chr(&H5f)+Chr(&H31)))
end sub
sub play(_OI0IO0_O__00=invalid)
if not m.stallingHandler.isPrePlaybackStallingInProgress() and(m.playerState=m.BitmovinPlayerState.STALLING or m.playerState=m.BitmovinPlayerState.PLAYING)
return 
end if
onPlay=function()
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end function
if isPaused()
__1O0OI11O0II((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)),m.VideoNodeControlValues.RESUME,onPlay)
else 
__1O0OI11O0II((Chr(99)+Chr(111)+Chr(110)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(108)),m.VideoNodeControlValues.PLAY,onPlay)
end if
end sub
sub pause(_1IOI01_II0IO=invalid)
__1O0OI11O0II((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.PAUSE)
end sub
sub seek(_0I0_IO11OOI1)
if isLive()return 
onSeek=function()
m.top.eventOccurred={eventName:m.BitmovinFields.SEEK,eventData:(1=1)}
end function
__1O0OI11O0II((Chr(115)+Chr(101)+Chr(101)+Chr(&H6b)),_0I0_IO11OOI1,onSeek)
end sub
sub instantReplay(_0O_I1OOI1___=invalid)
if m.playerState<>m.BitmovinPlayerState.STALLING and m.playerState<>m.BitmovinPlayerState.PLAYING
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end if
__1O0OI11O0II((Chr(&H63)+Chr(111)+Chr(110)+Chr(116)+Chr(114)+Chr(111)+Chr(108)),m.VideoNodeControlValues.INSTANT_REPLAY)
end sub
sub mute(_0OII10IOI011=invalid)
if isMuted()return 
onMute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.MUTED,eventData:(1=1)}
end function
__1O0OI11O0II((Chr(&H6d)+Chr(117)+Chr(&H74)+Chr(101)),(1=1),onMute)
end sub
sub unmute(_0__O1IO_0O01=invalid)
if not isMuted()return 
onUnmute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.UNMUTED,eventData:(1=1)}
end function
__1O0OI11O0II((Chr(109)+Chr(&H75)+Chr(116)+Chr(&H65)),(1=2),onUnmute)
end sub
function isMuted(_O_0_II__1IO_=invalid)
return m.video.mute 
end function
function isPaused(__OIII1II1I0I=invalid)
return __O00II1I_O1O((Chr(&H70)+Chr(97)+Chr(117)+Chr(115)+Chr(101)+Chr(&H64))) 
end function
function isPlaying(____O1I_I__IO=invalid)
return __O00II1I_O1O((Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(105)+Chr(110)+Chr(&H67))) 
end function
function isStalled(_0001OO_O11OI=invalid)
return __O00II1I_O1O((Chr(98)+Chr(&H75)+Chr(&H66)+Chr(102)+Chr(101)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103))) 
end function
function isLive(_00OOI1_0O_I0=invalid)
if m.video.content=invalid or _O1_IO00II_1I()=invalid return(1=2) 
currentPlaylistItem=_O1_IO00II_1I()
return currentPlaylistItem.live 
end function
sub preload(_I01I11_010__=invalid)
__1O0OI11O0II((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(111)+Chr(&H6c)),m.VideoNodeControlValues.PREBUFFER)
end sub
function getDuration(____0O1O0O0O1=invalid)
if isLive()return-1 
return m.video.duration 
end function
sub timeShift(___1OO0I1II11)
if isLive()=(1=2)return 
if(___1OO0I1II11>=getMaxTimeShift()) and(___1OO0I1II11<=0)
newTime=m.video.duration+___1OO0I1II11
onTimeShift=function(_I010OO_I_I_1)
m.top.eventOccurred={eventName:m.BitmovinFields.TIME_SHIFT,eventData:_I010OO_I_I_1}
end function
__1O0OI11O0II((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(107)),newTime,onTimeShift,___1OO0I1II11)
end if
end sub
function getTimeShift(_OO_IOO001O0I=invalid)
if isLive()=(1=2)return invalid 
return(m.Video.position-m.Video.duration) 
end function
function getMaxTimeShift(_0_I1I1O101O1=invalid)
if isLive()=(1=2)return invalid 
return m.maxTimeShift 
end function
sub setPlayerState(_1O_I01_1OO0I)
if _0110O_O010OI(_1O_I01_1OO0I)=m.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
newState=_0110O_O010OI(_1O_I01_1OO0I)
m.playerState=newState
m.top.eventOccurred={eventName:m.BitmovinFields.PLAYER_STATE,eventData:newState}
end sub
sub stopService()
m.video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)))
m.maxTimeShift=invalid
m.playerState=m.BitmovinPlayerState.NONE
end sub
sub __1O0OI11O0II(_1II1IOOOI00O,_II10O_OOIO1O,_OOIIO10_1III=__10__0OII01I,_1II0__1000O_=invalid)
if m.video.content=invalid
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:(Chr(83)+Chr(&H4f)+Chr(85)+Chr(82)+Chr(&H43)+Chr(&H45)),message:(Chr(&H4e)+Chr(111)+Chr(32)+Chr(&H76)+Chr(105)+Chr(100)+Chr(101)+Chr(111)+Chr(&H20)+Chr(115)+Chr(111)+Chr(&H75)+Chr(114)+Chr(&H63)+Chr(101)+Chr(32)+Chr(105)+Chr(115)+Chr(&H20)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(108)+Chr(121)+Chr(32)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)+Chr(101)+Chr(&H64)+Chr(46)+Chr(&H20)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(32)+Chr(99)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(108)+Chr(115)+Chr(32)+Chr(&H61)+Chr(&H72)+Chr(&H65)+Chr(&H20)+Chr(117)+Chr(&H6e)+Chr(&H61)+Chr(&H76)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(97)+Chr(98)+Chr(108)+Chr(101)+Chr(&H2e))}}
else 
m.video[_1II1IOOOI00O]=_II10O_OOIO1O
if _1II0__1000O_=invalid
_OOIIO10_1III()
else 
_OOIIO10_1III(_1II0__1000O_)
end if
end if
end sub
function __O00II1I_O1O(_IO10O0I0IIO0)
return m.Video.state=_IO10O0I0IIO0 
end function
function _O1_IO00II_1I()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
function _0110O_O010OI(_1I_I1O_0I_0I)
if _1I_I1O_0I_0I=(Chr(98)+Chr(117)+Chr(102)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(105)+Chr(110)+Chr(103))return m.BitmovinPlayerState.STALLING 
return _1I_I1O_0I_0I 
end function
sub __0OI1_O0I__1(_I_I_I0IOOOI_)
m.stallingHandler.setStallingStatus(_0110O_O010OI(_I_I_I0IOOOI_.getData()))
end sub
