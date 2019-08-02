function _10OOI1_1I1_0(_I0_OOOOI1OII,__1_010O_II0O)
if _I0_OOOOI1OII=invalid
return invalid 
else if not _OOI0000_0I00(__1_010O_II0O)or __1_010O_II0O.count()=0
return _I0_OOOOI1OII 
else if __1_010O_II0O.count()=1
return _I0_OOOOI1OII[__1_010O_II0O[0]] 
else 
field=__1_010O_II0O[0]
__1_010O_II0O.shift()
return _10OOI1_1I1_0(_I0_OOOOI1OII[field],__1_010O_II0O) 
end if
end function
function _O__OO00IIO1O(___II_0IIOI1O)
if ___II_0IIOI1O=invalid
return(1=1) 
else 
return(1=2) 
end if
end function
function _I1OO0OIII0__(_01I1OOOII1O_)
return getInterface(_01I1OOOII1O_,(Chr(&H69)+Chr(&H66)+Chr(&H42)+Chr(111)+Chr(&H6f)+Chr(108)+Chr(101)+Chr(&H61)+Chr(&H6e)))<>invalid 
end function
function _0_I0_I1_0_0O(_I010I100I_10)
return getInterface(_I010I100I_10,(Chr(&H69)+Chr(&H66)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67)))<>invalid 
end function
function _OOI0000_0I00(_0O1I11_1I1O_)
return getInterface(_0O1I11_1I1O_,(Chr(&H69)+Chr(&H66)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(&H79)))<>invalid 
end function
function _I_I0000O_I11(_01I101O1I01I)
return _01I101O1I01I 
end function
function _I__OO0O11O1O()
end function
function _O_1II1O0_O0_(_01__II001___)
copy={}
copy.append(_01__II001___)
return copy 
end function
function __O00OI_11_0O(__01O10O1101O,_OI011I1O_1_I)
if __01O10O1101O=invalid return invalid 
if _OI011I1O_1_I=invalid return invalid 
newArr=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(121)),0,(1=1))
count=__01O10O1101O.Count()
for i=0 to count-1
if _OI011I1O_1_I(__01O10O1101O[i])=(1=1)
newArr.push(__01O10O1101O[i])
end if
end for
return newArr 
end function
function __110I11O_IIO(_O0_OO01OIO_O,_0O1OII0O_000)
if _O0_OO01OIO_O=invalid return invalid 
if _0O1OII0O_000=invalid return invalid 
count=_O0_OO01OIO_O.Count()
if count=0 return _O0_OO01OIO_O 
newArr=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(&H72)+Chr(&H72)+Chr(&H61)+Chr(121)),0,(1=1))
for i=0 to count-1
newArr.push(_0O1OII0O_000(_O0_OO01OIO_O[i]))
end for
return newArr 
end function