sub init()
m.services=invalid
m.deficiencyFactory=invalid
m.Errors=invalid
m.BitmovinPlayerState=__OII0I0O_O01()
m.BitmovinConfigAssetTypes=_____IO1O000I()
m.TimelineReferencePoints=_I10III1IIIII()
m.BitmovinFields=_0O1I0_1O_O0I()
m.useDefaultUi=(1=1)
m.httpAgent=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(72)+Chr(116)+Chr(116)+Chr(112)+Chr(&H41)+Chr(103)+Chr(101)+Chr(110)+Chr(116)))
m.httpAgent.enableCookies()
m.drmHttpAgent=invalid
m.StopSeek=(Chr(&H73)+Chr(116)+Chr(111)+Chr(112)+Chr(83)+Chr(101)+Chr(&H65)+Chr(107))
end sub
function initializeService(_II0O_O_01__O,_001OO_1OO101,_III_0010000O,_01__I_O___0_)
m.video=_II0O_O_01__O
m.BitmovinPlayerTask=_001OO_1OO101
m.bitmovinPlayer=_III_0010000O
m.services=_01__I_O___0_
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(68)+Chr(&H65)+Chr(&H66)+Chr(&H69)+Chr(&H63)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(&H73)))
end function
function setup(_101O_OI1I0O1)
m.services.configurationService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H43)+Chr(111)+Chr(110)+Chr(&H66)+Chr(105)+Chr(103)),_101O_OI1I0O1)
m.appInfo=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(&H70)+Chr(112)+Chr(73)+Chr(110)+Chr(102)+Chr(111)))
m.services.licensingService.callFunc((Chr(&H75)+Chr(&H70)+Chr(100)+Chr(97)+Chr(116)+Chr(101)+Chr(67)+Chr(111)+Chr(&H6e)+Chr(&H66)+Chr(105)+Chr(103)),_101O_OI1I0O1)
m.BitmovinPlayerTask.callFunc((Chr(114)+Chr(&H75)+Chr(110)+Chr(84)+Chr(&H61)+Chr(115)+Chr(107)),invalid)
if _101O_OI1I0O1.ui=(1=2)m.useDefaultUi=(1=2)
m.services.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(83)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerState.SETUP)
if not _I1_I11_1O_0I(_101O_OI1I0O1.source)
load(_101O_OI1I0O1.source)
end if
end function
sub load(_1II10O10OI01)
content=invalid
if type(_1II10O10OI01)=(Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(115)+Chr(115)+Chr(111)+Chr(99)+Chr(&H69)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(&H65)+Chr(&H41)+Chr(114)+Chr(114)+Chr(97)+Chr(121))
content=_OOOIO1O10I00(_1II10O10OI01)
else if type(_1II10O10OI01)=(Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)) and _1II10O10OI01.isSubtype((Chr(67)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)))
content=_1II10O10OI01.clone((1=1))
end if
if content=invalid
m.services.deficiencyService.callFunc((Chr(&H6f)+Chr(&H6e)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)),m.Errors.SOURCE_INVALID))
return 
end if
if not _I1_I11_1O_0I(m.video.content)
unload(invalid)
end if
m.services.deficiencyService.callFunc((Chr(114)+Chr(&H65)+Chr(109)+Chr(111)+Chr(&H76)+Chr(101)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H56)+Chr(&H69)+Chr(&H65)+Chr(119)+Chr(73)+Chr(&H66)+Chr(80)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(101)+Chr(&H6e)+Chr(&H74)))
m.services.licensingService.callFunc((Chr(&H64)+Chr(&H6f)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(76)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(&H43)+Chr(104)+Chr(101)+Chr(99)+Chr(&H6b)))
m.services.configurationService.callFunc((Chr(&H75)+Chr(&H70)+Chr(100)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H53)+Chr(111)+Chr(&H75)+Chr(114)+Chr(&H63)+Chr(&H65)),_1II10O10OI01)
config=m.services.configurationService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(103)),invalid)
thumbnailUrl=__00O_O01OI1O(_1II10O10OI01,[(Chr(&H74)+Chr(104)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(84)+Chr(114)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(&H75)+Chr(114)+Chr(108))])
m.Video.setHttpAgent(m.httpAgent)
m.Video.drmHttpAgent=m.drmHttpAgent
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(114)+Chr(&H74)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),invalid)
m.services.advertisingService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.metadataService.callFunc((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),invalid)
m.services.thumbnailService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(114)+Chr(&H74)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),thumbnailUrl,m.bitmovinPlayerTask,content)
m.services.audioService.callFunc((Chr(&H73)+Chr(116)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.services.playbackService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=_IO_O0I_1O10I()
end if
if content.getChildCount()=0 content=__0O1I_O001O0(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(73)+Chr(&H6e)+Chr(&H64)+Chr(101)+Chr(&H78)),(Chr(95)+Chr(95)+Chr(&H5f)+Chr(&H30)+Chr(&H31)+Chr(&H31)+Chr(&H31)+Chr(48)+Chr(&H5f)+Chr(&H30)+Chr(79)+Chr(&H31)+Chr(95)))
m.services.impressionService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),m.services.licensingService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(75)+Chr(&H65)+Chr(&H79))),content.getChildCount())
m.Video.content=content
_00I_0O_1OO00(m.BitmovinFields.SOURCE_LOADED,(1=1))
prebuffer=__00O_O01OI1O(config,[(Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),(Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(&H64))])
if __IOI10_I0IOI(prebuffer) and prebuffer
m.services.playbackService.callFunc((Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(100)),invalid)
end if
m.Video.mute=__00O_O01OI1O(config,[(Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(107)),(Chr(&H6d)+Chr(117)+Chr(&H74)+Chr(101)+Chr(100))])
m.services.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(83)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerState.READY)
adBreaks=__00O_O01OI1O(_1II10O10OI01,[(Chr(&H61)+Chr(100)+Chr(&H76)+Chr(101)+Chr(&H72)+Chr(116)+Chr(105)+Chr(&H73)+Chr(&H69)+Chr(110)+Chr(103)),(Chr(97)+Chr(100)+Chr(66)+Chr(114)+Chr(&H65)+Chr(97)+Chr(107)+Chr(&H73))])
if adBreaks<>invalid m.services.advertisingService.callFunc((Chr(&H73)+Chr(99)+Chr(&H68)+Chr(101)+Chr(100)+Chr(&H75)+Chr(108)+Chr(101)+Chr(65)+Chr(100)+Chr(115)),adBreaks)
autoplay=__00O_O01OI1O(config,[(Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(97)+Chr(117)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79))])
if(__IOI10_I0IOI(autoplay) and autoplay)
m.services.playbackService.callFunc((Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)),invalid)
end if
end sub
sub unload(__0IIOO_OII0_=invalid)
if m.Video.content=invalid return 
m.services.configurationService.callFunc((Chr(&H75)+Chr(&H70)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(83)+Chr(&H6f)+Chr(&H75)+Chr(114)+Chr(99)+Chr(&H65)),{})
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.services.playbackService.callFunc((Chr(115)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
_00I_0O_1OO00(m.StopSeek,(1=1))
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.advertisingService.callFunc((Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.services.impressionService.callFunc((Chr(&H73)+Chr(&H74)+Chr(111)+Chr(112)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),invalid)
m.services.metadataService.callFunc((Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),invalid)
m.services.thumbnailService.callFunc((Chr(115)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.audioService.callFunc((Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.BitmovinPlayerTask.callFunc((Chr(114)+Chr(&H65)+Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H53)+Chr(116)+Chr(97)+Chr(116)+Chr(101)),invalid)
_00I_0O_1OO00(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
end sub
function _OOOIO1O10I00(_I1__0O0_I11O)
contentNode=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(67)+Chr(111)+Chr(110)+Chr(116)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)))
stream=_001I_1_110_I(_I1__0O0_I11O)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_I1__0O0_I11O.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _I1__0O0_I11O.assetType=m.BitmovinConfigAssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=__00O_O01OI1O(_I1__0O0_I11O,[(Chr(115)+Chr(&H75)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(108)+Chr(101)+Chr(&H54)+Chr(114)+Chr(97)+Chr(&H63)+Chr(107)+Chr(115))])
if subTitleTracks<>invalid
mappedTracks=_01OIIIOII001(subtitleTracks,_0_OO0____IOI)
contentNode.subtitleTracks=mappedTracks
end if
drm=__00O_O01OI1O(_I1__0O0_I11O,[(Chr(&H64)+Chr(114)+Chr(109))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(&H57)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(&H76)+Chr(105)+Chr(110)+Chr(101)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(82)+Chr(101)+Chr(97)+Chr(100)+Chr(121)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(&H73)+Chr(101)+Chr(65)+Chr(99)+Chr(113)+Chr(117)+Chr(&H69)+Chr(115)+Chr(105)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(65)+Chr(110)+Chr(&H64)+Chr(67)+Chr(&H68)+Chr(97)+Chr(&H6c)+Chr(108)+Chr(&H65)+Chr(&H6e)+Chr(103)+Chr(&H65))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(&H25)+Chr(37)+Chr(37))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H52)+Chr(101)+Chr(97)+Chr(100)+Chr(121)+Chr(76)+Chr(105)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(65)+Chr(99)+Chr(113)+Chr(&H75)+Chr(105)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(85)+Chr(&H72)+Chr(108))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
if drm.headers<>invalid
m.drmHttpAgent=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H48)+Chr(&H74)+Chr(&H74)+Chr(&H70)+Chr(&H41)+Chr(103)+Chr(&H65)+Chr(110)+Chr(&H74)))
m.drmHttpAgent.SetHeaders(drm.headers)
else 
m.drmHttpAgent=invalid
end if
end if
options=__00O_O01OI1O(_I1__0O0_I11O,[(Chr(&H6f)+Chr(&H70)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(115))])
if options<>invalid contentNode.PlayStart=_0O0_1101O1O0(options,contentNode.Live)
if contentNode.PlayStart<0 __I_1OI_I10_1()
return contentNode 
end function
function _001I_1_110_I(_1III001O___1)
if _1III001O___1.dash<>invalid
return{streamFormat:(Chr(100)+Chr(&H61)+Chr(115)+Chr(&H68)),url:_1III001O___1.dash} 
else if _1III001O___1.hls<>invalid
return{streamFormat:(Chr(&H68)+Chr(&H6c)+Chr(115)),url:_1III001O___1.hls} 
else if _1III001O___1.smooth<>invalid
return{streamFormat:(Chr(&H69)+Chr(&H73)+Chr(109)),url:_1III001O___1.smooth} 
else if _1III001O___1.progressive<>invalid and type(_1III001O___1.progressive)=(Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H74)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67))
return{streamFormat:(Chr(109)+Chr(&H70)+Chr(&H34)),url:_1III001O___1.progressive} 
else if _1III001O___1.progressive<>invalid and type(_1III001O___1.progressive)=(Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H73)+Chr(&H73)+Chr(&H6f)+Chr(99)+Chr(105)+Chr(97)+Chr(116)+Chr(105)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(&H72)+Chr(114)+Chr(97)+Chr(121))
return{streamFormat:_1III001O___1.progressive.type,url:_1III001O___1.progressive.url} 
else 
return{} 
end if
end function
function _0O0_1101O1O0(__OO_01OO__I1,__O0__00O_O_I)
if __OO_01OO__I1.startOffset=invalid return 0 
if __OO_01OO__I1.startOffsetTimelineReference=invalid
if __O0__00O_O_I
__OO_01OO__I1.startOffsetTimelineReference=m.TimelineReferencePoints.end
else 
__OO_01OO__I1.startOffsetTimelineReference=m.TimelineReferencePoints.START
end if
end if
if Lcase(__OO_01OO__I1.startOffsetTimelineReference)=m.TimelineReferencePoints.START and __OO_01OO__I1.startOffset<0 return 0 
if Lcase(__OO_01OO__I1.startOffsetTimelineReference)=m.TimelineReferencePoints.end and __OO_01OO__I1.startOffset>=0 return _IO_O0I_1O10I() 
return __OO_01OO__I1.startOffset 
end function
sub __I_1OI_I10_1()
m.video.observeFieldScoped((Chr(&H64)+Chr(117)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),(Chr(&H5f)+Chr(48)+Chr(&H31)+Chr(&H31)+Chr(73)+Chr(&H49)+Chr(95)+Chr(48)+Chr(&H4f)+Chr(&H49)+Chr(49)+Chr(&H4f)+Chr(95)))
end sub
sub _011II_0OI1O_()
content=_O10IOIOOIO_I(m.video)
m.video.seek=(m.video.duration+content.PlayStart)
m.video.unobserveFieldScoped((Chr(100)+Chr(&H75)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)))
end sub
function __0O1I_O001O0(_1III10II011_)
playlist=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(67)+Chr(111)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)))
playlist.appendChild(_1III10II011_)
return playlist 
end function
sub ___01110_0O1_(_O__IO1O_0O1_)
if m.bitmovinPlayer.playerState=m.BitmovinPlayerState.SETUP return 
_00I_0O_1OO00(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
_00I_0O_1OO00(m.BitmovinFields.SOURCE_LOADED,(1=1))
if(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.PLAYING)or(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.STALLING)
_00I_0O_1OO00(m.BitmovinFields.PLAY,(1=1))
end if
m.services.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(83)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayer.playerState)
end sub
function _0_OO0____IOI(_I_1I010IO1IO)
newItem={trackName:_I_1I010IO1IO.url,language:_I_1I010IO1IO.language,description:_I_1I010IO1IO.label}
return newItem 
end function
sub _00I_0O_1OO00(_O_I010OII1__,_OO_I_1O_OO0O)
m.top.eventOccurred={eventName:_O_I010OII1__,eventData:_OO_I_1O_OO0O}
end sub
