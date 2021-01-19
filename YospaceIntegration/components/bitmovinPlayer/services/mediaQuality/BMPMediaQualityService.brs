sub init()
m.HttpRequestTypes=_O00_0O10II__()
m.BitmovinFieldNames=_0O1I0_1O_O0I()
m.bitmovinEventFactory=_111O_11__11O()
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(77)+Chr(111)+Chr(100)+Chr(101)+Chr(&H6c)+Chr(&H4f)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(&H70)+Chr(112)+Chr(&H65)+Chr(&H72)))
end sub
sub initializeService(_I_0IO1__O0_1)
m.Video=_I_0IO1__O0_1
end sub
sub startService(__O0_OI01I0II=invalid)
m.Video.observeFieldScoped((Chr(100)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(&H64)+Chr(&H53)+Chr(101)+Chr(103)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(116)),(Chr(&H5f)+Chr(&H4f)+Chr(&H31)+Chr(&H31)+Chr(&H49)+Chr(48)+Chr(48)+Chr(&H4f)+Chr(&H30)+Chr(&H4f)+Chr(48)+Chr(73)+Chr(79)))
end sub
sub stopService(_0I000____I11=invalid)
m.Video.unobserveFieldScoped((Chr(&H64)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(&H64)+Chr(101)+Chr(100)+Chr(83)+Chr(101)+Chr(103)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(116)))
m.previousVideoDownloadedSegment=invalid
m.previousAudioDownloadedSegment=invalid
end sub
sub _O11I00O0O0IO(_I0IOIOI_II0I)
downloadedRokuSegment=_I0IOIOI_II0I.getData()
if _I1_I11_1O_0I(downloadedRokuSegment)return 
m.top.eventOccurred=m.BitmovinEventFactory.createDownloadFinishedEvent(downloadedRokuSegment)
_I0IO_1IO01I_(downloadedRokuSegment)
end sub
sub _I0IO_1IO01I_(_11_I1O_0IO0I)
downloadedSegment=m.bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(&H67)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(70)+Chr(&H72)+Chr(111)+Chr(&H6d)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(83)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),_11_I1O_0IO0I)
if _O10_1O0O_0_O(m.previousVideoDownloadedSegment,downloadedSegment)
_OI1OO1_OOI1_(m.previousVideoDownloadedSegment,downloadedSegment)
else if _0OO_OI1O_0O0(m.previousAudioDownloadedSegment,downloadedSegment)
_II0OIII_1_OO(m.previousAudioDownloadedSegment,downloadedSegment)
end if
_01O0I0I01I0I(downloadedSegment)
end sub
function _O10_1O0O_0_O(_O_00IO_1011I,_II1___000_0I)
return _II1___000_0I.downloadType=m.HttpRequestTypes.MEDIA_VIDEO and _0O__O1__1IOI(_II1___000_0I,_O_00IO_1011I) 
end function
function _0OO_OI1O_0O0(_IOO_O_1I__II,_10I1OIO_00_O)
return _10I1OIO_00_O.downloadType=m.HttpRequestTypes.MEDIA_AUDIO and _0O__O1__1IOI(_10I1OIO_00_O,_IOO_O_1I__II) 
end function
function _0O__O1__1IOI(_O0I1I1O__1_0,__II1_I_0011O)
if __II1_I_0011O=invalid return(1=1) 
if _O0I1I1O__1_0.downloadType<>__II1_I_0011O.downloadType return(1=2) 
downloadedSegmentQuality=_O0I1I1O__1_0.quality
previousSegmentQuality=__II1_I_0011O.quality
return downloadedSegmentQuality.bitrate<>previousSegmentQuality.bitrate 
end function
sub _01O0I0I01I0I(___0O011_O1O0)
if ___0O011_O1O0.downloadType=m.HttpRequestTypes.MEDIA_VIDEO m.previousVideoDownloadedSegment=___0O011_O1O0
if ___0O011_O1O0.downloadType=m.HttpRequestTypes.MEDIA_AUDIO m.previousAudioDownloadedSegment=___0O011_O1O0
end sub
sub _OI1OO1_OOI1_(_I_IO_0_0I1O1,_1__IO_OO1I__)
if not _OO010_OO0I__(_I_IO_0_0I1O1,_1__IO_OO1I__,m.HttpRequestTypes.MEDIA_VIDEO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_I_IO_0_0I1O1,_1__IO_OO1I__,m.BitmovinFieldNames.VIDEO_DOWNLOAD_QUALITY_CHANGED)
end sub
sub _II0OIII_1_OO(_0_I_1II0OI1I,__0_IO1O1O010)
if not _OO010_OO0I__(_0_I_1II0OI1I,__0_IO1O1O010,m.HttpRequestTypes.MEDIA_AUDIO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_0_I_1II0OI1I,__0_IO1O1O010,m.BitmovinFieldNames.AUDIO_DOWNLOAD_QUALITY_CHANGED)
end sub
function _OO010_OO0I__(_0OOO_I_I0OI0,_I_1_0011OOOO,_O__IIOIO_01_)
if _I_1_0011OOOO.downloadType<>_O__IIOIO_01_ return(1=2) 
if not _I1_I11_1O_0I(_0OOO_I_I0OI0) and _0OOO_I_I0OI0.downloadType<>_O__IIOIO_01_ return(1=2) 
return(1=1) 
end function
