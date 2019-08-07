sub init()
m.top.observeFieldScoped((Chr(&H65)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)),(Chr(&H5f)+Chr(&H30)+Chr(&H49)+Chr(79)+Chr(&H49)+Chr(&H31)+Chr(&H5f)+Chr(49)+Chr(&H5f)+Chr(95)+Chr(95)+Chr(79)+Chr(48)))
end sub
sub _0IOI1_1___O0()
error=m.top.findNode((Chr(101)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(&H4c)+Chr(97)+Chr(&H62)+Chr(101)+Chr(108)))
error.text=m.top.error.code.toStr()+(Chr(&H20))+m.top.error.name+(Chr(58)+Chr(&H20))+m.top.error.message
end sub
