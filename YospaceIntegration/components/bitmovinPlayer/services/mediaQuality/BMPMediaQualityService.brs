sub init()
m.HttpRequestTypes=_O0000O11_O00()
m.BitmovinFieldNames=__OO101I00OOO()
m.BitmovinComponentIds=_00I10OOO01OO()
m.bitmovinEventFactory=_1_OO1IO0I1O_()
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(101)+Chr(108)+Chr(&H4f)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(77)+Chr(97)+Chr(112)+Chr(&H70)+Chr(101)+Chr(114)))
end sub
sub initializeService(_01_OI0OOO_OO)
m.BitmovinPlayer=_01_OI0OOO_OO
m.Video=m.bitmovinPlayer.findNode(m.BitmovinComponentIds.MAIN_VIDEO)
end sub
sub startService(__I_O100O001_=invalid)
m.Video.observeFieldScoped((Chr(&H64)+Chr(111)+Chr(&H77)+Chr(110)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(&H65)+Chr(&H64)+Chr(&H53)+Chr(&H65)+Chr(&H67)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(&H74)),(Chr(95)+Chr(&H4f)+Chr(&H31)+Chr(&H5f)+Chr(79)+Chr(79)+Chr(73)+Chr(73)+Chr(49)+Chr(79)+Chr(48)+Chr(73)+Chr(79)))
end sub
sub stopService(__O__0OO11IOO=invalid)
m.Video.unobserveFieldScoped((Chr(100)+Chr(111)+Chr(&H77)+Chr(110)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(101)+Chr(&H64)+Chr(&H53)+Chr(&H65)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)))
m.previousVideoDownloadedSegment=invalid
m.previousAudioDownloadedSegment=invalid
end sub
sub _O1_OOII1O0IO(__00_O_1I__0I)
downloadedRokuSegment=__00_O_1I__0I.getData()
if _IO1IIIOI0_1O(downloadedRokuSegment)return 
m.BitmovinPlayer.downloadFinished=m.BitmovinEventFactory.createDownloadFinishedEvent(downloadedRokuSegment)
_OO1O1OOOOOO0(downloadedRokuSegment)
end sub
sub _OO1O1OOOOOO0(_1O_II_O1II01)
downloadedSegment=m.bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H46)+Chr(&H72)+Chr(111)+Chr(&H6d)+Chr(82)+Chr(111)+Chr(107)+Chr(117)+Chr(83)+Chr(101)+Chr(103)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(116)),_1O_II_O1II01)
if _1O1O0O__10II(m.previousVideoDownloadedSegment,downloadedSegment)
_01IOI0IO0111(m.previousVideoDownloadedSegment,downloadedSegment)
else if _11_00OO_IO00(m.previousAudioDownloadedSegment,downloadedSegment)
_II1_IOOIOO_0(m.previousAudioDownloadedSegment,downloadedSegment)
end if
__1IOOO_0_0O_(downloadedSegment)
end sub
function _1O1O0O__10II(_1O00O_01I1_0,_0OO1OO1OO100)
return _0OO1OO1OO100.downloadType=m.HttpRequestTypes.MEDIA_VIDEO and _IO__0_OO__0_(_0OO1OO1OO100,_1O00O_01I1_0) 
end function
function _11_00OO_IO00(_1I1I1OI_I00I,_1I1_0I10OO_I)
return _1I1_0I10OO_I.downloadType=m.HttpRequestTypes.MEDIA_AUDIO and _IO__0_OO__0_(_1I1_0I10OO_I,_1I1I1OI_I00I) 
end function
function _IO__0_OO__0_(_III01_1000_0,_0O1OO1O10O_0)
if _0O1OO1O10O_0=invalid return(1=1) 
if _III01_1000_0.downloadType<>_0O1OO1O10O_0.downloadType return(1=2) 
downloadedSegmentQuality=_III01_1000_0.quality
previousSegmentQuality=_0O1OO1O10O_0.quality
return downloadedSegmentQuality.bitrate<>previousSegmentQuality.bitrate 
end function
sub __1IOOO_0_0O_(_1IIO__1I0__I)
if _1IIO__1I0__I.downloadType=m.HttpRequestTypes.MEDIA_VIDEO m.previousVideoDownloadedSegment=_1IIO__1I0__I
if _1IIO__1I0__I.downloadType=m.HttpRequestTypes.MEDIA_AUDIO m.previousAudioDownloadedSegment=_1IIO__1I0__I
end sub
sub _01IOI0IO0111(_I_100_OO0_11,_II_10_OO_IO_)
if not _0I01I0II0_O1(_I_100_OO0_11,_II_10_OO_IO_,m.HttpRequestTypes.MEDIA_VIDEO)return 
event=m.bitmovinEventFactory.createMediaQualityChangeEvent(_I_100_OO0_11,_II_10_OO_IO_,m.BitmovinFieldNames.VIDEO_DOWNLOAD_QUALITY_CHANGED)
m.BitmovinPlayer.videoDownloadQualityChanged=event
end sub
sub _II1_IOOIOO_0(_I_I01IOO1_0I,_0I0_O__1O11O)
if not _0I01I0II0_O1(_I_I01IOO1_0I,_0I0_O__1O11O,m.HttpRequestTypes.MEDIA_AUDIO)return 
event=m.bitmovinEventFactory.createMediaQualityChangeEvent(_I_I01IOO1_0I,_0I0_O__1O11O,m.BitmovinFieldNames.AUDIO_DOWNLOAD_QUALITY_CHANGED)
m.BitmovinPlayer.audioDownloadQualityChanged=event
end sub
function _0I01I0II0_O1(_10100000_III,_1I000_IOII__,_O_O11O00I0OO)
if _1I000_IOII__.downloadType<>_O_O11O00I0OO return(1=2) 
if not _IO1IIIOI0_1O(_10100000_III) and _10100000_III.downloadType<>_O_O11O00I0OO return(1=2) 
return(1=1) 
end function
