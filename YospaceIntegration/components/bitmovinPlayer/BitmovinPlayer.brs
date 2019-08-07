sub init()
m.httpAgent=CreateObject((Chr(114)+Chr(111)+Chr(&H48)+Chr(&H74)+Chr(116)+Chr(&H70)+Chr(&H41)+Chr(103)+Chr(101)+Chr(&H6e)+Chr(&H74)))
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(68)+Chr(101)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(111)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(&H66)+Chr(111)+Chr(&H63)+Chr(117)+Chr(115)+Chr(&H65)+Chr(100)+Chr(&H43)+Chr(&H68)+Chr(&H69)+Chr(108)+Chr(100)),(Chr(&H5f)+Chr(&H30)+Chr(49)+Chr(&H49)+Chr(&H4f)+Chr(95)+Chr(&H49)+Chr(79)+Chr(&H31)+Chr(&H5f)+Chr(&H31)+Chr(49)+Chr(&H31)))
m.top.BitmovinPlayerState=_11IO0O1OOIO1()
m.top.BitmovinFunctions=_I0OOIIIO01O1()
m.top.BitmovinFields=_10_OI01I0OI1()
m.BitmovinControlState=_1_O0II_00O00()
m.AssetTypes=_10I_OI__1_11()
m.maxTimeShift=invalid
m.MAX_INT=2147483648
m.KeyEventHandler=m.top.findNode((Chr(&H4b)+Chr(101)+Chr(121)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H48)+Chr(&H61)+Chr(&H6e)+Chr(100)+Chr(&H6c)+Chr(101)+Chr(114)))
m.KeyEventHandler.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H75)+Chr(&H70)),invalid)
m.useDefaultUi=(1=1)
m.deficiencyService=_0_1_0IOI00__(m.top)
m.deficiencyFactory=_OI10O1_OII_0()
m.Errors=m.deficiencyFactory.getErrors()
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_OO0_0II1II1O)
_0_O11IOO0101()
appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(65)+Chr(112)+Chr(112)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.config=_0O_0_1O0_I1O(_OO0_0II1II1O)
m.config.version=appInfo.GetVersion()
m.config.channelID=appInfo.getID()
m.config.key=appInfo.getValue((Chr(&H62)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(95)+Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(&H5f)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(&H5f)+Chr(&H6b)+Chr(&H65)+Chr(&H79)))
m.BitmovinPlayerTask=m.top.findNode((Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(84)+Chr(&H61)+Chr(115)+Chr(&H6b)))
m.BitmovinPlayerTask.config=m.config
m.Video=m.top.findNode((Chr(&H4d)+Chr(97)+Chr(105)+Chr(110)+Chr(86)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(&H6f)))
if m.config.ui=(1=2)m.useDefaultUi=(1=2)
_1OOI001OI1_1(m.top.BitmovinPlayerState.SETUP)
if not _0I_O1100OOOO(m.config.source)
load(m.config.source)
end if
end function
function getConfig()
config=_0O_0_1O0_I1O(m.config)
if type(m.config.source)=(Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)) and m.config.source.isSubtype((Chr(&H43)+Chr(111)+Chr(110)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)))
config.source=m.config.source.clone((1=1))
end if
return config 
end function
function _O1_0_II1I1I0(_OO_O11OOI001)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_OO_O11OOI001
return available[i] 
end if
end for
return invalid 
end function
function _00_011OOII1_(_0I1_I_1_OII_)
if _0I1_I_1_OII_=(Chr(98)+Chr(117)+Chr(&H66)+Chr(102)+Chr(101)+Chr(114)+Chr(&H69)+Chr(&H6e)+Chr(&H67))return m.top.BitmovinPlayerState.STALLING 
return _0I1_I_1_OII_ 
end function
function _010OO_O0_00_(_00O01OIOII00)
count=m.Video.availableAudioTracks.count()
availableTracks=m.Video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_00O01OIOII00
return availableTracks[i] 
end if
end for
return invalid 
end function
sub _1OOI001OI1_1(_10_00I011I_0)
if _00_011OOII1_(_10_00I011I_0)=m.top.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
?(Chr(67)+Chr(104)+Chr(&H61)+Chr(110)+Chr(&H67)+Chr(101)+Chr(32)+Chr(&H74)+Chr(111)+Chr(&H20)+Chr(112)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(32)+Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(58)+Chr(&H20));_00_011OOII1_(_10_00I011I_0)
m.top.playerState=_00_011OOII1_(_10_00I011I_0)
m.BitmovinPlayerTask.playerState=_10_00I011I_0
m.KeyEventHandler.playerState=_10_00I011I_0
end sub
sub _O0__1I0II0IO()
if m.Video<>invalid
_1OOI001OI1_1(m.Video.state)
if m.Video.state=(Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114))
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Video.errorCode))
else if m.Video.state=(Chr(112)+Chr(108)+Chr(97)+Chr(121)+Chr(&H69)+Chr(&H6e)+Chr(&H67)) and m.KeyEventHandler.seeking
if isLive()
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=m.top.currentTime
end if
_0_O11IOO0101()
else if m.Video.state=(Chr(&H66)+Chr(&H69)+Chr(110)+Chr(105)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(100))
_0_O11IOO0101()
end if
end if
end sub
sub _0_O11IOO0101()
m.KeyEventHandler.seeking=(1=2)
end sub
sub _OIO_O001O_11()
m.BitmovinPlayerTask.control=m.BitmovinControlState.stop
end sub
sub _1O10O_1IO001(__OO00O10O1__,_II_1_1011OOO,_O1I0O_O0O0O1=_0111_1O011OO,_I_1__O1_1100=invalid)
if m.Video.content=invalid
m.top.warning={code:(Chr(&H53)+Chr(&H4f)+Chr(85)+Chr(&H52)+Chr(&H43)+Chr(&H45)),message:(Chr(78)+Chr(111)+Chr(32)+Chr(&H76)+Chr(&H69)+Chr(100)+Chr(101)+Chr(&H6f)+Chr(&H20)+Chr(&H73)+Chr(111)+Chr(&H75)+Chr(114)+Chr(&H63)+Chr(101)+Chr(32)+Chr(&H69)+Chr(115)+Chr(&H20)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(108)+Chr(&H79)+Chr(&H20)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(&H65)+Chr(&H64)+Chr(&H2e)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)+Chr(&H73)+Chr(&H20)+Chr(&H61)+Chr(114)+Chr(101)+Chr(&H20)+Chr(&H75)+Chr(110)+Chr(&H61)+Chr(118)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H61)+Chr(&H62)+Chr(108)+Chr(101)+Chr(46))}
else 
m.Video[__OO00O10O1__]=_II_1_1011OOO
if _I_1__O1_1100=invalid
_O1I0O_O0O0O1()
else 
_O1I0O_O0O0O1(_I_1__O1_1100)
end if
end if
end sub
function _O1__00_I01II(_1111O_1__O0I)
if _1111O_1__O0I.dash<>invalid
return{streamFormat:(Chr(100)+Chr(97)+Chr(&H73)+Chr(104)),url:_1111O_1__O0I.dash} 
else if _1111O_1__O0I.hls<>invalid
return{streamFormat:(Chr(&H68)+Chr(108)+Chr(&H73)),url:_1111O_1__O0I.hls} 
else if _1111O_1__O0I.smooth<>invalid
return{streamFormat:(Chr(105)+Chr(&H73)+Chr(&H6d)),url:_1111O_1__O0I.smooth} 
else if _1111O_1__O0I.progressive<>invalid
return{streamFormat:(Chr(&H6d)+Chr(&H70)+Chr(&H34)),url:_1111O_1__O0I.progressive} 
else 
return{} 
end if
end function
function __IO_1O0OO__O(__I0___1O_I_1)
newItem={trackName:__I0___1O_I_1.url,language:__I0___1O_I_1.language,description:__I0___1O_I_1.label}
return newItem 
end function
function __O111_0O1_0_(_0_O0O10IO__0)
return{id:_0_O0O10IO__0.trackName,language:_0_O0O10IO__0.language,label:_0_O0O10IO__0.description} 
end function
function _11I0IO1OI101(_I1_0_I00O_00)
return{id:_I1_0_I00O_00.track,language:_I1_0_I00O_00.language,label:_I1_0_I00O_00.name} 
end function
function _0_II0O_I_O10(_I1___1I10I00)
if m.Video.state=_I1___1I10I00
return(1=1) 
else 
return(1=2) 
end if
end function
sub play(_O0O_00I01O_O)
_1O10O_1IO001((Chr(99)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(&H6c)),m.BitmovinControlState.PLAY)
m.top.play=(1=1)
end sub
sub pause(_1O_11OIOOIII)
_1O10O_1IO001((Chr(99)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(&H6c)),m.BitmovinControlState.PAUSE)
end sub
sub preload(_O11II_O00110)
_1O10O_1IO001((Chr(99)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(114)+Chr(111)+Chr(108)),m.BitmovinControlState.PREBUFFER)
end sub
sub seek(_111_1001_IOI)
onSeek=function()
m.top.seek=(1=1)
m.KeyEventHandler.seeking=(1=1)
end function
_1O10O_1IO001((Chr(115)+Chr(&H65)+Chr(&H65)+Chr(&H6b)),_111_1001_IOI,onSeek)
end sub
sub mute(_0_O__O01_000)
_1O10O_1IO001((Chr(109)+Chr(&H75)+Chr(116)+Chr(&H65)),(1=1))
end sub
sub unmute(_O1__I__00I10)
_1O10O_1IO001((Chr(&H6d)+Chr(117)+Chr(&H74)+Chr(&H65)),(1=2))
end sub
sub captionMode(_011I1I10_O__)
m.deviceInfo.SetCaptionsMode(_011I1I10_O__)
end sub
function isMuted(_1111I_111IO1)
return m.Video.mute 
end function
function isPlaying(_OOI0__1I_O10)
return _0_II0O_I_O10((Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(&H6e)+Chr(&H67))) 
end function
function isPaused(_0OI01__OI111)
return _0_II0O_I_O10((Chr(&H70)+Chr(97)+Chr(&H75)+Chr(&H73)+Chr(&H65)+Chr(&H64))) 
end function
function isStalled(__I0I11101O_0)
return _0_II0O_I_O10((Chr(98)+Chr(&H75)+Chr(&H66)+Chr(102)+Chr(101)+Chr(&H72)+Chr(105)+Chr(110)+Chr(103))) 
end function
function availableSubtitles(_OI0OI__1O00I)
return _1_O1__0IO_OO(m.Video.availableSubtitleTracks,__O111_0O1_0_) 
end function
function getSubtitle(_1___011O1I1O)
trackID=m.Video.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_O1_0_II1I1I0(trackID)
if _0I_O1100OOOO(track)
return invalid 
end if
return __O111_0O1_0_(track) 
end if
end function
function setSubtitle(_0OI10I00O_IO)
currentTime=m.video.position
subtitle=_O1_0_II1I1I0(_0OI10I00O_IO)
if _0I_O1100OOOO(subtitle)
m.top.warning={code:1001,message:(Chr(65)+Chr(&H50)+Chr(73)+Chr(&H5f)+Chr(&H49)+Chr(&H4e)+Chr(&H56)+Chr(65)+Chr(&H4c)+Chr(73)+Chr(&H44)+Chr(&H5f)+Chr(&H41)+Chr(82)+Chr(&H47)+Chr(85)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(58)+Chr(32)+Chr(65)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(118)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(&H20)+Chr(97)+Chr(&H72)+Chr(103)+Chr(117)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H20)+Chr(&H68)+Chr(97)+Chr(115)+Chr(&H20)+Chr(98)+Chr(&H65)+Chr(101)+Chr(&H6e)+Chr(&H20)+Chr(112)+Chr(&H61)+Chr(115)+Chr(&H73)+Chr(101)+Chr(100)+Chr(32)+Chr(&H69)+Chr(110)+Chr(116)+Chr(&H6f)+Chr(&H20)+Chr(97)+Chr(&H20)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(32)+Chr(65)+Chr(&H50)+Chr(&H49)+Chr(32)+Chr(&H63)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(46))}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end function
function setSubtitleStyles(_1O1_01O10I__)
m.Video.captionStyle=_1O1_01O10I__
end function
function getSubtitleStyles()
return m.Video.captionStyle 
end function
function availableAudio(_OIIO_O_IOOI1)
return _1_O1__0IO_OO(m.Video.availableAudioTracks,_11I0IO1OI101) 
end function
function getAudio(_IO0010I00IOI)
available=m.Video.availableAudioTracks
if(not _10_I0_OIO_0_(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.Video.audioTrack=Chr(0)
return _11I0IO1OI101(m.Video.availableAudioTracks[0]) 
else 
track=_010OO_O0_00_(m.Video.audioTrack)
if _0I_O1100OOOO(track)
return invalid 
end if
return _11I0IO1OI101(track) 
end if
end function
function setAudio(_0_0OOO0_O001)
track=_010OO_O0_00_(_0_0OOO0_O001)
if _0I_O1100OOOO(track)
m.top.warning={code:1001,message:(Chr(65)+Chr(&H50)+Chr(73)+Chr(95)+Chr(&H49)+Chr(78)+Chr(&H56)+Chr(65)+Chr(76)+Chr(73)+Chr(68)+Chr(95)+Chr(&H41)+Chr(&H52)+Chr(&H47)+Chr(&H55)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(58)+Chr(32)+Chr(65)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(32)+Chr(&H61)+Chr(&H72)+Chr(&H67)+Chr(&H75)+Chr(&H6d)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(32)+Chr(&H68)+Chr(97)+Chr(115)+Chr(&H20)+Chr(&H62)+Chr(101)+Chr(101)+Chr(&H6e)+Chr(&H20)+Chr(112)+Chr(97)+Chr(&H73)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(116)+Chr(111)+Chr(&H20)+Chr(&H61)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(32)+Chr(&H41)+Chr(80)+Chr(73)+Chr(32)+Chr(&H63)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(46))}
else 
m.video.audioTrack=_0_0OOO0_O001
end if
end function
sub unload(___IIOO01I_OO)
if m.Video.content=invalid return 
m.config.source={}
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.maxTimeShift=invalid
_0_O11IOO0101()
m.BitmovinPlayerTask.unobserveFieldScoped((Chr(101)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)))
m.Video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(101)))
m.Video.unobserveFieldScoped((Chr(&H70)+Chr(111)+Chr(115)+Chr(105)+Chr(116)+Chr(105)+Chr(111)+Chr(110)))
m.video.unobserveFieldScoped((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(73)+Chr(&H6e)+Chr(100)+Chr(101)+Chr(120)))
m.top.sourceUnloaded=(1=1)
end sub
sub load(_IIO_OO_O__O_)
content=invalid
if type(_IIO_OO_O__O_)=(Chr(&H72)+Chr(111)+Chr(&H41)+Chr(115)+Chr(115)+Chr(111)+Chr(&H63)+Chr(&H69)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(101)+Chr(65)+Chr(114)+Chr(114)+Chr(97)+Chr(121))
content=_1OI0OIIO0OO1(_IIO_OO_O__O_)
else if type(_IIO_OO_O__O_)=(Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)) and _IIO_OO_O__O_.isSubtype((Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)))
content=_IIO_OO_O__O_.clone((1=1))
end if
if content=invalid
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Errors.SOURCE_INVALID))
return 
end if
if not _0I_O1100OOOO(m.Video.content)
unload(invalid)
end if
if not _0I_O1100OOOO(m.errorView)
m.top.removeChild(m.errorView)
m.errorView=invalid
end if
if m.BitmovinPlayerTask.state<>m.BitmovinControlState.RUN m.BitmovinPlayerTask.control=m.BitmovinControlState.RUN
m.config.source=_IIO_OO_O__O_
m.Video.setHttpAgent(m.httpAgent)
m.BitmovinPlayerTask.observeFieldScoped((Chr(101)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)),(Chr(95)+Chr(48)+Chr(&H4f)+Chr(48)+Chr(49)+Chr(&H31)+Chr(95)+Chr(73)+Chr(48)+Chr(&H49)+Chr(95)+Chr(73)+Chr(48)))
m.Video.observeFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)),(Chr(95)+Chr(79)+Chr(48)+Chr(&H5f)+Chr(&H5f)+Chr(&H31)+Chr(&H49)+Chr(&H30)+Chr(&H49)+Chr(&H49)+Chr(48)+Chr(&H49)+Chr(79)))
m.Video.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),(Chr(95)+Chr(95)+Chr(&H31)+Chr(73)+Chr(73)+Chr(&H5f)+Chr(&H31)+Chr(&H30)+Chr(48)+Chr(&H4f)+Chr(48)+Chr(&H4f)+Chr(&H30)))
_OO_I01000_00(m.Video)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=m.MAX_INT
end if
if content.getChildCount()=0 content=_01_I10II_1I1(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(110)+Chr(116)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(120)),(Chr(&H5f)+Chr(95)+Chr(48)+Chr(&H31)+Chr(&H31)+Chr(49)+Chr(73)+Chr(&H4f)+Chr(73)+Chr(95)+Chr(&H49)+Chr(79)+Chr(&H4f)))
m.Video.content=content
m.top.sourceLoaded=(1=1)
prebuffer=_IIIOOI10OO_O(m.config,[(Chr(97)+Chr(&H64)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),(Chr(112)+Chr(114)+Chr(&H65)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(&H64))])
if _II0II0O_OO0I(prebuffer) and prebuffer
m.Video.control=(Chr(&H70)+Chr(&H72)+Chr(101)+Chr(98)+Chr(117)+Chr(102)+Chr(102)+Chr(101)+Chr(114))
end if
m.Video.mute=_IIIOOI10OO_O(m.config,[(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(107)),(Chr(109)+Chr(117)+Chr(116)+Chr(101)+Chr(100))])
_1OOI001OI1_1(m.top.BitmovinPlayerState.READY)
autoplay=_IIIOOI10OO_O(m.config,[(Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(97)+Chr(&H63)+Chr(&H6b)),(Chr(97)+Chr(117)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79))])
if(_II0II0O_OO0I(autoplay) and autoplay)
play(invalid)
end if
m.BitmovinPlayerTask.fireImpression=(1=1)
end sub
function _1OI0OIIO0OO1(___1_IOI1IO01)
contentNode=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)))
stream=_O1__00_I01II(___1_IOI1IO01)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=___1_IOI1IO01.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if ___1_IOI1IO01.assetType=m.AssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_IIIOOI10OO_O(___1_IOI1IO01,[(Chr(&H73)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(116)+Chr(108)+Chr(&H65)+Chr(&H54)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(115))])
if subTitleTracks<>invalid
mappedTracks=_1_O1__0IO_OO(subtitleTracks,__IO_1O0OO__O)
contentNode.subtitleTracks=mappedTracks
end if
drm=_IIIOOI10OO_O(___1_IOI1IO01,[(Chr(&H64)+Chr(114)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(87)+Chr(&H69)+Chr(&H64)+Chr(101)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(101)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(&H79)+Chr(&H4c)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(&H41)+Chr(&H63)+Chr(113)+Chr(&H75)+Chr(105)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(65)+Chr(&H6e)+Chr(100)+Chr(67)+Chr(104)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(101)+Chr(110)+Chr(&H67)+Chr(&H65))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(37)+Chr(37)+Chr(37))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(121)+Chr(&H4c)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(65)+Chr(&H63)+Chr(113)+Chr(117)+Chr(105)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H55)+Chr(&H72)+Chr(108))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
end if
thumbnailUrl=_IIIOOI10OO_O(___1_IOI1IO01,[(Chr(&H74)+Chr(&H68)+Chr(117)+Chr(109)+Chr(&H62)+Chr(110)+Chr(&H61)+Chr(105)+Chr(108)+Chr(84)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(&H6b)),(Chr(&H75)+Chr(114)+Chr(108))])
if thumbnailUrl<>invalid
if thumbnailUrl.fhd<>invalid contentNode.FHDBifUrl=thumbnailUrl.fhd
if thumbnailUrl.hd<>invalid contentNode.HDBifUrl=thumbnailUrl.hd
if thumbnailUrl.sd<>invalid contentNode.SDBifUrl=thumbnailUrl.sd
end if
return contentNode 
end function
function _01_I10II_1I1(_10IIIII1O11I)
playlist=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(67)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)))
playlist.appendChild(_10IIIII1O11I)
return playlist 
end function
sub __0111IOI_IOO(__1___I1O0I0_)
if m.top.playerState=m.top.BitmovinPlayerState.SETUP return 
m.top.sourceUnloaded=(1=1)
m.top.sourceLoaded=(1=1)
if(m.top.playerState=m.top.BitmovinPlayerState.PLAYING)or(m.top.playerState=m.top.BitmovinPlayerState.STALLING)m.top.play=(1=1)
_1OOI001OI1_1(m.top.playerState)
end sub
function getDuration()
if isLive()return-1 
return m.Video.duration 
end function
sub timeShift(__IO100O0_0_I)
if isLive()=(1=2)return 
if(__IO100O0_0_I>=getMaxTimeShift()) and(__IO100O0_0_I<=0)
newTime=m.Video.duration+__IO100O0_0_I
onTimeShift=function(_1OI1IO01_IOI)
m.top.timeShift=_1OI1IO01_IOI
m.KeyEventHandler.seeking=(1=1)
end function
_1O10O_1IO001((Chr(&H73)+Chr(101)+Chr(101)+Chr(&H6b)),newTime,onTimeShift,__IO100O0_0_I)
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
sub __1II_100O0O0()
m.top.currentTime=m.Video.position
end sub
function isLive()
if m.video.content=invalid or _1II_OOOIO01O()=invalid return(1=2) 
currentPlaylistItem=_1II_OOOIO01O()
return currentPlaylistItem.live 
end function
sub setHttpHeaders(_1II_0O100O0_)
m.httpAgent.SetHeaders(_1II_0O100O0_)
end sub
sub _0O011_I0I_I0()
m.deficiencyService.onError(m.BitmovinPlayerTask.error)
end sub
sub _01IO_IO1_111(_IIO1_I_01000)
if _IIO1_I_01000.getNode()=m.top.id and m.useDefaultUi
m.KeyEventHandler.setFocus((1=1))
end if
end sub
function _1II_OOOIO01O()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
