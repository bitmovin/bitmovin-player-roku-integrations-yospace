sub init()
m.top.functionName="_OO01I_1_1000"
m.deficiencyFactory=_1_00O_O11I_1()
m.Errors=m.deficiencyFactory.getErrors()
end sub
sub _O0I0_0O11IO0()
impression=_O0I0__1_010I((Chr(&H68)+Chr(&H74)+Chr(&H74)+Chr(112)+Chr(&H73)+Chr(&H3a)+Chr(47)+Chr(47)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(110)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(&H2e)+Chr(98)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(46)+Chr(99)+Chr(111)+Chr(&H6d)+Chr(&H2f)+Chr(&H69)+Chr(&H6d)+Chr(&H70)+Chr(114)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(105)+Chr(111)+Chr(&H6e)))
onSuccess=function(_OO1OO10O1_O0,_IO0__OI10I__)
?(Chr(73)+Chr(&H6d)+Chr(&H70)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(115)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(32)+Chr(&H72)+Chr(101)+Chr(113)+Chr(117)+Chr(101)+Chr(115)+Chr(116)+Chr(&H20)+Chr(&H77)+Chr(&H61)+Chr(115)+Chr(32)+Chr(&H73)+Chr(&H75)+Chr(&H63)+Chr(&H63)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H66)+Chr(&H75)+Chr(&H6c))
end function
onError=function(_O10_1_0001_I,_00_IOOOO_00_)
?(Chr(73)+Chr(109)+Chr(112)+Chr(114)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(32)+Chr(&H72)+Chr(101)+Chr(113)+Chr(117)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H20)+Chr(&H66)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H64))
end function
_11OO1OIO0II0(impression,(Chr(80)+Chr(&H4f)+Chr(83)+Chr(84)),onSuccess,onError,{"domain":m.top.config.channelID+(Chr(46)+Chr(114)+Chr(111)+Chr(107)+Chr(&H75)),"key":m.top.config.key,"type":(Chr(114)+Chr(111)+Chr(107)+Chr(&H75)),"version":m.top.config.version})
end sub
function _0_OO0__1I01O()
licenseRequest=_O0I0__1_010I((Chr(104)+Chr(116)+Chr(116)+Chr(112)+Chr(&H73)+Chr(&H3a)+Chr(47)+Chr(&H2f)+Chr(108)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(46)+Chr(&H62)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(&H2e)+Chr(99)+Chr(111)+Chr(&H6d)+Chr(47)+Chr(108)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(105)+Chr(110)+Chr(103)))
onLicenseSuccess=function(_II1OOIIO0I0_,_I1O1111___0I)
if _II1OOIIO0I0_.status=(Chr(&H67)+Chr(&H72)+Chr(97)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H64))
?(Chr(65)+Chr(99)+Chr(99)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H20)+Chr(&H67)+Chr(&H72)+Chr(&H61)+Chr(110)+Chr(&H74)+Chr(101)+Chr(&H64)+Chr(&H3a)+Chr(32));_II1OOIIO0I0_.message
else if _II1OOIIO0I0_.status=(Chr(&H64)+Chr(&H65)+Chr(110)+Chr(105)+Chr(101)+Chr(&H64))
m.top.error=m.deficiencyFactory.createError(m.Errors.SETUP_LICENSE_ERROR)
end if
end function
onLicenseError=function(_IO1OI_I10OI1,___011I0O_OO0)
?(Chr(&H4c)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(32)+Chr(114)+Chr(101)+Chr(113)+Chr(117)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H20)+Chr(102)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(&H64))
end function
_11OO1OIO0II0(licenseRequest,(Chr(80)+Chr(&H4f)+Chr(&H53)+Chr(84)),onLicenseSuccess,onLicenseError,{"domain":m.top.config.channelID+(Chr(&H2e)+Chr(114)+Chr(111)+Chr(107)+Chr(&H75)),"key":m.top.config.key,"version":m.top.config.version})
end function
sub _OO01I_1_1000()
_0_OO0__1I01O()
port=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H4d)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(97)+Chr(&H67)+Chr(101)+Chr(&H50)+Chr(&H6f)+Chr(114)+Chr(116)))
m.top.observeFieldScoped((Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),port)
while(1=1)
msg=wait(0,port)
if type(msg)=(Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116))
if msg.GetField()=(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101))
if msg.GetData()=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(&H6e)+Chr(&H67)) and m.top.fireImpression<>(1=2)
_O0I0_0O11IO0()
m.top.fireImpression=(1=2)
else if msg.GetData()=(Chr(102)+Chr(&H69)+Chr(110)+Chr(&H69)+Chr(115)+Chr(&H68)+Chr(&H65)+Chr(&H64))
m.top.fireImpression=(1=1)
end if
end if
end if
end while
end sub
