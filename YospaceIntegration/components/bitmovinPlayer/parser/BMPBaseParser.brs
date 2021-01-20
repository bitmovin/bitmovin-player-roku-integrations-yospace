sub init()
m.NewLine=Chr(10)
end sub
function _0O_IO_0_IO0_(_1__IO_11I0I_)
if ___O001IO_I_I(_1__IO_11I0I_)
return(1=1) 
else if _0O0_0___I00_(_1__IO_11I0I_)
return(1=1) 
else 
return(1=2) 
end if
end function
function _0111IIO_0OOO(_001II11_I1OI,_OI__OO0101_I)
baseUrlProtocol=_001II11_I1OI.Left(_OI__OO0101_I.Instr((Chr(47)+Chr(47)))+2)
return baseUrlProtocol+_OI__OO0101_I 
end function
function ___O001IO_I_I(_OO01I_OO1O_1)
splitUrl=_OO01I_OO1O_1.split((Chr(&H2f)+Chr(47)))
return splitUrl.count()>1 and Len(splitUrl[0])>0 
end function
function _IO0OO_I0__1I(__11_0I0001OI)
if __11_0I0001OI.instr(0,(Chr(47)))=0
return __11_0I0001OI 
else 
return(Chr(47))+__11_0I0001OI 
end if
end function
function _0I0OIIIO1O11(__11_0O0O_1_I,_00IO_I101IOO)
if ___O001IO_I_I(_00IO_I101IOO)
return _00IO_I101IOO 
else if _0O0_0___I00_(_00IO_I101IOO)
return _0111IIO_0OOO(__11_0O0O_1_I,_00IO_I101IOO) 
else 
return _1_1_101_OI_O(__11_0O0O_1_I,_00IO_I101IOO) 
end if
end function
function _0O0_0___I00_(_OOIIO00O0_II)
return _OOIIO00O0_II.Instr((Chr(119)+Chr(119)+Chr(&H77)))=0 
end function
function _1_1_101_OI_O(_II_IO000_O00,_I0II_10I101O)
if _I0II_10I101O.Left(1)=(Chr(47))
host=_II0O_1_O0I1I(_II_IO000_O00)
return host+_I0II_10I101O 
else 
return _I11I1I10OOO0(_II_IO000_O00,_I0II_10I101O) 
end if
end function
function _II0O_1_O0I1I(__0OOOI0O0I_0)
host=Chr(0)
defaultProtocol=(Chr(104)+Chr(116)+Chr(116)+Chr(112)+Chr(&H73)+Chr(&H3a)+Chr(&H2f)+Chr(&H2f))
if ___O001IO_I_I(__0OOOI0O0I_0)
protocol=__0OOOI0O0I_0.Left(__0OOOI0O0I_0.Instr((Chr(&H2f)+Chr(47)))+2)
hostname=__0OOOI0O0I_0.Split(protocol)[1].Split((Chr(&H2f)))[0]
return protocol+hostname 
else 
hostname=__0OOOI0O0I_0.Split((Chr(47)))[0]
return defaultProtocol+hostname 
end if
end function
function _I11I1I10OOO0(___I110I_1001,_O0111O__011I)
absoluteUrlArray=___I110I_1001.Split((Chr(47)))
parentFolderIndex=absoluteUrlArray.Count()-1
replacePath=(Chr(47))+absoluteUrlArray[parentFolderIndex]
baseUrl=___I110I_1001.Replace(replacePath,Chr(0)).Trim()
return baseUrl+_IO0OO_I0__1I(_O0111O__011I) 
end function
function _I_0__1__1O1O(_OIOIO__I1O1_)
return _OIOIO__I1O1_.Instr((Chr(&H2e)+Chr(46)+Chr(&H2f)))=0 
end function
function _1_0_O1I1_0O1(__I11I1100O1_,__I_O1O0IIO1I)
if _I1_I11_1O_0I(__I11I1100O1_)or _I1_I11_1O_0I(__I_O1O0IIO1I)return invalid 
relativeUrlArray=__I11I1100O1_.Split((Chr(&H2e)+Chr(46)+Chr(&H2f)))
relativeUrlWithoutPath=relativeUrlArray[relativeUrlArray.Count()-1]
numberOfFoldersToReachParent=relativeUrlArray.Count()
mainUrlFoldersArray=__I_O1O0IIO1I.Split((Chr(47)))
numberOfFoldersInMainUrl=mainUrlFoldersArray.Count()
numberOfFoldersToRemove=numberOfFoldersInMainUrl-numberOfFoldersToReachParent
parentFolderUrl=__I_O1O0IIO1I
for i=numberOfFoldersInMainUrl-1 to numberOfFoldersToRemove step -1
folder=mainUrlFoldersArray[i]
if not _I1_I11_1O_0I(folder)parentFolderUrl=parentFolderUrl.Replace(_IO0OO_I0__1I(folder),Chr(0)).Trim()
end for
return parentFolderUrl+_IO0OO_I0__1I(relativeUrlWithoutPath) 
end function
function _0O1101110O1O(_O1I11OO_1O00)
if _I1_I11_1O_0I(_O1I11OO_1O00)return invalid 
if _O1I11OO_1O00.Instr(m.NewLine)
return _O1I11OO_1O00.Split(m.NewLine)[0] 
else 
return _O1I11OO_1O00 
end if
end function
