sub init()
m.top.functionName="_O0_0O_IIOI10"
m.deficiencyFactory=_0_I_O__III__()
m.Errors=m.deficiencyFactory.getErrors()
end sub
sub _I0O00I0IO1O0()
impression=_0_0_11_01O1I((Chr(&H68)+Chr(116)+Chr(116)+Chr(112)+Chr(115)+Chr(58)+Chr(&H2f)+Chr(47)+Chr(&H6c)+Chr(105)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(46)+Chr(&H62)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(46)+Chr(99)+Chr(111)+Chr(109)+Chr(&H2f)+Chr(105)+Chr(&H6d)+Chr(112)+Chr(114)+Chr(101)+Chr(115)+Chr(115)+Chr(&H69)+Chr(111)+Chr(110)))
onSuccess=function(_00O_I_1O1_1I,_00O1001_IOI_)
?(Chr(&H49)+Chr(109)+Chr(112)+Chr(114)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H69)+Chr(111)+Chr(110)+Chr(32)+Chr(&H72)+Chr(101)+Chr(113)+Chr(&H75)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H20)+Chr(119)+Chr(&H61)+Chr(115)+Chr(32)+Chr(115)+Chr(&H75)+Chr(99)+Chr(&H63)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H66)+Chr(&H75)+Chr(&H6c))
end function
onError=function(_I1I_1I1_10__,__OIO0_0_O___)
?(Chr(73)+Chr(109)+Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H20)+Chr(114)+Chr(101)+Chr(113)+Chr(117)+Chr(&H65)+Chr(115)+Chr(&H74)+Chr(&H20)+Chr(102)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(100))
end function
__IIO01IOOI01(impression,(Chr(&H50)+Chr(79)+Chr(83)+Chr(84)),onSuccess,onError,{"domain":m.top.config.channelID+(Chr(46)+Chr(&H72)+Chr(&H6f)+Chr(&H6b)+Chr(117)),"key":m.top.config.key,"type":(Chr(114)+Chr(111)+Chr(107)+Chr(&H75)),"version":m.top.config.version})
end sub
function _IO1I0100I_I1()
licenseRequest=_0_0_11_01O1I((Chr(&H68)+Chr(116)+Chr(&H74)+Chr(112)+Chr(115)+Chr(&H3a)+Chr(&H2f)+Chr(&H2f)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(105)+Chr(110)+Chr(103)+Chr(&H2e)+Chr(98)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(&H2e)+Chr(99)+Chr(&H6f)+Chr(&H6d)+Chr(47)+Chr(&H6c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(103)))
onLicenseSuccess=function(_OIO1IO0_0OOO,__O_O0I_I1O00)
responseJson=ParseJSON(_OIO1IO0_0OOO)
if responseJson.status=(Chr(&H67)+Chr(&H72)+Chr(97)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(100))
?(Chr(&H41)+Chr(99)+Chr(&H63)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(32)+Chr(&H67)+Chr(&H72)+Chr(&H61)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H64)+Chr(&H3a)+Chr(&H20));responseJson.message
else if responseJson.status=(Chr(100)+Chr(101)+Chr(110)+Chr(&H69)+Chr(&H65)+Chr(100))
m.top.error=m.deficiencyFactory.createError(m.Errors.SETUP_LICENSE_ERROR)
end if
end function
onLicenseError=function(_O01O1I00O01O,_0_0O101OOOI_)
?(Chr(&H4c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(32)+Chr(&H72)+Chr(&H65)+Chr(&H71)+Chr(&H75)+Chr(&H65)+Chr(&H73)+Chr(&H74)+Chr(32)+Chr(&H66)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(101)+Chr(&H64))
end function
__IIO01IOOI01(licenseRequest,(Chr(80)+Chr(79)+Chr(&H53)+Chr(&H54)),onLicenseSuccess,onLicenseError,{"domain":m.top.config.channelID+(Chr(46)+Chr(&H72)+Chr(111)+Chr(107)+Chr(117)),"key":m.top.config.key,"version":m.top.config.version})
end function
sub _O0_0O_IIOI10()
_IO1I0100I_I1()
port=CreateObject((Chr(&H72)+Chr(111)+Chr(&H4d)+Chr(101)+Chr(115)+Chr(115)+Chr(&H61)+Chr(&H67)+Chr(&H65)+Chr(80)+Chr(&H6f)+Chr(&H72)+Chr(116)))
m.top.observeFieldScoped((Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)),port)
while(1=1)
msg=wait(0,port)
if type(msg)=(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116))
if msg.GetField()=(Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101))
if msg.GetData()=(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(&H67)) and m.top.fireImpression<>(1=2)
_I0O00I0IO1O0()
m.top.fireImpression=(1=2)
else if msg.GetData()=(Chr(102)+Chr(105)+Chr(&H6e)+Chr(105)+Chr(115)+Chr(104)+Chr(&H65)+Chr(&H64))
m.top.fireImpression=(1=1)
end if
end if
end if
end while
end sub
