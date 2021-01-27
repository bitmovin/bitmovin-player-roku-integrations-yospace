sub init()
m.HttpRequestTypes=___OIO_III0O0()
m.BitmovinFieldNames=_O_10OO110010()
m.bitmovinEventFactory=_0_1_1IO_0_IO()
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(101)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(97)+Chr(112)+Chr(112)+Chr(&H65)+Chr(114)))
end sub
sub initializeService(_I0__O_1OI__I)
m.Video=_I0__O_1OI__I
end sub
sub startService(_0_I1O1_0OO1I=invalid)
m.Video.observeFieldScoped((Chr(&H64)+Chr(111)+Chr(&H77)+Chr(&H6e)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(100)+Chr(&H53)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(116)),(Chr(95)+Chr(79)+Chr(&H5f)+Chr(48)+Chr(95)+Chr(79)+Chr(&H4f)+Chr(73)+Chr(&H31)+Chr(49)+Chr(48)+Chr(79)+Chr(&H5f)))
end sub
sub stopService(__I_1I1OOI1O0=invalid)
m.Video.unobserveFieldScoped((Chr(100)+Chr(&H6f)+Chr(&H77)+Chr(110)+Chr(&H6c)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(101)+Chr(100)+Chr(83)+Chr(101)+Chr(103)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(116)))
m.previousVideoDownloadedSegment=invalid
m.previousAudioDownloadedSegment=invalid
end sub
sub _O_0_OOI110O_(_1II__I1I_I11)
downloadedRokuSegment=_1II__I1I_I11.getData()
if ___0O_II_00I_(downloadedRokuSegment)return 
m.top.eventOccurred=m.BitmovinEventFactory.createDownloadFinishedEvent(downloadedRokuSegment)
_I0010I0IO011(downloadedRokuSegment)
end sub
sub _I0010I0IO011(_1OI101I0_O_I)
downloadedSegment=m.bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(83)+Chr(&H65)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H46)+Chr(&H72)+Chr(111)+Chr(&H6d)+Chr(82)+Chr(111)+Chr(107)+Chr(117)+Chr(&H53)+Chr(&H65)+Chr(&H67)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(116)),_1OI101I0_O_I)
if _I_000_1_OO0I(m.previousVideoDownloadedSegment,downloadedSegment)
_0_O0_OOI10O0(m.previousVideoDownloadedSegment,downloadedSegment)
else if _I0_0_11O0100(m.previousAudioDownloadedSegment,downloadedSegment)
_OI00O_0II0IO(m.previousAudioDownloadedSegment,downloadedSegment)
end if
_O00I00IOOI00(downloadedSegment)
end sub
function _I_000_1_OO0I(_IO_11I00IOO0,_11IIOO__000I)
return _11IIOO__000I.downloadType=m.HttpRequestTypes.MEDIA_VIDEO and _00O1OO0O0_O1(_11IIOO__000I,_IO_11I00IOO0) 
end function
function _I0_0_11O0100(_I0110__O1_I0,_O___1I1OOO_I)
return _O___1I1OOO_I.downloadType=m.HttpRequestTypes.MEDIA_AUDIO and _00O1OO0O0_O1(_O___1I1OOO_I,_I0110__O1_I0) 
end function
function _00O1OO0O0_O1(__OO_1_00I_O1,_0I0_I__1_0_O)
if _0I0_I__1_0_O=invalid return(1=1) 
if __OO_1_00I_O1.downloadType<>_0I0_I__1_0_O.downloadType return(1=2) 
downloadedSegmentQuality=__OO_1_00I_O1.quality
previousSegmentQuality=_0I0_I__1_0_O.quality
return downloadedSegmentQuality.bitrate<>previousSegmentQuality.bitrate 
end function
sub _O00I00IOOI00(_I1O_1I0O100O)
if _I1O_1I0O100O.downloadType=m.HttpRequestTypes.MEDIA_VIDEO m.previousVideoDownloadedSegment=_I1O_1I0O100O
if _I1O_1I0O100O.downloadType=m.HttpRequestTypes.MEDIA_AUDIO m.previousAudioDownloadedSegment=_I1O_1I0O100O
end sub
sub _0_O0_OOI10O0(_O1O1_II0OO0I,_O0_11I0_1I1I)
if not _0O0_O1IO_O0I(_O1O1_II0OO0I,_O0_11I0_1I1I,m.HttpRequestTypes.MEDIA_VIDEO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_O1O1_II0OO0I,_O0_11I0_1I1I,m.BitmovinFieldNames.VIDEO_DOWNLOAD_QUALITY_CHANGED)
end sub
sub _OI00O_0II0IO(_1I0010_00III,_O_1_O00I__OI)
if not _0O0_O1IO_O0I(_1I0010_00III,_O_1_O00I__OI,m.HttpRequestTypes.MEDIA_AUDIO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_1I0010_00III,_O_1_O00I__OI,m.BitmovinFieldNames.AUDIO_DOWNLOAD_QUALITY_CHANGED)
end sub
function _0O0_O1IO_O0I(_I1011101O0_0,_O10O0_0O_O0O,_OIOII0_0I0I0)
if _O10O0_0O_O0O.downloadType<>_OIOII0_0I0I0 return(1=2) 
if not ___0O_II_00I_(_I1011101O0_0) and _I1011101O0_0.downloadType<>_OIOII0_0I0I0 return(1=2) 
return(1=1) 
end function
