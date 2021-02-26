sub init()
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
end sub
sub executeOperation(_OO11_O0_01O0)
if _OO_O1_O1O0O_(_OO11_O0_01O0.data)or _OO_O1_O1O0O_(_OO11_O0_01O0.data.url)return 
if _OO11_O0_01O0.type=m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST _OO10_01111I1(_OO11_O0_01O0)
end sub
sub _OO10_01111I1(__I1_1_1_OOIO)
impression=_11I00IO1OI10(__I1_1_1_OOIO.data.url)
onSuccess=function(_1010_IOI_O0I,__OO__OO100OI,_0O1OI1_00I_0)
_0O1OI1_00I_0.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=1),(Chr(73)+Chr(109)+Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(115)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(32)+Chr(114)+Chr(101)+Chr(&H71)+Chr(117)+Chr(101)+Chr(&H73)+Chr(116)+Chr(32)+Chr(&H77)+Chr(&H61)+Chr(&H73)+Chr(&H20)+Chr(115)+Chr(&H75)+Chr(&H63)+Chr(99)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(102)+Chr(117)+Chr(&H6c)))
end function
onError=function(_O1OI00_O100O,_IO0_10O001_O,_101_O01O1OO0)
_101_O01O1OO0.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=2),(Chr(73)+Chr(109)+Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(32)+Chr(&H72)+Chr(&H65)+Chr(113)+Chr(&H75)+Chr(101)+Chr(115)+Chr(116)+Chr(32)+Chr(&H66)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H64)))
end function
_1001IIOO_O_O(impression,(Chr(&H50)+Chr(79)+Chr(&H53)+Chr(&H54)),onSuccess,onError,__I1_1_1_OOIO)
end sub
