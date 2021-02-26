sub init()
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
end sub
sub executeOperation(_10I_1I0OOI_0)
if _OO_O1_O1O0O_(_10I_1I0OOI_0.data)or _OO_O1_O1O0O_(_10I_1I0OOI_0.data.url)
?(Chr(76)+Chr(105)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(32)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)+Chr(&H20)+Chr(87)+Chr(&H6f)+Chr(&H72)+Chr(107)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(&H63)+Chr(97)+Chr(&H6e)+Chr(39)+Chr(116)+Chr(&H20)+Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(32)+Chr(116)+Chr(104)+Chr(101)+Chr(&H20)+Chr(&H6f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(33)+Chr(&H20)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(110)+Chr(&H76)+Chr(&H61)+Chr(108)+Chr(105)+Chr(100)+Chr(&H20)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(97)+Chr(46))
return 
end if
if _10I_1I0OOI_0.type=m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY _O011I_1_1O10(_10I_1I0OOI_0)
end sub
sub _O011I_1_1O10(_I_IO1O0_I00_)
licenseRequest=_11I00IO1OI10(_I_IO1O0_I00_.data.url)
onLicenseSuccess=function(_00O0OI0_1_1O,___1I10OI_I_1,_OIO0__I1_O_O)
_OIO0__I1_O_O.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=1),ParseJSON(_00O0OI0_1_1O),___1I10OI_I_1)
end function
onLicenseError=function(_I1OO0O0I0I10,_____OO1II011,_0O0I_OO0IO11)
_0O0I_OO0IO11.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=2),_I1OO0O0I0I10,_____OO1II011)
end function
_1001IIOO_O_O(licenseRequest,(Chr(80)+Chr(&H4f)+Chr(83)+Chr(&H54)),onLicenseSuccess,onLicenseError,_I_IO1O0_I00_)
end sub
