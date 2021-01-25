sub init()
m.BitmovinComponentIds=_00I10OOO01OO()
m.deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H44)+Chr(101)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
errorWrapper=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(82)+Chr(&H65)+Chr(99)+Chr(116)+Chr(97)+Chr(110)+Chr(103)+Chr(108)+Chr(101)))
errorWrapper.id=m.BitmovinComponentIds.ERROR_WRAPPER
errorWrapper.color=(Chr(35)+Chr(&H30)+Chr(48)+Chr(&H30)+Chr(48)+Chr(48)+Chr(&H30))
errorWrapper.translation=(Chr(&H5b)+Chr(48)+Chr(&H2c)+Chr(48)+Chr(&H5d))
errorLabel=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(76)+Chr(&H61)+Chr(&H62)+Chr(101)+Chr(108)))
errorLabel.id=m.BitmovinComponentIds.ERROR_LABEL
errorLabel.color=(Chr(&H23)+Chr(&H66)+Chr(102)+Chr(&H66)+Chr(102)+Chr(&H66)+Chr(&H66))
errorLabel.horizAlign=(Chr(99)+Chr(101)+Chr(110)+Chr(&H74)+Chr(101)+Chr(114))
errorLabel.vertAlign=(Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(114))
errorLabel.font=(Chr(&H66)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H3a)+Chr(76)+Chr(&H61)+Chr(&H72)+Chr(103)+Chr(101)+Chr(&H53)+Chr(&H79)+Chr(115)+Chr(&H74)+Chr(101)+Chr(109)+Chr(70)+Chr(111)+Chr(&H6e)+Chr(116))
uiResolution=m.deviceInfo.getUIResolution()
errorLabel.width=uiResolution.width
errorLabel.height=uiResolution.height
errorWrapper.appendChild(errorLabel)
m.top.appendChild(errorWrapper)
m.top.observeFieldScoped((Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)),(Chr(95)+Chr(&H5f)+Chr(&H49)+Chr(95)+Chr(&H5f)+Chr(73)+Chr(&H30)+Chr(73)+Chr(&H30)+Chr(&H30)+Chr(&H5f)+Chr(&H49)+Chr(&H30)))
end sub
sub __I__I0I00_I0()
error=m.top.findNode((Chr(&H65)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H4c)+Chr(&H61)+Chr(98)+Chr(&H65)+Chr(&H6c)))
error.text=m.top.error.code.toStr()+(Chr(32))+m.top.error.name+(Chr(&H3a)+Chr(&H20))+m.top.error.message
end sub
