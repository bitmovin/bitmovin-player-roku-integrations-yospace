sub init()
m.metadataTimeline=[]
m.BitmovinFields=_0O1I0_1O_O0I()
m.HttpRequestTypes=_O00_0O10II__()
m.BitmovinMetadataEventTypes=_0I1_O111O10I()
m.hlsManifestParser=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H48)+Chr(&H6c)+Chr(&H73)+Chr(&H4d)+Chr(97)+Chr(&H6e)+Chr(&H69)+Chr(&H66)+Chr(101)+Chr(&H73)+Chr(116)+Chr(&H50)+Chr(97)+Chr(114)+Chr(115)+Chr(101)+Chr(&H72)))
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(&H46)+Chr(97)+Chr(&H63)+Chr(116)+Chr(111)+Chr(&H72)+Chr(&H79)))
m.bitmovinModelObjectMapper=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(&H64)+Chr(101)+Chr(108)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(101)+Chr(&H63)+Chr(116)+Chr(77)+Chr(&H61)+Chr(&H70)+Chr(&H70)+Chr(&H65)+Chr(114)))
m.eventFactory=_111O_11__11O()
_000O0_IO110_()
end sub
sub _000O0_IO110_()
m.scteEvents=[]
m.parsedMasterPlaylist=invalid
m.parsedVariantPlaylist=invalid
m.playlistVariantBitrate=invalid
m.videoStreamingSegmentCount=0
end sub
sub initializeService(_1O1_I_00OOI1,____1_I_O1_I1,_I1_OIIO0OI_O,__1_001I00111)
m.video=_1O1_I_00OOI1
m.video.timedMetaDataSelectionKeys=[(Chr(&H2a))]
m.bitmovinPlayer=____1_I_O1_I1
m.mediaQualityService=_I1_OIIO0OI_O.mediaQualityService
m.playbackService=_I1_OIIO0OI_O.playbackService
m.bitmovinPlayerTask=__1_001I00111
m.configurationService=_I1_OIIO0OI_O.configurationService
end sub
sub startService(__IO0I_O11I1_=invalid)
m.bitmovinPlayer.observeFieldScoped((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(&H6b)),(Chr(95)+Chr(79)+Chr(73)+Chr(48)+Chr(&H49)+Chr(95)+Chr(49)+Chr(95)+Chr(49)+Chr(&H30)+Chr(49)+Chr(79)+Chr(73)))
m.video.observeFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),(Chr(95)+Chr(&H31)+Chr(48)+Chr(49)+Chr(79)+Chr(48)+Chr(79)+Chr(&H4f)+Chr(&H5f)+Chr(73)+Chr(&H30)+Chr(&H4f)+Chr(&H4f)))
m.video.observeFieldScoped((Chr(116)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(100)+Chr(77)+Chr(&H65)+Chr(116)+Chr(97)+Chr(68)+Chr(&H61)+Chr(&H74)+Chr(&H61)),(Chr(&H5f)+Chr(&H4f)+Chr(&H49)+Chr(&H49)+Chr(&H5f)+Chr(&H4f)+Chr(48)+Chr(&H5f)+Chr(48)+Chr(&H49)+Chr(&H30)+Chr(79)+Chr(79)))
isNativeHlsParsingEnabled=__00O_O01OI1O(m.configurationService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(&H66)+Chr(&H69)+Chr(&H67))),[(Chr(&H74)+Chr(&H77)+Chr(101)+Chr(97)+Chr(107)+Chr(&H73)),(Chr(110)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H76)+Chr(&H65)+Chr(&H48)+Chr(&H6c)+Chr(115)+Chr(&H50)+Chr(97)+Chr(&H72)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(69)+Chr(&H6e)+Chr(97)+Chr(98)+Chr(108)+Chr(101)+Chr(100))])
if isNativeHlsParsingEnabled=(1=1)__OIOO__0100O()
end sub
sub __OIOO__0100O()
m.mediaQualityService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(&H49)+Chr(79)+Chr(&H31)+Chr(&H4f)+Chr(48)+Chr(95)+Chr(95)+Chr(49)+Chr(48)+Chr(&H5f)+Chr(&H49)+Chr(79)))
m.video.observeFieldScoped((Chr(115)+Chr(116)+Chr(114)+Chr(101)+Chr(97)+Chr(&H6d)+Chr(105)+Chr(110)+Chr(103)+Chr(83)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),(Chr(95)+Chr(&H30)+Chr(49)+Chr(73)+Chr(&H30)+Chr(&H30)+Chr(79)+Chr(&H49)+Chr(49)+Chr(48)+Chr(79)+Chr(49)+Chr(&H30)))
end sub
sub stopService(_010I01I_1I11=invalid)
m.bitmovinPlayer.unobserveFieldScoped((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(&H6b)))
m.video.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)))
m.video.unobserveFieldScoped((Chr(&H74)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(&H64)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(&H61)+Chr(68)+Chr(&H61)+Chr(&H74)+Chr(97)))
m.video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(114)+Chr(101)+Chr(97)+Chr(&H6d)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(&H53)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)))
m.mediaQualityService.unobserveFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(114)+Chr(&H65)+Chr(&H64)))
_000O0_IO110_()
end sub
sub _OII_O0_0I0OO(_0I_1_O_IIOO0)
metadata=_0I_1_O_IIOO0.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(101)+Chr(109)+Chr(&H73)+Chr(&H67))
__0_I0101IO1I(metadata)
return 
end if
m.bitmovinPlayer.metadata=metadata
end sub
sub _OI0I_1_101OI()
m.metadataTimeline.Clear()
end sub
sub __0_I0101IO1I(__O_0O1O1_10_)
m.metadataTimeline.Push(_OO1O_O0I1OIO(__O_0O1O1_10_))
_101O0OO_I0OO()
end sub
sub _101O0OO_I0OO()
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
function _OO1O_O0I1OIO(_01I101IO1I1O)
_01I101IO1I1O.AddReplace((Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(95)+Chr(115)+Chr(&H63)+Chr(&H68)+Chr(101)+Chr(100)+Chr(&H75)+Chr(&H6c)+Chr(101)+Chr(100)+Chr(84)+Chr(105)+Chr(109)+Chr(101)),__00_0O01IO__(_01I101IO1I1O))
return _01I101IO1I1O 
end function
function __00_0O01IO__(_01O1_O0I_I1O)
scheduledTime=_01O1_O0I_I1O._decodeInfo_pts
if _01O1_O0I_I1O.Offset<>invalid and _01O1_O0I_I1O.Offset>0 and _01O1_O0I_I1O.Timescale<>invalid and _01O1_O0I_I1O.Timescale>0
scheduledTime+=(_01O1_O0I_I1O.Offset/_01O1_O0I_I1O.Timescale)
end if
return scheduledTime 
end function
sub _IO1O0__10_IO(_I_OIO10_I_11)
eventData=_I_OIO10_I_11.getData()
if eventData.type=m.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED and not _I1_I11_1O_0I(m.video.streamInfo)
if _I1_I11_1O_0I(m.parsedMasterPlaylist)
_OO1O_O_11_I_(m.video.streamInfo.streamUrl,eventData.targetquality.bitrate)
else 
_0IIOO_OO0O01(eventData.targetquality.bitrate)
end if
end if
end sub
sub _OO1O_O_11_I_(_0_0_O001I0__,__01I_11OO_O0)
m.hlsMasterPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST,_0_0_O001I0__,{playlistVariantBitrate:__01I_11OO_O0})
m.hlsMasterPlaylistOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(95)+Chr(95)+Chr(49)+Chr(&H5f)+Chr(49)+Chr(&H4f)+Chr(&H30)+Chr(48)+Chr(73)+Chr(73)+Chr(&H31)+Chr(&H5f)+Chr(49)))
m.hlsMasterPlaylistOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub __1_1O00II1_1(_OIO10II__0__)
result=_OIO10II__0__.getData()
m.hlsMasterPlaylistOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)))
if not result.successful return 
playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedMasterPlaylist=m.hlsManifestParser.callFunc((Chr(&H70)+Chr(97)+Chr(114)+Chr(&H73)+Chr(101)+Chr(&H4d)+Chr(97)+Chr(115)+Chr(&H74)+Chr(101)+Chr(114)+Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(108)+Chr(105)+Chr(115)+Chr(&H74)),result.response.rawPlaylist,result.response.playlistUrl)
_0IIOO_OO0O01(playlistVariantBitrate)
end sub
function _I0_I0101O_10(___I_1_11_1__,_0_0I100O_I1_)
if _I1_I11_1O_0I(___I_1_11_1__)or _I1_I11_1O_0I(_0_0I100O_I1_)return invalid 
playlistVariantUrl=invalid
for each streamInf in ___I_1_11_1__.ext_x_stream_inf
if not _I1_I11_1O_0I(streamInf.bandwidth) and streamInf.bandwidth.ToInt()=_0_0I100O_I1_
playlistVariantUrl=streamInf.url
exit for
end if
end for
return playlistVariantUrl 
end function
sub _0IIOO_OO0O01(__0I_10OO1_IO)
playlistVariantUrl=_I0_I0101O_10(m.parsedMasterPlaylist,__0I_10OO1_IO)
if _I1_I11_1O_0I(playlistVariantUrl)return 
m.hlsVariantPlaylistOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(65)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST,playlistVariantUrl,{playlistVariantBitrate:__0I_10OO1_IO})
m.hlsVariantPlaylistOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(&H49)+Chr(&H5f)+Chr(79)+Chr(48)+Chr(&H49)+Chr(48)+Chr(&H49)+Chr(&H31)+Chr(73)+Chr(48)+Chr(79)+Chr(&H49)))
m.hlsVariantPlaylistOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _I_O0I0I1I0OI(_IO1O_1I_I1_1)
result=_IO1O_1I_I1_1.getData()
m.hlsVariantPlaylistOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)))
if not result.successful return 
m.playlistVariantBitrate=result.response.playlistVariantBitrate
m.parsedVariantPlaylist=m.hlsManifestParser.callFunc((Chr(112)+Chr(97)+Chr(114)+Chr(115)+Chr(101)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H6c)+Chr(&H69)+Chr(115)+Chr(&H74)+Chr(86)+Chr(&H61)+Chr(&H72)+Chr(105)+Chr(&H61)+Chr(110)+Chr(116)),result.response.rawPlaylist)
m.numberOfSegmentsInVariant=m.parsedVariantPlaylist.ext_inf.Count()
_IIII0_I0I110(m.parsedVariantPlaylist.scte)
end sub
sub _IIII0_I0I110(_I1O100I1_IO1)
if _I1_I11_1O_0I(_I1O100I1_IO1)return 
for each parsedEvent in _I1O100I1_IO1
if not _I_10O_II_0_O(parsedEvent)m.scteEvents.Push(parsedEvent)
end for
end sub
function _I_10O_II_0_O(_O110I01O010_)
isSctePresent=(1=2)
for each presentScteEvent in m.scteEvents
if presentScteEvent.id=_O110I01O010_.id and presentScteEvent.segmenturl=_O110I01O010_.segmenturl
isSctePresent=(1=1)
end if
end for
return isSctePresent 
end function
sub _01I00OI10O10(_I0O_10OIO0__)
if m.scteEvents.Count()=0 return 
streamingSegment=_I0O_10OIO0__.getData()
_01I_II0IO001(streamingSegment)
if m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(&H4c)+Chr(105)+Chr(&H76)+Chr(101)))
_IOO_1_110O1O(streamingSegment)
___1_0II_I1_O()
end if
end sub
sub _01I_II0IO001(_OO__0I_0O_IO)
for each scteEvent in m.scteEvents
if scteEvent.segmentUrl=_OO__0I_0O_IO.segUrl
m.bitmovinPlayer.metadata=m.eventFactory.createScteMetadataEvent(scteEvent,m.video.position,m.BitmovinMetadataEventTypes,m.bitmovinFields)
end if
end for
end sub
sub _IOO_1_110O1O(_I__O0_0O_IIO)
streamingSegmentType=m.bitmovinModelObjectMapper.callfunc((Chr(114)+Chr(111)+Chr(107)+Chr(117)+Chr(&H53)+Chr(101)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H54)+Chr(121)+Chr(112)+Chr(101)+Chr(84)+Chr(&H6f)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(72)+Chr(&H74)+Chr(&H74)+Chr(&H70)+Chr(&H52)+Chr(101)+Chr(&H71)+Chr(117)+Chr(101)+Chr(&H73)+Chr(116)+Chr(&H54)+Chr(121)+Chr(112)+Chr(101)),_I__O0_0O_IIO.segType)
if streamingSegmentType=m.HttpRequestTypes.MEDIA_VIDEO
m.videoStreamingSegmentCount++
end if
end sub
sub ___1_0II_I1_O()
if not _OOI01_OII0O_()return 
m.videoStreamingSegmentCount=0
_0IIOO_OO0O01(m.playlistVariantBitrate)
end sub
function _OOI01_OII0O_()
return m.videoStreamingSegmentCount=m.numberOfSegmentsInVariant 
end function
