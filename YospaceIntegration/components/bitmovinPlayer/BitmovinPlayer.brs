sub init()
m.httpAgent=CreateObject((Chr(114)+Chr(111)+Chr(72)+Chr(&H74)+Chr(116)+Chr(112)+Chr(&H41)+Chr(103)+Chr(&H65)+Chr(110)+Chr(116)))
m.deviceInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(111)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(102)+Chr(&H6f)+Chr(99)+Chr(117)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(67)+Chr(104)+Chr(&H69)+Chr(&H6c)+Chr(&H64)),(Chr(&H5f)+Chr(73)+Chr(49)+Chr(&H30)+Chr(49)+Chr(&H31)+Chr(&H4f)+Chr(&H5f)+Chr(48)+Chr(95)+Chr(&H31)+Chr(49)+Chr(73)))
m.top.BitmovinPlayerState=_0_10O0_I1_1I()
m.top.BitmovinFunctions=__01OIIII_1__()
m.top.BitmovinFields=_O0IO01III_1I()
m.BitmovinControlState=_10_0_10101_O()
m.AssetTypes=_O__IIIII_OO_()
m.maxTimeShift=invalid
m.MAX_INT=2147483648
m.KeyEventHandler=m.top.findNode((Chr(75)+Chr(101)+Chr(&H79)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(72)+Chr(97)+Chr(110)+Chr(&H64)+Chr(&H6c)+Chr(&H65)+Chr(&H72)))
m.KeyEventHandler.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H75)+Chr(&H70)),invalid)
m.useDefaultUi=(1=1)
m.deficiencyService=_OII1_01OIOOI(m.top)
m.deficiencyFactory=_1IO0O_1101II()
m.Errors=m.deficiencyFactory.getErrors()
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_0I0O101__IO0)
_01I1I_III_O1()
appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H70)+Chr(&H70)+Chr(73)+Chr(110)+Chr(&H66)+Chr(111)))
m.config=__1I1O_O00O0O(_0I0O101__IO0)
m.config.version=appInfo.GetVersion()
m.config.channelID=appInfo.getID()
m.config.key=appInfo.getValue((Chr(&H62)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H5f)+Chr(112)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(95)+Chr(108)+Chr(105)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(95)+Chr(107)+Chr(101)+Chr(121)))
m.BitmovinPlayerTask=m.top.findNode((Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72)+Chr(&H54)+Chr(&H61)+Chr(115)+Chr(107)))
m.BitmovinPlayerTask.config=m.config
m.Video=m.top.findNode((Chr(77)+Chr(97)+Chr(&H69)+Chr(&H6e)+Chr(&H56)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(111)))
if m.config.ui=(1=2)m.useDefaultUi=(1=2)
__00__11I_OI_(m.top.BitmovinPlayerState.SETUP)
if not __I_0_OIO1_O_(m.config.source)
load(m.config.source)
end if
end function
function getConfig()
config=__1I1O_O00O0O(m.config)
if type(m.config.source)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)) and m.config.source.isSubtype((Chr(67)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)))
config.source=m.config.source.clone((1=1))
end if
return config 
end function
function __II_01_OI110(_0__IIO0_IIIO)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_0__IIO0_IIIO
return available[i] 
end if
end for
return invalid 
end function
function _00I10OII0111(_I00OO1I1_010)
if _I00OO1I1_010=(Chr(&H62)+Chr(117)+Chr(102)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67))return m.top.BitmovinPlayerState.STALLING 
return _I00OO1I1_010 
end function
function ____1011O10__(_0__0O11OIO11)
count=m.Video.availableAudioTracks.count()
availableTracks=m.Video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_0__0O11OIO11
return availableTracks[i] 
end if
end for
return invalid 
end function
sub __00__11I_OI_(___OI0OIIOOO0)
if _00I10OII0111(___OI0OIIOOO0)=m.top.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
?(Chr(67)+Chr(&H68)+Chr(97)+Chr(110)+Chr(&H67)+Chr(&H65)+Chr(&H20)+Chr(&H74)+Chr(111)+Chr(&H20)+Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(32)+Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H3a)+Chr(&H20));_00I10OII0111(___OI0OIIOOO0)
m.top.playerState=_00I10OII0111(___OI0OIIOOO0)
m.BitmovinPlayerTask.playerState=___OI0OIIOOO0
m.KeyEventHandler.playerState=___OI0OIIOOO0
end sub
sub _1O_I_II0_01I()
if m.Video<>invalid
__00__11I_OI_(m.Video.state)
if m.Video.state=(Chr(101)+Chr(114)+Chr(114)+Chr(111)+Chr(114))
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Video.errorCode))
else if m.Video.state=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(105)+Chr(110)+Chr(103)) and m.KeyEventHandler.seeking
if isLive()
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=m.top.currentTime
end if
_01I1I_III_O1()
else if m.Video.state=(Chr(102)+Chr(105)+Chr(110)+Chr(105)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(100))
_01I1I_III_O1()
end if
end if
end sub
sub _01I1I_III_O1()
m.KeyEventHandler.seeking=(1=2)
end sub
sub _1_I___0I1OI_()
m.BitmovinPlayerTask.control=m.BitmovinControlState.stop
end sub
sub _0O000I0_I0O1(_O00_OIO00_0O,__01II0I_0OI1,_01OI_01O_0_O=_01000_IIO100,_1_OI1I_I_O0I=invalid)
if m.Video.content=invalid
m.top.warning={code:(Chr(83)+Chr(&H4f)+Chr(&H55)+Chr(&H52)+Chr(&H43)+Chr(69)),message:(Chr(78)+Chr(&H6f)+Chr(&H20)+Chr(&H76)+Chr(105)+Chr(100)+Chr(&H65)+Chr(111)+Chr(32)+Chr(&H73)+Chr(&H6f)+Chr(&H75)+Chr(114)+Chr(99)+Chr(&H65)+Chr(&H20)+Chr(&H69)+Chr(&H73)+Chr(&H20)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H6c)+Chr(&H79)+Chr(&H20)+Chr(108)+Chr(111)+Chr(97)+Chr(100)+Chr(&H65)+Chr(&H64)+Chr(46)+Chr(&H20)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)+Chr(115)+Chr(&H20)+Chr(&H61)+Chr(114)+Chr(101)+Chr(32)+Chr(117)+Chr(110)+Chr(&H61)+Chr(118)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(97)+Chr(98)+Chr(&H6c)+Chr(&H65)+Chr(46))}
else 
m.Video[_O00_OIO00_0O]=__01II0I_0OI1
if _1_OI1I_I_O0I=invalid
_01OI_01O_0_O()
else 
_01OI_01O_0_O(_1_OI1I_I_O0I)
end if
end if
end sub
function _1I_0IIIO1I10(_10110O1IIO_0)
if _10110O1IIO_0.dash<>invalid
return{streamFormat:(Chr(100)+Chr(&H61)+Chr(115)+Chr(&H68)),url:_10110O1IIO_0.dash} 
else if _10110O1IIO_0.hls<>invalid
return{streamFormat:(Chr(104)+Chr(&H6c)+Chr(115)),url:_10110O1IIO_0.hls} 
else if _10110O1IIO_0.smooth<>invalid
return{streamFormat:(Chr(105)+Chr(115)+Chr(109)),url:_10110O1IIO_0.smooth} 
else if _10110O1IIO_0.progressive<>invalid
return{streamFormat:(Chr(&H6d)+Chr(&H70)+Chr(52)),url:_10110O1IIO_0.progressive} 
else 
return{} 
end if
end function
function _1_O_O_OI111_(_1I0OO_01OIOO)
newItem={trackName:_1I0OO_01OIOO.url,language:_1I0OO_01OIOO.language,description:_1I0OO_01OIOO.label}
return newItem 
end function
function _0O00___I_IO_(__11__1_010_I)
return{id:__11__1_010_I.trackName,language:__11__1_010_I.language,label:__11__1_010_I.description} 
end function
function _I11I001IIIOO(_010OIO01_0O0)
return{id:_010OIO01_0O0.track,language:_010OIO01_0O0.language,label:_010OIO01_0O0.name} 
end function
function _0O11I1_I0__I(____I00OI0I__)
if m.Video.state=____I00OI0I__
return(1=1) 
else 
return(1=2) 
end if
end function
sub play(_1100O_1_1OOI)
_0O000I0_I0O1((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(108)),m.BitmovinControlState.PLAY)
m.top.play=(1=1)
end sub
sub pause(_1O0OII_O_1I_)
_0O000I0_I0O1((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(108)),m.BitmovinControlState.PAUSE)
end sub
sub preload(_0_0OOOO0OI01)
_0O000I0_I0O1((Chr(99)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(&H6c)),m.BitmovinControlState.PREBUFFER)
end sub
sub seek(_I_11IOO10I_1)
onSeek=function()
m.top.seek=(1=1)
m.KeyEventHandler.seeking=(1=1)
end function
_0O000I0_I0O1((Chr(115)+Chr(&H65)+Chr(101)+Chr(&H6b)),_I_11IOO10I_1,onSeek)
end sub
sub mute(_I0_I___01IO1)
_0O000I0_I0O1((Chr(109)+Chr(117)+Chr(&H74)+Chr(&H65)),(1=1))
end sub
sub unmute(_0_1I00O1I1I0)
_0O000I0_I0O1((Chr(109)+Chr(117)+Chr(116)+Chr(&H65)),(1=2))
end sub
sub captionMode(_II0IIOOO_I0O)
m.deviceInfo.SetCaptionsMode(_II0IIOOO_I0O)
end sub
function isMuted(_IO0O1I10__I1)
return m.Video.mute 
end function
function isPlaying(_I1_IOO1O0110)
return _0O11I1_I0__I((Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(105)+Chr(110)+Chr(&H67))) 
end function
function isPaused(_1O01O10OI11I)
return _0O11I1_I0__I((Chr(&H70)+Chr(&H61)+Chr(&H75)+Chr(&H73)+Chr(&H65)+Chr(100))) 
end function
function isStalled(__101IIII001_)
return _0O11I1_I0__I((Chr(98)+Chr(&H75)+Chr(102)+Chr(102)+Chr(&H65)+Chr(114)+Chr(105)+Chr(110)+Chr(&H67))) 
end function
function availableSubtitles(_1I_0_0OOO0I_)
return _0_II0_OOO100(m.Video.availableSubtitleTracks,_0O00___I_IO_) 
end function
function getSubtitle(_0O1_O111__1O)
trackID=m.Video.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=__II_01_OI110(trackID)
if __I_0_OIO1_O_(track)
return invalid 
end if
return _0O00___I_IO_(track) 
end if
end function
function setSubtitle(_0OI_00O101_0)
currentTime=m.video.position
subtitle=__II_01_OI110(_0OI_00O101_0)
if __I_0_OIO1_O_(subtitle)
m.top.warning={code:1001,message:(Chr(65)+Chr(&H50)+Chr(73)+Chr(&H5f)+Chr(73)+Chr(78)+Chr(86)+Chr(65)+Chr(&H4c)+Chr(&H49)+Chr(68)+Chr(&H5f)+Chr(65)+Chr(82)+Chr(&H47)+Chr(85)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(&H54)+Chr(&H3a)+Chr(32)+Chr(65)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(&H76)+Chr(97)+Chr(108)+Chr(&H69)+Chr(100)+Chr(&H20)+Chr(&H61)+Chr(114)+Chr(&H67)+Chr(117)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H20)+Chr(104)+Chr(&H61)+Chr(&H73)+Chr(&H20)+Chr(&H62)+Chr(101)+Chr(101)+Chr(110)+Chr(&H20)+Chr(112)+Chr(&H61)+Chr(&H73)+Chr(115)+Chr(101)+Chr(100)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(&H74)+Chr(&H6f)+Chr(32)+Chr(97)+Chr(&H20)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H20)+Chr(&H41)+Chr(80)+Chr(73)+Chr(&H20)+Chr(99)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(46))}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end function
function setSubtitleStyles(__OO_1110O0OO)
m.Video.captionStyle=__OO_1110O0OO
end function
function getSubtitleStyles()
return m.Video.captionStyle 
end function
function availableAudio(_I0011_1O0I_O)
return _0_II0_OOO100(m.Video.availableAudioTracks,_I11I001IIIOO) 
end function
function getAudio(_III0I__01IOI)
available=m.Video.availableAudioTracks
if(not _00IOI11OOO11(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.Video.audioTrack=Chr(0)
return _I11I001IIIOO(m.Video.availableAudioTracks[0]) 
else 
track=____1011O10__(m.Video.audioTrack)
if __I_0_OIO1_O_(track)
return invalid 
end if
return _I11I001IIIOO(track) 
end if
end function
function setAudio(_0OO1__11I111)
track=____1011O10__(_0OO1__11I111)
if __I_0_OIO1_O_(track)
m.top.warning={code:1001,message:(Chr(&H41)+Chr(80)+Chr(73)+Chr(95)+Chr(73)+Chr(78)+Chr(86)+Chr(&H41)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(&H5f)+Chr(&H41)+Chr(&H52)+Chr(71)+Chr(85)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(58)+Chr(&H20)+Chr(65)+Chr(110)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(118)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(&H61)+Chr(&H72)+Chr(103)+Chr(&H75)+Chr(109)+Chr(101)+Chr(110)+Chr(116)+Chr(&H20)+Chr(104)+Chr(&H61)+Chr(&H73)+Chr(&H20)+Chr(&H62)+Chr(&H65)+Chr(101)+Chr(&H6e)+Chr(&H20)+Chr(&H70)+Chr(&H61)+Chr(&H73)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(&H74)+Chr(111)+Chr(&H20)+Chr(97)+Chr(&H20)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(32)+Chr(65)+Chr(80)+Chr(&H49)+Chr(32)+Chr(99)+Chr(&H61)+Chr(108)+Chr(108)+Chr(46))}
else 
m.video.audioTrack=_0OO1__11I111
end if
end function
sub unload(_010__1_I_O1O)
if m.Video.content=invalid return 
m.config.source={}
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.maxTimeShift=invalid
_01I1I_III_O1()
m.BitmovinPlayerTask.unobserveFieldScoped((Chr(101)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)))
m.Video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)))
m.Video.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(116)+Chr(105)+Chr(111)+Chr(110)))
m.video.unobserveFieldScoped((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H49)+Chr(&H6e)+Chr(100)+Chr(101)+Chr(&H78)))
m.top.sourceUnloaded=(1=1)
end sub
sub load(_1_O_II0___OO)
content=invalid
if type(_1_O_II0___OO)=(Chr(114)+Chr(111)+Chr(&H41)+Chr(&H73)+Chr(115)+Chr(111)+Chr(99)+Chr(&H69)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H76)+Chr(&H65)+Chr(&H41)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(121))
content=_II11I0_IO_OO(_1_O_II0___OO)
else if type(_1_O_II0___OO)=(Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)) and _1_O_II0___OO.isSubtype((Chr(67)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)))
content=_1_O_II0___OO.clone((1=1))
end if
if content=invalid
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Errors.SOURCE_INVALID))
return 
end if
if not __I_0_OIO1_O_(m.Video.content)
unload(invalid)
end if
if not __I_0_OIO1_O_(m.errorView)
m.top.removeChild(m.errorView)
m.errorView=invalid
end if
if m.BitmovinPlayerTask.state<>m.BitmovinControlState.RUN m.BitmovinPlayerTask.control=m.BitmovinControlState.RUN
m.config.source=_1_O_II0___OO
m.Video.setHttpAgent(m.httpAgent)
m.BitmovinPlayerTask.observeFieldScoped((Chr(&H65)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)),(Chr(95)+Chr(&H5f)+Chr(48)+Chr(48)+Chr(49)+Chr(&H30)+Chr(49)+Chr(&H31)+Chr(&H5f)+Chr(49)+Chr(73)+Chr(73)+Chr(95)))
m.Video.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H65)),(Chr(&H5f)+Chr(&H31)+Chr(79)+Chr(&H5f)+Chr(73)+Chr(95)+Chr(&H49)+Chr(&H49)+Chr(48)+Chr(95)+Chr(&H30)+Chr(49)+Chr(&H49)))
m.Video.observeFieldScoped((Chr(112)+Chr(111)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),(Chr(&H5f)+Chr(&H4f)+Chr(79)+Chr(&H31)+Chr(73)+Chr(73)+Chr(&H30)+Chr(49)+Chr(79)+Chr(79)+Chr(79)+Chr(49)+Chr(&H49)))
_01O10I0I10_I(m.Video)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=m.MAX_INT
end if
if content.getChildCount()=0 content=_OO0001_101IO(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H49)+Chr(&H6e)+Chr(&H64)+Chr(101)+Chr(&H78)),(Chr(95)+Chr(73)+Chr(73)+Chr(49)+Chr(&H31)+Chr(48)+Chr(48)+Chr(&H5f)+Chr(&H31)+Chr(95)+Chr(49)+Chr(&H49)+Chr(&H31)))
m.Video.content=content
m.top.sourceLoaded=(1=1)
prebuffer=_OO__O1O1__0I(m.config,[(Chr(97)+Chr(100)+Chr(&H61)+Chr(&H70)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),(Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64))])
if _000_0_0O1110(prebuffer) and prebuffer
m.Video.control=(Chr(112)+Chr(114)+Chr(&H65)+Chr(98)+Chr(&H75)+Chr(102)+Chr(102)+Chr(&H65)+Chr(&H72))
end if
m.Video.mute=_OO__O1O1__0I(m.config,[(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(107)),(Chr(109)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(&H64))])
__00__11I_OI_(m.top.BitmovinPlayerState.READY)
autoplay=_OO__O1O1__0I(m.config,[(Chr(112)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H62)+Chr(97)+Chr(&H63)+Chr(107)),(Chr(97)+Chr(&H75)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121))])
if(_000_0_0O1110(autoplay) and autoplay)
play(invalid)
end if
m.BitmovinPlayerTask.fireImpression=(1=1)
end sub
function _II11I0_IO_OO(_11_0I0I__010)
contentNode=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(110)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)))
stream=_1I_0IIIO1I10(_11_0I0I__010)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_11_0I0I__010.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _11_0I0I__010.assetType=m.AssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_OO__O1O1__0I(_11_0I0I__010,[(Chr(&H73)+Chr(117)+Chr(&H62)+Chr(116)+Chr(&H69)+Chr(116)+Chr(108)+Chr(&H65)+Chr(84)+Chr(&H72)+Chr(97)+Chr(99)+Chr(&H6b)+Chr(&H73))])
if subTitleTracks<>invalid
mappedTracks=_0_II0_OOO100(subtitleTracks,_1_O_O_OI111_)
contentNode.subtitleTracks=mappedTracks
end if
drm=_OO__O1O1__0I(_11_0I0I__010,[(Chr(&H64)+Chr(114)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(&H57)+Chr(105)+Chr(100)+Chr(101)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(101)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(&H79)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(101)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(65)+Chr(&H63)+Chr(113)+Chr(&H75)+Chr(&H69)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H41)+Chr(&H6e)+Chr(&H64)+Chr(&H43)+Chr(104)+Chr(97)+Chr(108)+Chr(108)+Chr(101)+Chr(110)+Chr(&H67)+Chr(101))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(&H25)+Chr(&H25)+Chr(37))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(82)+Chr(&H65)+Chr(97)+Chr(&H64)+Chr(&H79)+Chr(76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(&H41)+Chr(99)+Chr(&H71)+Chr(&H75)+Chr(&H69)+Chr(115)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H55)+Chr(&H72)+Chr(&H6c))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
end if
thumbnailUrl=_OO__O1O1__0I(_11_0I0I__010,[(Chr(&H74)+Chr(&H68)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H54)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(107)),(Chr(&H75)+Chr(114)+Chr(108))])
if thumbnailUrl<>invalid
if thumbnailUrl.fhd<>invalid contentNode.FHDBifUrl=thumbnailUrl.fhd
if thumbnailUrl.hd<>invalid contentNode.HDBifUrl=thumbnailUrl.hd
if thumbnailUrl.sd<>invalid contentNode.SDBifUrl=thumbnailUrl.sd
end if
return contentNode 
end function
function _OO0001_101IO(_OO0_I1O0OO01)
playlist=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)))
playlist.appendChild(_OO0_I1O0OO01)
return playlist 
end function
sub _II1100_1_1I1(_1I0I00_1_1_1)
if m.top.playerState=m.top.BitmovinPlayerState.SETUP return 
m.top.sourceUnloaded=(1=1)
m.top.sourceLoaded=(1=1)
if(m.top.playerState=m.top.BitmovinPlayerState.PLAYING)or(m.top.playerState=m.top.BitmovinPlayerState.STALLING)m.top.play=(1=1)
__00__11I_OI_(m.top.playerState)
end sub
function getDuration()
if isLive()return-1 
return m.Video.duration 
end function
sub timeShift(_I01_1I0II1_1)
if isLive()=(1=2)return 
if(_I01_1I0II1_1>=getMaxTimeShift()) and(_I01_1I0II1_1<=0)
newTime=m.Video.duration+_I01_1I0II1_1
onTimeShift=function(_0I0_I1_IOIOO)
m.top.timeShift=_0I0_I1_IOIOO
m.KeyEventHandler.seeking=(1=1)
end function
_0O000I0_I0O1((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(&H6b)),newTime,onTimeShift,_I01_1I0II1_1)
end if
end sub
function getTimeShift()
if isLive()
return(m.Video.position-m.Video.duration) 
end if
end function
function getMaxTimeShift()
if isLive()
return m.maxTimeShift 
end if
end function
sub _OO1II01OOO1I()
m.top.currentTime=m.Video.position
end sub
function isLive()
if m.video.content=invalid or __IO10O_0_1I0()=invalid return(1=2) 
return __IO10O_0_1I0() 
end function
sub setHttpHeaders(_1O0O0_III10_)
m.httpAgent.SetHeaders(_1O0O0_III10_)
end sub
sub __001011_1II_()
m.deficiencyService.onError(m.BitmovinPlayerTask.error)
end sub
sub _I1011O_0_11I(_0O1_O0O1I01I)
if _0O1_O0O1I01I.getNode()=m.top.id and m.useDefaultUi
m.KeyEventHandler.setFocus((1=1))
end if
end sub
function __IO10O_0_1I0()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
