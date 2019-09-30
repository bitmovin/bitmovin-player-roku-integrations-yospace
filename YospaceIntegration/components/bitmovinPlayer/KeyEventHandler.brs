sub init()
m.BitmovinPlayerState=__1_1_I__O000()
m.keyPressValidationCallback=invalid
m.keyPressValidationCallbackContext=invalid
end sub
sub setup(_1OOO1O011O11)
m.player=m.top.getParent().getParent()
m.BitmovinFunctions=_1_1_IOIO0I11()
end sub
function setKeyPressValidationCallback(_O1__O0O_0IO_,_OI000000OO__)
m.keyPressValidationCallback=_O1__O0O_0IO_
m.keyPressValidationCallbackContext=_OI000000OO__
end function
function onKeyEvent(__I0__OIO_1O1,__OO101_0I1I0)
if m.keyPressValidationCallback<>invalid and m.keyPressValidationCallbackContext<>invalid and __OO101_0I1I0
if m.keyPressValidationCallbackContext.callFunc(m.keyPressValidationCallback,__I0__OIO_1O1)=(1=2)
return(1=1) 
end if
end if
if(__I0__OIO_1O1=(Chr(&H72)+Chr(105)+Chr(103)+Chr(104)+Chr(&H74))or __I0__OIO_1O1=(Chr(&H6c)+Chr(101)+Chr(102)+Chr(116))or __I0__OIO_1O1=(Chr(102)+Chr(&H61)+Chr(&H73)+Chr(116)+Chr(&H66)+Chr(111)+Chr(114)+Chr(119)+Chr(97)+Chr(&H72)+Chr(100))or __I0__OIO_1O1=(Chr(114)+Chr(101)+Chr(119)+Chr(105)+Chr(110)+Chr(100))) and __OO101_0I1I0 and not m.top.seeking
if m.player.callFunc(m.BitmovinFunctions.IS_LIVE)
m.player.timeShift=1
else 
m.player.seek=(1=1)
end if
m.top.seeking=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.FINISHED and __I0__OIO_1O1=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121)) and __OO101_0I1I0
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
else if m.top.playerState=m.BitmovinPlayerState.PAUSED and __I0__OIO_1O1=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)) and __OO101_0I1I0
m.player.play=(1=1)
else if m.top.playerState=m.BitmovinPlayerState.READY and __I0__OIO_1O1=(Chr(112)+Chr(108)+Chr(97)+Chr(121)) and __OO101_0I1I0
m.player.callFunc(m.BitmovinFunctions.PLAY,invalid)
return(1=1) 
end if
return(1=2) 
end function
