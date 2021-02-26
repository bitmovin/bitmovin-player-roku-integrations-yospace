sub init()
m.BitmovinPlayerStates=_1_0I_0I00O_0()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
m.isDestroyed=(1=2)
end sub
sub setup(__O0_IIOI1_O_)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_OOI_OO0_I_I1()
end sub
function setKeyPressValidationCallback(__I1I1_001O1I,____O1OO01_1I)
m.keyPressValidationCallback=__I1I1_001O1I
m.keyPressValidationCallbackContext=____O1OO01_1I
end function
function onKeyEvent(__OI_OOI_I11_,_OI1I__OII10_)
if m.isDestroyed return(1=1) 
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and _OI1I__OII10_
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,__OI_OOI_I11_)=(1=2)
return(1=1) 
end if
end if
if(__OI_OOI_I11_=(Chr(114)+Chr(&H69)+Chr(103)+Chr(&H68)+Chr(&H74))or __OI_OOI_I11_=(Chr(&H6c)+Chr(101)+Chr(102)+Chr(116))or __OI_OOI_I11_=(Chr(102)+Chr(&H61)+Chr(&H73)+Chr(116)+Chr(102)+Chr(&H6f)+Chr(&H72)+Chr(119)+Chr(&H61)+Chr(&H72)+Chr(100))or __OI_OOI_I11_=(Chr(&H72)+Chr(101)+Chr(&H77)+Chr(&H69)+Chr(&H6e)+Chr(&H64))) and _OI1I__OII10_ and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.FINISHED and __OI_OOI_I11_=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)) and _OI1I__OII10_
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerStates.PAUSED and __OI_OOI_I11_=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)) and _OI1I__OII10_
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerStates.READY and __OI_OOI_I11_=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121)) and _OI1I__OII10_
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
sub destroy()
m.isDestroyed=(1=1)
end sub
