sub init()
m.top.functionName="__III01IO0_IO"
m.deficiencyFactory=_OOI_I1I1_I01()
m.Errors=m.deficiencyFactory.getErrors()
end sub
sub _1_0010OI_II1()
impression=_00OI0_III1_O((Chr(104)+Chr(116)+Chr(116)+Chr(112)+Chr(115)+Chr(58)+Chr(47)+Chr(&H2f)+Chr(108)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(&H2e)+Chr(&H62)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(46)+Chr(99)+Chr(&H6f)+Chr(&H6d)+Chr(47)+Chr(&H69)+Chr(&H6d)+Chr(112)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H69)+Chr(111)+Chr(110)))
onSuccess=function(_010__1II1O1_,_11O0O10I____)
?(Chr(73)+Chr(109)+Chr(&H70)+Chr(114)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(105)+Chr(111)+Chr(110)+Chr(&H20)+Chr(&H72)+Chr(&H65)+Chr(&H71)+Chr(117)+Chr(&H65)+Chr(&H73)+Chr(&H74)+Chr(&H20)+Chr(119)+Chr(&H61)+Chr(&H73)+Chr(&H20)+Chr(&H73)+Chr(117)+Chr(99)+Chr(&H63)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H66)+Chr(117)+Chr(&H6c))
end function
onError=function(_O11I0I_1OO10,_0O0_1_O1_1O0)
?(Chr(73)+Chr(&H6d)+Chr(112)+Chr(&H72)+Chr(101)+Chr(115)+Chr(&H73)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(32)+Chr(&H72)+Chr(&H65)+Chr(113)+Chr(117)+Chr(101)+Chr(115)+Chr(116)+Chr(32)+Chr(102)+Chr(97)+Chr(&H69)+Chr(108)+Chr(101)+Chr(&H64))
end function
_1IOII1_10OIO(impression,(Chr(80)+Chr(&H4f)+Chr(&H53)+Chr(&H54)),onSuccess,onError,{"domain":m.top.config.channelID+(Chr(&H2e)+Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(117)),"key":m.top.config.key,"type":(Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)),"version":m.top.config.version})
end sub
function __000_1I0OO10()
licenseRequest=_00OI0_III1_O((Chr(104)+Chr(&H74)+Chr(&H74)+Chr(&H70)+Chr(115)+Chr(&H3a)+Chr(&H2f)+Chr(47)+Chr(108)+Chr(&H69)+Chr(99)+Chr(101)+Chr(110)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(46)+Chr(98)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H2e)+Chr(99)+Chr(111)+Chr(109)+Chr(&H2f)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(&H69)+Chr(&H6e)+Chr(&H67)))
onLicenseSuccess=function(_O10_0I10III1,_III0OI_III_1)
if _O10_0I10III1.status=(Chr(103)+Chr(114)+Chr(&H61)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(&H64))
?(Chr(65)+Chr(99)+Chr(99)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(32)+Chr(&H67)+Chr(114)+Chr(&H61)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H64)+Chr(58)+Chr(32));_O10_0I10III1.message
else if _O10_0I10III1.status=(Chr(&H64)+Chr(&H65)+Chr(110)+Chr(105)+Chr(&H65)+Chr(100))
m.top.error=m.deficiencyFactory.createError(m.Errors.SETUP_LICENSE_ERROR)
end if
end function
onLicenseError=function(_OI10IO0O100I,_I11000I0_0OO)
?(Chr(76)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(32)+Chr(&H72)+Chr(101)+Chr(113)+Chr(117)+Chr(101)+Chr(&H73)+Chr(116)+Chr(32)+Chr(102)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H64))
end function
_1IOII1_10OIO(licenseRequest,(Chr(&H50)+Chr(79)+Chr(&H53)+Chr(&H54)),onLicenseSuccess,onLicenseError,{"domain":m.top.config.channelID+(Chr(&H2e)+Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(117)),"key":m.top.config.key,"version":m.top.config.version})
end function
sub __III01IO0_IO()
__000_1I0OO10()
port=CreateObject((Chr(114)+Chr(&H6f)+Chr(77)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(101)+Chr(80)+Chr(111)+Chr(114)+Chr(116)))
m.top.observeFieldScoped((Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(83)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),port)
while(1=1)
msg=wait(0,port)
if type(msg)=(Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74))
if msg.GetField()=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101))
if msg.GetData()=(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(103)) and m.top.fireImpression<>(1=2)
_1_0010OI_II1()
m.top.fireImpression=(1=2)
else if msg.GetData()=(Chr(102)+Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(&H73)+Chr(&H68)+Chr(101)+Chr(100))
m.top.fireImpression=(1=1)
end if
end if
end if
end while
end sub
