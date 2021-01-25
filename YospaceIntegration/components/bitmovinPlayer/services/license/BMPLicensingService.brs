sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=_001_100I0III()
m.ServiceEndpoints=___01_I_10_IO()
m.appInfo=CreateObject((Chr(114)+Chr(111)+Chr(&H41)+Chr(112)+Chr(&H70)+Chr(&H49)+Chr(110)+Chr(102)+Chr(111)))
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H44)+Chr(&H65)+Chr(102)+Chr(105)+Chr(99)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(&H79)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(115)))
m.playerLicense={}
m.playerLicense.previousKey=Chr(0)
m.playerLicense.key=Chr(0)
end sub
function initializeService(_OIO10OIIII_0,_1I01_0010_I_,_O01II1_10I10)
m.deficiencyService=_OIO10OIIII_0
m.bitmovinPlayerTask=_1I01_0010_I_
m.playerVersion=_O01II1_10I10
end function
function updateConfig(_1OOO11_I_1O1)
m.config=_1OOO11_I_1O1
m.playerLicense.key=getLicenseKey()
m.checkLicenseOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.CHECK_LICENSE_KEY,m.ServiceEndpoints.LICENSE,{"domain":m.appInfo.getID()+(Chr(46)+Chr(114)+Chr(&H6f)+Chr(107)+Chr(&H75)),"key":m.playerLicense.key,"version":m.playerVersion})
end function
sub doPlayerLicenseCheck()
if not _OO__111I_OO0(m.playerLicense)return 
m.playerLicense.previousKey=m.playerLicense.key
m.checkLicenseOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(95)+Chr(&H31)+Chr(&H5f)+Chr(&H49)+Chr(&H5f)+Chr(&H30)+Chr(&H49)+Chr(&H31)+Chr(73)+Chr(&H31)+Chr(&H4f)+Chr(&H5f)+Chr(79)))
m.checkLicenseOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _1_I_0I1I1O_O(_1_1_1001__10)
response=_1_1_1001__10.getData().response
if response.status=(Chr(100)+Chr(101)+Chr(&H6e)+Chr(&H69)+Chr(&H65)+Chr(100))
error=m.deficiencyFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(69)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)),m.Errors.SETUP_LICENSE_ERROR)
m.deficiencyService.callFunc((Chr(&H6f)+Chr(&H6e)+Chr(&H45)+Chr(114)+Chr(114)+Chr(111)+Chr(114)),error)
end if
m.checkLicenseOperation.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)))
end sub
function getLicenseKey()
if _IO1IIIOI0_1O(m.config)or _IO1IIIOI0_1O(m.appInfo)return invalid 
licenseKey=__0_O_I_11O_O(m.config,[(Chr(&H6b)+Chr(101)+Chr(121))])
if _IO1IIIOI0_1O(licenseKey)
licenseKey=m.appInfo.getValue((Chr(98)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H5f)+Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H5f)+Chr(&H6c)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(115)+Chr(101)+Chr(95)+Chr(107)+Chr(&H65)+Chr(&H79)))
end if
return licenseKey 
end function
function _OO__111I_OO0(_O_0_IO011010)
if _IO1IIIOI0_1O(_O_0_IO011010.key)or Len(_O_0_IO011010.key)=0
return(1=1) 
else if _O_0_IO011010.key<>_O_0_IO011010.previousKey
return(1=1) 
else 
return(1=2) 
end if
end function
