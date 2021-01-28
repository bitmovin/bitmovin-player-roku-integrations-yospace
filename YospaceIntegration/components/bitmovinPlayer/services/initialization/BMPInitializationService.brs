sub init()
m.services=invalid
m.deficiencyFactory=invalid
m.Errors=invalid
m.BitmovinPlayerState=_II0_0_O__10O()
m.BitmovinConfigAssetTypes=__OOO0O__1100()
m.TimelineReferencePoints=_0_IO11O1_0OO()
m.BitmovinFields=_O_10OO110010()
m.useDefaultUi=(1=1)
m.httpAgent=CreateObject((Chr(&H72)+Chr(111)+Chr(72)+Chr(116)+Chr(116)+Chr(&H70)+Chr(65)+Chr(103)+Chr(&H65)+Chr(110)+Chr(&H74)))
m.httpAgent.enableCookies()
m.drmHttpAgent=invalid
m.StopSeek=(Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(&H53)+Chr(&H65)+Chr(101)+Chr(107))
end sub
function initializeService(__O10_OI0_0IO,__1O0OO0I01OO,_OO1OI__0OO__,___0OOII1_00I)
m.video=__O10_OI0_0IO
m.BitmovinPlayerTask=__1O0OO0I01OO
m.bitmovinPlayer=_OO1OI__0OO__
m.services=___0OOII1_00I
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H44)+Chr(101)+Chr(102)+Chr(&H69)+Chr(&H63)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(99)+Chr(&H79)+Chr(&H46)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(111)+Chr(114)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(115)))
end function
function setup(___OO_01O1III)
m.services.configurationService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(67)+Chr(&H6f)+Chr(&H6e)+Chr(102)+Chr(&H69)+Chr(&H67)),___OO_01O1III)
m.appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(65)+Chr(112)+Chr(&H70)+Chr(73)+Chr(110)+Chr(102)+Chr(111)))
m.services.licensingService.callFunc((Chr(117)+Chr(&H70)+Chr(100)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(105)+Chr(&H67)),___OO_01O1III)
m.BitmovinPlayerTask.callFunc((Chr(&H72)+Chr(117)+Chr(&H6e)+Chr(&H54)+Chr(&H61)+Chr(115)+Chr(107)),invalid)
if ___OO_01O1III.ui=(1=2)m.useDefaultUi=(1=2)
m.services.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)),m.BitmovinPlayerState.SETUP)
if not ___0O_II_00I_(___OO_01O1III.source)
load(___OO_01O1III.source)
end if
end function
sub load(_IOII1O1_OO0I)
content=invalid
if type(_IOII1O1_OO0I)=(Chr(114)+Chr(111)+Chr(&H41)+Chr(&H73)+Chr(115)+Chr(111)+Chr(&H63)+Chr(105)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H76)+Chr(&H65)+Chr(&H41)+Chr(114)+Chr(114)+Chr(97)+Chr(&H79))
content=_OII10_O0I10O(_IOII1O1_OO0I)
else if type(_IOII1O1_OO0I)=(Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)) and _IOII1O1_OO0I.isSubtype((Chr(67)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)))
content=_IOII1O1_OO0I.clone((1=1))
end if
if content=invalid
m.services.deficiencyService.callFunc((Chr(111)+Chr(&H6e)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)),m.Errors.SOURCE_INVALID))
return 
end if
if not ___0O_II_00I_(m.video.content)
unload(invalid)
end if
m.services.deficiencyService.callFunc((Chr(114)+Chr(101)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H65)+Chr(69)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(86)+Chr(&H69)+Chr(101)+Chr(119)+Chr(&H49)+Chr(102)+Chr(&H50)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(101)+Chr(110)+Chr(116)))
m.services.licensingService.callFunc((Chr(100)+Chr(&H6f)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H4c)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(115)+Chr(101)+Chr(&H43)+Chr(104)+Chr(101)+Chr(99)+Chr(107)))
m.services.configurationService.callFunc((Chr(117)+Chr(&H70)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H53)+Chr(111)+Chr(117)+Chr(&H72)+Chr(&H63)+Chr(&H65)),_IOII1O1_OO0I)
config=m.services.configurationService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(67)+Chr(111)+Chr(&H6e)+Chr(102)+Chr(&H69)+Chr(103)),invalid)
thumbnailUrl=_1OO_001I0I1I(_IOII1O1_OO0I,[(Chr(&H74)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H54)+Chr(114)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(&H75)+Chr(114)+Chr(108))])
m.Video.setHttpAgent(m.httpAgent)
m.Video.drmHttpAgent=m.drmHttpAgent
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H72)+Chr(116)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.services.advertisingService.callFunc((Chr(&H73)+Chr(116)+Chr(97)+Chr(114)+Chr(116)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.metadataService.callFunc((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(116)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.thumbnailService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),thumbnailUrl,m.bitmovinPlayerTask,content)
m.services.audioService.callFunc((Chr(115)+Chr(116)+Chr(97)+Chr(114)+Chr(&H74)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.services.playbackService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(114)+Chr(116)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),invalid)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=_01_1O10IOO0I()
end if
if content.getChildCount()=0 content=_I_1O00I1_11I(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(99)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(&H78)),(Chr(&H5f)+Chr(&H4f)+Chr(&H31)+Chr(&H49)+Chr(95)+Chr(73)+Chr(&H31)+Chr(&H4f)+Chr(&H5f)+Chr(&H4f)+Chr(&H49)+Chr(79)+Chr(79)))
m.services.impressionService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),m.services.licensingService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(76)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(115)+Chr(101)+Chr(&H4b)+Chr(101)+Chr(&H79))),content.getChildCount())
m.Video.content=content
___01011IO__0(m.BitmovinFields.SOURCE_LOADED,(1=1))
prebuffer=_1OO_001I0I1I(config,[(Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(&H70)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),(Chr(&H70)+Chr(114)+Chr(101)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(&H64))])
if _0II10I01_00_(prebuffer) and prebuffer
m.services.playbackService.callFunc((Chr(&H70)+Chr(114)+Chr(101)+Chr(&H6c)+Chr(&H6f)+Chr(97)+Chr(100)),invalid)
end if
m.Video.mute=_1OO_001I0I1I(config,[(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(&H6d)+Chr(&H75)+Chr(116)+Chr(101)+Chr(&H64))])
m.services.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerState.READY)
adBreaks=_1OO_001I0I1I(_IOII1O1_OO0I,[(Chr(97)+Chr(&H64)+Chr(&H76)+Chr(101)+Chr(&H72)+Chr(116)+Chr(105)+Chr(&H73)+Chr(&H69)+Chr(110)+Chr(&H67)),(Chr(&H61)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(107)+Chr(115))])
if adBreaks<>invalid m.services.advertisingService.callFunc((Chr(&H73)+Chr(99)+Chr(&H68)+Chr(101)+Chr(&H64)+Chr(&H75)+Chr(&H6c)+Chr(&H65)+Chr(65)+Chr(&H64)+Chr(115)),adBreaks)
autoplay=_1OO_001I0I1I(config,[(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(&H61)+Chr(&H75)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79))])
if(_0II10I01_00_(autoplay) and autoplay)
m.services.playbackService.callFunc((Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)),invalid)
end if
end sub
sub unload(_0010O1_11OO_=invalid)
if m.Video.content=invalid return 
m.services.configurationService.callFunc((Chr(&H75)+Chr(&H70)+Chr(100)+Chr(97)+Chr(116)+Chr(101)+Chr(&H53)+Chr(&H6f)+Chr(117)+Chr(&H72)+Chr(&H63)+Chr(&H65)),{})
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.services.playbackService.callFunc((Chr(&H73)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
___01011IO__0(m.StopSeek,(1=1))
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(116)+Chr(111)+Chr(112)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.services.advertisingService.callFunc((Chr(&H73)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.impressionService.callFunc((Chr(115)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.metadataService.callFunc((Chr(&H73)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.thumbnailService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.audioService.callFunc((Chr(115)+Chr(116)+Chr(111)+Chr(112)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.BitmovinPlayerTask.callFunc((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H65)),invalid)
___01011IO__0(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
end sub
function setHttpHeaders(_00OIOIO11O0_)
m.httpAgent.SetHeaders(_00OIOIO11O0_)
end function
function _OII10_O0I10O(_OO10OIIIOI0I)
contentNode=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H43)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)))
stream=_O11I1OII010_(_OO10OIIIOI0I)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_OO10OIIIOI0I.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _OO10OIIIOI0I.assetType=m.BitmovinConfigAssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_1OO_001I0I1I(_OO10OIIIOI0I,[(Chr(115)+Chr(117)+Chr(98)+Chr(116)+Chr(105)+Chr(116)+Chr(108)+Chr(101)+Chr(&H54)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(115))])
if subTitleTracks<>invalid
mappedTracks=_1001I10OIO_O(subtitleTracks,_0111I1OI_000)
contentNode.subtitleTracks=mappedTracks
end if
drm=_1OO_001I0I1I(_OO10OIIIOI0I,[(Chr(&H64)+Chr(&H72)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(&H57)+Chr(105)+Chr(100)+Chr(&H65)+Chr(118)+Chr(105)+Chr(110)+Chr(101)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(100)+Chr(121)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(&H41)+Chr(&H63)+Chr(&H71)+Chr(&H75)+Chr(105)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(65)+Chr(&H6e)+Chr(&H64)+Chr(&H43)+Chr(&H68)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(101)+Chr(&H6e)+Chr(103)+Chr(101))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(37)+Chr(&H25)+Chr(37))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(100)+Chr(121)+Chr(&H4c)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(115)+Chr(101)+Chr(65)+Chr(99)+Chr(113)+Chr(&H75)+Chr(105)+Chr(115)+Chr(105)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(&H55)+Chr(114)+Chr(&H6c))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
if drm.headers<>invalid
m.drmHttpAgent=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H48)+Chr(&H74)+Chr(116)+Chr(&H70)+Chr(65)+Chr(&H67)+Chr(&H65)+Chr(110)+Chr(116)))
m.drmHttpAgent.SetHeaders(drm.headers)
else 
m.drmHttpAgent=invalid
end if
end if
options=_1OO_001I0I1I(_OO10OIIIOI0I,[(Chr(111)+Chr(112)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(&H73))])
if options<>invalid contentNode.PlayStart=__I1O1_I0_O1O(options,contentNode.Live)
if contentNode.PlayStart<0 _II1I1O_I_10_()
return contentNode 
end function
function _O11I1OII010_(__10II101O1OO)
if __10II101O1OO.dash<>invalid
return{streamFormat:(Chr(&H64)+Chr(97)+Chr(115)+Chr(104)),url:__10II101O1OO.dash} 
else if __10II101O1OO.hls<>invalid
return{streamFormat:(Chr(104)+Chr(&H6c)+Chr(115)),url:__10II101O1OO.hls} 
else if __10II101O1OO.smooth<>invalid
return{streamFormat:(Chr(105)+Chr(115)+Chr(109)),url:__10II101O1OO.smooth} 
else if __10II101O1OO.progressive<>invalid and type(__10II101O1OO.progressive)=(Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(103))
return{streamFormat:(Chr(&H6d)+Chr(112)+Chr(52)),url:__10II101O1OO.progressive} 
else if __10II101O1OO.progressive<>invalid and type(__10II101O1OO.progressive)=(Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(&H73)+Chr(&H73)+Chr(111)+Chr(&H63)+Chr(105)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(&H72)+Chr(114)+Chr(97)+Chr(&H79))
return{streamFormat:__10II101O1OO.progressive.type,url:__10II101O1OO.progressive.url} 
else 
return{} 
end if
end function
function __I1O1_I0_O1O(__10_O1OIO0I0,_I_1I_O0O0__I)
if __10_O1OIO0I0.startOffset=invalid return 0 
if __10_O1OIO0I0.startOffsetTimelineReference=invalid
if _I_1I_O0O0__I
__10_O1OIO0I0.startOffsetTimelineReference=m.TimelineReferencePoints.end
else 
__10_O1OIO0I0.startOffsetTimelineReference=m.TimelineReferencePoints.START
end if
end if
if Lcase(__10_O1OIO0I0.startOffsetTimelineReference)=m.TimelineReferencePoints.START and __10_O1OIO0I0.startOffset<0 return 0 
if Lcase(__10_O1OIO0I0.startOffsetTimelineReference)=m.TimelineReferencePoints.end and __10_O1OIO0I0.startOffset>=0 return _01_1O10IOO0I() 
return __10_O1OIO0I0.startOffset 
end function
sub _II1I1O_I_10_()
m.video.observeFieldScoped((Chr(&H64)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)),(Chr(&H5f)+Chr(73)+Chr(48)+Chr(48)+Chr(48)+Chr(&H4f)+Chr(95)+Chr(49)+Chr(95)+Chr(49)+Chr(&H5f)+Chr(73)+Chr(&H49)))
end sub
sub _I000O_1_1_II()
content=__010OI___1_1(m.video)
m.video.seek=(m.video.duration+content.PlayStart)
m.video.unobserveFieldScoped((Chr(100)+Chr(117)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)))
end sub
function _I_1O00I1_11I(___11_0I1I_00)
playlist=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H43)+Chr(111)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)))
playlist.appendChild(___11_0I1I_00)
return playlist 
end function
sub _O1I_I1O_OIOO(_O0OO1__00_O0)
if m.bitmovinPlayer.playerState=m.BitmovinPlayerState.SETUP return 
___01011IO__0(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
___01011IO__0(m.BitmovinFields.SOURCE_LOADED,(1=1))
if(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.PLAYING)or(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.STALLING)
___01011IO__0(m.BitmovinFields.PLAY,(1=1))
end if
m.services.playbackService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H53)+Chr(116)+Chr(97)+Chr(116)+Chr(101)),m.BitmovinPlayer.playerState)
end sub
function _0111I1OI_000(_10_IIO_O001O)
newItem={trackName:_10_IIO_O001O.url,language:_10_IIO_O001O.language,description:_10_IIO_O001O.label}
return newItem 
end function
sub ___01011IO__0(_I__IIO0__1IO,__0I0I0OOIO0I)
m.top.eventOccurred={eventName:_I__IIO0__1IO,eventData:__0I0I0OOIO0I}
end sub
