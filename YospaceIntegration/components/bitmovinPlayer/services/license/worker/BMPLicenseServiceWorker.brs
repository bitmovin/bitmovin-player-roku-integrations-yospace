sub init()
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
end sub
sub executeOperation(_1_0OO__OII00)
if _I1_I11_1O_0I(_1_0OO__OII00.data)or _I1_I11_1O_0I(_1_0OO__OII00.data.url)
?(Chr(&H4c)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(101)+Chr(&H20)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(32)+Chr(87)+Chr(&H6f)+Chr(114)+Chr(107)+Chr(&H65)+Chr(114)+Chr(32)+Chr(&H63)+Chr(97)+Chr(110)+Chr(39)+Chr(116)+Chr(32)+Chr(101)+Chr(120)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(32)+Chr(116)+Chr(104)+Chr(&H65)+Chr(32)+Chr(111)+Chr(112)+Chr(&H65)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H21)+Chr(&H20)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(32)+Chr(&H69)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H61)+Chr(46))
return 
end if
if _1_0OO__OII00.type=m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY _OO01_III11_O(_1_0OO__OII00)
end sub
sub _OO01_III11_O(__O__10I1_OOI)
licenseRequest=_OIIOI_001OII(__O__10I1_OOI.data.url)
onLicenseSuccess=function(_I11_1I__0__O,_I1O_I1___II_,_0_1_I00IIO0O)
_0_1_I00IIO0O.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=1),ParseJSON(_I11_1I__0__O),_I1O_I1___II_)
end function
onLicenseError=function(_0III0IO10110,_0OI0O0O10O_I,_IO_O_O1010O0)
_IO_O_O1010O0.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(82)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(1=2),_0III0IO10110,_0OI0O0O10O_I)
end function
_101O_I_I_1IO(licenseRequest,(Chr(80)+Chr(&H4f)+Chr(&H53)+Chr(&H54)),onLicenseSuccess,onLicenseError,__O__10I1_OOI)
end sub
