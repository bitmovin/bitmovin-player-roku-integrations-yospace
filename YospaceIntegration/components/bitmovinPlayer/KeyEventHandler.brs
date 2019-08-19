sub init()
m.BitmovinPlayerState=_0110O1O0O_11()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
end sub
sub setup(_OO_0I0O101I1)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_01O11___I1I1()
end sub
function setKeyPressValidationCallback(_O0_I0OI0OO_I,_0_OI_1__IOI0)
m.keyPressValidationCallback=_O0_I0OI0OO_I
m.keyPressValidationCallbackContext=_0_OI_1__IOI0
end function
function onKeyEvent(_O_I__I11I_I_,_0I1OI_0__I1O)
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and _0I1OI_0__I1O
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_O_I__I11I_I_)=(1=2)
return(1=1) 
end if
end if
if(_O_I__I11I_I_=(Chr(&H72)+Chr(&H69)+Chr(103)+Chr(&H68)+Chr(116))or _O_I__I11I_I_=(Chr(108)+Chr(&H65)+Chr(102)+Chr(&H74))or _O_I__I11I_I_=(Chr(&H66)+Chr(&H61)+Chr(115)+Chr(&H74)+Chr(&H66)+Chr(&H6f)+Chr(&H72)+Chr(119)+Chr(&H61)+Chr(114)+Chr(&H64))or _O_I__I11I_I_=(Chr(114)+Chr(101)+Chr(119)+Chr(105)+Chr(&H6e)+Chr(&H64))) and _0I1OI_0__I1O and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.FINISHED and _O_I__I11I_I_=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)) and _0I1OI_0__I1O
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerState.PAUSED and _O_I__I11I_I_=(Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)) and _0I1OI_0__I1O
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.READY and _O_I__I11I_I_=(Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)) and _0I1OI_0__I1O
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
