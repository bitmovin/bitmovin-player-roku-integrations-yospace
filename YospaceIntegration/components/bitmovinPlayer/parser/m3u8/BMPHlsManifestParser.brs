sub init()
m.NewLine=Chr(10)
m.QuotationMark=Chr(34)
m.Hashtag=Chr(35)
m.Dash=Chr(45)
m.Underscore=Chr(95)
m.EXTM3U8=(Chr(&H23)+Chr(&H45)+Chr(88)+Chr(&H54)+Chr(77)+Chr(51)+Chr(85))
m.EXT_X_STREAM_INF=(Chr(69)+Chr(88)+Chr(84)+Chr(&H2d)+Chr(&H58)+Chr(&H2d)+Chr(&H53)+Chr(84)+Chr(82)+Chr(69)+Chr(&H41)+Chr(&H4d)+Chr(&H2d)+Chr(&H49)+Chr(&H4e)+Chr(&H46))
m.EXT_X_SCTE=(Chr(69)+Chr(&H58)+Chr(84)+Chr(&H2d)+Chr(&H58)+Chr(45)+Chr(&H53)+Chr(67)+Chr(84)+Chr(69)+Chr(&H33)+Chr(&H35))
m.EXTINF=(Chr(&H45)+Chr(88)+Chr(&H54)+Chr(&H49)+Chr(&H4e)+Chr(70))
m.EXT_X_DATERANGE=(Chr(69)+Chr(88)+Chr(&H54)+Chr(45)+Chr(&H58)+Chr(45)+Chr(68)+Chr(&H41)+Chr(&H54)+Chr(&H45)+Chr(&H52)+Chr(&H41)+Chr(&H4e)+Chr(&H47)+Chr(&H45))
end sub
function parseMasterPlaylist(_OO_10I_11_1_,_00_1_OO1I___)
if _OO_10I_11_1_=invalid return invalid 
if not __O1OIOO01__O(_OO_10I_11_1_)return invalid 
parsedManifest={}
hlsTagStringsArray=_III_00I1O_O_(_OO_10I_11_1_)
parsedManifest.ext_x_stream_inf=_101__00O1O11(hlsTagStringsArray,_00_1_OO1I___)
return parsedManifest 
end function
function __O1OIOO01__O(_O0100___IIII)
if _O0100___IIII=invalid return(1=2) 
return _OOI1I1IO10_O(_O0100___IIII,m.EXTM3U8) 
end function
function _OOI1I1IO10_O(_O__O_O_01_1O,_I0O0010_OOO_)
return _O__O_O_01_1O.Instr(_I0O0010_OOO_)=0 
end function
function _III_00I1O_O_(__10OO1IO00__)
if _110__I1O00_I(__10OO1IO00__)return invalid 
return __10OO1IO00__.Split(m.Hashtag) 
end function
function _101__00O1O11(_O___010__IOI,_O0100_11O__0)
if _110__I1O00_I(_O___010__IOI)return invalid 
playlistVariants=[]
for each tagString in _O___010__IOI
if _OOI1I1IO10_O(tagString,m.EXT_X_STREAM_INF)
playlistVariant={}
playlistVariant.bandwidth=_00I_O_OI10I0(tagString,(Chr(&H42)+Chr(65)+Chr(78)+Chr(68)+Chr(&H57)+Chr(&H49)+Chr(68)+Chr(84)+Chr(72)))
playlistVariant.url=_II1IO__OOII1(tagString,_O0100_11O__0)
playlistVariants.Push(playlistVariant)
end if
end for
return playlistVariants 
end function
function _II1IO__OOII1(_1OIII_O0000I,__O1O__1O1II1)
if _110__I1O00_I(_1OIII_O0000I)return invalid 
url=Chr(0)
uriIndex=1
extractedUrl=_1OIII_O0000I.split(m.NewLine)[uriIndex]
if _110__I1O00_I(extractedUrl)or extractedUrl.Len()=0 return invalid 
if _I0O1110_1I00(extractedUrl)
return __I0010_0I111(extractedUrl,__O1O__1O1II1) 
else if _I_1O1_001_10(extractedUrl)
return extractedUrl 
else 
return _I01OO0_01I1_(__O1O__1O1II1,extractedUrl) 
end if
end function
function parsePlaylistVariant(_11__OI_IIII_,_001III_10_O0)
if _110__I1O00_I(_11__OI_IIII_)return invalid 
if not __O1OIOO01__O(_11__OI_IIII_)return invalid 
parsedPlaylistVariantManifest={}
hlsTagStringsArray=_III_00I1O_O_(_11__OI_IIII_)
parsedPlaylistVariantManifest.scte=_10IO_1O0I0OI(hlsTagStringsArray,_001III_10_O0)
parsedPlaylistVariantManifest.ext_inf=___01_0I1O1_I(hlsTagStringsArray,_001III_10_O0)
parsedPlaylistVariantManifest.ext_x_daterange=__IOOO___011O(hlsTagStringsArray)
return parsedPlaylistVariantManifest 
end function
function _10IO_1O0I0OI(_O_O_OI11__II,__0O1OI____O0)
if _110__I1O00_I(_O_O_OI11__II)return invalid 
scteArray=[]
for i=0 to _O_O_OI11__II.Count()-1
tagString=_O_O_OI11__II[i]
if _OOI1I1IO10_O(tagString,m.EXT_X_SCTE)
scteEvent={}
scteFollowingSegment=__I_OOO_I00_0(i,_O_O_OI11__II,__0O1OI____O0)
scteEvent.cue=_00I_O_OI10I0(tagString,(Chr(67)+Chr(&H55)+Chr(&H45)))
scteEvent.id=_00I_O_OI10I0(tagString,(Chr(73)+Chr(68)))
scteEvent.segmentUrl=scteFollowingSegment.url
scteArray.Push(scteEvent)
end if
end for
return scteArray 
end function
function __I_OOO_I00_0(_IO11_0OO10_O,_00O_01_1001_,_0O_001OI_1O0)
if _110__I1O00_I(_IO11_0OO10_O)or _110__I1O00_I(_00O_01_1001_)return invalid 
segment={}
for i=_IO11_0OO10_O to _00O_01_1001_.Count()-1
tagString=_00O_01_1001_[i]
if _OOI1I1IO10_O(tagString,m.EXTINF)
segmentTagString=_00O_01_1001_[i]
segment.url=_II1IO__OOII1(segmentTagString,_0O_001OI_1O0)
exit for
end if
end for
return segment 
end function
function _00I_O_OI10I0(_IO01O0_I1I1I,_I1I1010II0O_)
if _110__I1O00_I(_IO01O0_I1I1I)or _110__I1O00_I(_I1I1010II0O_)return invalid 
params=_IO01O0_I1I1I.Split((Chr(44)))
valueIndex=1
value=Chr(0)
for each param in params
tagNameWithEqualSign=_I1I1010II0O_+(Chr(61))
if param.Instr(tagNameWithEqualSign)>=0
value=param.split(tagNameWithEqualSign)[valueIndex].Replace(m.QuotationMark,Chr(0)).Trim()
exit for
end if
end for
return _I1__1_1III0O(value) 
end function
function ___01_0I1O1_I(_OI1I1O__OIOO,_1I_O1O_1I__1)
extInfArray=[]
for each tag in _OI1I1O__OIOO
if _OOI1I1IO10_O(tag,m.EXTINF)
extInf={}
extInf.url=_II1IO__OOII1(tag,_1I_O1O_1I__1)
extInfArray.Push(extInf)
end if
end for
return extInfArray 
end function
function __IOOO___011O(_O00_1I110O_1)
if _110__I1O00_I(_O00_1I110O_1)return invalid 
dateRangeArray=[]
for each line in _O00_1I110O_1
if _OOI1I1IO10_O(line,m.EXT_X_DATERANGE)
data=___O__11OO__I(line)
if not _110__I1O00_I(data.duration)data.duration=data.duration.toFloat()
dateRangeArray.push(data)
end if
end for
return dateRangeArray 
end function
function ___O__11OO__I(_1IIIO_O1O__I)
dateRange={}
dateRangeLine=_1IIIO_O1O__I.trim()
dateRangeLine=dateRangeLine.replace((Chr(69)+Chr(&H58)+Chr(&H54)+Chr(&H2d)+Chr(&H58)+Chr(45)+Chr(&H44)+Chr(65)+Chr(&H54)+Chr(&H45)+Chr(82)+Chr(&H41)+Chr(78)+Chr(&H47)+Chr(&H45)+Chr(58)),Chr(0))
attributes=dateRangeLine.split((Chr(44)))
for each attribute in attributes
keyValuePair=attribute.split((Chr(&H3d)))
key=keyValuePair[0].trim().replace(m.Dash,m.Underscore)
value=keyValuePair[1].trim().replace(m.QuotationMark,Chr(0))
dateRange[key]=value
end for
return dateRange 
end function
