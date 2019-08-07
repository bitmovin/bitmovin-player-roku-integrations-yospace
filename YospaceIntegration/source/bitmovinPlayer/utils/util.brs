function _IIIOOI10OO_O(_011_0O_OOOO0,__OO_IOOOI_01)
if _011_0O_OOOO0=invalid
return invalid 
else if not _10_I0_OIO_0_(__OO_IOOOI_01)or __OO_IOOOI_01.count()=0
return _011_0O_OOOO0 
else if __OO_IOOOI_01.count()=1
return _011_0O_OOOO0[__OO_IOOOI_01[0]] 
else 
field=__OO_IOOOI_01[0]
__OO_IOOOI_01.shift()
return _IIIOOI10OO_O(_011_0O_OOOO0[field],__OO_IOOOI_01) 
end if
end function
function _0I_O1100OOOO(__1_OO1IOII_0)
if __1_OO1IOII_0=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _II0II0O_OO0I(__1OI_OIO1101)
return getInterface(__1OI_OIO1101,(Chr(&H69)+Chr(102)+Chr(66)+Chr(111)+Chr(&H6f)+Chr(108)+Chr(101)+Chr(&H61)+Chr(&H6e)))<>invalid 
end function
function __O1OIIII10IO(_0OI0OI0I0__1)
return getInterface(_0OI0OI0I0__1,(Chr(105)+Chr(&H66)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(103)))<>invalid 
end function
function _10_I0_OIO_0_(_I01O1_OI0_0I)
return getInterface(_I01O1_OI0_0I,(Chr(105)+Chr(102)+Chr(65)+Chr(&H72)+Chr(114)+Chr(97)+Chr(&H79)))<>invalid 
end function
function _I_0II0I0_O1I(_O0_III_0000_)
return _O0_III_0000_ 
end function
function _0111_1O011OO()
end function
function _0O_0_1O0_I1O(_1O___1O0O111)
copy={}
copy.append(_1O___1O0O111)
return copy 
end function
function _I_0_000_I_1I(__O01OO0OOO11,_I0_I_O_1_1I_)
if __O01OO0OOO11=invalid return invalid 
if _I0_I_O_1_1I_=invalid return invalid 
newArr=CreateObject((Chr(&H72)+Chr(111)+Chr(65)+Chr(&H72)+Chr(114)+Chr(97)+Chr(&H79)),0,(1=1))
count=__O01OO0OOO11.Count()
for i=0 to count-1
if _I0_I_O_1_1I_(__O01OO0OOO11[i])=(1=1)
newArr.push(__O01OO0OOO11[i])
end if
end for
return newArr 
end function
function _1_O1__0IO_OO(_11I_O1I0I1IO,__I1010OOO0I_)
if _11I_O1I0I1IO=invalid return invalid 
if __I1010OOO0I_=invalid return invalid 
count=_11I_O1I0I1IO.Count()
if count=0 return _11I_O1I0I1IO 
newArr=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(121)),0,(1=1))
for i=0 to count-1
newArr.push(__I1010OOO0I_(_11I_O1I0I1IO[i]))
end for
return newArr 
end function