sub init()
m.top.observeFieldScoped((Chr(101)+Chr(114)+Chr(114)+Chr(111)+Chr(114)),(Chr(95)+Chr(73)+Chr(95)+Chr(48)+Chr(&H49)+Chr(&H30)+Chr(95)+Chr(95)+Chr(48)+Chr(&H31)+Chr(73)+Chr(&H49)+Chr(&H30)))
end sub
sub _I_0I0__01II0()
error=m.top.findNode((Chr(101)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(76)+Chr(&H61)+Chr(&H62)+Chr(&H65)+Chr(&H6c)))
error.text=m.top.error.code.toStr()+(Chr(32))+m.top.error.name+(Chr(&H3a)+Chr(&H20))+m.top.error.message
end sub
