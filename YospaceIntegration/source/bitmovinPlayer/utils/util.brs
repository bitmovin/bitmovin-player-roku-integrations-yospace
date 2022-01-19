function __1II0I_I1101(__O1O1III01I_,_1O0I1I0O1OI_)
if __O1O1III01I_=invalid
return invalid 
else if not _O100O10IO11I(_1O0I1I0O1OI_)or _1O0I1I0O1OI_.count()=0
return __O1O1III01I_ 
else if _1O0I1I0O1OI_.count()=1
return __O1O1III01I_[_1O0I1I0O1OI_[0]] 
else 
field=_1O0I1I0O1OI_[0]
_1O0I1I0O1OI_.shift()
return __1II0I_I1101(__O1O1III01I_[field],_1O0I1I0O1OI_) 
end if
end function
function _110__I1O00_I(_100O_O0II01_)
if _100O_O0II01_=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _11O1_III10_I(_OOI11_0O_1_1)
return getInterface(_OOI11_0O_1_1,(Chr(&H69)+Chr(102)+Chr(&H42)+Chr(111)+Chr(111)+Chr(108)+Chr(101)+Chr(97)+Chr(&H6e)))<>invalid 
end function
function _OO0I0OO0I0O1(_1O_0I_OO01IO)
return getInterface(_1O_0I_OO01IO,(Chr(&H69)+Chr(102)+Chr(83)+Chr(116)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67)))<>invalid 
end function
function _O100O10IO11I(___O_IO00O1O_)
return getInterface(___O_IO00O1O_,(Chr(105)+Chr(102)+Chr(65)+Chr(&H72)+Chr(114)+Chr(97)+Chr(121)))<>invalid 
end function
function _010I_IO_OO_I(_OO11_III__11)
return getInterface(_OO11_III__11,(Chr(&H69)+Chr(102)+Chr(65)+Chr(115)+Chr(115)+Chr(111)+Chr(99)+Chr(105)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(118)+Chr(&H65)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(&H79)))<>invalid 
end function
function _01O11OIIOI_1(_1O_11I_OI___)
return type(_1O_11I_OI___)=(Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)) and _1O_11I_OI___.isSubtype((Chr(67)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101))) 
end function
function ____O101OOII_(_1I0I0II1010O)
return _1I0I0II1010O 
end function
function _0I1II10_IO0I()
end function
function _100I1_0___1O(_0O00OO__II0I)
copy={}
copy.append(_0O00OO__II0I)
return copy 
end function
function __OI100IO1I11(_IOOI10IO_0OI,_10IO110I0I_O)
if _IOOI10IO_0OI=invalid return invalid 
if _10IO110I0I_O=invalid return invalid 
newArr=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(&H72)+Chr(&H72)+Chr(&H61)+Chr(&H79)),0,(1=1))
count=_IOOI10IO_0OI.Count()
for i=0 to count-1
if _10IO110I0I_O(_IOOI10IO_0OI[i])=(1=1)
newArr.push(_IOOI10IO_0OI[i])
end if
end for
return newArr 
end function
function _OI111O01101_(_O1OI0__I1_O_,__O1_000_OO_I)
if _O1OI0__I1_O_=invalid return invalid 
if __O1_000_OO_I=invalid return invalid 
count=_O1OI0__I1_O_.Count()
if count=0 return _O1OI0__I1_O_ 
newArr=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(114)+Chr(114)+Chr(&H61)+Chr(&H79)),0,(1=1))
for i=0 to count-1
newArr.push(__O1_000_OO_I(_O1OI0__I1_O_[i]))
end for
return newArr 
end function
function _1I10I01I0I_I(_I__0__O00II1,_0IO_OOIIOI_1,____1I0_001__)
if _110__I1O00_I(_I__0__O00II1)or _110__I1O00_I(_0IO_OOIIOI_1)or _110__I1O00_I(____1I0_001__)
return invalid 
end if
if _I__0__O00II1>=_0IO_OOIIOI_1 and _I__0__O00II1<=____1I0_001__
return(1=1) 
end if
return(1=2) 
end function
function _O10_1_IOO10I(_0_O_O_0000O1,_II1OOO__I_OI=0)
return _0_O_O_0000O1.content.getChild(_II1OOO__I_OI) 
end function
function _1I1IIOOI1I0O()
return cint(2147483647) 
end function
function _11IO1I1O_O0I(_0010010O1_OO,___000O1I_1I0,__1I1_0_III_1=0.0000000001)
if _110__I1O00_I(_0010010O1_OO)or _110__I1O00_I(___000O1I_1I0)or _110__I1O00_I(__1I1_0_III_1)
return(1=2) 
end if
return Abs(_0010010O1_OO-___000O1I_1I0)<__1I1_0_III_1 
end function
function _O1II0O0_1I00(_II11110OI0OO,__O1I_OOI_11I)
if _110__I1O00_I(_II11110OI0OO)or _110__I1O00_I(__O1I_OOI_11I)return invalid 
return(_II11110OI0OO/__O1I_OOI_11I)*100 
end function
function _O__1O_O1O0IO(_1I1_1_1_I_1_,_0_1_1110_I01)
if _110__I1O00_I(_1I1_1_1_I_1_)or _110__I1O00_I(_0_1_1110_I01)return invalid 
return Int((_0_1_1110_I01/100)*_1I1_1_1_I_1_) 
end function
function _0___O0O_0_O0(_110I11_O01_I,_O11OOOI0O111)
if _110__I1O00_I(_110I11_O01_I)or _110__I1O00_I(_O11OOOI0O111)return invalid 
return Left(_110I11_O01_I,Len(_O11OOOI0O111))=_O11OOOI0O111 
end function
function __01IOOI_II11(_I1I11_I0_10_)
if _I1I11_I0_10_=invalid return invalid 
if _11O1_III10_I(_I1I11_I0_10_)return _I1I11_I0_10_ 
lowerCaseString=LCase(_I1I11_I0_10_)
if lowerCaseString=(Chr(&H66)+Chr(97)+Chr(&H6c)+Chr(115)+Chr(101))
return(1=2) 
else if lowerCaseString=(Chr(&H74)+Chr(114)+Chr(117)+Chr(&H65))
return(1=1) 
else 
return invalid 
end if
end function
function _1I0_00II1_II(_II0I1OIO_1O_)
return _11O1_III10_I(_II0I1OIO_1O_) and _II0I1OIO_1O_ 
end function
