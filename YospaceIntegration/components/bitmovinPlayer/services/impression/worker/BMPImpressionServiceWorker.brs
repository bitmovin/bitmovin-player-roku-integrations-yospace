sub init()
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
end sub
sub executeOperation(__0OO_0O01I1O)
if _1100IO1O_0_I(__0OO_0O01I1O.data)or _1100IO1O_0_I(__0OO_0O01I1O.data.url)return 
if __0OO_0O01I1O.type=m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST _0O10OO0I1IO0(__0OO_0O01I1O)
end sub
sub _0O10OO0I1IO0(_01OO_1I_IIIO)
impression=_000OO__IO0O1(_01OO_1I_IIIO.data.url)
onSuccess=function(_O1I1O101O1_1,___OI0II1O1_I,_IIO_I010O01I)
_IIO_I010O01I.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=1),(Chr(&H49)+Chr(&H6d)+Chr(112)+Chr(114)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H20)+Chr(114)+Chr(101)+Chr(&H71)+Chr(&H75)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H20)+Chr(119)+Chr(&H61)+Chr(115)+Chr(32)+Chr(115)+Chr(117)+Chr(&H63)+Chr(99)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H66)+Chr(&H75)+Chr(108)))
end function
onError=function(__0___OI___1O,__00_IO_OIO00,_0IIII0O_0I01)
_0IIII0O_0I01.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(1=2),(Chr(73)+Chr(109)+Chr(112)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(32)+Chr(&H72)+Chr(&H65)+Chr(&H71)+Chr(117)+Chr(101)+Chr(&H73)+Chr(116)+Chr(&H20)+Chr(102)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H64)))
end function
__I_O1II01O1I(impression,(Chr(80)+Chr(&H4f)+Chr(83)+Chr(&H54)),onSuccess,onError,_01OO_1I_IIIO)
end sub
