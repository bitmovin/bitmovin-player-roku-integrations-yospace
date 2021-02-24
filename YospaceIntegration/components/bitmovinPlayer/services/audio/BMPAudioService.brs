sub init()
m.video=invalid
m.BitmovinFields=_OO0OOO1IOII_()
end sub
sub initializeService(__1__I00I1OI_)
m.video=__1__I00I1OI_
end sub
sub startService(__0I01II1O1_0=invalid)
m.video.observeFieldScoped((Chr(&H61)+Chr(&H75)+Chr(100)+Chr(105)+Chr(&H6f)+Chr(84)+Chr(114)+Chr(97)+Chr(99)+Chr(&H6b)),(Chr(95)+Chr(49)+Chr(&H49)+Chr(&H49)+Chr(&H4f)+Chr(79)+Chr(79)+Chr(&H31)+Chr(&H31)+Chr(&H30)+Chr(95)+Chr(&H4f)+Chr(&H5f)))
end sub
sub stopService(__0_1IOI1O1O_=invalid)
m.video.unobserveFieldScoped((Chr(97)+Chr(&H75)+Chr(100)+Chr(105)+Chr(111)+Chr(&H54)+Chr(114)+Chr(97)+Chr(&H63)+Chr(107)))
end sub
function availableAudio(_O1I0_O1O1OOI=invalid)
return _0OOI01_I011O(m.video.availableAudioTracks,_I01IOOOIIO_0) 
end function
function getAudio(_IO__1_IO__O_=invalid)
available=m.video.availableAudioTracks
if(not _0OI_0O01__O0(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.video.audioTrack=Chr(0)
return _I01IOOOIIO_0(m.video.availableAudioTracks[0]) 
end if
track=_0O11IIO_O_O1(m.video.audioTrack)
if __OOI0OI11_O0(track)
return invalid 
end if
return _I01IOOOIIO_0(track) 
end function
sub setAudio(__I_1O1_1I11O)
track=_0O11IIO_O_O1(__I_1O1_1I11O)
if __OOI0OI11_O0(track)
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:1001,message:(Chr(65)+Chr(&H50)+Chr(&H49)+Chr(95)+Chr(73)+Chr(78)+Chr(86)+Chr(65)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(&H5f)+Chr(65)+Chr(&H52)+Chr(&H47)+Chr(&H55)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H3a)+Chr(&H20)+Chr(65)+Chr(110)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H64)+Chr(32)+Chr(97)+Chr(&H72)+Chr(103)+Chr(&H75)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(32)+Chr(104)+Chr(&H61)+Chr(115)+Chr(&H20)+Chr(&H62)+Chr(101)+Chr(&H65)+Chr(110)+Chr(&H20)+Chr(&H70)+Chr(&H61)+Chr(&H73)+Chr(115)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(116)+Chr(&H6f)+Chr(32)+Chr(97)+Chr(32)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(32)+Chr(&H41)+Chr(80)+Chr(73)+Chr(32)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(&H2e))}}
else 
m.video.audioTrack=__I_1O1_1I11O
end if
end sub
sub _1IIOOO110_O_()
audioTrack=getAudio(invalid)
if type(audioTrack)=(Chr(114)+Chr(111)+Chr(65)+Chr(115)+Chr(115)+Chr(&H6f)+Chr(&H63)+Chr(&H69)+Chr(97)+Chr(116)+Chr(105)+Chr(&H76)+Chr(101)+Chr(&H41)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(121))m.top.eventOccurred={eventName:m.BitmovinFields.AUDIO_CHANGED,eventData:audioTrack}
end sub
function _I01IOOOIIO_0(_O_011I000_00)
return{id:_O_011I000_00.track,language:_O_011I000_00.language,label:_O_011I000_00.name} 
end function
function _0O11IIO_O_O1(_OO0OI00I_I_1)
count=m.video.availableAudioTracks.count()
availableTracks=m.video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_OO0OI00I_I_1
return availableTracks[i] 
end if
end for
return invalid 
end function
