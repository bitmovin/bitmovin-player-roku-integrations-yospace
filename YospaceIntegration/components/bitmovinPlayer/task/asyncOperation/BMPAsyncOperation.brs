sub init()
end sub
sub execute(_0_IOI011I_1O)
if _0_IOI011I_1O=invalid return 
_0_IOI011I_1O.handleOperation=m.top
end sub
sub setResult(_1OO0__1III1O,__0I1IOOI0III=invalid,__0_O01II_0_O=invalid,_1_1O_IOO1__0=invalid)
result={"successful":_1OO0__1III1O,"response":__0I1IOOI0III,"responseCode":__0_O01II_0_O,"error":_1_1O_IOO1__0}
m.top.result=result
end sub
