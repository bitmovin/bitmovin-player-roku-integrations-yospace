sub init()
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
end sub
sub executeOperation(_1I_0_OI1_1_0)
if _110__I1O00_I(_1I_0_OI1_1_0.data)or _110__I1O00_I(_1I_0_OI1_1_0.data.url)return 
if _1I_0_OI1_1_0.type=m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST _1OO0001O_0I1(_1I_0_OI1_1_0)
end sub
sub _1OO0001O_0I1(_I_II_011I___)
impression=_I0I10_IO__0_(_I_II_011I___.data.url)
onSuccess=function(_I10OO1I_0__I,_0_OI_I0O11OO,_O_010OI_0O0O)
_O_010OI_0O0O.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=1),(Chr(73)+Chr(&H6d)+Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(32)+Chr(114)+Chr(101)+Chr(113)+Chr(117)+Chr(&H65)+Chr(115)+Chr(&H74)+Chr(32)+Chr(&H77)+Chr(&H61)+Chr(115)+Chr(32)+Chr(&H73)+Chr(117)+Chr(&H63)+Chr(99)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H66)+Chr(&H75)+Chr(&H6c)))
end function
onError=function(_O1111I1101OO,_I00I1_1_0II0,__1O111_0O_O_)
__1O111_0O_O_.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H52)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=2),(Chr(&H49)+Chr(&H6d)+Chr(&H70)+Chr(&H72)+Chr(101)+Chr(115)+Chr(&H73)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H20)+Chr(114)+Chr(&H65)+Chr(&H71)+Chr(&H75)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(32)+Chr(&H66)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(100)))
end function
___0I_____1O_(impression,(Chr(80)+Chr(&H4f)+Chr(83)+Chr(&H54)),onSuccess,onError,_I_II_011I___)
end sub
