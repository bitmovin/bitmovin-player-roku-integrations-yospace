sub init()
m.metadataTimeline=[]
m.BitmovinFields=_OO0OOO1IOII_()
m.HttpRequestTypes=_1I1__OOO_01O()
m.BitmovinMetadataEventTypes=_1IOO1I11_100()
m.hlsManifestParser=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(72)+Chr(&H6c)+Chr(&H73)+Chr(77)+Chr(&H61)+Chr(&H6e)+Chr(&H69)+Chr(&H66)+Chr(&H65)+Chr(115)+Chr(116)+Chr(80)+Chr(97)+Chr(&H72)+Chr(&H73)+Chr(&H65)+Chr(&H72)))
m.BitmovinAsyncOperationTypes=___IO10I10001()
m.asyncOperationFactory=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(70)+Chr(&H61)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(&H79)))
m.bitmovinModelObjectMapper=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(100)+Chr(&H65)+Chr(108)+Chr(&H4f)+Chr(98)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(&H74)+Chr(&H4d)+Chr(&H61)+Chr(&H70)+Chr(112)+Chr(101)+Chr(&H72)))
m.eventFactory=_III0OO_011_1()
_1O0I0O0_00II()
end sub
sub _1O0I0O0_00II()
m.scteEvents=[]
m.parsedMasterPlaylist=invalid
m.parsedVariantPlaylist=invalid
m.playlistVariantBitrate=invalid
m.videoStreamingSegmentCount=0
end sub
sub initializeService(__OO_11IO__O1,_OOO__1I0_1_O,_000I_OI__1_1,_O0O_01I1OIII)
m.video=__OO_11IO__O1
m.video.timedMetaDataSelectionKeys=[(Chr(&H2a))]
m.bitmovinPlayer=_OOO__1I0_1_O
m.mediaQualityService=_000I_OI__1_1.mediaQualityService
m.playbackService=_000I_OI__1_1.playbackService
m.bitmovinPlayerTask=_O0O_01I1OIII
m.configurationService=_000I_OI__1_1.configurationService
m.timeService=_000I_OI__1_1.timeService
end sub
sub startService(_0OO01I1O__II=invalid)
m.bitmovinPlayer.observeFieldScoped((Chr(115)+Chr(&H65)+Chr(&H65)+Chr(&H6b)),(Chr(95)+Chr(&H30)+Chr(49)+Chr(73)+Chr(&H5f)+Chr(&H5f)+Chr(73)+Chr(95)+Chr(48)+Chr(49)+Chr(73)+Chr(48)+Chr(48)))
m.video.observeFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),(Chr(95)+Chr(79)+Chr(&H5f)+Chr(95)+Chr(79)+Chr(95)+Chr(&H49)+Chr(&H49)+Chr(&H31)+Chr(&H5f)+Chr(&H30)+Chr(&H31)+Chr(95)))
m.video.observeFieldScoped((Chr(&H74)+Chr(&H69)+Chr(109)+Chr(101)+Chr(100)+Chr(77)+Chr(&H65)+Chr(116)+Chr(&H61)+Chr(68)+Chr(97)+Chr(&H74)+Chr(&H61)),(Chr(&H5f)+Chr(49)+Chr(73)+Chr(&H49)+Chr(48)+Chr(48)+Chr(&H4f)+Chr(48)+Chr(79)+Chr(79)+Chr(48)+Chr(&H31)+Chr(73)))
isNativeHlsParsingEnabled=_OI011OO01O10(m.configurationService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(67)+Chr(111)+Chr(&H6e)+Chr(&H66)+Chr(&H69)+Chr(&H67))),[(Chr(116)+Chr(&H77)+Chr(101)+Chr(&H61)+Chr(107)+Chr(115)),(Chr(&H6e)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(118)+Chr(&H65)+Chr(&H48)+Chr(&H6c)+Chr(115)+Chr(&H50)+Chr(&H61)+Chr(114)+Chr(115)+Chr(105)+Chr(110)+Chr(&H67)+Chr(69)+Chr(110)+Chr(&H61)+Chr(98)+Chr(108)+Chr(101)+Chr(100))])
if isNativeHlsParsingEnabled=(1=1)_1_OO_0_1101I()
end sub
sub _1_OO_0_1101I()
m.mediaQualityService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(99)+Chr(99)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H4f)+Chr(73)+Chr(48)+Chr(48)+Chr(95)+Chr(95)+Chr(&H4f)+Chr(&H4f)+Chr(&H49)+Chr(&H31)+Chr(48)+Chr(&H31)))
m.video.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H6d)+Chr(105)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H65)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(116)),(Chr(95)+Chr(&H49)+Chr(49)+Chr(48)+Chr(&H30)+Chr(&H31)+Chr(49)+Chr(73)+Chr(48)+Chr(48)+Chr(48)+Chr(&H31)+Chr(&H5f)))
end sub
sub stopService(_11O0_1O__I1_=invalid)
m.bitmovinPlayer.unobserveFieldScoped((Chr(&H73)+Chr(101)+Chr(101)+Chr(&H6b)))
m.video.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)))
m.video.unobserveFieldScoped((Chr(&H74)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(100)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(97)+Chr(68)+Chr(&H61)+Chr(116)+Chr(97)))
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(114)+Chr(101)+Chr(97)+Chr(109)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(&H74)))
m.mediaQualityService.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H65)+Chr(100)))
_1O0I0O0_00II()
end sub
sub _1II00O0OO01I(__O1I___I0_1I)
metadata=__O1I___I0_1I.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(101)+Chr(109)+Chr(115)+Chr(&H67))
_001___OO10OI(metadata)
return 
end if
m.bitmovinPlayer.metadata=metadata
end sub
sub _01I__I_01I00()
m.metadataTimeline.Clear()
end sub
sub _001___OO10OI(__0010I1I0I__)
m.metadataTimeline.Push(_O10001I0I110(__0010I1I0I__))
_O__O_II1_01_()
end sub
sub _O__O_II1_01_()
alreadyFired=0
for i=0 to(m.metadataTimeline.Count()-1)step 1
currentIndex=i-alreadyFired
if m.metadataTimeline[currentIndex].BMP_scheduledTime<=m.timeService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(67)+Chr(117)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(101)),invalid)
m.bitmovinPlayer.metadata=m.metadataTimeline[currentIndex]
m.metadataTimeline.Delete(currentIndex)
alreadyFired++
end if
end for
end sub
function _O10001I0I110(_0O1__1_1I1_1)
_0O1__1_1I1_1.AddReplace((Chr(66)+Chr(&H4d)+Chr(80)+Chr(95)+Chr(&H73)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(&H75)+Chr(&H6c)+Chr(101)+Chr(100)+Chr(&H54)+Chr(105)+Chr(109)+Chr(&H65)),_0OI0_OOOI__O(_0O1__1_1I1_1))
return _0O1__1_1I1_1 
end function
function _0OI0_OOOI__O(_11OI00_1_O__)
scheduledTime=_11OI00_1_O__._decodeInfo_pts
if _11OI00_1_O__.Offset<>invalid and _11OI00_1_O__.Offset>0 and _11OI00_1_O__.Timescale<>invalid and _11OI00_1_O__.Timescale>0
scheduledTime+=(_11OI00_1_O__.Offset/_11OI00_1_O__.Timescale)
end if
return scheduledTime 
end function
sub _OI00__OOI101(_0I0OOI_0_111)
eventData=_0I0OOI_0_111.getData()
if eventData.type=m.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED and not __OOI0OI11_O0(m.video.streamInfo)
if __OOI0OI11_O0(m.parsedMasterPlaylist)
_IIOIIO_1I1_I(m.video.streamInfo.streamUrl,eventData.targetquality.bitrate)
else 
___1_1IO_I_1I(eventData.targetquality.bitrate)
end if
end if
end sub
sub _IIOIIO_1I1_I(__IOIOIO_O0_I,_O1_10IO0101I)
m.hlsMasterPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST,__IOIOIO_O0_I,{playlistVariantBitrate:_O1_10IO0101I})
m.hlsMasterPlaylistOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(Chr(95)+Chr(&H31)+Chr(&H49)+Chr(49)+Chr(95)+Chr(73)+Chr(&H5f)+Chr(95)+Chr(&H4f)+Chr(73)+Chr(95)+Chr(&H31)+Chr(79)))
m.hlsMasterPlaylistOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(117)+Chr(116)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _1I1_I__OI_1O(_0I0I00_I0I_I)
result=_0I0I00_I0I_I.getData()
m.hlsMasterPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)))
if not result.successful return 
playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedMasterPlaylist=m.hlsManifestParser.callFunc((Chr(112)+Chr(&H61)+Chr(114)+Chr(&H73)+Chr(&H65)+Chr(&H4d)+Chr(&H61)+Chr(&H73)+Chr(&H74)+Chr(101)+Chr(&H72)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H6c)+Chr(&H69)+Chr(&H73)+Chr(116)),result.response.rawPlaylist,result.response.playlistUrl)
___1_1IO_I_1I(playlistVariantBitrate)
end sub
function _I_1__1_O1O11(_1II0O10I0I11,_O11O0_1I1OO1)
if __OOI0OI11_O0(_1II0O10I0I11)or __OOI0OI11_O0(_O11O0_1I1OO1)return invalid 
playlistVariantUrl=invalid
for each streamInf in _1II0O10I0I11.ext_x_stream_inf
if not __OOI0OI11_O0(streamInf.bandwidth) and streamInf.bandwidth.ToInt()=_O11O0_1I1OO1
playlistVariantUrl=streamInf.url
exit for
end if
end for
return playlistVariantUrl 
end function
sub ___1_1IO_I_1I(_0OO1II1OII_0)
playlistVariantUrl=_I_1__1_O1O11(m.parsedMasterPlaylist,_0OO1II1OII_0)
if __OOI0OI11_O0(playlistVariantUrl)return 
m.hlsVariantPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST,playlistVariantUrl,{playlistVariantBitrate:_0OO1II1OII_0})
m.hlsVariantPlaylistOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(Chr(95)+Chr(95)+Chr(49)+Chr(&H5f)+Chr(49)+Chr(&H49)+Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(&H4f)+Chr(&H30)+Chr(&H30)+Chr(&H5f)))
m.hlsVariantPlaylistOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(101)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub __1_1I_OIO00_(_10III0_III11)
result=_10III0_III11.getData()
m.hlsVariantPlaylistOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)))
if not result.successful return 
m.playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedVariantPlaylist=m.hlsManifestParser.callFunc((Chr(&H70)+Chr(&H61)+Chr(&H72)+Chr(115)+Chr(&H65)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(108)+Chr(&H69)+Chr(115)+Chr(116)+Chr(&H56)+Chr(&H61)+Chr(114)+Chr(&H69)+Chr(97)+Chr(110)+Chr(&H74)),result.response.rawPlaylist,result.response.playlistVariantUrl)
m.numberOfSegmentsInVariant=m.parsedVariantPlaylist.ext_inf.Count()
_O_OI1O0OI_I_(m.parsedVariantPlaylist.scte)
end sub
sub _O_OI1O0OI_I_(_0_I1_I0I_I_1)
if __OOI0OI11_O0(_0_I1_I0I_I_1)return 
for each parsedEvent in _0_I1_I0I_I_1
if not _0___I_1__III(parsedEvent)m.scteEvents.Push(parsedEvent)
end for
end sub
function _0___I_1__III(_O_O_IOOI0_O0)
isSctePresent=(1=2)
for each presentScteEvent in m.scteEvents
if presentScteEvent.id=_O_O_IOOI0_O0.id and presentScteEvent.segmenturl=_O_O_IOOI0_O0.segmenturl
isSctePresent=(1=1)
end if
end for
return isSctePresent 
end function
sub _I10011I0001_(_I_I_I_OO0__O)
if m.scteEvents.Count()=0 return 
streamingSegment=_I_I_I_OO0__O.getData()
_O_1110OO0OII(streamingSegment)
if m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(&H4c)+Chr(105)+Chr(118)+Chr(&H65)))
_I0I0OI_10I0_(streamingSegment)
_I0011I11_II1()
end if
end sub
sub _O_1110OO0OII(_1III_I_1I_00)
for each scteEvent in m.scteEvents
if scteEvent.segmentUrl=_1III_I_1I_00.segUrl
currentTime=m.timeService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(67)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(84)+Chr(105)+Chr(&H6d)+Chr(101)),invalid)
m.bitmovinPlayer.metadata=m.eventFactory.createScteMetadataEvent(scteEvent,currentTime,m.BitmovinMetadataEventTypes,m.bitmovinFields)
end if
end for
end sub
sub _I0I0OI_10I0_(_0O0IO1_0111_)
streamingSegmentType=m.bitmovinModelObjectMapper.callfunc((Chr(&H72)+Chr(111)+Chr(107)+Chr(&H75)+Chr(83)+Chr(&H65)+Chr(103)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(84)+Chr(121)+Chr(&H70)+Chr(101)+Chr(&H54)+Chr(&H6f)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H48)+Chr(116)+Chr(116)+Chr(112)+Chr(82)+Chr(&H65)+Chr(&H71)+Chr(117)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(84)+Chr(121)+Chr(&H70)+Chr(101)),_0O0IO1_0111_.segType)
if streamingSegmentType=m.HttpRequestTypes.MEDIA_VIDEO
m.videoStreamingSegmentCount++
end if
end sub
sub _I0011I11_II1()
if not _1OI10O0_11__()return 
m.videoStreamingSegmentCount=0
___1_1IO_I_1I(m.playlistVariantBitrate)
end sub
function _1OI10O0_11__()
return m.videoStreamingSegmentCount=m.numberOfSegmentsInVariant 
end function
