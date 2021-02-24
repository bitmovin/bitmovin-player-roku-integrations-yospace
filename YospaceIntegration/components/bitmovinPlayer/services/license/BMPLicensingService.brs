sub init()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(111)+Chr(114)+Chr(121)))
m.BitmovinAsyncOperationTypes=___IO10I10001()
m.ServiceEndpoints=__01_00_1O_OI()
m.appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(65)+Chr(&H70)+Chr(&H70)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(&H6f)))
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(68)+Chr(&H65)+Chr(&H66)+Chr(&H69)+Chr(&H63)+Chr(105)+Chr(&H65)+Chr(110)+Chr(99)+Chr(&H79)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(111)+Chr(114)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(69)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H73)))
m.playerLicense={}
m.playerLicense.previousKey=Chr(0)
m.playerLicense.key=Chr(0)
m.eventFactory=_III0OO_011_1()
m.BitmovinFields=_OO0OOO1IOII_()
end sub
function initializeService(_O1O1O_O1OOO_,___0O1IO_I_0I,_0OI110OOIO01)
m.deficiencyService=_O1O1O_O1OOO_
m.bitmovinPlayerTask=___0O1IO_I_0I
m.playerVersion=_0OI110OOIO01
end function
function updateConfig(_0I1O_O0_O100)
m.config=_0I1O_O0_O100
m.playerLicense.key=getLicenseKey()
m.checkLicenseOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY,m.ServiceEndpoints.LICENSE,{"domain":m.appInfo.getID()+(Chr(46)+Chr(&H72)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)),"key":m.playerLicense.key,"version":m.playerVersion})
end function
sub doPlayerLicenseCheck()
if not _O0OII_O_0O00(m.playerLicense)return 
m.playerLicense.previousKey=m.playerLicense.key
m.checkLicenseOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(95)+Chr(73)+Chr(&H31)+Chr(95)+Chr(&H5f)+Chr(49)+Chr(79)+Chr(95)+Chr(48)+Chr(48)+Chr(&H5f)+Chr(79)+Chr(73)))
m.checkLicenseOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _I1__1O_00_OI(_O11O0_1I1_1I)
response=_O11O0_1I1_1I.getData().response
if response.status=(Chr(100)+Chr(&H65)+Chr(&H6e)+Chr(&H69)+Chr(101)+Chr(&H64))
error=m.deficiencyFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H45)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),m.Errors.SETUP_LICENSE_ERROR)
m.deficiencyService.callFunc((Chr(&H6f)+Chr(&H6e)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)),error)
else if response.status=(Chr(&H67)+Chr(&H72)+Chr(&H61)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H64))
m.top.eventOccurred=m.eventFactory.createLicenseValidatedEvent(_O11O0_1I1_1I,m.BitmovinFields.LICENSE_VALIDATED)
end if
m.checkLicenseOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)))
end sub
function getLicenseKey()
if __OOI0OI11_O0(m.config)or __OOI0OI11_O0(m.appInfo)return invalid 
licenseKey=_OI011OO01O10(m.config,[(Chr(107)+Chr(101)+Chr(121))])
if __OOI0OI11_O0(licenseKey)
licenseKey=m.appInfo.getValue((Chr(98)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(95)+Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H5f)+Chr(108)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(115)+Chr(101)+Chr(&H5f)+Chr(107)+Chr(101)+Chr(&H79)))
end if
return licenseKey 
end function
function _O0OII_O_0O00(_I0_I1OI__1IO)
if __OOI0OI11_O0(_I0_I1OI__1IO.key)or Len(_I0_I1OI__1IO.key)=0
return(1=1) 
else if _I0_I1OI__1IO.key<>_I0_I1OI__1IO.previousKey
return(1=1) 
else 
return(1=2) 
end if
end function
