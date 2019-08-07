sub init()
m.BitmovinPlayerState=_0_10O0_I1_1I()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
end sub
sub setup(_I10O00OI0O10)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=__01OIIII_1__()
end sub
function setKeyPressValidationCallback(_O1101O0111__,_I1O_OO___OO0)
m.keyPressValidationCallback=_O1101O0111__
m.keyPressValidationCallbackContext=_I1O_OO___OO0
end function
function onKeyEvent(_I_0_OOO_IOO1,_0O1I0II1IO0O)
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and _0O1I0II1IO0O
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_I_0_OOO_IOO1)=(1=2)
return(1=1) 
end if
end if
if(_I_0_OOO_IOO1=(Chr(&H72)+Chr(105)+Chr(&H67)+Chr(&H68)+Chr(116))or _I_0_OOO_IOO1=(Chr(&H6c)+Chr(&H65)+Chr(102)+Chr(&H74))or _I_0_OOO_IOO1=(Chr(102)+Chr(&H61)+Chr(115)+Chr(116)+Chr(102)+Chr(111)+Chr(114)+Chr(&H77)+Chr(97)+Chr(114)+Chr(100))or _I_0_OOO_IOO1=(Chr(&H72)+Chr(101)+Chr(&H77)+Chr(&H69)+Chr(&H6e)+Chr(100))) and _0O1I0II1IO0O and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.FINISHED and _I_0_OOO_IOO1=(Chr(&H70)+Chr(108)+Chr(97)+Chr(121)) and _0O1I0II1IO0O
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerState.PAUSED and _I_0_OOO_IOO1=(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)) and _0O1I0II1IO0O
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.READY and _I_0_OOO_IOO1=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)) and _0O1I0II1IO0O
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
