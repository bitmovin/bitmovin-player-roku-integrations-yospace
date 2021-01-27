sub init()
m.video=invalid
m.BitmovinFields=_O_10OO110010()
end sub
sub initializeService(___OO1IOII0OO)
m.video=___OO1IOII0OO
end sub
sub startService(_I_OO1OO1__01=invalid)
m.video.observeFieldScoped((Chr(97)+Chr(117)+Chr(100)+Chr(&H69)+Chr(111)+Chr(84)+Chr(114)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(&H5f)+Chr(&H5f)+Chr(48)+Chr(95)+Chr(&H5f)+Chr(&H31)+Chr(49)+Chr(49)+Chr(&H31)+Chr(48)+Chr(79)+Chr(48)+Chr(95)))
end sub
sub stopService(_IOO11__0O01O=invalid)
m.video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(100)+Chr(&H69)+Chr(&H6f)+Chr(&H54)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(107)))
end sub
function availableAudio(___00I_101011=invalid)
return _1001I10OIO_O(m.video.availableAudioTracks,_O_0I_1110_O_) 
end function
function getAudio(__10I0_0O__01=invalid)
available=m.video.availableAudioTracks
if(not _OI0I1OII_00I(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.video.audioTrack=Chr(0)
return _O_0I_1110_O_(m.video.availableAudioTracks[0]) 
end if
track=_0I0_IOIII0I_(m.video.audioTrack)
if ___0O_II_00I_(track)
return invalid 
end if
return _O_0I_1110_O_(track) 
end function
sub setAudio(_1OI1_OI__IIO)
track=_0I0_IOIII0I_(_1OI1_OI__IIO)
if ___0O_II_00I_(track)
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:1001,message:(Chr(&H41)+Chr(&H50)+Chr(73)+Chr(&H5f)+Chr(73)+Chr(78)+Chr(86)+Chr(65)+Chr(&H4c)+Chr(73)+Chr(68)+Chr(&H5f)+Chr(&H41)+Chr(82)+Chr(&H47)+Chr(&H55)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H3a)+Chr(&H20)+Chr(&H41)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(&H76)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(&H20)+Chr(&H61)+Chr(114)+Chr(103)+Chr(&H75)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(32)+Chr(&H68)+Chr(97)+Chr(115)+Chr(32)+Chr(&H62)+Chr(&H65)+Chr(101)+Chr(&H6e)+Chr(&H20)+Chr(112)+Chr(97)+Chr(&H73)+Chr(&H73)+Chr(101)+Chr(100)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(&H74)+Chr(111)+Chr(&H20)+Chr(&H61)+Chr(32)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(32)+Chr(65)+Chr(80)+Chr(&H49)+Chr(&H20)+Chr(99)+Chr(97)+Chr(108)+Chr(108)+Chr(&H2e))}}
else 
m.video.audioTrack=_1OI1_OI__IIO
end if
end sub
sub __0__11110O0_()
audioTrack=getAudio(invalid)
if type(audioTrack)=(Chr(&H72)+Chr(111)+Chr(&H41)+Chr(115)+Chr(&H73)+Chr(111)+Chr(99)+Chr(&H69)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(101)+Chr(&H41)+Chr(114)+Chr(114)+Chr(&H61)+Chr(121))m.top.eventOccurred={eventName:m.BitmovinFields.AUDIO_CHANGED,eventData:audioTrack}
end sub
function _O_0I_1110_O_(_0_I1_0I_OI_0)
return{id:_0_I1_0I_OI_0.track,language:_0_I1_0I_OI_0.language,label:_0_I1_0I_OI_0.name} 
end function
function _0I0_IOIII0I_(___1O1II0_O0_)
count=m.video.availableAudioTracks.count()
availableTracks=m.video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=___1O1II0_O0_
return availableTracks[i] 
end if
end for
return invalid 
end function
