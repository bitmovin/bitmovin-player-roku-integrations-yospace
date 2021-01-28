sub init()
end sub
sub execute(__O01O1I_OO_O)
if __O01O1I_OO_O=invalid return 
__O01O1I_OO_O.handleOperation=m.top
end sub
sub setResult(_O10OI0_I_O0O,_0III_O0_0_O1=invalid,_IOO0_0OIO_I0=invalid,_O10__0O0OI0O=invalid)
result={"successful":_O10OI0_I_O0O,"response":_0III_O0_0_O1,"responseCode":_IOO0_0OIO_I0,"error":_O10__0O0OI0O}
m.top.result=result
end sub
