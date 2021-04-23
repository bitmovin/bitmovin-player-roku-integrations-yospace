function _1OI1001I_1I1(_0OI_1_110_0O,_O_I01_00O_O_)
if _0OI_1_110_0O=invalid
return invalid 
else if not _1OI___I_I_O_(_O_I01_00O_O_)or _O_I01_00O_O_.count()=0
return _0OI_1_110_0O 
else if _O_I01_00O_O_.count()=1
return _0OI_1_110_0O[_O_I01_00O_O_[0]] 
else 
field=_O_I01_00O_O_[0]
_O_I01_00O_O_.shift()
return _1OI1001I_1I1(_0OI_1_110_0O[field],_O_I01_00O_O_) 
end if
end function
function _1100IO1O_0_I(_I_OI0II0II0O)
if _I_OI0II0II0O=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _101O0_____I0(_OO__O0_OO00_)
return getInterface(_OO__O0_OO00_,(Chr(&H69)+Chr(&H66)+Chr(&H42)+Chr(&H6f)+Chr(&H6f)+Chr(&H6c)+Chr(&H65)+Chr(97)+Chr(110)))<>invalid 
end function
function _OI_IOII0I__0(_____0OI_1__I)
return getInterface(_____0OI_1__I,(Chr(105)+Chr(102)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67)))<>invalid 
end function
function _1OI___I_I_O_(__1O_0OI0__11)
return getInterface(__1O_0OI0__11,(Chr(105)+Chr(102)+Chr(&H41)+Chr(114)+Chr(114)+Chr(97)+Chr(&H79)))<>invalid 
end function
function _OI010O001_0_(_11I110III1I_)
return getInterface(_11I110III1I_,(Chr(105)+Chr(102)+Chr(65)+Chr(&H73)+Chr(&H73)+Chr(111)+Chr(99)+Chr(&H69)+Chr(97)+Chr(116)+Chr(105)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(&H79)))<>invalid 
end function
function _O_O11__1II10(_1IO0I010O00O)
return type(_1IO0I010O00O)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)) and _1IO0I010O00O.isSubtype((Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65))) 
end function
function _0_IIO10O01O1(_I1O111_000O0)
return _I1O111_000O0 
end function
function _01_1_III_0_1()
end function
function _O1_0_O_1I_01(_0_O11OII_1I0)
copy={}
copy.append(_0_O11OII_1I0)
return copy 
end function
function __1_I__1OI1O0(_I1_0OIO01O00,__1I001O0I0I_)
if _I1_0OIO01O00=invalid return invalid 
if __1I001O0I0I_=invalid return invalid 
newArr=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(&H79)),0,(1=1))
count=_I1_0OIO01O00.Count()
for i=0 to count-1
if __1I001O0I0I_(_I1_0OIO01O00[i])=(1=1)
newArr.push(_I1_0OIO01O00[i])
end if
end for
return newArr 
end function
function _OI10O10011I0(__01OI10OO_1O,__0010_O01001)
if __01OI10OO_1O=invalid return invalid 
if __0010_O01001=invalid return invalid 
count=__01OI10OO_1O.Count()
if count=0 return __01OI10OO_1O 
newArr=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(114)+Chr(&H72)+Chr(97)+Chr(121)),0,(1=1))
for i=0 to count-1
newArr.push(__0010_O01001(__01OI10OO_1O[i]))
end for
return newArr 
end function
function __1_0__0I_OIO(_I_I11_1011I_,_I1_O00O1I__O,_011O10001000)
if _1100IO1O_0_I(_I_I11_1011I_)or _1100IO1O_0_I(_I1_O00O1I__O)or _1100IO1O_0_I(_011O10001000)
return invalid 
end if
if _I_I11_1011I_>=_I1_O00O1I__O and _I_I11_1011I_<=_011O10001000
return(1=1) 
end if
return(1=2) 
end function
function _111_O_100IOI(_0O1_1OIO111_,_0_0OI1I__1OO=0)
return _0O1_1OIO111_.content.getChild(_0_0OI1I__1OO) 
end function
function _I0_00IIO_00O()
return cint(2147483647) 
end function
function _01IO0_01I_1_(_1_O1_O1OI00O,_01_10II0IO10,_0IOO_1OI_111=0.0000000001)
if _1100IO1O_0_I(_1_O1_O1OI00O)or _1100IO1O_0_I(_01_10II0IO10)or _1100IO1O_0_I(_0IOO_1OI_111)
return(1=2) 
end if
return Abs(_1_O1_O1OI00O-_01_10II0IO10)<_0IOO_1OI_111 
end function
function _O_OII_0II11I(_11_II_II1001,_0_I000OO001O)
if _1100IO1O_0_I(_11_II_II1001)or _1100IO1O_0_I(_0_I000OO001O)return invalid 
return(_11_II_II1001/_0_I000OO001O)*100 
end function
function __OOIO0III1IO(_I_O__O_1O_O1,__110_I111_0O)
if _1100IO1O_0_I(_I_O__O_1O_O1)or _1100IO1O_0_I(__110_I111_0O)return invalid 
return Int((__110_I111_0O/100)*_I_O__O_1O_O1) 
end function
function _0_O_I_1O_1I0(_I_0__001_I_I,_O_0_OIIO0_1_)
if _1100IO1O_0_I(_I_0__001_I_I)or _1100IO1O_0_I(_O_0_OIIO0_1_)return invalid 
return Left(_I_0__001_I_I,Len(_O_0_OIIO0_1_))=_O_0_OIIO0_1_ 
end function
function __IO_I10I__0I(_011II000___I)
if _011II000___I=invalid return invalid 
if _101O0_____I0(_011II000___I)return _011II000___I 
lowerCaseString=LCase(_011II000___I)
if lowerCaseString=(Chr(102)+Chr(97)+Chr(&H6c)+Chr(&H73)+Chr(&H65))
return(1=2) 
else if lowerCaseString=(Chr(116)+Chr(&H72)+Chr(117)+Chr(101))
return(1=1) 
else 
return invalid 
end if
end function
