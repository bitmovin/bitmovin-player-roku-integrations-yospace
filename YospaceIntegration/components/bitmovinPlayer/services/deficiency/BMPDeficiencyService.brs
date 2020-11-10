sub init()
m.player=invalid
m.deficiencyFactory=invalid
m.errors=invalid
m.errorView=invalid
end sub
sub initializeService(_IIOI_OO0OI_1)
m.player=_IIOI_OO0OI_1
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H44)+Chr(101)+Chr(102)+Chr(105)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(99)+Chr(121)+Chr(&H46)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(115)),invalid)
end sub
function _O0_0I10I0_IO()
return not _IO1IIIOI0_1O(m.errorView) 
end function
function onError(_I1_0OI1I_I1_)
if m.errorView=invalid
m.errorView=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H45)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(86)+Chr(105)+Chr(101)+Chr(&H77)))
m.errorView.id=(Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(86)+Chr(&H69)+Chr(&H65)+Chr(119))
m.player.appendChild(m.errorView)
end if
m.errorView.error=_I1_0OI1I_I1_
m.player.error=_I1_0OI1I_I1_
m.player.callFunc((Chr(&H75)+Chr(&H6e)+Chr(108)+Chr(111)+Chr(&H61)+Chr(&H64)))
if _I1_0OI1I_I1_.code=m.errors.SETUP_LICENSE_ERROR
m.player.callFunc((Chr(&H64)+Chr(101)+Chr(&H73)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(121)))
m.top.eventOccurred={eventName:m.player.BitmovinFields.DESTROY}
end if
end function
function removeErrorViewIfPresent()
if _O0_0I10I0_IO()
m.player.removeChild(m.errorView)
m.errorView=invalid
end if
end function
function getErrorViewIfPresent()
if not _O0_0I10I0_IO()return invalid 
return m.errorView 
end function
