sub init()
m.BitmovinAsyncOperationTypes=_001_100I0III()
end sub
sub executeOperation(_OI_111_00_II)
if _IO1IIIOI0_1O(_OI_111_00_II.data)or _IO1IIIOI0_1O(_OI_111_00_II.data.url)
?(Chr(&H4c)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(115)+Chr(101)+Chr(&H20)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H20)+Chr(87)+Chr(&H6f)+Chr(&H72)+Chr(107)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(99)+Chr(&H61)+Chr(&H6e)+Chr(39)+Chr(116)+Chr(32)+Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(101)+Chr(&H20)+Chr(&H74)+Chr(&H68)+Chr(&H65)+Chr(&H20)+Chr(111)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(33)+Chr(32)+Chr(65)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(97)+Chr(46))
return 
end if
if _OI_111_00_II.type=m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY _IOOIII_____O(_OI_111_00_II)
end sub
sub _IOOIII_____O(__010___O11I1)
licenseRequest=_10I__0__1II1(__010___O11I1.data.url)
onLicenseSuccess=function(_I_1_O___0II1,_O0I1I0I1OI0O,___O0_0OO1OOI)
___O0_0OO1OOI.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=1),ParseJSON(_I_1_O___0II1),_O0I1I0I1OI0O)
end function
onLicenseError=function(_11I101_0_0O_,_10IOOOI110_0,_OO1II0_O0OO_)
_OO1II0_O0OO_.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=2),_11I101_0_0O_,_10IOOOI110_0)
end function
_1011_IOO_I00(licenseRequest,(Chr(80)+Chr(&H4f)+Chr(&H53)+Chr(84)),onLicenseSuccess,onLicenseError,__010___O11I1)
end sub
