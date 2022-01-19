sub init()
m.BitmovinPlayerStates=__O1_I_O1I_0_()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
m.isDestroyed=(1=2)
end sub
sub setup(_O00I_I00IO1O)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_IO__1__O1IO_()
end sub
function setKeyPressValidationCallback(_1_OO_IO__10I,__100IO_IIIOO)
m.keyPressValidationCallback=_1_OO_IO__10I
m.keyPressValidationCallbackContext=__100IO_IIIOO
end function
function onKeyEvent(_O11IOOO__IOO,_0IO1IO0IO0OO)
if m.isDestroyed return(1=1) 
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and _0IO1IO0IO0OO
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_O11IOOO__IOO)=(1=2)
return(1=1) 
end if
end if
if(_O11IOOO__IOO=(Chr(&H72)+Chr(&H69)+Chr(&H67)+Chr(104)+Chr(116))or _O11IOOO__IOO=(Chr(108)+Chr(101)+Chr(102)+Chr(116))or _O11IOOO__IOO=(Chr(102)+Chr(&H61)+Chr(115)+Chr(&H74)+Chr(&H66)+Chr(111)+Chr(114)+Chr(&H77)+Chr(97)+Chr(114)+Chr(&H64))or _O11IOOO__IOO=(Chr(&H72)+Chr(101)+Chr(&H77)+Chr(&H69)+Chr(110)+Chr(&H64))) and _0IO1IO0IO0OO and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.FINISHED and _O11IOOO__IOO=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121)) and _0IO1IO0IO0OO
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerStates.PAUSED and _O11IOOO__IOO=(Chr(112)+Chr(108)+Chr(97)+Chr(121)) and _0IO1IO0IO0OO
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.READY and _O11IOOO__IOO=(Chr(&H70)+Chr(108)+Chr(97)+Chr(121)) and _0IO1IO0IO0OO
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
sub destroy()
m.isDestroyed=(1=1)
end sub
