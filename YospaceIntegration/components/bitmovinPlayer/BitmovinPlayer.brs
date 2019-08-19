sub init()
m.httpAgent=CreateObject((Chr(&H72)+Chr(111)+Chr(72)+Chr(&H74)+Chr(116)+Chr(112)+Chr(&H41)+Chr(103)+Chr(&H65)+Chr(&H6e)+Chr(116)))
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(68)+Chr(101)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(&H66)+Chr(&H6f)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(102)+Chr(&H6f)+Chr(99)+Chr(&H75)+Chr(&H73)+Chr(&H65)+Chr(&H64)+Chr(&H43)+Chr(104)+Chr(105)+Chr(108)+Chr(100)),(Chr(95)+Chr(48)+Chr(79)+Chr(&H31)+Chr(73)+Chr(&H49)+Chr(&H5f)+Chr(&H30)+Chr(48)+Chr(73)+Chr(49)+Chr(95)+Chr(&H31)))
m.top.BitmovinPlayerState=_0110O1O0O_11()
m.top.BitmovinFunctions=_01O11___I1I1()
m.top.BitmovinFields=_IO1I_I0OIOO1()
m.BitmovinControlState=_II_I0I01I101()
m.AssetTypes=_00I110_I1_0O()
m.maxTimeShift=invalid
m.MAX_INT=2147483648
m.KeyEventHandler=m.top.findNode((Chr(75)+Chr(101)+Chr(121)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(72)+Chr(&H61)+Chr(110)+Chr(100)+Chr(&H6c)+Chr(&H65)+Chr(&H72)))
m.KeyEventHandler.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H75)+Chr(&H70)),invalid)
m.useDefaultUi=(1=1)
m.deficiencyService=_1_1_OI1_O1_1(m.top)
m.deficiencyFactory=_1_00O_O11I_1()
m.Errors=m.deficiencyFactory.getErrors()
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_1_OI111OI_O_)
__11_1_0_OIOI()
appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(&H70)+Chr(112)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(&H6f)))
m.config=__II00_II0_I_(_1_OI111OI_O_)
m.config.version=appInfo.GetVersion()
m.config.channelID=appInfo.getID()
m.config.key=appInfo.getValue((Chr(98)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(95)+Chr(112)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(95)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(95)+Chr(107)+Chr(&H65)+Chr(&H79)))
m.BitmovinPlayerTask=m.top.findNode((Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(84)+Chr(&H61)+Chr(&H73)+Chr(107)))
m.BitmovinPlayerTask.config=m.config
m.Video=m.top.findNode((Chr(&H4d)+Chr(&H61)+Chr(105)+Chr(110)+Chr(86)+Chr(105)+Chr(100)+Chr(&H65)+Chr(111)))
if m.config.ui=(1=2)m.useDefaultUi=(1=2)
_I_0I_0_O_I_1(m.top.BitmovinPlayerState.SETUP)
if not _1O_111I__OIO(m.config.source)
load(m.config.source)
end if
end function
function getConfig(___IOO01_IO1O=invalid)
config=__II00_II0_I_(m.config)
if type(m.config.source)=(Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)) and m.config.source.isSubtype((Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)))
config.source=m.config.source.clone((1=1))
end if
return config 
end function
function _01I_0OI0I1I0(_I_0O0IIO1_10)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_I_0O0IIO1_10
return available[i] 
end if
end for
return invalid 
end function
function ____010I0_1_I(_1_1_0OI__01I)
if _1_1_0OI__01I=(Chr(98)+Chr(117)+Chr(102)+Chr(102)+Chr(101)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(103))return m.top.BitmovinPlayerState.STALLING 
return _1_1_0OI__01I 
end function
function _O1I__O1100_O(_II0I0_O_0I11)
count=m.Video.availableAudioTracks.count()
availableTracks=m.Video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_II0I0_O_0I11
return availableTracks[i] 
end if
end for
return invalid 
end function
sub _I_0I_0_O_I_1(_0II0OO10IOI1)
if ____010I0_1_I(_0II0OO10IOI1)=m.top.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
?(Chr(67)+Chr(&H68)+Chr(&H61)+Chr(&H6e)+Chr(&H67)+Chr(101)+Chr(32)+Chr(116)+Chr(&H6f)+Chr(32)+Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(&H73)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)+Chr(&H3a)+Chr(32));____010I0_1_I(_0II0OO10IOI1)
m.top.playerState=____010I0_1_I(_0II0OO10IOI1)
m.BitmovinPlayerTask.playerState=_0II0OO10IOI1
m.KeyEventHandler.playerState=_0II0OO10IOI1
end sub
sub _00_0I0I01_1O()
if m.Video<>invalid
_I_0I_0_O_I_1(m.Video.state)
if m.Video.state=(Chr(&H65)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72))
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Video.errorCode))
else if m.Video.state=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(110)+Chr(&H67)) and m.KeyEventHandler.seeking
if isLive()
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=m.top.currentTime
end if
__11_1_0_OIOI()
else if m.Video.state=(Chr(&H66)+Chr(105)+Chr(110)+Chr(&H69)+Chr(115)+Chr(104)+Chr(&H65)+Chr(&H64))
__11_1_0_OIOI()
end if
end if
end sub
sub __11_1_0_OIOI()
m.KeyEventHandler.seeking=(1=2)
end sub
sub __11_0O11I0_1()
m.BitmovinPlayerTask.control=m.BitmovinControlState.stop
end sub
sub __I_00OO__II1(__O__I1IO_0I1,_1_O01O11__0I,_01O0OI_IOO11=_I_010_01IOO_,_OIO11I0IIIO0=invalid)
if m.Video.content=invalid
m.top.warning={code:(Chr(83)+Chr(79)+Chr(85)+Chr(&H52)+Chr(&H43)+Chr(69)),message:(Chr(78)+Chr(111)+Chr(&H20)+Chr(&H76)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(111)+Chr(&H20)+Chr(115)+Chr(111)+Chr(&H75)+Chr(&H72)+Chr(&H63)+Chr(101)+Chr(32)+Chr(&H69)+Chr(115)+Chr(&H20)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H6c)+Chr(&H79)+Chr(32)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(&H64)+Chr(101)+Chr(100)+Chr(&H2e)+Chr(32)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(32)+Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(&H6c)+Chr(&H73)+Chr(&H20)+Chr(&H61)+Chr(&H72)+Chr(&H65)+Chr(32)+Chr(117)+Chr(110)+Chr(&H61)+Chr(&H76)+Chr(&H61)+Chr(105)+Chr(108)+Chr(97)+Chr(98)+Chr(108)+Chr(&H65)+Chr(&H2e))}
else 
m.Video[__O__I1IO_0I1]=_1_O01O11__0I
if _OIO11I0IIIO0=invalid
_01O0OI_IOO11()
else 
_01O0OI_IOO11(_OIO11I0IIIO0)
end if
end if
end sub
function _O1001I01_101(__1II11110OO0)
if __1II11110OO0.dash<>invalid
return{streamFormat:(Chr(&H64)+Chr(97)+Chr(115)+Chr(&H68)),url:__1II11110OO0.dash} 
else if __1II11110OO0.hls<>invalid
return{streamFormat:(Chr(104)+Chr(108)+Chr(&H73)),url:__1II11110OO0.hls} 
else if __1II11110OO0.smooth<>invalid
return{streamFormat:(Chr(105)+Chr(&H73)+Chr(109)),url:__1II11110OO0.smooth} 
else if __1II11110OO0.progressive<>invalid
return{streamFormat:(Chr(&H6d)+Chr(&H70)+Chr(&H34)),url:__1II11110OO0.progressive} 
else 
return{} 
end if
end function
function _0OI1I1_II1_0(_1O100O1_O0__)
newItem={trackName:_1O100O1_O0__.url,language:_1O100O1_O0__.language,description:_1O100O1_O0__.label}
return newItem 
end function
function _I0_IO_00__1I(_O1_0010__010)
return{id:_O1_0010__010.trackName,language:_O1_0010__010.language,label:_O1_0010__010.description} 
end function
function _0IOO_10_10__(_OOO001O10_1I)
return{id:_OOO001O10_1I.track,language:_OOO001O10_1I.language,label:_OOO001O10_1I.name} 
end function
function _OI0I00IO_IOO(_1001I_0_OIOI)
if m.Video.state=_1001I_0_OIOI
return(1=1) 
else 
return(1=2) 
end if
end function
sub play(_OOIIIOO1OI_O)
__I_00OO__II1((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)),m.BitmovinControlState.PLAY)
m.top.play=(1=1)
end sub
sub pause(_01OII1__OOII)
__I_00OO__II1((Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(&H6c)),m.BitmovinControlState.PAUSE)
end sub
sub preload(_1011OII100_O)
__I_00OO__II1((Chr(&H63)+Chr(111)+Chr(110)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(108)),m.BitmovinControlState.PREBUFFER)
end sub
sub seek(_1IIIOI0IO_O0)
onSeek=function()
m.top.seek=(1=1)
m.KeyEventHandler.seeking=(1=1)
end function
__I_00OO__II1((Chr(&H73)+Chr(101)+Chr(101)+Chr(&H6b)),_1IIIOI0IO_O0,onSeek)
end sub
sub mute(__001OIO_I0I_)
__I_00OO__II1((Chr(&H6d)+Chr(&H75)+Chr(116)+Chr(101)),(1=1))
end sub
sub unmute(__O0O_IO1O0OI)
__I_00OO__II1((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(&H65)),(1=2))
end sub
sub captionMode(_OOOO_OI0I001)
m.deviceInfo.SetCaptionsMode(_OOOO_OI0I001)
end sub
function isMuted(_O1I_I1101I1O)
return m.Video.mute 
end function
function isPlaying(_OI10I1I0_I00)
return _OI0I00IO_IOO((Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(103))) 
end function
function isPaused(_OIO0I_O1_O1I)
return _OI0I00IO_IOO((Chr(112)+Chr(97)+Chr(&H75)+Chr(&H73)+Chr(101)+Chr(100))) 
end function
function isStalled(_III10_O0I_11)
return _OI0I00IO_IOO((Chr(&H62)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67))) 
end function
function availableSubtitles(_01011O0_0__I)
return _0I_I10OI0IOO(m.Video.availableSubtitleTracks,_I0_IO_00__1I) 
end function
function getSubtitle(_0O111_OI_11_)
trackID=m.Video.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_01I_0OI0I1I0(trackID)
if _1O_111I__OIO(track)
return invalid 
end if
return _I0_IO_00__1I(track) 
end if
end function
function setSubtitle(_00__1OIO1O_0)
currentTime=m.video.position
subtitle=_01I_0OI0I1I0(_00__1OIO1O_0)
if _1O_111I__OIO(subtitle)
m.top.warning={code:1001,message:(Chr(&H41)+Chr(80)+Chr(&H49)+Chr(95)+Chr(73)+Chr(&H4e)+Chr(86)+Chr(&H41)+Chr(&H4c)+Chr(73)+Chr(&H44)+Chr(&H5f)+Chr(65)+Chr(&H52)+Chr(&H47)+Chr(&H55)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(84)+Chr(&H3a)+Chr(&H20)+Chr(&H41)+Chr(110)+Chr(32)+Chr(105)+Chr(110)+Chr(&H76)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(100)+Chr(32)+Chr(97)+Chr(114)+Chr(103)+Chr(117)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(32)+Chr(104)+Chr(&H61)+Chr(&H73)+Chr(32)+Chr(98)+Chr(101)+Chr(101)+Chr(110)+Chr(32)+Chr(&H70)+Chr(97)+Chr(115)+Chr(&H73)+Chr(101)+Chr(&H64)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(116)+Chr(111)+Chr(&H20)+Chr(97)+Chr(&H20)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(32)+Chr(&H41)+Chr(&H50)+Chr(&H49)+Chr(&H20)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(46))}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end function
function setSubtitleStyles(_I_0_O_11I1__)
m.Video.captionStyle=_I_0_O_11I1__
end function
function getSubtitleStyles(_1_01101__IIO=invalid)
return m.Video.captionStyle 
end function
function availableAudio(__OII11_0I_II)
return _0I_I10OI0IOO(m.Video.availableAudioTracks,_0IOO_10_10__) 
end function
function getAudio(_1_0_I1IO_1I0)
available=m.Video.availableAudioTracks
if(not _0I0O_O_O101O(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.Video.audioTrack=Chr(0)
return _0IOO_10_10__(m.Video.availableAudioTracks[0]) 
else 
track=_O1I__O1100_O(m.Video.audioTrack)
if _1O_111I__OIO(track)
return invalid 
end if
return _0IOO_10_10__(track) 
end if
end function
function setAudio(_1IO_0O10II__)
track=_O1I__O1100_O(_1IO_0O10II__)
if _1O_111I__OIO(track)
m.top.warning={code:1001,message:(Chr(&H41)+Chr(&H50)+Chr(&H49)+Chr(95)+Chr(&H49)+Chr(78)+Chr(86)+Chr(65)+Chr(76)+Chr(&H49)+Chr(68)+Chr(95)+Chr(&H41)+Chr(&H52)+Chr(71)+Chr(&H55)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(58)+Chr(&H20)+Chr(&H41)+Chr(110)+Chr(&H20)+Chr(105)+Chr(110)+Chr(&H76)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(&H61)+Chr(&H72)+Chr(103)+Chr(117)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H20)+Chr(&H68)+Chr(97)+Chr(&H73)+Chr(&H20)+Chr(98)+Chr(101)+Chr(101)+Chr(&H6e)+Chr(32)+Chr(112)+Chr(97)+Chr(115)+Chr(&H73)+Chr(101)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(116)+Chr(111)+Chr(32)+Chr(97)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(&H41)+Chr(80)+Chr(73)+Chr(&H20)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(&H2e))}
else 
m.video.audioTrack=_1IO_0O10II__
end if
end function
sub unload(_O_O01O_0_010)
if m.Video.content=invalid return 
m.config.source={}
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.maxTimeShift=invalid
__11_1_0_OIOI()
m.BitmovinPlayerTask.unobserveFieldScoped((Chr(&H65)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)))
m.Video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)))
m.Video.unobserveFieldScoped((Chr(&H70)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)))
m.video.unobserveFieldScoped((Chr(99)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(73)+Chr(&H6e)+Chr(100)+Chr(&H65)+Chr(&H78)))
m.top.sourceUnloaded=(1=1)
end sub
sub load(_1O00_OO0O1II)
content=invalid
if type(_1O00_OO0O1II)=(Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(&H73)+Chr(&H73)+Chr(&H6f)+Chr(99)+Chr(&H69)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(118)+Chr(101)+Chr(65)+Chr(&H72)+Chr(114)+Chr(97)+Chr(121))
content=_OII11_0__O0O(_1O00_OO0O1II)
else if type(_1O00_OO0O1II)=(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)) and _1O00_OO0O1II.isSubtype((Chr(67)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)))
content=_1O00_OO0O1II.clone((1=1))
end if
if content=invalid
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Errors.SOURCE_INVALID))
return 
end if
if not _1O_111I__OIO(m.Video.content)
unload(invalid)
end if
if not _1O_111I__OIO(m.errorView)
m.top.removeChild(m.errorView)
m.errorView=invalid
end if
if m.BitmovinPlayerTask.state<>m.BitmovinControlState.RUN m.BitmovinPlayerTask.control=m.BitmovinControlState.RUN
m.config.source=_1O00_OO0O1II
m.Video.setHttpAgent(m.httpAgent)
m.BitmovinPlayerTask.observeFieldScoped((Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)),(Chr(&H5f)+Chr(79)+Chr(&H49)+Chr(&H49)+Chr(&H30)+Chr(&H4f)+Chr(95)+Chr(73)+Chr(&H30)+Chr(48)+Chr(73)+Chr(73)+Chr(&H4f)))
m.Video.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H65)),(Chr(95)+Chr(48)+Chr(&H30)+Chr(95)+Chr(48)+Chr(&H49)+Chr(48)+Chr(&H49)+Chr(&H30)+Chr(&H31)+Chr(&H5f)+Chr(49)+Chr(&H4f)))
m.Video.observeFieldScoped((Chr(&H70)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)),(Chr(95)+Chr(&H5f)+Chr(&H4f)+Chr(&H4f)+Chr(73)+Chr(&H5f)+Chr(&H49)+Chr(&H4f)+Chr(&H49)+Chr(&H31)+Chr(49)+Chr(48)+Chr(&H31)))
_OI_OO_1_IO10(m.Video)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=m.MAX_INT
end if
if content.getChildCount()=0 content=_I00O_I01_II_(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(99)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(73)+Chr(&H6e)+Chr(&H64)+Chr(&H65)+Chr(120)),(Chr(95)+Chr(48)+Chr(48)+Chr(&H30)+Chr(&H5f)+Chr(49)+Chr(48)+Chr(73)+Chr(&H4f)+Chr(&H4f)+Chr(&H49)+Chr(&H49)+Chr(95)))
m.Video.content=content
m.top.sourceLoaded=(1=1)
prebuffer=_____11_0_OOO(m.config,[(Chr(97)+Chr(100)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),(Chr(112)+Chr(&H72)+Chr(&H65)+Chr(108)+Chr(111)+Chr(&H61)+Chr(&H64))])
if _0OI0I00O0_OI(prebuffer) and prebuffer
m.Video.control=(Chr(112)+Chr(114)+Chr(&H65)+Chr(&H62)+Chr(117)+Chr(102)+Chr(102)+Chr(&H65)+Chr(&H72))
end if
m.Video.mute=_____11_0_OOO(m.config,[(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(109)+Chr(117)+Chr(116)+Chr(101)+Chr(&H64))])
_I_0I_0_O_I_1(m.top.BitmovinPlayerState.READY)
autoplay=_____11_0_OOO(m.config,[(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(107)),(Chr(&H61)+Chr(117)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79))])
if(_0OI0I00O0_OI(autoplay) and autoplay)
play(invalid)
end if
m.BitmovinPlayerTask.fireImpression=(1=1)
end sub
function _OII11_0__O0O(_0O0IOO_IOIIO)
contentNode=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(67)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)))
stream=_O1001I01_101(_0O0IOO_IOIIO)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_0O0IOO_IOIIO.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _0O0IOO_IOIIO.assetType=m.AssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_____11_0_OOO(_0O0IOO_IOIIO,[(Chr(&H73)+Chr(&H75)+Chr(&H62)+Chr(116)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(&H65)+Chr(&H54)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(&H6b)+Chr(&H73))])
if subTitleTracks<>invalid
mappedTracks=_0I_I10OI0IOO(subtitleTracks,_0OI1I1_II1_0)
contentNode.subtitleTracks=mappedTracks
end if
drm=_____11_0_OOO(_0O0IOO_IOIIO,[(Chr(100)+Chr(114)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(87)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H65)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(100)+Chr(&H79)+Chr(76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(110)+Chr(115)+Chr(&H65)+Chr(65)+Chr(99)+Chr(&H71)+Chr(117)+Chr(105)+Chr(115)+Chr(105)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H41)+Chr(110)+Chr(100)+Chr(67)+Chr(104)+Chr(97)+Chr(108)+Chr(108)+Chr(101)+Chr(&H6e)+Chr(&H67)+Chr(101))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(37)+Chr(37)+Chr(&H25))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(100)+Chr(&H79)+Chr(76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(65)+Chr(&H63)+Chr(&H71)+Chr(&H75)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(85)+Chr(114)+Chr(&H6c))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
end if
thumbnailUrl=_____11_0_OOO(_0O0IOO_IOIIO,[(Chr(116)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(84)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(107)),(Chr(&H75)+Chr(114)+Chr(108))])
if thumbnailUrl<>invalid
if thumbnailUrl.fhd<>invalid contentNode.FHDBifUrl=thumbnailUrl.fhd
if thumbnailUrl.hd<>invalid contentNode.HDBifUrl=thumbnailUrl.hd
if thumbnailUrl.sd<>invalid contentNode.SDBifUrl=thumbnailUrl.sd
end if
return contentNode 
end function
function _I00O_I01_II_(_O_0I0O__0IIO)
playlist=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(67)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)))
playlist.appendChild(_O_0I0O__0IIO)
return playlist 
end function
sub _000_10IOOII_(__101OI01I_0I)
if m.top.playerState=m.top.BitmovinPlayerState.SETUP return 
m.top.sourceUnloaded=(1=1)
m.top.sourceLoaded=(1=1)
if(m.top.playerState=m.top.BitmovinPlayerState.PLAYING)or(m.top.playerState=m.top.BitmovinPlayerState.STALLING)m.top.play=(1=1)
_I_0I_0_O_I_1(m.top.playerState)
end sub
function getDuration(_1OO_OO1_1010=invalid)
if isLive()return-1 
return m.Video.duration 
end function
sub timeShift(__I1O1OO1_I_0)
if isLive()=(1=2)return 
if(__I1O1OO1_I_0>=getMaxTimeShift()) and(__I1O1OO1_I_0<=0)
newTime=m.Video.duration+__I1O1OO1_I_0
onTimeShift=function(_O_00OIOO111O)
m.top.timeShift=_O_00OIOO111O
m.KeyEventHandler.seeking=(1=1)
end function
__I_00OO__II1((Chr(115)+Chr(101)+Chr(101)+Chr(107)),newTime,onTimeShift,__I1O1OO1_I_0)
end if
end sub
function getTimeShift(__O11OI__0_11=invalid)
if isLive()
return(m.Video.position-m.Video.duration) 
end if
end function
function getMaxTimeShift(_O0OO_I01O101=invalid)
if isLive()
return m.maxTimeShift 
end if
end function
sub __OOI_IOI1101()
m.top.currentTime=m.Video.position
end sub
function isLive(_0O_O_0_01O1_=invalid)
if m.video.content=invalid or _0OOIO0OOOO_I()=invalid return(1=2) 
currentPlaylistItem=_0OOIO0OOOO_I()
return currentPlaylistItem.live 
end function
sub setHttpHeaders(_1OO_001_OIOI)
m.httpAgent.SetHeaders(_1OO_001_OIOI)
end sub
sub _OII0O_I00IIO()
m.deficiencyService.onError(m.BitmovinPlayerTask.error)
end sub
sub _0O1II_00I1_1(___OO_OII01O0)
if ___OO_OII01O0.getNode()=m.top.id and m.useDefaultUi
m.KeyEventHandler.setFocus((1=1))
end if
end sub
function _0OOIO0OOOO_I()
if m.video.contentIndex=-1 return invalid 
return m.video.content.getChild(m.video.contentIndex) 
end function
