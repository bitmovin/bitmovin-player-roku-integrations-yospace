sub init()
m.errorMessages={"1000":(Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(32)+Chr(&H69)+Chr(115)+Chr(&H20)+Chr(&H75)+Chr(&H6e)+Chr(&H6b)+Chr(110)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(32)+Chr(35)+Chr(35)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(&H53)+Chr(&H5f)+Chr(35)+Chr(&H23)+Chr(&H23)),"1103":(Chr(&H54)+Chr(&H68)+Chr(&H65)+Chr(32)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(101)+Chr(&H20)+Chr(&H69)+Chr(&H73)+Chr(&H20)+Chr(&H6e)+Chr(111)+Chr(116)+Chr(&H20)+Chr(118)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(32)+Chr(&H20)+Chr(35)+Chr(35)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(80)+Chr(76)+Chr(65)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(&H23)+Chr(&H23)),"1201":(Chr(&H4e)+Chr(&H6f)+Chr(&H20)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(32)+Chr(115)+Chr(111)+Chr(117)+Chr(&H72)+Chr(&H63)+Chr(&H65)+Chr(32)+Chr(119)+Chr(97)+Chr(115)+Chr(&H20)+Chr(&H70)+Chr(&H72)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(&H45)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(35)+Chr(&H23)+Chr(&H23)),"1300":(Chr(71)+Chr(&H65)+Chr(110)+Chr(&H65)+Chr(114)+Chr(97)+Chr(&H6c)+Chr(32)+Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(98)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(&H20)+Chr(&H65)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(&H41)+Chr(67)+Chr(&H45)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(35)+Chr(&H23)+Chr(35)),"1400":(Chr(78)+Chr(&H65)+Chr(&H74)+Chr(&H77)+Chr(111)+Chr(&H72)+Chr(107)+Chr(&H20)+Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(32)+Chr(&H77)+Chr(&H68)+Chr(105)+Chr(108)+Chr(&H65)+Chr(32)+Chr(&H64)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(32)+Chr(&H23)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(82)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(67)+Chr(&H45)+Chr(77)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(&H23)+Chr(35)),"2000":(Chr(71)+Chr(&H65)+Chr(110)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H6c)+Chr(&H20)+Chr(68)+Chr(82)+Chr(&H4d)+Chr(32)+Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(32)+Chr(35)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(&H41)+Chr(67)+Chr(&H45)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H53)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23)),"3100":(Chr(&H41)+Chr(&H6e)+Chr(&H20)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(32)+Chr(&H6d)+Chr(111)+Chr(&H64)+Chr(117)+Chr(&H6c)+Chr(&H65)+Chr(32)+Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(32)+Chr(104)+Chr(97)+Chr(115)+Chr(32)+Chr(&H6f)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(&H64)+Chr(&H20)+Chr(&H23)+Chr(&H23)+Chr(35)+Chr(95)+Chr(&H52)+Chr(69)+Chr(80)+Chr(76)+Chr(&H41)+Chr(67)+Chr(&H45)+Chr(77)+Chr(69)+Chr(78)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(&H23)+Chr(&H23))}
m.errorNames={"1000":(Chr(85)+Chr(&H4e)+Chr(75)+Chr(&H4e)+Chr(&H4f)+Chr(87)+Chr(&H4e)),"1103":(Chr(83)+Chr(&H45)+Chr(84)+Chr(&H55)+Chr(&H50)+Chr(95)+Chr(&H4c)+Chr(73)+Chr(67)+Chr(69)+Chr(78)+Chr(83)+Chr(69)+Chr(&H5f)+Chr(69)+Chr(&H52)+Chr(82)+Chr(79)+Chr(82)),"1201":(Chr(&H53)+Chr(79)+Chr(85)+Chr(&H52)+Chr(&H43)+Chr(&H45)+Chr(&H5f)+Chr(&H49)+Chr(78)+Chr(&H56)+Chr(65)+Chr(76)+Chr(73)+Chr(68)),"1300":(Chr(&H50)+Chr(76)+Chr(&H41)+Chr(89)+Chr(66)+Chr(65)+Chr(67)+Chr(75)+Chr(&H5f)+Chr(&H45)+Chr(82)+Chr(82)+Chr(&H4f)+Chr(&H52)),"1400":(Chr(&H4e)+Chr(&H45)+Chr(&H54)+Chr(&H57)+Chr(&H4f)+Chr(82)+Chr(&H4b)+Chr(&H5f)+Chr(&H45)+Chr(82)+Chr(&H52)+Chr(&H4f)+Chr(&H52)),"2000":(Chr(&H44)+Chr(82)+Chr(&H4d)+Chr(95)+Chr(69)+Chr(82)+Chr(&H52)+Chr(&H4f)+Chr(82)),"3100":(Chr(&H4d)+Chr(&H4f)+Chr(68)+Chr(85)+Chr(&H4c)+Chr(69)+Chr(&H5f)+Chr(&H41)+Chr(68)+Chr(86)+Chr(69)+Chr(&H52)+Chr(&H54)+Chr(&H49)+Chr(83)+Chr(73)+Chr(&H4e)+Chr(71)+Chr(&H5f)+Chr(&H45)+Chr(82)+Chr(82)+Chr(79)+Chr(&H52))}
m.warningMessages={"1001":(Chr(&H41)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(100)+Chr(32)+Chr(97)+Chr(114)+Chr(103)+Chr(117)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(32)+Chr(&H68)+Chr(97)+Chr(&H73)+Chr(&H20)+Chr(&H62)+Chr(&H65)+Chr(&H65)+Chr(110)+Chr(32)+Chr(&H70)+Chr(&H61)+Chr(&H73)+Chr(115)+Chr(&H65)+Chr(&H64)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(&H74)+Chr(&H6f)+Chr(32)+Chr(97)+Chr(&H20)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(32)+Chr(&H41)+Chr(80)+Chr(73)+Chr(&H20)+Chr(&H63)+Chr(97)+Chr(&H6c)+Chr(108)+Chr(32)+Chr(35)+Chr(35)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(69)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(67)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(&H54)+Chr(&H53)+Chr(&H5f)+Chr(35)+Chr(35)+Chr(35))}
m.warningNames={"1001":(Chr(&H41)+Chr(80)+Chr(&H49)+Chr(95)+Chr(&H49)+Chr(78)+Chr(&H56)+Chr(&H41)+Chr(76)+Chr(73)+Chr(&H44)+Chr(&H5f)+Chr(&H41)+Chr(&H52)+Chr(71)+Chr(&H55)+Chr(77)+Chr(69)+Chr(78)+Chr(84))}
m.replacementConstant=(Chr(&H23)+Chr(35)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(69)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(&H53)+Chr(&H5f)+Chr(35)+Chr(35)+Chr(&H23))
end sub
function _O0101__0I0I0(____O0O01_111,_1II10II00IOO)
return _0O__O_00__O1(_IOI0O01IIO00(____O0O01_111),m.replacementConstant,_1II10II00IOO) 
end function
function _IOI0O01IIO00(_OI_OOO_0IOI1)
errorCodeAsString=Str(_OI_OOO_0IOI1)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorMessages[errorCodeAsString] 
end function
function ___IOI00_I0O1(_O_IO___0IO_O)
errorCodeAsString=Str(_O_IO___0IO_O)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorNames[errorCodeAsString] 
end function
function _0O__O_00__O1(_OOI10IO11_O_,_O1OIO000OO0I,_0I_0I01_1I_I)
newstr=Chr(0)
i=1
while i<=Len(_OOI10IO11_O_)
x=Instr(i,_OOI10IO11_O_,_O1OIO000OO0I)
if x=0
newstr=newstr+Mid(_OOI10IO11_O_,i)
exit while
end if
if x>i
newstr=newstr+Mid(_OOI10IO11_O_,i,x-i)
i=x
end if
newstr=newstr+_0I_0I01_1I_I
i=i+Len(_O1OIO000OO0I)
end while
return newstr 
end function
function getErrors(_1O0I_I_IIIO1=invalid)
return{UNKNOWN:1000,SETUP_LICENSE_ERROR:1103,SOURCE_INVALID:1201,PLAYBACK_ERROR:1300,NETWORK_ERROR:1400,DRM_ERROR:2000,MODULE_ADVERTISING_ERROR:3100} 
end function
function createErrorEvent(_0__0_1O_00OI,_O0O1O1_1II_I=Chr(0),_1O0I0_0IO011=invalid,_0O10_0__0IO0=(Chr(101)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)))
error={}
if ___IOI00_I0O1(_0__0_1O_00OI)=invalid
_0__0_1O_00OI=getErrors()
end if
error[(Chr(99)+Chr(111)+Chr(&H64)+Chr(101))]=_0__0_1O_00OI
error[(Chr(109)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H61)+Chr(&H67)+Chr(101))]=_O0101__0I0I0(_0__0_1O_00OI,_O0O1O1_1II_I)
error[(Chr(&H6e)+Chr(97)+Chr(109)+Chr(101))]=___IOI00_I0O1(_0__0_1O_00OI)
error[(Chr(95)+Chr(&H31)+Chr(79)+Chr(&H30)+Chr(73)+Chr(&H30)+Chr(95)+Chr(48)+Chr(&H49)+Chr(79)+Chr(48)+Chr(&H31)+Chr(&H31))]=_1O0I0_0IO011
error[(Chr(&H74)+Chr(&H79)+Chr(112)+Chr(&H65))]=_0O10_0__0IO0
return error 
end function
