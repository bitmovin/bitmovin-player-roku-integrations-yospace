sub init()
m.video=invalid
m.BitmovinFields=_IOO11O01_10I()
m.internalEventFactory=_IOI0_011_1O1()
end sub
sub initializeService(_11_1_11O__0I)
m.video=_11_1_11O__0I.videoNode
end sub
sub startService(__OI_00IOI1_O=invalid)
m.video.observeFieldScoped((Chr(&H61)+Chr(117)+Chr(&H64)+Chr(&H69)+Chr(111)+Chr(84)+Chr(114)+Chr(&H61)+Chr(99)+Chr(&H6b)),(Chr(95)+Chr(&H49)+Chr(95)+Chr(48)+Chr(48)+Chr(49)+Chr(49)+Chr(&H5f)+Chr(&H5f)+Chr(95)+Chr(95)+Chr(&H5f)+Chr(79)))
end sub
sub stopService(_0OO0__10000I=invalid)
m.video.unobserveFieldScoped((Chr(97)+Chr(117)+Chr(&H64)+Chr(105)+Chr(&H6f)+Chr(&H54)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(&H6b)))
end sub
function availableAudio(_1OOOI_00_OI_=invalid)
return _OI111O01101_(m.video.availableAudioTracks,__010_I0IOI1O) 
end function
function getAudio(_1II_I11OO1OI=invalid)
available=m.video.availableAudioTracks
if(not _O100O10IO11I(available))
return Chr(0) 
else if available.count()=0
return Chr(0) 
else if m.video.audioTrack=Chr(0)
return __010_I0IOI1O(m.video.availableAudioTracks[0]) 
end if
track=_OOIIIII__1O_(m.video.audioTrack)
if _110__I1O00_I(track)
return invalid 
end if
return __010_I0IOI1O(track) 
end function
sub setAudio(_I_OI_1I1I_OO)
track=_OOIIIII__1O_(_I_OI_1I1I_OO)
if _110__I1O00_I(track)
warningEventData={code:1001,message:(Chr(65)+Chr(&H50)+Chr(73)+Chr(&H5f)+Chr(73)+Chr(&H4e)+Chr(&H56)+Chr(65)+Chr(&H4c)+Chr(73)+Chr(68)+Chr(&H5f)+Chr(65)+Chr(82)+Chr(71)+Chr(&H55)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(&H54)+Chr(58)+Chr(32)+Chr(65)+Chr(110)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(118)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(100)+Chr(32)+Chr(97)+Chr(&H72)+Chr(103)+Chr(&H75)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H20)+Chr(&H68)+Chr(&H61)+Chr(115)+Chr(&H20)+Chr(&H62)+Chr(101)+Chr(101)+Chr(&H6e)+Chr(&H20)+Chr(&H70)+Chr(&H61)+Chr(&H73)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(105)+Chr(110)+Chr(116)+Chr(&H6f)+Chr(32)+Chr(97)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(32)+Chr(65)+Chr(&H50)+Chr(&H49)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(108)+Chr(108)+Chr(&H2e))}
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinFields.WARNING,warningEventData)
else 
m.video.audioTrack=_I_OI_1I1I_OO
end if
end sub
sub _I_0011_____O()
audioTrack=getAudio(invalid)
if type(audioTrack)=(Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H73)+Chr(115)+Chr(&H6f)+Chr(&H63)+Chr(105)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H76)+Chr(101)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(121))m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.BitmovinFields.AUDIO_CHANGED,audioTrack)
end sub
function __010_I0IOI1O(_1II_O0OI_011)
return{id:_1II_O0OI_011.track,language:_1II_O0OI_011.language,label:_1II_O0OI_011.name} 
end function
function _OOIIIII__1O_(_101O10_O_II1)
count=m.video.availableAudioTracks.count()
availableTracks=m.video.availableAudioTracks
for i=0 to count-1
if availableTracks[i].track=_101O10_O_II1
return availableTracks[i] 
end if
end for
return invalid 
end function
