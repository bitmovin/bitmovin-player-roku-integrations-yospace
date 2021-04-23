sub init()
m.HttpRequestTypes=_II0I000III__()
m.BitmovinFieldNames=_0OOO_00I01OO()
m.bitmovinEventFactory=_0I__010_III_()
m.bitmovinModelObjectMapper=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H4d)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(&H6c)+Chr(&H4f)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(&H74)+Chr(&H4d)+Chr(97)+Chr(&H70)+Chr(&H70)+Chr(&H65)+Chr(114)))
end sub
sub initializeService(_IIO__IOO0__I)
m.Video=_IIO__IOO0__I
end sub
sub startService(_IOI10_OII100=invalid)
m.Video.observeFieldScoped((Chr(100)+Chr(111)+Chr(119)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64)+Chr(&H65)+Chr(&H64)+Chr(83)+Chr(101)+Chr(103)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(116)),(Chr(&H5f)+Chr(&H30)+Chr(49)+Chr(&H5f)+Chr(&H5f)+Chr(&H49)+Chr(48)+Chr(&H4f)+Chr(&H5f)+Chr(&H5f)+Chr(&H30)+Chr(95)+Chr(48)))
end sub
sub stopService(_I0IIO0OI0I00=invalid)
m.Video.unobserveFieldScoped((Chr(&H64)+Chr(&H6f)+Chr(&H77)+Chr(&H6e)+Chr(108)+Chr(111)+Chr(97)+Chr(100)+Chr(&H65)+Chr(&H64)+Chr(83)+Chr(&H65)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)))
m.previousVideoDownloadedSegment=invalid
m.previousAudioDownloadedSegment=invalid
end sub
sub _01__I0O__0_0(_001__I01_IO1)
downloadedRokuSegment=_001__I01_IO1.getData()
if _1100IO1O_0_I(downloadedRokuSegment)return 
m.top.eventOccurred=m.BitmovinEventFactory.createDownloadFinishedEvent(downloadedRokuSegment)
__11001_11__1(downloadedRokuSegment)
end sub
sub __11001_11__1(_11I1I_O_1_0O)
downloadedSegment=m.bitmovinModelObjectMapper.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(83)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(116)+Chr(&H46)+Chr(&H72)+Chr(111)+Chr(&H6d)+Chr(82)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(&H53)+Chr(101)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)),_11I1I_O_1_0O)
if __I_01OO1O0_O(m.previousVideoDownloadedSegment,downloadedSegment)
__O_IO0111OI1(m.previousVideoDownloadedSegment,downloadedSegment)
else if _OOOOO__OIOIO(m.previousAudioDownloadedSegment,downloadedSegment)
_O__00III_0I0(m.previousAudioDownloadedSegment,downloadedSegment)
end if
_01OIOO_O_1O_(downloadedSegment)
end sub
function __I_01OO1O0_O(_O10101O10III,_IOIO_1111I1O)
return _IOIO_1111I1O.downloadType=m.HttpRequestTypes.MEDIA_VIDEO and _1I1_O1I_011I(_IOIO_1111I1O,_O10101O10III) 
end function
function _OOOOO__OIOIO(_1I1IOIIO1_II,_0I_I11_01I11)
return _0I_I11_01I11.downloadType=m.HttpRequestTypes.MEDIA_AUDIO and _1I1_O1I_011I(_0I_I11_01I11,_1I1IOIIO1_II) 
end function
function _1I1_O1I_011I(_O__0II_11O10,__IO_10OO0O__)
if __IO_10OO0O__=invalid return(1=1) 
if _O__0II_11O10.downloadType<>__IO_10OO0O__.downloadType return(1=2) 
downloadedSegmentQuality=_O__0II_11O10.quality
previousSegmentQuality=__IO_10OO0O__.quality
return downloadedSegmentQuality.bitrate<>previousSegmentQuality.bitrate 
end function
sub _01OIOO_O_1O_(_O10100__O1I0)
if _O10100__O1I0.downloadType=m.HttpRequestTypes.MEDIA_VIDEO m.previousVideoDownloadedSegment=_O10100__O1I0
if _O10100__O1I0.downloadType=m.HttpRequestTypes.MEDIA_AUDIO m.previousAudioDownloadedSegment=_O10100__O1I0
end sub
sub __O_IO0111OI1(_I_O000OI1101,_0_IO_IO0OO1_)
if not _OI01OO_00_10(_I_O000OI1101,_0_IO_IO0OO1_,m.HttpRequestTypes.MEDIA_VIDEO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_I_O000OI1101,_0_IO_IO0OO1_,m.BitmovinFieldNames.VIDEO_DOWNLOAD_QUALITY_CHANGED)
end sub
sub _O__00III_0I0(_I111__1_O0OO,_O10_00I010_I)
if not _OI01OO_00_10(_I111__1_O0OO,_O10_00I010_I,m.HttpRequestTypes.MEDIA_AUDIO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_I111__1_O0OO,_O10_00I010_I,m.BitmovinFieldNames.AUDIO_DOWNLOAD_QUALITY_CHANGED)
end sub
function _OI01OO_00_10(_O__11_O11001,_0_0O_1O__O01,_OOO1I1I0_0__)
if _0_0O_1O__O01.downloadType<>_OOO1I1I0_0__ return(1=2) 
if not _1100IO1O_0_I(_O__11_O11001) and _O__11_O11001.downloadType<>_OOO1I1I0_0__ return(1=2) 
return(1=1) 
end function
