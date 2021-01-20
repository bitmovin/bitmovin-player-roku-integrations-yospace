sub init()
m.player=invalid
m.deficiencyFactory=invalid
m.errors=invalid
m.errorView=invalid
end sub
sub initializeService(_II0I1OIO_0I0)
m.player=_II0I1OIO_0I0
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(68)+Chr(101)+Chr(102)+Chr(&H69)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(&H63)+Chr(&H79)+Chr(70)+Chr(97)+Chr(99)+Chr(&H74)+Chr(111)+Chr(114)+Chr(121)))
m.errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(115)),invalid)
end sub
function _I_0I__0IIII_()
return not _I1_I11_1O_0I(m.errorView) 
end function
function onError(_01_10__O000O)
if m.errorView=invalid
m.errorView=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(69)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(&H56)+Chr(&H69)+Chr(101)+Chr(&H77)))
m.errorView.id=(Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(86)+Chr(105)+Chr(101)+Chr(119))
m.player.appendChild(m.errorView)
end if
m.errorView.error=_01_10__O000O
m.player.error=_01_10__O000O
m.player.callFunc((Chr(117)+Chr(110)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(100)))
if _01_10__O000O.code=m.errors.SETUP_LICENSE_ERROR
m.player.callFunc((Chr(&H64)+Chr(101)+Chr(115)+Chr(116)+Chr(&H72)+Chr(111)+Chr(&H79)))
m.top.eventOccurred={eventName:m.player.BitmovinFields.DESTROY}
end if
end function
function removeErrorViewIfPresent()
if _I_0I__0IIII_()
m.player.removeChild(m.errorView)
m.errorView=invalid
end if
end function
function getErrorViewIfPresent()
if not _I_0I__0IIII_()return invalid 
return m.errorView 
end function
