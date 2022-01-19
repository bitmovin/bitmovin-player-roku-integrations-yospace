sub init()
end sub
function initializeService(_IOIOI11O1IIO=invalid)
m.config=invalid
end function
sub setConfig(_0_0IO11_100I)
if _110__I1O00_I(_0_0IO11_100I)return 
m.config=_0_0IO11_100I
end sub
function getConfig(_IOIOOOO1_1IO=invalid)
return m.config 
end function
function updateSource(_IIIII1I1O101)
m.config.source=_IIIII1I1O101
end function
function pluckConfig(_0110O_III0_I)
return __1II0I_I1101(getConfig(),_0110O_III0_I) 
end function
