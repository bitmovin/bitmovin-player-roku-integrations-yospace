sub init()
m.NewLine=Chr(10)
end sub
function _11OOIO001OII(_I_IO_10_II01)
if __IOII_0O01_0(_I_IO_10_II01)
return(1=1) 
else if _0_0OI011__1_(_I_IO_10_II01)
return(1=1) 
else 
return(1=2) 
end if
end function
function __0I10_0_I01I(_0_O0_0___O00,_0I__OOOOI1II)
baseUrlProtocol=_0_O0_0___O00.Left(_0I__OOOOI1II.Instr((Chr(47)+Chr(&H2f)))+2)
return baseUrlProtocol+_0I__OOOOI1II 
end function
function __IOII_0O01_0(_IIII111_0010)
splitUrl=_IIII111_0010.split((Chr(47)+Chr(47)))
return splitUrl.count()>1 and Len(splitUrl[0])>0 
end function
function _1IOI01OO_IIO(_O_I__O1__OO_)
if _O_I__O1__OO_.instr(0,(Chr(&H2f)))=0
return _O_I__O1__OO_ 
else 
return(Chr(&H2f))+_O_I__O1__OO_ 
end if
end function
function _I0OIO0_01010(_IIO001_0_O_0,___1__00OO0O_)
if __IOII_0O01_0(___1__00OO0O_)
return ___1__00OO0O_ 
else if _0_0OI011__1_(___1__00OO0O_)
return __0I10_0_I01I(_IIO001_0_O_0,___1__00OO0O_) 
else 
return _O0_100_0IOOO(_IIO001_0_O_0,___1__00OO0O_) 
end if
end function
function _0_0OI011__1_(_I0O_I_1O1IOO)
return _I0O_I_1O1IOO.Instr((Chr(119)+Chr(&H77)+Chr(119)))=0 
end function
function _O0_100_0IOOO(__000O0I11O0I,_I0I1OO0101IO)
if _I0I1OO0101IO.Left(1)=(Chr(&H2f))
host=__001OOI1OO1I(__000O0I11O0I)
return host+_I0I1OO0101IO 
else 
return _0II_OI00I_10(__000O0I11O0I,_I0I1OO0101IO) 
end if
end function
function __001OOI1OO1I(__00II_0_101O)
host=Chr(0)
defaultProtocol=(Chr(104)+Chr(&H74)+Chr(116)+Chr(&H70)+Chr(115)+Chr(58)+Chr(&H2f)+Chr(47))
if __IOII_0O01_0(__00II_0_101O)
protocol=__00II_0_101O.Left(__00II_0_101O.Instr((Chr(47)+Chr(&H2f)))+2)
hostname=__00II_0_101O.Split(protocol)[1].Split((Chr(&H2f)))[0]
return protocol+hostname 
else 
hostname=__00II_0_101O.Split((Chr(&H2f)))[0]
return defaultProtocol+hostname 
end if
end function
function _0II_OI00I_10(_IO0I1O110III,_IOII1IO_O__O)
absoluteUrlArray=_IO0I1O110III.Split((Chr(&H2f)))
parentFolderIndex=absoluteUrlArray.Count()-1
replacePath=(Chr(47))+absoluteUrlArray[parentFolderIndex]
baseUrl=_IO0I1O110III.Replace(replacePath,Chr(0)).Trim()
return baseUrl+_1IOI01OO_IIO(_IOII1IO_O__O) 
end function
function _1IO1I11111_O(_01O_OIOO1O00)
return _01O_OIOO1O00.Instr((Chr(&H2e)+Chr(46)+Chr(&H2f)))=0 
end function
function _0O_I_0I_1_1I(__0OI11O_1I00,_0OO01__01OO0)
if ___0O_II_00I_(__0OI11O_1I00)or ___0O_II_00I_(_0OO01__01OO0)return invalid 
relativeUrlArray=__0OI11O_1I00.Split((Chr(&H2e)+Chr(&H2e)+Chr(47)))
relativeUrlWithoutPath=relativeUrlArray[relativeUrlArray.Count()-1]
numberOfFoldersToReachParent=relativeUrlArray.Count()
mainUrlFoldersArray=_0OO01__01OO0.Split((Chr(47)))
numberOfFoldersInMainUrl=mainUrlFoldersArray.Count()
numberOfFoldersToRemove=numberOfFoldersInMainUrl-numberOfFoldersToReachParent
parentFolderUrl=_0OO01__01OO0
for i=numberOfFoldersInMainUrl-1 to numberOfFoldersToRemove step -1
folder=mainUrlFoldersArray[i]
if not ___0O_II_00I_(folder)parentFolderUrl=parentFolderUrl.Replace(_1IOI01OO_IIO(folder),Chr(0)).Trim()
end for
return parentFolderUrl+_1IOI01OO_IIO(relativeUrlWithoutPath) 
end function
function _O1IIO01O0_0_(_OIII0_01O000)
if ___0O_II_00I_(_OIII0_01O000)return invalid 
if _OIII0_01O000.Instr(m.NewLine)
return _OIII0_01O000.Split(m.NewLine)[0] 
else 
return _OIII0_01O000 
end if
end function
