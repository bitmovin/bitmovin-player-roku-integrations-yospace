sub init()
m.HttpRequestTypes=_OI1OI100I_1I()
m.BitmovinFieldNames=_I__1I0I_O__0()
m.bitmovinEventFactory=_I1I_O1I0I100()
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(&H64)+Chr(101)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(112)+Chr(&H70)+Chr(101)+Chr(114)))
end sub
sub initializeService(_1I0_110_10II)
m.Video=_1I0_110_10II
end sub
sub startService(____00O110_I_=invalid)
m.Video.observeFieldScoped((Chr(&H64)+Chr(111)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(&H65)+Chr(100)+Chr(&H53)+Chr(101)+Chr(103)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(116)),(Chr(&H5f)+Chr(95)+Chr(48)+Chr(49)+Chr(48)+Chr(48)+Chr(95)+Chr(95)+Chr(&H49)+Chr(49)+Chr(95)+Chr(49)+Chr(73)))
end sub
sub stopService(_IO_II_I1I1_O=invalid)
m.Video.unobserveFieldScoped((Chr(&H64)+Chr(&H6f)+Chr(&H77)+Chr(&H6e)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(&H65)+Chr(100)+Chr(83)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(&H74)))
m.previousVideoDownloadedSegment=invalid
m.previousAudioDownloadedSegment=invalid
end sub
sub __0100__I1_1I(___1I_1_____0)
downloadedRokuSegment=___1I_1_____0.getData()
if _OO_O1_O1O0O_(downloadedRokuSegment)return 
m.top.eventOccurred=m.BitmovinEventFactory.createDownloadFinishedEvent(downloadedRokuSegment)
_O0_0I1I01_00(downloadedRokuSegment)
end sub
sub _O0_0I1I01_00(_IO01O0_1OOO0)
downloadedSegment=m.bitmovinModelObjectMapper.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(83)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H46)+Chr(&H72)+Chr(&H6f)+Chr(109)+Chr(&H52)+Chr(111)+Chr(107)+Chr(&H75)+Chr(&H53)+Chr(&H65)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(116)),_IO01O0_1OOO0)
if _I_I_01_O01I_(m.previousVideoDownloadedSegment,downloadedSegment)
_1IO1100I1O_0(m.previousVideoDownloadedSegment,downloadedSegment)
else if _1II_O1II1I00(m.previousAudioDownloadedSegment,downloadedSegment)
_O_II10O1_I1O(m.previousAudioDownloadedSegment,downloadedSegment)
end if
_1OII0_O00000(downloadedSegment)
end sub
function _I_I_01_O01I_(_11011_1__001,_0_1I1_O___O_)
return _0_1I1_O___O_.downloadType=m.HttpRequestTypes.MEDIA_VIDEO and _1IO11001I_1O(_0_1I1_O___O_,_11011_1__001) 
end function
function _1II_O1II1I00(_0O000I__III1,__I0010I0I_0I)
return __I0010I0I_0I.downloadType=m.HttpRequestTypes.MEDIA_AUDIO and _1IO11001I_1O(__I0010I0I_0I,_0O000I__III1) 
end function
function _1IO11001I_1O(_10II0I01I_0_,_0I11OI1I11I0)
if _0I11OI1I11I0=invalid return(1=1) 
if _10II0I01I_0_.downloadType<>_0I11OI1I11I0.downloadType return(1=2) 
downloadedSegmentQuality=_10II0I01I_0_.quality
previousSegmentQuality=_0I11OI1I11I0.quality
return downloadedSegmentQuality.bitrate<>previousSegmentQuality.bitrate 
end function
sub _1OII0_O00000(__0__III_I_OO)
if __0__III_I_OO.downloadType=m.HttpRequestTypes.MEDIA_VIDEO m.previousVideoDownloadedSegment=__0__III_I_OO
if __0__III_I_OO.downloadType=m.HttpRequestTypes.MEDIA_AUDIO m.previousAudioDownloadedSegment=__0__III_I_OO
end sub
sub _1IO1100I1O_0(_00OOOO1_I010,_OOI0O00I1O00)
if not _O_IIIO0_101I(_00OOOO1_I010,_OOI0O00I1O00,m.HttpRequestTypes.MEDIA_VIDEO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_00OOOO1_I010,_OOI0O00I1O00,m.BitmovinFieldNames.VIDEO_DOWNLOAD_QUALITY_CHANGED)
end sub
sub _O_II10O1_I1O(_0OI0_I_11_O0,__10I_O_00_0O)
if not _O_IIIO0_101I(_0OI0_I_11_O0,__10I_O_00_0O,m.HttpRequestTypes.MEDIA_AUDIO)return 
m.top.eventOccurred=m.bitmovinEventFactory.createMediaQualityChangeEvent(_0OI0_I_11_O0,__10I_O_00_0O,m.BitmovinFieldNames.AUDIO_DOWNLOAD_QUALITY_CHANGED)
end sub
function _O_IIIO0_101I(__I01O1O111O_,_1010IOI1_I1I,_I_1_1OOO0I_0)
if _1010IOI1_I1I.downloadType<>_I_1_1OOO0I_0 return(1=2) 
if not _OO_O1_O1O0O_(__I01O1O111O_) and __I01O1O111O_.downloadType<>_I_1_1OOO0I_0 return(1=2) 
return(1=1) 
end function
