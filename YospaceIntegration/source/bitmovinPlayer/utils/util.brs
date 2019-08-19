function _____11_0_OOO(__01OI01IO_I1,_0_00O_1O_O10)
if __01OI01IO_I1=invalid
return invalid 
else if not _0I0O_O_O101O(_0_00O_1O_O10)or _0_00O_1O_O10.count()=0
return __01OI01IO_I1 
else if _0_00O_1O_O10.count()=1
return __01OI01IO_I1[_0_00O_1O_O10[0]] 
else 
field=_0_00O_1O_O10[0]
_0_00O_1O_O10.shift()
return _____11_0_OOO(__01OI01IO_I1[field],_0_00O_1O_O10) 
end if
end function
function _1O_111I__OIO(_I1011011101_)
if _I1011011101_=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _0OI0I00O0_OI(____000101OOO)
return getInterface(____000101OOO,(Chr(105)+Chr(102)+Chr(&H42)+Chr(&H6f)+Chr(111)+Chr(&H6c)+Chr(101)+Chr(&H61)+Chr(110)))<>invalid 
end function
function __0OIO11I1OII(_O__IO11_IOO1)
return getInterface(_O__IO11_IOO1,(Chr(105)+Chr(102)+Chr(83)+Chr(&H74)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103)))<>invalid 
end function
function _0I0O_O_O101O(_00IOIO0011_O)
return getInterface(_00IOIO0011_O,(Chr(105)+Chr(102)+Chr(&H41)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(&H79)))<>invalid 
end function
function __000I01OOIIO(_O_IIIO_O_II1)
return _O_IIIO_O_II1 
end function
function _I_010_01IOO_()
end function
function __II00_II0_I_(_0_11_IO1I_O0)
copy={}
copy.append(_0_11_IO1I_O0)
return copy 
end function
function ___1__01I1OO0(_I_10IIO_OII1,_11_101IO1I_I)
if _I_10IIO_OII1=invalid return invalid 
if _11_101IO1I_I=invalid return invalid 
newArr=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(&H79)),0,(1=1))
count=_I_10IIO_OII1.Count()
for i=0 to count-1
if _11_101IO1I_I(_I_10IIO_OII1[i])=(1=1)
newArr.push(_I_10IIO_OII1[i])
end if
end for
return newArr 
end function
function _0I_I10OI0IOO(_0II0OI0_0_0_,_I0O__1__1_10)
if _0II0OI0_0_0_=invalid return invalid 
if _I0O__1__1_10=invalid return invalid 
count=_0II0OI0_0_0_.Count()
if count=0 return _0II0OI0_0_0_ 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(&H79)),0,(1=1))
for i=0 to count-1
newArr.push(_I0O__1__1_10(_0II0OI0_0_0_[i]))
end for
return newArr 
end function