sub init()
m.NewLine=Chr(10)
end sub
function _I_1O1_001_10(_IO0000O1IO_I)
if _00_111IIOO_O(_IO0000O1IO_I)
return(1=1) 
else if _O0_I1_0I0IIO(_IO0000O1IO_I)
return(1=1) 
else 
return(1=2) 
end if
end function
function __I1O__O11_11(_0IO_0I_000O1,_10O1IIOO1_11)
baseUrlProtocol=_0IO_0I_000O1.Left(_10O1IIOO1_11.Instr((Chr(47)+Chr(47)))+2)
return baseUrlProtocol+_10O1IIOO1_11 
end function
function _00_111IIOO_O(_OO0_0OOIO_0I)
splitUrl=_OO0_0OOIO_0I.split((Chr(47)+Chr(&H2f)))
return splitUrl.count()>1 and Len(splitUrl[0])>0 
end function
function _010_0O_I1I1_(_I_1IOI1__1__)
if _I_1IOI1__1__.instr(0,(Chr(47)))=0
return _I_1IOI1__1__ 
else 
return(Chr(&H2f))+_I_1IOI1__1__ 
end if
end function
function _I01OO0_01I1_(_IO1I010I0_1_,_11O1_011IO1_)
if _00_111IIOO_O(_11O1_011IO1_)
return _11O1_011IO1_ 
else if _O0_I1_0I0IIO(_11O1_011IO1_)
return __I1O__O11_11(_IO1I010I0_1_,_11O1_011IO1_) 
else 
return _1IO_1_1O_IO0(_IO1I010I0_1_,_11O1_011IO1_) 
end if
end function
function _O0_I1_0I0IIO(_O0I0_1_0OO_1)
return _O0I0_1_0OO_1.Instr((Chr(119)+Chr(&H77)+Chr(119)))=0 
end function
function _1IO_1_1O_IO0(_00_0_OOO100_,_I10O_011O_O0)
if _I10O_011O_O0.Left(1)=(Chr(&H2f))
host=_1__O1OI1I1_0(_00_0_OOO100_)
return host+_I10O_011O_O0 
else 
return __001101OIO10(_00_0_OOO100_,_I10O_011O_O0) 
end if
end function
function _1__O1OI1I1_0(_I_O_1_O_I0I0)
host=Chr(0)
defaultProtocol=(Chr(104)+Chr(116)+Chr(116)+Chr(&H70)+Chr(115)+Chr(58)+Chr(&H2f)+Chr(47))
if _00_111IIOO_O(_I_O_1_O_I0I0)
protocol=_I_O_1_O_I0I0.Left(_I_O_1_O_I0I0.Instr((Chr(47)+Chr(47)))+2)
hostname=_I_O_1_O_I0I0.Split(protocol)[1].Split((Chr(&H2f)))[0]
return protocol+hostname 
else 
hostname=_I_O_1_O_I0I0.Split((Chr(47)))[0]
return defaultProtocol+hostname 
end if
end function
function __001101OIO10(_101O0_01O0IO,_0_I011O1II_I)
absoluteUrlArray=_101O0_01O0IO.Split((Chr(&H2f)))
parentFolderIndex=absoluteUrlArray.Count()-1
replacePath=(Chr(&H2f))+absoluteUrlArray[parentFolderIndex]
baseUrl=_101O0_01O0IO.Replace(replacePath,Chr(0)).Trim()
return baseUrl+_010_0O_I1I1_(_0_I011O1II_I) 
end function
function _I0O1110_1I00(_I0000O00___1)
return _I0000O00___1.Instr((Chr(46)+Chr(46)+Chr(47)))=0 
end function
function __I0010_0I111(__OO1OIO_1I__,_1011I0III0_1)
if _110__I1O00_I(__OO1OIO_1I__)or _110__I1O00_I(_1011I0III0_1)return invalid 
relativeUrlArray=__OO1OIO_1I__.Split((Chr(46)+Chr(46)+Chr(&H2f)))
relativeUrlWithoutPath=relativeUrlArray[relativeUrlArray.Count()-1]
numberOfFoldersToReachParent=relativeUrlArray.Count()
mainUrlFoldersArray=_1011I0III0_1.Split((Chr(47)))
numberOfFoldersInMainUrl=mainUrlFoldersArray.Count()
numberOfFoldersToRemove=numberOfFoldersInMainUrl-numberOfFoldersToReachParent
parentFolderUrl=_1011I0III0_1
for i=numberOfFoldersInMainUrl-1 to numberOfFoldersToRemove step -1
folder=mainUrlFoldersArray[i]
if not _110__I1O00_I(folder)parentFolderUrl=parentFolderUrl.Replace(_010_0O_I1I1_(folder),Chr(0)).Trim()
end for
return parentFolderUrl+_010_0O_I1I1_(relativeUrlWithoutPath) 
end function
function _I1__1_1III0O(_01O01IIIIO_O)
if _110__I1O00_I(_01O01IIIIO_O)return invalid 
if _01O01IIIIO_O.Instr(m.NewLine)
return _01O01IIIIO_O.Split(m.NewLine)[0] 
else 
return _01O01IIIIO_O 
end if
end function
