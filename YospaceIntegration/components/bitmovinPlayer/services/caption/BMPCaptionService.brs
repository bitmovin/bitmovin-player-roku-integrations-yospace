sub init()
m.video=invalid
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(68)+Chr(101)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(&H6f)))
m.BitmovinFields=_I__1I0I_O__0()
end sub
sub initializeService(__O1OI_II1IO_)
m.video=__O1OI_II1IO_
end sub
sub setCaptionMode(__OOI_O0I1_O1)
m.deviceInfo.SetCaptionsMode(__OOI_O0I1_O1)
end sub
function availableSubtitles(__IOOOIO_10I_=invalid)
return _O11011I10010(m.Video.availableSubtitleTracks,_IIII1OIOI0OO) 
end function
function getSubtitle(__0_1_OI__II0=invalid)
trackID=m.mideo.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_O_1IO101___0(trackID)
if _OO_O1_O1O0O_(track)
return invalid 
end if
return _IIII1OIOI0OO(track) 
end if
end function
sub setSubtitle(_10_0I_1I00OO)
currentTime=m.video.position
subtitle=_O_1IO101___0(_10_0I_1I00OO)
if _OO_O1_O1O0O_(subtitle)
warning={code:1001,message:(Chr(65)+Chr(&H50)+Chr(&H49)+Chr(&H5f)+Chr(&H49)+Chr(&H4e)+Chr(86)+Chr(&H41)+Chr(76)+Chr(73)+Chr(68)+Chr(&H5f)+Chr(65)+Chr(&H52)+Chr(&H47)+Chr(&H55)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(84)+Chr(&H3a)+Chr(&H20)+Chr(&H41)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(110)+Chr(118)+Chr(&H61)+Chr(108)+Chr(105)+Chr(100)+Chr(32)+Chr(&H61)+Chr(114)+Chr(103)+Chr(&H75)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(&H74)+Chr(32)+Chr(&H68)+Chr(&H61)+Chr(115)+Chr(32)+Chr(98)+Chr(&H65)+Chr(101)+Chr(&H6e)+Chr(32)+Chr(112)+Chr(&H61)+Chr(&H73)+Chr(&H73)+Chr(&H65)+Chr(&H64)+Chr(32)+Chr(&H69)+Chr(110)+Chr(&H74)+Chr(111)+Chr(&H20)+Chr(&H61)+Chr(32)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(65)+Chr(80)+Chr(73)+Chr(&H20)+Chr(&H63)+Chr(97)+Chr(108)+Chr(108)+Chr(46))}
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:warning}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end sub
sub setSubtitleStyles(_0I0_111O_1_1)
m.video.captionStyle=_0I0_111O_1_1
end sub
function getSubtitleStyles(___0OOI0_O_0O=invalid)
return m.video.captionStyle 
end function
function _IIII1OIOI0OO(_0OII_00_I_0_)
return{id:_0OII_00_I_0_.trackName,language:_0OII_00_I_0_.language,label:_0OII_00_I_0_.description} 
end function
function _O_1IO101___0(_1OOOII_II1OI)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_1OOOII_II1OI
return available[i] 
end if
end for
return invalid 
end function
