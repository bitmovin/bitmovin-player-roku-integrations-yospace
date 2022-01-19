sub init()
end sub
sub execute(_0OO1I0I1I0_O)
if _0OO1I0I1I0_O=invalid return 
_0OO1I0I1I0_O.handleOperation=m.top
end sub
sub setResult(__I11O1000IO0,_O00_I1OOO10I=invalid,__01110101_10=invalid,_O110_O11OOOI=invalid)
result={"successful":__I11O1000IO0,"response":_O00_I1OOO10I,"responseCode":__01110101_10,"error":_O110_O11OOOI}
m.top.result=result
end sub
sub updateData(_1011O_0I_O0_)
m.top.data=_1011O_0I_O0_
end sub
