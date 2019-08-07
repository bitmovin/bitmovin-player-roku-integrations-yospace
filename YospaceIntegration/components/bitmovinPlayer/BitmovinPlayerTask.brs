sub init()
m.top.functionName="_OIOO1O0I1I0_"
m.deficiencyFactory=_OI10O1_OII_0()
m.Errors=m.deficiencyFactory.getErrors()
end sub
sub _OOO10O1O_0I_()
impression=_0I_I_0OIO0_0((Chr(&H68)+Chr(&H74)+Chr(116)+Chr(&H70)+Chr(115)+Chr(58)+Chr(&H2f)+Chr(&H2f)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(&H2e)+Chr(98)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(46)+Chr(99)+Chr(111)+Chr(&H6d)+Chr(&H2f)+Chr(&H69)+Chr(&H6d)+Chr(112)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(115)+Chr(105)+Chr(111)+Chr(110)))
onSuccess=function(_1I__IOOI00O0,_0_I0O11O_01_)
?(Chr(&H49)+Chr(&H6d)+Chr(112)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(32)+Chr(114)+Chr(101)+Chr(&H71)+Chr(&H75)+Chr(101)+Chr(&H73)+Chr(116)+Chr(&H20)+Chr(119)+Chr(97)+Chr(115)+Chr(32)+Chr(&H73)+Chr(&H75)+Chr(99)+Chr(99)+Chr(&H65)+Chr(115)+Chr(115)+Chr(102)+Chr(117)+Chr(108))
end function
onError=function(_I_011II_I0O1,_I_0II10I0OIO)
?(Chr(&H49)+Chr(109)+Chr(112)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H20)+Chr(114)+Chr(101)+Chr(113)+Chr(117)+Chr(101)+Chr(115)+Chr(&H74)+Chr(32)+Chr(102)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H64))
end function
_1_I01O1O01_O(impression,(Chr(&H50)+Chr(&H4f)+Chr(&H53)+Chr(84)),onSuccess,onError,{"domain":m.top.config.channelID+(Chr(46)+Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(117)),"key":m.top.config.key,"type":(Chr(&H72)+Chr(111)+Chr(107)+Chr(117)),"version":m.top.config.version})
end sub
function _O1O_OI__O11O()
licenseRequest=_0I_I_0OIO0_0((Chr(&H68)+Chr(116)+Chr(116)+Chr(112)+Chr(&H73)+Chr(&H3a)+Chr(&H2f)+Chr(&H2f)+Chr(108)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(46)+Chr(&H62)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(46)+Chr(99)+Chr(&H6f)+Chr(&H6d)+Chr(47)+Chr(&H6c)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(103)))
onLicenseSuccess=function(_1I_1_0011_O_,_1O0O_0III0_I)
if _1I_1_0011_O_.status=(Chr(&H67)+Chr(114)+Chr(&H61)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H64))
?(Chr(65)+Chr(&H63)+Chr(&H63)+Chr(101)+Chr(115)+Chr(115)+Chr(32)+Chr(&H67)+Chr(114)+Chr(97)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(100)+Chr(&H3a)+Chr(32));_1I_1_0011_O_.message
else if _1I_1_0011_O_.status=(Chr(&H64)+Chr(101)+Chr(110)+Chr(105)+Chr(101)+Chr(&H64))
m.top.error=m.deficiencyFactory.createError(m.Errors.SETUP_LICENSE_ERROR)
end if
end function
onLicenseError=function(__O011000001_,__000O_10_01O)
?(Chr(&H4c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(&H20)+Chr(&H72)+Chr(101)+Chr(&H71)+Chr(117)+Chr(101)+Chr(&H73)+Chr(&H74)+Chr(&H20)+Chr(102)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(&H64))
end function
_1_I01O1O01_O(licenseRequest,(Chr(&H50)+Chr(79)+Chr(83)+Chr(84)),onLicenseSuccess,onLicenseError,{"domain":m.top.config.channelID+(Chr(46)+Chr(114)+Chr(&H6f)+Chr(107)+Chr(117)),"key":m.top.config.key,"version":m.top.config.version})
end function
sub _OIOO1O0I1I0_()
_O1O_OI__O11O()
port=CreateObject((Chr(&H72)+Chr(111)+Chr(77)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(97)+Chr(&H67)+Chr(101)+Chr(80)+Chr(&H6f)+Chr(114)+Chr(116)))
m.top.observeFieldScoped((Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(83)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)),port)
while(1=1)
msg=wait(0,port)
if type(msg)=(Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116))
if msg.GetField()=(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101))
if msg.GetData()=(Chr(&H70)+Chr(108)+Chr(97)+Chr(121)+Chr(105)+Chr(&H6e)+Chr(103)) and m.top.fireImpression<>(1=2)
_OOO10O1O_0I_()
m.top.fireImpression=(1=2)
else if msg.GetData()=(Chr(102)+Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(115)+Chr(104)+Chr(&H65)+Chr(&H64))
m.top.fireImpression=(1=1)
end if
end if
end if
end while
end sub
