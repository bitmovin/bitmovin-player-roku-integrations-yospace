sub init()
m.video=invalid
m.BitmovinFields=_0O1I0_1O_O0I()
end sub
sub initializeService(_I000O1_I__IO)
m.video=_I000O1_I__IO
end sub
sub startService(__OOO1III0OO1=invalid)
m.video.observeFieldScoped((Chr(&H61)+Chr(117)+Chr(&H64)+Chr(&H69)+Chr(111)+Chr(&H54)+Chr(114)+Chr(97)+Chr(&H63)+Chr(&H6b)),(Chr(95)+Chr(49)+Chr(&H30)+Chr(&H31)+Chr(&H49)+Chr(73)+Chr(95)+Chr(73)+Chr(48)+Chr(49)+Chr(&H5f)+Chr(&H5f)+Chr(&H49)))
end sub
sub stopService(__IO11O1_1OI_=invalid)
m.video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(&H64)+Chr(105)+Chr(111)+Chr(&H54)+Chr(&H72)+Chr(&H61)+Chr(&H63)+Chr(&H6b)))
end sub
function availableAudio(_1110_01_II10=invalid)
return _01OIIIOII001(m.video.availableAudioTracks,__I0I__I0O0OO) 
end function
function getAudio(_IIO10OIIO0_1=invalid)
available=m.video.availableAudioTracks
if(not _1_0000O1IIO_(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.video.audioTrack=Chr(0)
return __I0I__I0O0OO(m.video.availableAudioTracks[0]) 
end if
track=____0I_O_1OI1(m.video.audioTrack)
if _I1_I11_1O_0I(track)
return invalid 
end if
return __I0I__I0O0OO(track) 
end function
sub setAudio(_IOI0OO00I11I)
track=____0I_O_1OI1(_IOI0OO00I11I)
if _I1_I11_1O_0I(track)
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:1001,message:(Chr(65)+Chr(&H50)+Chr(&H49)+Chr(&H5f)+Chr(&H49)+Chr(78)+Chr(&H56)+Chr(&H41)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(&H5f)+Chr(&H41)+Chr(&H52)+Chr(71)+Chr(85)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(58)+Chr(&H20)+Chr(&H41)+Chr(&H6e)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(&H76)+Chr(&H61)+Chr(108)+Chr(105)+Chr(100)+Chr(32)+Chr(&H61)+Chr(114)+Chr(103)+Chr(&H75)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(32)+Chr(&H68)+Chr(97)+Chr(115)+Chr(32)+Chr(98)+Chr(&H65)+Chr(&H65)+Chr(&H6e)+Chr(32)+Chr(&H70)+Chr(&H61)+Chr(115)+Chr(115)+Chr(&H65)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(116)+Chr(111)+Chr(32)+Chr(&H61)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(32)+Chr(&H41)+Chr(&H50)+Chr(&H49)+Chr(32)+Chr(99)+Chr(&H61)+Chr(108)+Chr(108)+Chr(46))}}
else 
m.video.audioTrack=_IOI0OO00I11I
end if
end sub
sub _101II_I01__I()
audioTrack=getAudio(invalid)
if type(audioTrack)=(Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(&H73)+Chr(115)+Chr(111)+Chr(&H63)+Chr(&H69)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H76)+Chr(&H65)+Chr(&H41)+Chr(&H72)+Chr(114)+Chr(97)+Chr(121))m.top.eventOccurred={eventName:m.BitmovinFields.AUDIO_CHANGED,eventData:audioTrack}
end sub
function __I0I__I0O0OO(_IO11_OO1O000)
return{id:_IO11_OO1O000.track,language:_IO11_OO1O000.language,label:_IO11_OO1O000.name} 
end function
function ____0I_O_1OI1(_100IO100_IOO)
count=m.video.availableAudioTracks.count()
availableTracks=m.video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_100IO100_IOO
return availableTracks[i] 
end if
end for
return invalid 
end function
