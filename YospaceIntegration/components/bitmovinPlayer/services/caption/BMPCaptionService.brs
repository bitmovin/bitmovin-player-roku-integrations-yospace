sub init()
m.video=invalid
m.deviceInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(68)+Chr(&H65)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(&H6f)))
m.BitmovinFields=_OO0OOO1IOII_()
end sub
sub initializeService(__0O0I0II_OOO)
m.video=__0O0I0II_OOO
end sub
sub setCaptionMode(_0_I00OIIO_1I)
m.deviceInfo.SetCaptionsMode(_0_I00OIIO_1I)
end sub
function availableSubtitles(_0_0_O0O01_II=invalid)
return _0OOI01_I011O(m.Video.availableSubtitleTracks,_100I_OI1I_II) 
end function
function getSubtitle(_I0_IIO0IO100=invalid)
trackID=m.mideo.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_I0O0I111_O1I(trackID)
if __OOI0OI11_O0(track)
return invalid 
end if
return _100I_OI1I_II(track) 
end if
end function
sub setSubtitle(_I00I0I_0O1_O)
currentTime=m.video.position
subtitle=_I0O0I111_O1I(_I00I0I_0O1_O)
if __OOI0OI11_O0(subtitle)
warning={code:1001,message:(Chr(65)+Chr(&H50)+Chr(&H49)+Chr(95)+Chr(73)+Chr(&H4e)+Chr(86)+Chr(&H41)+Chr(&H4c)+Chr(&H49)+Chr(68)+Chr(95)+Chr(65)+Chr(&H52)+Chr(71)+Chr(85)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(&H3a)+Chr(&H20)+Chr(&H41)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(110)+Chr(&H76)+Chr(&H61)+Chr(108)+Chr(105)+Chr(100)+Chr(32)+Chr(97)+Chr(&H72)+Chr(103)+Chr(&H75)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(&H74)+Chr(32)+Chr(104)+Chr(97)+Chr(&H73)+Chr(&H20)+Chr(98)+Chr(&H65)+Chr(101)+Chr(110)+Chr(&H20)+Chr(&H70)+Chr(97)+Chr(115)+Chr(&H73)+Chr(&H65)+Chr(&H64)+Chr(32)+Chr(&H69)+Chr(&H6e)+Chr(116)+Chr(111)+Chr(&H20)+Chr(&H61)+Chr(&H20)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72)+Chr(32)+Chr(65)+Chr(80)+Chr(&H49)+Chr(32)+Chr(&H63)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(46))}
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:warning}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end sub
sub setSubtitleStyles(_II1100OOI___)
m.video.captionStyle=_II1100OOI___
end sub
function getSubtitleStyles(_0_0O1_I_OI_I=invalid)
return m.video.captionStyle 
end function
function _100I_OI1I_II(_I_II1I1I1O_1)
return{id:_I_II1I1I1O_1.trackName,language:_I_II1I1I1O_1.language,label:_I_II1I1I1O_1.description} 
end function
function _I0O0I111_O1I(_0O01_OO0OI__)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_0O01_OO0OI__
return available[i] 
end if
end for
return invalid 
end function
