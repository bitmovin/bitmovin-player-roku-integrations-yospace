sub init()
m.metadataTimeline=[]
m.BitmovinFields=_0OOO_00I01OO()
m.HttpRequestTypes=_II0I000III__()
m.BitmovinMetadataEventTypes=__II0O11I0_OI()
m.hlsManifestParser=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(72)+Chr(108)+Chr(115)+Chr(&H4d)+Chr(&H61)+Chr(110)+Chr(105)+Chr(&H66)+Chr(101)+Chr(&H73)+Chr(116)+Chr(&H50)+Chr(&H61)+Chr(114)+Chr(&H73)+Chr(101)+Chr(114)))
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(111)+Chr(114)+Chr(&H79)))
m.bitmovinModelObjectMapper=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H4d)+Chr(&H6f)+Chr(100)+Chr(101)+Chr(&H6c)+Chr(79)+Chr(&H62)+Chr(106)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(77)+Chr(&H61)+Chr(112)+Chr(&H70)+Chr(101)+Chr(114)))
m.eventFactory=_0I__010_III_()
_I00__0101__O()
end sub
sub _I00__0101__O()
m.scteEvents=[]
m.parsedMasterPlaylist=invalid
m.parsedVariantPlaylist=invalid
m.playlistVariantBitrate=invalid
m.videoStreamingSegmentCount=0
end sub
sub initializeService(_I_0_OII01IO0,_O_I_1111IIII,_01I10__IO0_O,_0_01OOO1I__1)
m.video=_I_0_OII01IO0
m.video.timedMetaDataSelectionKeys=[(Chr(&H2a))]
m.bitmovinPlayer=_O_I_1111IIII
m.mediaQualityService=_01I10__IO0_O.mediaQualityService
m.playbackService=_01I10__IO0_O.playbackService
m.bitmovinPlayerTask=_0_01OOO1I__1
m.configurationService=_01I10__IO0_O.configurationService
m.timeService=_01I10__IO0_O.timeService
end sub
sub startService(__1_O11IO1O__=invalid)
m.bitmovinPlayer.observeFieldScoped((Chr(&H73)+Chr(101)+Chr(101)+Chr(107)),(Chr(&H5f)+Chr(73)+Chr(&H30)+Chr(&H49)+Chr(48)+Chr(48)+Chr(&H30)+Chr(&H4f)+Chr(&H30)+Chr(&H30)+Chr(&H5f)+Chr(95)+Chr(&H30)))
m.video.observeFieldScoped((Chr(&H70)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),(Chr(&H5f)+Chr(&H5f)+Chr(49)+Chr(73)+Chr(48)+Chr(95)+Chr(&H5f)+Chr(&H49)+Chr(&H49)+Chr(&H5f)+Chr(48)+Chr(49)+Chr(&H30)))
m.video.observeFieldScoped((Chr(&H74)+Chr(105)+Chr(109)+Chr(&H65)+Chr(100)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(&H44)+Chr(&H61)+Chr(116)+Chr(97)),(Chr(&H5f)+Chr(&H31)+Chr(&H30)+Chr(73)+Chr(&H4f)+Chr(95)+Chr(&H30)+Chr(49)+Chr(79)+Chr(79)+Chr(95)+Chr(49)+Chr(73)))
isNativeHlsParsingEnabled=_1OI1001I_1I1(m.configurationService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(67)+Chr(111)+Chr(&H6e)+Chr(102)+Chr(&H69)+Chr(103))),[(Chr(116)+Chr(119)+Chr(&H65)+Chr(&H61)+Chr(107)+Chr(&H73)),(Chr(110)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(118)+Chr(&H65)+Chr(&H48)+Chr(108)+Chr(115)+Chr(80)+Chr(&H61)+Chr(&H72)+Chr(115)+Chr(&H69)+Chr(110)+Chr(103)+Chr(69)+Chr(110)+Chr(97)+Chr(&H62)+Chr(108)+Chr(101)+Chr(&H64))])
if isNativeHlsParsingEnabled=(1=1)_0__I_II_10_O()
end sub
sub _0__I_II_10_O()
m.mediaQualityService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(73)+Chr(&H30)+Chr(&H30)+Chr(95)+Chr(95)+Chr(48)+Chr(49)+Chr(&H30)+Chr(79)+Chr(&H4f)+Chr(&H31)+Chr(&H4f)))
m.video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(109)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H53)+Chr(101)+Chr(103)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(&H74)),(Chr(95)+Chr(&H31)+Chr(49)+Chr(&H49)+Chr(73)+Chr(&H5f)+Chr(&H30)+Chr(79)+Chr(&H30)+Chr(&H31)+Chr(&H49)+Chr(&H30)+Chr(&H31)))
end sub
sub stopService(_0010_OO0IO__=invalid)
m.bitmovinPlayer.unobserveFieldScoped((Chr(&H73)+Chr(&H65)+Chr(101)+Chr(107)))
m.video.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)))
m.video.unobserveFieldScoped((Chr(116)+Chr(&H69)+Chr(&H6d)+Chr(&H65)+Chr(100)+Chr(77)+Chr(&H65)+Chr(&H74)+Chr(&H61)+Chr(&H44)+Chr(97)+Chr(116)+Chr(&H61)))
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(114)+Chr(&H65)+Chr(97)+Chr(109)+Chr(&H69)+Chr(110)+Chr(103)+Chr(83)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(116)))
m.mediaQualityService.unobserveFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H65)+Chr(100)))
_I00__0101__O()
end sub
sub _10IO_01OO_1I(_00IO__1_O1O1)
metadata=_00IO__1_O1O1.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(&H65)+Chr(&H6d)+Chr(&H73)+Chr(&H67))
_1__1O00I001O(metadata)
return 
end if
metadata.type=m.BitmovinFields.METADATA
m.top.eventOccurred=metadata
end sub
sub _I0I000O00__0()
m.metadataTimeline.Clear()
end sub
sub _1__1O00I001O(_1O1O1I01_0O0)
m.metadataTimeline.Push(_1_0O0II1___I(_1O1O1I01_0O0))
__1I0__II_010()
end sub
sub __1I0__II_010()
alreadyFired=0
for i=0 to(m.metadataTimeline.Count()-1)step 1
currentIndex=i-alreadyFired
if m.metadataTimeline[currentIndex].BMP_scheduledTime<=m.timeService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(67)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H54)+Chr(105)+Chr(109)+Chr(101)),invalid)
metadata=m.metadataTimeline[currentIndex]
metadata.type=m.BitmovinFields.METADATA
m.top.eventOccurred=metadata
m.metadataTimeline.Delete(currentIndex)
alreadyFired++
end if
end for
end sub
function _1_0O0II1___I(_1_II100O_00_)
_1_II100O_00_.AddReplace((Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H5f)+Chr(115)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(&H64)+Chr(117)+Chr(108)+Chr(101)+Chr(&H64)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(&H65)),_000I11OOI___(_1_II100O_00_))
return _1_II100O_00_ 
end function
function _000I11OOI___(_I_0IIOI1O0_I)
scheduledTime=_I_0IIOI1O0_I._decodeInfo_pts
if _I_0IIOI1O0_I.Offset<>invalid and _I_0IIOI1O0_I.Offset>0 and _I_0IIOI1O0_I.Timescale<>invalid and _I_0IIOI1O0_I.Timescale>0
scheduledTime+=(_I_0IIOI1O0_I.Offset/_I_0IIOI1O0_I.Timescale)
end if
return scheduledTime 
end function
sub _I00__010OO1O(_111I0O_IOOI1)
eventData=_111I0O_IOOI1.getData()
if eventData.type=m.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED and not _1100IO1O_0_I(m.video.streamInfo)
if _1100IO1O_0_I(m.parsedMasterPlaylist)
_0OI__0_0II10(m.video.streamInfo.streamUrl,eventData.targetquality.bitrate)
else 
__I10I0O001O1(eventData.targetquality.bitrate)
end if
end if
end sub
sub _0OI__0_0II10(_1101OIII110O,_0I0I1_0II1_1)
m.hlsMasterPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST,_1101OIII110O,{playlistVariantBitrate:_0I0I1_0II1_1})
m.hlsMasterPlaylistOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(Chr(95)+Chr(95)+Chr(&H30)+Chr(&H30)+Chr(48)+Chr(48)+Chr(&H49)+Chr(48)+Chr(&H5f)+Chr(49)+Chr(&H49)+Chr(&H4f)+Chr(73)))
m.hlsMasterPlaylistOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub __0000I0_1IOI(_OO10_1_I1111)
result=_OO10_1_I1111.getData()
m.hlsMasterPlaylistOperation.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)))
if not result.successful return 
playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedMasterPlaylist=m.hlsManifestParser.callFunc((Chr(&H70)+Chr(&H61)+Chr(&H72)+Chr(115)+Chr(&H65)+Chr(77)+Chr(97)+Chr(115)+Chr(116)+Chr(101)+Chr(&H72)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(&H6c)+Chr(105)+Chr(&H73)+Chr(&H74)),result.response.rawPlaylist,result.response.playlistUrl)
__I10I0O001O1(playlistVariantBitrate)
end sub
function _IIIOII1I00_0(_OI1OI0_1_I_I,_1_I_110__I00)
if _1100IO1O_0_I(_OI1OI0_1_I_I)or _1100IO1O_0_I(_1_I_110__I00)return invalid 
playlistVariantUrl=invalid
for each streamInf in _OI1OI0_1_I_I.ext_x_stream_inf
if not _1100IO1O_0_I(streamInf.bandwidth) and streamInf.bandwidth.ToInt()=_1_I_110__I00
playlistVariantUrl=streamInf.url
exit for
end if
end for
return playlistVariantUrl 
end function
sub __I10I0O001O1(_II_I__0_OOO0)
playlistVariantUrl=_IIIOII1I00_0(m.parsedMasterPlaylist,_II_I__0_OOO0)
if _1100IO1O_0_I(playlistVariantUrl)return 
m.hlsVariantPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST,playlistVariantUrl,{playlistVariantBitrate:_II_I__0_OOO0})
m.hlsVariantPlaylistOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(73)+Chr(95)+Chr(79)+Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(&H4f)+Chr(49)+Chr(&H31)+Chr(73)+Chr(48)+Chr(95)))
m.hlsVariantPlaylistOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(&H74)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _I_O_OIO11I0_(_I010_O_10_11)
result=_I010_O_10_11.getData()
m.hlsVariantPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(116)))
if not result.successful return 
m.playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedVariantPlaylist=m.hlsManifestParser.callFunc((Chr(112)+Chr(97)+Chr(&H72)+Chr(115)+Chr(101)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H6c)+Chr(&H69)+Chr(&H73)+Chr(&H74)+Chr(86)+Chr(97)+Chr(&H72)+Chr(105)+Chr(&H61)+Chr(110)+Chr(116)),result.response.rawPlaylist,result.response.playlistVariantUrl)
m.numberOfSegmentsInVariant=m.parsedVariantPlaylist.ext_inf.Count()
_0010OO0O_1_O(m.parsedVariantPlaylist.scte)
end sub
sub _0010OO0O_1_O(_0OI1_II_IOI1)
if _1100IO1O_0_I(_0OI1_II_IOI1)return 
for each parsedEvent in _0OI1_II_IOI1
if not _1O00__O01_I0(parsedEvent)m.scteEvents.Push(parsedEvent)
end for
end sub
function _1O00__O01_I0(_01IOIIOO0_11)
isSctePresent=(1=2)
for each presentScteEvent in m.scteEvents
if presentScteEvent.id=_01IOIIOO0_11.id and presentScteEvent.segmenturl=_01IOIIOO0_11.segmenturl
isSctePresent=(1=1)
end if
end for
return isSctePresent 
end function
sub _11II_0O01I01(_O10I0___0OO1)
if m.scteEvents.Count()=0 return 
streamingSegment=_O10I0___0OO1.getData()
_01_0O00O101I(streamingSegment)
if m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(76)+Chr(&H69)+Chr(&H76)+Chr(101)))
_0I11_O_1I0__(streamingSegment)
_I_1O_OO0O1I0()
end if
end sub
sub _01_0O00O101I(_0O_O_0OIOO__)
for each scteEvent in m.scteEvents
if _0_O_I_1O_1I0(_0O_O_0OIOO__.segUrl,scteEvent.segmentUrl)
currentTime=m.timeService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(67)+Chr(117)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(&H65)),invalid)
metadata=m.eventFactory.createScteMetadataEvent(scteEvent,currentTime,m.BitmovinMetadataEventTypes,m.bitmovinFields)
metadata.type=m.BitmovinFields.METADATA
m.top.eventOccurred=metadata
end if
end for
end sub
sub _0I11_O_1I0__(_I_O0II1_1010)
streamingSegmentType=m.bitmovinModelObjectMapper.callfunc((Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(&H53)+Chr(&H65)+Chr(103)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(101)+Chr(&H54)+Chr(111)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H48)+Chr(&H74)+Chr(116)+Chr(112)+Chr(&H52)+Chr(101)+Chr(&H71)+Chr(&H75)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(84)+Chr(&H79)+Chr(&H70)+Chr(101)),_I_O0II1_1010.segType)
if streamingSegmentType=m.HttpRequestTypes.MEDIA_VIDEO
m.videoStreamingSegmentCount++
end if
end sub
sub _I_1O_OO0O1I0()
if not _IOI_1I0O_O1O()return 
m.videoStreamingSegmentCount=0
__I10I0O001O1(m.playlistVariantBitrate)
end sub
function _IOI_1I0O_O1O()
return m.videoStreamingSegmentCount=m.numberOfSegmentsInVariant 
end function
