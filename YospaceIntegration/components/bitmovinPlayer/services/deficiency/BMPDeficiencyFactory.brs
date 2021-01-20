sub init()
m.errorMessages={"1000":(Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(&H20)+Chr(&H69)+Chr(115)+Chr(32)+Chr(117)+Chr(&H6e)+Chr(107)+Chr(110)+Chr(111)+Chr(119)+Chr(110)+Chr(&H20)+Chr(35)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(84)+Chr(83)+Chr(95)+Chr(35)+Chr(35)+Chr(&H23)),"1103":(Chr(&H54)+Chr(104)+Chr(101)+Chr(&H20)+Chr(108)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(110)+Chr(115)+Chr(101)+Chr(&H20)+Chr(&H69)+Chr(115)+Chr(32)+Chr(&H6e)+Chr(111)+Chr(116)+Chr(&H20)+Chr(&H76)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H64)+Chr(&H20)+Chr(&H20)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(95)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(76)+Chr(65)+Chr(&H43)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(&H54)+Chr(&H53)+Chr(95)+Chr(35)+Chr(35)+Chr(35)),"1201":(Chr(&H4e)+Chr(&H6f)+Chr(32)+Chr(&H76)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(&H20)+Chr(115)+Chr(111)+Chr(&H75)+Chr(114)+Chr(99)+Chr(101)+Chr(32)+Chr(&H77)+Chr(&H61)+Chr(115)+Chr(&H20)+Chr(&H70)+Chr(&H72)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(100)+Chr(&H65)+Chr(100)+Chr(32)+Chr(35)+Chr(35)+Chr(&H23)+Chr(95)+Chr(82)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(65)+Chr(67)+Chr(69)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(&H54)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23)),"1300":(Chr(71)+Chr(&H65)+Chr(&H6e)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(108)+Chr(32)+Chr(112)+Chr(108)+Chr(97)+Chr(121)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(&H20)+Chr(101)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(32)+Chr(&H23)+Chr(35)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(80)+Chr(&H4c)+Chr(65)+Chr(67)+Chr(69)+Chr(&H4d)+Chr(&H45)+Chr(78)+Chr(&H54)+Chr(83)+Chr(95)+Chr(&H23)+Chr(35)+Chr(35)),"1400":(Chr(78)+Chr(101)+Chr(116)+Chr(119)+Chr(111)+Chr(&H72)+Chr(&H6b)+Chr(32)+Chr(&H65)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H20)+Chr(&H77)+Chr(104)+Chr(105)+Chr(108)+Chr(101)+Chr(32)+Chr(100)+Chr(111)+Chr(&H77)+Chr(&H6e)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(32)+Chr(&H23)+Chr(35)+Chr(35)+Chr(95)+Chr(82)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(69)+Chr(77)+Chr(69)+Chr(&H4e)+Chr(84)+Chr(83)+Chr(&H5f)+Chr(&H23)+Chr(&H23)+Chr(35)),"2000":(Chr(71)+Chr(&H65)+Chr(&H6e)+Chr(&H65)+Chr(114)+Chr(97)+Chr(&H6c)+Chr(32)+Chr(&H44)+Chr(&H52)+Chr(77)+Chr(&H20)+Chr(&H65)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H20)+Chr(&H23)+Chr(35)+Chr(&H23)+Chr(&H5f)+Chr(&H52)+Chr(&H45)+Chr(&H50)+Chr(&H4c)+Chr(&H41)+Chr(67)+Chr(&H45)+Chr(&H4d)+Chr(69)+Chr(78)+Chr(&H54)+Chr(&H53)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23)),"3100":(Chr(&H41)+Chr(&H6e)+Chr(&H20)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(114)+Chr(116)+Chr(105)+Chr(115)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(32)+Chr(109)+Chr(111)+Chr(&H64)+Chr(117)+Chr(&H6c)+Chr(&H65)+Chr(&H20)+Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H20)+Chr(104)+Chr(97)+Chr(115)+Chr(32)+Chr(&H6f)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)+Chr(32)+Chr(&H23)+Chr(&H23)+Chr(&H23)+Chr(&H5f)+Chr(82)+Chr(&H45)+Chr(&H50)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(69)+Chr(77)+Chr(&H45)+Chr(78)+Chr(84)+Chr(&H53)+Chr(95)+Chr(&H23)+Chr(35)+Chr(&H23))}
m.errorNames={"1000":(Chr(&H55)+Chr(&H4e)+Chr(75)+Chr(&H4e)+Chr(79)+Chr(&H57)+Chr(&H4e)),"1103":(Chr(&H53)+Chr(69)+Chr(&H54)+Chr(&H55)+Chr(&H50)+Chr(&H5f)+Chr(&H4c)+Chr(&H49)+Chr(67)+Chr(69)+Chr(78)+Chr(&H53)+Chr(69)+Chr(&H5f)+Chr(&H45)+Chr(82)+Chr(&H52)+Chr(&H4f)+Chr(&H52)),"1201":(Chr(83)+Chr(&H4f)+Chr(85)+Chr(82)+Chr(67)+Chr(69)+Chr(&H5f)+Chr(73)+Chr(&H4e)+Chr(86)+Chr(&H41)+Chr(76)+Chr(&H49)+Chr(68)),"1300":(Chr(&H50)+Chr(76)+Chr(&H41)+Chr(&H59)+Chr(66)+Chr(&H41)+Chr(67)+Chr(&H4b)+Chr(&H5f)+Chr(&H45)+Chr(&H52)+Chr(82)+Chr(79)+Chr(82)),"1400":(Chr(78)+Chr(69)+Chr(84)+Chr(&H57)+Chr(&H4f)+Chr(&H52)+Chr(&H4b)+Chr(95)+Chr(&H45)+Chr(82)+Chr(82)+Chr(&H4f)+Chr(82)),"2000":(Chr(&H44)+Chr(82)+Chr(77)+Chr(95)+Chr(&H45)+Chr(82)+Chr(&H52)+Chr(79)+Chr(82)),"3100":(Chr(&H4d)+Chr(79)+Chr(68)+Chr(&H55)+Chr(&H4c)+Chr(&H45)+Chr(&H5f)+Chr(&H41)+Chr(&H44)+Chr(&H56)+Chr(69)+Chr(82)+Chr(&H54)+Chr(&H49)+Chr(83)+Chr(&H49)+Chr(78)+Chr(&H47)+Chr(95)+Chr(&H45)+Chr(82)+Chr(&H52)+Chr(79)+Chr(&H52))}
m.warningMessages={"1001":(Chr(65)+Chr(110)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H64)+Chr(&H20)+Chr(&H61)+Chr(&H72)+Chr(&H67)+Chr(117)+Chr(&H6d)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H20)+Chr(104)+Chr(97)+Chr(&H73)+Chr(&H20)+Chr(98)+Chr(101)+Chr(&H65)+Chr(&H6e)+Chr(32)+Chr(112)+Chr(&H61)+Chr(&H73)+Chr(115)+Chr(&H65)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(&H74)+Chr(111)+Chr(32)+Chr(&H61)+Chr(&H20)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(65)+Chr(&H50)+Chr(&H49)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(&H20)+Chr(35)+Chr(35)+Chr(&H23)+Chr(95)+Chr(&H52)+Chr(69)+Chr(&H50)+Chr(&H4c)+Chr(65)+Chr(&H43)+Chr(69)+Chr(77)+Chr(69)+Chr(78)+Chr(84)+Chr(83)+Chr(95)+Chr(35)+Chr(&H23)+Chr(&H23))}
m.warningNames={"1001":(Chr(65)+Chr(&H50)+Chr(73)+Chr(&H5f)+Chr(73)+Chr(&H4e)+Chr(&H56)+Chr(&H41)+Chr(76)+Chr(&H49)+Chr(&H44)+Chr(95)+Chr(65)+Chr(82)+Chr(&H47)+Chr(&H55)+Chr(&H4d)+Chr(69)+Chr(&H4e)+Chr(&H54))}
m.replacementConstant=(Chr(&H23)+Chr(&H23)+Chr(35)+Chr(&H5f)+Chr(&H52)+Chr(69)+Chr(&H50)+Chr(76)+Chr(&H41)+Chr(&H43)+Chr(&H45)+Chr(&H4d)+Chr(&H45)+Chr(&H4e)+Chr(84)+Chr(&H53)+Chr(95)+Chr(35)+Chr(35)+Chr(&H23))
end sub
function _IO0_11OII0_1(_1O1_1__1_OOI,_0____1_O1_OI)
return _O1I00IIO1__O(_0101__O110O_(_1O1_1__1_OOI),m.replacementConstant,_0____1_O1_OI) 
end function
function _0101__O110O_(__I1IOOI0000O)
errorCodeAsString=Str(__I1IOOI0000O)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorMessages[errorCodeAsString] 
end function
function _IOI10I1I10_0(_1O0OOIO11_O0)
errorCodeAsString=Str(_1O0OOIO11_O0)
errorCodeAsString=errorCodeAsString.Trim()
return m.errorNames[errorCodeAsString] 
end function
function _O1I00IIO1__O(_I0O10OI01100,_1O_0I1IO_1_I,_1O1I0O100_OI)
newstr=Chr(0)
i=1
while i<=Len(_I0O10OI01100)
x=Instr(i,_I0O10OI01100,_1O_0I1IO_1_I)
if x=0
newstr=newstr+Mid(_I0O10OI01100,i)
exit while
end if
if x>i
newstr=newstr+Mid(_I0O10OI01100,i,x-i)
i=x
end if
newstr=newstr+_1O1I0O100_OI
i=i+Len(_1O_0I1IO_1_I)
end while
return newstr 
end function
function getErrors(_I_O10I0_I1__=invalid)
return{UNKNOWN:1000,SETUP_LICENSE_ERROR:1103,SOURCE_INVALID:1201,PLAYBACK_ERROR:1300,NETWORK_ERROR:1400,DRM_ERROR:2000,MODULE_ADVERTISING_ERROR:3100} 
end function
function createErrorEvent(___O1O1I0IO11,_0_1_0_O_0I0O=Chr(0),_I1_1O01I1I_I=invalid,__OIO_11_00_I=(Chr(&H65)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)))
error={}
if _IOI10I1I10_0(___O1O1I0IO11)=invalid
___O1O1I0IO11=getErrors()
end if
error[(Chr(&H63)+Chr(111)+Chr(&H64)+Chr(&H65))]=___O1O1I0IO11
error[(Chr(109)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(97)+Chr(103)+Chr(101))]=_IO0_11OII0_1(___O1O1I0IO11,_0_1_0_O_0I0O)
error[(Chr(110)+Chr(97)+Chr(&H6d)+Chr(101))]=_IOI10I1I10_0(___O1O1I0IO11)
error[(Chr(&H5f)+Chr(&H49)+Chr(49)+Chr(&H5f)+Chr(&H31)+Chr(79)+Chr(&H30)+Chr(49)+Chr(&H49)+Chr(49)+Chr(73)+Chr(&H5f)+Chr(&H49))]=_I1_1O01I1I_I
error[(Chr(116)+Chr(121)+Chr(112)+Chr(&H65))]=__OIO_11_00_I
return error 
end function
