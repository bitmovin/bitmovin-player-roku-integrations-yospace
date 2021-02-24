sub init()
end sub
sub execute(_O_1OO_O_0___)
if _O_1OO_O_0___=invalid return 
_O_1OO_O_0___.handleOperation=m.top
end sub
sub setResult(_I_0_11_00_OI,_I1_1I10_I___=invalid,_10__IIO__OOI=invalid,_IOI00IO1_I00=invalid)
result={"successful":_I_0_11_00_OI,"response":_I1_1I10_I___,"responseCode":_10__IIO__OOI,"error":_IOI00IO1_I00}
m.top.result=result
end sub
