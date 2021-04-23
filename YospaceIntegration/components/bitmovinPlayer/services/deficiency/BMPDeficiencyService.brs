sub init()
m.player=invalid
m.deficiencyFactory=invalid
m.errors=invalid
m.errorView=invalid
end sub
sub initializeService(___O11_1011_0)
m.player=___O11_1011_0
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(68)+Chr(&H65)+Chr(102)+Chr(105)+Chr(99)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(&H79)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(&H72)+Chr(&H79)))
m.errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(114)+Chr(&H73)),invalid)
end sub
function _100I_00O_IO0()
return not _1100IO1O_0_I(m.errorView) 
end function
function onError(_OIO0_1I0__0O)
if m.errorView=invalid
m.errorView=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(69)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)+Chr(&H56)+Chr(105)+Chr(101)+Chr(&H77)))
m.errorView.id=(Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H56)+Chr(105)+Chr(101)+Chr(&H77))
m.player.appendChild(m.errorView)
end if
m.errorView.error=_OIO0_1I0__0O
m.player.error=_OIO0_1I0__0O
m.player.callFunc((Chr(117)+Chr(110)+Chr(108)+Chr(111)+Chr(97)+Chr(&H64)))
if _OIO0_1I0__0O.code=m.errors.SETUP_LICENSE_ERROR
m.player.callFunc((Chr(&H64)+Chr(101)+Chr(&H73)+Chr(&H74)+Chr(&H72)+Chr(&H6f)+Chr(121)))
m.top.eventOccurred={eventName:m.player.BitmovinFields.DESTROY}
end if
end function
function removeErrorViewIfPresent()
if _100I_00O_IO0()
m.player.removeChild(m.errorView)
m.errorView=invalid
end if
end function
function getErrorViewIfPresent()
if not _100I_00O_IO0()return invalid 
return m.errorView 
end function
