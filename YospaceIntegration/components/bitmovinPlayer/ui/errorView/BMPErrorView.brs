sub init()
m.BitmovinComponentIds=_101I__01OO_0()
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(68)+Chr(101)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)+Chr(73)+Chr(&H6e)+Chr(&H66)+Chr(&H6f)))
errorWrapper=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H52)+Chr(101)+Chr(99)+Chr(116)+Chr(&H61)+Chr(110)+Chr(103)+Chr(108)+Chr(101)))
errorWrapper.id=m.BitmovinComponentIds.ERROR_WRAPPER
errorWrapper.color=(Chr(&H23)+Chr(48)+Chr(48)+Chr(48)+Chr(48)+Chr(&H30)+Chr(&H30))
errorWrapper.translation=(Chr(91)+Chr(48)+Chr(&H2c)+Chr(48)+Chr(&H5d))
errorLabel=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H4c)+Chr(&H61)+Chr(&H62)+Chr(&H65)+Chr(108)))
errorLabel.id=m.BitmovinComponentIds.ERROR_LABEL
errorLabel.color=(Chr(35)+Chr(&H66)+Chr(102)+Chr(102)+Chr(&H66)+Chr(102)+Chr(&H66))
errorLabel.horizAlign=(Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H72))
errorLabel.vertAlign=(Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(101)+Chr(&H72))
errorLabel.font=(Chr(&H66)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H3a)+Chr(&H4c)+Chr(&H61)+Chr(&H72)+Chr(&H67)+Chr(101)+Chr(83)+Chr(&H79)+Chr(115)+Chr(&H74)+Chr(101)+Chr(109)+Chr(70)+Chr(&H6f)+Chr(&H6e)+Chr(&H74))
uiResolution=m.deviceInfo.getUIResolution()
errorLabel.width=uiResolution.width
errorLabel.height=uiResolution.height
errorWrapper.appendChild(errorLabel)
m.top.appendChild(errorWrapper)
m.top.observeFieldScoped((Chr(101)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)),(Chr(&H5f)+Chr(&H31)+Chr(&H5f)+Chr(95)+Chr(&H31)+Chr(&H30)+Chr(&H4f)+Chr(&H30)+Chr(&H5f)+Chr(&H49)+Chr(&H49)+Chr(&H30)+Chr(&H4f)))
end sub
sub _1__10O0_II0O()
error=m.top.findNode((Chr(101)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H4c)+Chr(97)+Chr(98)+Chr(101)+Chr(108)))
error.text=m.top.error.code.toStr()+(Chr(32))+m.top.error.name+(Chr(&H3a)+Chr(32))+m.top.error.message
end sub
