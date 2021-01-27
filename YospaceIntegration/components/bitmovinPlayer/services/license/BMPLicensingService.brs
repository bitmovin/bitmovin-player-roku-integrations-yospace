sub init()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(111)+Chr(&H72)+Chr(&H79)))
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
m.ServiceEndpoints=_OI0O__0OII11()
m.appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(65)+Chr(112)+Chr(&H70)+Chr(73)+Chr(110)+Chr(102)+Chr(111)))
m.deficiencyFactory=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H44)+Chr(&H65)+Chr(102)+Chr(&H69)+Chr(99)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(&H73)))
m.playerLicense={}
m.playerLicense.previousKey=Chr(0)
m.playerLicense.key=Chr(0)
m.eventFactory=_0_1_1IO_0_IO()
m.BitmovinFields=_O_10OO110010()
end sub
function initializeService(_I_IO1I011IOO,_OOO__0O_11OO,_0_1I1011IOI0)
m.deficiencyService=_I_IO1I011IOO
m.bitmovinPlayerTask=_OOO__0O_11OO
m.playerVersion=_0_1I1011IOI0
end function
function updateConfig(___I1_0011___)
m.config=___I1_0011___
m.playerLicense.key=getLicenseKey()
m.checkLicenseOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY,m.ServiceEndpoints.LICENSE,{"domain":m.appInfo.getID()+(Chr(&H2e)+Chr(114)+Chr(111)+Chr(&H6b)+Chr(&H75)),"key":m.playerLicense.key,"version":m.playerVersion})
end function
sub doPlayerLicenseCheck()
if not __0__01I0III_(m.playerLicense)return 
m.playerLicense.previousKey=m.playerLicense.key
m.checkLicenseOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)),(Chr(&H5f)+Chr(95)+Chr(&H49)+Chr(&H30)+Chr(&H49)+Chr(79)+Chr(48)+Chr(49)+Chr(95)+Chr(&H5f)+Chr(48)+Chr(48)+Chr(&H30)))
m.checkLicenseOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub __I0IO01__000(_O1___00O1_0I)
response=_O1___00O1_0I.getData().response
if response.status=(Chr(&H64)+Chr(&H65)+Chr(&H6e)+Chr(105)+Chr(101)+Chr(100))
error=m.deficiencyFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H45)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),m.Errors.SETUP_LICENSE_ERROR)
m.deficiencyService.callFunc((Chr(&H6f)+Chr(110)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)),error)
else if response.status=(Chr(&H67)+Chr(114)+Chr(&H61)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(100))
m.top.eventOccurred=m.eventFactory.createLicenseValidatedEvent(_O1___00O1_0I,m.BitmovinFields.LICENSE_VALIDATED)
end if
m.checkLicenseOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)))
end sub
function getLicenseKey()
if ___0O_II_00I_(m.config)or ___0O_II_00I_(m.appInfo)return invalid 
licenseKey=_1OO_001I0I1I(m.config,[(Chr(&H6b)+Chr(&H65)+Chr(121))])
if ___0O_II_00I_(licenseKey)
licenseKey=m.appInfo.getValue((Chr(&H62)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(95)+Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(95)+Chr(&H6c)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(95)+Chr(107)+Chr(101)+Chr(121)))
end if
return licenseKey 
end function
function __0__01I0III_(_II01O0IOO1I0)
if ___0O_II_00I_(_II01O0IOO1I0.key)or Len(_II01O0IOO1I0.key)=0
return(1=1) 
else if _II01O0IOO1I0.key<>_II01O0IOO1I0.previousKey
return(1=1) 
else 
return(1=2) 
end if
end function
