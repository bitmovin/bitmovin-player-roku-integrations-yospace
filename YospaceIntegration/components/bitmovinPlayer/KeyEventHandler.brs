sub init()
m.BitmovinPlayerState=_11IO0O1OOIO1()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
end sub
sub setup(_OII_O1__0111)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_I0OOIIIO01O1()
end sub
function setKeyPressValidationCallback(_O1O0O__1IIOI,__I_0_O0OOIO0)
m.keyPressValidationCallback=_O1O0O__1IIOI
m.keyPressValidationCallbackContext=__I_0_O0OOIO0
end function
function onKeyEvent(_1_0I001II1__,_O0OI101I01OO)
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and _O0OI101I01OO
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_1_0I001II1__)=(1=2)
return(1=1) 
end if
end if
if(_1_0I001II1__=(Chr(114)+Chr(&H69)+Chr(&H67)+Chr(104)+Chr(116))or _1_0I001II1__=(Chr(108)+Chr(101)+Chr(102)+Chr(&H74))or _1_0I001II1__=(Chr(&H66)+Chr(&H61)+Chr(115)+Chr(116)+Chr(&H66)+Chr(&H6f)+Chr(&H72)+Chr(119)+Chr(&H61)+Chr(&H72)+Chr(&H64))or _1_0I001II1__=(Chr(&H72)+Chr(101)+Chr(&H77)+Chr(&H69)+Chr(&H6e)+Chr(100))) and _O0OI101I01OO and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.FINISHED and _1_0I001II1__=(Chr(112)+Chr(108)+Chr(97)+Chr(121)) and _O0OI101I01OO
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerState.PAUSED and _1_0I001II1__=(Chr(112)+Chr(108)+Chr(&H61)+Chr(121)) and _O0OI101I01OO
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.READY and _1_0I001II1__=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)) and _O0OI101I01OO
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
