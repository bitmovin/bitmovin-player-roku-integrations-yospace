sub init()
m.parsedVttData=[]
m.rawItemDataExtracted=[]
end sub
function parseVtt(__O_0OIIO0O0O,__O_I_OO_OIO1)
m.top.error=invalid
extractEntryDataRegex=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H52)+Chr(&H65)+Chr(103)+Chr(&H65)+Chr(&H78)),(Chr(40)+Chr(&H3f)+Chr(&H6d)+Chr(&H29)+Chr(&H5e)+Chr(40)+Chr(92)+Chr(100)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(58)+Chr(&H5c)+Chr(&H64)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(58)+Chr(&H5c)+Chr(&H64)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(92)+Chr(46)+Chr(&H5c)+Chr(100)+Chr(&H2b)+Chr(&H29)+Chr(32)+Chr(43)+Chr(45)+Chr(45)+Chr(62)+Chr(32)+Chr(43)+Chr(&H28)+Chr(&H5c)+Chr(&H64)+Chr(&H7b)+Chr(&H32)+Chr(125)+Chr(&H3a)+Chr(92)+Chr(&H64)+Chr(123)+Chr(&H32)+Chr(125)+Chr(58)+Chr(&H5c)+Chr(100)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(92)+Chr(46)+Chr(92)+Chr(&H64)+Chr(&H2b)+Chr(41)+Chr(46)+Chr(42)+Chr(91)+Chr(&H5c)+Chr(114)+Chr(&H5c)+Chr(110)+Chr(93)+Chr(43)+Chr(92)+Chr(&H73)+Chr(42)+Chr(40)+Chr(91)+Chr(&H5e)+Chr(&H23)+Chr(124)+Chr(92)+Chr(110)+Chr(&H5d)+Chr(&H2b)+Chr(41)+Chr(40)+Chr(40)+Chr(63)+Chr(&H3a)+Chr(&H28)+Chr(&H3f)+Chr(33)+Chr(92)+Chr(&H72)+Chr(&H3f)+Chr(92)+Chr(&H6e)+Chr(&H5c)+Chr(114)+Chr(&H3f)+Chr(&H5c)+Chr(110)+Chr(&H29)+Chr(&H2e)+Chr(41)+Chr(&H2a)+Chr(&H29)),(Chr(105)))
extractHeaderRegex=CreateObject((Chr(&H72)+Chr(111)+Chr(82)+Chr(101)+Chr(&H67)+Chr(&H65)+Chr(120)),(Chr(40)+Chr(63)+Chr(&H3c)+Chr(33)+Chr(91)+Chr(92)+Chr(119)+Chr(92)+Chr(100)+Chr(93)+Chr(&H29)+Chr(87)+Chr(69)+Chr(&H42)+Chr(&H56)+Chr(&H54)+Chr(&H54)+Chr(&H28)+Chr(63)+Chr(&H21)+Chr(91)+Chr(&H5c)+Chr(119)+Chr(92)+Chr(100)+Chr(93)+Chr(&H29)),(Chr(&H69)))
if not _110__I1O00_I(__O_I_OO_OIO1)
if extractHeaderRegex.Match(__O_I_OO_OIO1).Count()=0
m.top.error=(Chr(&H4d)+Chr(105)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H20)+Chr(&H57)+Chr(&H45)+Chr(&H42)+Chr(&H56)+Chr(84)+Chr(84)+Chr(&H20)+Chr(104)+Chr(&H65)+Chr(97)+Chr(&H64)+Chr(101)+Chr(&H72)+Chr(33))
return m.parsedVttData 
end if
m.rawItemDataExtracted=extractEntryDataRegex.MatchAll(__O_I_OO_OIO1)
for i=0 to m.rawItemDataExtracted.Count()-1
entry=_OIOIII1I10OO(__O_0OIIO0O0O,m.rawItemDataExtracted[i])
m.parsedVttData.Push(entry)
end for
end if
if m.parsedVttData.Count()=0
m.top.error=(Chr(&H4e)+Chr(111)+Chr(&H20)+Chr(&H6d)+Chr(&H61)+Chr(116)+Chr(99)+Chr(&H68)+Chr(32)+Chr(&H66)+Chr(&H6f)+Chr(117)+Chr(&H6e)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(&H20)+Chr(&H76)+Chr(&H74)+Chr(&H74)+Chr(32)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(112)+Chr(&H6f)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(46))
end if
return m.parsedVttData 
end function
function _11I01O_O1010(_11_0O__1101O)
dimAndPos={}
joined=_11_0O__1101O.Replace(Chr(35),Chr(0)).Trim().Split(Chr(61))
keys=joined[0].Split(Chr(0))
values=joined[1].Split(Chr(44))
for i=0 to keys.Count()-1
dimAndPos[keys[i]]=values[i].ToInt()
end for
return dimAndPos 
end function
function _110O0_0IO110(_I0OOII_IOOII)
regex=CreateObject((Chr(114)+Chr(111)+Chr(82)+Chr(&H65)+Chr(103)+Chr(101)+Chr(&H78)),(Chr(&H5e)+Chr(&H28)+Chr(&H5b)+Chr(97)+Chr(45)+Chr(&H7a)+Chr(&H41)+Chr(&H2d)+Chr(&H5a)+Chr(93)+Chr(42)+Chr(&H3a)+Chr(41)+Chr(63)+Chr(40)+Chr(&H3f)+Chr(58)+Chr(92)+Chr(&H2f)+Chr(&H2b)+Chr(&H29)+Chr(63)+Chr(&H28)+Chr(&H2e)+Chr(&H2a)+Chr(40)+Chr(&H3f)+Chr(&H3d)+Chr(91)+Chr(&H5c)+Chr(&H2f)+Chr(&H5d)+Chr(41)+Chr(124)+Chr(&H28)+Chr(46)+Chr(&H2a)+Chr(&H28)+Chr(63)+Chr(61)+Chr(&H5b)+Chr(92)+Chr(&H3f)+Chr(35)+Chr(&H3b)+Chr(&H5d)+Chr(&H29)+Chr(&H7c)+Chr(46)+Chr(42)+Chr(41)+Chr(&H29)),(Chr(&H69)))
extractedMatches=regex.MatchAll(_I0OOII_IOOII)
extractedData={}
if extractedMatches.Count()>0
extractedData.protocol=extractedMatches[0][1]
extractedData.baseVttUrl=extractedMatches[0][2]
end if
return extractedData 
end function
function _IIOOO1_IO0__(_I0_1_OOOIO00)
doubleSlash=(Chr(47)+Chr(&H2f))
defaultProtocol=(Chr(104)+Chr(&H74)+Chr(116)+Chr(&H70)+Chr(115)+Chr(58))
baseUrlData=_110O0_0IO110(_I0_1_OOOIO00)
extractedProtocol=baseUrlData.protocol
extractedBaseVttUrl=baseUrlData.baseVttUrl
if baseUrlData.Count()=0 or Len(extractedBaseVttUrl)=0 return Chr(0) 
if Len(extractedProtocol)>0
return extractedProtocol+doubleSlash+extractedBaseVttUrl 
else 
return defaultProtocol+doubleSlash+extractedBaseVttUrl 
end if
end function
function _O111IO1OI0_O(__OO00IIOI1_O,_1OII_010O00O)
if _110__I1O00_I(_1OII_010O00O.Lookup(__OO00IIOI1_O))
value=Val(__OO00IIOI1_O)
else 
value=_1OII_010O00O.Lookup(__OO00IIOI1_O)
end if
return Int(value) 
end function
function _1OO1_I111OO1(_O0O__0II101O)
tempArray=_O0O__0II101O.Split(Chr(58))
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
seconds=_O111IO1OI0_O(tempArray[0],mapperValues)*3600
seconds=seconds+_O111IO1OI0_O(tempArray[1],mapperValues)*60
seconds=seconds+_O111IO1OI0_O(tempArray[2],mapperValues)
return seconds 
end function
function _II__O_O1OOI_(_O11_101_11I1,_I11__OI1O_IO)
if _00_111IIOO_O(_I11__OI1O_IO)
return _I11__OI1O_IO 
else 
baseUrlProtocol=_O11_101_11I1.split((Chr(47)+Chr(47)))[0]
return baseUrlProtocol+_I11__OI1O_IO 
end if
end function
function _O1_OIO01110O(_OO100OI1O__1,_O0IIO0I_1I0I)
url=Chr(0)
baseVttUrl=_IIOOO1_IO0__(_OO100OI1O__1)
if _I_1O1_001_10(_O0IIO0I_1I0I)
url=_II__O_O1OOI_(baseVttUrl,_O0IIO0I_1I0I)
else 
url=baseVttUrl+_010_0O_I1I1_(_O0IIO0I_1I0I)
end if
return url 
end function
function _OIOIII1I10OO(_OO_11_OIO110,_1_O10O0O0O1O)
formatedData={}
formatedData[(Chr(116)+Chr(101)+Chr(&H78)+Chr(116))]=_1_O10O0O0O1O[0]
formatedData[(Chr(&H73)+Chr(&H74)+Chr(97)+Chr(114)+Chr(&H74))]=_1OO1_I111OO1(_1_O10O0O0O1O[1])
formatedData[(Chr(101)+Chr(110)+Chr(&H64))]=_1OO1_I111OO1(_1_O10O0O0O1O[2])
formatedData[(Chr(&H75)+Chr(114)+Chr(&H6c))]=_O1_OIO01110O(_OO_11_OIO110,_1_O10O0O0O1O[3])
if Len(_1_O10O0O0O1O[4])>0
dimAndPosData=_11I01O_O1010(_1_O10O0O0O1O[4])
for each key in dimAndPosData
formatedData[key]=dimAndPosData[key]
end for
end if
return formatedData 
end function
