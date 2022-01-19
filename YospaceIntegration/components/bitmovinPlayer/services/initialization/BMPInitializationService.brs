sub init()
m.services=invalid
m.deficiencyFactory=invalid
m.Errors=invalid
m.BitmovinPlayerState=__O1_I_O1I_0_()
m.BitmovinConfigAssetTypes=_O00IO0IIOOI_()
m.TimelineReferencePoints=_I0II0O1__0O0()
m.BitmovinFields=_IOO11O01_10I()
m.useDefaultUi=(1=1)
m.httpAgent=CreateObject((Chr(&H72)+Chr(111)+Chr(72)+Chr(116)+Chr(116)+Chr(112)+Chr(&H41)+Chr(103)+Chr(&H65)+Chr(110)+Chr(116)))
m.httpAgent.enableCookies()
m.drmHttpAgent=invalid
m.internalEventFactory=_IOI0_011_1O1()
m.InternalEventTypes=___00__0_1OI_()
end sub
function initializeService(_O0I_1_OOIII0)
m.video=_O0I_1_OOIII0.videoNode
m.BitmovinPlayerTask=_O0I_1_OOIII0.task
m.bitmovinPlayer=_O0I_1_OOIII0.player
m.services=_O0I_1_OOIII0.services
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H44)+Chr(&H65)+Chr(102)+Chr(105)+Chr(99)+Chr(105)+Chr(&H65)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(70)+Chr(97)+Chr(&H63)+Chr(116)+Chr(111)+Chr(114)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H45)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)+Chr(&H73)))
end function
function setup(_OI0O_1O0I1I_)
m.services.configurationService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H43)+Chr(111)+Chr(110)+Chr(&H66)+Chr(105)+Chr(103)),_OI0O_1O0I1I_)
m.appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(65)+Chr(&H70)+Chr(&H70)+Chr(&H49)+Chr(110)+Chr(102)+Chr(&H6f)))
m.services.licensingService.callFunc((Chr(&H75)+Chr(112)+Chr(100)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(&H66)+Chr(&H69)+Chr(103)),_OI0O_1O0I1I_)
m.BitmovinPlayerTask.callFunc((Chr(114)+Chr(117)+Chr(&H6e)+Chr(&H54)+Chr(97)+Chr(&H73)+Chr(107)),invalid)
if _OI0O_1O0I1I_.ui=(1=2)m.useDefaultUi=(1=2)
adBufferingScreenConfig=__1II0I_I1101(m.services.configurationService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(105)+Chr(&H67)),invalid),[(Chr(&H73)+Chr(&H74)+Chr(&H79)+Chr(&H6c)+Chr(101)),(Chr(&H61)+Chr(&H64)+Chr(66)+Chr(&H75)+Chr(102)+Chr(&H66)+Chr(101)+Chr(114)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H65)+Chr(110))])
if not _110__I1O00_I(adBufferingScreenConfig)m.services.advertisingService.callFunc((Chr(&H63)+Chr(117)+Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(&H6d)+Chr(&H69)+Chr(122)+Chr(101)+Chr(65)+Chr(100)+Chr(66)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(&H53)+Chr(99)+Chr(114)+Chr(&H65)+Chr(101)+Chr(&H6e)),adBufferingScreenConfig)
m.services.playbackService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(83)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)),m.BitmovinPlayerState.SETUP)
if not _110__I1O00_I(_OI0O_1O0I1I_.source)
load(_OI0O_1O0I1I_.source)
end if
end function
sub load(_O10I_0II1OI0)
content=invalid
if type(_O10I_0II1OI0)=(Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H73)+Chr(&H73)+Chr(&H6f)+Chr(99)+Chr(105)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H76)+Chr(101)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(121))
content=_O11000I0_10O(_O10I_0II1OI0)
else if type(_O10I_0II1OI0)=(Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)) and _O10I_0II1OI0.isSubtype((Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)))
content=_O10I_0II1OI0.clone((1=1))
end if
if content=invalid
m.services.deficiencyService.callFunc((Chr(&H6f)+Chr(&H6e)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)),m.Errors.SOURCE_INVALID))
return 
end if
if not _110__I1O00_I(m.video.content)
unload(invalid)
end if
m.services.licensingService.callFunc((Chr(&H64)+Chr(111)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(67)+Chr(&H68)+Chr(101)+Chr(99)+Chr(107)))
m.services.configurationService.callFunc((Chr(117)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H53)+Chr(&H6f)+Chr(117)+Chr(114)+Chr(99)+Chr(101)),_O10I_0II1OI0)
config=m.services.configurationService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(67)+Chr(111)+Chr(&H6e)+Chr(102)+Chr(&H69)+Chr(103)),invalid)
thumbnailUrl=__1II0I_I1101(_O10I_0II1OI0,[(Chr(&H74)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(84)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(&H75)+Chr(114)+Chr(108))])
m.Video.setHttpAgent(m.httpAgent)
m.Video.drmHttpAgent=m.drmHttpAgent
m.services.mediaQualityService.callFunc((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.services.advertisingService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(114)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.metadataService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.thumbnailService.callFunc((Chr(115)+Chr(116)+Chr(97)+Chr(114)+Chr(&H74)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),thumbnailUrl,m.bitmovinPlayerTask,content)
m.services.audioService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),invalid)
m.services.playbackService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.durationService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=_1I1IIOOI1I0O()
end if
if content.getChildCount()=0 content=_O0_I01IO__1I(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(100)+Chr(101)+Chr(120)),(Chr(95)+Chr(&H49)+Chr(&H4f)+Chr(&H30)+Chr(&H30)+Chr(79)+Chr(79)+Chr(49)+Chr(&H31)+Chr(&H5f)+Chr(79)+Chr(73)+Chr(&H49)))
m.services.impressionService.callFunc((Chr(&H73)+Chr(116)+Chr(97)+Chr(114)+Chr(116)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),m.services.licensingService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(76)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(115)+Chr(&H65)+Chr(&H4b)+Chr(101)+Chr(&H79))),content.getChildCount())
m.Video.content=content
if m.services.deficiencyService.callFunc((Chr(115)+Chr(&H68)+Chr(111)+Chr(117)+Chr(108)+Chr(100)+Chr(&H45)+Chr(109)+Chr(&H69)+Chr(116)+Chr(&H53)+Chr(111)+Chr(117)+Chr(114)+Chr(&H63)+Chr(101)+Chr(85)+Chr(110)+Chr(108)+Chr(111)+Chr(&H61)+Chr(100)+Chr(&H65)+Chr(&H64)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H45)+Chr(120)+Chr(116)+Chr(&H65)+Chr(&H72)+Chr(&H6e)+Chr(&H61)+Chr(108)+Chr(&H6c)+Chr(121)),invalid)m.services.deficiencyService.callFunc((Chr(&H65)+Chr(&H6d)+Chr(105)+Chr(&H74)+Chr(&H53)+Chr(&H6f)+Chr(&H75)+Chr(&H72)+Chr(99)+Chr(&H65)+Chr(&H55)+Chr(&H6e)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(&H64)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),(1=2))
m.services.deficiencyService.callFunc((Chr(&H72)+Chr(101)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H65)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(86)+Chr(&H69)+Chr(101)+Chr(&H77)+Chr(73)+Chr(&H66)+Chr(80)+Chr(114)+Chr(101)+Chr(115)+Chr(&H65)+Chr(110)+Chr(116)))
_01IO00_10_O0(m.InternalEventTypes.SOURCE_LOADED,(1=1))
prebuffer=__1II0I_I1101(config,[(Chr(&H61)+Chr(&H64)+Chr(97)+Chr(&H70)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),(Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(&H64))])
if _11O1_III10_I(prebuffer) and prebuffer
m.services.playbackService.callFunc((Chr(112)+Chr(&H72)+Chr(&H65)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)),invalid)
end if
m.Video.mute=__1II0I_I1101(config,[(Chr(112)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(107)),(Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(100))])
m.services.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(83)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),m.BitmovinPlayerState.READY)
enableAdvertisingDebugOutput=__1II0I_I1101(_O10I_0II1OI0,[(Chr(97)+Chr(&H64)+Chr(118)+Chr(101)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(110)+Chr(&H67)),(Chr(101)+Chr(&H6e)+Chr(&H61)+Chr(98)+Chr(&H6c)+Chr(&H65)+Chr(&H41)+Chr(100)+Chr(&H76)+Chr(101)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(&H44)+Chr(&H65)+Chr(98)+Chr(117)+Chr(103)+Chr(79)+Chr(117)+Chr(&H74)+Chr(112)+Chr(&H75)+Chr(&H74))])
if not _110__I1O00_I(enableAdvertisingDebugOutput) and _11O1_III10_I(enableAdvertisingDebugOutput)m.services.advertisingService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(65)+Chr(100)+Chr(118)+Chr(101)+Chr(114)+Chr(&H74)+Chr(105)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H44)+Chr(101)+Chr(98)+Chr(117)+Chr(&H67)+Chr(79)+Chr(117)+Chr(&H74)+Chr(&H70)+Chr(&H75)+Chr(&H74)),enableAdvertisingDebugOutput)
adBreaks=__1II0I_I1101(_O10I_0II1OI0,[(Chr(97)+Chr(100)+Chr(&H76)+Chr(101)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67)),(Chr(&H61)+Chr(100)+Chr(66)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H6b)+Chr(&H73))])
if adBreaks<>invalid
m.services.advertisingService.callFunc((Chr(&H75)+Chr(112)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(&H61)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(97)),_1I011__10_0_(_O10I_0II1OI0))
m.services.advertisingService.callFunc((Chr(115)+Chr(99)+Chr(&H68)+Chr(101)+Chr(100)+Chr(117)+Chr(108)+Chr(101)+Chr(&H41)+Chr(&H64)+Chr(&H73)),adBreaks)
end if
autoplay=__1II0I_I1101(config,[(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(97)+Chr(&H75)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(108)+Chr(97)+Chr(121))])
if(_11O1_III10_I(autoplay) and autoplay)
m.services.playbackService.callFunc((Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)),invalid)
end if
end sub
sub unload(_0__I001O_O10=invalid)
if m.Video.content=invalid return 
internalUnload()
_01IO00_10_O0(m.InternalEventTypes.SOURCE_UNLOADED,(1=1))
end sub
sub internalUnload(_1OI010OI_I0I=invalid)
if m.Video.content=invalid return 
m.services.configurationService.callFunc((Chr(117)+Chr(112)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H53)+Chr(111)+Chr(&H75)+Chr(&H72)+Chr(&H63)+Chr(101)),{})
m.services.playbackService.callFunc((Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
_01IO00_10_O0(m.InternalEventTypes.STOP_SEEK,(1=1))
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.services.advertisingService.callFunc((Chr(&H73)+Chr(116)+Chr(111)+Chr(112)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),invalid)
m.services.impressionService.callFunc((Chr(115)+Chr(&H74)+Chr(111)+Chr(112)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.services.metadataService.callFunc((Chr(&H73)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
m.services.thumbnailService.callFunc((Chr(&H73)+Chr(116)+Chr(111)+Chr(&H70)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.audioService.callFunc((Chr(&H73)+Chr(&H74)+Chr(111)+Chr(112)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.durationService.callFunc((Chr(&H73)+Chr(&H74)+Chr(111)+Chr(112)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
end sub
function setHttpHeaders(_10OOO_IO110O)
m.httpAgent.SetHeaders(_10OOO_IO110O)
end function
function _O11000I0_10O(_I11_0OI11II_)
contentNode=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(67)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)))
stream=_1II00010I1_1(_I11_0OI11II_)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_I11_0OI11II_.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _I11_0OI11II_.assetType=m.BitmovinConfigAssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=__1II0I_I1101(_I11_0OI11II_,[(Chr(115)+Chr(117)+Chr(98)+Chr(&H74)+Chr(105)+Chr(116)+Chr(108)+Chr(101)+Chr(84)+Chr(114)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(115))])
if subTitleTracks<>invalid
mappedTracks=_OI111O01101_(subtitleTracks,__1O_1O111OI_)
contentNode.subtitleTracks=mappedTracks
end if
drm=__1II0I_I1101(_I11_0OI11II_,[(Chr(100)+Chr(114)+Chr(109))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(87)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(118)+Chr(105)+Chr(110)+Chr(&H65)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(80)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(100)+Chr(&H79)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(&H41)+Chr(99)+Chr(&H71)+Chr(117)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H41)+Chr(110)+Chr(&H64)+Chr(&H43)+Chr(104)+Chr(&H61)+Chr(108)+Chr(108)+Chr(101)+Chr(110)+Chr(103)+Chr(&H65))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(37)+Chr(&H25)+Chr(&H25))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(&H64)+Chr(&H79)+Chr(76)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(65)+Chr(99)+Chr(113)+Chr(&H75)+Chr(&H69)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(85)+Chr(114)+Chr(&H6c))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
if drm.headers<>invalid
m.drmHttpAgent=CreateObject((Chr(114)+Chr(111)+Chr(&H48)+Chr(116)+Chr(&H74)+Chr(112)+Chr(&H41)+Chr(103)+Chr(&H65)+Chr(&H6e)+Chr(116)))
m.drmHttpAgent.SetHeaders(drm.headers)
else 
m.drmHttpAgent=invalid
end if
end if
options=__1II0I_I1101(_I11_0OI11II_,[(Chr(&H6f)+Chr(112)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H73))])
contentNode.PlayStart=__IO11100OI1_(options,contentNode.Live)
if contentNode.PlayStart<0 _OOI10I__IO00()
return contentNode 
end function
function _1II00010I1_1(__O_IIIIIOO_I)
if __O_IIIIIOO_I.dash<>invalid
return{streamFormat:(Chr(100)+Chr(&H61)+Chr(115)+Chr(104)),url:__O_IIIIIOO_I.dash} 
else if __O_IIIIIOO_I.hls<>invalid
return{streamFormat:(Chr(104)+Chr(108)+Chr(&H73)),url:__O_IIIIIOO_I.hls} 
else if __O_IIIIIOO_I.smooth<>invalid
return{streamFormat:(Chr(&H69)+Chr(115)+Chr(109)),url:__O_IIIIIOO_I.smooth} 
else if __O_IIIIIOO_I.progressive<>invalid and type(__O_IIIIIOO_I.progressive)=(Chr(114)+Chr(&H6f)+Chr(83)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67))
return{streamFormat:(Chr(109)+Chr(112)+Chr(&H34)),url:__O_IIIIIOO_I.progressive} 
else if __O_IIIIIOO_I.progressive<>invalid and type(__O_IIIIIOO_I.progressive)=(Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H73)+Chr(115)+Chr(111)+Chr(99)+Chr(105)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(101)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(&H61)+Chr(&H79))
return{streamFormat:__O_IIIIIOO_I.progressive.type,url:__O_IIIIIOO_I.progressive.url} 
else 
return{} 
end if
end function
function __IO11100OI1_(___OO000_I_11,_011_101O_0_I)
if ___OO000_I_11=invalid or ___OO000_I_11.startOffset=invalid
if _011_101O_0_I return _1I1IIOOI1I0O() 
return 0 
end if
if ___OO000_I_11.startOffsetTimelineReference=invalid
if _011_101O_0_I
___OO000_I_11.startOffsetTimelineReference=m.TimelineReferencePoints.end
else 
___OO000_I_11.startOffsetTimelineReference=m.TimelineReferencePoints.START
end if
end if
if Lcase(___OO000_I_11.startOffsetTimelineReference)=m.TimelineReferencePoints.START and ___OO000_I_11.startOffset<0 return 0 
if Lcase(___OO000_I_11.startOffsetTimelineReference)=m.TimelineReferencePoints.end and ___OO000_I_11.startOffset>=0 return _1I1IIOOI1I0O() 
return ___OO000_I_11.startOffset 
end function
sub _OOI10I__IO00()
m.services.durationService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(99)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(73)+Chr(&H5f)+Chr(&H31)+Chr(&H30)+Chr(&H4f)+Chr(&H31)+Chr(79)+Chr(49)+Chr(&H30)+Chr(&H49)+Chr(&H4f)+Chr(79)))
end sub
sub _I_10O1O10IOO(_10_I01O1O_00)
durationData=_10_I01O1O_00.getData()
content=_O10_1_IOO10I(m.video)
m.video.seek=(durationData.data+content.PlayStart)
m.services.durationService.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)))
end sub
function _O0_I01IO__1I(_110__O___O0O)
playlist=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(67)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)))
playlist.appendChild(_110__O___O0O)
return playlist 
end function
function _1I011__10_0_(_I1II_O_O_001)
if _110__I1O00_I(_I1II_O_O_001)return invalid 
metadata=__1II0I_I1101(_I1II_O_O_001,[(Chr(109)+Chr(&H65)+Chr(116)+Chr(97)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H61))])
advertisingMetadata={}
advertisingMetadata.adBufferingScreenMetadata=_O10_I100IO_1(_I1II_O_O_001,metadata)
advertisingMetadata.audienceMeasurementMetadata=__OO00O0_O1_1(metadata)
return advertisingMetadata 
end function
function _O10_I100IO_1(_I000I0_I_I1O,_O___1II0I0__)
if _110__I1O00_I(_I000I0_I_I1O)return invalid 
adBufferingScreenMetadata={}
adBufferingScreenMetadata.title=invalid
adBufferingScreenMetadata.description=invalid
adBufferingScreenMetadata.posterImageUrl=invalid
for each key in adBufferingScreenMetadata
isPresentInMetadata=not _110__I1O00_I(_O___1II0I0__) and not _110__I1O00_I(_O___1II0I0__[key])
if isPresentInMetadata
adBufferingScreenMetadata[key]=_O___1II0I0__[key]
else if not isPresentInMetadata and key.Instr(0,(Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(116)+Chr(101)+Chr(&H72)+Chr(105)+Chr(&H6d)+Chr(&H61)+Chr(&H67)+Chr(101)+Chr(&H75)+Chr(114)+Chr(&H6c)))>-1
adBufferingScreenMetadata[key]=_I000I0_I_I1O.poster
else 
adBufferingScreenMetadata[key]=_I000I0_I_I1O[key]
end if
end for
return adBufferingScreenMetadata 
end function
function __OO00O0_O1_1(_1O1_100_OO0O)
if _1O1_100_OO0O=invalid return{} 
audienceMeasurementMetadata={}
audienceMeasurementMetadata.genres=_1O1_100_OO0O.genres
audienceMeasurementMetadata.childrenContent=_1O1_100_OO0O.childrenContent
audienceMeasurementMetadata.id=_1O1_100_OO0O.id
audienceMeasurementMetadata.length=_1O1_100_OO0O.length
return audienceMeasurementMetadata 
end function
sub _IO00OO11_OII(_01_OI_00O_11)
if m.bitmovinPlayer.playerState=m.BitmovinPlayerState.SETUP return 
_01IO00_10_O0(m.InternalEventTypes.SOURCE_UNLOADED,(1=1))
_01IO00_10_O0(m.InternalEventTypes.SOURCE_LOADED,(1=1))
if(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.PLAYING)or(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.STALLING)
_01IO00_10_O0(m.InternalEventTypes.PLAY,(1=1))
end if
m.services.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)),m.BitmovinPlayer.playerState)
end sub
function __1O_1O111OI_(_11_O0_O101II)
newItem={trackName:_11_O0_O101II.url,language:_11_O0_O101II.language,description:_11_O0_O101II.label}
return newItem 
end function
sub _01IO00_10_O0(_1O_0I_011OI_,__1_O_III0_OI)
initializationServiceEvent=m.internalEventFactory.createInternalEvent(_1O_0I_011OI_,__1_O_III0_OI)
m.top.eventOccurred=initializationServiceEvent
end sub
