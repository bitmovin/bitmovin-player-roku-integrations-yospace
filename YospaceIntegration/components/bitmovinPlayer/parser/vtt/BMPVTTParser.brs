sub init()
m.parsedVttData=[]
m.rawItemDataExtracted=[]
end sub
function parseVtt(_1I0_1II_OO0I,_I1O_0O101_0_)
m.top.error=invalid
extractEntryDataRegex=CreateObject((Chr(114)+Chr(111)+Chr(82)+Chr(&H65)+Chr(&H67)+Chr(101)+Chr(120)),(Chr(&H28)+Chr(63)+Chr(109)+Chr(41)+Chr(94)+Chr(&H28)+Chr(92)+Chr(100)+Chr(&H7b)+Chr(&H32)+Chr(&H7d)+Chr(&H3a)+Chr(92)+Chr(&H64)+Chr(&H7b)+Chr(&H32)+Chr(125)+Chr(58)+Chr(&H5c)+Chr(100)+Chr(123)+Chr(&H32)+Chr(&H7d)+Chr(&H5c)+Chr(46)+Chr(92)+Chr(&H64)+Chr(43)+Chr(&H29)+Chr(&H20)+Chr(43)+Chr(&H2d)+Chr(45)+Chr(62)+Chr(&H20)+Chr(&H2b)+Chr(&H28)+Chr(&H5c)+Chr(&H64)+Chr(123)+Chr(&H32)+Chr(125)+Chr(&H3a)+Chr(&H5c)+Chr(100)+Chr(123)+Chr(&H32)+Chr(125)+Chr(&H3a)+Chr(&H5c)+Chr(&H64)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(92)+Chr(&H2e)+Chr(&H5c)+Chr(&H64)+Chr(&H2b)+Chr(&H29)+Chr(46)+Chr(42)+Chr(&H5b)+Chr(&H5c)+Chr(114)+Chr(&H5c)+Chr(110)+Chr(93)+Chr(&H2b)+Chr(&H5c)+Chr(&H73)+Chr(42)+Chr(&H28)+Chr(91)+Chr(&H5e)+Chr(&H23)+Chr(124)+Chr(&H5c)+Chr(&H6e)+Chr(93)+Chr(&H2b)+Chr(&H29)+Chr(&H28)+Chr(&H28)+Chr(63)+Chr(58)+Chr(40)+Chr(63)+Chr(&H21)+Chr(92)+Chr(114)+Chr(&H3f)+Chr(&H5c)+Chr(&H6e)+Chr(&H5c)+Chr(&H72)+Chr(63)+Chr(&H5c)+Chr(110)+Chr(41)+Chr(&H2e)+Chr(41)+Chr(&H2a)+Chr(&H29)),(Chr(&H69)))
extractHeaderRegex=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(82)+Chr(&H65)+Chr(&H67)+Chr(&H65)+Chr(&H78)),(Chr(&H28)+Chr(63)+Chr(60)+Chr(33)+Chr(91)+Chr(92)+Chr(&H77)+Chr(92)+Chr(&H64)+Chr(93)+Chr(&H29)+Chr(&H57)+Chr(69)+Chr(66)+Chr(&H56)+Chr(&H54)+Chr(84)+Chr(&H28)+Chr(63)+Chr(&H21)+Chr(91)+Chr(92)+Chr(&H77)+Chr(&H5c)+Chr(&H64)+Chr(93)+Chr(&H29)),(Chr(105)))
if not __OOI0OI11_O0(_I1O_0O101_0_)
if extractHeaderRegex.Match(_I1O_0O101_0_).Count()=0
m.top.error=(Chr(77)+Chr(&H69)+Chr(&H73)+Chr(&H73)+Chr(105)+Chr(110)+Chr(&H67)+Chr(32)+Chr(&H57)+Chr(69)+Chr(66)+Chr(86)+Chr(84)+Chr(&H54)+Chr(&H20)+Chr(&H68)+Chr(&H65)+Chr(97)+Chr(&H64)+Chr(&H65)+Chr(&H72)+Chr(&H21))
return m.parsedVttData 
end if
m.rawItemDataExtracted=extractEntryDataRegex.MatchAll(_I1O_0O101_0_)
for i=0 to m.rawItemDataExtracted.Count()-1
entry=_000II01110II(_1I0_1II_OO0I,m.rawItemDataExtracted[i])
m.parsedVttData.Push(entry)
end for
end if
if m.parsedVttData.Count()=0
m.top.error=(Chr(&H4e)+Chr(&H6f)+Chr(32)+Chr(109)+Chr(97)+Chr(&H74)+Chr(99)+Chr(104)+Chr(32)+Chr(102)+Chr(111)+Chr(&H75)+Chr(&H6e)+Chr(100)+Chr(32)+Chr(&H69)+Chr(110)+Chr(&H20)+Chr(118)+Chr(&H74)+Chr(116)+Chr(&H20)+Chr(114)+Chr(101)+Chr(115)+Chr(&H70)+Chr(&H6f)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(46))
end if
return m.parsedVttData 
end function
function _I0I00I_1I__1(_O_O_0_00_O1O)
dimAndPos={}
joined=_O_O_0_00_O1O.Replace(Chr(35),Chr(0)).Trim().Split(Chr(61))
keys=joined[0].Split(Chr(0))
values=joined[1].Split(Chr(44))
for i=0 to keys.Count()-1
dimAndPos[keys[i]]=values[i].ToInt()
end for
return dimAndPos 
end function
function _01_1_O1I11_0(__0_O00_0_1_1)
regex=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H52)+Chr(&H65)+Chr(&H67)+Chr(101)+Chr(&H78)),(Chr(94)+Chr(&H28)+Chr(&H5b)+Chr(97)+Chr(45)+Chr(122)+Chr(65)+Chr(45)+Chr(&H5a)+Chr(&H5d)+Chr(42)+Chr(58)+Chr(41)+Chr(63)+Chr(40)+Chr(63)+Chr(&H3a)+Chr(&H5c)+Chr(47)+Chr(43)+Chr(&H29)+Chr(&H3f)+Chr(&H28)+Chr(46)+Chr(&H2a)+Chr(40)+Chr(&H3f)+Chr(&H3d)+Chr(&H5b)+Chr(&H5c)+Chr(&H2f)+Chr(93)+Chr(&H29)+Chr(&H7c)+Chr(40)+Chr(&H2e)+Chr(42)+Chr(40)+Chr(&H3f)+Chr(&H3d)+Chr(91)+Chr(&H5c)+Chr(&H3f)+Chr(&H23)+Chr(59)+Chr(&H5d)+Chr(&H29)+Chr(&H7c)+Chr(46)+Chr(&H2a)+Chr(&H29)+Chr(41)),(Chr(105)))
extractedMatches=regex.MatchAll(__0_O00_0_1_1)
extractedData={}
if extractedMatches.Count()>0
extractedData.protocol=extractedMatches[0][1]
extractedData.baseVttUrl=extractedMatches[0][2]
end if
return extractedData 
end function
function _1II0I00OOO0_(_01I_0I1IOO0_)
doubleSlash=(Chr(47)+Chr(47))
defaultProtocol=(Chr(104)+Chr(&H74)+Chr(&H74)+Chr(112)+Chr(&H73)+Chr(&H3a))
baseUrlData=_01_1_O1I11_0(_01I_0I1IOO0_)
extractedProtocol=baseUrlData.protocol
extractedBaseVttUrl=baseUrlData.baseVttUrl
if baseUrlData.Count()=0 or Len(extractedBaseVttUrl)=0 return Chr(0) 
if Len(extractedProtocol)>0
return extractedProtocol+doubleSlash+extractedBaseVttUrl 
else 
return defaultProtocol+doubleSlash+extractedBaseVttUrl 
end if
end function
function _I10II011I0I_(_O_O1O1____O1,___01IO1II1O0)
if __OOI0OI11_O0(___01IO1II1O0.Lookup(_O_O1O1____O1))
value=Val(_O_O1O1____O1)
else 
value=___01IO1II1O0.Lookup(_O_O1O1____O1)
end if
return Int(value) 
end function
function __10O_IIIO0I1(_OI01_1O0O1I1)
tempArray=_OI01_1O0O1I1.Split(Chr(58))
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
seconds=_I10II011I0I_(tempArray[0],mapperValues)*3600
seconds=seconds+_I10II011I0I_(tempArray[1],mapperValues)*60
seconds=seconds+_I10II011I0I_(tempArray[2],mapperValues)
return seconds 
end function
function _I1OI0__I1_OO(__OO01101O1_I,_I1__OI_IO0O_)
if _OOOOO0_III1_(_I1__OI_IO0O_)
return _I1__OI_IO0O_ 
else 
baseUrlProtocol=__OO01101O1_I.split((Chr(&H2f)+Chr(&H2f)))[0]
return baseUrlProtocol+_I1__OI_IO0O_ 
end if
end function
function __0OOII_OII0I(_OOI1O00I0IIO,__O1_O0_1OO_O)
url=Chr(0)
baseVttUrl=_1II0I00OOO0_(_OOI1O00I0IIO)
if _0O0_O0_IO1_I(__O1_O0_1OO_O)
url=_I1OI0__I1_OO(baseVttUrl,__O1_O0_1OO_O)
else 
url=baseVttUrl+_I0I_0_II0__O(__O1_O0_1OO_O)
end if
return url 
end function
function _000II01110II(__0_0I10O0O01,__IOOOI1OI01O)
formatedData={}
formatedData[(Chr(116)+Chr(101)+Chr(120)+Chr(116))]=__IOOOI1OI01O[0]
formatedData[(Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(&H74))]=__10O_IIIO0I1(__IOOOI1OI01O[1])
formatedData[(Chr(101)+Chr(110)+Chr(&H64))]=__10O_IIIO0I1(__IOOOI1OI01O[2])
formatedData[(Chr(&H75)+Chr(&H72)+Chr(&H6c))]=__0OOII_OII0I(__0_0I10O0O01,__IOOOI1OI01O[3])
if Len(__IOOOI1OI01O[4])>0
dimAndPosData=_I0I00I_1I__1(__IOOOI1OI01O[4])
for each key in dimAndPosData
formatedData[key]=dimAndPosData[key]
end for
end if
return formatedData 
end function
