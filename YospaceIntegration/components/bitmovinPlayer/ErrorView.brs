sub init()
m.top.observeFieldScoped((Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)),(Chr(&H5f)+Chr(79)+Chr(&H49)+Chr(48)+Chr(49)+Chr(49)+Chr(&H30)+Chr(48)+Chr(&H49)+Chr(73)+Chr(&H49)+Chr(48)+Chr(73)))
end sub
sub _OI01100III0I()
error=m.top.findNode((Chr(&H65)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(76)+Chr(97)+Chr(&H62)+Chr(101)+Chr(&H6c)))
error.text=m.top.error.code.toStr()+(Chr(32))+m.top.error.name+(Chr(58)+Chr(32))+m.top.error.message
end sub
