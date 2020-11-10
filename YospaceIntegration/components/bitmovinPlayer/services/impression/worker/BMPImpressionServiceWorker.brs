sub init()
m.BitmovinAsyncOperationTypes=_001_100I0III()
end sub
sub executeOperation(_OIO0OIIO111_)
if _IO1IIIOI0_1O(_OIO0OIIO111_.data)or _IO1IIIOI0_1O(_OIO0OIIO111_.data.url)return 
if _OIO0OIIO111_.type=m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST _0___1I10III1(_OIO0OIIO111_)
end sub
sub _0___1I10III1(__0I0_I0IIIO1)
impression=_10I__0__1II1(__0I0_I0IIIO1.data.url)
onSuccess=function(_0I1O100OO011,_IO__IOO10O10,_OOO1I1___O00)
_OOO1I1___O00.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(1=1),(Chr(&H49)+Chr(&H6d)+Chr(112)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(115)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H20)+Chr(114)+Chr(101)+Chr(113)+Chr(117)+Chr(&H65)+Chr(&H73)+Chr(&H74)+Chr(32)+Chr(119)+Chr(97)+Chr(115)+Chr(32)+Chr(115)+Chr(&H75)+Chr(&H63)+Chr(&H63)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H66)+Chr(&H75)+Chr(&H6c)))
end function
onError=function(_1I_I0__011O0,_I1O_1010_OO_,_1_1IIO1100_I)
_1_1IIO1100_I.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(1=2),(Chr(73)+Chr(&H6d)+Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(32)+Chr(114)+Chr(&H65)+Chr(113)+Chr(117)+Chr(101)+Chr(115)+Chr(116)+Chr(&H20)+Chr(&H66)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(101)+Chr(&H64)))
end function
_1011_IOO_I00(impression,(Chr(&H50)+Chr(&H4f)+Chr(&H53)+Chr(84)),onSuccess,onError,__0I0_I0IIIO1)
end sub
