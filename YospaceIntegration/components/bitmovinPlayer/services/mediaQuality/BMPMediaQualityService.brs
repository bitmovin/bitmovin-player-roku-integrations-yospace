sub init()
m.HttpRequestTypes=_00I110IO0OOI()
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(77)+Chr(111)+Chr(100)+Chr(101)+Chr(&H6c)+Chr(79)+Chr(98)+Chr(106)+Chr(&H65)+Chr(&H63)+Chr(&H74)+Chr(&H4d)+Chr(&H61)+Chr(&H70)+Chr(112)+Chr(101)+Chr(114)))
m.bitmovinInternalEventFactory=_IOI0_011_1O1()
m.BitmovinInternalEventTypes=___00__0_1OI_()
end sub
sub initializeService(___IO_11I1_I0)
m.Video=___IO_11I1_I0.videoNode
end sub
sub startService(_O1I_O_1O1O00=invalid)
m.Video.observeFieldScoped((Chr(100)+Chr(111)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(101)+Chr(100)+Chr(83)+Chr(101)+Chr(103)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)),(Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(49)+Chr(73)+Chr(&H4f)+Chr(&H49)+Chr(95)+Chr(&H5f)+Chr(&H31)+Chr(&H4f)+Chr(&H30)+Chr(79)))
end sub
sub stopService(_I____O1__O01=invalid)
m.Video.unobserveFieldScoped((Chr(&H64)+Chr(111)+Chr(119)+Chr(110)+Chr(108)+Chr(111)+Chr(&H61)+Chr(&H64)+Chr(&H65)+Chr(100)+Chr(83)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)))
m.previousVideoDownloadedSegment=invalid
m.previousAudioDownloadedSegment=invalid
end sub
sub _OI1IOI__1O0O(_01O_1I_1_OI0)
downloadedRokuSegment=_01O_1I_1_OI0.getData()
if _110__I1O00_I(downloadedRokuSegment)return 
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.DOWNLOAD_FINISHED,downloadedRokuSegment)
_00I00I_10OO0(downloadedRokuSegment)
end sub
sub _00I00I_10OO0(__1II0__III11)
downloadedSegment=m.bitmovinModelObjectMapper.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H53)+Chr(101)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H46)+Chr(114)+Chr(111)+Chr(109)+Chr(82)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)+Chr(83)+Chr(&H65)+Chr(103)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),__1II0__III11)
if _10I1OI1_OOOI(m.previousVideoDownloadedSegment,downloadedSegment)
_I00I00O1__11(m.previousVideoDownloadedSegment,downloadedSegment)
else if _II0I01II01II(m.previousAudioDownloadedSegment,downloadedSegment)
_O_OI10O11OO1(m.previousAudioDownloadedSegment,downloadedSegment)
end if
_O_0OOI1O1_OO(downloadedSegment)
end sub
function _10I1OI1_OOOI(_011I_O1_0_I_,_OIO0100O__I_)
return _OIO0100O__I_.downloadType=m.HttpRequestTypes.MEDIA_VIDEO and _O1___1_II_IO(_OIO0100O__I_,_011I_O1_0_I_) 
end function
function _II0I01II01II(_1O0O00O1__II,_1001I11I0000)
return _1001I11I0000.downloadType=m.HttpRequestTypes.MEDIA_AUDIO and _O1___1_II_IO(_1001I11I0000,_1O0O00O1__II) 
end function
function _O1___1_II_IO(_I_110OIO10IO,_100O00O1__I1)
if _100O00O1__I1=invalid return(1=1) 
if _I_110OIO10IO.downloadType<>_100O00O1__I1.downloadType return(1=2) 
downloadedSegmentQuality=_I_110OIO10IO.quality
previousSegmentQuality=_100O00O1__I1.quality
return downloadedSegmentQuality.bitrate<>previousSegmentQuality.bitrate 
end function
sub _O_0OOI1O1_OO(_IO1IOIII_00O)
if _IO1IOIII_00O.downloadType=m.HttpRequestTypes.MEDIA_VIDEO m.previousVideoDownloadedSegment=_IO1IOIII_00O
if _IO1IOIII_00O.downloadType=m.HttpRequestTypes.MEDIA_AUDIO m.previousAudioDownloadedSegment=_IO1IOIII_00O
end sub
sub _I00I00O1__11(__1IO010I_010,_O_O_01I11OIO)
if not _010I_01O1_O1(__1IO010I_010,_O_O_01I11OIO,m.HttpRequestTypes.MEDIA_VIDEO)return 
eventData={previousVideoDownloadedSegment:__1IO010I_010,downloadedSegment:_O_O_01I11OIO}
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.VIDEO_DOWNLOAD_QUALITY_CHANGED,eventData)
end sub
sub _O_OI10O11OO1(_1001IIO1I0_1,_I00II1_I0_1I)
if not _010I_01O1_O1(_1001IIO1I0_1,_I00II1_I0_1I,m.HttpRequestTypes.MEDIA_AUDIO)return 
eventData={previousAudioDownloadedSegment:_1001IIO1I0_1,downloadedSegment:_I00II1_I0_1I}
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.AUDIO_DOWNLOAD_QUALITY_CHANGED,eventData)
end sub
function _010I_01O1_O1(_IIO11_____OI,___I1O__OO01I,_10011_OO1IO_)
if ___I1O__OO01I.downloadType<>_10011_OO1IO_ return(1=2) 
if not _110__I1O00_I(_IIO11_____OI) and _IIO11_____OI.downloadType<>_10011_OO1IO_ return(1=2) 
return(1=1) 
end function
