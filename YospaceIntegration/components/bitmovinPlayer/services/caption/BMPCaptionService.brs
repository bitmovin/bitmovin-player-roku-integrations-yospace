sub init()
m.video=invalid
m.deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(68)+Chr(&H65)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(73)+Chr(110)+Chr(&H66)+Chr(111)))
m.BitmovinFields=_IOO11O01_10I()
m.internalEventFactory=_IOI0_011_1O1()
end sub
sub initializeService(_O00OO010IIO1)
m.video=_O00OO010IIO1.videoNode
m.video.observeFieldScoped((Chr(&H61)+Chr(118)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(97)+Chr(&H62)+Chr(108)+Chr(101)+Chr(&H53)+Chr(&H75)+Chr(&H62)+Chr(116)+Chr(105)+Chr(&H74)+Chr(108)+Chr(101)+Chr(&H54)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(115)),(Chr(&H5f)+Chr(&H30)+Chr(&H30)+Chr(48)+Chr(79)+Chr(73)+Chr(&H4f)+Chr(&H30)+Chr(&H5f)+Chr(73)+Chr(&H31)+Chr(95)+Chr(&H49)))
end sub
sub _000OIO0_I1_I(__1_I_0_O1_00)
subtitleData={data:__1_I_0_O1_00.getData()}
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinFields.SUBTITLE_ADDED,subtitleData)
end sub
sub setCaptionMode(_I1101_OO1OOI)
m.deviceInfo.SetCaptionsMode(_I1101_OO1OOI)
end sub
function availableSubtitles(_O0110I_00OO_=invalid)
return _OI111O01101_(m.Video.availableSubtitleTracks,_0_001IO1_1_I) 
end function
function getSubtitle(_1_I00I1OO1I_=invalid)
trackID=m.video.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_O111IO_IIO_0(trackID)
if _110__I1O00_I(track)
return invalid 
end if
return _0_001IO1_1_I(track) 
end if
end function
sub setSubtitle(_0OO0110__II1)
currentTime=m.video.position
subtitle=_O111IO_IIO_0(_0OO0110__II1)
if _110__I1O00_I(subtitle)
warning={code:1001,message:(Chr(&H41)+Chr(&H50)+Chr(73)+Chr(95)+Chr(&H49)+Chr(&H4e)+Chr(86)+Chr(65)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(95)+Chr(65)+Chr(82)+Chr(71)+Chr(&H55)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H3a)+Chr(32)+Chr(&H41)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(110)+Chr(&H76)+Chr(97)+Chr(108)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(&H61)+Chr(&H72)+Chr(103)+Chr(&H75)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H20)+Chr(104)+Chr(&H61)+Chr(115)+Chr(32)+Chr(98)+Chr(101)+Chr(&H65)+Chr(&H6e)+Chr(32)+Chr(112)+Chr(&H61)+Chr(115)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(32)+Chr(&H69)+Chr(&H6e)+Chr(&H74)+Chr(&H6f)+Chr(32)+Chr(&H61)+Chr(32)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(32)+Chr(&H41)+Chr(80)+Chr(&H49)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(108)+Chr(108)+Chr(&H2e))}
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinFields.WARNING,warning)
else 
m.video.SubtitleTrack=subtitle.TrackName
subtitleData={data:subtitle}
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinFields.SUBTITLE_CHANGED,subtitleData)
end if
end sub
sub setSubtitleStyles(_010O111_O01I)
m.video.captionStyle=_010O111_O01I
end sub
function getSubtitleStyles(__O1I01IO100_=invalid)
return m.video.captionStyle 
end function
function _0_001IO1_1_I(_O_O01O1O1110)
return{id:_O_O01O1O1110.trackName,language:_O_O01O1O1110.language,label:_O_O01O1O1110.description} 
end function
function _O111IO_IIO_0(_OO_OO11I10O_)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_OO_OO11I10O_
return available[i] 
end if
end for
return invalid 
end function
