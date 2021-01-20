sub init()
end sub
sub execute(__IO0I0OI0OO_)
if __IO0I0OI0OO_=invalid return 
__IO0I0OI0OO_.handleOperation=m.top
end sub
sub setResult(_1O_OII1_01II,_IO00O0O1O0I_=invalid,_11_I_0OO1O1_=invalid,_0I11101I1I_0=invalid)
result={"successful":_1O_OII1_01II,"response":_IO00O0O1O0I_,"responseCode":_11_I_0OO1O1_,"error":_0I11101I1I_0}
m.top.result=result
end sub
