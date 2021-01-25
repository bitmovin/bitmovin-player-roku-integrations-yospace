function __0_O_I_11O_O(_1O11_I_101_I,_I1IO0I_10II0)
if _1O11_I_101_I=invalid
return invalid 
else if not _1110O1I10_II(_I1IO0I_10II0)or _I1IO0I_10II0.count()=0
return _1O11_I_101_I 
else if _I1IO0I_10II0.count()=1
return _1O11_I_101_I[_I1IO0I_10II0[0]] 
else 
field=_I1IO0I_10II0[0]
_I1IO0I_10II0.shift()
return __0_O_I_11O_O(_1O11_I_101_I[field],_I1IO0I_10II0) 
end if
end function
function _IO1IIIOI0_1O(__I0O0_O10I0O)
if __I0O0_O10I0O=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function ____O_I_0I10_(_I_10O1O0_0__)
return getInterface(_I_10O1O0_0__,(Chr(&H69)+Chr(&H66)+Chr(&H42)+Chr(&H6f)+Chr(111)+Chr(108)+Chr(101)+Chr(97)+Chr(&H6e)))<>invalid 
end function
function ___0OO_I1OI1_(__0101I_I0II_)
return getInterface(__0101I_I0II_,(Chr(105)+Chr(&H66)+Chr(&H53)+Chr(&H74)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(103)))<>invalid 
end function
function _1110O1I10_II(_O0II01_OIIO_)
return getInterface(_O0II01_OIIO_,(Chr(&H69)+Chr(&H66)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(121)))<>invalid 
end function
function _1_I10I__1I_0(_1OI01II01IO0)
return getInterface(_1OI01II01IO0,(Chr(105)+Chr(&H66)+Chr(&H41)+Chr(&H73)+Chr(115)+Chr(&H6f)+Chr(&H63)+Chr(105)+Chr(&H61)+Chr(116)+Chr(105)+Chr(118)+Chr(&H65)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(121)))<>invalid 
end function
function _1IO0100I1O11(_I_10IO1___O_)
return _I_10IO1___O_ 
end function
function __001IO1O_0OO()
end function
function _I1001OOII100(_II0I10O0I00_)
copy={}
copy.append(_II0I10O0I00_)
return copy 
end function
function _I100I11IO0_1(__I_1I1I0_10_,__0__IO_O1I10)
if __I_1I1I0_10_=invalid return invalid 
if __0__IO_O1I10=invalid return invalid 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(&H79)),0,(1=1))
count=__I_1I1I0_10_.Count()
for i=0 to count-1
if __0__IO_O1I10(__I_1I1I0_10_[i])=(1=1)
newArr.push(__I_1I1I0_10_[i])
end if
end for
return newArr 
end function
function _II_1100O01_O(_O_IO1_O__0OI,_OOOI1_1_O0OI)
if _O_IO1_O__0OI=invalid return invalid 
if _OOOI1_1_O0OI=invalid return invalid 
count=_O_IO1_O__0OI.Count()
if count=0 return _O_IO1_O__0OI 
newArr=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(114)+Chr(114)+Chr(&H61)+Chr(&H79)),0,(1=1))
for i=0 to count-1
newArr.push(_OOOI1_1_O0OI(_O_IO1_O__0OI[i]))
end for
return newArr 
end function
function _II0O11_0O_0_(___I_I__01__1,_0O__OI1_1100,_011___00OO_I)
if _IO1IIIOI0_1O(___I_I__01__1)or _IO1IIIOI0_1O(_0O__OI1_1100)or _IO1IIIOI0_1O(_011___00OO_I)
return invalid 
end if
if ___I_I__01__1>=_0O__OI1_1100 and ___I_I__01__1<=_011___00OO_I
return(1=1) 
end if
return(1=2) 
end function
function _OIOIOO_O0OII(_1OIII1I_1__O,_0O0O_II__OIO=0)
return _1OIII1I_1__O.content.getChild(_0O0O_II__OIO) 
end function
function _O_0_1_00__1_()
return cint(2147483647) 
end function
function _OIO10I1III0O(_00O00O1_111I,_I11_11OO0OO0,_00_O__1_1_IO=0.0000000001)
if _IO1IIIOI0_1O(_00O00O1_111I)or _IO1IIIOI0_1O(_I11_11OO0OO0)or _IO1IIIOI0_1O(_00_O__1_1_IO)
return(1=2) 
end if
return Abs(_00O00O1_111I-_I11_11OO0OO0)<_00_O__1_1_IO 
end function
