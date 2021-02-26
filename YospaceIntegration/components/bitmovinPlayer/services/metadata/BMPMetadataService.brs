sub init()
m.metadataTimeline=[]
m.BitmovinFields=_I__1I0I_O__0()
m.HttpRequestTypes=_OI1OI100I_1I()
m.BitmovinMetadataEventTypes=_01O1001IO__I()
m.hlsManifestParser=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(72)+Chr(&H6c)+Chr(&H73)+Chr(&H4d)+Chr(&H61)+Chr(&H6e)+Chr(105)+Chr(&H66)+Chr(101)+Chr(&H73)+Chr(116)+Chr(&H50)+Chr(97)+Chr(&H72)+Chr(&H73)+Chr(101)+Chr(&H72)))
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H46)+Chr(97)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(&H79)))
m.bitmovinModelObjectMapper=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(77)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(&H63)+Chr(&H74)+Chr(77)+Chr(97)+Chr(&H70)+Chr(112)+Chr(101)+Chr(114)))
m.eventFactory=_I1I_O1I0I100()
_O_OI0IOOOIO0()
end sub
sub _O_OI0IOOOIO0()
m.scteEvents=[]
m.parsedMasterPlaylist=invalid
m.parsedVariantPlaylist=invalid
m.playlistVariantBitrate=invalid
m.videoStreamingSegmentCount=0
end sub
sub initializeService(_O_O00II0IOO0,___OOI__I1__0,_OI_I_1II0_O_,_IO001OOII_II)
m.video=_O_O00II0IOO0
m.video.timedMetaDataSelectionKeys=[(Chr(42))]
m.bitmovinPlayer=___OOI__I1__0
m.mediaQualityService=_OI_I_1II0_O_.mediaQualityService
m.playbackService=_OI_I_1II0_O_.playbackService
m.bitmovinPlayerTask=_IO001OOII_II
m.configurationService=_OI_I_1II0_O_.configurationService
m.timeService=_OI_I_1II0_O_.timeService
end sub
sub startService(_OIO_1_O_010O=invalid)
m.bitmovinPlayer.observeFieldScoped((Chr(&H73)+Chr(&H65)+Chr(101)+Chr(107)),(Chr(95)+Chr(&H30)+Chr(73)+Chr(49)+Chr(73)+Chr(&H30)+Chr(&H5f)+Chr(79)+Chr(79)+Chr(95)+Chr(&H4f)+Chr(&H31)+Chr(49)))
m.video.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(110)),(Chr(&H5f)+Chr(&H31)+Chr(79)+Chr(49)+Chr(&H30)+Chr(&H49)+Chr(&H49)+Chr(49)+Chr(48)+Chr(49)+Chr(&H5f)+Chr(49)+Chr(95)))
m.video.observeFieldScoped((Chr(&H74)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(100)+Chr(&H4d)+Chr(101)+Chr(&H74)+Chr(&H61)+Chr(&H44)+Chr(97)+Chr(116)+Chr(&H61)),(Chr(95)+Chr(&H5f)+Chr(&H30)+Chr(79)+Chr(48)+Chr(&H4f)+Chr(&H49)+Chr(73)+Chr(73)+Chr(&H31)+Chr(48)+Chr(&H4f)+Chr(49)))
isNativeHlsParsingEnabled=_10_O10O0_11I(m.configurationService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H43)+Chr(111)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(103))),[(Chr(&H74)+Chr(119)+Chr(101)+Chr(97)+Chr(107)+Chr(115)),(Chr(&H6e)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H76)+Chr(101)+Chr(72)+Chr(&H6c)+Chr(&H73)+Chr(&H50)+Chr(&H61)+Chr(&H72)+Chr(115)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(&H45)+Chr(110)+Chr(97)+Chr(&H62)+Chr(108)+Chr(101)+Chr(100))])
if isNativeHlsParsingEnabled=(1=1)_O0_0_0_1II1_()
end sub
sub _O0_0_0_1II1_()
m.mediaQualityService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(99)+Chr(&H63)+Chr(117)+Chr(114)+Chr(114)+Chr(101)+Chr(100)),(Chr(&H5f)+Chr(79)+Chr(73)+Chr(&H5f)+Chr(95)+Chr(&H30)+Chr(&H49)+Chr(&H4f)+Chr(&H31)+Chr(&H31)+Chr(79)+Chr(48)+Chr(&H4f)))
m.video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(109)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(116)),(Chr(&H5f)+Chr(79)+Chr(&H31)+Chr(48)+Chr(&H4f)+Chr(79)+Chr(73)+Chr(95)+Chr(&H49)+Chr(79)+Chr(&H49)+Chr(&H49)+Chr(48)))
end sub
sub stopService(_0I_IO0I0I000=invalid)
m.bitmovinPlayer.unobserveFieldScoped((Chr(115)+Chr(&H65)+Chr(&H65)+Chr(&H6b)))
m.video.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)))
m.video.unobserveFieldScoped((Chr(116)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(100)+Chr(77)+Chr(101)+Chr(116)+Chr(&H61)+Chr(&H44)+Chr(&H61)+Chr(&H74)+Chr(&H61)))
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H6d)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(101)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)))
m.mediaQualityService.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(99)+Chr(99)+Chr(117)+Chr(114)+Chr(&H65)+Chr(100)))
_O_OI0IOOOIO0()
end sub
sub __0O0OIII10O1(_O0O0IO_OO_O1)
metadata=_O0O0IO_OO_O1.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(&H65)+Chr(109)+Chr(&H73)+Chr(103))
__O__I1_0OII0(metadata)
return 
end if
m.bitmovinPlayer.metadata=metadata
end sub
sub _0I1I0_OO_O11()
m.metadataTimeline.Clear()
end sub
sub __O__I1_0OII0(_1_1O1I00O0__)
m.metadataTimeline.Push(_I_1O01I1111I(_1_1O1I00O0__))
_1O10II101_1_()
end sub
sub _1O10II101_1_()
alreadyFired=0
for i=0 to(m.metadataTimeline.Count()-1)step 1
currentIndex=i-alreadyFired
if m.metadataTimeline[currentIndex].BMP_scheduledTime<=m.timeService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(67)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(84)+Chr(&H69)+Chr(109)+Chr(101)),invalid)
m.bitmovinPlayer.metadata=m.metadataTimeline[currentIndex]
m.metadataTimeline.Delete(currentIndex)
alreadyFired++
end if
end for
end sub
function _I_1O01I1111I(_0O_OI_0I1O_1)
_0O_OI_0I1O_1.AddReplace((Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H5f)+Chr(115)+Chr(&H63)+Chr(104)+Chr(&H65)+Chr(&H64)+Chr(&H75)+Chr(108)+Chr(101)+Chr(100)+Chr(84)+Chr(105)+Chr(109)+Chr(&H65)),__0O0I111_0OO(_0O_OI_0I1O_1))
return _0O_OI_0I1O_1 
end function
function __0O0I111_0OO(_11O10_11O11_)
scheduledTime=_11O10_11O11_._decodeInfo_pts
if _11O10_11O11_.Offset<>invalid and _11O10_11O11_.Offset>0 and _11O10_11O11_.Timescale<>invalid and _11O10_11O11_.Timescale>0
scheduledTime+=(_11O10_11O11_.Offset/_11O10_11O11_.Timescale)
end if
return scheduledTime 
end function
sub _OI__0IO11O0O(_O_OI_I0__1_I)
eventData=_O_OI_I0__1_I.getData()
if eventData.type=m.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED and not _OO_O1_O1O0O_(m.video.streamInfo)
if _OO_O1_O1O0O_(m.parsedMasterPlaylist)
__O1I010I_I10(m.video.streamInfo.streamUrl,eventData.targetquality.bitrate)
else 
_OI10O__I10I0(eventData.targetquality.bitrate)
end if
end if
end sub
sub __O1I010I_I10(_0O_0O00O0OOO,_1OI1II0O_1IO)
m.hlsMasterPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST,_0O_0O00O0OOO,{playlistVariantBitrate:_1OI1II0O_1IO})
m.hlsMasterPlaylistOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(48)+Chr(48)+Chr(&H5f)+Chr(&H4f)+Chr(&H31)+Chr(&H4f)+Chr(&H4f)+Chr(&H5f)+Chr(48)+Chr(&H30)+Chr(79)+Chr(&H4f)))
m.hlsMasterPlaylistOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _00_O1OO_00OO(_1I00OOOIOOI0)
result=_1I00OOOIOOI0.getData()
m.hlsMasterPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)))
if not result.successful return 
playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedMasterPlaylist=m.hlsManifestParser.callFunc((Chr(&H70)+Chr(97)+Chr(114)+Chr(115)+Chr(&H65)+Chr(&H4d)+Chr(&H61)+Chr(&H73)+Chr(&H74)+Chr(&H65)+Chr(&H72)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H6c)+Chr(&H69)+Chr(115)+Chr(116)),result.response.rawPlaylist,result.response.playlistUrl)
_OI10O__I10I0(playlistVariantBitrate)
end sub
function _IO100I11I1OI(_O_O01_IIII1O,__O0I__O_O0I0)
if _OO_O1_O1O0O_(_O_O01_IIII1O)or _OO_O1_O1O0O_(__O0I__O_O0I0)return invalid 
playlistVariantUrl=invalid
for each streamInf in _O_O01_IIII1O.ext_x_stream_inf
if not _OO_O1_O1O0O_(streamInf.bandwidth) and streamInf.bandwidth.ToInt()=__O0I__O_O0I0
playlistVariantUrl=streamInf.url
exit for
end if
end for
return playlistVariantUrl 
end function
sub _OI10O__I10I0(_O1OO_OO_I0I1)
playlistVariantUrl=_IO100I11I1OI(m.parsedMasterPlaylist,_O1OO_OO_I0I1)
if _OO_O1_O1O0O_(playlistVariantUrl)return 
m.hlsVariantPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST,playlistVariantUrl,{playlistVariantBitrate:_O1OO_OO_I0I1})
m.hlsVariantPlaylistOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(&H5f)+Chr(&H30)+Chr(&H5f)+Chr(&H5f)+Chr(49)+Chr(79)+Chr(73)+Chr(&H5f)+Chr(&H4f)+Chr(&H31)+Chr(&H49)+Chr(48)+Chr(&H31)))
m.hlsVariantPlaylistOperation.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _0__1OI_O1I01(__I0OIO_0IO01)
result=__I0OIO_0IO01.getData()
m.hlsVariantPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)))
if not result.successful return 
m.playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedVariantPlaylist=m.hlsManifestParser.callFunc((Chr(112)+Chr(&H61)+Chr(114)+Chr(115)+Chr(101)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H6c)+Chr(&H69)+Chr(&H73)+Chr(116)+Chr(86)+Chr(&H61)+Chr(114)+Chr(105)+Chr(97)+Chr(110)+Chr(116)),result.response.rawPlaylist,result.response.playlistVariantUrl)
m.numberOfSegmentsInVariant=m.parsedVariantPlaylist.ext_inf.Count()
_1__OI0_1_011(m.parsedVariantPlaylist.scte)
end sub
sub _1__OI0_1_011(_I_1_O1_10O_1)
if _OO_O1_O1O0O_(_I_1_O1_10O_1)return 
for each parsedEvent in _I_1_O1_10O_1
if not _1I0OOOI_IIIO(parsedEvent)m.scteEvents.Push(parsedEvent)
end for
end sub
function _1I0OOOI_IIIO(_I_11_III_1__)
isSctePresent=(1=2)
for each presentScteEvent in m.scteEvents
if presentScteEvent.id=_I_11_III_1__.id and presentScteEvent.segmenturl=_I_11_III_1__.segmenturl
isSctePresent=(1=1)
end if
end for
return isSctePresent 
end function
sub _O10OOI_IOII0(_OO0_I0I_1_OO)
if m.scteEvents.Count()=0 return 
streamingSegment=_OO0_I0I_1_OO.getData()
_OO101_O0II0I(streamingSegment)
if m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(76)+Chr(105)+Chr(118)+Chr(&H65)))
___1__I11OI_O(streamingSegment)
_O_O_11O1O0I_()
end if
end sub
sub _OO101_O0II0I(_01_O10O1I_0_)
for each scteEvent in m.scteEvents
if __1OOIO_I___I(_01_O10O1I_0_.segUrl,scteEvent.segmentUrl)
currentTime=m.timeService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H43)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(101)),invalid)
m.bitmovinPlayer.metadata=m.eventFactory.createScteMetadataEvent(scteEvent,currentTime,m.BitmovinMetadataEventTypes,m.bitmovinFields)
end if
end for
end sub
sub ___1__I11OI_O(_11_1I_10_IO_)
streamingSegmentType=m.bitmovinModelObjectMapper.callfunc((Chr(&H72)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(83)+Chr(&H65)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H54)+Chr(121)+Chr(112)+Chr(&H65)+Chr(84)+Chr(&H6f)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(72)+Chr(116)+Chr(116)+Chr(&H70)+Chr(&H52)+Chr(101)+Chr(&H71)+Chr(117)+Chr(101)+Chr(115)+Chr(116)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(101)),_11_1I_10_IO_.segType)
if streamingSegmentType=m.HttpRequestTypes.MEDIA_VIDEO
m.videoStreamingSegmentCount++
end if
end sub
sub _O_O_11O1O0I_()
if not _0_I0O1001_1_()return 
m.videoStreamingSegmentCount=0
_OI10O__I10I0(m.playlistVariantBitrate)
end sub
function _0_I0O1001_1_()
return m.videoStreamingSegmentCount=m.numberOfSegmentsInVariant 
end function
