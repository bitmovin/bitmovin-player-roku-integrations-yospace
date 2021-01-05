sub init()
m.BitmovinPlayerStates=_O__1___O1OI1()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
m.isDestroyed=(1=2)
end sub
sub setup(_110IOO__IO0O)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_O0I0O_1_1_1_()
end sub
function setKeyPressValidationCallback(_0IIIOOI_10O_,__11__1_I11OI)
m.keyPressValidationCallback=_0IIIOOI_10O_
m.keyPressValidationCallbackContext=__11__1_I11OI
end function
function onKeyEvent(_111_010_IO11,__I0_1I101OOI)
if m.isDestroyed return(1=1) 
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and __I0_1I101OOI
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,_111_010_IO11)=(1=2)
return(1=1) 
end if
end if
if(_111_010_IO11=(Chr(114)+Chr(&H69)+Chr(103)+Chr(104)+Chr(116))or _111_010_IO11=(Chr(108)+Chr(&H65)+Chr(&H66)+Chr(116))or _111_010_IO11=(Chr(&H66)+Chr(&H61)+Chr(115)+Chr(116)+Chr(&H66)+Chr(&H6f)+Chr(114)+Chr(119)+Chr(&H61)+Chr(&H72)+Chr(100))or _111_010_IO11=(Chr(&H72)+Chr(&H65)+Chr(119)+Chr(105)+Chr(&H6e)+Chr(&H64))) and __I0_1I101OOI and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.FINISHED and _111_010_IO11=(Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)) and __I0_1I101OOI
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerStates.PAUSED and _111_010_IO11=(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)) and __I0_1I101OOI
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.READY and _111_010_IO11=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)) and __I0_1I101OOI
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
sub destroy()
m.isDestroyed=(1=1)
end sub
