sub init()
m.services=invalid
m.deficiencyFactory=invalid
m.Errors=invalid
m.BitmovinPlayerState=_1_0I_0I00O_0()
m.BitmovinConfigAssetTypes=_I00OI__I1100()
m.TimelineReferencePoints=_1010_0O1001O()
m.BitmovinFields=_I__1I0I_O__0()
m.useDefaultUi=(1=1)
m.httpAgent=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(72)+Chr(116)+Chr(116)+Chr(&H70)+Chr(&H41)+Chr(103)+Chr(101)+Chr(&H6e)+Chr(116)))
m.httpAgent.enableCookies()
m.drmHttpAgent=invalid
m.StopSeek=(Chr(115)+Chr(116)+Chr(111)+Chr(112)+Chr(83)+Chr(&H65)+Chr(&H65)+Chr(&H6b))
end sub
function initializeService(__100_OIIO10I,_10II1O1IOOOI,_I0O1OIO1_1_1,__O10I001OI__)
m.video=__100_OIIO10I
m.BitmovinPlayerTask=_10II1O1IOOOI
m.bitmovinPlayer=_I0O1OIO1_1_1
m.services=__O10I001OI__
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H44)+Chr(101)+Chr(&H66)+Chr(105)+Chr(99)+Chr(105)+Chr(&H65)+Chr(110)+Chr(99)+Chr(&H79)+Chr(&H46)+Chr(97)+Chr(99)+Chr(&H74)+Chr(111)+Chr(&H72)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(69)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(&H73)))
end function
function setup(__I_0_11_1O0O)
m.services.configurationService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(102)+Chr(105)+Chr(103)),__I_0_11_1O0O)
m.appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(112)+Chr(&H70)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.services.licensingService.callFunc((Chr(117)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(67)+Chr(111)+Chr(&H6e)+Chr(102)+Chr(&H69)+Chr(103)),__I_0_11_1O0O)
m.BitmovinPlayerTask.callFunc((Chr(&H72)+Chr(&H75)+Chr(&H6e)+Chr(84)+Chr(&H61)+Chr(&H73)+Chr(&H6b)),invalid)
if __I_0_11_1O0O.ui=(1=2)m.useDefaultUi=(1=2)
m.services.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H65)),m.BitmovinPlayerState.SETUP)
if not _OO_O1_O1O0O_(__I_0_11_1O0O.source)
load(__I_0_11_1O0O.source)
end if
end function
sub load(__I_0_0O_1OII)
content=invalid
if type(__I_0_0O_1OII)=(Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(115)+Chr(&H73)+Chr(&H6f)+Chr(&H63)+Chr(105)+Chr(&H61)+Chr(116)+Chr(105)+Chr(118)+Chr(&H65)+Chr(&H41)+Chr(114)+Chr(114)+Chr(&H61)+Chr(121))
content=_10OI0111_1OI(__I_0_0O_1OII)
else if type(__I_0_0O_1OII)=(Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)) and __I_0_0O_1OII.isSubtype((Chr(67)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)))
content=__I_0_0O_1OII.clone((1=1))
end if
if content=invalid
m.services.deficiencyService.callFunc((Chr(111)+Chr(&H6e)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)),m.Errors.SOURCE_INVALID))
return 
end if
if not _OO_O1_O1O0O_(m.video.content)
unload(invalid)
end if
m.services.deficiencyService.callFunc((Chr(&H72)+Chr(&H65)+Chr(109)+Chr(111)+Chr(118)+Chr(&H65)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H56)+Chr(105)+Chr(101)+Chr(&H77)+Chr(&H49)+Chr(102)+Chr(80)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H65)+Chr(&H6e)+Chr(&H74)))
m.services.licensingService.callFunc((Chr(&H64)+Chr(111)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(110)+Chr(115)+Chr(101)+Chr(&H43)+Chr(&H68)+Chr(&H65)+Chr(99)+Chr(107)))
m.services.configurationService.callFunc((Chr(117)+Chr(&H70)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H53)+Chr(111)+Chr(&H75)+Chr(&H72)+Chr(&H63)+Chr(&H65)),__I_0_0O_1OII)
config=m.services.configurationService.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(&H43)+Chr(111)+Chr(110)+Chr(102)+Chr(105)+Chr(103)),invalid)
thumbnailUrl=_10_O10O0_11I(__I_0_0O_1OII,[(Chr(&H74)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(105)+Chr(108)+Chr(&H54)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(107)),(Chr(117)+Chr(&H72)+Chr(108))])
m.Video.setHttpAgent(m.httpAgent)
m.Video.drmHttpAgent=m.drmHttpAgent
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),invalid)
m.services.advertisingService.callFunc((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.metadataService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.thumbnailService.callFunc((Chr(115)+Chr(116)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),thumbnailUrl,m.bitmovinPlayerTask,content)
m.services.audioService.callFunc((Chr(115)+Chr(116)+Chr(97)+Chr(114)+Chr(116)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.services.playbackService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=_III1O0I101OO()
end if
if content.getChildCount()=0 content=_OO__O111I001(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(73)+Chr(110)+Chr(100)+Chr(&H65)+Chr(&H78)),(Chr(&H5f)+Chr(95)+Chr(73)+Chr(&H5f)+Chr(49)+Chr(48)+Chr(&H4f)+Chr(49)+Chr(&H4f)+Chr(73)+Chr(&H4f)+Chr(&H4f)+Chr(73)))
m.services.impressionService.callFunc((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.services.licensingService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(76)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(75)+Chr(&H65)+Chr(&H79))),content.getChildCount())
m.Video.content=content
____1110_1I__(m.BitmovinFields.SOURCE_LOADED,(1=1))
prebuffer=_10_O10O0_11I(config,[(Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(112)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),(Chr(112)+Chr(&H72)+Chr(101)+Chr(108)+Chr(111)+Chr(&H61)+Chr(100))])
if _IIOO1_11I00I(prebuffer) and prebuffer
m.services.playbackService.callFunc((Chr(112)+Chr(114)+Chr(101)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64)),invalid)
end if
m.Video.mute=_10_O10O0_11I(config,[(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(109)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(&H64))])
m.services.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)),m.BitmovinPlayerState.READY)
adBreaks=_10_O10O0_11I(__I_0_0O_1OII,[(Chr(&H61)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(103)),(Chr(97)+Chr(100)+Chr(66)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(107)+Chr(115))])
if adBreaks<>invalid m.services.advertisingService.callFunc((Chr(115)+Chr(99)+Chr(104)+Chr(101)+Chr(&H64)+Chr(117)+Chr(108)+Chr(101)+Chr(65)+Chr(100)+Chr(115)),adBreaks)
autoplay=_10_O10O0_11I(config,[(Chr(112)+Chr(108)+Chr(&H61)+Chr(121)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(107)),(Chr(97)+Chr(&H75)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121))])
if(_IIOO1_11I00I(autoplay) and autoplay)
m.services.playbackService.callFunc((Chr(112)+Chr(108)+Chr(97)+Chr(121)),invalid)
end if
end sub
sub unload(_0___O_11I0_1=invalid)
if m.Video.content=invalid return 
m.services.configurationService.callFunc((Chr(&H75)+Chr(112)+Chr(100)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H53)+Chr(111)+Chr(117)+Chr(&H72)+Chr(&H63)+Chr(&H65)),{})
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.services.playbackService.callFunc((Chr(115)+Chr(&H74)+Chr(111)+Chr(112)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
____1110_1I__(m.StopSeek,(1=1))
m.services.mediaQualityService.callFunc((Chr(&H73)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.advertisingService.callFunc((Chr(&H73)+Chr(&H74)+Chr(111)+Chr(112)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.services.impressionService.callFunc((Chr(&H73)+Chr(116)+Chr(111)+Chr(&H70)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.services.metadataService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.services.thumbnailService.callFunc((Chr(&H73)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),invalid)
m.services.audioService.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.BitmovinPlayerTask.callFunc((Chr(&H72)+Chr(101)+Chr(115)+Chr(101)+Chr(116)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H65)),invalid)
____1110_1I__(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
end sub
function setHttpHeaders(_0I1_0__I_0I0)
m.httpAgent.SetHeaders(_0I1_0__I_0I0)
end function
function _10OI0111_1OI(_010OI0I__IO0)
contentNode=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)))
stream=_1I_0O1IOO0_1(_010OI0I__IO0)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_010OI0I__IO0.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _010OI0I__IO0.assetType=m.BitmovinConfigAssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=_10_O10O0_11I(_010OI0I__IO0,[(Chr(&H73)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(116)+Chr(&H6c)+Chr(&H65)+Chr(84)+Chr(114)+Chr(97)+Chr(&H63)+Chr(&H6b)+Chr(115))])
if subTitleTracks<>invalid
mappedTracks=_O11011I10010(subtitleTracks,_0_00IOO0I_O1)
contentNode.subtitleTracks=mappedTracks
end if
drm=_10_O10O0_11I(_010OI0I__IO0,[(Chr(&H64)+Chr(114)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(&H57)+Chr(105)+Chr(&H64)+Chr(101)+Chr(118)+Chr(105)+Chr(110)+Chr(&H65)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(&H64)+Chr(&H79)+Chr(76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(65)+Chr(&H63)+Chr(113)+Chr(117)+Chr(105)+Chr(115)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H41)+Chr(&H6e)+Chr(&H64)+Chr(67)+Chr(&H68)+Chr(&H61)+Chr(108)+Chr(&H6c)+Chr(&H65)+Chr(&H6e)+Chr(&H67)+Chr(101))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(&H25)+Chr(&H25)+Chr(&H25))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(100)+Chr(121)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(&H41)+Chr(99)+Chr(&H71)+Chr(117)+Chr(&H69)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H55)+Chr(&H72)+Chr(&H6c))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
if drm.headers<>invalid
m.drmHttpAgent=CreateObject((Chr(114)+Chr(111)+Chr(&H48)+Chr(&H74)+Chr(116)+Chr(112)+Chr(&H41)+Chr(103)+Chr(&H65)+Chr(&H6e)+Chr(&H74)))
m.drmHttpAgent.SetHeaders(drm.headers)
else 
m.drmHttpAgent=invalid
end if
end if
options=_10_O10O0_11I(_010OI0I__IO0,[(Chr(111)+Chr(&H70)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H73))])
if options<>invalid contentNode.PlayStart=__I_I1I__II_O(options,contentNode.Live)
if contentNode.PlayStart<0 _OII_00110OO0()
return contentNode 
end function
function _1I_0O1IOO0_1(_O0OI010I_10I)
if _O0OI010I_10I.dash<>invalid
return{streamFormat:(Chr(&H64)+Chr(97)+Chr(&H73)+Chr(&H68)),url:_O0OI010I_10I.dash} 
else if _O0OI010I_10I.hls<>invalid
return{streamFormat:(Chr(104)+Chr(108)+Chr(115)),url:_O0OI010I_10I.hls} 
else if _O0OI010I_10I.smooth<>invalid
return{streamFormat:(Chr(&H69)+Chr(&H73)+Chr(109)),url:_O0OI010I_10I.smooth} 
else if _O0OI010I_10I.progressive<>invalid and type(_O0OI010I_10I.progressive)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67))
return{streamFormat:(Chr(&H6d)+Chr(&H70)+Chr(&H34)),url:_O0OI010I_10I.progressive} 
else if _O0OI010I_10I.progressive<>invalid and type(_O0OI010I_10I.progressive)=(Chr(&H72)+Chr(111)+Chr(65)+Chr(&H73)+Chr(&H73)+Chr(111)+Chr(&H63)+Chr(&H69)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(118)+Chr(101)+Chr(&H41)+Chr(114)+Chr(114)+Chr(&H61)+Chr(121))
return{streamFormat:_O0OI010I_10I.progressive.type,url:_O0OI010I_10I.progressive.url} 
else 
return{} 
end if
end function
function __I_I1I__II_O(_IOI0IOOIII0I,_01_00I1O_0_0)
if _IOI0IOOIII0I.startOffset=invalid return 0 
if _IOI0IOOIII0I.startOffsetTimelineReference=invalid
if _01_00I1O_0_0
_IOI0IOOIII0I.startOffsetTimelineReference=m.TimelineReferencePoints.end
else 
_IOI0IOOIII0I.startOffsetTimelineReference=m.TimelineReferencePoints.START
end if
end if
if Lcase(_IOI0IOOIII0I.startOffsetTimelineReference)=m.TimelineReferencePoints.START and _IOI0IOOIII0I.startOffset<0 return 0 
if Lcase(_IOI0IOOIII0I.startOffsetTimelineReference)=m.TimelineReferencePoints.end and _IOI0IOOIII0I.startOffset>=0 return _III1O0I101OO() 
return _IOI0IOOIII0I.startOffset 
end function
sub _OII_00110OO0()
m.video.observeFieldScoped((Chr(&H64)+Chr(117)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),(Chr(&H5f)+Chr(73)+Chr(95)+Chr(73)+Chr(&H49)+Chr(&H49)+Chr(79)+Chr(&H31)+Chr(&H30)+Chr(&H30)+Chr(49)+Chr(49)+Chr(49)))
end sub
sub _I_IIIO100111()
content=__OO1II10O_0O(m.video)
m.video.seek=(m.video.duration+content.PlayStart)
m.video.unobserveFieldScoped((Chr(&H64)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)))
end sub
function _OO__O111I001(_O__0000_IO1_)
playlist=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(111)+Chr(100)+Chr(101)))
playlist.appendChild(_O__0000_IO1_)
return playlist 
end function
sub __I_10O1OIOOI(__1O1IIIO_I_1)
if m.bitmovinPlayer.playerState=m.BitmovinPlayerState.SETUP return 
____1110_1I__(m.BitmovinFields.SOURCE_UNLOADED,(1=1))
____1110_1I__(m.BitmovinFields.SOURCE_LOADED,(1=1))
if(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.PLAYING)or(m.BitmovinPlayer.playerState=m.BitmovinPlayerState.STALLING)
____1110_1I__(m.BitmovinFields.PLAY,(1=1))
end if
m.services.playbackService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(83)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)),m.BitmovinPlayer.playerState)
end sub
function _0_00IOO0I_O1(_IO__0I000O0_)
newItem={trackName:_IO__0I000O0_.url,language:_IO__0I000O0_.language,description:_IO__0I000O0_.label}
return newItem 
end function
sub ____1110_1I__(_I1O111I0__I1,_11OI0I0OIIOO)
m.top.eventOccurred={eventName:_I1O111I0__I1,eventData:_11OI0I0OIIOO}
end sub
