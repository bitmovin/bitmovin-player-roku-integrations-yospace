function _110O0001O_01()
this={}
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(69)+Chr(110)+Chr(&H74)+Chr(114)+Chr(121)+Chr(68)+Chr(&H61)+Chr(&H74)+Chr(97)+Chr(82)+Chr(&H65)+Chr(&H67)+Chr(101)+Chr(120))]=CreateObject((Chr(114)+Chr(111)+Chr(&H52)+Chr(101)+Chr(103)+Chr(101)+Chr(&H78)),(Chr(40)+Chr(63)+Chr(109)+Chr(41)+Chr(&H5e)+Chr(&H28)+Chr(&H5c)+Chr(100)+Chr(&H7b)+Chr(50)+Chr(&H7d)+Chr(58)+Chr(&H5c)+Chr(100)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(&H3a)+Chr(92)+Chr(&H64)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(92)+Chr(&H2e)+Chr(92)+Chr(100)+Chr(&H2b)+Chr(41)+Chr(&H20)+Chr(&H2b)+Chr(&H2d)+Chr(&H2d)+Chr(62)+Chr(&H20)+Chr(43)+Chr(40)+Chr(&H5c)+Chr(100)+Chr(123)+Chr(50)+Chr(&H7d)+Chr(&H3a)+Chr(&H5c)+Chr(&H64)+Chr(&H7b)+Chr(&H32)+Chr(125)+Chr(58)+Chr(92)+Chr(100)+Chr(123)+Chr(50)+Chr(125)+Chr(&H5c)+Chr(&H2e)+Chr(92)+Chr(100)+Chr(&H2b)+Chr(&H29)+Chr(&H2e)+Chr(42)+Chr(&H5b)+Chr(92)+Chr(114)+Chr(92)+Chr(&H6e)+Chr(&H5d)+Chr(43)+Chr(&H5c)+Chr(&H73)+Chr(42)+Chr(40)+Chr(91)+Chr(&H5e)+Chr(&H23)+Chr(124)+Chr(92)+Chr(&H6e)+Chr(93)+Chr(&H2b)+Chr(41)+Chr(40)+Chr(40)+Chr(&H3f)+Chr(58)+Chr(&H28)+Chr(&H3f)+Chr(33)+Chr(92)+Chr(&H72)+Chr(63)+Chr(92)+Chr(&H6e)+Chr(&H5c)+Chr(&H72)+Chr(63)+Chr(92)+Chr(&H6e)+Chr(&H29)+Chr(&H2e)+Chr(41)+Chr(42)+Chr(&H29)),(Chr(&H69)))
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(97)+Chr(99)+Chr(116)+Chr(&H48)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(&H72)+Chr(82)+Chr(101)+Chr(103)+Chr(&H65)+Chr(120))]=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H52)+Chr(&H65)+Chr(103)+Chr(101)+Chr(120)),(Chr(40)+Chr(&H3f)+Chr(60)+Chr(33)+Chr(&H5b)+Chr(92)+Chr(119)+Chr(&H5c)+Chr(&H64)+Chr(93)+Chr(41)+Chr(&H57)+Chr(69)+Chr(&H42)+Chr(86)+Chr(84)+Chr(&H54)+Chr(&H28)+Chr(&H3f)+Chr(33)+Chr(91)+Chr(&H5c)+Chr(&H77)+Chr(92)+Chr(&H64)+Chr(&H5d)+Chr(41)),(Chr(105)))
this[(Chr(95)+Chr(&H72)+Chr(97)+Chr(&H77)+Chr(&H45)+Chr(110)+Chr(&H74)+Chr(114)+Chr(&H79)+Chr(&H44)+Chr(97)+Chr(&H74)+Chr(97)+Chr(69)+Chr(120)+Chr(&H74)+Chr(114)+Chr(97)+Chr(99)+Chr(&H74)+Chr(101)+Chr(100))]=[]
this[(Chr(&H5f)+Chr(112)+Chr(&H61)+Chr(&H72)+Chr(&H73)+Chr(&H65)+Chr(&H64)+Chr(&H56)+Chr(&H74)+Chr(116)+Chr(68)+Chr(97)+Chr(116)+Chr(97))]=[]
this[(Chr(95)+Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H44)+Chr(105)+Chr(&H6d)+Chr(&H41)+Chr(&H6e)+Chr(100)+Chr(&H50)+Chr(&H6f)+Chr(&H73))]=function(_O1OI1_I101_O)
dimAndPos={}
joined=_O1OI1_I101_O.Replace(Chr(35),Chr(0)).Trim().Split(Chr(61))
keys=joined[0].Split(Chr(0))
values=joined[1].Split(Chr(44))
for i=0 to keys.Count()-1
dimAndPos[keys[i]]=values[i].ToInt()
end for
return dimAndPos 
end function
this[(Chr(&H5f)+Chr(103)+Chr(101)+Chr(&H74)+Chr(66)+Chr(97)+Chr(115)+Chr(101)+Chr(85)+Chr(&H72)+Chr(&H6c))]=function(_0_11__I_I_1O)
baseUrl=Chr(0)
for i=0 to Len(_0_11__I_I_1O)-1
strToCut=Right(_0_11__I_I_1O,i)
if Instr(0,strToCut,Chr(47))>0
strToCut=Right(strToCut,i-1)
baseUrl=_0_11__I_I_1O.Replace(strToCut,Chr(0)).Trim()
exit for
end if
end for
return baseUrl 
end function
this[(Chr(&H5f)+Chr(99)+Chr(111)+Chr(110)+Chr(&H76)+Chr(101)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(&H74)+Chr(&H72)+Chr(84)+Chr(&H6f)+Chr(73)+Chr(110)+Chr(&H74))]=function(_0OOI1I0I__00,___0OOI10_I1I)
if _1_01I1IOI__I(___0OOI10_I1I.Lookup(_0OOI1I0I__00))
value=Val(_0OOI1I0I__00)
else 
value=___0OOI10_I1I.Lookup(_0OOI1I0I__00)
end if
return Int(value) 
end function
this[(Chr(&H5f)+Chr(103)+Chr(&H65)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(&H64)+Chr(&H73))]=function(_100_11O0I0O1)
tempArray=_100_11O0I0O1.Split(Chr(58))
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
this[(Chr(&H5f)+Chr(102)+Chr(&H6f)+Chr(114)+Chr(&H6d)+Chr(97)+Chr(116)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(68)+Chr(97)+Chr(116)+Chr(&H61))]=function(_OO11__I0O_I0,_00O_OO1I11_I)
formatedData={}
formatedData[(Chr(&H74)+Chr(101)+Chr(&H78)+Chr(&H74))]=_00O_OO1I11_I[0]
formatedData[(Chr(115)+Chr(116)+Chr(97)+Chr(&H72)+Chr(116))]=m._getSeconds(_00O_OO1I11_I[1])
formatedData[(Chr(101)+Chr(&H6e)+Chr(100))]=m._getSeconds(_00O_OO1I11_I[2])
formatedData[(Chr(&H75)+Chr(&H72)+Chr(&H6c))]=m._getBaseUrl(_OO11__I0O_I0)+Left(_00O_OO1I11_I[3],Instr(0,_00O_OO1I11_I[3],(Chr(46)+Chr(106)+Chr(&H70)+Chr(103)))+3)
if Len(_00O_OO1I11_I[4])>0
dimAndPosData=m._getDimAndPos(_00O_OO1I11_I[4])
for each key in dimAndPosData
formatedData[key]=dimAndPosData[key]
end for
end if
return formatedData 
end function
this[(Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72))]=invalid
this[(Chr(112)+Chr(&H61)+Chr(&H72)+Chr(&H73)+Chr(101)+Chr(86)+Chr(&H74)+Chr(116))]=function(_1_I1I000__1O,_0IO0_0O_OO01)
m.error=invalid
if not _1_01I1IOI__I(_0IO0_0O_OO01)
if m._extractHeaderRegex.Match(_0IO0_0O_OO01).Count()=0
m.error={error:(Chr(&H4d)+Chr(105)+Chr(115)+Chr(115)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(32)+Chr(87)+Chr(&H45)+Chr(&H42)+Chr(86)+Chr(&H54)+Chr(84)+Chr(&H20)+Chr(&H68)+Chr(101)+Chr(&H61)+Chr(&H64)+Chr(&H65)+Chr(&H72)+Chr(33))}
return m._parsedVttData 
end if
m._rawItemDataExtracted=m._extractEntryDataRegex.MatchAll(_0IO0_0O_OO01)
for i=0 to m._rawItemDataExtracted.Count()-1
entry=m._formatThumbData(_1_I1I000__1O,m._rawItemDataExtracted[i])
m._parsedVttData.Push(entry)
end for
end if
if m._parsedVttData.Count()=0
m.error={error:(Chr(78)+Chr(111)+Chr(&H20)+Chr(&H6d)+Chr(&H61)+Chr(116)+Chr(99)+Chr(&H68)+Chr(32)+Chr(102)+Chr(&H6f)+Chr(117)+Chr(&H6e)+Chr(&H64)+Chr(&H20)+Chr(&H69)+Chr(110)+Chr(&H20)+Chr(118)+Chr(116)+Chr(116)+Chr(32)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(112)+Chr(111)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(46))}
end if
return m._parsedVttData 
end function
return this 
end function
