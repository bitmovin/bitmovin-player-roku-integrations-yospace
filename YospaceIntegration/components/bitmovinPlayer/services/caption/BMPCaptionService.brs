sub init()
m.video=invalid
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(68)+Chr(&H65)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)+Chr(73)+Chr(&H6e)+Chr(102)+Chr(111)))
m.BitmovinFields=_0O1I0_1O_O0I()
end sub
sub initializeService(_OOI0_110OOI_)
m.video=_OOI0_110OOI_
end sub
sub setCaptionMode(_OO1IO0_00011)
m.deviceInfo.SetCaptionsMode(_OO1IO0_00011)
end sub
function availableSubtitles(_II1O0IO_I10O=invalid)
return _01OIIIOII001(m.Video.availableSubtitleTracks,_O_11__IOI0_O) 
end function
function getSubtitle(_011_I0OI10IO=invalid)
trackID=m.mideo.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_0_100OI_1O0_(trackID)
if _I1_I11_1O_0I(track)
return invalid 
end if
return _O_11__IOI0_O(track) 
end if
end function
sub setSubtitle(_I11IIO___I00)
currentTime=m.video.position
subtitle=_0_100OI_1O0_(_I11IIO___I00)
if _I1_I11_1O_0I(subtitle)
warning={code:1001,message:(Chr(&H41)+Chr(&H50)+Chr(&H49)+Chr(&H5f)+Chr(73)+Chr(&H4e)+Chr(&H56)+Chr(65)+Chr(76)+Chr(&H49)+Chr(68)+Chr(95)+Chr(&H41)+Chr(&H52)+Chr(&H47)+Chr(&H55)+Chr(77)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(&H3a)+Chr(32)+Chr(&H41)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(110)+Chr(&H76)+Chr(97)+Chr(108)+Chr(&H69)+Chr(100)+Chr(&H20)+Chr(&H61)+Chr(114)+Chr(&H67)+Chr(117)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(116)+Chr(&H20)+Chr(&H68)+Chr(97)+Chr(&H73)+Chr(32)+Chr(98)+Chr(&H65)+Chr(101)+Chr(110)+Chr(&H20)+Chr(112)+Chr(97)+Chr(115)+Chr(115)+Chr(101)+Chr(&H64)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(116)+Chr(111)+Chr(32)+Chr(&H61)+Chr(&H20)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H20)+Chr(&H41)+Chr(&H50)+Chr(73)+Chr(32)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(&H2e))}
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:warning}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end sub
sub setSubtitleStyles(_0_O__1I_01_1)
m.video.captionStyle=_0_O__1I_01_1
end sub
function getSubtitleStyles(_11__1_I0_010=invalid)
return m.video.captionStyle 
end function
function _O_11__IOI0_O(_O111II0OOI01)
return{id:_O111II0OOI01.trackName,language:_O111II0OOI01.language,label:_O111II0OOI01.description} 
end function
function _0_100OI_1O0_(_O000_1I010I_)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_O000_1I010I_
return available[i] 
end if
end for
return invalid 
end function
