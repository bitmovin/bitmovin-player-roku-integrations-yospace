sub init()
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
end sub
sub executeOperation(___O0_____0__)
if _110__I1O00_I(___O0_____0__.data)or _110__I1O00_I(___O0_____0__.data.url)
?(Chr(&H4c)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(115)+Chr(&H65)+Chr(32)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(32)+Chr(87)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(&H65)+Chr(&H72)+Chr(32)+Chr(&H63)+Chr(97)+Chr(&H6e)+Chr(39)+Chr(116)+Chr(&H20)+Chr(101)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)+Chr(&H20)+Chr(116)+Chr(104)+Chr(101)+Chr(&H20)+Chr(&H6f)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H21)+Chr(32)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(32)+Chr(105)+Chr(110)+Chr(&H76)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(&H20)+Chr(&H64)+Chr(97)+Chr(116)+Chr(&H61)+Chr(&H2e))
return 
end if
if ___O0_____0__.type=m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY _1I1I_1_0I_I1(___O0_____0__)
end sub
sub _1I1I_1_0I_I1(__III01IO1011)
licenseRequest=_I0I10_IO__0_(__III01IO1011.data.url)
onLicenseSuccess=function(_OII0I_0__I11,__01O1O1O1_OO,_0_1_O__O101O)
_0_1_O__O101O.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)),(1=1),ParseJSON(_OII0I_0__I11),__01O1O1O1_OO)
end function
onLicenseError=function(__III0I1O01_O,_1I110O1IO111,_00IOI0IO01O_)
_00IOI0IO01O_.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=2),__III0I1O01_O,_1I110O1IO111)
end function
___0I_____1O_(licenseRequest,(Chr(80)+Chr(&H4f)+Chr(&H53)+Chr(84)),onLicenseSuccess,onLicenseError,__III01IO1011)
end sub
