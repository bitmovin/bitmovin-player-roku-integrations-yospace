sub init()
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
end sub
sub executeOperation(____I0I1010II)
if _1100IO1O_0_I(____I0I1010II.data)or _1100IO1O_0_I(____I0I1010II.data.url)
?(Chr(&H4c)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(32)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)+Chr(&H20)+Chr(&H57)+Chr(&H6f)+Chr(&H72)+Chr(107)+Chr(&H65)+Chr(&H72)+Chr(32)+Chr(99)+Chr(97)+Chr(110)+Chr(39)+Chr(&H74)+Chr(&H20)+Chr(101)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(32)+Chr(&H74)+Chr(104)+Chr(101)+Chr(&H20)+Chr(&H6f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H21)+Chr(32)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(&H64)+Chr(97)+Chr(116)+Chr(&H61)+Chr(&H2e))
return 
end if
if ____I0I1010II.type=m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY __OI__O1OOOO1(____I0I1010II)
end sub
sub __OI__O1OOOO1(__1II0I010101)
licenseRequest=_000OO__IO0O1(__1II0I010101.data.url)
onLicenseSuccess=function(__I__II010O__,_11OI101_11II,_I_I1OOI0O_1O)
_I_I1OOI0O_1O.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=1),ParseJSON(__I__II010O__),_11OI101_11II)
end function
onLicenseError=function(__1I0O0I1I0__,__0IO_III_00_,_I0I_IO01O_0_)
_I0I_IO01O_0_.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)),(1=2),__1I0O0I1I0__,__0IO_III_00_)
end function
__I_O1II01O1I(licenseRequest,(Chr(&H50)+Chr(&H4f)+Chr(&H53)+Chr(84)),onLicenseSuccess,onLicenseError,__1II0I010101)
end sub
