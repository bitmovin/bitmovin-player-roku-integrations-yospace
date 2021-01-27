sub init()
m.errorMessages={"1000":(Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(32)+Chr(&H69)+Chr(&H73)+Chr(&H20)+Chr(&H75)+Chr(110)+Chr(&H6b)+Chr(110)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(32)+Chr(35)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(67)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(83)+Chr(95)+Chr(35)+Chr(35)+Chr(&H23)),"1103":(Chr(&H54)+Chr(104)+Chr(101)+Chr(32)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(32)+Chr(105)+Chr(115)+Chr(32)+Chr(&H6e)+Chr(111)+Chr(&H74)+Chr(32)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(32)+Chr(&H23)+Chr(35)+Chr(35)+Chr(95)+Chr(&H52)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(35)+Chr(35)+Chr(35)),"1201":(Chr(&H4e)+Chr(&H6f)+Chr(&H20)+Chr(&H76)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(&H20)+Chr(115)+Chr(&H6f)+Chr(117)+Chr(&H72)+Chr(99)+Chr(&H65)+Chr(32)+Chr(&H77)+Chr(97)+Chr(115)+Chr(&H20)+Chr(112)+Chr(114)+Chr(111)+Chr(&H76)+Chr(105)+Chr(100)+Chr(101)+Chr(&H64)+Chr(32)+Chr(&H23)+Chr(35)+Chr(&H23)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(77)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(83)+Chr(95)+Chr(35)+Chr(&H23)+Chr(35)),"1300":(Chr(&H47)+Chr(&H65)+Chr(110)+Chr(101)+Chr(114)+Chr(97)+Chr(108)+Chr(32)+Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(98)+Chr(97)+Chr(99)+Chr(107)+Chr(32)+Chr(101)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(32)+Chr(35)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(&H53)+Chr(&H5f)+Chr(35)+Chr(&H23)+Chr(35)),"1400":(Chr(78)+Chr(&H65)+Chr(116)+Chr(119)+Chr(&H6f)+Chr(&H72)+Chr(&H6b)+Chr(32)+Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(32)+Chr(&H77)+Chr(104)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H20)+Chr(&H64)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64)+Chr(105)+Chr(110)+Chr(&H67)+Chr(&H20)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(95)+Chr(82)+Chr(69)+Chr(&H50)+Chr(76)+Chr(65)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(&H54)+Chr(83)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23)),"2000":(Chr(&H47)+Chr(101)+Chr(&H6e)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H6c)+Chr(32)+Chr(&H44)+Chr(82)+Chr(77)+Chr(&H20)+Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H20)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H53)+Chr(95)+Chr(&H23)+Chr(35)+Chr(35)),"3100":(Chr(&H41)+Chr(110)+Chr(32)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H20)+Chr(109)+Chr(111)+Chr(&H64)+Chr(&H75)+Chr(108)+Chr(&H65)+Chr(&H20)+Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(32)+Chr(104)+Chr(97)+Chr(115)+Chr(&H20)+Chr(111)+Chr(99)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)+Chr(32)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(&H52)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(&H53)+Chr(&H5f)+Chr(35)+Chr(&H23)+Chr(&H23))}
m.errorNames={"1000":(Chr(&H55)+Chr(&H4e)+Chr(75)+Chr(78)+Chr(&H4f)+Chr(&H57)+Chr(78)),"1103":(Chr(&H53)+Chr(69)+Chr(&H54)+Chr(85)+Chr(&H50)+Chr(&H5f)+Chr(76)+Chr(&H49)+Chr(67)+Chr(&H45)+Chr(&H4e)+Chr(83)+Chr(69)+Chr(&H5f)+Chr(69)+Chr(82)+Chr(&H52)+Chr(&H4f)+Chr(&H52)),"1201":(Chr(&H53)+Chr(&H4f)+Chr(&H55)+Chr(82)+Chr(67)+Chr(69)+Chr(&H5f)+Chr(&H49)+Chr(&H4e)+Chr(&H56)+Chr(&H41)+Chr(76)+Chr(73)+Chr(&H44)),"1300":(Chr(80)+Chr(76)+Chr(65)+Chr(89)+Chr(&H42)+Chr(65)+Chr(&H43)+Chr(&H4b)+Chr(&H5f)+Chr(&H45)+Chr(82)+Chr(82)+Chr(79)+Chr(&H52)),"1400":(Chr(78)+Chr(69)+Chr(84)+Chr(87)+Chr(79)+Chr(&H52)+Chr(75)+Chr(95)+Chr(69)+Chr(&H52)+Chr(&H52)+Chr(&H4f)+Chr(&H52)),"2000":(Chr(&H44)+Chr(&H52)+Chr(&H4d)+Chr(&H5f)+Chr(&H45)+Chr(&H52)+Chr(&H52)+Chr(&H4f)+Chr(82)),"3100":(Chr(&H4d)+Chr(&H4f)+Chr(68)+Chr(&H55)+Chr(&H4c)+Chr(&H45)+Chr(95)+Chr(65)+Chr(&H44)+Chr(&H56)+Chr(69)+Chr(&H52)+Chr(&H54)+Chr(73)+Chr(&H53)+Chr(&H49)+Chr(78)+Chr(71)+Chr(&H5f)+Chr(&H45)+Chr(&H52)+Chr(&H52)+Chr(&H4f)+Chr(82))}
m.warningMessages={"1001":(Chr(&H41)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(&H76)+Chr(97)+Chr(108)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(97)+Chr(114)+Chr(103)+Chr(117)+Chr(&H6d)+Chr(&H65)+Chr(110)+Chr(116)+Chr(32)+Chr(&H68)+Chr(&H61)+Chr(&H73)+Chr(32)+Chr(98)+Chr(&H65)+Chr(101)+Chr(&H6e)+Chr(&H20)+Chr(112)+Chr(&H61)+Chr(115)+Chr(&H73)+Chr(101)+Chr(&H64)+Chr(32)+Chr(105)+Chr(110)+Chr(116)+Chr(111)+Chr(32)+Chr(97)+Chr(&H20)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(65)+Chr(80)+Chr(&H49)+Chr(32)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(&H20)+Chr(35)+Chr(35)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(&H53)+Chr(95)+Chr(35)+Chr(35)+Chr(35))}
m.warningNames={"1001":(Chr(65)+Chr(&H50)+Chr(73)+Chr(95)+Chr(73)+Chr(78)+Chr(86)+Chr(65)+Chr(&H4c)+Chr(73)+Chr(&H44)+Chr(95)+Chr(&H41)+Chr(&H52)+Chr(&H47)+Chr(&H55)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(&H54))}
m.replacementConstant=(Chr(35)+Chr(&H23)+Chr(35)+Chr(95)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(65)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(&H23)+Chr(35))
end sub
function _011O1_I_I_01(__0I0IOII_0OI,_I10_1__1_001)
return _0OI0__1II001(__0I0I000II_0(__0I0IOII_0OI),m.replacementConstant,_I10_1__1_001) 
end function
function __0I0I000II_0(_1_11I__01OO0)
errorCodeAsString=Str(_1_11I__01OO0)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorMessages[errorCodeAsString] 
end function
function _III0_0OOOII1(_I0_01I1IO1I1)
errorCodeAsString=Str(_I0_01I1IO1I1)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorNames[errorCodeAsString] 
end function
function _0OI0__1II001(__O11__IIOOI1,_III11_000I_1,__11OI0I1O1II)
newstr=Chr(0)
i=1
while i<=Len(__O11__IIOOI1)
x=Instr(i,__O11__IIOOI1,_III11_000I_1)
if x=0
newstr=newstr+Mid(__O11__IIOOI1,i)
exit while
end if
if x>i
newstr=newstr+Mid(__O11__IIOOI1,i,x-i)
i=x
end if
newstr=newstr+__11OI0I1O1II
i=i+Len(_III11_000I_1)
end while
return newstr 
end function
function getErrors(_0__O0O0I1_1I=invalid)
return{UNKNOWN:1000,SETUP_LICENSE_ERROR:1103,SOURCE_INVALID:1201,PLAYBACK_ERROR:1300,NETWORK_ERROR:1400,DRM_ERROR:2000,MODULE_ADVERTISING_ERROR:3100} 
end function
function createErrorEvent(_0II011OI__I_,_00I1_00O0IO0=Chr(0),_100I11I1O0O0=invalid,_OI_I10_0O1_1=(Chr(&H65)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(&H72)))
error={}
if _III0_0OOOII1(_0II011OI__I_)=invalid
_0II011OI__I_=getErrors()
end if
error[(Chr(99)+Chr(&H6f)+Chr(&H64)+Chr(&H65))]=_0II011OI__I_
error[(Chr(109)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H61)+Chr(103)+Chr(101))]=_011O1_I_I_01(_0II011OI__I_,_00I1_00O0IO0)
error[(Chr(110)+Chr(97)+Chr(109)+Chr(101))]=_III0_0OOOII1(_0II011OI__I_)
error[(Chr(95)+Chr(&H31)+Chr(&H30)+Chr(48)+Chr(73)+Chr(49)+Chr(49)+Chr(&H49)+Chr(&H31)+Chr(&H4f)+Chr(48)+Chr(79)+Chr(&H30))]=_100I11I1O0O0
error[(Chr(116)+Chr(121)+Chr(112)+Chr(&H65))]=_OI_I10_0O1_1
return error 
end function
