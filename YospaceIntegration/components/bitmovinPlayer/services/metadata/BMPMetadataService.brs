sub init()
m.metadataTimeline=[]
m.BitmovinFields=_IOO11O01_10I()
m.HttpRequestTypes=_00I110IO0OOI()
m.hlsManifestParser=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(72)+Chr(&H6c)+Chr(&H73)+Chr(77)+Chr(97)+Chr(110)+Chr(&H69)+Chr(&H66)+Chr(101)+Chr(115)+Chr(&H74)+Chr(&H50)+Chr(&H61)+Chr(&H72)+Chr(&H73)+Chr(&H65)+Chr(114)))
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
m.asyncOperationFactory=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(111)+Chr(114)+Chr(&H79)))
m.bitmovinModelObjectMapper=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H4d)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(&H70)+Chr(&H70)+Chr(&H65)+Chr(114)))
m.internalEventFactory=_IOI0_011_1O1()
m.BitmovinInternalEventTypes=___00__0_1OI_()
_O1_0__1_OI11()
end sub
sub _O1_0__1_OI11()
m.scteEvents=[]
m.parsedMasterPlaylist=invalid
m.parsedVariantPlaylist=invalid
m.playlistVariantBitrate=invalid
m.videoStreamingSegmentCount=0
end sub
sub initializeService(_OOO1II_IO_I_)
m.video=_OOO1II_IO_I_.videoNode
m.video.timedMetaDataSelectionKeys=[(Chr(&H2a))]
m.bitmovinPlayer=_OOO1II_IO_I_.player
m.mediaQualityService=_OOO1II_IO_I_.services.mediaQualityService
m.playbackService=_OOO1II_IO_I_.services.playbackService
m.bitmovinPlayerTask=_OOO1II_IO_I_.task
m.configurationService=_OOO1II_IO_I_.services.configurationService
m.timeService=_OOO1II_IO_I_.services.timeService
end sub
sub startService(___0OO1000II0=invalid)
m.bitmovinPlayer.observeFieldScoped((Chr(115)+Chr(101)+Chr(&H65)+Chr(&H6b)),(Chr(&H5f)+Chr(&H31)+Chr(73)+Chr(&H49)+Chr(49)+Chr(48)+Chr(&H5f)+Chr(&H5f)+Chr(73)+Chr(48)+Chr(95)+Chr(48)+Chr(&H5f)))
m.timeService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(95)+Chr(73)+Chr(95)+Chr(49)+Chr(95)+Chr(73)+Chr(&H30)+Chr(&H30)+Chr(&H30)+Chr(&H5f)+Chr(&H4f)+Chr(95)+Chr(48)))
m.video.observeFieldScoped((Chr(&H74)+Chr(&H69)+Chr(&H6d)+Chr(&H65)+Chr(100)+Chr(77)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(68)+Chr(97)+Chr(116)+Chr(97)),(Chr(95)+Chr(&H4f)+Chr(&H4f)+Chr(&H5f)+Chr(&H5f)+Chr(&H30)+Chr(&H4f)+Chr(95)+Chr(73)+Chr(&H31)+Chr(79)+Chr(79)+Chr(&H49)))
isNativeHlsParsingEnabled=__1II0I_I1101(m.configurationService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(67)+Chr(&H6f)+Chr(110)+Chr(102)+Chr(&H69)+Chr(&H67))),[(Chr(116)+Chr(119)+Chr(&H65)+Chr(97)+Chr(&H6b)+Chr(&H73)),(Chr(&H6e)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(101)+Chr(&H48)+Chr(108)+Chr(&H73)+Chr(80)+Chr(97)+Chr(114)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H45)+Chr(110)+Chr(&H61)+Chr(98)+Chr(&H6c)+Chr(&H65)+Chr(100))])
useTimedMetadata2=__1II0I_I1101(m.configurationService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(102)+Chr(&H69)+Chr(103))),[(Chr(116)+Chr(119)+Chr(101)+Chr(97)+Chr(&H6b)+Chr(&H73)),(Chr(&H75)+Chr(115)+Chr(101)+Chr(&H54)+Chr(&H69)+Chr(109)+Chr(101)+Chr(&H64)+Chr(77)+Chr(101)+Chr(116)+Chr(97)+Chr(100)+Chr(&H61)+Chr(116)+Chr(97)+Chr(&H32))])
if isNativeHlsParsingEnabled=(1=1)_110IIO_0101I()
if useTimedMetadata2=(1=1)m.video.observeFieldScoped((Chr(&H74)+Chr(&H69)+Chr(109)+Chr(&H65)+Chr(&H64)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(68)+Chr(&H61)+Chr(&H74)+Chr(&H61)+Chr(&H32)),(Chr(95)+Chr(73)+Chr(&H49)+Chr(49)+Chr(95)+Chr(73)+Chr(&H49)+Chr(73)+Chr(73)+Chr(&H31)+Chr(&H31)+Chr(&H4f)+Chr(95)))
end sub
sub _110IIO_0101I()
m.mediaQualityService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(&H49)+Chr(95)+Chr(49)+Chr(&H4f)+Chr(&H4f)+Chr(79)+Chr(&H4f)+Chr(&H30)+Chr(48)+Chr(73)))
m.video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H6d)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(116)),(Chr(&H5f)+Chr(48)+Chr(&H5f)+Chr(&H5f)+Chr(79)+Chr(48)+Chr(&H4f)+Chr(&H49)+Chr(95)+Chr(79)+Chr(&H30)+Chr(&H30)+Chr(&H4f)))
end sub
sub stopService(__I_1_0101IOI=invalid)
m.bitmovinPlayer.unobserveFieldScoped((Chr(&H73)+Chr(&H65)+Chr(101)+Chr(&H6b)))
m.timeService.unobserveFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(&H64)))
m.video.unobserveFieldScoped((Chr(&H74)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(100)+Chr(77)+Chr(101)+Chr(116)+Chr(97)+Chr(68)+Chr(&H61)+Chr(116)+Chr(97)))
m.video.unobserveFieldScoped((Chr(116)+Chr(105)+Chr(109)+Chr(101)+Chr(100)+Chr(77)+Chr(101)+Chr(116)+Chr(&H61)+Chr(68)+Chr(&H61)+Chr(116)+Chr(97)+Chr(50)))
m.video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(109)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(83)+Chr(101)+Chr(103)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(116)))
m.mediaQualityService.unobserveFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H64)))
_O1_0__1_OI11()
end sub
sub _OO__0O_I1OOI(__0_0OI_I100I)
metadata=__0_0OI_I100I.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(&H65)+Chr(109)+Chr(115)+Chr(103))
_11IIO001110O(metadata)
return 
end if
metadata.type=m.BitmovinFields.METADATA
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.METADATA,metadata)
end sub
sub _II1_IIII11O_(__II0OO_001I_)
metadata=__II0OO_001I_.getData()
metadata.type=m.BitmovinFields.METADATA
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.METADATA,metadata)
end sub
sub _1II10__I0_0_()
m.metadataTimeline.Clear()
end sub
sub _11IIO001110O(_01__1O1OO010)
m.metadataTimeline.Push(_0__00I010OO_(_01__1O1OO010))
_I_1_I000_O_0()
end sub
sub _I_1_I000_O_0(__O1IOI01_0_I=invalid)
if __O1IOI01_0_I=invalid
currentTime=m.timeService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(67)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(84)+Chr(105)+Chr(109)+Chr(101)),invalid)
else 
currentTime=__O1IOI01_0_I.getData().data
end if
alreadyFired=0
for i=0 to(m.metadataTimeline.Count()-1)step 1
currentIndex=i-alreadyFired
if m.metadataTimeline[currentIndex].BMP_scheduledTime<=currentTime
metadata=m.metadataTimeline[currentIndex]
metadata.type=m.BitmovinFields.METADATA
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.METADATA,metadata)
m.metadataTimeline.Delete(currentIndex)
alreadyFired++
end if
end for
end sub
function _0__00I010OO_(_0_IOI00O__1O)
_0_IOI00O__1O.AddReplace((Chr(66)+Chr(77)+Chr(80)+Chr(&H5f)+Chr(&H73)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(117)+Chr(&H6c)+Chr(&H65)+Chr(100)+Chr(84)+Chr(105)+Chr(109)+Chr(101)),_O0II10_001I_(_0_IOI00O__1O))
return _0_IOI00O__1O 
end function
function _O0II10_001I_(__11_O_OO11OO)
scheduledTime=__11_O_OO11OO._decodeInfo_pts
if __11_O_OO11OO.Offset<>invalid and __11_O_OO11OO.Offset>0 and __11_O_OO11OO.Timescale<>invalid and __11_O_OO11OO.Timescale>0
scheduledTime+=(__11_O_OO11OO.Offset/__11_O_OO11OO.Timescale)
end if
return scheduledTime 
end function
sub _OII_1OOOO00I(_IIII1O1111OO)
internalEvent=_IIII1O1111OO.getData()
eventData=internalEvent.data
if internalEvent.type=m.BitmovinInternalEventTypes.VIDEO_DOWNLOAD_QUALITY_CHANGED and not _110__I1O00_I(m.video.streamInfo)
if _110__I1O00_I(m.parsedMasterPlaylist)
_O0_100___000(m.video.streamInfo.streamUrl,eventData.downloadedSegment.quality.bitrate)
else 
_0OO_I00_101O(eventData.downloadedSegment.quality.bitrate)
end if
end if
end sub
sub _O0_100___000(_1O1__1O00O0O,__0_00O1IO__O)
m.hlsMasterPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST,_1O1__1O00O0O,{playlistVariantBitrate:__0_00O1IO__O})
m.hlsMasterPlaylistOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(79)+Chr(79)+Chr(&H30)+Chr(49)+Chr(&H5f)+Chr(95)+Chr(&H31)+Chr(&H30)+Chr(95)+Chr(&H4f)+Chr(&H30)+Chr(79)))
m.hlsMasterPlaylistOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(99)+Chr(117)+Chr(&H74)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _OO01__10_O0O(__I_1I_01O1II)
result=__I_1I_01O1II.getData()
m.hlsMasterPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)))
if not result.successful return 
playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedMasterPlaylist=m.hlsManifestParser.callFunc((Chr(&H70)+Chr(97)+Chr(&H72)+Chr(115)+Chr(101)+Chr(77)+Chr(&H61)+Chr(115)+Chr(116)+Chr(101)+Chr(&H72)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H6c)+Chr(105)+Chr(&H73)+Chr(&H74)),result.response.rawPlaylist,result.response.playlistUrl)
_0OO_I00_101O(playlistVariantBitrate)
end sub
function _0O0O_111O_1_(_00_1OI_I0_OO,_0I1__11O0_O1)
if _110__I1O00_I(_00_1OI_I0_OO)or _110__I1O00_I(_0I1__11O0_O1)return invalid 
playlistVariantUrl=invalid
for each streamInf in _00_1OI_I0_OO.ext_x_stream_inf
if not _110__I1O00_I(streamInf.bandwidth) and streamInf.bandwidth.ToInt()=_0I1__11O0_O1
playlistVariantUrl=streamInf.url
exit for
end if
end for
return playlistVariantUrl 
end function
sub _0OO_I00_101O(_O11IIOO_I010)
playlistVariantUrl=_0O0O_111O_1_(m.parsedMasterPlaylist,_O11IIOO_I010)
if _110__I1O00_I(playlistVariantUrl)return 
m.hlsVariantPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST,playlistVariantUrl,{playlistVariantBitrate:_O11IIOO_I010})
m.hlsVariantPlaylistOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(Chr(&H5f)+Chr(95)+Chr(&H49)+Chr(&H31)+Chr(&H4f)+Chr(49)+Chr(95)+Chr(&H4f)+Chr(49)+Chr(&H49)+Chr(95)+Chr(79)+Chr(&H5f)))
m.hlsVariantPlaylistOperation.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub __I1O1_O1I_O_(_O1OO_IOI0_0O)
result=_O1OO_IOI0_0O.getData()
m.hlsVariantPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)))
if not result.successful return 
m.playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedVariantPlaylist=m.hlsManifestParser.callFunc((Chr(112)+Chr(&H61)+Chr(&H72)+Chr(115)+Chr(101)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H6c)+Chr(&H69)+Chr(115)+Chr(&H74)+Chr(&H56)+Chr(&H61)+Chr(&H72)+Chr(105)+Chr(97)+Chr(110)+Chr(&H74)),result.response.rawPlaylist,result.response.playlistVariantUrl)
m.numberOfSegmentsInVariant=m.parsedVariantPlaylist.ext_inf.Count()
_I1I11___I__O(m.parsedVariantPlaylist.scte)
_I_01__1O_101(m.parsedVariantPlaylist.ext_x_daterange)
end sub
sub _I_01__1O_101(_0II0I_111O_0)
if _110__I1O00_I(_0II0I_111O_0)return 
DateTime=CreateObject((Chr(&H72)+Chr(111)+Chr(&H44)+Chr(97)+Chr(116)+Chr(&H65)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(101)))
for each event in _0II0I_111O_0
DateTime.FromISO8601String(event.start_date)
event.BMP_scheduledTime=DateTime.asSeconds()
m.metadataTimeline.push(event)
end for
end sub
sub _I1I11___I__O(_I101O_00O0O0)
if _110__I1O00_I(_I101O_00O0O0)return 
for each parsedEvent in _I101O_00O0O0
if not _0I0_00_II0I0(parsedEvent)m.scteEvents.Push(parsedEvent)
end for
end sub
function _0I0_00_II0I0(_10O_111_O1IO)
isSctePresent=(1=2)
for each presentScteEvent in m.scteEvents
if presentScteEvent.id=_10O_111_O1IO.id and presentScteEvent.segmenturl=_10O_111_O1IO.segmenturl
isSctePresent=(1=1)
end if
end for
return isSctePresent 
end function
sub _0__O0OI_O00O(_1I_OOI10O_1_)
if m.scteEvents.Count()=0 return 
streamingSegment=_1I_OOI10O_1_.getData()
___0OI1O_O0IO(streamingSegment)
if m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(76)+Chr(&H69)+Chr(118)+Chr(101)))
_I1II011O_I11(streamingSegment)
___I1_OOO_O01()
end if
end sub
sub ___0OI1O_O0IO(_IOIIO_OI0110)
for each scteEvent in m.scteEvents
if _0___O0O_0_O0(_IOIIO_OI0110.segUrl,scteEvent.segmentUrl)
currentTime=m.timeService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H43)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(84)+Chr(&H69)+Chr(109)+Chr(&H65)),invalid)
metadata={scteEvent:scteEvent,currentTime:currentTime}
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.METADATA,metadata)
end if
end for
end sub
sub _I1II011O_I11(__III1_101_OO)
streamingSegmentType=m.bitmovinModelObjectMapper.callfunc((Chr(&H72)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(83)+Chr(&H65)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(84)+Chr(&H79)+Chr(112)+Chr(&H65)+Chr(84)+Chr(&H6f)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H48)+Chr(116)+Chr(&H74)+Chr(&H70)+Chr(82)+Chr(&H65)+Chr(113)+Chr(117)+Chr(&H65)+Chr(&H73)+Chr(&H74)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(&H65)),__III1_101_OO.segType)
if streamingSegmentType=m.HttpRequestTypes.MEDIA_VIDEO
m.videoStreamingSegmentCount++
end if
end sub
sub ___I1_OOO_O01()
if not _OI_0IOOI1_1O()return 
m.videoStreamingSegmentCount=0
_0OO_I00_101O(m.playlistVariantBitrate)
end sub
function _OI_0IOOI1_1O()
return m.videoStreamingSegmentCount=m.numberOfSegmentsInVariant 
end function
