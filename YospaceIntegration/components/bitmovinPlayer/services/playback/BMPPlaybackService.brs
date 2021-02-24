sub init()
m.video=invalid
m.maxTimeShift=invalid
m.BitmovinPlayerState=_0_1_OI101_0I()
m.BitmovinFields=_OO0OOO1IOII_()
m.VideoNodeControlValues=_IO11II0I_OIO()
m.playerState=invalid
m.stallingHandler=_O__0_OO1O11O(m.BitmovinPlayerState)
end sub
sub initializeService(_OO_100_0_01I)
m.video=_OO_100_0_01I
end sub
sub startService(_0I_IO0OO00II=invalid)
m.video.observeFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)),(Chr(95)+Chr(&H49)+Chr(&H30)+Chr(&H49)+Chr(79)+Chr(&H49)+Chr(73)+Chr(&H30)+Chr(&H31)+Chr(&H49)+Chr(48)+Chr(&H30)+Chr(73)))
end sub
sub play(_OI_OII_0OI0I=invalid)
if not m.stallingHandler.isPrePlaybackStallingInProgress() and(m.playerState=m.BitmovinPlayerState.STALLING or m.playerState=m.BitmovinPlayerState.PLAYING)
return 
end if
onPlay=function()
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end function
if isPaused()
_0O_00O01OO_O((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(108)),m.VideoNodeControlValues.RESUME,onPlay)
else 
_0O_00O01OO_O((Chr(99)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(108)),m.VideoNodeControlValues.PLAY,onPlay)
end if
end sub
sub pause(_IO0000O0_1II=invalid)
_0O_00O01OO_O((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(&H6f)+Chr(108)),m.VideoNodeControlValues.PAUSE)
end sub
sub seek(_O1II101O_O__)
if isLive()return 
onSeek=function()
m.top.eventOccurred={eventName:m.BitmovinFields.SEEK,eventData:(1=1)}
end function
_0O_00O01OO_O((Chr(115)+Chr(&H65)+Chr(101)+Chr(107)),_O1II101O_O__,onSeek)
end sub
sub instantReplay(___O1I_I_O_00=invalid)
if m.playerState<>m.BitmovinPlayerState.STALLING and m.playerState<>m.BitmovinPlayerState.PLAYING
m.top.eventOccurred={eventName:m.BitmovinFields.PLAY,eventData:(1=1)}
end if
_0O_00O01OO_O((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.VideoNodeControlValues.INSTANT_REPLAY)
end sub
sub mute(_O0O00_0_O0I_=invalid)
if isMuted()return 
onMute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.MUTED,eventData:(1=1)}
end function
_0O_00O01OO_O((Chr(109)+Chr(117)+Chr(&H74)+Chr(101)),(1=1),onMute)
end sub
sub unmute(__O0_OI1OO1II=invalid)
if not isMuted()return 
onUnmute=function()
m.top.eventOccurred={eventName:m.BitmovinFields.UNMUTED,eventData:(1=1)}
end function
_0O_00O01OO_O((Chr(&H6d)+Chr(117)+Chr(&H74)+Chr(&H65)),(1=2),onUnmute)
end sub
function isMuted(__0_0OO101110=invalid)
return m.video.mute 
end function
function isPaused(_OOIOIO0I1I1_=invalid)
return _O0O_IIO1OOI_((Chr(112)+Chr(97)+Chr(&H75)+Chr(&H73)+Chr(101)+Chr(100))) 
end function
function isPlaying(_0_O_0_0100_1=invalid)
return _O0O_IIO1OOI_((Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(105)+Chr(&H6e)+Chr(&H67))) 
end function
function isStalled(___0_IIIO1I_1=invalid)
return _O0O_IIO1OOI_((Chr(98)+Chr(117)+Chr(102)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(&H67))) 
end function
function isLive(__IO1O11OI100=invalid)
if m.video.content=invalid or _I1I___1__00I()=invalid return(1=2) 
currentPlaylistItem=_I1I___1__00I()
return currentPlaylistItem.live 
end function
sub preload(_00I_1O_OOO00=invalid)
_0O_00O01OO_O((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H72)+Chr(111)+Chr(108)),m.VideoNodeControlValues.PREBUFFER)
end sub
function getDuration(_011__1O0__11=invalid)
if isLive()return-1 
return m.video.duration 
end function
sub timeShift(_OOOI_O0OO00_)
if isLive()=(1=2)return 
if(_OOOI_O0OO00_>=getMaxTimeShift()) and(_OOOI_O0OO00_<=0)
newTime=m.video.duration+_OOOI_O0OO00_
onTimeShift=function(_I1110I0OI0_1)
m.top.eventOccurred={eventName:m.BitmovinFields.TIME_SHIFT,eventData:_I1110I0OI0_1}
end function
_0O_00O01OO_O((Chr(&H73)+Chr(&H65)+Chr(&H65)+Chr(&H6b)),newTime,onTimeShift,_OOOI_O0OO00_)
end if
end sub
function getTimeShift(_OI1O100II0I0=invalid)
if isLive()=(1=2)return invalid 
return(m.Video.position-m.Video.duration) 
end function
function getMaxTimeShift(_O_O_O_OO0_O1=invalid)
if isLive()=(1=2)return invalid 
return m.maxTimeShift 
end function
sub setPlayerState(_10IO010OOI0I)
if _1O_IO0_11OI1(_10IO010OOI0I)=m.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
newState=_1O_IO0_11OI1(_10IO010OOI0I)
m.playerState=newState
m.top.eventOccurred={eventName:m.BitmovinFields.PLAYER_STATE,eventData:newState}
end sub
sub stopService()
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)))
m.maxTimeShift=invalid
m.playerState=m.BitmovinPlayerState.NONE
end sub
sub _0O_00O01OO_O(_10__0I10OII_,__1OOII00I0I1,_0_1III1I101I=_II_I_OIO10IO,_OI_I1011_O0_=invalid)
if m.video.content=invalid
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:(Chr(83)+Chr(&H4f)+Chr(&H55)+Chr(82)+Chr(67)+Chr(69)),message:(Chr(&H4e)+Chr(111)+Chr(32)+Chr(&H76)+Chr(105)+Chr(100)+Chr(&H65)+Chr(&H6f)+Chr(&H20)+Chr(115)+Chr(&H6f)+Chr(&H75)+Chr(114)+Chr(&H63)+Chr(&H65)+Chr(32)+Chr(105)+Chr(&H73)+Chr(32)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H6c)+Chr(&H79)+Chr(32)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)+Chr(&H65)+Chr(&H64)+Chr(&H2e)+Chr(&H20)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(32)+Chr(99)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(114)+Chr(111)+Chr(&H6c)+Chr(115)+Chr(32)+Chr(97)+Chr(114)+Chr(101)+Chr(32)+Chr(117)+Chr(110)+Chr(97)+Chr(&H76)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(97)+Chr(&H62)+Chr(&H6c)+Chr(101)+Chr(46))}}
else 
m.video[_10__0I10OII_]=__1OOII00I0I1
if _OI_I1011_O0_=invalid
_0_1III1I101I()
else 
_0_1III1I101I(_OI_I1011_O0_)
end if
end if
end sub
function _O0O_IIO1OOI_(_0I__1I1_IO_O)
return m.Video.state=_0I__1I1_IO_O 
end function
function _I1I___1__00I()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
function _1O_IO0_11OI1(_0_I0111__110)
if _0_I0111__110=(Chr(98)+Chr(&H75)+Chr(102)+Chr(102)+Chr(&H65)+Chr(114)+Chr(&H69)+Chr(110)+Chr(&H67))return m.BitmovinPlayerState.STALLING 
return _0_I0111__110 
end function
sub _I0IOII01I00I(_OI_1I0OI0IOI)
m.stallingHandler.setStallingStatus(_1O_IO0_11OI1(_OI_1I0OI0IOI.getData()))
end sub
