sub init()
m.BitmovinPlayerStates=_II0_0_O__10O()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
m.isDestroyed=(1=2)
end sub
sub setup(___01O000II_1)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_0O0O1O00I__1()
end sub
function setKeyPressValidationCallback(__0100_01IOI0,_OO10O1OO01OO)
m.keyPressValidationCallback=__0100_01IOI0
m.keyPressValidationCallbackContext=_OO10O1OO01OO
end function
function onKeyEvent(__I1II0O0_I0I,_IIO__10OI0O1)
if m.isDestroyed return(1=1) 
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and _IIO__10OI0O1
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,__I1II0O0_I0I)=(1=2)
return(1=1) 
end if
end if
if(__I1II0O0_I0I=(Chr(&H72)+Chr(105)+Chr(103)+Chr(104)+Chr(116))or __I1II0O0_I0I=(Chr(&H6c)+Chr(101)+Chr(&H66)+Chr(&H74))or __I1II0O0_I0I=(Chr(102)+Chr(&H61)+Chr(115)+Chr(&H74)+Chr(102)+Chr(&H6f)+Chr(114)+Chr(119)+Chr(97)+Chr(&H72)+Chr(100))or __I1II0O0_I0I=(Chr(114)+Chr(&H65)+Chr(&H77)+Chr(&H69)+Chr(110)+Chr(&H64))) and _IIO__10OI0O1 and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.FINISHED and __I1II0O0_I0I=(Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)) and _IIO__10OI0O1
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerStates.PAUSED and __I1II0O0_I0I=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)) and _IIO__10OI0O1
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.READY and __I1II0O0_I0I=(Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)) and _IIO__10OI0O1
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
sub destroy()
m.isDestroyed=(1=1)
end sub
