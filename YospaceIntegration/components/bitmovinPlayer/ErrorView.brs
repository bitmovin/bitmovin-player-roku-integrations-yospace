sub init()
m.top.observeFieldScoped((Chr(&H65)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)),(Chr(95)+Chr(&H5f)+Chr(&H5f)+Chr(&H30)+Chr(&H30)+Chr(&H4f)+Chr(&H30)+Chr(&H31)+Chr(73)+Chr(&H5f)+Chr(48)+Chr(73)+Chr(&H31)))
end sub
sub ___00O01I_0I1()
error=m.top.findNode((Chr(101)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H4c)+Chr(&H61)+Chr(98)+Chr(101)+Chr(108)))
error.text=m.top.error.code.toStr()+(Chr(&H20))+m.top.error.name+(Chr(&H3a)+Chr(32))+m.top.error.message
end sub
