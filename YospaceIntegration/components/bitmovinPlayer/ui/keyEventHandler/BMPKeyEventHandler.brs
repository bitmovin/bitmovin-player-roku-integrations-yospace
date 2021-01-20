sub init()
m.BitmovinPlayerStates=__OII0I0O_O01()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
m.isDestroyed=(1=2)
end sub
sub setup(_0OI0101I_OO0)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_11_1OIIIO1II()
end sub
function setKeyPressValidationCallback(_011OII00_1IO,_I__100OO_O_I)
m.keyPressValidationCallback=_011OII00_1IO
m.keyPressValidationCallbackContext=_I__100OO_O_I
end function
function onKeyEvent(_11I1___OI11I,_1I_I_00I0_00)
if m.isDestroyed return(1=1) 
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and _1I_I_00I0_00
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_11I1___OI11I)=(1=2)
return(1=1) 
end if
end if
if(_11I1___OI11I=(Chr(&H72)+Chr(105)+Chr(103)+Chr(104)+Chr(116))or _11I1___OI11I=(Chr(108)+Chr(&H65)+Chr(102)+Chr(116))or _11I1___OI11I=(Chr(&H66)+Chr(&H61)+Chr(&H73)+Chr(&H74)+Chr(&H66)+Chr(111)+Chr(114)+Chr(119)+Chr(97)+Chr(&H72)+Chr(&H64))or _11I1___OI11I=(Chr(&H72)+Chr(&H65)+Chr(119)+Chr(&H69)+Chr(&H6e)+Chr(&H64))) and _1I_I_00I0_00 and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.FINISHED and _11I1___OI11I=(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)) and _1I_I_00I0_00
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerStates.PAUSED and _11I1___OI11I=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)) and _1I_I_00I0_00
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.READY and _11I1___OI11I=(Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)) and _1I_I_00I0_00
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
sub destroy()
m.isDestroyed=(1=1)
end sub
