sub init()
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
end sub
sub executeOperation(_0IOI01O00_1_)
if ___0O_II_00I_(_0IOI01O00_1_.data)or ___0O_II_00I_(_0IOI01O00_1_.data.url)return 
if _0IOI01O00_1_.type=m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST __I0OO01OOI00(_0IOI01O00_1_)
end sub
sub __I0OO01OOI00(_OO1I10IOO1II)
impression=_I01O11000O0_(_OO1I10IOO1II.data.url)
onSuccess=function(_11O__11O__01,_O_0_0IOII0IO,__I1O1IOI11I1)
__I1O1IOI11I1.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(1=1),(Chr(&H49)+Chr(&H6d)+Chr(112)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(32)+Chr(&H72)+Chr(&H65)+Chr(113)+Chr(&H75)+Chr(101)+Chr(&H73)+Chr(116)+Chr(32)+Chr(&H77)+Chr(&H61)+Chr(115)+Chr(32)+Chr(115)+Chr(117)+Chr(&H63)+Chr(99)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H66)+Chr(117)+Chr(&H6c)))
end function
onError=function(_O11IIOOI0II0,_0O01II10_O0O,_0I__101OIO1O)
_0I__101OIO1O.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)),(1=2),(Chr(&H49)+Chr(&H6d)+Chr(112)+Chr(114)+Chr(101)+Chr(&H73)+Chr(115)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H20)+Chr(114)+Chr(101)+Chr(&H71)+Chr(&H75)+Chr(101)+Chr(&H73)+Chr(&H74)+Chr(&H20)+Chr(&H66)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H64)))
end function
_0III10O01II1(impression,(Chr(80)+Chr(&H4f)+Chr(&H53)+Chr(84)),onSuccess,onError,_OO1I10IOO1II)
end sub
