sub init()
m.player=invalid
m.deficiencyFactory=invalid
m.errors=invalid
m.errorView=invalid
end sub
sub initializeService(_IOIOI01_01_0)
m.player=_IOIOI01_01_0
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(68)+Chr(&H65)+Chr(102)+Chr(&H69)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(99)+Chr(121)+Chr(70)+Chr(&H61)+Chr(99)+Chr(116)+Chr(111)+Chr(&H72)+Chr(&H79)))
m.errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(115)),invalid)
end sub
function _I_1O10_0O_IO()
return not _OO_O1_O1O0O_(m.errorView) 
end function
function onError(_00IIOI_0OO0I)
if m.errorView=invalid
m.errorView=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(86)+Chr(105)+Chr(&H65)+Chr(119)))
m.errorView.id=(Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(86)+Chr(&H69)+Chr(&H65)+Chr(&H77))
m.player.appendChild(m.errorView)
end if
m.errorView.error=_00IIOI_0OO0I
m.player.error=_00IIOI_0OO0I
m.player.callFunc((Chr(&H75)+Chr(&H6e)+Chr(108)+Chr(111)+Chr(97)+Chr(&H64)))
if _00IIOI_0OO0I.code=m.errors.SETUP_LICENSE_ERROR
m.player.callFunc((Chr(100)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H72)+Chr(111)+Chr(121)))
m.top.eventOccurred={eventName:m.player.BitmovinFields.DESTROY}
end if
end function
function removeErrorViewIfPresent()
if _I_1O10_0O_IO()
m.player.removeChild(m.errorView)
m.errorView=invalid
end if
end function
function getErrorViewIfPresent()
if not _I_1O10_0O_IO()return invalid 
return m.errorView 
end function
