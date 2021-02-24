sub init()
m.services=invalid
m.deficiencyFactory=invalid
m.Errors=invalid
m.BitmovinPlayerState=_0_1_OI101_0I()
m.BitmovinConfigAssetTypes=_IIO1O01__I01()
m.TimelineReferencePoints=_I110II0_II1_()
m.BitmovinFields=_OO0OOO1IOII_()
m.useDefaultUi=(1=1)
m.httpAgent=CreateObject((Chr(114)+Chr(&H6f)+Chr(72)+Chr(116)+Chr(&H74)+Chr(&H70)+Chr(65)+Chr(103)+Chr(101)+Chr(110)+Chr(&H74)))
m.httpAgent.enableCookies()
m.drmHttpAgent=invalid
m.StopSeek=(Chr(&H73)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(83)+Chr(101)+Chr(&H65)+Chr(107))
end sub
function initializeService(_OO__O1I1_1I1,_0I_I_10000O1,_1_I01OI0O110,_0I_01OI111I1)
m.video=_OO__O1I1_1I1
m.BitmovinPlayerTask=_0I_I_10000O1
m.bitmovinPlayer=_1_I01OI0O110
m.services=_0I_01OI111I1
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(68)+Chr(101)+Chr(102)+Chr(&H69)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(&H63)+Chr(&H79)+Chr(&H46)+Chr(97)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(115)))
end function
function setup(_1IIO_0O_0_O0)
m.services.configurationService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(67)+Chr(&H6f)+Chr(110)+Chr(102)+Chr(&H69)+Chr(103)),_1IIO_0O_0_O0)
m.appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H70)+Chr(&H70)+Chr(73)+Chr(110)+Chr(102)+Chr(&H6f)))
m.services.licensingService.callFunc((Chr(117)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(&H66)+Chr(&H69)+Chr(103)),_1IIO_0O_0_O0)
m.BitmovinPlayerTask.callFunc((Chr(114)+Chr(&H75)+Chr(&H6e)+Chr(&H54)+Chr(&H61)+Chr(115)+Chr(107)),invalid)
if _1IIO_0O_0_O0.ui=(1=2)m.useDefaultUi=(1=2)
m.services.playbackService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)),m.BitmovinPlayerState.SETUP)
if not __OOI0OI11_O0(_1IIO_0O_0_O0.source)
load(_1IIO_0O_0_O0.source)
end if
end function
sub load(_OI0__001_0OO)
content=invalid
if type(_OI0__001_0OO)=(Chr(114)+Chr(111)+Chr(&H41)+Chr(115)+Chr(&H73)+Chr(111)+Chr(&H63)+Chr(&H69)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(118)+Chr(101)+Chr(&H41)+Chr(114)+Chr(114)+Chr(&H61)+Chr(&H79))
content=_OI_1O1OI0III(_OI0__001_0OO)
else if type(_OI0__001_0OO)=(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)) and _OI0__001_0OO.isSubtype((Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)))
content=_OI0__001_0OO.clone((1=1))
end if
if content=invalid
m.services.deficiencyService.callFunc((Chr(111)+Chr(110)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(114)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)),m.Errors.SOURCE_INVALID))
return 
end if
if not __OOI0OI11_O0(m.video.content)
unload(invalid)
end if
m.services.deficiencyService.callFunc((Chr(114)+Chr(&H65)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(101)+Chr(&H45)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(86)+Chr(&H69)+Chr(101)+Chr(119)+Chr(&H49)+Chr(102)+Chr(&H50)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(101)+Chr(110)+Chr(&H74)))
m.services.licensingService.callFunc((Chr(100)+Chr(111)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(76)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(67)+Chr(&H68)+Chr(&H65)+Chr(&H63)+Chr(107)))
m.services.configurationService.callFunc((Chr(&H75)+Chr(112)+Chr(100)+Chr(97)+Chr(116)+Chr(&H65)+Chr(83)+Chr(&H6f)+Chr(117)+Chr(114)+Chr(99)+Chr(&H65)),_OI0__001_0OO)
config=m.services.configurationService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(67)+Chr(111)+Chr(110)+Chr(&H66)+Chr(105)+Chr(103)),invalid)
thumbnailUrl=_OI011OO01O10(_OI0__001_0OO,[(Chr(&H74)+Chr(104)+Chr(117)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(84)+Chr(&H72)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(117)+Chr(&H72)+Chr(108))])
m.Video.setHttpAgent(m.httpAgent)
m.Video.drmHttpAgent=m.drmHttpAgent
m.services.mediaQualityService.callFunc((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),invalid)
m.services.advertisingService.callFunc((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.metadataService.callFunc((Chr(115)+Chr(116)+Chr(&H61)+Chr(114)+Chr(116)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.thumbnailService.callFunc((Chr(115)+Chr(116)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),thumbnailUrl,m.bitmovinPlayerTask,content)
m.services.audioService.callFunc((Chr(115)+Chr(116)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.playbackService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=_1IOO1I__O0_1()
end if
if content.getChildCount()=0 content=__1_O_I_IIIIO(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(99)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H49)+Chr(&H6e)+Chr(100)+Chr(101)+Chr(120)),(Chr(95)+Chr(&H31)+Chr(48)+Chr(&H4f)+Chr(&H5f)+Chr(95)+Chr(49)+Chr(79)+Chr(49)+Chr(&H5f)+Chr(95)+Chr(&H31)+Chr(&H5f)))
m.services.impressionService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),m.services.licensingService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(75)+Chr(&H65)+Chr(121))),content.getChildCount())
m.Video.content=content
_O1OO01__0I0O(m.BitmovinFields.SOURCE_LOADED,(1=1))
prebuffer=_OI011OO01O10(config,[(Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),(Chr(&H70)+Chr(114)+Chr(&H65)+Chr(108)+Chr(111)+Chr(&H61)+Chr(100))])
if _1_OO_1_1II11(prebuffer) and prebuffer
m.services.playbackService.callFunc((Chr(112)+Chr(114)+Chr(&H65)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(100)),invalid)
end if
m.Video.mute=_OI011OO01O10(config,[(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H62)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(109)+Chr(117)+Chr(116)+Chr(&H65)+Chr(100))])
m.services.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(114)+Chr(83)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)),m.BitmovinPlayerState.READY)
adBreaks=_OI011OO01O10(_OI0__001_0OO,[(Chr(97)+Chr(&H64)+Chr(118)+Chr(&H65)+Chr(&H72)+Chr(116)+Chr(105)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)),(Chr(97)+Chr(&H64)+Chr(66)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(107)+Chr(&H73))])
if adBreaks<>invalid m.services.advertisingService.callFunc((Chr(115)+Chr(99)+Chr(104)+Chr(101)+Chr(&H64)+Chr(117)+Chr(108)+Chr(&H65)+Chr(&H41)+Chr(100)+Chr(115)),adBreaks)
autoplay=_OI011OO01O10(config,[(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(97)+Chr(&H63)+Chr(&H6b)),(Chr(&H61)+Chr(117)+Chr(116)+Chr(111)+Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79))])
if(_1_OO_1_1II11(autoplay) and autoplay)
m.services.playbackService.callFunc((Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)),invalid)
end if
end sub
sub unload(__1_0I__OI011=invalid)
if m.Video.content=invalid return 
m.services.configurationService.callFunc((Chr(117)+Chr(&H70)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(83)+Chr(&H6f)+Chr(117)+Chr(114)+Chr(&H63)+Chr(101)),{})
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.services.playbackService.callFunc((Chr(115)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
_O1OO01__0I0O(m.StopSeek,(1=1))
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.advertisingService.callFunc((Chr(115)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),invalid)
m.services.impressionService.callFunc((Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
m.services.metadataService.callFunc((Chr(&H73)+Chr(116)+Chr(111)+Chr(&H70)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.thumbnailService.callFunc((Chr(115)+Chr(&H74)+Chr(111)+Chr(112)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.audioService.callFunc((Chr(&H73)+Chr(116)+Chr(111)+Chr(&H70)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.BitmovinPlayerTask.callFunc((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),invalid)
_O1OO01__0I0O(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
end sub
function setHttpHeaders(_I_1OIOOO0IIO)
m.httpAgent.SetHeaders(_I_1OIOOO0IIO)
end function
function _OI_1O1OI0III(_1OO1_I0_011I)
contentNode=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)))
stream=_O11OIOI_1OO0(_1OO1_I0_011I)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_1OO1_I0_011I.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _1OO1_I0_011I.assetType=m.BitmovinConfigAssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_OI011OO01O10(_1OO1_I0_011I,[(Chr(115)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(105)+Chr(116)+Chr(108)+Chr(101)+Chr(&H54)+Chr(114)+Chr(&H61)+Chr(99)+Chr(107)+Chr(&H73))])
if subTitleTracks<>invalid
mappedTracks=_0OOI01_I011O(subtitleTracks,_O_O_0I1I1O01)
contentNode.subtitleTracks=mappedTracks
end if
drm=_OI011OO01O10(_1OO1_I0_011I,[(Chr(&H64)+Chr(&H72)+Chr(109))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(87)+Chr(&H69)+Chr(100)+Chr(101)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(101)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(80)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(100)+Chr(&H79)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(&H41)+Chr(99)+Chr(&H71)+Chr(117)+Chr(105)+Chr(115)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(65)+Chr(110)+Chr(&H64)+Chr(&H43)+Chr(104)+Chr(97)+Chr(&H6c)+Chr(108)+Chr(101)+Chr(110)+Chr(103)+Chr(&H65))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(&H25)+Chr(37)+Chr(37))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H52)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(&H79)+Chr(&H4c)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(115)+Chr(101)+Chr(&H41)+Chr(&H63)+Chr(&H71)+Chr(&H75)+Chr(105)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H55)+Chr(114)+Chr(108))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
if drm.headers<>invalid
m.drmHttpAgent=CreateObject((Chr(114)+Chr(111)+Chr(72)+Chr(116)+Chr(116)+Chr(112)+Chr(65)+Chr(103)+Chr(101)+Chr(&H6e)+Chr(&H74)))
m.drmHttpAgent.SetHeaders(drm.headers)
else 
m.drmHttpAgent=invalid
end if
end if
options=_OI011OO01O10(_1OO1_I0_011I,[(Chr(111)+Chr(&H70)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(115))])
if options<>invalid contentNode.PlayStart=__IOO11___1O1(options,contentNode.Live)
if contentNode.PlayStart<0 ____1OI01100I()
return contentNode 
end function
function _O11OIOI_1OO0(_1110O_I00II_)
if _1110O_I00II_.dash<>invalid
return{streamFormat:(Chr(100)+Chr(&H61)+Chr(&H73)+Chr(104)),url:_1110O_I00II_.dash} 
else if _1110O_I00II_.hls<>invalid
return{streamFormat:(Chr(&H68)+Chr(&H6c)+Chr(&H73)),url:_1110O_I00II_.hls} 
else if _1110O_I00II_.smooth<>invalid
return{streamFormat:(Chr(105)+Chr(115)+Chr(&H6d)),url:_1110O_I00II_.smooth} 
else if _1110O_I00II_.progressive<>invalid and type(_1110O_I00II_.progressive)=(Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H74)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103))
return{streamFormat:(Chr(&H6d)+Chr(112)+Chr(52)),url:_1110O_I00II_.progressive} 
else if _1110O_I00II_.progressive<>invalid and type(_1110O_I00II_.progressive)=(Chr(114)+Chr(111)+Chr(&H41)+Chr(&H73)+Chr(&H73)+Chr(&H6f)+Chr(99)+Chr(&H69)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(&H72)+Chr(114)+Chr(97)+Chr(121))
return{streamFormat:_1110O_I00II_.progressive.type,url:_1110O_I00II_.progressive.url} 
else 
return{} 
end if
end function
function __IOO11___1O1(_11_O_I10OII1,_1_O0_1O0_0II)
if _11_O_I10OII1.startOffset=invalid return 0 
if _11_O_I10OII1.startOffsetTimelineReference=invalid
if _1_O0_1O0_0II
_11_O_I10OII1.startOffsetTimelineReference=m.TimelineReferencePoints.end
else 
_11_O_I10OII1.startOffsetTimelineReference=m.TimelineReferencePoints.START
end if
end if
if Lcase(_11_O_I10OII1.startOffsetTimelineReference)=m.TimelineReferencePoints.START and _11_O_I10OII1.startOffset<0 return 0 
if Lcase(_11_O_I10OII1.startOffsetTimelineReference)=m.TimelineReferencePoints.end and _11_O_I10OII1.startOffset>=0 return _1IOO1I__O0_1() 
return _11_O_I10OII1.startOffset 
end function
sub ____1OI01100I()
m.video.observeFieldScoped((Chr(&H64)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),(Chr(&H5f)+Chr(&H30)+Chr(&H31)+Chr(&H30)+Chr(79)+Chr(&H31)+Chr(79)+Chr(&H4f)+Chr(48)+Chr(73)+Chr(&H30)+Chr(&H31)+Chr(&H5f)))
end sub
sub _010O1OO0I01_()
content=__0I1IO0_I_11(m.video)
m.video.seek=(m.video.duration+content.PlayStart)
m.video.unobserveFieldScoped((Chr(100)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)))
end sub
function __1_O_I_IIIIO(_IO_I__OOO__I)
playlist=createObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H43)+Chr(111)+Chr(110)+Chr(116)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)))
playlist.appendChild(_IO_I__OOO__I)
return playlist 
end function
sub _10O__1O1__1_(_O0001IIO1O_O)
if m.bitmovinPlayer.playerState=m.BitmovinPlayerState.SETUP return 
_O1OO01__0I0O(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
_O1OO01__0I0O(m.BitmovinFields.SOURCE_LOADED,(1=1))
if(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.PLAYING)or(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.STALLING)
_O1OO01__0I0O(m.BitmovinFields.PLAY,(1=1))
end if
m.services.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)),m.BitmovinPlayer.playerState)
end sub
function _O_O_0I1I1O01(_O_01IO11O0II)
newItem={trackName:_O_01IO11O0II.url,language:_O_01IO11O0II.language,description:_O_01IO11O0II.label}
return newItem 
end function
sub _O1OO01__0I0O(____I00II1_10,_O_1II1IIO1OI)
m.top.eventOccurred={eventName:____I00II1_10,eventData:_O_1II1IIO1OI}
end sub
