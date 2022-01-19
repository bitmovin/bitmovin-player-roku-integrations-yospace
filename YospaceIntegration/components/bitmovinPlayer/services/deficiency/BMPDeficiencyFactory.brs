sub init()
m.errorMessages={"1000":(Chr(69)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H20)+Chr(105)+Chr(115)+Chr(32)+Chr(&H75)+Chr(&H6e)+Chr(107)+Chr(110)+Chr(&H6f)+Chr(&H77)+Chr(110)+Chr(&H20)+Chr(&H23)+Chr(35)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(67)+Chr(69)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(&H53)+Chr(&H5f)+Chr(&H23)+Chr(&H23)+Chr(35)),"1103":(Chr(84)+Chr(&H68)+Chr(101)+Chr(&H20)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(32)+Chr(&H69)+Chr(115)+Chr(&H20)+Chr(&H6e)+Chr(&H6f)+Chr(116)+Chr(&H20)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(35)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(69)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23)),"1201":(Chr(78)+Chr(&H6f)+Chr(&H20)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(115)+Chr(&H6f)+Chr(117)+Chr(&H72)+Chr(99)+Chr(&H65)+Chr(&H20)+Chr(&H77)+Chr(&H61)+Chr(&H73)+Chr(&H20)+Chr(112)+Chr(&H72)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(35)),"1300":(Chr(&H47)+Chr(101)+Chr(&H6e)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H6c)+Chr(32)+Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(97)+Chr(&H63)+Chr(&H6b)+Chr(&H20)+Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(32)+Chr(35)+Chr(&H23)+Chr(35)+Chr(&H5f)+Chr(82)+Chr(69)+Chr(80)+Chr(76)+Chr(65)+Chr(&H43)+Chr(69)+Chr(77)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23)),"1400":(Chr(&H4e)+Chr(&H65)+Chr(&H74)+Chr(119)+Chr(&H6f)+Chr(114)+Chr(&H6b)+Chr(&H20)+Chr(&H65)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(&H20)+Chr(119)+Chr(&H68)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(32)+Chr(&H64)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(32)+Chr(&H23)+Chr(35)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(67)+Chr(&H45)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(&H53)+Chr(95)+Chr(35)+Chr(&H23)+Chr(35)),"2000":(Chr(&H47)+Chr(101)+Chr(&H6e)+Chr(101)+Chr(&H72)+Chr(97)+Chr(108)+Chr(32)+Chr(68)+Chr(82)+Chr(&H4d)+Chr(&H20)+Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(32)+Chr(35)+Chr(&H23)+Chr(35)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(65)+Chr(67)+Chr(&H45)+Chr(77)+Chr(69)+Chr(78)+Chr(84)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23)),"3100":(Chr(&H41)+Chr(110)+Chr(&H20)+Chr(&H41)+Chr(100)+Chr(&H76)+Chr(101)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(110)+Chr(103)+Chr(32)+Chr(109)+Chr(&H6f)+Chr(&H64)+Chr(&H75)+Chr(108)+Chr(&H65)+Chr(32)+Chr(&H65)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(32)+Chr(104)+Chr(97)+Chr(&H73)+Chr(&H20)+Chr(111)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(100)+Chr(&H20)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(&H45)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23))}
m.errorNames={"1000":(Chr(&H55)+Chr(78)+Chr(&H4b)+Chr(78)+Chr(79)+Chr(87)+Chr(&H4e)),"1103":(Chr(&H53)+Chr(69)+Chr(84)+Chr(&H55)+Chr(80)+Chr(&H5f)+Chr(76)+Chr(&H49)+Chr(&H43)+Chr(&H45)+Chr(&H4e)+Chr(83)+Chr(69)+Chr(95)+Chr(&H45)+Chr(82)+Chr(82)+Chr(&H4f)+Chr(82)),"1201":(Chr(83)+Chr(79)+Chr(&H55)+Chr(82)+Chr(67)+Chr(&H45)+Chr(&H5f)+Chr(73)+Chr(78)+Chr(86)+Chr(&H41)+Chr(&H4c)+Chr(73)+Chr(68)),"1300":(Chr(&H50)+Chr(76)+Chr(&H41)+Chr(89)+Chr(66)+Chr(65)+Chr(67)+Chr(75)+Chr(&H5f)+Chr(69)+Chr(82)+Chr(&H52)+Chr(79)+Chr(82)),"1400":(Chr(&H4e)+Chr(69)+Chr(84)+Chr(&H57)+Chr(&H4f)+Chr(82)+Chr(&H4b)+Chr(95)+Chr(69)+Chr(&H52)+Chr(82)+Chr(79)+Chr(82)),"2000":(Chr(68)+Chr(82)+Chr(&H4d)+Chr(&H5f)+Chr(69)+Chr(&H52)+Chr(&H52)+Chr(79)+Chr(&H52)),"3100":(Chr(&H4d)+Chr(79)+Chr(68)+Chr(85)+Chr(76)+Chr(69)+Chr(95)+Chr(&H41)+Chr(68)+Chr(&H56)+Chr(&H45)+Chr(82)+Chr(&H54)+Chr(&H49)+Chr(83)+Chr(73)+Chr(&H4e)+Chr(71)+Chr(&H5f)+Chr(69)+Chr(82)+Chr(&H52)+Chr(79)+Chr(&H52))}
m.warningMessages={"1001":(Chr(&H41)+Chr(110)+Chr(32)+Chr(105)+Chr(110)+Chr(118)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(100)+Chr(32)+Chr(97)+Chr(114)+Chr(&H67)+Chr(&H75)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H20)+Chr(&H68)+Chr(97)+Chr(115)+Chr(32)+Chr(&H62)+Chr(101)+Chr(&H65)+Chr(110)+Chr(32)+Chr(112)+Chr(97)+Chr(&H73)+Chr(115)+Chr(101)+Chr(&H64)+Chr(32)+Chr(&H69)+Chr(&H6e)+Chr(116)+Chr(111)+Chr(&H20)+Chr(&H61)+Chr(32)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(32)+Chr(&H41)+Chr(80)+Chr(73)+Chr(&H20)+Chr(&H63)+Chr(97)+Chr(&H6c)+Chr(&H6c)+Chr(&H20)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(80)+Chr(76)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23))}
m.warningNames={"1001":(Chr(&H41)+Chr(&H50)+Chr(&H49)+Chr(95)+Chr(73)+Chr(&H4e)+Chr(86)+Chr(65)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(&H5f)+Chr(&H41)+Chr(&H52)+Chr(&H47)+Chr(85)+Chr(77)+Chr(69)+Chr(78)+Chr(&H54))}
m.replacementConstant=(Chr(35)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(&H52)+Chr(69)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(&H45)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(84)+Chr(83)+Chr(95)+Chr(35)+Chr(&H23)+Chr(35))
m.externalEventFactory=__0OI1I1OII__(_IOO11O01_10I())
end sub
function _1OO0_O0_1__0(_101O01OI_IOO,__I00_OO011_1)
return _I010101_0O10(_1IOI_I1IO_I0(_101O01OI_IOO),m.replacementConstant,__I00_OO011_1) 
end function
function _1IOI_I1IO_I0(_O0OO11IO0O11)
errorCodeAsString=Str(_O0OO11IO0O11)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorMessages[errorCodeAsString] 
end function
function ___1_1I0I_I0O(_IO0O_II000I0)
errorCodeAsString=Str(_IO0O_II000I0)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorNames[errorCodeAsString] 
end function
function _I010101_0O10(_II110100_I1O,_I_IOO_II10_I,_0____II0__I0)
newstr=Chr(0)
i=1
while i<=Len(_II110100_I1O)
x=Instr(i,_II110100_I1O,_I_IOO_II10_I)
if x=0
newstr=newstr+Mid(_II110100_I1O,i)
exit while
end if
if x>i
newstr=newstr+Mid(_II110100_I1O,i,x-i)
i=x
end if
newstr=newstr+_0____II0__I0
i=i+Len(_I_IOO_II10_I)
end while
return newstr 
end function
function getErrors(_01_1O__0_0_1=invalid)
return{UNKNOWN:1000,SETUP_LICENSE_ERROR:1103,SOURCE_INVALID:1201,PLAYBACK_ERROR:1300,NETWORK_ERROR:1400,DRM_ERROR:2000,MODULE_ADVERTISING_ERROR:3100} 
end function
function createErrorEvent(_O___O_0IO0OI,_1_O001O__I1O=Chr(0),_IO0O0OI_IIIO=invalid,_0I011I11_I1_=Chr(0))
error={}
if ___1_1I0I_I0O(_O___O_0IO0OI)=invalid
_O___O_0IO0OI=getErrors()
end if
errorMessage=_1OO0_O0_1__0(_O___O_0IO0OI,_1_O001O__I1O)
errorName=___1_1I0I_I0O(_O___O_0IO0OI)
error=m.externalEventFactory.createBitmovinErrorEvent(_O___O_0IO0OI,errorMessage,errorName,_IO0O0OI_IIIO)
if _0I011I11_I1_<>Chr(0)error.type=_0I011I11_I1_
return error 
end function
