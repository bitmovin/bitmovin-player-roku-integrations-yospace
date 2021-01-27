sub init()
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
end sub
sub executeOperation(_IOO1I11_0I_O)
if ___0O_II_00I_(_IOO1I11_0I_O.data)or ___0O_II_00I_(_IOO1I11_0I_O.data.url)
?(Chr(76)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(32)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H20)+Chr(87)+Chr(&H6f)+Chr(114)+Chr(107)+Chr(&H65)+Chr(114)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(110)+Chr(&H27)+Chr(&H74)+Chr(32)+Chr(101)+Chr(&H78)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(101)+Chr(32)+Chr(&H74)+Chr(&H68)+Chr(101)+Chr(32)+Chr(&H6f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(33)+Chr(32)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(&H76)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H64)+Chr(32)+Chr(&H64)+Chr(97)+Chr(116)+Chr(&H61)+Chr(46))
return 
end if
if _IOO1I11_0I_O.type=m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY _OI1I_I01O0O_(_IOO1I11_0I_O)
end sub
sub _OI1I_I01O0O_(_10OIIOI00011)
licenseRequest=_I01O11000O0_(_10OIIOI00011.data.url)
onLicenseSuccess=function(__O1O1_01110I,_OO__I11IIO1O,_0_01II0O1001)
_0_01II0O1001.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(1=1),ParseJSON(__O1O1_01110I),_OO__I11IIO1O)
end function
onLicenseError=function(_IOOI01I1I_0O,_1_1O1011I01_,_01_OIO10III0)
_01_OIO10III0.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H52)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=2),_IOOI01I1I_0O,_1_1O1011I01_)
end function
_0III10O01II1(licenseRequest,(Chr(&H50)+Chr(&H4f)+Chr(&H53)+Chr(&H54)),onLicenseSuccess,onLicenseError,_10OIIOI00011)
end sub
