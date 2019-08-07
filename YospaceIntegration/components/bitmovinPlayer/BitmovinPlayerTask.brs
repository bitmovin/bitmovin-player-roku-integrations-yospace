sub init()
m.top.functionName="_0_00011_0I11"
m.deficiencyFactory=_1IO0O_1101II()
m.Errors=m.deficiencyFactory.getErrors()
end sub
sub _O_001IO0I1I0()
impression=_I0I1O_I_0I00((Chr(&H68)+Chr(116)+Chr(&H74)+Chr(&H70)+Chr(115)+Chr(&H3a)+Chr(&H2f)+Chr(47)+Chr(&H6c)+Chr(&H69)+Chr(99)+Chr(101)+Chr(110)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(46)+Chr(&H62)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H2e)+Chr(99)+Chr(&H6f)+Chr(109)+Chr(&H2f)+Chr(105)+Chr(109)+Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)))
onSuccess=function(__O1I010I11__,_1_I00OI_OIO_)
?(Chr(&H49)+Chr(109)+Chr(112)+Chr(114)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H20)+Chr(114)+Chr(&H65)+Chr(113)+Chr(&H75)+Chr(101)+Chr(115)+Chr(116)+Chr(32)+Chr(&H77)+Chr(&H61)+Chr(115)+Chr(32)+Chr(&H73)+Chr(&H75)+Chr(99)+Chr(&H63)+Chr(&H65)+Chr(115)+Chr(115)+Chr(102)+Chr(117)+Chr(&H6c))
end function
onError=function(_0110_I0IOI_I,_1_IOIO1O_I00)
?(Chr(&H49)+Chr(109)+Chr(&H70)+Chr(&H72)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H20)+Chr(&H72)+Chr(&H65)+Chr(&H71)+Chr(117)+Chr(101)+Chr(115)+Chr(&H74)+Chr(32)+Chr(&H66)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(100))
end function
_1I000IIO_01_(impression,(Chr(&H50)+Chr(79)+Chr(83)+Chr(&H54)),onSuccess,onError,{"domain":m.top.config.channelID+(Chr(&H2e)+Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(&H75)),"key":m.top.config.key,"type":(Chr(&H72)+Chr(111)+Chr(107)+Chr(&H75)),"version":m.top.config.version})
end sub
function _1OI101001101()
licenseRequest=_I0I1O_I_0I00((Chr(104)+Chr(116)+Chr(&H74)+Chr(&H70)+Chr(115)+Chr(58)+Chr(47)+Chr(47)+Chr(108)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(46)+Chr(98)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H2e)+Chr(99)+Chr(&H6f)+Chr(&H6d)+Chr(47)+Chr(&H6c)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(115)+Chr(&H69)+Chr(&H6e)+Chr(&H67)))
onLicenseSuccess=function(_III__1O_O0O_,_I000_OIO01II)
if _III__1O_O0O_.status=(Chr(103)+Chr(114)+Chr(&H61)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(100))
?(Chr(&H41)+Chr(99)+Chr(&H63)+Chr(&H65)+Chr(115)+Chr(115)+Chr(32)+Chr(103)+Chr(114)+Chr(&H61)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(100)+Chr(&H3a)+Chr(32));_III__1O_O0O_.message
else if _III__1O_O0O_.status=(Chr(&H64)+Chr(101)+Chr(&H6e)+Chr(&H69)+Chr(&H65)+Chr(&H64))
m.top.error=m.deficiencyFactory.createError(m.Errors.SETUP_LICENSE_ERROR)
end if
end function
onLicenseError=function(___O1011__1I1,_II11OO0O00__)
?(Chr(76)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(115)+Chr(&H65)+Chr(&H20)+Chr(114)+Chr(&H65)+Chr(&H71)+Chr(117)+Chr(101)+Chr(115)+Chr(&H74)+Chr(32)+Chr(&H66)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(&H64))
end function
_1I000IIO_01_(licenseRequest,(Chr(80)+Chr(79)+Chr(83)+Chr(&H54)),onLicenseSuccess,onLicenseError,{"domain":m.top.config.channelID+(Chr(&H2e)+Chr(&H72)+Chr(&H6f)+Chr(107)+Chr(&H75)),"key":m.top.config.key,"version":m.top.config.version})
end function
sub _0_00011_0I11()
_1OI101001101()
port=CreateObject((Chr(&H72)+Chr(111)+Chr(77)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(101)+Chr(&H50)+Chr(&H6f)+Chr(&H72)+Chr(&H74)))
m.top.observeFieldScoped((Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(83)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),port)
while(1=1)
msg=wait(0,port)
if type(msg)=(Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(116))
if msg.GetField()=(Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(83)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65))
if msg.GetData()=(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(&H67)) and m.top.fireImpression<>(1=2)
_O_001IO0I1I0()
m.top.fireImpression=(1=2)
else if msg.GetData()=(Chr(102)+Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(&H64))
m.top.fireImpression=(1=1)
end if
end if
end if
end while
end sub
