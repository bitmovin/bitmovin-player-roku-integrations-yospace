sub init()
m.player=invalid
m.deficiencyFactory=invalid
m.errors=invalid
m.errorView=invalid
end sub
sub initializeService(____0OO_0I_0O)
m.player=____0OO_0I_0O
m.deficiencyFactory=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H44)+Chr(101)+Chr(102)+Chr(&H69)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(&H46)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(&H73)),invalid)
end sub
function _I11I11IO_0O0()
return not __OOI0OI11_O0(m.errorView) 
end function
function onError(_O_1_O1O1I1I_)
if m.errorView=invalid
m.errorView=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H45)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)+Chr(&H56)+Chr(&H69)+Chr(&H65)+Chr(119)))
m.errorView.id=(Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H56)+Chr(105)+Chr(101)+Chr(&H77))
m.player.appendChild(m.errorView)
end if
m.errorView.error=_O_1_O1O1I1I_
m.player.error=_O_1_O1O1I1I_
m.player.callFunc((Chr(&H75)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(&H64)))
if _O_1_O1O1I1I_.code=m.errors.SETUP_LICENSE_ERROR
m.player.callFunc((Chr(&H64)+Chr(&H65)+Chr(115)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(&H79)))
m.top.eventOccurred={eventName:m.player.BitmovinFields.DESTROY}
end if
end function
function removeErrorViewIfPresent()
if _I11I11IO_0O0()
m.player.removeChild(m.errorView)
m.errorView=invalid
end if
end function
function getErrorViewIfPresent()
if not _I11I11IO_0O0()return invalid 
return m.errorView 
end function
