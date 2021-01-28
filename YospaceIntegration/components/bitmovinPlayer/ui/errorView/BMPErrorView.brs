sub init()
m.BitmovinComponentIds=__01_0O1OO_OI()
m.deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(68)+Chr(101)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(111)))
errorWrapper=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(82)+Chr(101)+Chr(&H63)+Chr(&H74)+Chr(&H61)+Chr(&H6e)+Chr(&H67)+Chr(108)+Chr(&H65)))
errorWrapper.id=m.BitmovinComponentIds.ERROR_WRAPPER
errorWrapper.color=(Chr(35)+Chr(&H30)+Chr(&H30)+Chr(&H30)+Chr(&H30)+Chr(48)+Chr(&H30))
errorWrapper.translation=(Chr(91)+Chr(48)+Chr(44)+Chr(&H30)+Chr(93))
errorLabel=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H4c)+Chr(97)+Chr(98)+Chr(101)+Chr(&H6c)))
errorLabel.id=m.BitmovinComponentIds.ERROR_LABEL
errorLabel.color=(Chr(&H23)+Chr(102)+Chr(&H66)+Chr(102)+Chr(&H66)+Chr(102)+Chr(&H66))
errorLabel.horizAlign=(Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(101)+Chr(&H72))
errorLabel.vertAlign=(Chr(99)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H72))
errorLabel.font=(Chr(&H66)+Chr(111)+Chr(110)+Chr(116)+Chr(&H3a)+Chr(&H4c)+Chr(97)+Chr(114)+Chr(&H67)+Chr(101)+Chr(&H53)+Chr(&H79)+Chr(115)+Chr(116)+Chr(101)+Chr(109)+Chr(&H46)+Chr(&H6f)+Chr(110)+Chr(&H74))
uiResolution=m.deviceInfo.getUIResolution()
errorLabel.width=uiResolution.width
errorLabel.height=uiResolution.height
errorWrapper.appendChild(errorLabel)
m.top.appendChild(errorWrapper)
m.top.observeFieldScoped((Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)),(Chr(95)+Chr(73)+Chr(&H30)+Chr(&H4f)+Chr(&H4f)+Chr(&H5f)+Chr(&H4f)+Chr(&H49)+Chr(73)+Chr(&H4f)+Chr(95)+Chr(48)+Chr(49)))
end sub
sub _I0OO_OIIO_01()
error=m.top.findNode((Chr(101)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(&H4c)+Chr(97)+Chr(98)+Chr(&H65)+Chr(108)))
error.text=m.top.error.code.toStr()+(Chr(32))+m.top.error.name+(Chr(58)+Chr(32))+m.top.error.message
end sub
