sub init()
m.BitmovinComponentIds=_O0OIII0IO00O()
m.deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H44)+Chr(101)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
errorWrapper=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(82)+Chr(101)+Chr(&H63)+Chr(&H74)+Chr(97)+Chr(110)+Chr(&H67)+Chr(&H6c)+Chr(&H65)))
errorWrapper.id=m.BitmovinComponentIds.ERROR_WRAPPER
errorWrapper.color=(Chr(35)+Chr(&H30)+Chr(&H30)+Chr(48)+Chr(48)+Chr(48)+Chr(48))
errorWrapper.translation=(Chr(91)+Chr(48)+Chr(&H2c)+Chr(48)+Chr(93))
errorLabel=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H4c)+Chr(97)+Chr(98)+Chr(101)+Chr(&H6c)))
errorLabel.id=m.BitmovinComponentIds.ERROR_LABEL
errorLabel.color=(Chr(35)+Chr(&H66)+Chr(&H66)+Chr(&H66)+Chr(&H66)+Chr(102)+Chr(&H66))
errorLabel.horizAlign=(Chr(99)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H72))
errorLabel.vertAlign=(Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H65)+Chr(&H72))
errorLabel.font=(Chr(102)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(58)+Chr(76)+Chr(97)+Chr(&H72)+Chr(&H67)+Chr(&H65)+Chr(83)+Chr(&H79)+Chr(115)+Chr(&H74)+Chr(101)+Chr(109)+Chr(70)+Chr(111)+Chr(&H6e)+Chr(&H74))
uiResolution=m.deviceInfo.getUIResolution()
errorLabel.width=uiResolution.width
errorLabel.height=uiResolution.height
errorWrapper.appendChild(errorLabel)
m.top.appendChild(errorWrapper)
m.top.observeFieldScoped((Chr(101)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)),(Chr(95)+Chr(79)+Chr(73)+Chr(&H49)+Chr(&H31)+Chr(49)+Chr(&H49)+Chr(48)+Chr(73)+Chr(79)+Chr(&H31)+Chr(95)+Chr(&H49)))
end sub
sub _OII11I0IO1_I()
error=m.top.findNode((Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H4c)+Chr(97)+Chr(98)+Chr(&H65)+Chr(108)))
error.text=m.top.error.code.toStr()+(Chr(32))+m.top.error.name+(Chr(58)+Chr(&H20))+m.top.error.message
end sub
