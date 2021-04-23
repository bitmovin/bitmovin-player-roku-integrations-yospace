sub init()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H46)+Chr(97)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
m.ServiceEndpoints=__II_0101I1OO()
m.appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(65)+Chr(&H70)+Chr(112)+Chr(&H49)+Chr(110)+Chr(102)+Chr(111)))
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(68)+Chr(&H65)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(115)))
m.playerLicense={}
m.playerLicense.previousKey=Chr(0)
m.playerLicense.key=Chr(0)
m.eventFactory=_0I__010_III_()
m.BitmovinFields=_0OOO_00I01OO()
end sub
function initializeService(_0II01O_I10II,_0__0I0IO1O1I,_0IIO00IO1I0O)
m.deficiencyService=_0II01O_I10II
m.bitmovinPlayerTask=_0__0I0IO1O1I
m.playerVersion=_0IIO00IO1I0O
end function
function updateConfig(__0IOOOI__OIO)
m.config=__0IOOOI__OIO
m.playerLicense.key=getLicenseKey()
m.checkLicenseOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY,m.ServiceEndpoints.LICENSE,{"domain":m.appInfo.getID()+(Chr(46)+Chr(114)+Chr(111)+Chr(107)+Chr(117)),"key":m.playerLicense.key,"version":m.playerVersion})
end function
sub doPlayerLicenseCheck()
if not _O_IO1100_0_I(m.playerLicense)return 
m.playerLicense.previousKey=m.playerLicense.key
m.checkLicenseOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(Chr(&H5f)+Chr(79)+Chr(49)+Chr(95)+Chr(49)+Chr(&H49)+Chr(&H31)+Chr(49)+Chr(79)+Chr(&H49)+Chr(95)+Chr(79)+Chr(73)))
m.checkLicenseOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _O1_1I11OI_OI(_1II0_O1_0_II)
response=_1II0_O1_0_II.getData().response
if response.status=(Chr(&H64)+Chr(&H65)+Chr(110)+Chr(105)+Chr(&H65)+Chr(100))
error=m.deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(69)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)),m.Errors.SETUP_LICENSE_ERROR)
m.deficiencyService.callFunc((Chr(111)+Chr(&H6e)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)),error)
else if response.status=(Chr(103)+Chr(&H72)+Chr(97)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H64))
m.top.eventOccurred=m.eventFactory.createLicenseValidatedEvent(_1II0_O1_0_II,m.BitmovinFields.LICENSE_VALIDATED)
end if
m.checkLicenseOperation.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)))
end sub
function getLicenseKey()
if _1100IO1O_0_I(m.config)or _1100IO1O_0_I(m.appInfo)return invalid 
licenseKey=_1OI1001I_1I1(m.config,[(Chr(107)+Chr(101)+Chr(121))])
if _1100IO1O_0_I(licenseKey)
licenseKey=m.appInfo.getValue((Chr(98)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(95)+Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(95)+Chr(108)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(101)+Chr(&H5f)+Chr(107)+Chr(101)+Chr(&H79)))
end if
return licenseKey 
end function
function _O_IO1100_0_I(_0OI1OI0OI_1O)
if _1100IO1O_0_I(_0OI1OI0OI_1O.key)or Len(_0OI1OI0OI_1O.key)=0
return(1=1) 
else if _0OI1OI0OI_1O.key<>_0OI1OI0OI_1O.previousKey
return(1=1) 
else 
return(1=2) 
end if
end function
