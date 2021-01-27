sub init()
m.player=invalid
m.deficiencyFactory=invalid
m.errors=invalid
m.errorView=invalid
end sub
sub initializeService(_100_0OIO_0_I)
m.player=_100_0OIO_0_I
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(68)+Chr(&H65)+Chr(102)+Chr(105)+Chr(&H63)+Chr(105)+Chr(&H65)+Chr(110)+Chr(99)+Chr(&H79)+Chr(70)+Chr(&H61)+Chr(99)+Chr(116)+Chr(111)+Chr(&H72)+Chr(121)))
m.errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(&H73)),invalid)
end sub
function _1100011_0110()
return not ___0O_II_00I_(m.errorView) 
end function
function onError(_1IOI_1I0_10I)
if m.errorView=invalid
m.errorView=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H45)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(86)+Chr(&H69)+Chr(&H65)+Chr(&H77)))
m.errorView.id=(Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(86)+Chr(&H69)+Chr(101)+Chr(&H77))
m.player.appendChild(m.errorView)
end if
m.errorView.error=_1IOI_1I0_10I
m.player.error=_1IOI_1I0_10I
m.player.callFunc((Chr(&H75)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)))
if _1IOI_1I0_10I.code=m.errors.SETUP_LICENSE_ERROR
m.player.callFunc((Chr(&H64)+Chr(&H65)+Chr(115)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(&H79)))
m.top.eventOccurred={eventName:m.player.BitmovinFields.DESTROY}
end if
end function
function removeErrorViewIfPresent()
if _1100011_0110()
m.player.removeChild(m.errorView)
m.errorView=invalid
end if
end function
function getErrorViewIfPresent()
if not _1100011_0110()return invalid 
return m.errorView 
end function
