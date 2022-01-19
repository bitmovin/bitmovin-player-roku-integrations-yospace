sub init()
m.player=invalid
m.deficiencyFactory=invalid
m.errors=invalid
m.errorView=invalid
m.eventsHandler=_0__00_O0I0O_(m.top,_IOI0_011_1O1(),___00__0_1OI_())
end sub
sub initializeService(_O10__0_II__I)
m.player=_O10__0_II__I.player
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H44)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(105)+Chr(&H65)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(&H79)))
m.advertisingService=_O10__0_II__I.services.advertisingService
m.errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H45)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(&H73)),invalid)
end sub
function isErrorViewPresent(_10O1I_11OI0_=invalid)
return not _110__I1O00_I(m.errorView) 
end function
function onError(_11O11_I_OO1O)
m.advertisingService.callFunc((Chr(111)+Chr(&H6e)+Chr(86)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(111)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)),invalid)
if m.errorView=invalid
m.errorView=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(&H56)+Chr(&H69)+Chr(&H65)+Chr(119)))
m.errorView.id=(Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(86)+Chr(&H69)+Chr(101)+Chr(&H77))
m.player.appendChild(m.errorView)
end if
if _11O11_I_OO1O.code=m.errors.SETUP_LICENSE_ERROR
m.eventsHandler.emitDestroyEvent((1=2))
end if
m.eventsHandler.emitInternalUnloadEvent()
m.errorView.error=_11O11_I_OO1O
m.player.error=_11O11_I_OO1O
if not m.eventsHandler.isSourceUnloadedEmittedExternally() and not _11O11_I_OO1O.code=m.errors.SETUP_LICENSE_ERROR emitSourceUnloadedEvent((1=1))
if _11O11_I_OO1O.code=m.errors.SETUP_LICENSE_ERROR m.eventsHandler.emitDestroyEventWithoutInternalDestroy()
end function
function removeErrorViewIfPresent()
if isErrorViewPresent()
m.player.removeChild(m.errorView)
m.errorView=invalid
end if
end function
function getErrorViewIfPresent()
if not isErrorViewPresent()return invalid 
return m.errorView 
end function
function shouldEmitSourceUnloadedEventExternally(_O000OI10OIO0=invalid)
return m.eventsHandler.shouldEmitSourceUnloadedEventExternally() 
end function
function emitSourceUnloadedEvent(_0_OO011I000I)
m.eventsHandler.emitSourceUnloadedEvent(_0_OO011I000I)
end function
