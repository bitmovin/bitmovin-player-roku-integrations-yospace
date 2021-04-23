sub init()
m.errorMessages={"1000":(Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H20)+Chr(&H69)+Chr(&H73)+Chr(32)+Chr(&H75)+Chr(&H6e)+Chr(107)+Chr(110)+Chr(111)+Chr(119)+Chr(&H6e)+Chr(&H20)+Chr(&H23)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(65)+Chr(67)+Chr(&H45)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23)),"1103":(Chr(&H54)+Chr(&H68)+Chr(101)+Chr(&H20)+Chr(&H6c)+Chr(105)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(101)+Chr(32)+Chr(&H69)+Chr(&H73)+Chr(32)+Chr(&H6e)+Chr(&H6f)+Chr(116)+Chr(&H20)+Chr(118)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(&H64)+Chr(32)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(35)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(65)+Chr(67)+Chr(&H45)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(&H5f)+Chr(35)+Chr(35)+Chr(&H23)),"1201":(Chr(78)+Chr(&H6f)+Chr(32)+Chr(&H76)+Chr(97)+Chr(108)+Chr(105)+Chr(&H64)+Chr(32)+Chr(&H73)+Chr(&H6f)+Chr(117)+Chr(114)+Chr(99)+Chr(101)+Chr(32)+Chr(&H77)+Chr(&H61)+Chr(115)+Chr(&H20)+Chr(112)+Chr(114)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(100)+Chr(101)+Chr(&H64)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(69)+Chr(80)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(&H53)+Chr(&H5f)+Chr(&H23)+Chr(35)+Chr(&H23)),"1300":(Chr(71)+Chr(&H65)+Chr(&H6e)+Chr(&H65)+Chr(114)+Chr(97)+Chr(&H6c)+Chr(32)+Chr(112)+Chr(108)+Chr(97)+Chr(121)+Chr(&H62)+Chr(97)+Chr(&H63)+Chr(107)+Chr(&H20)+Chr(101)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(35)+Chr(&H5f)+Chr(82)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(65)+Chr(67)+Chr(&H45)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(&H53)+Chr(95)+Chr(35)+Chr(35)+Chr(&H23)),"1400":(Chr(&H4e)+Chr(&H65)+Chr(&H74)+Chr(&H77)+Chr(111)+Chr(&H72)+Chr(&H6b)+Chr(32)+Chr(&H65)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(32)+Chr(&H77)+Chr(&H68)+Chr(&H69)+Chr(108)+Chr(101)+Chr(&H20)+Chr(100)+Chr(111)+Chr(&H77)+Chr(&H6e)+Chr(108)+Chr(111)+Chr(97)+Chr(100)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(32)+Chr(35)+Chr(35)+Chr(&H23)+Chr(95)+Chr(82)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(35)+Chr(35)+Chr(&H23)),"2000":(Chr(&H47)+Chr(&H65)+Chr(110)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(108)+Chr(&H20)+Chr(&H44)+Chr(82)+Chr(77)+Chr(&H20)+Chr(&H65)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(35)+Chr(95)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(&H54)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(&H23)+Chr(&H23)),"3100":(Chr(&H41)+Chr(&H6e)+Chr(32)+Chr(&H41)+Chr(&H64)+Chr(118)+Chr(101)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(110)+Chr(&H67)+Chr(32)+Chr(109)+Chr(111)+Chr(100)+Chr(117)+Chr(&H6c)+Chr(&H65)+Chr(32)+Chr(&H65)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(32)+Chr(104)+Chr(97)+Chr(115)+Chr(&H20)+Chr(111)+Chr(99)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H53)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23))}
m.errorNames={"1000":(Chr(85)+Chr(78)+Chr(75)+Chr(&H4e)+Chr(79)+Chr(87)+Chr(78)),"1103":(Chr(83)+Chr(&H45)+Chr(&H54)+Chr(&H55)+Chr(&H50)+Chr(95)+Chr(76)+Chr(73)+Chr(&H43)+Chr(69)+Chr(&H4e)+Chr(83)+Chr(&H45)+Chr(&H5f)+Chr(&H45)+Chr(&H52)+Chr(&H52)+Chr(&H4f)+Chr(&H52)),"1201":(Chr(83)+Chr(79)+Chr(85)+Chr(&H52)+Chr(67)+Chr(69)+Chr(&H5f)+Chr(&H49)+Chr(78)+Chr(&H56)+Chr(&H41)+Chr(&H4c)+Chr(&H49)+Chr(68)),"1300":(Chr(80)+Chr(76)+Chr(&H41)+Chr(&H59)+Chr(&H42)+Chr(65)+Chr(67)+Chr(75)+Chr(95)+Chr(69)+Chr(82)+Chr(82)+Chr(&H4f)+Chr(&H52)),"1400":(Chr(&H4e)+Chr(69)+Chr(84)+Chr(&H57)+Chr(79)+Chr(82)+Chr(&H4b)+Chr(&H5f)+Chr(69)+Chr(82)+Chr(&H52)+Chr(79)+Chr(82)),"2000":(Chr(68)+Chr(&H52)+Chr(77)+Chr(95)+Chr(&H45)+Chr(82)+Chr(&H52)+Chr(79)+Chr(82)),"3100":(Chr(77)+Chr(&H4f)+Chr(&H44)+Chr(&H55)+Chr(76)+Chr(&H45)+Chr(&H5f)+Chr(65)+Chr(68)+Chr(86)+Chr(&H45)+Chr(&H52)+Chr(84)+Chr(73)+Chr(&H53)+Chr(73)+Chr(&H4e)+Chr(71)+Chr(95)+Chr(69)+Chr(82)+Chr(&H52)+Chr(79)+Chr(&H52))}
m.warningMessages={"1001":(Chr(&H41)+Chr(110)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(118)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(&H64)+Chr(&H20)+Chr(97)+Chr(114)+Chr(103)+Chr(117)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)+Chr(32)+Chr(104)+Chr(&H61)+Chr(115)+Chr(&H20)+Chr(98)+Chr(101)+Chr(&H65)+Chr(&H6e)+Chr(&H20)+Chr(&H70)+Chr(&H61)+Chr(&H73)+Chr(115)+Chr(101)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(116)+Chr(&H6f)+Chr(32)+Chr(97)+Chr(32)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(&H41)+Chr(80)+Chr(73)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(32)+Chr(35)+Chr(35)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(65)+Chr(67)+Chr(69)+Chr(77)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(35)+Chr(35)+Chr(&H23))}
m.warningNames={"1001":(Chr(&H41)+Chr(&H50)+Chr(73)+Chr(95)+Chr(&H49)+Chr(&H4e)+Chr(86)+Chr(65)+Chr(&H4c)+Chr(&H49)+Chr(&H44)+Chr(&H5f)+Chr(65)+Chr(&H52)+Chr(71)+Chr(85)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(&H54))}
m.replacementConstant=(Chr(&H23)+Chr(35)+Chr(35)+Chr(&H5f)+Chr(&H52)+Chr(69)+Chr(80)+Chr(76)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(&H53)+Chr(95)+Chr(35)+Chr(&H23)+Chr(35))
end sub
function _0_110110I_O_(_11III10I_0I_,_1_10O10IO1_O)
return _OO0101_O1_OO(_O_IIIO1IOO1_(_11III10I_0I_),m.replacementConstant,_1_10O10IO1_O) 
end function
function _O_IIIO1IOO1_(__I0IOO11IO11)
errorCodeAsString=Str(__I0IOO11IO11)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorMessages[errorCodeAsString] 
end function
function _0O1_1I1IO_0_(_0_0IOOO0_I0_)
errorCodeAsString=Str(_0_0IOOO0_I0_)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorNames[errorCodeAsString] 
end function
function _OO0101_O1_OO(_1_1O1OI_O10_,_1II1110I00I_,___O01IOO_0_I)
newstr=Chr(0)
i=1
while i<=Len(_1_1O1OI_O10_)
x=Instr(i,_1_1O1OI_O10_,_1II1110I00I_)
if x=0
newstr=newstr+Mid(_1_1O1OI_O10_,i)
exit while
end if
if x>i
newstr=newstr+Mid(_1_1O1OI_O10_,i,x-i)
i=x
end if
newstr=newstr+___O01IOO_0_I
i=i+Len(_1II1110I00I_)
end while
return newstr 
end function
function getErrors(_0O_I01O001IO=invalid)
return{UNKNOWN:1000,SETUP_LICENSE_ERROR:1103,SOURCE_INVALID:1201,PLAYBACK_ERROR:1300,NETWORK_ERROR:1400,DRM_ERROR:2000,MODULE_ADVERTISING_ERROR:3100} 
end function
function createErrorEvent(_1_1110100IOO,_O00I0111_IOO=Chr(0),_I01_I110__O0=invalid,_II_II101I1I_=(Chr(&H65)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)))
error={}
if _0O1_1I1IO_0_(_1_1110100IOO)=invalid
_1_1110100IOO=getErrors()
end if
error[(Chr(99)+Chr(&H6f)+Chr(100)+Chr(101))]=_1_1110100IOO
error[(Chr(109)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(97)+Chr(&H67)+Chr(101))]=_0_110110I_O_(_1_1110100IOO,_O00I0111_IOO)
error[(Chr(&H6e)+Chr(97)+Chr(109)+Chr(101))]=_0O1_1I1IO_0_(_1_1110100IOO)
error[(Chr(95)+Chr(&H49)+Chr(48)+Chr(49)+Chr(&H5f)+Chr(73)+Chr(49)+Chr(49)+Chr(&H30)+Chr(95)+Chr(95)+Chr(79)+Chr(48))]=_I01_I110__O0
error[(Chr(&H74)+Chr(&H79)+Chr(112)+Chr(&H65))]=_II_II101I1I_
return error 
end function
