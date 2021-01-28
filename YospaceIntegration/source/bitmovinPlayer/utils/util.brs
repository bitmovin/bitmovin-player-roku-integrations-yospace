function _1OO_001I0I1I(_OO1000_I111_,__O_011001O0I)
if _OO1000_I111_=invalid
return invalid 
else if not _OI0I1OII_00I(__O_011001O0I)or __O_011001O0I.count()=0
return _OO1000_I111_ 
else if __O_011001O0I.count()=1
return _OO1000_I111_[__O_011001O0I[0]] 
else 
field=__O_011001O0I[0]
__O_011001O0I.shift()
return _1OO_001I0I1I(_OO1000_I111_[field],__O_011001O0I) 
end if
end function
function ___0O_II_00I_(_II_O1__O1IOO)
if _II_O1__O1IOO=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _0II10I01_00_(_II_O_I0011O1)
return getInterface(_II_O_I0011O1,(Chr(105)+Chr(&H66)+Chr(&H42)+Chr(&H6f)+Chr(&H6f)+Chr(&H6c)+Chr(101)+Chr(97)+Chr(&H6e)))<>invalid 
end function
function __I_O0I_0_O_O(_1OI10__IO000)
return getInterface(_1OI10__IO000,(Chr(105)+Chr(102)+Chr(&H53)+Chr(&H74)+Chr(114)+Chr(&H69)+Chr(&H6e)+Chr(&H67)))<>invalid 
end function
function _OI0I1OII_00I(_OOO1IOI011_O)
return getInterface(_OOO1IOI011_O,(Chr(&H69)+Chr(&H66)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(121)))<>invalid 
end function
function _O__00IO1IOOI(_I_1I1I_O_00O)
return getInterface(_I_1I1I_O_00O,(Chr(105)+Chr(102)+Chr(65)+Chr(115)+Chr(115)+Chr(111)+Chr(99)+Chr(105)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H76)+Chr(101)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(&H61)+Chr(121)))<>invalid 
end function
function _I0III10_1O_I(_011_1_0I100O)
return type(_011_1_0I100O)=(Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)) and _011_1_0I100O.isSubtype((Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65))) 
end function
function _O1O1O0I0_1II(_O11O0OOOII_0)
return _O11O0OOOII_0 
end function
function _IO0_IIIO010_()
end function
function _0IO__0I_1O00(_OIOO__OII__O)
copy={}
copy.append(_OIOO__OII__O)
return copy 
end function
function __11O0I011I0I(_O01O1I_0_I1O,_O00100I_0O0_)
if _O01O1I_0_I1O=invalid return invalid 
if _O00100I_0O0_=invalid return invalid 
newArr=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(114)+Chr(114)+Chr(97)+Chr(&H79)),0,(1=1))
count=_O01O1I_0_I1O.Count()
for i=0 to count-1
if _O00100I_0O0_(_O01O1I_0_I1O[i])=(1=1)
newArr.push(_O01O1I_0_I1O[i])
end if
end for
return newArr 
end function
function _1001I10OIO_O(_0_01II11I01O,_OOO1I_0_0IO0)
if _0_01II11I01O=invalid return invalid 
if _OOO1I_0_0IO0=invalid return invalid 
count=_0_01II11I01O.Count()
if count=0 return _0_01II11I01O 
newArr=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H72)+Chr(&H72)+Chr(&H61)+Chr(&H79)),0,(1=1))
for i=0 to count-1
newArr.push(_OOO1I_0_0IO0(_0_01II11I01O[i]))
end for
return newArr 
end function
function _OOI1_1OO1I_I(__OI0I_OI_OIO,__I1IO_10I1__,_OI11I010I0I_)
if ___0O_II_00I_(__OI0I_OI_OIO)or ___0O_II_00I_(__I1IO_10I1__)or ___0O_II_00I_(_OI11I010I0I_)
return invalid 
end if
if __OI0I_OI_OIO>=__I1IO_10I1__ and __OI0I_OI_OIO<=_OI11I010I0I_
return(1=1) 
end if
return(1=2) 
end function
function __010OI___1_1(_00__O111_IO1,_I0_IO101_O1I=0)
return _00__O111_IO1.content.getChild(_I0_IO101_O1I) 
end function
function _01_1O10IOO0I()
return cint(2147483647) 
end function
function _O_OI1IOO1O00(_10000_OI1I_I,_101OOO1I_0_0,_II0_011__I1I=0.0000000001)
if ___0O_II_00I_(_10000_OI1I_I)or ___0O_II_00I_(_101OOO1I_0_0)or ___0O_II_00I_(_II0_011__I1I)
return(1=2) 
end if
return Abs(_10000_OI1I_I-_101OOO1I_0_0)<_II0_011__I1I 
end function
