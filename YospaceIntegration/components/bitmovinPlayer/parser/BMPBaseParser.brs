sub init()
m.NewLine=Chr(10)
end sub
function _0O0_O0_IO1_I(_I1__11IOOI_O)
if _OOOOO0_III1_(_I1__11IOOI_O)
return(1=1) 
else if _I_I0_11I01I0(_I1__11IOOI_O)
return(1=1) 
else 
return(1=2) 
end if
end function
function _IO_1O_O_0I_O(__IIO_100_IOO,_O1IIOO0_0I10)
baseUrlProtocol=__IIO_100_IOO.Left(_O1IIOO0_0I10.Instr((Chr(&H2f)+Chr(47)))+2)
return baseUrlProtocol+_O1IIOO0_0I10 
end function
function _OOOOO0_III1_(___10OI_I_10I)
splitUrl=___10OI_I_10I.split((Chr(47)+Chr(&H2f)))
return splitUrl.count()>1 and Len(splitUrl[0])>0 
end function
function _I0I_0_II0__O(_0OII__IO_I_O)
if _0OII__IO_I_O.instr(0,(Chr(&H2f)))=0
return _0OII__IO_I_O 
else 
return(Chr(47))+_0OII__IO_I_O 
end if
end function
function _O_111O0O1OO0(_0_0I1OOI_I_1,_1O0OOI_0_OIO)
if _OOOOO0_III1_(_1O0OOI_0_OIO)
return _1O0OOI_0_OIO 
else if _I_I0_11I01I0(_1O0OOI_0_OIO)
return _IO_1O_O_0I_O(_0_0I1OOI_I_1,_1O0OOI_0_OIO) 
else 
return _II01_O0IO0_O(_0_0I1OOI_I_1,_1O0OOI_0_OIO) 
end if
end function
function _I_I0_11I01I0(_0OOOI10_0O0I)
return _0OOOI10_0O0I.Instr((Chr(119)+Chr(119)+Chr(119)))=0 
end function
function _II01_O0IO0_O(_1__1_0I_1_1_,___I_01O01OII)
if ___I_01O01OII.Left(1)=(Chr(47))
host=_1100101_1I0_(_1__1_0I_1_1_)
return host+___I_01O01OII 
else 
return _0O0II0I_00IO(_1__1_0I_1_1_,___I_01O01OII) 
end if
end function
function _1100101_1I0_(_1_10_I_O_O_O)
host=Chr(0)
defaultProtocol=(Chr(104)+Chr(116)+Chr(116)+Chr(&H70)+Chr(115)+Chr(58)+Chr(&H2f)+Chr(&H2f))
if _OOOOO0_III1_(_1_10_I_O_O_O)
protocol=_1_10_I_O_O_O.Left(_1_10_I_O_O_O.Instr((Chr(47)+Chr(47)))+2)
hostname=_1_10_I_O_O_O.Split(protocol)[1].Split((Chr(47)))[0]
return protocol+hostname 
else 
hostname=_1_10_I_O_O_O.Split((Chr(47)))[0]
return defaultProtocol+hostname 
end if
end function
function _0O0II0I_00IO(_O__I0_OOO1_1,__IO___0O1OIO)
absoluteUrlArray=_O__I0_OOO1_1.Split((Chr(&H2f)))
parentFolderIndex=absoluteUrlArray.Count()-1
replacePath=(Chr(47))+absoluteUrlArray[parentFolderIndex]
baseUrl=_O__I0_OOO1_1.Replace(replacePath,Chr(0)).Trim()
return baseUrl+_I0I_0_II0__O(__IO___0O1OIO) 
end function
function __O00O1100OIO(_O10IOI0_O0II)
return _O10IOI0_O0II.Instr((Chr(46)+Chr(&H2e)+Chr(47)))=0 
end function
function _I0O_I1_00OI_(__II1I0001I_1,_1_1__0OI_OO_)
if __OOI0OI11_O0(__II1I0001I_1)or __OOI0OI11_O0(_1_1__0OI_OO_)return invalid 
relativeUrlArray=__II1I0001I_1.Split((Chr(&H2e)+Chr(46)+Chr(&H2f)))
relativeUrlWithoutPath=relativeUrlArray[relativeUrlArray.Count()-1]
numberOfFoldersToReachParent=relativeUrlArray.Count()
mainUrlFoldersArray=_1_1__0OI_OO_.Split((Chr(&H2f)))
numberOfFoldersInMainUrl=mainUrlFoldersArray.Count()
numberOfFoldersToRemove=numberOfFoldersInMainUrl-numberOfFoldersToReachParent
parentFolderUrl=_1_1__0OI_OO_
for i=numberOfFoldersInMainUrl-1 to numberOfFoldersToRemove step -1
folder=mainUrlFoldersArray[i]
if not __OOI0OI11_O0(folder)parentFolderUrl=parentFolderUrl.Replace(_I0I_0_II0__O(folder),Chr(0)).Trim()
end for
return parentFolderUrl+_I0I_0_II0__O(relativeUrlWithoutPath) 
end function
function _0_O0II00I0__(_100II0I0_IO1)
if __OOI0OI11_O0(_100II0I0_IO1)return invalid 
if _100II0I0_IO1.Instr(m.NewLine)
return _100II0I0_IO1.Split(m.NewLine)[0] 
else 
return _100II0I0_IO1 
end if
end function
