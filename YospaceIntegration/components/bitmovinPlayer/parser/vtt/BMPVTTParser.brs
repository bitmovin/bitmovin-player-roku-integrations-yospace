sub init()
m.parsedVttData=[]
m.rawItemDataExtracted=[]
end sub
function parseVtt(_111_OO0OI_OO,_OIOIOIIO0_00)
m.top.error=invalid
extractEntryDataRegex=CreateObject((Chr(&H72)+Chr(111)+Chr(&H52)+Chr(&H65)+Chr(&H67)+Chr(&H65)+Chr(120)),(Chr(&H28)+Chr(&H3f)+Chr(109)+Chr(41)+Chr(94)+Chr(40)+Chr(&H5c)+Chr(&H64)+Chr(123)+Chr(&H32)+Chr(&H7d)+Chr(&H3a)+Chr(92)+Chr(&H64)+Chr(&H7b)+Chr(&H32)+Chr(&H7d)+Chr(58)+Chr(&H5c)+Chr(&H64)+Chr(&H7b)+Chr(&H32)+Chr(125)+Chr(&H5c)+Chr(&H2e)+Chr(92)+Chr(&H64)+Chr(&H2b)+Chr(41)+Chr(&H20)+Chr(43)+Chr(45)+Chr(45)+Chr(62)+Chr(&H20)+Chr(&H2b)+Chr(&H28)+Chr(92)+Chr(100)+Chr(123)+Chr(&H32)+Chr(125)+Chr(&H3a)+Chr(&H5c)+Chr(&H64)+Chr(&H7b)+Chr(50)+Chr(125)+Chr(58)+Chr(92)+Chr(&H64)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(&H5c)+Chr(46)+Chr(92)+Chr(100)+Chr(43)+Chr(41)+Chr(46)+Chr(&H2a)+Chr(&H5b)+Chr(92)+Chr(114)+Chr(92)+Chr(110)+Chr(&H5d)+Chr(43)+Chr(92)+Chr(115)+Chr(&H2a)+Chr(40)+Chr(91)+Chr(94)+Chr(&H23)+Chr(&H7c)+Chr(&H5c)+Chr(110)+Chr(93)+Chr(43)+Chr(&H29)+Chr(40)+Chr(&H28)+Chr(&H3f)+Chr(&H3a)+Chr(40)+Chr(63)+Chr(&H21)+Chr(92)+Chr(114)+Chr(63)+Chr(&H5c)+Chr(&H6e)+Chr(92)+Chr(&H72)+Chr(&H3f)+Chr(&H5c)+Chr(&H6e)+Chr(&H29)+Chr(46)+Chr(&H29)+Chr(42)+Chr(41)),(Chr(&H69)))
extractHeaderRegex=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H52)+Chr(101)+Chr(103)+Chr(&H65)+Chr(120)),(Chr(&H28)+Chr(&H3f)+Chr(&H3c)+Chr(&H21)+Chr(91)+Chr(92)+Chr(&H77)+Chr(92)+Chr(100)+Chr(93)+Chr(41)+Chr(&H57)+Chr(&H45)+Chr(&H42)+Chr(&H56)+Chr(84)+Chr(84)+Chr(&H28)+Chr(63)+Chr(33)+Chr(&H5b)+Chr(&H5c)+Chr(119)+Chr(&H5c)+Chr(&H64)+Chr(93)+Chr(41)),(Chr(&H69)))
if not _1100IO1O_0_I(_OIOIOIIO0_00)
if extractHeaderRegex.Match(_OIOIOIIO0_00).Count()=0
m.top.error=(Chr(77)+Chr(105)+Chr(115)+Chr(115)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H20)+Chr(&H57)+Chr(69)+Chr(66)+Chr(86)+Chr(84)+Chr(&H54)+Chr(32)+Chr(&H68)+Chr(101)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(&H72)+Chr(&H21))
return m.parsedVttData 
end if
m.rawItemDataExtracted=extractEntryDataRegex.MatchAll(_OIOIOIIO0_00)
for i=0 to m.rawItemDataExtracted.Count()-1
entry=_I11IO0II_OOO(_111_OO0OI_OO,m.rawItemDataExtracted[i])
m.parsedVttData.Push(entry)
end for
end if
if m.parsedVttData.Count()=0
m.top.error=(Chr(78)+Chr(111)+Chr(&H20)+Chr(109)+Chr(97)+Chr(116)+Chr(&H63)+Chr(104)+Chr(&H20)+Chr(102)+Chr(111)+Chr(117)+Chr(&H6e)+Chr(100)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(&H20)+Chr(118)+Chr(116)+Chr(116)+Chr(&H20)+Chr(114)+Chr(&H65)+Chr(115)+Chr(&H70)+Chr(&H6f)+Chr(110)+Chr(&H73)+Chr(101)+Chr(&H2e))
end if
return m.parsedVttData 
end function
function _0_1IOOO_O001(_01O1O_O_I110)
dimAndPos={}
joined=_01O1O_O_I110.Replace(Chr(35),Chr(0)).Trim().Split(Chr(61))
keys=joined[0].Split(Chr(0))
values=joined[1].Split(Chr(44))
for i=0 to keys.Count()-1
dimAndPos[keys[i]]=values[i].ToInt()
end for
return dimAndPos 
end function
function __1_1O0O__I__(_O1I1OI1O00I_)
regex=CreateObject((Chr(114)+Chr(111)+Chr(&H52)+Chr(&H65)+Chr(&H67)+Chr(101)+Chr(120)),(Chr(&H5e)+Chr(40)+Chr(91)+Chr(&H61)+Chr(45)+Chr(&H7a)+Chr(65)+Chr(45)+Chr(90)+Chr(&H5d)+Chr(&H2a)+Chr(58)+Chr(41)+Chr(63)+Chr(&H28)+Chr(63)+Chr(58)+Chr(&H5c)+Chr(47)+Chr(43)+Chr(41)+Chr(63)+Chr(&H28)+Chr(46)+Chr(42)+Chr(&H28)+Chr(63)+Chr(&H3d)+Chr(91)+Chr(&H5c)+Chr(&H2f)+Chr(&H5d)+Chr(&H29)+Chr(124)+Chr(&H28)+Chr(46)+Chr(42)+Chr(&H28)+Chr(&H3f)+Chr(61)+Chr(&H5b)+Chr(92)+Chr(63)+Chr(&H23)+Chr(&H3b)+Chr(93)+Chr(&H29)+Chr(&H7c)+Chr(&H2e)+Chr(&H2a)+Chr(&H29)+Chr(41)),(Chr(105)))
extractedMatches=regex.MatchAll(_O1I1OI1O00I_)
extractedData={}
if extractedMatches.Count()>0
extractedData.protocol=extractedMatches[0][1]
extractedData.baseVttUrl=extractedMatches[0][2]
end if
return extractedData 
end function
function _1O_0I1O1_IO_(_OOO101_O__1O)
doubleSlash=(Chr(&H2f)+Chr(&H2f))
defaultProtocol=(Chr(&H68)+Chr(&H74)+Chr(&H74)+Chr(&H70)+Chr(115)+Chr(&H3a))
baseUrlData=__1_1O0O__I__(_OOO101_O__1O)
extractedProtocol=baseUrlData.protocol
extractedBaseVttUrl=baseUrlData.baseVttUrl
if baseUrlData.Count()=0 or Len(extractedBaseVttUrl)=0 return Chr(0) 
if Len(extractedProtocol)>0
return extractedProtocol+doubleSlash+extractedBaseVttUrl 
else 
return defaultProtocol+doubleSlash+extractedBaseVttUrl 
end if
end function
function _0__0I___I00_(_1_011III0I0_,_IOOO1IO0_0O0)
if _1100IO1O_0_I(_IOOO1IO0_0O0.Lookup(_1_011III0I0_))
value=Val(_1_011III0I0_)
else 
value=_IOOO1IO0_0O0.Lookup(_1_011III0I0_)
end if
return Int(value) 
end function
function _0O0100___O_O(_1OO1011II010)
tempArray=_1OO1011II010.Split(Chr(58))
for i=0 to tempArray.Count()-1
if Instr(0,tempArray[i],Chr(46))>0
secAndMilisec=tempArray[i].Split(Chr(46))
tempArray.Delete(i)
for j=0 to secAndMilisec.Count()-1
tempArray.Push(secAndMilisec[j])
end for
end if
end for
mapperValues={"000":0,"00":0,"0":0}
seconds=_0__0I___I00_(tempArray[0],mapperValues)*3600
seconds=seconds+_0__0I___I00_(tempArray[1],mapperValues)*60
seconds=seconds+_0__0I___I00_(tempArray[2],mapperValues)
return seconds 
end function
function __I11_00I0II0(__I_O01__0I_O,_OO1I1_O1O0_0)
if _1___OO11_1I0(_OO1I1_O1O0_0)
return _OO1I1_O1O0_0 
else 
baseUrlProtocol=__I_O01__0I_O.split((Chr(&H2f)+Chr(47)))[0]
return baseUrlProtocol+_OO1I1_O1O0_0 
end if
end function
function _11I0OI000_OO(__O_11I_O_1I0,_01I1O0_IIIII)
url=Chr(0)
baseVttUrl=_1O_0I1O1_IO_(__O_11I_O_1I0)
if _OI_OOOI0O1II(_01I1O0_IIIII)
url=__I11_00I0II0(baseVttUrl,_01I1O0_IIIII)
else 
url=baseVttUrl+_IO0_OO0_O000(_01I1O0_IIIII)
end if
return url 
end function
function _I11IO0II_OOO(__OOO0_0_1_O1,__1O1OI1O___O)
formatedData={}
formatedData[(Chr(116)+Chr(&H65)+Chr(&H78)+Chr(116))]=__1O1OI1O___O[0]
formatedData[(Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(116))]=_0O0100___O_O(__1O1OI1O___O[1])
formatedData[(Chr(101)+Chr(&H6e)+Chr(&H64))]=_0O0100___O_O(__1O1OI1O___O[2])
formatedData[(Chr(117)+Chr(114)+Chr(108))]=_11I0OI000_OO(__OOO0_0_1_O1,__1O1OI1O___O[3])
if Len(__1O1OI1O___O[4])>0
dimAndPosData=_0_1IOOO_O001(__1O1OI1O___O[4])
for each key in dimAndPosData
formatedData[key]=dimAndPosData[key]
end for
end if
return formatedData 
end function
