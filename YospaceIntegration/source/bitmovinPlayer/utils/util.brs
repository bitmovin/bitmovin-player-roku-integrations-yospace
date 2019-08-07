function _OO__O1O1__0I(_00IOOII111II,_O01OOI1_IOI0)
if _00IOOII111II=invalid
return invalid 
else if not _00IOI11OOO11(_O01OOI1_IOI0)or _O01OOI1_IOI0.count()=0
return _00IOOII111II 
else if _O01OOI1_IOI0.count()=1
return _00IOOII111II[_O01OOI1_IOI0[0]] 
else 
field=_O01OOI1_IOI0[0]
_O01OOI1_IOI0.shift()
return _OO__O1O1__0I(_00IOOII111II[field],_O01OOI1_IOI0) 
end if
end function
function __I_0_OIO1_O_(_IO_OOI10__1O)
if _IO_OOI10__1O=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _000_0_0O1110(_1O0O1I1_01_1)
return getInterface(_1O0O1I1_01_1,(Chr(105)+Chr(&H66)+Chr(66)+Chr(111)+Chr(&H6f)+Chr(&H6c)+Chr(101)+Chr(&H61)+Chr(110)))<>invalid 
end function
function _00II0I0O_O00(_I10OI_1_O01O)
return getInterface(_I10OI_1_O01O,(Chr(105)+Chr(102)+Chr(83)+Chr(116)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(103)))<>invalid 
end function
function _00IOI11OOO11(_1O11__110O00)
return getInterface(_1O11__110O00,(Chr(&H69)+Chr(102)+Chr(&H41)+Chr(114)+Chr(&H72)+Chr(97)+Chr(121)))<>invalid 
end function
function _O__OII0I_I1_(_I_01O1OI_I_0)
return _I_01O1OI_I_0 
end function
function _01000_IIO100()
end function
function __1I1O_O00O0O(_O10O_I1II_I1)
copy={}
copy.append(_O10O_I1II_I1)
return copy 
end function
function _0_O1O0I0I1I1(____O__O01O_O,__O01_O0IIOO_)
if ____O__O01O_O=invalid return invalid 
if __O01_O0IIOO_=invalid return invalid 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H72)+Chr(114)+Chr(&H61)+Chr(&H79)),0,(1=1))
count=____O__O01O_O.Count()
for i=0 to count-1
if __O01_O0IIOO_(____O__O01O_O[i])=(1=1)
newArr.push(____O__O01O_O[i])
end if
end for
return newArr 
end function
function _0_II0_OOO100(_OII0I1I10II_,_0001O_I01___)
if _OII0I1I10II_=invalid return invalid 
if _0001O_I01___=invalid return invalid 
count=_OII0I1I10II_.Count()
if count=0 return _OII0I1I10II_ 
newArr=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H72)+Chr(114)+Chr(&H61)+Chr(121)),0,(1=1))
for i=0 to count-1
newArr.push(_0001O_I01___(_OII0I1I10II_[i]))
end for
return newArr 
end function