function __00O_O01OI1O(_01_0_OO0OI__,__1_01OOOOOO_)
if _01_0_OO0OI__=invalid
return invalid 
else if not _1_0000O1IIO_(__1_01OOOOOO_)or __1_01OOOOOO_.count()=0
return _01_0_OO0OI__ 
else if __1_01OOOOOO_.count()=1
return _01_0_OO0OI__[__1_01OOOOOO_[0]] 
else 
field=__1_01OOOOOO_[0]
__1_01OOOOOO_.shift()
return __00O_O01OI1O(_01_0_OO0OI__[field],__1_01OOOOOO_) 
end if
end function
function _I1_I11_1O_0I(_OOI_I__0_OOO)
if _OOI_I__0_OOO=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function __IOI10_I0IOI(_I0OOOI10_010)
return getInterface(_I0OOOI10_010,(Chr(&H69)+Chr(102)+Chr(66)+Chr(&H6f)+Chr(&H6f)+Chr(&H6c)+Chr(&H65)+Chr(97)+Chr(&H6e)))<>invalid 
end function
function _IO11_1_OO_O_(__1I1__O1__O0)
return getInterface(__1I1__O1__O0,(Chr(105)+Chr(&H66)+Chr(83)+Chr(116)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103)))<>invalid 
end function
function _1_0000O1IIO_(_0I_0_1O__10I)
return getInterface(_0I_0_1O__10I,(Chr(105)+Chr(102)+Chr(65)+Chr(114)+Chr(&H72)+Chr(97)+Chr(&H79)))<>invalid 
end function
function _1I0OI0_OOOI1(_OO0O0I__O0__)
return getInterface(_OO0O0I__O0__,(Chr(105)+Chr(&H66)+Chr(65)+Chr(115)+Chr(115)+Chr(111)+Chr(99)+Chr(105)+Chr(&H61)+Chr(116)+Chr(105)+Chr(118)+Chr(&H65)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(&H79)))<>invalid 
end function
function _1_00_O_O0I_I(__I10O__O0OI1)
return type(__I10O__O0OI1)=(Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)) and __I10O__O0OI1.isSubtype((Chr(67)+Chr(111)+Chr(110)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101))) 
end function
function _01I0O_II1O__(___O1I0I__O_I)
return ___O1I0I__O_I 
end function
function __10__0OII01I()
end function
function _IO_I1O_0OOOO(_101100I1O_0I)
copy={}
copy.append(_101100I1O_0I)
return copy 
end function
function ___I__O1IO0I0(_1I1OI0__1101,_____001_O1IO)
if _1I1OI0__1101=invalid return invalid 
if _____001_O1IO=invalid return invalid 
newArr=CreateObject((Chr(114)+Chr(111)+Chr(&H41)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(&H79)),0,(1=1))
count=_1I1OI0__1101.Count()
for i=0 to count-1
if _____001_O1IO(_1I1OI0__1101[i])=(1=1)
newArr.push(_1I1OI0__1101[i])
end if
end for
return newArr 
end function
function _01OIIIOII001(_1_I0O__II_O_,_OO_1IOO_I100)
if _1_I0O__II_O_=invalid return invalid 
if _OO_1IOO_I100=invalid return invalid 
count=_1_I0O__II_O_.Count()
if count=0 return _1_I0O__II_O_ 
newArr=CreateObject((Chr(&H72)+Chr(111)+Chr(65)+Chr(114)+Chr(114)+Chr(&H61)+Chr(&H79)),0,(1=1))
for i=0 to count-1
newArr.push(_OO_1IOO_I100(_1_I0O__II_O_[i]))
end for
return newArr 
end function
function __1_I00O1IOOO(__0110_1__1_O,_1_00000O_OI0,_011_011O0I11)
if _I1_I11_1O_0I(__0110_1__1_O)or _I1_I11_1O_0I(_1_00000O_OI0)or _I1_I11_1O_0I(_011_011O0I11)
return invalid 
end if
if __0110_1__1_O>=_1_00000O_OI0 and __0110_1__1_O<=_011_011O0I11
return(1=1) 
end if
return(1=2) 
end function
function _O10IOIOOIO_I(___10OOOIOO0O,_0I0IOO1IO01O=0)
return ___10OOOIOO0O.content.getChild(_0I0IOO1IO01O) 
end function
function _IO_O0I_1O10I()
return cint(2147483647) 
end function
function __011O01OIOOO(__0I00O_O_I1_,__O___IO0I_00,_11I1OO11__01=0.0000000001)
if _I1_I11_1O_0I(__0I00O_O_I1_)or _I1_I11_1O_0I(__O___IO0I_00)or _I1_I11_1O_0I(_11I1OO11__01)
return(1=2) 
end if
return Abs(__0I00O_O_I1_-__O___IO0I_00)<_11I1OO11__01 
end function
