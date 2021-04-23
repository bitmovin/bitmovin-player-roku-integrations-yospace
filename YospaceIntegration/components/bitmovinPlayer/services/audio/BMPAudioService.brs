sub init()
m.video=invalid
m.BitmovinFields=_0OOO_00I01OO()
end sub
sub initializeService(_0__I0II0OI_O)
m.video=_0__I0II0OI_O
end sub
sub startService(_1IO0_IO1I_11=invalid)
m.video.observeFieldScoped((Chr(97)+Chr(117)+Chr(100)+Chr(&H69)+Chr(&H6f)+Chr(84)+Chr(114)+Chr(&H61)+Chr(99)+Chr(107)),(Chr(95)+Chr(73)+Chr(95)+Chr(&H31)+Chr(&H30)+Chr(49)+Chr(79)+Chr(73)+Chr(79)+Chr(48)+Chr(79)+Chr(&H49)+Chr(&H49)))
end sub
sub stopService(_1OI0I_O_O_0I=invalid)
m.video.unobserveFieldScoped((Chr(97)+Chr(&H75)+Chr(100)+Chr(105)+Chr(111)+Chr(84)+Chr(&H72)+Chr(97)+Chr(99)+Chr(107)))
end sub
function availableAudio(__0I_1I_0OO11=invalid)
return _OI10O10011I0(m.video.availableAudioTracks,__0I1I_00IOI_) 
end function
function getAudio(_O110OOOIII0O=invalid)
available=m.video.availableAudioTracks
if(not _1OI___I_I_O_(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.video.audioTrack=Chr(0)
return __0I1I_00IOI_(m.video.availableAudioTracks[0]) 
end if
track=_10O_100O_O_I(m.video.audioTrack)
if _1100IO1O_0_I(track)
return invalid 
end if
return __0I1I_00IOI_(track) 
end function
sub setAudio(_00I0_1O1OOI_)
track=_10O_100O_O_I(_00I0_1O1OOI_)
if _1100IO1O_0_I(track)
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:1001,message:(Chr(65)+Chr(&H50)+Chr(&H49)+Chr(&H5f)+Chr(&H49)+Chr(&H4e)+Chr(86)+Chr(65)+Chr(&H4c)+Chr(73)+Chr(&H44)+Chr(95)+Chr(65)+Chr(82)+Chr(&H47)+Chr(85)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(58)+Chr(&H20)+Chr(65)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(&H20)+Chr(&H61)+Chr(114)+Chr(103)+Chr(117)+Chr(109)+Chr(101)+Chr(110)+Chr(116)+Chr(32)+Chr(104)+Chr(97)+Chr(&H73)+Chr(&H20)+Chr(&H62)+Chr(&H65)+Chr(&H65)+Chr(&H6e)+Chr(32)+Chr(&H70)+Chr(&H61)+Chr(115)+Chr(115)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(&H74)+Chr(&H6f)+Chr(32)+Chr(&H61)+Chr(&H20)+Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(&H41)+Chr(&H50)+Chr(73)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(108)+Chr(&H6c)+Chr(46))}}
else 
m.video.audioTrack=_00I0_1O1OOI_
end if
end sub
sub _I_101OIO0OII()
audioTrack=getAudio(invalid)
if type(audioTrack)=(Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(&H73)+Chr(115)+Chr(111)+Chr(&H63)+Chr(&H69)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(114)+Chr(114)+Chr(&H61)+Chr(&H79))m.top.eventOccurred={eventName:m.BitmovinFields.AUDIO_CHANGED,eventData:audioTrack}
end sub
function __0I1I_00IOI_(_II0I010IIO_O)
return{id:_II0I010IIO_O.track,language:_II0I010IIO_O.language,label:_II0I010IIO_O.name} 
end function
function _10O_100O_O_I(_0I_III_OO00I)
count=m.video.availableAudioTracks.count()
availableTracks=m.video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_0I_III_OO00I
return availableTracks[i] 
end if
end for
return invalid 
end function
