sub init()
m.video=invalid
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(68)+Chr(101)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)+Chr(73)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.BitmovinFields=_O_10OO110010()
end sub
sub initializeService(_OIO1IO_1_0II)
m.video=_OIO1IO_1_0II
end sub
sub setCaptionMode(_0_0I_IOI_I10)
m.deviceInfo.SetCaptionsMode(_0_0I_IOI_I10)
end sub
function availableSubtitles(_O_O_I01_OIIO=invalid)
return _1001I10OIO_O(m.Video.availableSubtitleTracks,_OI0III_O10IO) 
end function
function getSubtitle(__IO11I_I1O_0=invalid)
trackID=m.mideo.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_OO11IO1OI11O(trackID)
if ___0O_II_00I_(track)
return invalid 
end if
return _OI0III_O10IO(track) 
end if
end function
sub setSubtitle(_10O0_0O_O_0O)
currentTime=m.video.position
subtitle=_OO11IO1OI11O(_10O0_0O_O_0O)
if ___0O_II_00I_(subtitle)
warning={code:1001,message:(Chr(&H41)+Chr(&H50)+Chr(73)+Chr(&H5f)+Chr(&H49)+Chr(78)+Chr(86)+Chr(&H41)+Chr(&H4c)+Chr(&H49)+Chr(68)+Chr(95)+Chr(&H41)+Chr(82)+Chr(71)+Chr(85)+Chr(77)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(&H3a)+Chr(32)+Chr(65)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(110)+Chr(118)+Chr(97)+Chr(108)+Chr(&H69)+Chr(100)+Chr(&H20)+Chr(97)+Chr(&H72)+Chr(&H67)+Chr(117)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H20)+Chr(&H68)+Chr(97)+Chr(&H73)+Chr(&H20)+Chr(&H62)+Chr(101)+Chr(&H65)+Chr(110)+Chr(32)+Chr(&H70)+Chr(&H61)+Chr(&H73)+Chr(115)+Chr(&H65)+Chr(&H64)+Chr(32)+Chr(&H69)+Chr(&H6e)+Chr(&H74)+Chr(111)+Chr(32)+Chr(&H61)+Chr(&H20)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(&H41)+Chr(80)+Chr(73)+Chr(&H20)+Chr(99)+Chr(97)+Chr(&H6c)+Chr(&H6c)+Chr(&H2e))}
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:warning}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end sub
sub setSubtitleStyles(_I10II0O1II0_)
m.video.captionStyle=_I10II0O1II0_
end sub
function getSubtitleStyles(_1O0OI_1I_0_1=invalid)
return m.video.captionStyle 
end function
function _OI0III_O10IO(_0_O1OIO1_O1_)
return{id:_0_O1OIO1_O1_.trackName,language:_0_O1OIO1_O1_.language,label:_0_O1OIO1_O1_.description} 
end function
function _OO11IO1OI11O(__01_IO0__111)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=__01_IO0__111
return available[i] 
end if
end for
return invalid 
end function
