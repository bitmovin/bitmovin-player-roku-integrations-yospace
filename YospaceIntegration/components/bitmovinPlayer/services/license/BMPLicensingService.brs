sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(70)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(111)+Chr(114)+Chr(121)))
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
m.ServiceEndpoints=_O1I1OO0_II0I()
m.appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(65)+Chr(&H70)+Chr(&H70)+Chr(&H49)+Chr(110)+Chr(102)+Chr(111)))
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H44)+Chr(&H65)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(&H79)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(69)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(115)))
m.playerLicense={}
m.playerLicense.previousKey=Chr(0)
m.playerLicense.key=Chr(0)
m.internalEventFactory=_IOI0_011_1O1()
m.BitmovinFields=_IOO11O01_10I()
m.InternalEventTypes=___00__0_1OI_()
end sub
function initializeService(__I_I_0I_I__0)
m.deficiencyService=__I_I_0I_I__0.services.deficiencyService
m.bitmovinPlayerTask=__I_I_0I_I__0.task
m.playerVersion=__I_I_0I_I__0.version
end function
function updateConfig(_O11_01_0O000)
m.config=_O11_01_0O000
m.playerLicense.key=getLicenseKey()
m.checkLicenseOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY,m.ServiceEndpoints.LICENSE,{"domain":m.appInfo.getID()+(Chr(&H2e)+Chr(114)+Chr(111)+Chr(&H6b)+Chr(&H75)),"key":m.playerLicense.key,"version":m.playerVersion})
end function
sub doPlayerLicenseCheck()
if not _I1I00I0_IO1_(m.playerLicense)return 
m.playerLicense.previousKey=m.playerLicense.key
m.checkLicenseOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(&H5f)+Chr(&H30)+Chr(79)+Chr(48)+Chr(73)+Chr(49)+Chr(73)+Chr(&H30)+Chr(95)+Chr(&H5f)+Chr(73)+Chr(&H4f)+Chr(&H4f)))
m.checkLicenseOperation.callFunc((Chr(101)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _0O0I1I0__IOO(__0OO0_1__0O_)
response=__0OO0_1__0O_.getData().response
if response.status=(Chr(100)+Chr(&H65)+Chr(110)+Chr(&H69)+Chr(101)+Chr(100))
error=m.deficiencyFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H45)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)),m.Errors.SETUP_LICENSE_ERROR)
m.deficiencyService.callFunc((Chr(&H6f)+Chr(&H6e)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)),error)
else if response.status=(Chr(103)+Chr(&H72)+Chr(&H61)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H64))
m.top.eventOccurred=m.internalEventFactory.createInternalEvent(m.InternalEventTypes.LICENSE_VALIDATED,__0OO0_1__0O_.getData())
end if
m.checkLicenseOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)))
end sub
function getLicenseKey()
if _110__I1O00_I(m.config)or _110__I1O00_I(m.appInfo)return invalid 
licenseKey=__1II0I_I1101(m.config,[(Chr(&H6b)+Chr(&H65)+Chr(121))])
if _110__I1O00_I(licenseKey)
licenseKey=m.appInfo.getValue((Chr(98)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(&H5f)+Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H5f)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(&H5f)+Chr(107)+Chr(&H65)+Chr(&H79)))
end if
return licenseKey 
end function
function _I1I00I0_IO1_(_0I11OO_0IOOO)
if _110__I1O00_I(_0I11OO_0IOOO.key)or Len(_0I11OO_0IOOO.key)=0
return(1=1) 
else if _0I11OO_0IOOO.key<>_0I11OO_0IOOO.previousKey
return(1=1) 
else 
return(1=2) 
end if
end function
