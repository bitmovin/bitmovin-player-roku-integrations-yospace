sub init()
m.BitmovinComponentIds=__0I00OO11O0_()
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(&H66)+Chr(&H6f)))
errorWrapper=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(82)+Chr(&H65)+Chr(99)+Chr(&H74)+Chr(&H61)+Chr(&H6e)+Chr(103)+Chr(&H6c)+Chr(101)))
errorWrapper.id=m.BitmovinComponentIds.ERROR_WRAPPER
errorWrapper.color=(Chr(&H23)+Chr(&H30)+Chr(48)+Chr(48)+Chr(&H30)+Chr(&H30)+Chr(48))
errorWrapper.translation=(Chr(91)+Chr(&H30)+Chr(44)+Chr(48)+Chr(93))
errorLabel=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(76)+Chr(&H61)+Chr(98)+Chr(&H65)+Chr(&H6c)))
errorLabel.id=m.BitmovinComponentIds.ERROR_LABEL
errorLabel.color=(Chr(35)+Chr(&H66)+Chr(&H66)+Chr(&H66)+Chr(102)+Chr(&H66)+Chr(102))
errorLabel.horizAlign=(Chr(99)+Chr(&H65)+Chr(110)+Chr(116)+Chr(101)+Chr(114))
errorLabel.vertAlign=(Chr(&H63)+Chr(&H65)+Chr(110)+Chr(116)+Chr(101)+Chr(&H72))
errorLabel.font=(Chr(&H66)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(58)+Chr(&H4c)+Chr(97)+Chr(114)+Chr(103)+Chr(101)+Chr(83)+Chr(&H79)+Chr(115)+Chr(116)+Chr(101)+Chr(&H6d)+Chr(&H46)+Chr(&H6f)+Chr(&H6e)+Chr(&H74))
uiResolution=m.deviceInfo.getUIResolution()
errorLabel.width=uiResolution.width
errorLabel.height=uiResolution.height
errorWrapper.appendChild(errorLabel)
m.top.appendChild(errorWrapper)
m.top.observeFieldScoped((Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)),(Chr(&H5f)+Chr(49)+Chr(&H31)+Chr(&H31)+Chr(&H31)+Chr(&H49)+Chr(&H31)+Chr(73)+Chr(95)+Chr(49)+Chr(48)+Chr(73)+Chr(&H31)))
end sub
sub _1111I1I_10I1()
error=m.top.findNode((Chr(&H65)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H4c)+Chr(97)+Chr(98)+Chr(101)+Chr(108)))
error.text=m.top.error.code.toStr()+(Chr(32))+m.top.error.name+(Chr(&H3a)+Chr(32))+m.top.error.message
end sub
