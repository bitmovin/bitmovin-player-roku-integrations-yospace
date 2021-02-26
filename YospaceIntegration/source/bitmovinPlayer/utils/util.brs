function _10_O10O0_11I(_IO0O10100I_I,__001_IIO110_)
if _IO0O10100I_I=invalid
return invalid 
else if not _0O1I_O1I_II0(__001_IIO110_)or __001_IIO110_.count()=0
return _IO0O10100I_I 
else if __001_IIO110_.count()=1
return _IO0O10100I_I[__001_IIO110_[0]] 
else 
field=__001_IIO110_[0]
__001_IIO110_.shift()
return _10_O10O0_11I(_IO0O10100I_I[field],__001_IIO110_) 
end if
end function
function _OO_O1_O1O0O_(_0O001I0O0100)
if _0O001I0O0100=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _IIOO1_11I00I(_IOOIIII_OIOI)
return getInterface(_IOOIIII_OIOI,(Chr(&H69)+Chr(&H66)+Chr(66)+Chr(&H6f)+Chr(&H6f)+Chr(108)+Chr(&H65)+Chr(&H61)+Chr(&H6e)))<>invalid 
end function
function _1_0II0__1OOI(_100I1IOOOIOO)
return getInterface(_100I1IOOOIOO,(Chr(105)+Chr(102)+Chr(&H53)+Chr(&H74)+Chr(114)+Chr(&H69)+Chr(&H6e)+Chr(&H67)))<>invalid 
end function
function _0O1I_O1I_II0(_O1O_OOI1_1_I)
return getInterface(_O1O_OOI1_1_I,(Chr(&H69)+Chr(102)+Chr(&H41)+Chr(&H72)+Chr(114)+Chr(&H61)+Chr(121)))<>invalid 
end function
function _OO0I11IO1_I_(_0O_0I0001OII)
return getInterface(_0O_0I0001OII,(Chr(&H69)+Chr(102)+Chr(65)+Chr(115)+Chr(115)+Chr(111)+Chr(&H63)+Chr(&H69)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(118)+Chr(&H65)+Chr(&H41)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(121)))<>invalid 
end function
function __1O0__O__O11(_OII0I11I__IO)
return type(_OII0I11I__IO)=(Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)) and _OII0I11I__IO.isSubtype((Chr(67)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65))) 
end function
function _0OO1OIOI_1O1(_000_10IIO11I)
return _000_10IIO11I 
end function
function _OI1OI0I_1_O0()
end function
function _110_1_0O101_(_OI0_OO_1_I01)
copy={}
copy.append(_OI0_OO_1_I01)
return copy 
end function
function _OI00OO1OO1_1(_IO_O00_1I__0,_I11___I0__1O)
if _IO_O00_1I__0=invalid return invalid 
if _I11___I0__1O=invalid return invalid 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H72)+Chr(114)+Chr(&H61)+Chr(&H79)),0,(1=1))
count=_IO_O00_1I__0.Count()
for i=0 to count-1
if _I11___I0__1O(_IO_O00_1I__0[i])=(1=1)
newArr.push(_IO_O00_1I__0[i])
end if
end for
return newArr 
end function
function _O11011I10010(_1_1IO0_00I01,__0O01O_0O011)
if _1_1IO0_00I01=invalid return invalid 
if __0O01O_0O011=invalid return invalid 
count=_1_1IO0_00I01.Count()
if count=0 return _1_1IO0_00I01 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(121)),0,(1=1))
for i=0 to count-1
newArr.push(__0O01O_0O011(_1_1IO0_00I01[i]))
end for
return newArr 
end function
function __I0_IOII_OIO(_O0IO10I1_0_1,__I1_O_OO1I11,_I__IIO_1IIO_)
if _OO_O1_O1O0O_(_O0IO10I1_0_1)or _OO_O1_O1O0O_(__I1_O_OO1I11)or _OO_O1_O1O0O_(_I__IIO_1IIO_)
return invalid 
end if
if _O0IO10I1_0_1>=__I1_O_OO1I11 and _O0IO10I1_0_1<=_I__IIO_1IIO_
return(1=1) 
end if
return(1=2) 
end function
function __OO1II10O_0O(_O_1_OOI1I_II,_OO001_110I0O=0)
return _O_1_OOI1I_II.content.getChild(_OO001_110I0O) 
end function
function _III1O0I101OO()
return cint(2147483647) 
end function
function __1IO010110_I(__1_0_OII_OI0,_O11001OI__O_,_1O____0O_11O=0.0000000001)
if _OO_O1_O1O0O_(__1_0_OII_OI0)or _OO_O1_O1O0O_(_O11001OI__O_)or _OO_O1_O1O0O_(_1O____0O_11O)
return(1=2) 
end if
return Abs(__1_0_OII_OI0-_O11001OI__O_)<_1O____0O_11O 
end function
function _111000O0I00_(__01OO01O___1,___O_O_II_I_I)
if _OO_O1_O1O0O_(__01OO01O___1)or _OO_O1_O1O0O_(___O_O_II_I_I)return invalid 
return(__01OO01O___1/___O_O_II_I_I)*100 
end function
function __1OOIO_I___I(_II1IOO__0IIO,__OI_110OOO_0)
if _OO_O1_O1O0O_(_II1IOO__0IIO)or _OO_O1_O1O0O_(__OI_110OOO_0)return invalid 
return Left(_II1IOO__0IIO,Len(__OI_110OOO_0))=__OI_110OOO_0 
end function
