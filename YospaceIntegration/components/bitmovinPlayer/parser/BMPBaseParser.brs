sub init()
m.NewLine=Chr(10)
end sub
function _OI_OOOI0O1II(_00O01_OII0OI)
if _1___OO11_1I0(_00O01_OII0OI)
return(1=1) 
else if _110OO0I0O__0(_00O01_OII0OI)
return(1=1) 
else 
return(1=2) 
end if
end function
function __OO1O1I00OI0(_11_0OIIIO101,_10O_11_I__11)
baseUrlProtocol=_11_0OIIIO101.Left(_10O_11_I__11.Instr((Chr(47)+Chr(47)))+2)
return baseUrlProtocol+_10O_11_I__11 
end function
function _1___OO11_1I0(_O_1I1OIII_01)
splitUrl=_O_1I1OIII_01.split((Chr(&H2f)+Chr(47)))
return splitUrl.count()>1 and Len(splitUrl[0])>0 
end function
function _IO0_OO0_O000(_O1_1_I1__O00)
if _O1_1_I1__O00.instr(0,(Chr(47)))=0
return _O1_1_I1__O00 
else 
return(Chr(47))+_O1_1_I1__O00 
end if
end function
function _1_OIO10110__(_11_0II1O_I0O,__I1I0OI_I1_1)
if _1___OO11_1I0(__I1I0OI_I1_1)
return __I1I0OI_I1_1 
else if _110OO0I0O__0(__I1I0OI_I1_1)
return __OO1O1I00OI0(_11_0II1O_I0O,__I1I0OI_I1_1) 
else 
return _011O_O1_0I_O(_11_0II1O_I0O,__I1I0OI_I1_1) 
end if
end function
function _110OO0I0O__0(__1I1__I1I00I)
return __1I1__I1I00I.Instr((Chr(119)+Chr(119)+Chr(&H77)))=0 
end function
function _011O_O1_0I_O(__0_11I0_0OI1,_0_IO10O1O__I)
if _0_IO10O1O__I.Left(1)=(Chr(47))
host=_IOI100III__0(__0_11I0_0OI1)
return host+_0_IO10O1O__I 
else 
return _00II1_O0OO_1(__0_11I0_0OI1,_0_IO10O1O__I) 
end if
end function
function _IOI100III__0(__11O001I10_1)
host=Chr(0)
defaultProtocol=(Chr(104)+Chr(&H74)+Chr(116)+Chr(&H70)+Chr(115)+Chr(58)+Chr(&H2f)+Chr(47))
if _1___OO11_1I0(__11O001I10_1)
protocol=__11O001I10_1.Left(__11O001I10_1.Instr((Chr(&H2f)+Chr(47)))+2)
hostname=__11O001I10_1.Split(protocol)[1].Split((Chr(47)))[0]
return protocol+hostname 
else 
hostname=__11O001I10_1.Split((Chr(&H2f)))[0]
return defaultProtocol+hostname 
end if
end function
function _00II1_O0OO_1(__O_OI_O_O_01,_0_OO0I1_01OO)
absoluteUrlArray=__O_OI_O_O_01.Split((Chr(47)))
parentFolderIndex=absoluteUrlArray.Count()-1
replacePath=(Chr(47))+absoluteUrlArray[parentFolderIndex]
baseUrl=__O_OI_O_O_01.Replace(replacePath,Chr(0)).Trim()
return baseUrl+_IO0_OO0_O000(_0_OO0I1_01OO) 
end function
function _1101I1_IO__I(_1OIO0OOI00I_)
return _1OIO0OOI00I_.Instr((Chr(&H2e)+Chr(46)+Chr(&H2f)))=0 
end function
function _00O_1O_1O_1_(_100I110_1__0,___I1I10_1001)
if _1100IO1O_0_I(_100I110_1__0)or _1100IO1O_0_I(___I1I10_1001)return invalid 
relativeUrlArray=_100I110_1__0.Split((Chr(&H2e)+Chr(46)+Chr(47)))
relativeUrlWithoutPath=relativeUrlArray[relativeUrlArray.Count()-1]
numberOfFoldersToReachParent=relativeUrlArray.Count()
mainUrlFoldersArray=___I1I10_1001.Split((Chr(&H2f)))
numberOfFoldersInMainUrl=mainUrlFoldersArray.Count()
numberOfFoldersToRemove=numberOfFoldersInMainUrl-numberOfFoldersToReachParent
parentFolderUrl=___I1I10_1001
for i=numberOfFoldersInMainUrl-1 to numberOfFoldersToRemove step -1
folder=mainUrlFoldersArray[i]
if not _1100IO1O_0_I(folder)parentFolderUrl=parentFolderUrl.Replace(_IO0_OO0_O000(folder),Chr(0)).Trim()
end for
return parentFolderUrl+_IO0_OO0_O000(relativeUrlWithoutPath) 
end function
function _OI000_O_IIOI(_1_10_0O____O)
if _1100IO1O_0_I(_1_10_0O____O)return invalid 
if _1_10_0O____O.Instr(m.NewLine)
return _1_10_0O____O.Split(m.NewLine)[0] 
else 
return _1_10_0O____O 
end if
end function
