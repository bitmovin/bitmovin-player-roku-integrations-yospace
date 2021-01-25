sub init()
m.errorMessages={"1000":(Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(32)+Chr(&H69)+Chr(&H73)+Chr(&H20)+Chr(117)+Chr(110)+Chr(107)+Chr(110)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(32)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(95)+Chr(82)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(67)+Chr(&H45)+Chr(77)+Chr(69)+Chr(78)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(&H23)+Chr(&H23)),"1103":(Chr(84)+Chr(&H68)+Chr(101)+Chr(32)+Chr(108)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(&H20)+Chr(105)+Chr(115)+Chr(32)+Chr(&H6e)+Chr(&H6f)+Chr(116)+Chr(32)+Chr(&H76)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(100)+Chr(32)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(77)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(&H53)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23)),"1201":(Chr(78)+Chr(111)+Chr(&H20)+Chr(&H76)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H64)+Chr(32)+Chr(&H73)+Chr(111)+Chr(117)+Chr(114)+Chr(&H63)+Chr(&H65)+Chr(&H20)+Chr(&H77)+Chr(&H61)+Chr(&H73)+Chr(&H20)+Chr(&H70)+Chr(114)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(&H64)+Chr(32)+Chr(35)+Chr(35)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(65)+Chr(&H43)+Chr(&H45)+Chr(77)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23)),"1300":(Chr(71)+Chr(&H65)+Chr(&H6e)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H6c)+Chr(&H20)+Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)+Chr(98)+Chr(97)+Chr(&H63)+Chr(&H6b)+Chr(32)+Chr(&H65)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)+Chr(32)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(77)+Chr(&H45)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(35)+Chr(&H23)),"1400":(Chr(&H4e)+Chr(101)+Chr(&H74)+Chr(&H77)+Chr(&H6f)+Chr(&H72)+Chr(&H6b)+Chr(32)+Chr(101)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(&H20)+Chr(119)+Chr(104)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H20)+Chr(&H64)+Chr(111)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(32)+Chr(35)+Chr(&H23)+Chr(35)+Chr(95)+Chr(&H52)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(65)+Chr(67)+Chr(&H45)+Chr(77)+Chr(69)+Chr(78)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(35)+Chr(35)),"2000":(Chr(71)+Chr(&H65)+Chr(110)+Chr(101)+Chr(114)+Chr(97)+Chr(&H6c)+Chr(&H20)+Chr(&H44)+Chr(82)+Chr(&H4d)+Chr(32)+Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H20)+Chr(35)+Chr(&H23)+Chr(35)+Chr(&H5f)+Chr(&H52)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(&H54)+Chr(&H53)+Chr(&H5f)+Chr(&H23)+Chr(35)+Chr(35)),"3100":(Chr(&H41)+Chr(110)+Chr(&H20)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(&H20)+Chr(109)+Chr(111)+Chr(100)+Chr(&H75)+Chr(&H6c)+Chr(101)+Chr(32)+Chr(&H65)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H20)+Chr(104)+Chr(&H61)+Chr(115)+Chr(&H20)+Chr(111)+Chr(99)+Chr(&H63)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)+Chr(&H20)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23))}
m.errorNames={"1000":(Chr(85)+Chr(&H4e)+Chr(&H4b)+Chr(78)+Chr(&H4f)+Chr(87)+Chr(&H4e)),"1103":(Chr(83)+Chr(69)+Chr(84)+Chr(85)+Chr(80)+Chr(&H5f)+Chr(&H4c)+Chr(73)+Chr(67)+Chr(69)+Chr(&H4e)+Chr(83)+Chr(&H45)+Chr(&H5f)+Chr(&H45)+Chr(&H52)+Chr(&H52)+Chr(&H4f)+Chr(82)),"1201":(Chr(83)+Chr(&H4f)+Chr(&H55)+Chr(82)+Chr(67)+Chr(69)+Chr(95)+Chr(73)+Chr(&H4e)+Chr(86)+Chr(65)+Chr(76)+Chr(&H49)+Chr(68)),"1300":(Chr(80)+Chr(76)+Chr(&H41)+Chr(89)+Chr(&H42)+Chr(&H41)+Chr(&H43)+Chr(&H4b)+Chr(95)+Chr(&H45)+Chr(82)+Chr(82)+Chr(&H4f)+Chr(82)),"1400":(Chr(78)+Chr(&H45)+Chr(&H54)+Chr(&H57)+Chr(&H4f)+Chr(&H52)+Chr(&H4b)+Chr(&H5f)+Chr(&H45)+Chr(82)+Chr(82)+Chr(79)+Chr(82)),"2000":(Chr(&H44)+Chr(&H52)+Chr(77)+Chr(&H5f)+Chr(69)+Chr(&H52)+Chr(82)+Chr(79)+Chr(82)),"3100":(Chr(&H4d)+Chr(79)+Chr(68)+Chr(&H55)+Chr(&H4c)+Chr(&H45)+Chr(95)+Chr(&H41)+Chr(68)+Chr(&H56)+Chr(69)+Chr(&H52)+Chr(84)+Chr(73)+Chr(&H53)+Chr(&H49)+Chr(&H4e)+Chr(71)+Chr(95)+Chr(&H45)+Chr(82)+Chr(&H52)+Chr(&H4f)+Chr(82))}
m.warningMessages={"1001":(Chr(65)+Chr(110)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(118)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(&H61)+Chr(&H72)+Chr(103)+Chr(117)+Chr(109)+Chr(101)+Chr(110)+Chr(116)+Chr(32)+Chr(&H68)+Chr(97)+Chr(&H73)+Chr(&H20)+Chr(&H62)+Chr(&H65)+Chr(101)+Chr(&H6e)+Chr(32)+Chr(&H70)+Chr(97)+Chr(&H73)+Chr(&H73)+Chr(101)+Chr(100)+Chr(32)+Chr(&H69)+Chr(110)+Chr(&H74)+Chr(&H6f)+Chr(&H20)+Chr(97)+Chr(32)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(32)+Chr(65)+Chr(&H50)+Chr(73)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(32)+Chr(35)+Chr(35)+Chr(35)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(&H41)+Chr(67)+Chr(69)+Chr(77)+Chr(69)+Chr(78)+Chr(&H54)+Chr(83)+Chr(95)+Chr(35)+Chr(35)+Chr(35))}
m.warningNames={"1001":(Chr(&H41)+Chr(&H50)+Chr(&H49)+Chr(95)+Chr(&H49)+Chr(78)+Chr(&H56)+Chr(&H41)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(95)+Chr(&H41)+Chr(&H52)+Chr(71)+Chr(85)+Chr(77)+Chr(69)+Chr(78)+Chr(&H54))}
m.replacementConstant=(Chr(&H23)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(&H52)+Chr(69)+Chr(80)+Chr(76)+Chr(&H41)+Chr(67)+Chr(69)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(83)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23))
end sub
function __OOOO1O_1_I0(__101_1_0_I_1,_I_O_I_II00_0)
return _0I1O0O0__10_(_01O10I_1O001(__101_1_0_I_1),m.replacementConstant,_I_O_I_II00_0) 
end function
function _01O10I_1O001(_11OOO0II0__I)
errorCodeAsString=Str(_11OOO0II0__I)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorMessages[errorCodeAsString] 
end function
function ___I10I001OOI(_O_01II_____I)
errorCodeAsString=Str(_O_01II_____I)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorNames[errorCodeAsString] 
end function
function _0I1O0O0__10_(_001_O0OIOO0_,_01O__1110_1O,_0I01I1_1___I)
newstr=Chr(0)
i=1
while i<=Len(_001_O0OIOO0_)
x=Instr(i,_001_O0OIOO0_,_01O__1110_1O)
if x=0
newstr=newstr+Mid(_001_O0OIOO0_,i)
exit while
end if
if x>i
newstr=newstr+Mid(_001_O0OIOO0_,i,x-i)
i=x
end if
newstr=newstr+_0I01I1_1___I
i=i+Len(_01O__1110_1O)
end while
return newstr 
end function
function getErrors(_0II_0OOIOO_O=invalid)
return{UNKNOWN:1000,SETUP_LICENSE_ERROR:1103,SOURCE_INVALID:1201,PLAYBACK_ERROR:1300,NETWORK_ERROR:1400,DRM_ERROR:2000,MODULE_ADVERTISING_ERROR:3100} 
end function
function createErrorEvent(__1_IOO0_0_I1,_1_I0O0OO00O0=Chr(0),_O_10I_11__01=invalid,_111_IO101I__=(Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)))
error={}
if ___I10I001OOI(__1_IOO0_0_I1)=invalid
__1_IOO0_0_I1=getErrors()
end if
error[(Chr(&H63)+Chr(111)+Chr(100)+Chr(&H65))]=__1_IOO0_0_I1
error[(Chr(109)+Chr(101)+Chr(115)+Chr(115)+Chr(97)+Chr(103)+Chr(101))]=__OOOO1O_1_I0(__1_IOO0_0_I1,_1_I0O0OO00O0)
error[(Chr(&H6e)+Chr(&H61)+Chr(&H6d)+Chr(101))]=___I10I001OOI(__1_IOO0_0_I1)
error[(Chr(&H5f)+Chr(&H4f)+Chr(95)+Chr(&H31)+Chr(48)+Chr(73)+Chr(&H5f)+Chr(49)+Chr(&H31)+Chr(&H5f)+Chr(95)+Chr(&H30)+Chr(49))]=_O_10I_11__01
error[(Chr(116)+Chr(&H79)+Chr(&H70)+Chr(101))]=_111_IO101I__
return error 
end function
