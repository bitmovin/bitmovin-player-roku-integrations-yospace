sub init()
m.BitmovinComponentIds=_0I010I1I1II1()
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(&H44)+Chr(&H65)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(73)+Chr(&H6e)+Chr(&H66)+Chr(111)))
errorWrapper=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H52)+Chr(101)+Chr(&H63)+Chr(116)+Chr(97)+Chr(&H6e)+Chr(103)+Chr(108)+Chr(101)))
errorWrapper.id=m.BitmovinComponentIds.ERROR_WRAPPER
errorWrapper.color=(Chr(35)+Chr(&H30)+Chr(&H30)+Chr(48)+Chr(&H30)+Chr(&H30)+Chr(48))
errorWrapper.translation=(Chr(91)+Chr(&H30)+Chr(&H2c)+Chr(&H30)+Chr(93))
errorLabel=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(76)+Chr(&H61)+Chr(98)+Chr(&H65)+Chr(108)))
errorLabel.id=m.BitmovinComponentIds.ERROR_LABEL
errorLabel.color=(Chr(35)+Chr(&H66)+Chr(&H66)+Chr(&H66)+Chr(102)+Chr(&H66)+Chr(&H66))
errorLabel.horizAlign=(Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(&H72))
errorLabel.vertAlign=(Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H72))
errorLabel.font=(Chr(102)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(58)+Chr(&H4c)+Chr(97)+Chr(&H72)+Chr(&H67)+Chr(101)+Chr(&H53)+Chr(121)+Chr(&H73)+Chr(116)+Chr(101)+Chr(&H6d)+Chr(&H46)+Chr(&H6f)+Chr(&H6e)+Chr(116))
uiResolution=m.deviceInfo.getUIResolution()
errorLabel.width=uiResolution.width
errorLabel.height=uiResolution.height
errorWrapper.appendChild(errorLabel)
m.top.appendChild(errorWrapper)
m.top.observeFieldScoped((Chr(101)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(114)),(Chr(&H5f)+Chr(73)+Chr(&H4f)+Chr(&H5f)+Chr(79)+Chr(&H4f)+Chr(&H4f)+Chr(49)+Chr(&H30)+Chr(48)+Chr(&H31)+Chr(&H30)+Chr(48)))
end sub
sub _IO_OOO100100()
error=m.top.findNode((Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H4c)+Chr(97)+Chr(&H62)+Chr(&H65)+Chr(&H6c)))
error.text=m.top.error.code.toStr()+(Chr(&H20))+m.top.error.name+(Chr(&H3a)+Chr(32))+m.top.error.message
end sub
