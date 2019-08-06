sub init()
m.httpAgent=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H48)+Chr(116)+Chr(&H74)+Chr(&H70)+Chr(65)+Chr(103)+Chr(101)+Chr(110)+Chr(&H74)))
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(111)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(102)+Chr(111)+Chr(&H63)+Chr(117)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(67)+Chr(104)+Chr(105)+Chr(&H6c)+Chr(&H64)),(Chr(&H5f)+Chr(&H31)+Chr(&H31)+Chr(&H30)+Chr(&H31)+Chr(&H4f)+Chr(49)+Chr(73)+Chr(79)+Chr(95)+Chr(&H49)+Chr(73)+Chr(&H49)))
m.top.BitmovinPlayerState=_OO1_I01I0O_O()
m.top.BitmovinFunctions=__I0O0I00_I01()
m.top.BitmovinFields=___00IO0O1O__()
m.BitmovinControlState=_O1___I_OOII0()
m.AssetTypes=_0O1O1O_0OO11()
m.maxTimeShift=invalid
m.MAX_INT=2147483648
m.KeyEventHandler=m.top.findNode((Chr(75)+Chr(&H65)+Chr(&H79)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(&H48)+Chr(97)+Chr(110)+Chr(&H64)+Chr(108)+Chr(&H65)+Chr(&H72)))
m.KeyEventHandler.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H75)+Chr(&H70)),invalid)
m.useDefaultUi=(1=1)
m.deficiencyService=_10O_1IO0I101(m.top)
m.deficiencyFactory=_OOI_I1I1_I01()
m.Errors=m.deficiencyFactory.getErrors()
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_IIO0OO1_IOO_)
_001III_11O__()
appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(112)+Chr(112)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.config=_O_1II1O0_O0_(_IIO0OO1_IOO_)
m.config.version=appInfo.GetVersion()
m.config.channelID=appInfo.getID()
m.config.key=appInfo.getValue((Chr(98)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(95)+Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(95)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(95)+Chr(&H6b)+Chr(101)+Chr(&H79)))
m.BitmovinPlayerTask=m.top.findNode((Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H54)+Chr(&H61)+Chr(115)+Chr(&H6b)))
m.BitmovinPlayerTask.config=m.config
m.Video=m.top.findNode((Chr(77)+Chr(&H61)+Chr(&H69)+Chr(&H6e)+Chr(86)+Chr(105)+Chr(&H64)+Chr(101)+Chr(&H6f)))
if m.config.ui=(1=2)m.useDefaultUi=(1=2)
_1II_0I_0OOII(m.top.BitmovinPlayerState.SETUP)
if not _O__OO00IIO1O(m.config.source)
load(m.config.source)
end if
end function
function getConfig()
config=_O_1II1O0_O0_(m.config)
if type(m.config.source)=(Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)) and m.config.source.isSubtype((Chr(67)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)))
config.source=m.config.source.clone((1=1))
end if
return config 
end function
function _I0_IIOI0001_(_00100111OI01)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_00100111OI01
return available[i] 
end if
end for
return invalid 
end function
function _1_OI1O_I_10O(__I00__0I1_I0)
if __I00__0I1_I0=(Chr(&H62)+Chr(&H75)+Chr(102)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67))return m.top.BitmovinPlayerState.STALLING 
return __I00__0I1_I0 
end function
function _O111O011IO1_(_I__1OI0O_OO_)
count=m.Video.availableAudioTracks.count()
availableTracks=m.Video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_I__1OI0O_OO_
return availableTracks[i] 
end if
end for
return invalid 
end function
sub _1II_0I_0OOII(_00_O_1IO__0I)
if _1_OI1O_I_10O(_00_O_1IO__0I)=m.top.BitmovinPlayerState.PLAYING and m.maxTimeShift=invalid and isLive()
m.maxTimeShift=-m.video.duration
end if
?(Chr(&H43)+Chr(104)+Chr(&H61)+Chr(110)+Chr(103)+Chr(&H65)+Chr(&H20)+Chr(&H74)+Chr(&H6f)+Chr(32)+Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72)+Chr(&H20)+Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(101)+Chr(&H3a)+Chr(32));_1_OI1O_I_10O(_00_O_1IO__0I)
m.top.playerState=_1_OI1O_I_10O(_00_O_1IO__0I)
m.BitmovinPlayerTask.playerState=_00_O_1IO__0I
m.KeyEventHandler.playerState=_00_O_1IO__0I
end sub
sub ___I_1I_O_OOI()
if m.Video<>invalid
_1II_0I_0OOII(m.Video.state)
if m.Video.state=(Chr(&H65)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72))
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Video.errorCode))
else if m.Video.state=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(105)+Chr(110)+Chr(103)) and m.KeyEventHandler.seeking
if isLive()
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=m.top.currentTime
end if
_001III_11O__()
else if m.Video.state=(Chr(&H66)+Chr(105)+Chr(110)+Chr(105)+Chr(&H73)+Chr(104)+Chr(101)+Chr(100))
_001III_11O__()
end if
end if
end sub
sub _001III_11O__()
m.KeyEventHandler.seeking=(1=2)
end sub
sub __OIOO__00__1()
m.BitmovinPlayerTask.control=m.BitmovinControlState.stop
end sub
sub _1_000_000010(_I1_01OIIO00_,_I1_00II_IO0I,_IOO11O1OIOO_=_I__OO0O11O1O,_1O_11O000101=invalid)
if m.Video.content=invalid
m.top.warning={code:(Chr(&H53)+Chr(&H4f)+Chr(85)+Chr(&H52)+Chr(67)+Chr(&H45)),message:(Chr(&H4e)+Chr(&H6f)+Chr(32)+Chr(&H76)+Chr(105)+Chr(100)+Chr(101)+Chr(111)+Chr(&H20)+Chr(&H73)+Chr(&H6f)+Chr(&H75)+Chr(114)+Chr(&H63)+Chr(101)+Chr(32)+Chr(105)+Chr(115)+Chr(32)+Chr(99)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H6c)+Chr(121)+Chr(&H20)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(100)+Chr(101)+Chr(100)+Chr(&H2e)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H20)+Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(108)+Chr(115)+Chr(&H20)+Chr(97)+Chr(114)+Chr(101)+Chr(32)+Chr(&H75)+Chr(&H6e)+Chr(97)+Chr(118)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(&H61)+Chr(&H62)+Chr(108)+Chr(101)+Chr(&H2e))}
else 
m.Video[_I1_01OIIO00_]=_I1_00II_IO0I
if _1O_11O000101=invalid
_IOO11O1OIOO_()
else 
_IOO11O1OIOO_(_1O_11O000101)
end if
end if
end sub
function _OIO_010OIO11(__O_0000O_OI_)
if __O_0000O_OI_.dash<>invalid
return{streamFormat:(Chr(100)+Chr(&H61)+Chr(&H73)+Chr(&H68)),url:__O_0000O_OI_.dash} 
else if __O_0000O_OI_.hls<>invalid
return{streamFormat:(Chr(&H68)+Chr(108)+Chr(&H73)),url:__O_0000O_OI_.hls} 
else if __O_0000O_OI_.smooth<>invalid
return{streamFormat:(Chr(105)+Chr(&H73)+Chr(&H6d)),url:__O_0000O_OI_.smooth} 
else if __O_0000O_OI_.progressive<>invalid
return{streamFormat:(Chr(109)+Chr(&H70)+Chr(52)),url:__O_0000O_OI_.progressive} 
else 
return{} 
end if
end function
function _1O_I10O10OIO(_0O0O_I0_01I_)
newItem={trackName:_0O0O_I0_01I_.url,language:_0O0O_I0_01I_.language,description:_0O0O_I0_01I_.label}
return newItem 
end function
function _O1_1IIO_I__I(_00_II00O11O0)
return{id:_00_II00O11O0.trackName,language:_00_II00O11O0.language,label:_00_II00O11O0.description} 
end function
function __I10_I_0___O(_0O1I000O01O0)
return{id:_0O1I000O01O0.track,language:_0O1I000O01O0.language,label:_0O1I000O01O0.name} 
end function
function ___I111_1_1__(_OOOII11_I0_0)
if m.Video.state=_OOOII11_I0_0
return(1=1) 
else 
return(1=2) 
end if
end function
sub play(_0_0_I0IOO_OO)
_1_000_000010((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(114)+Chr(111)+Chr(&H6c)),m.BitmovinControlState.PLAY)
m.top.play=(1=1)
end sub
sub pause(_OO_101OI10_I)
_1_000_000010((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)),m.BitmovinControlState.PAUSE)
end sub
sub preload(_OOO0O0_0OIO1)
_1_000_000010((Chr(99)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H72)+Chr(&H6f)+Chr(108)),m.BitmovinControlState.PREBUFFER)
end sub
sub seek(_OO__0_O_O1I_)
onSeek=function()
m.top.seek=(1=1)
m.KeyEventHandler.seeking=(1=1)
end function
_1_000_000010((Chr(&H73)+Chr(&H65)+Chr(&H65)+Chr(107)),_OO__0_O_O1I_,onSeek)
end sub
sub mute(_O0OI_1100O1_)
_1_000_000010((Chr(109)+Chr(&H75)+Chr(&H74)+Chr(101)),(1=1))
end sub
sub unmute(_O0_O_10_O0OI)
_1_000_000010((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)),(1=2))
end sub
sub captionMode(___0_I1O101__)
m.deviceInfo.SetCaptionsMode(___0_I1O101__)
end sub
function isMuted(_001OO11O_0I1)
return m.Video.mute 
end function
function isPlaying(__1_00_IIII1_)
return ___I111_1_1__((Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(103))) 
end function
function isPaused(_1_IO1_OI1I_0)
return ___I111_1_1__((Chr(&H70)+Chr(&H61)+Chr(&H75)+Chr(115)+Chr(&H65)+Chr(&H64))) 
end function
function isStalled(_IO__II1IO01_)
return ___I111_1_1__((Chr(&H62)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(114)+Chr(105)+Chr(&H6e)+Chr(&H67))) 
end function
function availableSubtitles(_01I1I10I__11)
return __110I11O_IIO(m.Video.availableSubtitleTracks,_O1_1IIO_I__I) 
end function
function getSubtitle(_O1_I_I_O1001)
trackID=m.Video.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_I0_IIOI0001_(trackID)
if _O__OO00IIO1O(track)
return invalid 
end if
return _O1_1IIO_I__I(track) 
end if
end function
function setSubtitle(_11IO10O01OO1)
currentTime=m.video.position
subtitle=_I0_IIOI0001_(_11IO10O01OO1)
if _O__OO00IIO1O(subtitle)
m.top.warning={code:1001,message:(Chr(65)+Chr(80)+Chr(&H49)+Chr(&H5f)+Chr(73)+Chr(&H4e)+Chr(&H56)+Chr(&H41)+Chr(&H4c)+Chr(73)+Chr(68)+Chr(95)+Chr(65)+Chr(&H52)+Chr(&H47)+Chr(85)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(58)+Chr(&H20)+Chr(&H41)+Chr(&H6e)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(118)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(&H61)+Chr(&H72)+Chr(&H67)+Chr(&H75)+Chr(109)+Chr(101)+Chr(110)+Chr(116)+Chr(&H20)+Chr(&H68)+Chr(&H61)+Chr(&H73)+Chr(32)+Chr(&H62)+Chr(101)+Chr(&H65)+Chr(&H6e)+Chr(32)+Chr(112)+Chr(97)+Chr(&H73)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(105)+Chr(110)+Chr(116)+Chr(&H6f)+Chr(32)+Chr(97)+Chr(32)+Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(32)+Chr(&H41)+Chr(&H50)+Chr(73)+Chr(&H20)+Chr(&H63)+Chr(97)+Chr(108)+Chr(108)+Chr(&H2e))}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end function
function setSubtitleStyles(_OI0_0_IO_0I1)
m.Video.captionStyle=_OI0_0_IO_0I1
end function
function getSubtitleStyles()
return m.Video.captionStyle 
end function
function availableAudio(__I1_1O_II1I1)
return __110I11O_IIO(m.Video.availableAudioTracks,__I10_I_0___O) 
end function
function getAudio(_1O10_000110_)
available=m.Video.availableAudioTracks
if(not _OOI0000_0I00(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.Video.audioTrack=Chr(0)
return __I10_I_0___O(m.Video.availableAudioTracks[0]) 
else 
track=_O111O011IO1_(m.Video.audioTrack)
if _O__OO00IIO1O(track)
return invalid 
end if
return __I10_I_0___O(track) 
end if
end function
function setAudio(_I1IO__OO0110)
track=_O111O011IO1_(_I1IO__OO0110)
if _O__OO00IIO1O(track)
m.top.warning={code:1001,message:(Chr(&H41)+Chr(&H50)+Chr(&H49)+Chr(95)+Chr(&H49)+Chr(78)+Chr(&H56)+Chr(65)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(&H5f)+Chr(65)+Chr(&H52)+Chr(71)+Chr(85)+Chr(77)+Chr(69)+Chr(78)+Chr(84)+Chr(&H3a)+Chr(&H20)+Chr(&H41)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(&H20)+Chr(&H61)+Chr(&H72)+Chr(103)+Chr(&H75)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H20)+Chr(104)+Chr(97)+Chr(115)+Chr(32)+Chr(98)+Chr(101)+Chr(&H65)+Chr(110)+Chr(&H20)+Chr(&H70)+Chr(97)+Chr(&H73)+Chr(&H73)+Chr(&H65)+Chr(&H64)+Chr(32)+Chr(&H69)+Chr(110)+Chr(116)+Chr(&H6f)+Chr(&H20)+Chr(&H61)+Chr(32)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(32)+Chr(65)+Chr(&H50)+Chr(&H49)+Chr(&H20)+Chr(&H63)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(46))}
else 
m.video.audioTrack=_I1IO__OO0110
end if
end function
sub unload(_1O__O_1I1O0I)
if m.Video.content=invalid return 
m.config.source={}
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.maxTimeShift=invalid
_001III_11O__()
m.BitmovinPlayerTask.unobserveFieldScoped((Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)))
m.Video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)))
m.Video.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)))
m.top.sourceUnloaded=(1=1)
end sub
sub load(_O0I11OO_III1)
content=invalid
if type(_O0I11OO_III1)=(Chr(114)+Chr(&H6f)+Chr(65)+Chr(115)+Chr(115)+Chr(111)+Chr(&H63)+Chr(&H69)+Chr(97)+Chr(116)+Chr(&H69)+Chr(118)+Chr(101)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(121))
content=_1__00IO1_010(_O0I11OO_III1)
else if type(_O0I11OO_III1)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)) and _O0I11OO_III1.isSubtype((Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)))
content=_O0I11OO_III1.clone((1=1))
end if
if content=invalid
m.deficiencyService.onError(m.deficiencyFactory.createError(m.Errors.SOURCE_INVALID))
return 
end if
if not _O__OO00IIO1O(m.Video.content)
unload(invalid)
end if
if not _O__OO00IIO1O(m.errorView)
m.top.removeChild(m.errorView)
m.errorView=invalid
end if
if m.BitmovinPlayerTask.state<>m.BitmovinControlState.RUN m.BitmovinPlayerTask.control=m.BitmovinControlState.RUN
m.config.source=_O0I11OO_III1
m.Video.setHttpAgent(m.httpAgent)
m.BitmovinPlayerTask.observeFieldScoped((Chr(&H65)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)),(Chr(95)+Chr(95)+Chr(&H31)+Chr(&H30)+Chr(95)+Chr(49)+Chr(&H30)+Chr(&H30)+Chr(&H30)+Chr(95)+Chr(&H49)+Chr(95)+Chr(49)))
m.Video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)),(Chr(&H5f)+Chr(&H5f)+Chr(&H5f)+Chr(73)+Chr(&H5f)+Chr(49)+Chr(73)+Chr(&H5f)+Chr(&H4f)+Chr(&H5f)+Chr(79)+Chr(&H4f)+Chr(&H49)))
m.Video.observeFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),(Chr(95)+Chr(49)+Chr(95)+Chr(&H30)+Chr(&H30)+Chr(&H4f)+Chr(&H31)+Chr(95)+Chr(&H31)+Chr(73)+Chr(&H31)+Chr(&H31)+Chr(&H30)))
_10OO0IIO0100(m.Video)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=m.MAX_INT
end if
m.Video.content=content
m.top.sourceLoaded=(1=1)
prebuffer=_10OOI1_1I1_0(m.config,[(Chr(97)+Chr(100)+Chr(97)+Chr(112)+Chr(&H74)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),(Chr(&H70)+Chr(114)+Chr(101)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64))])
if _I1OO0OIII0__(prebuffer) and prebuffer
m.Video.control=(Chr(112)+Chr(&H72)+Chr(&H65)+Chr(98)+Chr(117)+Chr(102)+Chr(&H66)+Chr(101)+Chr(&H72))
end if
m.Video.mute=_10OOI1_1I1_0(m.config,[(Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(&H6b)),(Chr(109)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(100))])
_1II_0I_0OOII(m.top.BitmovinPlayerState.READY)
autoplay=_10OOI1_1I1_0(m.config,[(Chr(112)+Chr(108)+Chr(97)+Chr(121)+Chr(&H62)+Chr(97)+Chr(&H63)+Chr(107)),(Chr(97)+Chr(117)+Chr(&H74)+Chr(111)+Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121))])
if(_I1OO0OIII0__(autoplay) and autoplay)
play(invalid)
end if
m.BitmovinPlayerTask.fireImpression=(1=1)
end sub
function _1__00IO1_010(_I101OO00__O1)
contentNode=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)))
stream=_OIO_010OIO11(_I101OO00__O1)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_I101OO00__O1.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _I101OO00__O1.assetType=m.AssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_10OOI1_1I1_0(_I101OO00__O1,[(Chr(115)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(105)+Chr(&H74)+Chr(108)+Chr(&H65)+Chr(84)+Chr(114)+Chr(&H61)+Chr(99)+Chr(107)+Chr(115))])
if subTitleTracks<>invalid
mappedTracks=__110I11O_IIO(subtitleTracks,_1O_I10O10OIO)
contentNode.subtitleTracks=mappedTracks
end if
drm=_10OOI1_1I1_0(_I101OO00__O1,[(Chr(&H64)+Chr(&H72)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(&H57)+Chr(105)+Chr(100)+Chr(&H65)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H65)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(&H64)+Chr(&H79)+Chr(76)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(115)+Chr(&H65)+Chr(&H41)+Chr(99)+Chr(&H71)+Chr(&H75)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H41)+Chr(110)+Chr(&H64)+Chr(&H43)+Chr(104)+Chr(97)+Chr(108)+Chr(108)+Chr(101)+Chr(&H6e)+Chr(&H67)+Chr(&H65))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(37)+Chr(37)+Chr(37))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(&H64)+Chr(121)+Chr(&H4c)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(65)+Chr(&H63)+Chr(&H71)+Chr(&H75)+Chr(105)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H55)+Chr(&H72)+Chr(108))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
end if
thumbnailUrl=_10OOI1_1I1_0(_I101OO00__O1,[(Chr(&H74)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(105)+Chr(108)+Chr(&H54)+Chr(114)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(&H75)+Chr(114)+Chr(&H6c))])
if thumbnailUrl<>invalid
if thumbnailUrl.fhd<>invalid contentNode.FHDBifUrl=thumbnailUrl.fhd
if thumbnailUrl.hd<>invalid contentNode.HDBifUrl=thumbnailUrl.hd
if thumbnailUrl.sd<>invalid contentNode.SDBifUrl=thumbnailUrl.sd
end if
return contentNode 
end function
function getDuration()
if isLive()return-1 
return m.Video.duration 
end function
sub timeShift(_11_1___IOIIO)
if isLive()=(1=2)return 
if(_11_1___IOIIO>=getMaxTimeShift()) and(_11_1___IOIIO<=0)
newTime=m.Video.duration+_11_1___IOIIO
onTimeShift=function(___IOI_1OO100)
m.top.timeShift=___IOI_1OO100
m.KeyEventHandler.seeking=(1=1)
end function
_1_000_000010((Chr(&H73)+Chr(&H65)+Chr(&H65)+Chr(107)),newTime,onTimeShift,_11_1___IOIIO)
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
sub _1_00O1_1I110()
m.top.currentTime=m.Video.position
end sub
function isLive()
if m.video.content=invalid or m.video.content.Live=invalid return(1=2) 
return m.video.content.Live 
end function
sub setHttpHeaders(_O_I01O1I0O_O)
m.httpAgent.SetHeaders(_O_I01O1I0O_O)
end sub
sub __10_1000_I_1()
m.deficiencyService.onError(m.BitmovinPlayerTask.error)
end sub
sub _1101O1IO_III(_O011111_1100)
if _O011111_1100.getNode()=m.top.id and m.useDefaultUi
m.KeyEventHandler.setFocus((1=1))
end if
end sub
