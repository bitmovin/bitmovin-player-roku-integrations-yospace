sub init()
m.BitmovinAsyncOperationTypes=___IO10I10001()
end sub
sub executeOperation(_O11_01__O1O_)
if __OOI0OI11_O0(_O11_01__O1O_.data)or __OOI0OI11_O0(_O11_01__O1O_.data.url)
?(Chr(76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(32)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(32)+Chr(&H57)+Chr(111)+Chr(114)+Chr(107)+Chr(101)+Chr(114)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(110)+Chr(&H27)+Chr(116)+Chr(&H20)+Chr(101)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(32)+Chr(116)+Chr(&H68)+Chr(&H65)+Chr(32)+Chr(&H6f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(33)+Chr(32)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(118)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(32)+Chr(&H64)+Chr(97)+Chr(116)+Chr(97)+Chr(&H2e))
return 
end if
if _O11_01__O1O_.type=m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY __IIOOI1O111_(_O11_01__O1O_)
end sub
sub __IIOOI1O111_(__1II10I_OII0)
licenseRequest=___I0I_IOO0__(__1II10I_OII0.data.url)
onLicenseSuccess=function(_OOOOI_I0_OII,_O11I0OO00010,_1IO01_OO_I0_)
_1IO01_OO_I0_.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=1),ParseJSON(_OOOOI_I0_OII),_O11I0OO00010)
end function
onLicenseError=function(_I_IO01O0_101,__O_II_O1O1OI,_1_0O0O11I1O1)
_1_0O0O11I1O1.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=2),_I_IO01O0_101,__O_II_O1O1OI)
end function
__II1I_00O00I(licenseRequest,(Chr(80)+Chr(&H4f)+Chr(83)+Chr(84)),onLicenseSuccess,onLicenseError,__1II10I_OII0)
end sub
