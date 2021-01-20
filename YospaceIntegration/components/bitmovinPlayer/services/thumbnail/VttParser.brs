function _0O___1_0001I()
this={}
this[(Chr(&H5f)+Chr(&H70)+Chr(97)+Chr(&H72)+Chr(115)+Chr(101)+Chr(100)+Chr(86)+Chr(&H74)+Chr(116)+Chr(&H44)+Chr(97)+Chr(116)+Chr(97))]=[]
this[(Chr(95)+Chr(&H72)+Chr(&H61)+Chr(119)+Chr(&H49)+Chr(&H74)+Chr(&H65)+Chr(&H6d)+Chr(&H44)+Chr(&H61)+Chr(&H74)+Chr(&H61)+Chr(69)+Chr(120)+Chr(116)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(&H65)+Chr(&H64))]=[]
this[(Chr(&H5f)+Chr(103)+Chr(101)+Chr(116)+Chr(68)+Chr(105)+Chr(109)+Chr(65)+Chr(110)+Chr(100)+Chr(&H50)+Chr(&H6f)+Chr(&H73))]=function(_O_00I011_O_I)
dimAndPos={}
joined=_O_00I011_O_I.Replace(Chr(35),Chr(0)).Trim().Split(Chr(61))
keys=joined[0].Split(Chr(0))
values=joined[1].Split(Chr(44))
for i=0 to keys.Count()-1
dimAndPos[keys[i]]=values[i].ToInt()
end for
return dimAndPos 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(66)+Chr(&H61)+Chr(115)+Chr(&H65)+Chr(&H55)+Chr(&H72)+Chr(&H6c)+Chr(&H44)+Chr(&H61)+Chr(116)+Chr(&H61))]=function(_1O_IIO__0O1I)
regex=CreateObject((Chr(114)+Chr(111)+Chr(82)+Chr(&H65)+Chr(103)+Chr(101)+Chr(&H78)),(Chr(&H5e)+Chr(40)+Chr(91)+Chr(97)+Chr(&H2d)+Chr(122)+Chr(&H41)+Chr(45)+Chr(&H5a)+Chr(&H5d)+Chr(42)+Chr(&H3a)+Chr(41)+Chr(63)+Chr(40)+Chr(&H3f)+Chr(58)+Chr(92)+Chr(&H2f)+Chr(&H2b)+Chr(41)+Chr(63)+Chr(&H28)+Chr(&H2e)+Chr(42)+Chr(40)+Chr(&H3f)+Chr(61)+Chr(&H5b)+Chr(92)+Chr(47)+Chr(&H5d)+Chr(&H29)+Chr(124)+Chr(40)+Chr(&H2e)+Chr(&H2a)+Chr(&H28)+Chr(&H3f)+Chr(61)+Chr(91)+Chr(92)+Chr(63)+Chr(35)+Chr(59)+Chr(93)+Chr(&H29)+Chr(&H7c)+Chr(&H2e)+Chr(&H2a)+Chr(41)+Chr(41)),(Chr(&H69)))
extractedMatches=regex.MatchAll(_1O_IIO__0O1I)
extractedData={}
if extractedMatches.Count()>0
extractedData.protocol=extractedMatches[0][1]
extractedData.baseVttUrl=extractedMatches[0][2]
end if
return extractedData 
end function
this[(Chr(95)+Chr(&H67)+Chr(101)+Chr(116)+Chr(&H42)+Chr(&H61)+Chr(&H73)+Chr(&H65)+Chr(&H55)+Chr(&H72)+Chr(108))]=function(_I0I0II_I0_11)
doubleSlash=(Chr(&H2f)+Chr(&H2f))
defaultProtocol=(Chr(104)+Chr(116)+Chr(116)+Chr(112)+Chr(&H73)+Chr(58))
baseUrlData=m._extractBaseUrlData(_I0I0II_I0_11)
extractedProtocol=baseUrlData.protocol
extractedBaseVttUrl=baseUrlData.baseVttUrl
if baseUrlData.Count()=0 or Len(extractedBaseVttUrl)=0 return Chr(0) 
if Len(extractedProtocol)>0
return extractedProtocol+doubleSlash+extractedBaseVttUrl 
else 
return defaultProtocol+doubleSlash+extractedBaseVttUrl 
end if
end function
this[(Chr(&H5f)+Chr(99)+Chr(111)+Chr(110)+Chr(118)+Chr(101)+Chr(&H72)+Chr(&H74)+Chr(83)+Chr(116)+Chr(&H72)+Chr(&H54)+Chr(111)+Chr(&H49)+Chr(110)+Chr(116))]=function(_I1__O0I_I01O,_11_0_1IO_I10)
if _I1_I11_1O_0I(_11_0_1IO_I10.Lookup(_I1__O0I_I01O))
value=Val(_I1__O0I_I01O)
else 
value=_11_0_1IO_I10.Lookup(_I1__O0I_I01O)
end if
return Int(value) 
end function
this[(Chr(95)+Chr(103)+Chr(&H65)+Chr(&H74)+Chr(83)+Chr(101)+Chr(&H63)+Chr(111)+Chr(110)+Chr(100)+Chr(115))]=function(_1I10_0O_I0I0)
tempArray=_1I10_0O_I0I0.Split(Chr(58))
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
seconds=m._convertStrToInt(tempArray[0],mapperValues)*3600
seconds=seconds+m._convertStrToInt(tempArray[1],mapperValues)*60
seconds=seconds+m._convertStrToInt(tempArray[2],mapperValues)
return seconds 
end function
this[(Chr(95)+Chr(105)+Chr(115)+Chr(&H55)+Chr(&H72)+Chr(108)+Chr(65)+Chr(98)+Chr(&H73)+Chr(&H6f)+Chr(108)+Chr(&H75)+Chr(116)+Chr(101))]=function(__0_I1II_01I_)
return __0_I1II_01I_.split((Chr(&H2f)+Chr(&H2f))).count()>1 
end function
this[(Chr(95)+Chr(&H68)+Chr(&H61)+Chr(&H73)+Chr(&H50)+Chr(114)+Chr(&H6f)+Chr(116)+Chr(&H6f)+Chr(99)+Chr(&H6f)+Chr(108))]=function(_OI_OI1I__I1O)
splitUrl=_OI_OI1I__I1O.split((Chr(&H2f)+Chr(&H2f)))
return splitUrl.count()>1 and Len(splitUrl[0])>0 
end function
this[(Chr(95)+Chr(102)+Chr(&H6f)+Chr(114)+Chr(&H6d)+Chr(97)+Chr(&H74)+Chr(&H41)+Chr(98)+Chr(115)+Chr(&H6f)+Chr(108)+Chr(117)+Chr(116)+Chr(101)+Chr(&H49)+Chr(109)+Chr(&H61)+Chr(&H67)+Chr(&H65)+Chr(&H55)+Chr(114)+Chr(108))]=function(_1II01IO_0O0_,_1I1_000I1_II)
if m._hasProtocol(_1I1_000I1_II)
return _1I1_000I1_II 
else 
baseUrlProtocol=_1II01IO_0O0_.split((Chr(&H2f)+Chr(47)))[0]
return baseUrlProtocol+_1I1_000I1_II 
end if
end function
this[(Chr(&H5f)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(117)+Chr(114)+Chr(&H65)+Chr(&H4c)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(&H69)+Chr(110)+Chr(103)+Chr(83)+Chr(&H6c)+Chr(97)+Chr(115)+Chr(&H68)+Chr(70)+Chr(111)+Chr(114)+Chr(&H55)+Chr(114)+Chr(108))]=function(_1111_0_I1I0_)
if _1111_0_I1I0_.instr(0,(Chr(47)))=0
return _1111_0_I1I0_ 
else 
return(Chr(47))+_1111_0_I1I0_ 
end if
end function
this[(Chr(&H5f)+Chr(&H67)+Chr(&H65)+Chr(116)+Chr(84)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(85)+Chr(114)+Chr(&H6c))]=function(_IOII0I_1I1IO,__1III_01IO10)
url=Chr(0)
baseVttUrl=m._getBaseUrl(_IOII0I_1I1IO)
if m._isUrlAbsolute(__1III_01IO10)
url=m._formatAbsoluteImageUrl(baseVttUrl,__1III_01IO10)
else 
url=baseVttUrl+m._ensureLeadingSlashForUrl(__1III_01IO10)
end if
return url 
end function
this[(Chr(&H5f)+Chr(102)+Chr(111)+Chr(114)+Chr(&H6d)+Chr(97)+Chr(116)+Chr(&H54)+Chr(&H68)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(&H44)+Chr(&H61)+Chr(116)+Chr(&H61))]=function(_11I_O_O1_0I_,__0011O_0_OOI)
formatedData={}
formatedData[(Chr(&H74)+Chr(101)+Chr(&H78)+Chr(116))]=__0011O_0_OOI[0]
formatedData[(Chr(&H73)+Chr(116)+Chr(&H61)+Chr(114)+Chr(116))]=m._getSeconds(__0011O_0_OOI[1])
formatedData[(Chr(101)+Chr(&H6e)+Chr(&H64))]=m._getSeconds(__0011O_0_OOI[2])
formatedData[(Chr(&H75)+Chr(&H72)+Chr(108))]=m._getThumbnailUrl(_11I_O_O1_0I_,__0011O_0_OOI[3])
if Len(__0011O_0_OOI[4])>0
dimAndPosData=m._getDimAndPos(__0011O_0_OOI[4])
for each key in dimAndPosData
formatedData[key]=dimAndPosData[key]
end for
end if
return formatedData 
end function
this[(Chr(&H65)+Chr(114)+Chr(114)+Chr(111)+Chr(114))]=invalid
this[(Chr(112)+Chr(&H61)+Chr(114)+Chr(115)+Chr(101)+Chr(&H56)+Chr(&H74)+Chr(116))]=function(_0I0OI1IO1_00,_0___O0I__0I0)
m.error=invalid
extractEntryDataRegex=CreateObject((Chr(114)+Chr(&H6f)+Chr(82)+Chr(&H65)+Chr(&H67)+Chr(101)+Chr(&H78)),(Chr(40)+Chr(&H3f)+Chr(&H6d)+Chr(41)+Chr(&H5e)+Chr(40)+Chr(&H5c)+Chr(&H64)+Chr(123)+Chr(&H32)+Chr(125)+Chr(&H3a)+Chr(92)+Chr(100)+Chr(123)+Chr(50)+Chr(125)+Chr(&H3a)+Chr(&H5c)+Chr(100)+Chr(123)+Chr(&H32)+Chr(125)+Chr(&H5c)+Chr(&H2e)+Chr(&H5c)+Chr(&H64)+Chr(&H2b)+Chr(41)+Chr(&H20)+Chr(43)+Chr(&H2d)+Chr(45)+Chr(62)+Chr(32)+Chr(43)+Chr(40)+Chr(&H5c)+Chr(&H64)+Chr(&H7b)+Chr(&H32)+Chr(125)+Chr(58)+Chr(&H5c)+Chr(&H64)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(58)+Chr(92)+Chr(&H64)+Chr(123)+Chr(&H32)+Chr(125)+Chr(92)+Chr(&H2e)+Chr(92)+Chr(&H64)+Chr(43)+Chr(41)+Chr(&H2e)+Chr(42)+Chr(91)+Chr(92)+Chr(114)+Chr(92)+Chr(&H6e)+Chr(93)+Chr(&H2b)+Chr(92)+Chr(&H73)+Chr(42)+Chr(40)+Chr(91)+Chr(94)+Chr(35)+Chr(124)+Chr(92)+Chr(110)+Chr(93)+Chr(&H2b)+Chr(&H29)+Chr(&H28)+Chr(40)+Chr(&H3f)+Chr(58)+Chr(&H28)+Chr(&H3f)+Chr(33)+Chr(&H5c)+Chr(&H72)+Chr(63)+Chr(&H5c)+Chr(&H6e)+Chr(92)+Chr(&H72)+Chr(&H3f)+Chr(92)+Chr(&H6e)+Chr(41)+Chr(46)+Chr(41)+Chr(42)+Chr(&H29)),(Chr(&H69)))
extractHeaderRegex=CreateObject((Chr(114)+Chr(111)+Chr(82)+Chr(101)+Chr(103)+Chr(101)+Chr(&H78)),(Chr(40)+Chr(&H3f)+Chr(&H3c)+Chr(33)+Chr(&H5b)+Chr(92)+Chr(119)+Chr(92)+Chr(&H64)+Chr(&H5d)+Chr(&H29)+Chr(87)+Chr(&H45)+Chr(66)+Chr(&H56)+Chr(84)+Chr(84)+Chr(40)+Chr(63)+Chr(&H21)+Chr(&H5b)+Chr(&H5c)+Chr(&H77)+Chr(&H5c)+Chr(&H64)+Chr(93)+Chr(41)),(Chr(105)))
if not _I1_I11_1O_0I(_0___O0I__0I0)
if extractHeaderRegex.Match(_0___O0I__0I0).Count()=0
m.error=(Chr(&H4d)+Chr(105)+Chr(&H73)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(32)+Chr(&H57)+Chr(69)+Chr(&H42)+Chr(&H56)+Chr(84)+Chr(&H54)+Chr(&H20)+Chr(104)+Chr(101)+Chr(97)+Chr(100)+Chr(&H65)+Chr(&H72)+Chr(&H21))
return m._parsedVttData 
end if
m._rawItemDataExtracted=extractEntryDataRegex.MatchAll(_0___O0I__0I0)
for i=0 to m._rawItemDataExtracted.Count()-1
entry=m._formatThumbData(_0I0OI1IO1_00,m._rawItemDataExtracted[i])
m._parsedVttData.Push(entry)
end for
end if
if m._parsedVttData.Count()=0
m.error=(Chr(78)+Chr(111)+Chr(&H20)+Chr(&H6d)+Chr(&H61)+Chr(116)+Chr(&H63)+Chr(&H68)+Chr(32)+Chr(102)+Chr(111)+Chr(117)+Chr(&H6e)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(&H6e)+Chr(&H20)+Chr(&H76)+Chr(&H74)+Chr(116)+Chr(32)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H70)+Chr(111)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(46))
end if
return m._parsedVttData 
end function
return this 
end function
