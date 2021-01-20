sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(111)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
m.ServiceEndpoints=_I0O_0_10O110()
m.appInfo=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(112)+Chr(&H70)+Chr(&H49)+Chr(110)+Chr(102)+Chr(111)))
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(68)+Chr(101)+Chr(&H66)+Chr(&H69)+Chr(99)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(70)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(114)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H73)))
m.playerLicense={}
m.playerLicense.previousKey=Chr(0)
m.playerLicense.key=Chr(0)
m.eventFactory=_111O_11__11O()
m.BitmovinFields=_0O1I0_1O_O0I()
end sub
function initializeService(__I1OIIOOI_0O,_0I_I001O1OOI,_0O1_OO___I_I)
m.deficiencyService=__I1OIIOOI_0O
m.bitmovinPlayerTask=_0I_I001O1OOI
m.playerVersion=_0O1_OO___I_I
end function
function updateConfig(_11OI00I1O1I0)
m.config=_11OI00I1O1I0
m.playerLicense.key=getLicenseKey()
m.checkLicenseOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY,m.ServiceEndpoints.LICENSE,{"domain":m.appInfo.getID()+(Chr(&H2e)+Chr(&H72)+Chr(111)+Chr(107)+Chr(&H75)),"key":m.playerLicense.key,"version":m.playerVersion})
end function
sub doPlayerLicenseCheck()
if not __0O_0_O0O0O0(m.playerLicense)return 
m.playerLicense.previousKey=m.playerLicense.key
m.checkLicenseOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(73)+Chr(&H4f)+Chr(&H31)+Chr(73)+Chr(73)+Chr(73)+Chr(95)+Chr(73)+Chr(&H5f)+Chr(&H49)+Chr(&H31)+Chr(73)))
m.checkLicenseOperation.callFunc((Chr(101)+Chr(&H78)+Chr(101)+Chr(99)+Chr(117)+Chr(&H74)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _IO1III_I_I1I(_O_0011IOII_I)
response=_O_0011IOII_I.getData().response
if response.status=(Chr(&H64)+Chr(101)+Chr(&H6e)+Chr(&H69)+Chr(&H65)+Chr(&H64))
error=m.deficiencyFactory.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116)),m.Errors.SETUP_LICENSE_ERROR)
m.deficiencyService.callFunc((Chr(&H6f)+Chr(&H6e)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)),error)
else if response.status=(Chr(103)+Chr(114)+Chr(97)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(100))
m.top.eventOccurred=m.eventFactory.createLicenseValidatedEvent(_O_0011IOII_I,m.BitmovinFields.LICENSE_VALIDATED)
end if
m.checkLicenseOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)))
end sub
function getLicenseKey()
if _I1_I11_1O_0I(m.config)or _I1_I11_1O_0I(m.appInfo)return invalid 
licenseKey=__00O_O01OI1O(m.config,[(Chr(&H6b)+Chr(&H65)+Chr(121))])
if _I1_I11_1O_0I(licenseKey)
licenseKey=m.appInfo.getValue((Chr(98)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H5f)+Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H5f)+Chr(108)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(115)+Chr(&H65)+Chr(95)+Chr(&H6b)+Chr(&H65)+Chr(121)))
end if
return licenseKey 
end function
function __0O_0_O0O0O0(_0OO_0O0100II)
if _I1_I11_1O_0I(_0OO_0O0100II.key)or Len(_0OO_0O0100II.key)=0
return(1=1) 
else if _0OO_0O0100II.key<>_0OO_0O0100II.previousKey
return(1=1) 
else 
return(1=2) 
end if
end function
