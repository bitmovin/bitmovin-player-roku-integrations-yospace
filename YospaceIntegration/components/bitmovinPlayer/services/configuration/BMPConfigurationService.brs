sub init()
end sub
function initializeService(_IO0_1101_0OI=invalid)
m.config=invalid
end function
sub setConfig(_O_I1I00IO00I)
if _I1_I11_1O_0I(_O_I1I00IO00I)return 
m.config=_O_I1I00IO00I
end sub
function getConfig(__O011OOOIIOO=invalid)
return m.config 
end function
function updateSource(_I01_II1_O_O1)
m.config.source=_I01_II1_O_O1
end function
function setHttpHeaders(_O0I1_1II__I0)
m.httpAgent.SetHeaders(_O0I1_1II__I0)
end function
