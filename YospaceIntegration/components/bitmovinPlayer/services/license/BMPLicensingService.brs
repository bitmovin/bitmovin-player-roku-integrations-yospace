sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(&H79)))
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
m.ServiceEndpoints=_1I1O_1I0__10()
m.appInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(112)+Chr(112)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(111)))
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(68)+Chr(&H65)+Chr(102)+Chr(105)+Chr(99)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(99)+Chr(121)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(111)+Chr(&H72)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(115)))
m.playerLicense={}
m.playerLicense.previousKey=Chr(0)
m.playerLicense.key=Chr(0)
m.eventFactory=_I1I_O1I0I100()
m.BitmovinFields=_I__1I0I_O__0()
end sub
function initializeService(___OOOIO_00O_,_O__I0011OI1I,_O_I10__0I_0I)
m.deficiencyService=___OOOIO_00O_
m.bitmovinPlayerTask=_O__I0011OI1I
m.playerVersion=_O_I10__0I_0I
end function
function updateConfig(_I0I1__I_II_1)
m.config=_I0I1__I_II_1
m.playerLicense.key=getLicenseKey()
m.checkLicenseOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY,m.ServiceEndpoints.LICENSE,{"domain":m.appInfo.getID()+(Chr(&H2e)+Chr(&H72)+Chr(111)+Chr(107)+Chr(117)),"key":m.playerLicense.key,"version":m.playerVersion})
end function
sub doPlayerLicenseCheck()
if not _II_O100OII__(m.playerLicense)return 
m.playerLicense.previousKey=m.playerLicense.key
m.checkLicenseOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)),(Chr(&H5f)+Chr(&H5f)+Chr(73)+Chr(&H30)+Chr(48)+Chr(95)+Chr(79)+Chr(48)+Chr(&H4f)+Chr(48)+Chr(79)+Chr(&H49)+Chr(&H49)))
m.checkLicenseOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub __I00_O0O0OII(___II_10__OI0)
response=___II_10__OI0.getData().response
if response.status=(Chr(100)+Chr(&H65)+Chr(&H6e)+Chr(105)+Chr(&H65)+Chr(&H64))
error=m.deficiencyFactory.callFunc((Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H45)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)),m.Errors.SETUP_LICENSE_ERROR)
m.deficiencyService.callFunc((Chr(&H6f)+Chr(110)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)),error)
else if response.status=(Chr(103)+Chr(&H72)+Chr(97)+Chr(110)+Chr(116)+Chr(101)+Chr(100))
m.top.eventOccurred=m.eventFactory.createLicenseValidatedEvent(___II_10__OI0,m.BitmovinFields.LICENSE_VALIDATED)
end if
m.checkLicenseOperation.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)))
end sub
function getLicenseKey()
if _OO_O1_O1O0O_(m.config)or _OO_O1_O1O0O_(m.appInfo)return invalid 
licenseKey=_10_O10O0_11I(m.config,[(Chr(107)+Chr(&H65)+Chr(&H79))])
if _OO_O1_O1O0O_(licenseKey)
licenseKey=m.appInfo.getValue((Chr(&H62)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(95)+Chr(112)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(95)+Chr(108)+Chr(&H69)+Chr(99)+Chr(101)+Chr(110)+Chr(&H73)+Chr(101)+Chr(&H5f)+Chr(&H6b)+Chr(101)+Chr(121)))
end if
return licenseKey 
end function
function _II_O100OII__(_1IIO1III110O)
if _OO_O1_O1O0O_(_1IIO1III110O.key)or Len(_1IIO1III110O.key)=0
return(1=1) 
else if _1IIO1III110O.key<>_1IIO1III110O.previousKey
return(1=1) 
else 
return(1=2) 
end if
end function
