sub init()
m.video=invalid
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(111)))
m.BitmovinFields=_0OOO_00I01OO()
end sub
sub initializeService(_0OI0O_I010O0)
m.video=_0OI0O_I010O0
end sub
sub setCaptionMode(_I010O_1I01_1)
m.deviceInfo.SetCaptionsMode(_I010O_1I01_1)
end sub
function availableSubtitles(_I1IOI000_I0_=invalid)
return _OI10O10011I0(m.Video.availableSubtitleTracks,_I00I_0_0O10I) 
end function
function getSubtitle(_OII1I1II__0I=invalid)
trackID=m.mideo.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_O0I_010_O11_(trackID)
if _1100IO1O_0_I(track)
return invalid 
end if
return _I00I_0_0O10I(track) 
end if
end function
sub setSubtitle(_IO_I1_10II_1)
currentTime=m.video.position
subtitle=_O0I_010_O11_(_IO_I1_10II_1)
if _1100IO1O_0_I(subtitle)
warning={code:1001,message:(Chr(65)+Chr(80)+Chr(&H49)+Chr(&H5f)+Chr(73)+Chr(78)+Chr(86)+Chr(65)+Chr(&H4c)+Chr(&H49)+Chr(68)+Chr(95)+Chr(&H41)+Chr(82)+Chr(71)+Chr(85)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(&H3a)+Chr(32)+Chr(65)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(110)+Chr(118)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(100)+Chr(32)+Chr(&H61)+Chr(&H72)+Chr(&H67)+Chr(117)+Chr(109)+Chr(101)+Chr(110)+Chr(&H74)+Chr(32)+Chr(104)+Chr(97)+Chr(&H73)+Chr(32)+Chr(98)+Chr(101)+Chr(101)+Chr(&H6e)+Chr(32)+Chr(112)+Chr(&H61)+Chr(&H73)+Chr(&H73)+Chr(101)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(116)+Chr(&H6f)+Chr(32)+Chr(97)+Chr(&H20)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(32)+Chr(65)+Chr(80)+Chr(&H49)+Chr(&H20)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(46))}
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:warning}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end sub
sub setSubtitleStyles(___IO00I0OI_O)
m.video.captionStyle=___IO00I0OI_O
end sub
function getSubtitleStyles(_1100IOIIOIO0=invalid)
return m.video.captionStyle 
end function
function _I00I_0_0O10I(_OOO1__IO10O_)
return{id:_OOO1__IO10O_.trackName,language:_OOO1__IO10O_.language,label:_OOO1__IO10O_.description} 
end function
function _O0I_010_O11_(_0_0O_OI_1_I1)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_0_0O_OI_1_I1
return available[i] 
end if
end for
return invalid 
end function
