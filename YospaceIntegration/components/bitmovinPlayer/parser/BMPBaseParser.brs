sub init()
m.NewLine=Chr(10)
end sub
function ___OIO011O__0(_0O1OI0II00O_)
if _111_OI1_01_1(_0O1OI0II00O_)
return(1=1) 
else if _O10O11_I111_(_0O1OI0II00O_)
return(1=1) 
else 
return(1=2) 
end if
end function
function _1O1I0I_10OI1(_OII_O_1O_IOI,_I_I_011_1OO_)
baseUrlProtocol=_OII_O_1O_IOI.Left(_I_I_011_1OO_.Instr((Chr(&H2f)+Chr(&H2f)))+2)
return baseUrlProtocol+_I_I_011_1OO_ 
end function
function _111_OI1_01_1(_0II0_IIO_010)
splitUrl=_0II0_IIO_010.split((Chr(&H2f)+Chr(&H2f)))
return splitUrl.count()>1 and Len(splitUrl[0])>0 
end function
function _0I1_O1OOII11(_I__O01OIIOI_)
if _I__O01OIIOI_.instr(0,(Chr(&H2f)))=0
return _I__O01OIIOI_ 
else 
return(Chr(47))+_I__O01OIIOI_ 
end if
end function
function _111IO110OI_O(_0IO10O1I0O1I,_I01II111_I_1)
if _111_OI1_01_1(_I01II111_I_1)
return _I01II111_I_1 
else if _O10O11_I111_(_I01II111_I_1)
return _1O1I0I_10OI1(_0IO10O1I0O1I,_I01II111_I_1) 
else 
return __O00I1111I1_(_0IO10O1I0O1I,_I01II111_I_1) 
end if
end function
function _O10O11_I111_(_1_11__OO0O_0)
return _1_11__OO0O_0.Instr((Chr(&H77)+Chr(&H77)+Chr(&H77)))=0 
end function
function __O00I1111I1_(_11OOII0010II,_1_I00IOOI_1O)
if _1_I00IOOI_1O.Left(1)=(Chr(&H2f))
host=__0O_0O___OOO(_11OOII0010II)
return host+_1_I00IOOI_1O 
else 
return _0__1O00I1I10(_11OOII0010II,_1_I00IOOI_1O) 
end if
end function
function __0O_0O___OOO(_1I101IIO000_)
host=Chr(0)
defaultProtocol=(Chr(&H68)+Chr(116)+Chr(116)+Chr(&H70)+Chr(&H73)+Chr(58)+Chr(47)+Chr(47))
if _111_OI1_01_1(_1I101IIO000_)
protocol=_1I101IIO000_.Left(_1I101IIO000_.Instr((Chr(&H2f)+Chr(&H2f)))+2)
hostname=_1I101IIO000_.Split(protocol)[1].Split((Chr(47)))[0]
return protocol+hostname 
else 
hostname=_1I101IIO000_.Split((Chr(47)))[0]
return defaultProtocol+hostname 
end if
end function
function _0__1O00I1I10(_1000_01010IO,_1_O__II00I00)
absoluteUrlArray=_1000_01010IO.Split((Chr(47)))
parentFolderIndex=absoluteUrlArray.Count()-1
replacePath=(Chr(47))+absoluteUrlArray[parentFolderIndex]
baseUrl=_1000_01010IO.Replace(replacePath,Chr(0)).Trim()
return baseUrl+_0I1_O1OOII11(_1_O__II00I00) 
end function
function ___O0O_IOI0OO(_11001100_II0)
return _11001100_II0.Instr((Chr(&H2e)+Chr(&H2e)+Chr(47)))=0 
end function
function _0011I1O0IIO1(_O0O_I110__IO,__1I0I_IOO01O)
if _OO_O1_O1O0O_(_O0O_I110__IO)or _OO_O1_O1O0O_(__1I0I_IOO01O)return invalid 
relativeUrlArray=_O0O_I110__IO.Split((Chr(&H2e)+Chr(46)+Chr(&H2f)))
relativeUrlWithoutPath=relativeUrlArray[relativeUrlArray.Count()-1]
numberOfFoldersToReachParent=relativeUrlArray.Count()
mainUrlFoldersArray=__1I0I_IOO01O.Split((Chr(&H2f)))
numberOfFoldersInMainUrl=mainUrlFoldersArray.Count()
numberOfFoldersToRemove=numberOfFoldersInMainUrl-numberOfFoldersToReachParent
parentFolderUrl=__1I0I_IOO01O
for i=numberOfFoldersInMainUrl-1 to numberOfFoldersToRemove step -1
folder=mainUrlFoldersArray[i]
if not _OO_O1_O1O0O_(folder)parentFolderUrl=parentFolderUrl.Replace(_0I1_O1OOII11(folder),Chr(0)).Trim()
end for
return parentFolderUrl+_0I1_O1OOII11(relativeUrlWithoutPath) 
end function
function __0I_011I_I01(_11_OOIIIO0_1)
if _OO_O1_O1O0O_(_11_OOIIIO0_1)return invalid 
if _11_OOIIIO0_1.Instr(m.NewLine)
return _11_OOIIIO0_1.Split(m.NewLine)[0] 
else 
return _11_OOIIIO0_1 
end if
end function
