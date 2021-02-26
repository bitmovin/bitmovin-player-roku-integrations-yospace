sub init()
m.video=invalid
m.BitmovinFields=_I__1I0I_O__0()
end sub
sub initializeService(_I0O010_1_1_0)
m.video=_I0O010_1_1_0
end sub
sub startService(__IOOI1OO01O0=invalid)
m.video.observeFieldScoped((Chr(&H61)+Chr(&H75)+Chr(100)+Chr(&H69)+Chr(&H6f)+Chr(84)+Chr(&H72)+Chr(&H61)+Chr(&H63)+Chr(&H6b)),(Chr(95)+Chr(&H4f)+Chr(73)+Chr(79)+Chr(79)+Chr(&H31)+Chr(&H30)+Chr(&H5f)+Chr(49)+Chr(49)+Chr(79)+Chr(48)+Chr(49)))
end sub
sub stopService(_0O1O110O0_1I=invalid)
m.video.unobserveFieldScoped((Chr(&H61)+Chr(&H75)+Chr(100)+Chr(105)+Chr(111)+Chr(&H54)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(&H6b)))
end sub
function availableAudio(__1I1_I00O__O=invalid)
return _O11011I10010(m.video.availableAudioTracks,_OI0I10010_11) 
end function
function getAudio(__0110_1_1I_I=invalid)
available=m.video.availableAudioTracks
if(not _0O1I_O1I_II0(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.video.audioTrack=Chr(0)
return _OI0I10010_11(m.video.availableAudioTracks[0]) 
end if
track=_O1_O101II0OO(m.video.audioTrack)
if _OO_O1_O1O0O_(track)
return invalid 
end if
return _OI0I10010_11(track) 
end function
sub setAudio(_III010O0O00I)
track=_O1_O101II0OO(_III010O0O00I)
if _OO_O1_O1O0O_(track)
m.top.eventOccurred={eventName:m.BitmovinFields.WARNING,eventData:{code:1001,message:(Chr(&H41)+Chr(80)+Chr(&H49)+Chr(&H5f)+Chr(&H49)+Chr(78)+Chr(86)+Chr(65)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(&H5f)+Chr(65)+Chr(82)+Chr(71)+Chr(85)+Chr(77)+Chr(69)+Chr(78)+Chr(&H54)+Chr(&H3a)+Chr(32)+Chr(65)+Chr(110)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(&H76)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(&H20)+Chr(97)+Chr(&H72)+Chr(103)+Chr(117)+Chr(&H6d)+Chr(&H65)+Chr(110)+Chr(116)+Chr(32)+Chr(&H68)+Chr(&H61)+Chr(115)+Chr(32)+Chr(&H62)+Chr(101)+Chr(101)+Chr(&H6e)+Chr(&H20)+Chr(&H70)+Chr(&H61)+Chr(115)+Chr(&H73)+Chr(101)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(116)+Chr(111)+Chr(32)+Chr(97)+Chr(&H20)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(&H20)+Chr(65)+Chr(&H50)+Chr(73)+Chr(32)+Chr(99)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(46))}}
else 
m.video.audioTrack=_III010O0O00I
end if
end sub
sub _OIOO10_11O01()
audioTrack=getAudio(invalid)
if type(audioTrack)=(Chr(&H72)+Chr(111)+Chr(&H41)+Chr(115)+Chr(115)+Chr(&H6f)+Chr(99)+Chr(&H69)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(101)+Chr(&H41)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(121))m.top.eventOccurred={eventName:m.BitmovinFields.AUDIO_CHANGED,eventData:audioTrack}
end sub
function _OI0I10010_11(_OIO0_0_0O_0O)
return{id:_OIO0_0_0O_0O.track,language:_OIO0_0_0O_0O.language,label:_OIO0_0_0O_0O.name} 
end function
function _O1_O101II0OO(_0_01OO0IIIO_)
count=m.video.availableAudioTracks.count()
availableTracks=m.video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_0_01OO0IIIO_
return availableTracks[i] 
end if
end for
return invalid 
end function
