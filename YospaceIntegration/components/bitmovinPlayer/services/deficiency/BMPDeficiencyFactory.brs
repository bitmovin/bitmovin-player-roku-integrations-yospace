sub init()
m.errorMessages={"1000":(Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(32)+Chr(105)+Chr(&H73)+Chr(&H20)+Chr(117)+Chr(&H6e)+Chr(107)+Chr(110)+Chr(111)+Chr(119)+Chr(110)+Chr(32)+Chr(&H23)+Chr(35)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(69)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(35)+Chr(&H23)),"1103":(Chr(&H54)+Chr(104)+Chr(&H65)+Chr(32)+Chr(&H6c)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(32)+Chr(105)+Chr(115)+Chr(32)+Chr(&H6e)+Chr(111)+Chr(&H74)+Chr(&H20)+Chr(118)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(100)+Chr(32)+Chr(32)+Chr(35)+Chr(&H23)+Chr(35)+Chr(&H5f)+Chr(82)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(&H53)+Chr(&H5f)+Chr(&H23)+Chr(35)+Chr(35)),"1201":(Chr(78)+Chr(&H6f)+Chr(32)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(32)+Chr(115)+Chr(111)+Chr(&H75)+Chr(114)+Chr(99)+Chr(&H65)+Chr(32)+Chr(119)+Chr(&H61)+Chr(115)+Chr(&H20)+Chr(112)+Chr(114)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(100)+Chr(32)+Chr(&H23)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H53)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23)),"1300":(Chr(71)+Chr(&H65)+Chr(110)+Chr(&H65)+Chr(114)+Chr(97)+Chr(&H6c)+Chr(&H20)+Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H62)+Chr(97)+Chr(&H63)+Chr(&H6b)+Chr(32)+Chr(101)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H20)+Chr(35)+Chr(35)+Chr(&H23)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(67)+Chr(&H45)+Chr(77)+Chr(69)+Chr(78)+Chr(&H54)+Chr(83)+Chr(&H5f)+Chr(35)+Chr(&H23)+Chr(&H23)),"1400":(Chr(78)+Chr(&H65)+Chr(&H74)+Chr(&H77)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(32)+Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H20)+Chr(&H77)+Chr(104)+Chr(&H69)+Chr(108)+Chr(101)+Chr(32)+Chr(100)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(&H20)+Chr(&H23)+Chr(35)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(&H41)+Chr(67)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(&H53)+Chr(&H5f)+Chr(35)+Chr(35)+Chr(35)),"2000":(Chr(71)+Chr(101)+Chr(110)+Chr(101)+Chr(114)+Chr(97)+Chr(108)+Chr(&H20)+Chr(&H44)+Chr(&H52)+Chr(&H4d)+Chr(32)+Chr(&H65)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(35)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(67)+Chr(&H45)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(&H53)+Chr(&H5f)+Chr(&H23)+Chr(35)+Chr(&H23)),"3100":(Chr(65)+Chr(110)+Chr(&H20)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(110)+Chr(103)+Chr(32)+Chr(&H6d)+Chr(111)+Chr(100)+Chr(117)+Chr(108)+Chr(101)+Chr(32)+Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H20)+Chr(&H68)+Chr(97)+Chr(115)+Chr(&H20)+Chr(111)+Chr(&H63)+Chr(99)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H64)+Chr(&H20)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(69)+Chr(80)+Chr(76)+Chr(&H41)+Chr(67)+Chr(&H45)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(84)+Chr(&H53)+Chr(95)+Chr(&H23)+Chr(&H23)+Chr(35))}
m.errorNames={"1000":(Chr(85)+Chr(&H4e)+Chr(&H4b)+Chr(&H4e)+Chr(&H4f)+Chr(&H57)+Chr(78)),"1103":(Chr(83)+Chr(69)+Chr(84)+Chr(&H55)+Chr(&H50)+Chr(95)+Chr(&H4c)+Chr(73)+Chr(&H43)+Chr(&H45)+Chr(78)+Chr(&H53)+Chr(&H45)+Chr(&H5f)+Chr(&H45)+Chr(&H52)+Chr(82)+Chr(79)+Chr(82)),"1201":(Chr(83)+Chr(79)+Chr(&H55)+Chr(82)+Chr(67)+Chr(&H45)+Chr(95)+Chr(73)+Chr(78)+Chr(86)+Chr(65)+Chr(&H4c)+Chr(73)+Chr(68)),"1300":(Chr(&H50)+Chr(&H4c)+Chr(65)+Chr(89)+Chr(66)+Chr(65)+Chr(67)+Chr(&H4b)+Chr(&H5f)+Chr(&H45)+Chr(&H52)+Chr(82)+Chr(79)+Chr(82)),"1400":(Chr(&H4e)+Chr(69)+Chr(&H54)+Chr(&H57)+Chr(79)+Chr(82)+Chr(75)+Chr(&H5f)+Chr(&H45)+Chr(82)+Chr(&H52)+Chr(&H4f)+Chr(82)),"2000":(Chr(68)+Chr(82)+Chr(&H4d)+Chr(95)+Chr(69)+Chr(82)+Chr(82)+Chr(&H4f)+Chr(82)),"3100":(Chr(77)+Chr(&H4f)+Chr(68)+Chr(85)+Chr(76)+Chr(&H45)+Chr(95)+Chr(&H41)+Chr(&H44)+Chr(86)+Chr(&H45)+Chr(&H52)+Chr(&H54)+Chr(&H49)+Chr(83)+Chr(73)+Chr(78)+Chr(71)+Chr(&H5f)+Chr(&H45)+Chr(&H52)+Chr(&H52)+Chr(79)+Chr(82))}
m.warningMessages={"1001":(Chr(65)+Chr(&H6e)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(118)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(&H61)+Chr(114)+Chr(&H67)+Chr(&H75)+Chr(109)+Chr(101)+Chr(110)+Chr(&H74)+Chr(32)+Chr(&H68)+Chr(97)+Chr(115)+Chr(32)+Chr(98)+Chr(101)+Chr(&H65)+Chr(&H6e)+Chr(32)+Chr(112)+Chr(97)+Chr(115)+Chr(&H73)+Chr(101)+Chr(100)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(116)+Chr(111)+Chr(&H20)+Chr(97)+Chr(&H20)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H20)+Chr(&H41)+Chr(&H50)+Chr(73)+Chr(&H20)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(32)+Chr(&H23)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(&H41)+Chr(67)+Chr(69)+Chr(77)+Chr(69)+Chr(78)+Chr(&H54)+Chr(&H53)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23))}
m.warningNames={"1001":(Chr(&H41)+Chr(80)+Chr(&H49)+Chr(95)+Chr(73)+Chr(78)+Chr(86)+Chr(&H41)+Chr(76)+Chr(&H49)+Chr(68)+Chr(&H5f)+Chr(65)+Chr(82)+Chr(71)+Chr(&H55)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(84))}
m.replacementConstant=(Chr(35)+Chr(35)+Chr(35)+Chr(95)+Chr(82)+Chr(69)+Chr(&H50)+Chr(76)+Chr(65)+Chr(67)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(&H54)+Chr(&H53)+Chr(95)+Chr(&H23)+Chr(&H23)+Chr(35))
end sub
function __10_OI0I__10(_I_1OI0_000II,__0I00IO__I0I)
return _I0OO0O__0I_0(__IIO101IOOI_(_I_1OI0_000II),m.replacementConstant,__0I00IO__I0I) 
end function
function __IIO101IOOI_(_I1_I101_OI00)
errorCodeAsString=Str(_I1_I101_OI00)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorMessages[errorCodeAsString] 
end function
function _0O101_0__I0_(__I0OI_0I1IIO)
errorCodeAsString=Str(__I0OI_0I1IIO)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorNames[errorCodeAsString] 
end function
function _I0OO0O__0I_0(_1III0_O_I_OI,__IIO0__II1_0,_11OI11I001O1)
newstr=Chr(0)
i=1
while i<=Len(_1III0_O_I_OI)
x=Instr(i,_1III0_O_I_OI,__IIO0__II1_0)
if x=0
newstr=newstr+Mid(_1III0_O_I_OI,i)
exit while
end if
if x>i
newstr=newstr+Mid(_1III0_O_I_OI,i,x-i)
i=x
end if
newstr=newstr+_11OI11I001O1
i=i+Len(__IIO0__II1_0)
end while
return newstr 
end function
function getErrors(_O00O__1IIO_I=invalid)
return{UNKNOWN:1000,SETUP_LICENSE_ERROR:1103,SOURCE_INVALID:1201,PLAYBACK_ERROR:1300,NETWORK_ERROR:1400,DRM_ERROR:2000,MODULE_ADVERTISING_ERROR:3100} 
end function
function createErrorEvent(_O0000I0OOI_I,_I010__IO0OI1=Chr(0),_IO100_0_1_O1=invalid,_1I10_0OO___0=(Chr(101)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)))
error={}
if _0O101_0__I0_(_O0000I0OOI_I)=invalid
_O0000I0OOI_I=getErrors()
end if
error[(Chr(&H63)+Chr(&H6f)+Chr(100)+Chr(&H65))]=_O0000I0OOI_I
error[(Chr(&H6d)+Chr(101)+Chr(115)+Chr(&H73)+Chr(97)+Chr(&H67)+Chr(&H65))]=__10_OI0I__10(_O0000I0OOI_I,_I010__IO0OI1)
error[(Chr(110)+Chr(&H61)+Chr(&H6d)+Chr(&H65))]=_0O101_0__I0_(_O0000I0OOI_I)
error[(Chr(95)+Chr(73)+Chr(79)+Chr(49)+Chr(48)+Chr(&H30)+Chr(&H5f)+Chr(48)+Chr(95)+Chr(&H31)+Chr(&H5f)+Chr(79)+Chr(&H31))]=_IO100_0_1_O1
error[(Chr(116)+Chr(&H79)+Chr(112)+Chr(&H65))]=_1I10_0OO___0
return error 
end function
