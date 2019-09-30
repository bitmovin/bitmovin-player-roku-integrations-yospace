function _1I1IO_1_O_OI(_OO_00I0I___I,__O001IIO1_I_)
if _OO_00I0I___I=invalid
return invalid 
else if not ____O00I_O__1(__O001IIO1_I_)or __O001IIO1_I_.count()=0
return _OO_00I0I___I 
else if __O001IIO1_I_.count()=1
return _OO_00I0I___I[__O001IIO1_I_[0]] 
else 
field=__O001IIO1_I_[0]
__O001IIO1_I_.shift()
return _1I1IO_1_O_OI(_OO_00I0I___I[field],__O001IIO1_I_) 
end if
end function
function _1_01I1IOI__I(_00_I010OII0O)
if _00_I010OII0O=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _1O11IIO_II_I(_1I1_I1O1I10O)
return getInterface(_1I1_I1O1I10O,(Chr(&H69)+Chr(102)+Chr(66)+Chr(111)+Chr(&H6f)+Chr(108)+Chr(101)+Chr(&H61)+Chr(110)))<>invalid 
end function
function _I__O00OI01__(__O000__O0I0_)
return getInterface(__O000__O0I0_,(Chr(&H69)+Chr(102)+Chr(83)+Chr(116)+Chr(114)+Chr(&H69)+Chr(&H6e)+Chr(&H67)))<>invalid 
end function
function ____O00I_O__1(_111OO_O00_O1)
return getInterface(_111OO_O00_O1,(Chr(&H69)+Chr(&H66)+Chr(&H41)+Chr(114)+Chr(114)+Chr(&H61)+Chr(121)))<>invalid 
end function
function _O_O010_1II_I(_0_01I0_OO_11)
return getInterface(_0_01I0_OO_11,(Chr(&H69)+Chr(102)+Chr(&H41)+Chr(&H73)+Chr(115)+Chr(&H6f)+Chr(99)+Chr(105)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H76)+Chr(101)+Chr(65)+Chr(&H72)+Chr(114)+Chr(97)+Chr(&H79)))<>invalid 
end function
function _O_IOO1OOIO0O(__I0_1_10IO0I)
return __I0_1_10IO0I 
end function
function _00_1_1_0OO1_()
end function
function _OIOO_II_OOO_(_1O0_0OI_1I_0)
copy={}
copy.append(_1O0_0OI_1I_0)
return copy 
end function
function _1O10O1_OIIOI(_0_110_IIO1_1,_OI_OI0O11O0_)
if _0_110_IIO1_1=invalid return invalid 
if _OI_OI0O11O0_=invalid return invalid 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(114)+Chr(&H72)+Chr(97)+Chr(121)),0,(1=1))
count=_0_110_IIO1_1.Count()
for i=0 to count-1
if _OI_OI0O11O0_(_0_110_IIO1_1[i])=(1=1)
newArr.push(_0_110_IIO1_1[i])
end if
end for
return newArr 
end function
function _OOOO__1O0OIO(_I0_11_IO0O00,_O___II1I011_)
if _I0_11_IO0O00=invalid return invalid 
if _O___II1I011_=invalid return invalid 
count=_I0_11_IO0O00.Count()
if count=0 return _I0_11_IO0O00 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(121)),0,(1=1))
for i=0 to count-1
newArr.push(_O___II1I011_(_I0_11_IO0O00[i]))
end for
return newArr 
end function
function _II10O0O1I__I(_IO0IO10O_O1I,_1_10O101_I0_,__0I1I0I0O1IO)
if _1_01I1IOI__I(_IO0IO10O_O1I)or _1_01I1IOI__I(_1_10O101_I0_)or _1_01I1IOI__I(__0I1I0I0O1IO)
return invalid 
end if
if _IO0IO10O_O1I>=_1_10O101_I0_ and _IO0IO10O_O1I<=__0I1I0I0O1IO
return(1=1) 
end if
return(1=2) 
end function
