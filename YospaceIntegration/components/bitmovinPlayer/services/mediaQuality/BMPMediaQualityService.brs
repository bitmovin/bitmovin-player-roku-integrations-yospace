sub init()
m.HttpRequestTypes=_1I1__OOO_01O()
m.BitmovinFieldNames=_OO0OOO1IOII_()
m.bitmovinEventFactory=_III0OO_011_1()
m.bitmovinModelObjectMapper=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(77)+Chr(111)+Chr(100)+Chr(101)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(&H70)+Chr(&H70)+Chr(&H65)+Chr(&H72)))
end sub
sub initializeService(_01IO_1_0_1O0)
m.Video=_01IO_1_0_1O0
end sub
sub startService(_O1_OI0I11OII=invalid)
m.Video.observeFieldScoped((Chr(100)+Chr(111)+Chr(&H77)+Chr(110)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(&H65)+Chr(100)+Chr(83)+Chr(&H65)+Chr(103)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(116)),(Chr(&H5f)+Chr(&H30)+Chr(48)+Chr(95)+Chr(&H49)+Chr(&H5f)+Chr(48)+Chr(95)+Chr(48)+Chr(&H30)+Chr(95)+Chr(73)+Chr(73)))
end sub
sub stopService(__I1_I1IO_001=invalid)
m.Video.unobserveFieldScoped((Chr(100)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(108)+Chr(111)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(&H64)+Chr(&H53)+Chr(101)+Chr(103)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)))
m.previousVideoDownloadedSegment=invalid
m.previousAudioDownloadedSegment=invalid
end sub
sub _00_I_0_00_II(_O1I101O11I_O)
downloadedRokuSegment=_O1I101O11I_O.getData()
if __OOI0OI11_O0(downloadedRokuSegment)return 
m.top.eventOccurred=m.BitmovinEventFactory.createDownloadFinishedEvent(downloadedRokuSegment)
_01I__0I00I0I(downloadedRokuSegment)
end sub
sub _01I__0I00I0I(_0_OOI01_OO0O)
downloadedSegment=m.bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(83)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H46)+Chr(&H72)+Chr(&H6f)+Chr(&H6d)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(83)+Chr(&H65)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(116)),_0_OOI01_OO0O)
if __I0II1IO_O10(m.previousVideoDownloadedSegment,downloadedSegment)
_I0000I_OOOOI(m.previousVideoDownloadedSegment,downloadedSegment)
else if _10100_OI11OO(m.previousAudioDownloadedSegment,downloadedSegment)
___1O1OO_01__(m.previousAudioDownloadedSegment,downloadedSegment)
end if
_O0IOO0I_11I0(downloadedSegment)
end sub
function __I0II1IO_O10(_11II10I_O0O0,_IIIO0OI_I_1O)
return _IIIO0OI_I_1O.downloadType=m.HttpRequestTypes.MEDIA_VIDEO and _00I_IOI1II_1(_IIIO0OI_I_1O,_11II10I_O0O0) 
end function
function _10100_OI11OO(__1OO10O0OI0_,_1_OI11_1O000)
return _1_OI11_1O000.downloadType=m.HttpRequestTypes.MEDIA_AUDIO and _00I_IOI1II_1(_1_OI11_1O000,__1OO10O0OI0_) 
end function
function _00I_IOI1II_1(_O101I1_011II,_I__00I01IOII)
if _I__00I01IOII=invalid return(1=1) 
if _O101I1_011II.downloadType<>_I__00I01IOII.downloadType return(1=2) 
downloadedSegmentQuality=_O101I1_011II.quality
previousSegmentQuality=_I__00I01IOII.quality
return downloadedSegmentQuality.bitrate<>previousSegmentQuality.bitrate 
end function
sub _O0IOO0I_11I0(__II_O_0IO00_)
if __II_O_0IO00_.downloadType=m.HttpRequestTypes.MEDIA_VIDEO m.previousVideoDownloadedSegment=__II_O_0IO00_
if __II_O_0IO00_.downloadType=m.HttpRequestTypes.MEDIA_AUDIO m.previousAudioDownloadedSegment=__II_O_0IO00_
end sub
sub _I0000I_OOOOI(_0OII0_I_IO1I,_O1_1O1I0__1I)
if not _I0IIIIO_1_01(_0OII0_I_IO1I,_O1_1O1I0__1I,m.HttpRequestTypes.MEDIA_VIDEO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_0OII0_I_IO1I,_O1_1O1I0__1I,m.BitmovinFieldNames.VIDEO_DOWNLOAD_QUALITY_CHANGED)
end sub
sub ___1O1OO_01__(_0O0_I01OI11O,_0_I0I_II0O00)
if not _I0IIIIO_1_01(_0O0_I01OI11O,_0_I0I_II0O00,m.HttpRequestTypes.MEDIA_AUDIO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_0O0_I01OI11O,_0_I0I_II0O00,m.BitmovinFieldNames.AUDIO_DOWNLOAD_QUALITY_CHANGED)
end sub
function _I0IIIIO_1_01(_IO1IOI101OI1,_II0O0O10100_,_1___O0II1IIO)
if _II0O0O10100_.downloadType<>_1___O0II1IIO return(1=2) 
if not __OOI0OI11_O0(_IO1IOI101OI1) and _IO1IOI101OI1.downloadType<>_1___O0II1IIO return(1=2) 
return(1=1) 
end function
