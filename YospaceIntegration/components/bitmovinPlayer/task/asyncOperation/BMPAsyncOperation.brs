sub init()
end sub
sub execute(_I001I0I1100O)
if _I001I0I1100O=invalid return 
_I001I0I1100O.handleOperation=m.top
end sub
sub setResult(_OI1_O0I001__,_01O_I0111001=invalid,__OI1I0_0O10O=invalid,_000O_I1I1OI0=invalid)
result={"successful":_OI1_O0I001__,"response":_01O_I0111001,"responseCode":__OI1I0_0O10O,"error":_000O_I1I1OI0}
m.top.result=result
end sub
sub updateData(__111000OI00I)
m.top.data=__111000OI00I
end sub
