sub init()
m.BitmovinComponentIds=_1011I__1I0OI()
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(&H44)+Chr(101)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(110)+Chr(102)+Chr(&H6f)))
errorWrapper=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H52)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(97)+Chr(&H6e)+Chr(&H67)+Chr(108)+Chr(&H65)))
errorWrapper.id=m.BitmovinComponentIds.ERROR_WRAPPER
errorWrapper.color=(Chr(35)+Chr(&H30)+Chr(48)+Chr(48)+Chr(48)+Chr(&H30)+Chr(&H30))
errorWrapper.translation=(Chr(91)+Chr(&H30)+Chr(&H2c)+Chr(48)+Chr(93))
errorLabel=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(76)+Chr(97)+Chr(&H62)+Chr(101)+Chr(&H6c)))
errorLabel.id=m.BitmovinComponentIds.ERROR_LABEL
errorLabel.color=(Chr(&H23)+Chr(102)+Chr(&H66)+Chr(102)+Chr(&H66)+Chr(&H66)+Chr(102))
errorLabel.horizAlign=(Chr(99)+Chr(101)+Chr(110)+Chr(116)+Chr(&H65)+Chr(114))
errorLabel.vertAlign=(Chr(99)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(114))
errorLabel.font=(Chr(&H66)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H3a)+Chr(76)+Chr(&H61)+Chr(&H72)+Chr(103)+Chr(101)+Chr(&H53)+Chr(&H79)+Chr(115)+Chr(&H74)+Chr(101)+Chr(109)+Chr(70)+Chr(&H6f)+Chr(&H6e)+Chr(116))
uiResolution=m.deviceInfo.getUIResolution()
errorLabel.width=uiResolution.width
errorLabel.height=uiResolution.height
errorWrapper.appendChild(errorLabel)
m.top.appendChild(errorWrapper)
m.top.observeFieldScoped((Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)),(Chr(&H5f)+Chr(95)+Chr(&H4f)+Chr(73)+Chr(95)+Chr(&H31)+Chr(73)+Chr(&H31)+Chr(48)+Chr(&H49)+Chr(49)+Chr(&H5f)+Chr(48)))
end sub
sub __OI_1I10I1_0()
error=m.top.findNode((Chr(&H65)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(76)+Chr(&H61)+Chr(&H62)+Chr(&H65)+Chr(108)))
error.text=m.top.error.code.toStr()+(Chr(&H20))+m.top.error.name+(Chr(&H3a)+Chr(32))+m.top.error.message
end sub
