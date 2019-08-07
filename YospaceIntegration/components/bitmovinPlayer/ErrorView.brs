sub init()
m.top.observeFieldScoped((Chr(&H65)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)),(Chr(&H5f)+Chr(95)+Chr(95)+Chr(48)+Chr(79)+Chr(&H31)+Chr(95)+Chr(&H5f)+Chr(79)+Chr(49)+Chr(79)+Chr(73)+Chr(&H4f)))
end sub
sub ___0O1__O1OIO()
error=m.top.findNode((Chr(&H65)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(&H4c)+Chr(97)+Chr(&H62)+Chr(101)+Chr(&H6c)))
error.text=m.top.error.code.toStr()+(Chr(32))+m.top.error.name+(Chr(58)+Chr(&H20))+m.top.error.message
end sub
