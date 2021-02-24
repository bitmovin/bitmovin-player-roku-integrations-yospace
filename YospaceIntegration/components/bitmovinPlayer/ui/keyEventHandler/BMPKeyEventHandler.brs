sub init()
m.BitmovinPlayerStates=_0_1_OI101_0I()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
m.isDestroyed=(1=2)
end sub
sub setup(_10___11__01O)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_IO1OO_O1_OI0()
end sub
function setKeyPressValidationCallback(_0O111O1IOI11,__1_O_0O_IO_1)
m.keyPressValidationCallback=_0O111O1IOI11
m.keyPressValidationCallbackContext=__1_O_0O_IO_1
end function
function onKeyEvent(_O101I00I10O0,__O1I0O0IOI10)
if m.isDestroyed return(1=1) 
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and __O1I0O0IOI10
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_O101I00I10O0)=(1=2)
return(1=1) 
end if
end if
if(_O101I00I10O0=(Chr(114)+Chr(105)+Chr(&H67)+Chr(&H68)+Chr(116))or _O101I00I10O0=(Chr(108)+Chr(&H65)+Chr(&H66)+Chr(116))or _O101I00I10O0=(Chr(102)+Chr(97)+Chr(115)+Chr(116)+Chr(&H66)+Chr(111)+Chr(&H72)+Chr(119)+Chr(97)+Chr(&H72)+Chr(100))or _O101I00I10O0=(Chr(114)+Chr(101)+Chr(&H77)+Chr(&H69)+Chr(&H6e)+Chr(100))) and __O1I0O0IOI10 and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.FINISHED and _O101I00I10O0=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)) and __O1I0O0IOI10
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerStates.PAUSED and _O101I00I10O0=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)) and __O1I0O0IOI10
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.READY and _O101I00I10O0=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)) and __O1I0O0IOI10
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
sub destroy()
m.isDestroyed=(1=1)
end sub
