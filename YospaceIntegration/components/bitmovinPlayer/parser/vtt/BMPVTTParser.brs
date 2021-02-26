sub init()
m.parsedVttData=[]
m.rawItemDataExtracted=[]
end sub
function parseVtt(_00_O0O10_O1_,_1I0_10_OI1_I)
m.top.error=invalid
extractEntryDataRegex=CreateObject((Chr(114)+Chr(111)+Chr(&H52)+Chr(101)+Chr(103)+Chr(101)+Chr(120)),(Chr(40)+Chr(&H3f)+Chr(109)+Chr(&H29)+Chr(94)+Chr(40)+Chr(&H5c)+Chr(100)+Chr(&H7b)+Chr(50)+Chr(125)+Chr(&H3a)+Chr(&H5c)+Chr(100)+Chr(&H7b)+Chr(50)+Chr(&H7d)+Chr(58)+Chr(92)+Chr(&H64)+Chr(&H7b)+Chr(&H32)+Chr(&H7d)+Chr(&H5c)+Chr(46)+Chr(&H5c)+Chr(&H64)+Chr(43)+Chr(41)+Chr(32)+Chr(&H2b)+Chr(45)+Chr(&H2d)+Chr(62)+Chr(32)+Chr(&H2b)+Chr(&H28)+Chr(92)+Chr(100)+Chr(&H7b)+Chr(50)+Chr(125)+Chr(58)+Chr(&H5c)+Chr(&H64)+Chr(123)+Chr(&H32)+Chr(&H7d)+Chr(&H3a)+Chr(92)+Chr(100)+Chr(&H7b)+Chr(50)+Chr(&H7d)+Chr(92)+Chr(&H2e)+Chr(92)+Chr(100)+Chr(43)+Chr(41)+Chr(&H2e)+Chr(&H2a)+Chr(91)+Chr(92)+Chr(114)+Chr(92)+Chr(110)+Chr(93)+Chr(43)+Chr(&H5c)+Chr(115)+Chr(&H2a)+Chr(&H28)+Chr(&H5b)+Chr(94)+Chr(&H23)+Chr(124)+Chr(&H5c)+Chr(110)+Chr(&H5d)+Chr(&H2b)+Chr(&H29)+Chr(&H28)+Chr(&H28)+Chr(&H3f)+Chr(58)+Chr(&H28)+Chr(&H3f)+Chr(&H21)+Chr(&H5c)+Chr(114)+Chr(&H3f)+Chr(92)+Chr(&H6e)+Chr(&H5c)+Chr(114)+Chr(&H3f)+Chr(&H5c)+Chr(110)+Chr(41)+Chr(46)+Chr(41)+Chr(&H2a)+Chr(41)),(Chr(&H69)))
extractHeaderRegex=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H52)+Chr(&H65)+Chr(&H67)+Chr(&H65)+Chr(120)),(Chr(40)+Chr(&H3f)+Chr(&H3c)+Chr(&H21)+Chr(&H5b)+Chr(&H5c)+Chr(119)+Chr(92)+Chr(100)+Chr(93)+Chr(&H29)+Chr(87)+Chr(&H45)+Chr(66)+Chr(86)+Chr(&H54)+Chr(84)+Chr(40)+Chr(63)+Chr(&H21)+Chr(91)+Chr(&H5c)+Chr(&H77)+Chr(92)+Chr(&H64)+Chr(93)+Chr(&H29)),(Chr(&H69)))
if not _OO_O1_O1O0O_(_1I0_10_OI1_I)
if extractHeaderRegex.Match(_1I0_10_OI1_I).Count()=0
m.top.error=(Chr(77)+Chr(105)+Chr(115)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(32)+Chr(&H57)+Chr(&H45)+Chr(&H42)+Chr(86)+Chr(84)+Chr(84)+Chr(32)+Chr(104)+Chr(&H65)+Chr(97)+Chr(100)+Chr(101)+Chr(114)+Chr(&H21))
return m.parsedVttData 
end if
m.rawItemDataExtracted=extractEntryDataRegex.MatchAll(_1I0_10_OI1_I)
for i=0 to m.rawItemDataExtracted.Count()-1
entry=_0O_00I00I__0(_00_O0O10_O1_,m.rawItemDataExtracted[i])
m.parsedVttData.Push(entry)
end for
end if
if m.parsedVttData.Count()=0
m.top.error=(Chr(&H4e)+Chr(111)+Chr(&H20)+Chr(&H6d)+Chr(&H61)+Chr(116)+Chr(&H63)+Chr(104)+Chr(32)+Chr(&H66)+Chr(111)+Chr(117)+Chr(110)+Chr(100)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(&H20)+Chr(&H76)+Chr(116)+Chr(116)+Chr(&H20)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(112)+Chr(&H6f)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(&H2e))
end if
return m.parsedVttData 
end function
function _100_II00_10_(___I0O01I__0O)
dimAndPos={}
joined=___I0O01I__0O.Replace(Chr(35),Chr(0)).Trim().Split(Chr(61))
keys=joined[0].Split(Chr(0))
values=joined[1].Split(Chr(44))
for i=0 to keys.Count()-1
dimAndPos[keys[i]]=values[i].ToInt()
end for
return dimAndPos 
end function
function _1IOOOO1II_00(_IIO1O_101IO_)
regex=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(82)+Chr(&H65)+Chr(&H67)+Chr(&H65)+Chr(120)),(Chr(&H5e)+Chr(40)+Chr(&H5b)+Chr(&H61)+Chr(&H2d)+Chr(122)+Chr(&H41)+Chr(&H2d)+Chr(&H5a)+Chr(93)+Chr(&H2a)+Chr(&H3a)+Chr(&H29)+Chr(63)+Chr(40)+Chr(63)+Chr(58)+Chr(92)+Chr(47)+Chr(43)+Chr(41)+Chr(&H3f)+Chr(40)+Chr(&H2e)+Chr(42)+Chr(40)+Chr(63)+Chr(61)+Chr(91)+Chr(92)+Chr(&H2f)+Chr(93)+Chr(41)+Chr(124)+Chr(40)+Chr(46)+Chr(42)+Chr(&H28)+Chr(&H3f)+Chr(&H3d)+Chr(&H5b)+Chr(&H5c)+Chr(&H3f)+Chr(35)+Chr(&H3b)+Chr(93)+Chr(&H29)+Chr(&H7c)+Chr(46)+Chr(42)+Chr(&H29)+Chr(&H29)),(Chr(&H69)))
extractedMatches=regex.MatchAll(_IIO1O_101IO_)
extractedData={}
if extractedMatches.Count()>0
extractedData.protocol=extractedMatches[0][1]
extractedData.baseVttUrl=extractedMatches[0][2]
end if
return extractedData 
end function
function _1IO1_I_00I0I(_1_0100O0___1)
doubleSlash=(Chr(47)+Chr(47))
defaultProtocol=(Chr(104)+Chr(116)+Chr(&H74)+Chr(&H70)+Chr(115)+Chr(&H3a))
baseUrlData=_1IOOOO1II_00(_1_0100O0___1)
extractedProtocol=baseUrlData.protocol
extractedBaseVttUrl=baseUrlData.baseVttUrl
if baseUrlData.Count()=0 or Len(extractedBaseVttUrl)=0 return Chr(0) 
if Len(extractedProtocol)>0
return extractedProtocol+doubleSlash+extractedBaseVttUrl 
else 
return defaultProtocol+doubleSlash+extractedBaseVttUrl 
end if
end function
function _IIO10__1I1_O(____11O0_I1I0,__1I__10IO100)
if _OO_O1_O1O0O_(__1I__10IO100.Lookup(____11O0_I1I0))
value=Val(____11O0_I1I0)
else 
value=__1I__10IO100.Lookup(____11O0_I1I0)
end if
return Int(value) 
end function
function __OI0O1O_I_0I(_1III_O1OOIO0)
tempArray=_1III_O1OOIO0.Split(Chr(58))
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
seconds=_IIO10__1I1_O(tempArray[0],mapperValues)*3600
seconds=seconds+_IIO10__1I1_O(tempArray[1],mapperValues)*60
seconds=seconds+_IIO10__1I1_O(tempArray[2],mapperValues)
return seconds 
end function
function __0I_O__OO_1_(_I011_0_I_1OI,_OOII_01O11O0)
if _111_OI1_01_1(_OOII_01O11O0)
return _OOII_01O11O0 
else 
baseUrlProtocol=_I011_0_I_1OI.split((Chr(&H2f)+Chr(47)))[0]
return baseUrlProtocol+_OOII_01O11O0 
end if
end function
function _O1O0_I11I0O0(___I_O1__10IO,_I100I_0_0OOI)
url=Chr(0)
baseVttUrl=_1IO1_I_00I0I(___I_O1__10IO)
if ___OIO011O__0(_I100I_0_0OOI)
url=__0I_O__OO_1_(baseVttUrl,_I100I_0_0OOI)
else 
url=baseVttUrl+_0I1_O1OOII11(_I100I_0_0OOI)
end if
return url 
end function
function _0O_00I00I__0(_OOOI00_IIOII,__0I_10IIOI_O)
formatedData={}
formatedData[(Chr(116)+Chr(&H65)+Chr(&H78)+Chr(&H74))]=__0I_10IIOI_O[0]
formatedData[(Chr(115)+Chr(&H74)+Chr(&H61)+Chr(&H72)+Chr(&H74))]=__OI0O1O_I_0I(__0I_10IIOI_O[1])
formatedData[(Chr(101)+Chr(110)+Chr(100))]=__OI0O1O_I_0I(__0I_10IIOI_O[2])
formatedData[(Chr(&H75)+Chr(&H72)+Chr(&H6c))]=_O1O0_I11I0O0(_OOOI00_IIOII,__0I_10IIOI_O[3])
if Len(__0I_10IIOI_O[4])>0
dimAndPosData=_100_II00_10_(__0I_10IIOI_O[4])
for each key in dimAndPosData
formatedData[key]=dimAndPosData[key]
end for
end if
return formatedData 
end function
