sub init()
m.BitmovinPlayerStates=_I1O_I1IO0010()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
m.isDestroyed=(1=2)
end sub
sub setup(_0_OO0OOI1I__)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_O1O0O_O0O__I()
end sub
function setKeyPressValidationCallback(_1__1_0I_O_1_,_01I_I00_O_1O)
m.keyPressValidationCallback=_1__1_0I_O_1_
m.keyPressValidationCallbackContext=_01I_I00_O_1O
end function
function onKeyEvent(_IO1II1OIIO0I,__100O01IIO00)
if m.isDestroyed return(1=1) 
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and __100O01IIO00
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_IO1II1OIIO0I)=(1=2)
return(1=1) 
end if
end if
if(_IO1II1OIIO0I=(Chr(&H72)+Chr(&H69)+Chr(&H67)+Chr(104)+Chr(&H74))or _IO1II1OIIO0I=(Chr(108)+Chr(101)+Chr(&H66)+Chr(&H74))or _IO1II1OIIO0I=(Chr(102)+Chr(&H61)+Chr(115)+Chr(&H74)+Chr(&H66)+Chr(&H6f)+Chr(&H72)+Chr(&H77)+Chr(&H61)+Chr(114)+Chr(100))or _IO1II1OIIO0I=(Chr(&H72)+Chr(101)+Chr(119)+Chr(105)+Chr(110)+Chr(100))) and __100O01IIO00 and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.FINISHED and _IO1II1OIIO0I=(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)) and __100O01IIO00
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerStates.PAUSED and _IO1II1OIIO0I=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)) and __100O01IIO00
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.READY and _IO1II1OIIO0I=(Chr(112)+Chr(108)+Chr(&H61)+Chr(121)) and __100O01IIO00
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
sub destroy()
m.isDestroyed=(1=1)
end sub
