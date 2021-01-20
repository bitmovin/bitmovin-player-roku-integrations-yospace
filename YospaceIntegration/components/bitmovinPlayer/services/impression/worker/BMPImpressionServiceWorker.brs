sub init()
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
end sub
sub executeOperation(_111_IO_OIOI0)
if _I1_I11_1O_0I(_111_IO_OIOI0.data)or _I1_I11_1O_0I(_111_IO_OIOI0.data.url)return 
if _111_IO_OIOI0.type=m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST _O0IIII_I_OI1(_111_IO_OIOI0)
end sub
sub _O0IIII_I_OI1(_1_OIIII1_0O_)
impression=_OIIOI_001OII(_1_OIIII1_0O_.data.url)
onSuccess=function(_1I1_IOOOI0I1,_1I1I11__1I_I,_O11__I0O__OO)
_O11__I0O__OO.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H52)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=1),(Chr(73)+Chr(109)+Chr(112)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H20)+Chr(114)+Chr(101)+Chr(113)+Chr(117)+Chr(&H65)+Chr(&H73)+Chr(&H74)+Chr(&H20)+Chr(&H77)+Chr(&H61)+Chr(115)+Chr(32)+Chr(115)+Chr(117)+Chr(99)+Chr(99)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(102)+Chr(117)+Chr(&H6c)))
end function
onError=function(_1OIOI1_1O0_O,_OO0__I0I_O_0,_0II0OIOI_10_)
_0II0OIOI_10_.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(82)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=2),(Chr(&H49)+Chr(109)+Chr(112)+Chr(114)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H20)+Chr(114)+Chr(&H65)+Chr(113)+Chr(&H75)+Chr(101)+Chr(115)+Chr(&H74)+Chr(32)+Chr(102)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(100)))
end function
_101O_I_I_1IO(impression,(Chr(&H50)+Chr(79)+Chr(83)+Chr(&H54)),onSuccess,onError,_1_OIIII1_0O_)
end sub
