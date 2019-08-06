sub init()
m.BitmovinPlayerState=_OO1_I01I0O_O()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
end sub
sub setup(_II00100_OOI1)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=__I0O0I00_I01()
end sub
function setKeyPressValidationCallback(__0I0O10II1_I,_0O__01I10I1I)
m.keyPressValidationCallback=__0I0O10II1_I
m.keyPressValidationCallbackContext=_0O__01I10I1I
end function
function onKeyEvent(_O1OII0O1II_O,_0IIOOI_O0I1_)
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and _0IIOOI_O0I1_
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_O1OII0O1II_O)=(1=2)
return(1=1) 
end if
end if
if(_O1OII0O1II_O=(Chr(114)+Chr(&H69)+Chr(&H67)+Chr(&H68)+Chr(&H74))or _O1OII0O1II_O=(Chr(108)+Chr(101)+Chr(&H66)+Chr(116))or _O1OII0O1II_O=(Chr(102)+Chr(&H61)+Chr(&H73)+Chr(116)+Chr(&H66)+Chr(111)+Chr(&H72)+Chr(&H77)+Chr(&H61)+Chr(&H72)+Chr(100))or _O1OII0O1II_O=(Chr(&H72)+Chr(&H65)+Chr(&H77)+Chr(&H69)+Chr(110)+Chr(&H64))) and _0IIOOI_O0I1_ and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.FINISHED and _O1OII0O1II_O=(Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79)) and _0IIOOI_O0I1_
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerState.PAUSED and _O1OII0O1II_O=(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)) and _0IIOOI_O0I1_
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.READY and _O1OII0O1II_O=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)) and _0IIOOI_O0I1_
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
