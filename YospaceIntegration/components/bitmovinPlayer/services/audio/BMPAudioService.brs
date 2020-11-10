sub init()
m.video=invalid
m.BitmovinFields=__OO101I00OOO()
end sub
sub initializeService(_IO0OO_101_I1)
m.video=_IO0OO_101_I1
end sub
sub startService(_O110_1O110I1=invalid)
m.video.observeFieldScoped((Chr(&H61)+Chr(117)+Chr(100)+Chr(&H69)+Chr(&H6f)+Chr(&H54)+Chr(114)+Chr(97)+Chr(&H63)+Chr(&H6b)),(Chr(&H5f)+Chr(73)+Chr(79)+Chr(&H31)+Chr(79)+Chr(95)+Chr(&H30)+Chr(48)+Chr(73)+Chr(&H5f)+Chr(73)+Chr(95)+Chr(49)))
end sub
sub stopService(_I01_O1I_I1O0=invalid)
m.video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(&H64)+Chr(105)+Chr(111)+Chr(&H54)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(107)))
end sub
function availableAudio(_1_0O______0I=invalid)
return _II_1100O01_O(m.video.availableAudioTracks,_O01I_I_0_OOI) 
end function
function getAudio(_I11I_O1IO00_=invalid)
available=m.video.availableAudioTracks
if(not _1110O1I10_II(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.video.audioTrack=Chr(0)
return _O01I_I_0_OOI(m.video.availableAudioTracks[0]) 
end if
track=_1_0OO_I00_1_(m.video.audioTrack)
if _IO1IIIOI0_1O(track)
return invalid 
end if
return _O01I_I_0_OOI(track) 
end function
sub setAudio(__10IO1OO1_O0)
track=_1_0OO_I00_1_(__10IO1OO1_O0)
if _IO1IIIOI0_1O(track)
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:1001,message:(Chr(&H41)+Chr(&H50)+Chr(&H49)+Chr(95)+Chr(&H49)+Chr(&H4e)+Chr(&H56)+Chr(65)+Chr(76)+Chr(73)+Chr(68)+Chr(&H5f)+Chr(&H41)+Chr(&H52)+Chr(&H47)+Chr(&H55)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H3a)+Chr(32)+Chr(&H41)+Chr(110)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(118)+Chr(97)+Chr(108)+Chr(105)+Chr(100)+Chr(32)+Chr(&H61)+Chr(114)+Chr(103)+Chr(117)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(32)+Chr(&H68)+Chr(&H61)+Chr(115)+Chr(32)+Chr(98)+Chr(&H65)+Chr(101)+Chr(&H6e)+Chr(&H20)+Chr(&H70)+Chr(97)+Chr(115)+Chr(115)+Chr(101)+Chr(100)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(116)+Chr(&H6f)+Chr(&H20)+Chr(97)+Chr(&H20)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H20)+Chr(65)+Chr(&H50)+Chr(&H49)+Chr(&H20)+Chr(99)+Chr(&H61)+Chr(108)+Chr(108)+Chr(46))}}
else 
m.video.audioTrack=__10IO1OO1_O0
end if
end sub
sub _IO1O_00I_I_1()
audioTrack=getAudio(invalid)
if type(audioTrack)=(Chr(114)+Chr(111)+Chr(&H41)+Chr(115)+Chr(&H73)+Chr(&H6f)+Chr(99)+Chr(105)+Chr(97)+Chr(116)+Chr(&H69)+Chr(118)+Chr(&H65)+Chr(&H41)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(&H79))m.top.eventOccurred={eventName:m.BitmovinFields.AUDIO_CHANGED,eventData:audioTrack}
end sub
function _O01I_I_0_OOI(_O1O_0_0O0O_1)
return{id:_O1O_0_0O0O_1.track,language:_O1O_0_0O0O_1.language,label:_O1O_0_0O0O_1.name} 
end function
function _1_0OO_I00_1_(__II0I0I1OI1_)
count=m.video.availableAudioTracks.count()
availableTracks=m.video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=__II0I0I1OI1_
return availableTracks[i] 
end if
end for
return invalid 
end function
