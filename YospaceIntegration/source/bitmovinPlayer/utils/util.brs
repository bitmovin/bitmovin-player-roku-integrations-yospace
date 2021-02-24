function _OI011OO01O10(_IOOI___I_011,_II00I___I001)
if _IOOI___I_011=invalid
return invalid 
else if not _0OI_0O01__O0(_II00I___I001)or _II00I___I001.count()=0
return _IOOI___I_011 
else if _II00I___I001.count()=1
return _IOOI___I_011[_II00I___I001[0]] 
else 
field=_II00I___I001[0]
_II00I___I001.shift()
return _OI011OO01O10(_IOOI___I_011[field],_II00I___I001) 
end if
end function
function __OOI0OI11_O0(_0__1I0I00I11)
if _0__1I0I00I11=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _1_OO_1_1II11(_IO__1O0_OOO0)
return getInterface(_IO__1O0_OOO0,(Chr(&H69)+Chr(&H66)+Chr(&H42)+Chr(111)+Chr(111)+Chr(108)+Chr(&H65)+Chr(97)+Chr(&H6e)))<>invalid 
end function
function __01_1IOO0_OI(_11IO10O0_1OO)
return getInterface(_11IO10O0_1OO,(Chr(105)+Chr(&H66)+Chr(&H53)+Chr(&H74)+Chr(114)+Chr(105)+Chr(&H6e)+Chr(&H67)))<>invalid 
end function
function _0OI_0O01__O0(_I__11I1O01I0)
return getInterface(_I__11I1O01I0,(Chr(&H69)+Chr(&H66)+Chr(65)+Chr(114)+Chr(114)+Chr(97)+Chr(121)))<>invalid 
end function
function _0_I_0IOO00_I(___I10_01_0O1)
return getInterface(___I10_01_0O1,(Chr(&H69)+Chr(&H66)+Chr(&H41)+Chr(&H73)+Chr(115)+Chr(&H6f)+Chr(99)+Chr(&H69)+Chr(97)+Chr(&H74)+Chr(105)+Chr(118)+Chr(&H65)+Chr(65)+Chr(114)+Chr(114)+Chr(&H61)+Chr(121)))<>invalid 
end function
function _I11I1OI1O1I_(_00_1010_0O_I)
return type(_00_1010_0O_I)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)) and _00_1010_0O_I.isSubtype((Chr(67)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65))) 
end function
function __O0O110001I_(__1O0_0IIO1IO)
return __1O0_0IIO1IO 
end function
function _II_I_OIO10IO()
end function
function _0OI__10II000(_OIO_OO0II00O)
copy={}
copy.append(_OIO_OO0II00O)
return copy 
end function
function _01I1O__III00(_0100O_IO1IIO,_0I_1II10O100)
if _0100O_IO1IIO=invalid return invalid 
if _0I_1II10O100=invalid return invalid 
newArr=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(&H72)+Chr(114)+Chr(97)+Chr(121)),0,(1=1))
count=_0100O_IO1IIO.Count()
for i=0 to count-1
if _0I_1II10O100(_0100O_IO1IIO[i])=(1=1)
newArr.push(_0100O_IO1IIO[i])
end if
end for
return newArr 
end function
function _0OOI01_I011O(_01_III1O_I1O,___10OII1_IO0)
if _01_III1O_I1O=invalid return invalid 
if ___10OII1_IO0=invalid return invalid 
count=_01_III1O_I1O.Count()
if count=0 return _01_III1O_I1O 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(114)+Chr(114)+Chr(97)+Chr(121)),0,(1=1))
for i=0 to count-1
newArr.push(___10OII1_IO0(_01_III1O_I1O[i]))
end for
return newArr 
end function
function _I11OO1IO_OI1(__I0I101_I_O1,_00I__OOI1IO0,_11I0IOI_0I1O)
if __OOI0OI11_O0(__I0I101_I_O1)or __OOI0OI11_O0(_00I__OOI1IO0)or __OOI0OI11_O0(_11I0IOI_0I1O)
return invalid 
end if
if __I0I101_I_O1>=_00I__OOI1IO0 and __I0I101_I_O1<=_11I0IOI_0I1O
return(1=1) 
end if
return(1=2) 
end function
function __0I1IO0_I_11(__OI0IO1IO_1I,_0__11O100__0=0)
return __OI0IO1IO_1I.content.getChild(_0__11O100__0) 
end function
function _1IOO1I__O0_1()
return cint(2147483647) 
end function
function _OO_100100O1O(_O1IO__I_I_O1,_I10I_O0OO_01,_0O1III00000O=0.0000000001)
if __OOI0OI11_O0(_O1IO__I_I_O1)or __OOI0OI11_O0(_I10I_O0OO_01)or __OOI0OI11_O0(_0O1III00000O)
return(1=2) 
end if
return Abs(_O1IO__I_I_O1-_I10I_O0OO_01)<_0O1III00000O 
end function
function _1_0_00I__IOI(_I_0_O0110011,_O___0IO1O001)
if __OOI0OI11_O0(_I_0_O0110011)or __OOI0OI11_O0(_O___0IO1O001)return invalid 
return(_I_0_O0110011/_O___0IO1O001)*100 
end function
