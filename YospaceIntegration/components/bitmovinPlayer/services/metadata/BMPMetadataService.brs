sub init()
m.metadataTimeline=[]
m.BitmovinFields=_O_10OO110010()
m.HttpRequestTypes=___OIO_III0O0()
m.BitmovinMetadataEventTypes=_I_00_O101_1O()
m.hlsManifestParser=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H48)+Chr(108)+Chr(&H73)+Chr(&H4d)+Chr(97)+Chr(110)+Chr(105)+Chr(102)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H50)+Chr(97)+Chr(114)+Chr(&H73)+Chr(&H65)+Chr(&H72)))
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.bitmovinModelObjectMapper=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(77)+Chr(111)+Chr(&H64)+Chr(101)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(97)+Chr(&H70)+Chr(112)+Chr(101)+Chr(&H72)))
m.eventFactory=_0_1_1IO_0_IO()
_00I_O0_O10I_()
end sub
sub _00I_O0_O10I_()
m.scteEvents=[]
m.parsedMasterPlaylist=invalid
m.parsedVariantPlaylist=invalid
m.playlistVariantBitrate=invalid
m.videoStreamingSegmentCount=0
end sub
sub initializeService(__0IIII10I__I,_O1O__1I__I0I,_0_1_0_O0OI01,__IOIO_IO0O0I)
m.video=__0IIII10I__I
m.video.timedMetaDataSelectionKeys=[(Chr(42))]
m.bitmovinPlayer=_O1O__1I__I0I
m.mediaQualityService=_0_1_0_O0OI01.mediaQualityService
m.playbackService=_0_1_0_O0OI01.playbackService
m.bitmovinPlayerTask=__IOIO_IO0O0I
m.configurationService=_0_1_0_O0OI01.configurationService
end sub
sub startService(_OO1I100I11_O=invalid)
m.bitmovinPlayer.observeFieldScoped((Chr(&H73)+Chr(&H65)+Chr(&H65)+Chr(107)),(Chr(&H5f)+Chr(&H31)+Chr(79)+Chr(79)+Chr(95)+Chr(73)+Chr(&H4f)+Chr(&H49)+Chr(&H5f)+Chr(&H49)+Chr(79)+Chr(&H4f)+Chr(&H4f)))
m.video.observeFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),(Chr(&H5f)+Chr(95)+Chr(73)+Chr(&H49)+Chr(79)+Chr(&H31)+Chr(95)+Chr(48)+Chr(&H4f)+Chr(48)+Chr(&H4f)+Chr(&H4f)+Chr(&H31)))
m.video.observeFieldScoped((Chr(&H74)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(&H64)+Chr(&H4d)+Chr(&H65)+Chr(116)+Chr(&H61)+Chr(&H44)+Chr(97)+Chr(116)+Chr(97)),(Chr(95)+Chr(&H31)+Chr(&H4f)+Chr(&H49)+Chr(&H5f)+Chr(49)+Chr(&H31)+Chr(73)+Chr(95)+Chr(49)+Chr(&H5f)+Chr(&H49)+Chr(48)))
isNativeHlsParsingEnabled=_1OO_001I0I1I(m.configurationService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(&H66)+Chr(105)+Chr(&H67))),[(Chr(&H74)+Chr(119)+Chr(&H65)+Chr(&H61)+Chr(107)+Chr(&H73)),(Chr(&H6e)+Chr(97)+Chr(116)+Chr(105)+Chr(118)+Chr(&H65)+Chr(72)+Chr(108)+Chr(&H73)+Chr(80)+Chr(97)+Chr(114)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(&H45)+Chr(110)+Chr(97)+Chr(&H62)+Chr(&H6c)+Chr(101)+Chr(&H64))])
if isNativeHlsParsingEnabled=(1=1)_I_I101__1_0I()
end sub
sub _I_I101__1_0I()
m.mediaQualityService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(99)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(73)+Chr(&H31)+Chr(49)+Chr(&H5f)+Chr(95)+Chr(79)+Chr(79)+Chr(79)+Chr(73)+Chr(&H49)+Chr(&H49)+Chr(&H5f)))
m.video.observeFieldScoped((Chr(115)+Chr(116)+Chr(114)+Chr(101)+Chr(97)+Chr(109)+Chr(105)+Chr(110)+Chr(103)+Chr(&H53)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),(Chr(&H5f)+Chr(&H31)+Chr(&H49)+Chr(&H49)+Chr(&H31)+Chr(49)+Chr(&H4f)+Chr(&H5f)+Chr(79)+Chr(&H49)+Chr(&H4f)+Chr(95)+Chr(48)))
end sub
sub stopService(__0011I__OOI1=invalid)
m.bitmovinPlayer.unobserveFieldScoped((Chr(115)+Chr(&H65)+Chr(&H65)+Chr(107)))
m.video.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)))
m.video.unobserveFieldScoped((Chr(&H74)+Chr(&H69)+Chr(&H6d)+Chr(&H65)+Chr(100)+Chr(77)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(68)+Chr(97)+Chr(116)+Chr(97)))
m.video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(109)+Chr(105)+Chr(110)+Chr(103)+Chr(&H53)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(&H74)))
m.mediaQualityService.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(101)+Chr(&H64)))
_00I_O0_O10I_()
end sub
sub _1OI_11I_1_I0(__1II1OOI__0O)
metadata=__1II1OOI__0O.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(101)+Chr(109)+Chr(&H73)+Chr(103))
_O_O0_1IO1OI_(metadata)
return 
end if
m.bitmovinPlayer.metadata=metadata
end sub
sub _1OO_IOI_IOOO()
m.metadataTimeline.Clear()
end sub
sub _O_O0_1IO1OI_(_IIOI_I_1O01I)
m.metadataTimeline.Push(__1_OO0110IO1(_IIOI_I_1O01I))
__IIO1_0O0OO1()
end sub
sub __IIO1_0O0OO1()
alreadyFired=0
for i=0 to(m.metadataTimeline.Count()-1)step 1
currentIndex=i-alreadyFired
if m.metadataTimeline[currentIndex].BMP_scheduledTime<=m.bitmovinPlayer.currentTime
m.bitmovinPlayer.metadata=m.metadataTimeline[currentIndex]
m.metadataTimeline.Delete(currentIndex)
alreadyFired++
end if
end for
end sub
function __1_OO0110IO1(_OI_I10_0OOOI)
_OI_I10_0OOOI.AddReplace((Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H5f)+Chr(&H73)+Chr(99)+Chr(&H68)+Chr(101)+Chr(100)+Chr(117)+Chr(&H6c)+Chr(101)+Chr(100)+Chr(84)+Chr(105)+Chr(&H6d)+Chr(&H65)),_1_0I1O1_1II_(_OI_I10_0OOOI))
return _OI_I10_0OOOI 
end function
function _1_0I1O1_1II_(__O1_0OI_0___)
scheduledTime=__O1_0OI_0___._decodeInfo_pts
if __O1_0OI_0___.Offset<>invalid and __O1_0OI_0___.Offset>0 and __O1_0OI_0___.Timescale<>invalid and __O1_0OI_0___.Timescale>0
scheduledTime+=(__O1_0OI_0___.Offset/__O1_0OI_0___.Timescale)
end if
return scheduledTime 
end function
sub _I11__OOOIII_(_OI0_O1OI0I_0)
eventData=_OI0_O1OI0I_0.getData()
if eventData.type=m.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED and not ___0O_II_00I_(m.video.streamInfo)
if ___0O_II_00I_(m.parsedMasterPlaylist)
_0_0OO0II_1OI(m.video.streamInfo.streamUrl,eventData.targetquality.bitrate)
else 
__II101_1_OO_(eventData.targetquality.bitrate)
end if
end if
end sub
sub _0_0OO0II_1OI(_I1_010IO_IIO,_I__0OOO0_O1O)
m.hlsMasterPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST,_I1_010IO_IIO,{playlistVariantBitrate:_I__0OOO0_O1O})
m.hlsMasterPlaylistOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(Chr(&H5f)+Chr(49)+Chr(49)+Chr(95)+Chr(&H5f)+Chr(79)+Chr(&H5f)+Chr(73)+Chr(79)+Chr(79)+Chr(79)+Chr(&H49)+Chr(49)))
m.hlsMasterPlaylistOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _11__O_IOOOI1(_I01___1_I__O)
result=_I01___1_I__O.getData()
m.hlsMasterPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)))
if not result.successful return 
playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedMasterPlaylist=m.hlsManifestParser.callFunc((Chr(112)+Chr(97)+Chr(114)+Chr(115)+Chr(101)+Chr(77)+Chr(&H61)+Chr(115)+Chr(&H74)+Chr(&H65)+Chr(&H72)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(108)+Chr(&H69)+Chr(&H73)+Chr(&H74)),result.response.rawPlaylist,result.response.playlistUrl)
__II101_1_OO_(playlistVariantBitrate)
end sub
function _IOO_I0O00_OI(_IO_IOO1_0O0O,_1001I00_10OO)
if ___0O_II_00I_(_IO_IOO1_0O0O)or ___0O_II_00I_(_1001I00_10OO)return invalid 
playlistVariantUrl=invalid
for each streamInf in _IO_IOO1_0O0O.ext_x_stream_inf
if not ___0O_II_00I_(streamInf.bandwidth) and streamInf.bandwidth.ToInt()=_1001I00_10OO
playlistVariantUrl=streamInf.url
exit for
end if
end for
return playlistVariantUrl 
end function
sub __II101_1_OO_(_I_OI10I01I11)
playlistVariantUrl=_IOO_I0O00_OI(m.parsedMasterPlaylist,_I_OI10I01I11)
if ___0O_II_00I_(playlistVariantUrl)return 
m.hlsVariantPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(65)+Chr(&H73)+Chr(121)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST,playlistVariantUrl,{playlistVariantBitrate:_I_OI10I01I11})
m.hlsVariantPlaylistOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(&H5f)+Chr(49)+Chr(79)+Chr(&H4f)+Chr(&H5f)+Chr(95)+Chr(&H30)+Chr(49)+Chr(&H49)+Chr(79)+Chr(73)+Chr(79)+Chr(49)))
m.hlsVariantPlaylistOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(&H74)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _1OO__01IOIO1(_O1I0O10_100O)
result=_O1I0O10_100O.getData()
m.hlsVariantPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)))
if not result.successful return 
m.playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedVariantPlaylist=m.hlsManifestParser.callFunc((Chr(112)+Chr(&H61)+Chr(114)+Chr(&H73)+Chr(101)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(108)+Chr(&H69)+Chr(115)+Chr(&H74)+Chr(&H56)+Chr(97)+Chr(&H72)+Chr(105)+Chr(&H61)+Chr(&H6e)+Chr(116)),result.response.rawPlaylist)
m.numberOfSegmentsInVariant=m.parsedVariantPlaylist.ext_inf.Count()
_0O_OOII_OO0_(m.parsedVariantPlaylist.scte)
end sub
sub _0O_OOII_OO0_(_O_0_01I10O_O)
if ___0O_II_00I_(_O_0_01I10O_O)return 
for each parsedEvent in _O_0_01I10O_O
if not _OI11O10IIO_O(parsedEvent)m.scteEvents.Push(parsedEvent)
end for
end sub
function _OI11O10IIO_O(_II0II011I111)
isSctePresent=(1=2)
for each presentScteEvent in m.scteEvents
if presentScteEvent.id=_II0II011I111.id and presentScteEvent.segmenturl=_II0II011I111.segmenturl
isSctePresent=(1=1)
end if
end for
return isSctePresent 
end function
sub _1II11O_OIO_0(_OIOII010I0OI)
if m.scteEvents.Count()=0 return 
streamingSegment=_OIOII010I0OI.getData()
_00_1O1I__O1_(streamingSegment)
if m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(&H4c)+Chr(105)+Chr(&H76)+Chr(101)))
___0OO0IOOOI0(streamingSegment)
_O1OOO_OO0IOO()
end if
end sub
sub _00_1O1I__O1_(_IO_OI0OI_1_1)
for each scteEvent in m.scteEvents
if scteEvent.segmentUrl=_IO_OI0OI_1_1.segUrl
m.bitmovinPlayer.metadata=m.eventFactory.createScteMetadataEvent(scteEvent,m.video.position,m.BitmovinMetadataEventTypes,m.bitmovinFields)
end if
end for
end sub
sub ___0OO0IOOOI0(_1__IO0O_00_0)
streamingSegmentType=m.bitmovinModelObjectMapper.callfunc((Chr(114)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(&H53)+Chr(101)+Chr(103)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(&H65)+Chr(&H54)+Chr(&H6f)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H48)+Chr(&H74)+Chr(116)+Chr(&H70)+Chr(&H52)+Chr(&H65)+Chr(113)+Chr(&H75)+Chr(101)+Chr(&H73)+Chr(&H74)+Chr(&H54)+Chr(&H79)+Chr(112)+Chr(101)),_1__IO0O_00_0.segType)
if streamingSegmentType=m.HttpRequestTypes.MEDIA_VIDEO
m.videoStreamingSegmentCount++
end if
end sub
sub _O1OOO_OO0IOO()
if not __OO11O00__10()return 
m.videoStreamingSegmentCount=0
__II101_1_OO_(m.playlistVariantBitrate)
end sub
function __OO11O00__10()
return m.videoStreamingSegmentCount=m.numberOfSegmentsInVariant 
end function
