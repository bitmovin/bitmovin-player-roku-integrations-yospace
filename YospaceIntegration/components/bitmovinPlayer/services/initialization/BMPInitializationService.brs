sub init()
m.services=invalid
m.deficiencyFactory=invalid
m.Errors=invalid
m.BitmovinPlayerState=_I1O_I1IO0010()
m.BitmovinConfigAssetTypes=__1_I0101OI_I()
m.TimelineReferencePoints=__11IO1_IO_1O()
m.BitmovinFields=_0OOO_00I01OO()
m.useDefaultUi=(1=1)
m.httpAgent=CreateObject((Chr(114)+Chr(&H6f)+Chr(72)+Chr(&H74)+Chr(116)+Chr(&H70)+Chr(&H41)+Chr(&H67)+Chr(101)+Chr(110)+Chr(116)))
m.httpAgent.enableCookies()
m.drmHttpAgent=invalid
m.StopSeek=(Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(101)+Chr(&H65)+Chr(&H6b))
end sub
function initializeService(_OOOI0O_100__,_0I01_I0I1OI0,_1_I11OOOI_O_,_I10_0O_1I_1O)
m.video=_OOOI0O_100__
m.BitmovinPlayerTask=_0I01_I0I1OI0
m.bitmovinPlayer=_1_I11OOOI_O_
m.services=_I10_0O_1I_1O
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(68)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(&H63)+Chr(&H79)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(&H73)))
end function
function setup(_1_I0_I0O01O0)
m.services.configurationService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(&H66)+Chr(&H69)+Chr(&H67)),_1_I0_I0O01O0)
m.appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H70)+Chr(112)+Chr(73)+Chr(110)+Chr(102)+Chr(&H6f)))
m.services.licensingService.callFunc((Chr(117)+Chr(112)+Chr(100)+Chr(97)+Chr(116)+Chr(101)+Chr(67)+Chr(111)+Chr(110)+Chr(&H66)+Chr(105)+Chr(&H67)),_1_I0_I0O01O0)
m.BitmovinPlayerTask.callFunc((Chr(&H72)+Chr(117)+Chr(&H6e)+Chr(&H54)+Chr(&H61)+Chr(115)+Chr(&H6b)),invalid)
if _1_I0_I0O01O0.ui=(1=2)m.useDefaultUi=(1=2)
adBufferingScreenConfig=_1OI1001I_1I1(m.services.configurationService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(103)),invalid),[(Chr(&H73)+Chr(&H74)+Chr(121)+Chr(&H6c)+Chr(101)),(Chr(&H61)+Chr(&H64)+Chr(66)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(114)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(&H53)+Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H65)+Chr(&H6e))])
if not _1100IO1O_0_I(adBufferingScreenConfig)m.services.advertisingService.callFunc((Chr(99)+Chr(&H75)+Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(109)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(117)+Chr(102)+Chr(&H66)+Chr(101)+Chr(114)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(&H63)+Chr(114)+Chr(101)+Chr(101)+Chr(&H6e)),adBufferingScreenConfig)
m.services.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(97)+Chr(&H74)+Chr(101)),m.BitmovinPlayerState.SETUP)
if not _1100IO1O_0_I(_1_I0_I0O01O0.source)
load(_1_I0_I0O01O0.source)
end if
end function
sub load(_II00IIO0I001)
content=invalid
if type(_II00IIO0I001)=(Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(&H73)+Chr(&H73)+Chr(&H6f)+Chr(&H63)+Chr(105)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(&H72)+Chr(114)+Chr(&H61)+Chr(121))
content=__IIII_O0O0O0(_II00IIO0I001)
else if type(_II00IIO0I001)=(Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(101)) and _II00IIO0I001.isSubtype((Chr(&H43)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)))
content=_II00IIO0I001.clone((1=1))
end if
if content=invalid
m.services.deficiencyService.callFunc((Chr(&H6f)+Chr(110)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(114)),m.deficiencyFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)),m.Errors.SOURCE_INVALID))
return 
end if
if not _1100IO1O_0_I(m.video.content)
unload(invalid)
end if
m.services.deficiencyService.callFunc((Chr(&H72)+Chr(101)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H65)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(86)+Chr(&H69)+Chr(&H65)+Chr(119)+Chr(&H49)+Chr(&H66)+Chr(&H50)+Chr(114)+Chr(101)+Chr(&H73)+Chr(101)+Chr(&H6e)+Chr(&H74)))
m.services.licensingService.callFunc((Chr(100)+Chr(&H6f)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H4c)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(115)+Chr(101)+Chr(67)+Chr(104)+Chr(&H65)+Chr(99)+Chr(&H6b)))
m.services.configurationService.callFunc((Chr(&H75)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H53)+Chr(111)+Chr(117)+Chr(114)+Chr(99)+Chr(101)),_II00IIO0I001)
config=m.services.configurationService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(102)+Chr(105)+Chr(&H67)),invalid)
thumbnailUrl=_1OI1001I_1I1(_II00IIO0I001,[(Chr(116)+Chr(&H68)+Chr(&H75)+Chr(109)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H54)+Chr(114)+Chr(&H61)+Chr(99)+Chr(107)),(Chr(&H75)+Chr(114)+Chr(&H6c))])
m.Video.setHttpAgent(m.httpAgent)
m.Video.drmHttpAgent=m.drmHttpAgent
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(116)+Chr(97)+Chr(&H72)+Chr(116)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.services.advertisingService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H72)+Chr(116)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.services.metadataService.callFunc((Chr(&H73)+Chr(116)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),invalid)
m.services.thumbnailService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),thumbnailUrl,m.bitmovinPlayerTask,content)
m.services.audioService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),invalid)
m.services.playbackService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(114)+Chr(&H74)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=_I0_00IIO_00O()
end if
if content.getChildCount()=0 content=_1_01O0IO1I_1(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(100)+Chr(&H65)+Chr(120)),(Chr(&H5f)+Chr(73)+Chr(73)+Chr(48)+Chr(&H4f)+Chr(&H30)+Chr(&H31)+Chr(79)+Chr(&H30)+Chr(&H31)+Chr(95)+Chr(49)+Chr(&H49)))
m.services.impressionService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),m.services.licensingService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H4c)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(&H4b)+Chr(&H65)+Chr(&H79))),content.getChildCount())
m.Video.content=content
_0IO10OO0O1IO(m.BitmovinFields.SOURCE_LOADED,(1=1))
prebuffer=_1OI1001I_1I1(config,[(Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(&H70)+Chr(116)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),(Chr(112)+Chr(114)+Chr(101)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100))])
if _101O0_____I0(prebuffer) and prebuffer
m.services.playbackService.callFunc((Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64)),invalid)
end if
m.Video.mute=_1OI1001I_1I1(config,[(Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H62)+Chr(&H61)+Chr(&H63)+Chr(107)),(Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(100))])
m.services.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerState.READY)
adBreaks=_1OI1001I_1I1(_II00IIO0I001,[(Chr(&H61)+Chr(&H64)+Chr(118)+Chr(&H65)+Chr(114)+Chr(116)+Chr(105)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(103)),(Chr(97)+Chr(100)+Chr(&H42)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H6b)+Chr(&H73))])
if adBreaks<>invalid
m.services.advertisingService.callFunc((Chr(&H75)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(65)+Chr(100)+Chr(&H42)+Chr(117)+Chr(102)+Chr(102)+Chr(&H65)+Chr(114)+Chr(105)+Chr(110)+Chr(103)+Chr(83)+Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H65)+Chr(110)+Chr(87)+Chr(&H69)+Chr(116)+Chr(&H68)+Chr(77)+Chr(101)+Chr(116)+Chr(97)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(97)),_1OI1001I_1I1(_II00IIO0I001,[(Chr(109)+Chr(101)+Chr(&H74)+Chr(97)+Chr(100)+Chr(&H61)+Chr(116)+Chr(97))]))
m.services.advertisingService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(65)+Chr(117)+Chr(100)+Chr(&H69)+Chr(101)+Chr(110)+Chr(99)+Chr(101)+Chr(&H4d)+Chr(&H65)+Chr(&H61)+Chr(115)+Chr(117)+Chr(&H72)+Chr(101)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(&H61)+Chr(&H64)+Chr(97)+Chr(116)+Chr(97)),_1OI1001I_1I1(_II00IIO0I001,[(Chr(109)+Chr(101)+Chr(116)+Chr(&H61)+Chr(100)+Chr(97)+Chr(&H74)+Chr(&H61))]))
m.services.advertisingService.callFunc((Chr(115)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(117)+Chr(&H6c)+Chr(101)+Chr(65)+Chr(100)+Chr(115)),adBreaks)
end if
autoplay=_1OI1001I_1I1(config,[(Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H62)+Chr(97)+Chr(99)+Chr(107)),(Chr(97)+Chr(&H75)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(108)+Chr(97)+Chr(121))])
if(_101O0_____I0(autoplay) and autoplay)
m.services.playbackService.callFunc((Chr(112)+Chr(108)+Chr(&H61)+Chr(121)),invalid)
end if
end sub
sub unload(_0010_IOI1_00=invalid)
if m.Video.content=invalid return 
m.services.configurationService.callFunc((Chr(&H75)+Chr(&H70)+Chr(&H64)+Chr(97)+Chr(116)+Chr(&H65)+Chr(83)+Chr(111)+Chr(117)+Chr(&H72)+Chr(&H63)+Chr(101)),{})
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.services.playbackService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
_0IO10OO0O1IO(m.StopSeek,(1=1))
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.advertisingService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.services.impressionService.callFunc((Chr(115)+Chr(116)+Chr(111)+Chr(112)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.metadataService.callFunc((Chr(&H73)+Chr(116)+Chr(111)+Chr(112)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
m.services.thumbnailService.callFunc((Chr(&H73)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.services.audioService.callFunc((Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.BitmovinPlayerTask.callFunc((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H65)+Chr(116)+Chr(83)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),invalid)
_0IO10OO0O1IO(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
end sub
function setHttpHeaders(_1IO_O1O1I01O)
m.httpAgent.SetHeaders(_1IO_O1O1I01O)
end function
function __IIII_O0O0O0(___I_1OI00111)
contentNode=createObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(67)+Chr(111)+Chr(110)+Chr(116)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)))
stream=__IO111100_IO(___I_1OI00111)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=___I_1OI00111.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if ___I_1OI00111.assetType=m.BitmovinConfigAssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_1OI1001I_1I1(___I_1OI00111,[(Chr(115)+Chr(117)+Chr(98)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(108)+Chr(101)+Chr(84)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(&H6b)+Chr(&H73))])
if subTitleTracks<>invalid
mappedTracks=_OI10O10011I0(subtitleTracks,_1IO00IOIII11)
contentNode.subtitleTracks=mappedTracks
end if
drm=_1OI1001I_1I1(___I_1OI00111,[(Chr(&H64)+Chr(&H72)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(&H57)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(101)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(82)+Chr(101)+Chr(97)+Chr(&H64)+Chr(121)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(&H41)+Chr(99)+Chr(113)+Chr(117)+Chr(&H69)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(65)+Chr(&H6e)+Chr(100)+Chr(&H43)+Chr(104)+Chr(&H61)+Chr(108)+Chr(108)+Chr(101)+Chr(&H6e)+Chr(&H67)+Chr(&H65))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(37)+Chr(&H25)+Chr(37))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(82)+Chr(&H65)+Chr(97)+Chr(&H64)+Chr(121)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(101)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(&H41)+Chr(&H63)+Chr(113)+Chr(&H75)+Chr(&H69)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H55)+Chr(&H72)+Chr(&H6c))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
if drm.headers<>invalid
m.drmHttpAgent=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H48)+Chr(&H74)+Chr(116)+Chr(112)+Chr(65)+Chr(&H67)+Chr(&H65)+Chr(110)+Chr(116)))
m.drmHttpAgent.SetHeaders(drm.headers)
else 
m.drmHttpAgent=invalid
end if
end if
options=_1OI1001I_1I1(___I_1OI00111,[(Chr(111)+Chr(112)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(&H73))])
if options<>invalid contentNode.PlayStart=_I_0O101OI0OO(options,contentNode.Live)
if contentNode.PlayStart<0 __I1I_00IO_O0()
return contentNode 
end function
function __IO111100_IO(__1_II110O01_)
if __1_II110O01_.dash<>invalid
return{streamFormat:(Chr(&H64)+Chr(&H61)+Chr(115)+Chr(104)),url:__1_II110O01_.dash} 
else if __1_II110O01_.hls<>invalid
return{streamFormat:(Chr(104)+Chr(108)+Chr(115)),url:__1_II110O01_.hls} 
else if __1_II110O01_.smooth<>invalid
return{streamFormat:(Chr(&H69)+Chr(&H73)+Chr(&H6d)),url:__1_II110O01_.smooth} 
else if __1_II110O01_.progressive<>invalid and type(__1_II110O01_.progressive)=(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67))
return{streamFormat:(Chr(&H6d)+Chr(&H70)+Chr(52)),url:__1_II110O01_.progressive} 
else if __1_II110O01_.progressive<>invalid and type(__1_II110O01_.progressive)=(Chr(114)+Chr(111)+Chr(65)+Chr(&H73)+Chr(&H73)+Chr(&H6f)+Chr(&H63)+Chr(105)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H76)+Chr(101)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(&H79))
return{streamFormat:__1_II110O01_.progressive.type,url:__1_II110O01_.progressive.url} 
else 
return{} 
end if
end function
function _I_0O101OI0OO(_01I_I0IOO01O,__I_O_O__0__O)
if _01I_I0IOO01O.startOffset=invalid return 0 
if _01I_I0IOO01O.startOffsetTimelineReference=invalid
if __I_O_O__0__O
_01I_I0IOO01O.startOffsetTimelineReference=m.TimelineReferencePoints.end
else 
_01I_I0IOO01O.startOffsetTimelineReference=m.TimelineReferencePoints.START
end if
end if
if Lcase(_01I_I0IOO01O.startOffsetTimelineReference)=m.TimelineReferencePoints.START and _01I_I0IOO01O.startOffset<0 return 0 
if Lcase(_01I_I0IOO01O.startOffsetTimelineReference)=m.TimelineReferencePoints.end and _01I_I0IOO01O.startOffset>=0 return _I0_00IIO_00O() 
return _01I_I0IOO01O.startOffset 
end function
sub __I1I_00IO_O0()
m.video.observeFieldScoped((Chr(100)+Chr(117)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),(Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(73)+Chr(73)+Chr(95)+Chr(73)+Chr(79)+Chr(73)+Chr(&H31)+Chr(&H30)+Chr(79)+Chr(48)))
end sub
sub _OIII_IOI10O0()
content=_111_O_100IOI(m.video)
m.video.seek=(m.video.duration+content.PlayStart)
m.video.unobserveFieldScoped((Chr(&H64)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)))
end sub
function _1_01O0IO1I_1(_0I0_0_IOIIO_)
playlist=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)))
playlist.appendChild(_0I0_0_IOIIO_)
return playlist 
end function
sub _II0O01O01_1I(__11I1_0O10OO)
if m.bitmovinPlayer.playerState=m.BitmovinPlayerState.SETUP return 
_0IO10OO0O1IO(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
_0IO10OO0O1IO(m.BitmovinFields.SOURCE_LOADED,(1=1))
if(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.PLAYING)or(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.STALLING)
_0IO10OO0O1IO(m.BitmovinFields.PLAY,(1=1))
end if
m.services.playbackService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(83)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)),m.BitmovinPlayer.playerState)
end sub
function _1IO00IOIII11(__0OOI0O_IIOI)
newItem={trackName:__0OOI0O_IIOI.url,language:__0OOI0O_IIOI.language,description:__0OOI0O_IIOI.label}
return newItem 
end function
sub _0IO10OO0O1IO(_I__O0OIOO00_,_OI_1OO0OI1_O)
m.top.eventOccurred={eventName:_I__O0OIOO00_,eventData:_OI_1OO0OI1_O}
end sub
