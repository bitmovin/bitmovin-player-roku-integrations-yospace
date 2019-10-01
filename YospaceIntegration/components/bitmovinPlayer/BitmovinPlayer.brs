sub init()
m.httpAgent=CreateObject((Chr(&H72)+Chr(111)+Chr(72)+Chr(116)+Chr(116)+Chr(&H70)+Chr(65)+Chr(&H67)+Chr(101)+Chr(&H6e)+Chr(116)))
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(68)+Chr(101)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(&H6f)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(102)+Chr(&H6f)+Chr(&H63)+Chr(117)+Chr(&H73)+Chr(101)+Chr(&H64)+Chr(&H43)+Chr(104)+Chr(105)+Chr(&H6c)+Chr(&H64)),(Chr(&H5f)+Chr(&H30)+Chr(&H30)+Chr(73)+Chr(73)+Chr(&H31)+Chr(&H5f)+Chr(&H49)+Chr(48)+Chr(&H49)+Chr(&H31)+Chr(73)+Chr(&H49)))
m.top.BitmovinPlayerState=__1_1_I__O000()
m.top.BitmovinFunctions=_1_1_IOIO0I11()
m.top.BitmovinFields=_I0_011_0I0O0()
m.BitmovinControlState=_0I0I_0O_O1I0()
m.AssetTypes=_I00O010IO_0I()
m.maxTimeShift=invalid
m.MAX_INT=2147483648
m.KeyEventHandler=m.top.findNode((Chr(75)+Chr(&H65)+Chr(&H79)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(72)+Chr(97)+Chr(&H6e)+Chr(100)+Chr(108)+Chr(101)+Chr(&H72)))
m.KeyEventHandler.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H75)+Chr(112)),invalid)
m.useDefaultUi=(1=1)
m.deficiencyService=_0_I1_0_IO110(m.top)
m.deficiencyFactory=_0_I_O__III__()
m.Errors=m.deficiencyFactory.getErrors()
m.httpRequestTypes=___I00IIIII10()
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_00IO1O___1I1)
_00OII1__1I1O()
appInfo=CreateObject((Chr(114)+Chr(111)+Chr(&H41)+Chr(112)+Chr(112)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(111)))
m.config=_OIOO_II_OOO_(_00IO1O___1I1)
m.config.version=appInfo.GetVersion()
m.config.channelID=appInfo.getID()
m.config.key=appInfo.getValue((Chr(98)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(95)+Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(95)+Chr(&H6c)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(115)+Chr(&H65)+Chr(&H5f)+Chr(107)+Chr(&H65)+Chr(&H79)))
m.BitmovinPlayerTask=m.top.findNode((Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H54)+Chr(97)+Chr(115)+Chr(107)))
m.BitmovinPlayerTask.config=m.config
m.Video=m.top.findNode((Chr(77)+Chr(&H61)+Chr(105)+Chr(&H6e)+Chr(86)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(111)))
if m.config.ui=(1=2)m.useDefaultUi=(1=2)
_OI_O0OI0I1II(m.top.BitmovinPlayerState.SETUP)
if not _1_01I1IOI__I(m.config.source)
load(m.config.source)
end if
end function
function getConfig(_0_1IIOOI0I00=invalid)
config=_OIOO_II_OOO_(m.config)
if type(m.config.source)=(Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)) and m.config.source.isSubtype((Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)))
config.source=m.config.source.clone((1=1))
end if
return config 
end function
function _1_1OOO_OOI_I(_O0O0O01II_10)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_O0O0O01II_10
return available[i] 
end if
end for
return invalid 
end function
function _I_1_0O__OOO_(_I0OOI11_0I_1)
if _I0OOI11_0I_1=(Chr(&H62)+Chr(&H75)+Chr(&H66)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(103))return m.top.BitmovinPlayerState.STALLING 
return _I0OOI11_0I_1 
end function
function _OIO_1III10_0(_0O00O10_OI10)
count=m.Video.availableAudioTracks.count()
availableTracks=m.Video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_0O00O10_OI10
return availableTracks[i] 
end if
end for
return invalid 
end function
sub _OI_O0OI0I1II(_OOIO1II10O1O)
if _I_1_0O__OOO_(_OOIO1II10O1O)=m.top.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
?(Chr(67)+Chr(&H68)+Chr(&H61)+Chr(110)+Chr(&H67)+Chr(&H65)+Chr(32)+Chr(116)+Chr(111)+Chr(&H20)+Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(32)+Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(101)+Chr(58)+Chr(32));_I_1_0O__OOO_(_OOIO1II10O1O)
m.top.playerState=_I_1_0O__OOO_(_OOIO1II10O1O)
m.BitmovinPlayerTask.playerState=_OOIO1II10O1O
m.KeyEventHandler.playerState=_OOIO1II10O1O
end sub
sub _IOOI_O011O0O()
if m.Video<>invalid
_OI_O0OI0I1II(m.Video.state)
if m.Video.state=(Chr(101)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114))
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Video.errorCode))
else if m.Video.state=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(110)+Chr(&H67)) and m.KeyEventHandler.seeking
if isLive()
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=m.top.currentTime
end if
_00OII1__1I1O()
else if m.Video.state=(Chr(&H66)+Chr(&H69)+Chr(110)+Chr(105)+Chr(115)+Chr(&H68)+Chr(101)+Chr(100))
_00OII1__1I1O()
end if
end if
end sub
sub _00OII1__1I1O()
m.KeyEventHandler.seeking=(1=2)
end sub
sub __11I1_I___10()
m.BitmovinPlayerTask.control=m.BitmovinControlState.stop
end sub
sub _I_11OI0_O10O(_O00110O10O1_,_1III1I0I___0,_01__1I1IO_1_=_00_1_1_0OO1_,_1I_I__O_OO0O=invalid)
if m.Video.content=invalid
m.top.warning={code:(Chr(&H53)+Chr(79)+Chr(&H55)+Chr(82)+Chr(&H43)+Chr(69)),message:(Chr(&H4e)+Chr(&H6f)+Chr(&H20)+Chr(118)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(&H6f)+Chr(32)+Chr(115)+Chr(&H6f)+Chr(117)+Chr(&H72)+Chr(&H63)+Chr(&H65)+Chr(32)+Chr(&H69)+Chr(115)+Chr(32)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(108)+Chr(121)+Chr(32)+Chr(&H6c)+Chr(&H6f)+Chr(97)+Chr(&H64)+Chr(101)+Chr(&H64)+Chr(&H2e)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(99)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(&H6c)+Chr(&H73)+Chr(32)+Chr(&H61)+Chr(&H72)+Chr(101)+Chr(&H20)+Chr(117)+Chr(&H6e)+Chr(97)+Chr(&H76)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H61)+Chr(98)+Chr(&H6c)+Chr(&H65)+Chr(46))}
else 
m.Video[_O00110O10O1_]=_1III1I0I___0
if _1I_I__O_OO0O=invalid
_01__1I1IO_1_()
else 
_01__1I1IO_1_(_1I_I__O_OO0O)
end if
end if
end sub
function _011110I_1_0O(_I_0I11IO0010)
if _I_0I11IO0010.dash<>invalid
return{streamFormat:(Chr(100)+Chr(97)+Chr(115)+Chr(104)),url:_I_0I11IO0010.dash} 
else if _I_0I11IO0010.hls<>invalid
return{streamFormat:(Chr(104)+Chr(&H6c)+Chr(&H73)),url:_I_0I11IO0010.hls} 
else if _I_0I11IO0010.smooth<>invalid
return{streamFormat:(Chr(105)+Chr(&H73)+Chr(&H6d)),url:_I_0I11IO0010.smooth} 
else if _I_0I11IO0010.progressive<>invalid
return{streamFormat:(Chr(&H6d)+Chr(&H70)+Chr(52)),url:_I_0I11IO0010.progressive} 
else 
return{} 
end if
end function
function _IO0O__OOIIIO(_I_OI__O1IO1_)
newItem={trackName:_I_OI__O1IO1_.url,language:_I_OI__O1IO1_.language,description:_I_OI__O1IO1_.label}
return newItem 
end function
function _10110OI__0O0(_10_0I10O_I_I)
return{id:_10_0I10O_I_I.trackName,language:_10_0I10O_I_I.language,label:_10_0I10O_I_I.description} 
end function
function _OO01_0011000(_1_O111O___I0)
return{id:_1_O111O___I0.track,language:_1_O111O___I0.language,label:_1_O111O___I0.name} 
end function
function _I10_11_10O11(__0O_00111O00)
if m.Video.state=__0O_00111O00
return(1=1) 
else 
return(1=2) 
end if
end function
sub play(__1_1I_0_OI01)
if isPaused(invalid)
_I_11OI0_O10O((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.BitmovinControlState.RESUME)
else 
_I_11OI0_O10O((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H72)+Chr(111)+Chr(&H6c)),m.BitmovinControlState.PLAY)
end if
m.top.play=(1=1)
end sub
sub instantReplay(__II_O000_00_)
if m.top.playerState<>m.top.BitmovinPlayerState.STALLING and m.top.playerState<>m.top.BitmovinPlayerState.PLAYING m.top.play=(1=1)
_I_11OI0_O10O((Chr(99)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(&H6c)),m.BitmovinControlState.INSTANT_REPLAY)
end sub
sub pause(_111O1OO_11_0)
_I_11OI0_O10O((Chr(99)+Chr(111)+Chr(110)+Chr(116)+Chr(&H72)+Chr(111)+Chr(108)),m.BitmovinControlState.PAUSE)
end sub
sub preload(_11_00O000_00)
_I_11OI0_O10O((Chr(99)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)),m.BitmovinControlState.PREBUFFER)
end sub
sub seek(_1IOO0IO0I0O0)
onSeek=function()
m.top.seek=(1=1)
m.KeyEventHandler.seeking=(1=1)
end function
_I_11OI0_O10O((Chr(115)+Chr(101)+Chr(101)+Chr(107)),_1IOO0IO0I0O0,onSeek)
end sub
sub mute(__1I01_0_0_1_)
if isMuted(invalid)return 
_I_11OI0_O10O((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)),(1=1))
m.top.muted=(1=1)
end sub
sub unmute(_11IIOI0IOI1_)
if not isMuted(invalid)return 
_I_11OI0_O10O((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)),(1=2))
m.top.unmuted=(1=1)
end sub
sub captionMode(_1I_I1IOIO_11)
m.deviceInfo.SetCaptionsMode(_1I_I1IOIO_11)
end sub
function isMuted(_O_10OI_10I_1)
return m.Video.mute 
end function
function isPlaying(_0OO1O11I1010)
return _I10_11_10O11((Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H69)+Chr(110)+Chr(103))) 
end function
function isPaused(_1_OI1OIII_O0)
return _I10_11_10O11((Chr(&H70)+Chr(97)+Chr(&H75)+Chr(&H73)+Chr(&H65)+Chr(100))) 
end function
function isStalled(_0O0100I11IO1)
return _I10_11_10O11((Chr(98)+Chr(117)+Chr(&H66)+Chr(102)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(&H67))) 
end function
function availableSubtitles(_00001_IO__0I)
return _OOOO__1O0OIO(m.Video.availableSubtitleTracks,_10110OI__0O0) 
end function
function getSubtitle(_01I_1O00_I_I)
trackID=m.Video.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_1_1OOO_OOI_I(trackID)
if _1_01I1IOI__I(track)
return invalid 
end if
return _10110OI__0O0(track) 
end if
end function
function setSubtitle(_II0_1OOIIOOO)
currentTime=m.video.position
subtitle=_1_1OOO_OOI_I(_II0_1OOIIOOO)
if _1_01I1IOI__I(subtitle)
m.top.warning={code:1001,message:(Chr(65)+Chr(&H50)+Chr(&H49)+Chr(&H5f)+Chr(&H49)+Chr(78)+Chr(&H56)+Chr(&H41)+Chr(76)+Chr(73)+Chr(&H44)+Chr(95)+Chr(&H41)+Chr(82)+Chr(&H47)+Chr(85)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(&H3a)+Chr(&H20)+Chr(&H41)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(110)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H64)+Chr(&H20)+Chr(&H61)+Chr(114)+Chr(103)+Chr(117)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)+Chr(32)+Chr(&H68)+Chr(&H61)+Chr(&H73)+Chr(&H20)+Chr(98)+Chr(&H65)+Chr(&H65)+Chr(110)+Chr(32)+Chr(&H70)+Chr(&H61)+Chr(&H73)+Chr(115)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(&H74)+Chr(&H6f)+Chr(&H20)+Chr(97)+Chr(&H20)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(65)+Chr(80)+Chr(73)+Chr(32)+Chr(99)+Chr(&H61)+Chr(108)+Chr(&H6c)+Chr(&H2e))}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end function
function setSubtitleStyles(_IIO0IOO0I1_I)
m.Video.captionStyle=_IIO0IOO0I1_I
end function
function getSubtitleStyles(__I0I_O000I01=invalid)
return m.Video.captionStyle 
end function
function availableAudio(_II1III0I__OI)
return _OOOO__1O0OIO(m.Video.availableAudioTracks,_OO01_0011000) 
end function
function getAudio(_0I1_OO_1O_10)
available=m.Video.availableAudioTracks
if(not ____O00I_O__1(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.Video.audioTrack=Chr(0)
return _OO01_0011000(m.Video.availableAudioTracks[0]) 
else 
track=_OIO_1III10_0(m.Video.audioTrack)
if _1_01I1IOI__I(track)
return invalid 
end if
return _OO01_0011000(track) 
end if
end function
function setAudio(_OOOO0O0_I__O)
track=_OIO_1III10_0(_OOOO0O0_I__O)
if _1_01I1IOI__I(track)
m.top.warning={code:1001,message:(Chr(&H41)+Chr(80)+Chr(73)+Chr(&H5f)+Chr(73)+Chr(&H4e)+Chr(&H56)+Chr(65)+Chr(&H4c)+Chr(&H49)+Chr(68)+Chr(&H5f)+Chr(65)+Chr(&H52)+Chr(&H47)+Chr(&H55)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(&H54)+Chr(&H3a)+Chr(&H20)+Chr(&H41)+Chr(110)+Chr(32)+Chr(&H69)+Chr(110)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(97)+Chr(114)+Chr(&H67)+Chr(117)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)+Chr(32)+Chr(&H68)+Chr(&H61)+Chr(&H73)+Chr(32)+Chr(&H62)+Chr(&H65)+Chr(101)+Chr(110)+Chr(32)+Chr(&H70)+Chr(97)+Chr(&H73)+Chr(115)+Chr(&H65)+Chr(&H64)+Chr(&H20)+Chr(105)+Chr(110)+Chr(116)+Chr(&H6f)+Chr(&H20)+Chr(97)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(32)+Chr(65)+Chr(&H50)+Chr(73)+Chr(&H20)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(46))}
else 
m.video.audioTrack=_OOOO0O0_I__O
end if
end function
sub unload(_1OOOIO_1I00_)
if m.Video.content=invalid return 
m.config.source={}
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.maxTimeShift=invalid
_00OII1__1I1O()
m.BitmovinPlayerTask.unobserveFieldScoped((Chr(101)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)))
if not _1_01I1IOI__I(m.vttHandler)
m.vttHandler.callFunc((Chr(115)+Chr(116)+Chr(111)+Chr(112)+Chr(&H56)+Chr(116)+Chr(&H74)+Chr(&H54)+Chr(97)+Chr(&H73)+Chr(&H6b)),invalid)
end if
m.Video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)))
m.Video.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)))
m.video.unobserveFieldScoped((Chr(100)+Chr(111)+Chr(&H77)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(101)+Chr(&H64)+Chr(&H53)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(&H65)+Chr(110)+Chr(116)))
m.Video.unobserveFieldScoped((Chr(&H61)+Chr(&H75)+Chr(&H64)+Chr(&H69)+Chr(&H6f)+Chr(&H54)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(107)))
m.video.unobserveFieldScoped((Chr(99)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(&H78)))
m.top.sourceUnloaded=(1=1)
end sub
sub load(_0I1_O_IO0O_O)
content=invalid
if type(_0I1_O_IO0O_O)=(Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(&H73)+Chr(&H73)+Chr(&H6f)+Chr(&H63)+Chr(&H69)+Chr(97)+Chr(116)+Chr(&H69)+Chr(118)+Chr(101)+Chr(65)+Chr(114)+Chr(&H72)+Chr(97)+Chr(121))
content=_1I0O01OOI0II(_0I1_O_IO0O_O)
else if type(_0I1_O_IO0O_O)=(Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)) and _0I1_O_IO0O_O.isSubtype((Chr(67)+Chr(111)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)))
content=_0I1_O_IO0O_O.clone((1=1))
end if
if content=invalid
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Errors.SOURCE_INVALID))
return 
end if
if not _1_01I1IOI__I(m.Video.content)
unload(invalid)
end if
if not _1_01I1IOI__I(m.errorView)
m.top.removeChild(m.errorView)
m.errorView=invalid
end if
if m.BitmovinPlayerTask.state<>m.BitmovinControlState.RUN m.BitmovinPlayerTask.control=m.BitmovinControlState.RUN
m.config.source=_0I1_O_IO0O_O
m.Video.setHttpAgent(m.httpAgent)
m.BitmovinPlayerTask.observeFieldScoped((Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)),(Chr(&H5f)+Chr(&H49)+Chr(&H49)+Chr(&H49)+Chr(&H5f)+Chr(79)+Chr(&H49)+Chr(&H4f)+Chr(49)+Chr(&H30)+Chr(73)+Chr(73)+Chr(&H30)))
m.Video.observeFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),(Chr(&H5f)+Chr(73)+Chr(&H4f)+Chr(79)+Chr(&H49)+Chr(&H5f)+Chr(&H4f)+Chr(&H30)+Chr(&H31)+Chr(&H31)+Chr(&H4f)+Chr(48)+Chr(79)))
m.Video.observeFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),(Chr(95)+Chr(&H4f)+Chr(79)+Chr(&H49)+Chr(95)+Chr(&H30)+Chr(95)+Chr(73)+Chr(&H30)+Chr(95)+Chr(73)+Chr(&H30)+Chr(73)))
m.video.observeFieldScoped((Chr(100)+Chr(111)+Chr(&H77)+Chr(110)+Chr(108)+Chr(111)+Chr(97)+Chr(100)+Chr(101)+Chr(100)+Chr(83)+Chr(101)+Chr(&H67)+Chr(109)+Chr(101)+Chr(110)+Chr(&H74)),(Chr(95)+Chr(&H30)+Chr(95)+Chr(73)+Chr(73)+Chr(48)+Chr(95)+Chr(&H49)+Chr(49)+Chr(&H31)+Chr(&H30)+Chr(&H4f)+Chr(49)))
m.Video.observeFieldScoped((Chr(97)+Chr(117)+Chr(100)+Chr(&H69)+Chr(111)+Chr(&H54)+Chr(&H72)+Chr(&H61)+Chr(&H63)+Chr(107)),(Chr(&H5f)+Chr(49)+Chr(&H5f)+Chr(&H49)+Chr(&H4f)+Chr(48)+Chr(&H4f)+Chr(&H31)+Chr(&H4f)+Chr(95)+Chr(&H5f)+Chr(&H4f)+Chr(95)))
_I_1____1O1O0(m.Video)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
thumbnailUrl=_1I1IO_1_O_OI(_0I1_O_IO0O_O,[(Chr(116)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(&H54)+Chr(114)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(&H75)+Chr(&H72)+Chr(108))])
if not _1_01I1IOI__I(thumbnailUrl) and _I__O00OI01__(thumbnailUrl) and Len(thumbnailUrl)>0
if _1_01I1IOI__I(m.vttHandler)
m.vttHandler=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(86)+Chr(116)+Chr(116)+Chr(72)+Chr(&H61)+Chr(110)+Chr(100)+Chr(108)+Chr(&H65)+Chr(114)))
end if
m.vttHandler.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H75)+Chr(112)),{vttUrl:thumbnailUrl})
m.vttHandler.callFunc((Chr(&H72)+Chr(117)+Chr(&H6e)+Chr(86)+Chr(&H74)+Chr(116)+Chr(&H54)+Chr(97)+Chr(115)+Chr(&H6b)),invalid)
end if
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=m.MAX_INT
end if
if content.getChildCount()=0 content=_I11O11I000_0(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(99)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(73)+Chr(110)+Chr(&H64)+Chr(101)+Chr(120)),(Chr(95)+Chr(&H5f)+Chr(&H30)+Chr(73)+Chr(&H4f)+Chr(&H5f)+Chr(49)+Chr(48)+Chr(49)+Chr(&H4f)+Chr(&H30)+Chr(&H4f)+Chr(&H5f)))
m.Video.content=content
m.top.sourceLoaded=(1=1)
prebuffer=_1I1IO_1_O_OI(m.config,[(Chr(97)+Chr(&H64)+Chr(97)+Chr(&H70)+Chr(116)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),(Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64))])
if _1O11IIO_II_I(prebuffer) and prebuffer
m.Video.control=(Chr(112)+Chr(&H72)+Chr(&H65)+Chr(98)+Chr(117)+Chr(&H66)+Chr(102)+Chr(&H65)+Chr(114))
end if
m.Video.mute=_1I1IO_1_O_OI(m.config,[(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(107)),(Chr(&H6d)+Chr(&H75)+Chr(116)+Chr(101)+Chr(100))])
_OI_O0OI0I1II(m.top.BitmovinPlayerState.READY)
autoplay=_1I1IO_1_O_OI(m.config,[(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(98)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(&H61)+Chr(&H75)+Chr(&H74)+Chr(111)+Chr(112)+Chr(108)+Chr(&H61)+Chr(121))])
if(_1O11IIO_II_I(autoplay) and autoplay)
play(invalid)
end if
m.BitmovinPlayerTask.fireImpression=(1=1)
end sub
function _1I0O01OOI0II(_IO_1___01I0I)
contentNode=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)))
stream=_011110I_1_0O(_IO_1___01I0I)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_IO_1___01I0I.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _IO_1___01I0I.assetType=m.AssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_1I1IO_1_O_OI(_IO_1___01I0I,[(Chr(115)+Chr(117)+Chr(98)+Chr(116)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(101)+Chr(84)+Chr(114)+Chr(97)+Chr(&H63)+Chr(107)+Chr(&H73))])
if subTitleTracks<>invalid
mappedTracks=_OOOO__1O0OIO(subtitleTracks,_IO0O__OOIIIO)
contentNode.subtitleTracks=mappedTracks
end if
drm=_1I1IO_1_O_OI(_IO_1___01I0I,[(Chr(&H64)+Chr(114)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(&H57)+Chr(&H69)+Chr(&H64)+Chr(101)+Chr(118)+Chr(&H69)+Chr(110)+Chr(101)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(82)+Chr(&H65)+Chr(97)+Chr(100)+Chr(121)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(101)+Chr(110)+Chr(&H73)+Chr(101)+Chr(&H41)+Chr(&H63)+Chr(&H71)+Chr(117)+Chr(105)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(65)+Chr(110)+Chr(100)+Chr(67)+Chr(104)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(101)+Chr(&H6e)+Chr(103)+Chr(&H65))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(37)+Chr(37)+Chr(37))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(82)+Chr(&H65)+Chr(97)+Chr(100)+Chr(121)+Chr(&H4c)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(110)+Chr(115)+Chr(&H65)+Chr(65)+Chr(99)+Chr(113)+Chr(117)+Chr(&H69)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H55)+Chr(114)+Chr(&H6c))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
end if
thumbnailUrl=_1I1IO_1_O_OI(_IO_1___01I0I,[(Chr(&H74)+Chr(104)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H54)+Chr(114)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(117)+Chr(&H72)+Chr(108))])
if thumbnailUrl<>invalid and _O_O010_1II_I(thumbnailUrl)
if thumbnailUrl.fhd<>invalid contentNode.FHDBifUrl=thumbnailUrl.fhd
if thumbnailUrl.hd<>invalid contentNode.HDBifUrl=thumbnailUrl.hd
if thumbnailUrl.sd<>invalid contentNode.SDBifUrl=thumbnailUrl.sd
end if
return contentNode 
end function
function _I11O11I000_0(_0111_I__O0_I)
playlist=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)))
playlist.appendChild(_0111_I__O0_I)
return playlist 
end function
sub __0IO_101O0O_(_O1OO11O0O1OI)
if m.top.playerState=m.top.BitmovinPlayerState.SETUP return 
m.top.sourceUnloaded=(1=1)
m.top.sourceLoaded=(1=1)
if(m.top.playerState=m.top.BitmovinPlayerState.PLAYING)or(m.top.playerState=m.top.BitmovinPlayerState.STALLING)m.top.play=(1=1)
_OI_O0OI0I1II(m.top.playerState)
end sub
function getDuration(_O1O_IOI0I01I=invalid)
if isLive()return-1 
return m.Video.duration 
end function
sub timeShift(_O11_II0_O101)
if isLive()=(1=2)return 
if(_O11_II0_O101>=getMaxTimeShift()) and(_O11_II0_O101<=0)
newTime=m.Video.duration+_O11_II0_O101
onTimeShift=function(_0IO__000OO1I)
m.top.timeShift=_0IO__000OO1I
m.KeyEventHandler.seeking=(1=1)
end function
_I_11OI0_O10O((Chr(&H73)+Chr(&H65)+Chr(101)+Chr(107)),newTime,onTimeShift,_O11_II0_O101)
end if
end sub
function getTimeShift(_II0_1I1O111I=invalid)
if isLive()
return(m.Video.position-m.Video.duration) 
end if
end function
function getMaxTimeShift(_OIO0I1_1O1_O=invalid)
if isLive()
return m.maxTimeShift 
end if
end function
sub _OOI_0_I0_I0I()
m.top.currentTime=m.Video.position
end sub
function isLive(_OIO_OII0O1__=invalid)
if m.video.content=invalid or _01OOI_1OI_II()=invalid return(1=2) 
currentPlaylistItem=_01OOI_1OI_II()
return currentPlaylistItem.live 
end function
sub setHttpHeaders(__IOI_I0_1I0I)
m.httpAgent.SetHeaders(__IOI_I0_1I0I)
end sub
sub _III_OIO10II0()
m.deficiencyService.onError(m.BitmovinPlayerTask.error)
end sub
sub _00II1_I0I1II(_1OI1_0I0OO0I)
if _1OI1_0I0OO0I.getNode()=m.top.id and m.useDefaultUi
m.KeyEventHandler.setFocus((1=1))
end if
end sub
function _01OOI_1OI_II()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
function getThumbnail(_IO11O1O11011)
if _1_01I1IOI__I(_IO11O1O11011)
return invalid 
end if
thumbnail=invalid
if not _1_01I1IOI__I(m.vttHandler)
thumbnail=m.vttHandler.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(84)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(&H6c)),_IO11O1O11011)
end if
return thumbnail 
end function
sub _0_II0_I110O1()
m.top.downloadFinished=__IO1I1I_OII_(m.video.downloadedSegment)
end sub
function __IO1I1I_OII_(__I010IO11O01)
data={}
data.downloadTime=(__I010IO11O01.downloadDuration/1000)
if __I010IO11O01.SegType=0 or __I010IO11O01.SegType=2
data.downloadType=m.httpRequestTypes.MEDIA_VIDEO
else if __I010IO11O01.SegType=1
data.downloadType=m.httpRequestTypes.MEDIA_AUDIO
else if __I010IO11O01.SegType=3
data.downloadType=m.httpRequestTypes.MEDIA_SUBTITLES
end if
data.size=__I010IO11O01.SegSize
if __I010IO11O01.Status=0
data.success=(1=1)
else 
data.success=(1=2)
end if
data.url=__I010IO11O01.SegUrl
return data 
end function
sub _1_IO0O1O__O_()
audioTrack=getAudio(invalid)
if type(audioTrack)=(Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H73)+Chr(&H73)+Chr(111)+Chr(&H63)+Chr(&H69)+Chr(97)+Chr(116)+Chr(105)+Chr(118)+Chr(&H65)+Chr(&H41)+Chr(114)+Chr(114)+Chr(97)+Chr(&H79))m.top.audioChanged=audioTrack
end sub
