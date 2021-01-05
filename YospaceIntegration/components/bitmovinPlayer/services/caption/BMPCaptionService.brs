sub init()
m.video=invalid
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(68)+Chr(101)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(111)))
m.BitmovinFields=__OO101I00OOO()
end sub
sub initializeService(_I1I_1I0I0_01)
m.video=_I1I_1I0I0_01
end sub
sub setCaptionMode(_I1III11O0_I0)
m.deviceInfo.SetCaptionsMode(_I1III11O0_I0)
end sub
function availableSubtitles(__11IO_01OOI_=invalid)
return _II_1100O01_O(m.Video.availableSubtitleTracks,_00_O__I00I01) 
end function
function getSubtitle(_10I0III_II1_=invalid)
trackID=m.mideo.subtitleTrack
if trackID=Chr(0)
return Chr(0) 
else 
track=_I_O00_1_0OI0(trackID)
if _IO1IIIOI0_1O(track)
return invalid 
end if
return _00_O__I00I01(track) 
end if
end function
sub setSubtitle(__1_00O1_10OI)
currentTime=m.video.position
subtitle=_I_O00_1_0OI0(__1_00O1_10OI)
if _IO1IIIOI0_1O(subtitle)
warning={code:1001,message:(Chr(&H41)+Chr(&H50)+Chr(73)+Chr(95)+Chr(73)+Chr(&H4e)+Chr(&H56)+Chr(&H41)+Chr(&H4c)+Chr(&H49)+Chr(&H44)+Chr(95)+Chr(&H41)+Chr(&H52)+Chr(71)+Chr(85)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(&H3a)+Chr(&H20)+Chr(65)+Chr(110)+Chr(32)+Chr(&H69)+Chr(&H6e)+Chr(118)+Chr(97)+Chr(108)+Chr(105)+Chr(100)+Chr(&H20)+Chr(&H61)+Chr(&H72)+Chr(103)+Chr(117)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H20)+Chr(&H68)+Chr(97)+Chr(&H73)+Chr(32)+Chr(&H62)+Chr(101)+Chr(101)+Chr(110)+Chr(&H20)+Chr(112)+Chr(&H61)+Chr(115)+Chr(115)+Chr(&H65)+Chr(100)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(&H74)+Chr(&H6f)+Chr(&H20)+Chr(97)+Chr(32)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(114)+Chr(&H20)+Chr(&H41)+Chr(80)+Chr(73)+Chr(32)+Chr(&H63)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(46))}
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:warning}
else 
m.video.SubtitleTrack=subtitle.TrackName
end if
end sub
sub setSubtitleStyles(_110O100O1OO1)
m.video.captionStyle=_110O100O1OO1
end sub
function getSubtitleStyles(_OI_100O1II_O=invalid)
return m.video.captionStyle 
end function
function _00_O__I00I01(__I_OO_0I10OO)
return{id:__I_OO_0I10OO.trackName,language:__I_OO_0I10OO.language,label:__I_OO_0I10OO.description} 
end function
function _I_O00_1_0OI0(_O_OO0O_III__)
available=m.video.availableSubtitleTracks
count=available.count()
for i=0 to count-1
if available[i].trackName=_O_OO0O_III__
return available[i] 
end if
end for
return invalid 
end function
