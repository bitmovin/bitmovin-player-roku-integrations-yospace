sub init()
m.NewLine=Chr(10)
m.QuotationMark=Chr(34)
m.Hashtag=Chr(35)
m.EXTM3U8=(Chr(35)+Chr(&H45)+Chr(88)+Chr(84)+Chr(&H4d)+Chr(&H33)+Chr(&H55))
m.EXT_X_STREAM_INF=(Chr(69)+Chr(&H58)+Chr(&H54)+Chr(45)+Chr(&H58)+Chr(&H2d)+Chr(83)+Chr(84)+Chr(&H52)+Chr(69)+Chr(&H41)+Chr(77)+Chr(45)+Chr(&H49)+Chr(&H4e)+Chr(70))
m.EXT_X_SCTE=(Chr(&H45)+Chr(&H58)+Chr(84)+Chr(&H2d)+Chr(&H58)+Chr(45)+Chr(83)+Chr(67)+Chr(84)+Chr(&H45)+Chr(51)+Chr(53))
m.EXTINF=(Chr(69)+Chr(&H58)+Chr(84)+Chr(&H49)+Chr(&H4e)+Chr(70))
end sub
function parseMasterPlaylist(_I001I__10I0O,_IIO_1_00O_II)
if _I001I__10I0O=invalid return invalid 
if not _0O111O_OI0_0(_I001I__10I0O)return invalid 
parsedManifest={}
hlsTagStringsArray=_OO0_1O1_I__I(_I001I__10I0O)
parsedManifest.ext_x_stream_inf=_0I11O_110010(hlsTagStringsArray,_IIO_1_00O_II)
return parsedManifest 
end function
function _0O111O_OI0_0(__O_0OO_I__IO)
if __O_0OO_I__IO=invalid return(1=2) 
return __1_I0_1O1I_1(__O_0OO_I__IO,m.EXTM3U8) 
end function
function __1_I0_1O1I_1(_OI1IIOI00011,_II11II_O0O_0)
return _OI1IIOI00011.Instr(_II11II_O0O_0)=0 
end function
function _OO0_1O1_I__I(__10OOOII_I1I)
if _1100IO1O_0_I(__10OOOII_I1I)return invalid 
return __10OOOII_I1I.Split(m.Hashtag) 
end function
function _0I11O_110010(_O__1OII011_O,_11O1OO1_0I__)
if _1100IO1O_0_I(_O__1OII011_O)return invalid 
playlistVariants=[]
for each tagString in _O__1OII011_O
if __1_I0_1O1I_1(tagString,m.EXT_X_STREAM_INF)
playlistVariant={}
playlistVariant.bandwidth=__IIOIII_OI0I(tagString,(Chr(&H42)+Chr(&H41)+Chr(78)+Chr(&H44)+Chr(87)+Chr(&H49)+Chr(68)+Chr(84)+Chr(&H48)))
playlistVariant.url=_O_10_O_10O01(tagString,_11O1OO1_0I__)
playlistVariants.Push(playlistVariant)
end if
end for
return playlistVariants 
end function
function _O_10_O_10O01(_O_0II0_I_10_,_0OO_IO10__1O)
if _1100IO1O_0_I(_O_0II0_I_10_)return invalid 
url=Chr(0)
uriIndex=1
extractedUrl=_O_0II0_I_10_.split(m.NewLine)[uriIndex]
if _1100IO1O_0_I(extractedUrl)or extractedUrl.Len()=0 return invalid 
if _1101I1_IO__I(extractedUrl)
return _00O_1O_1O_1_(extractedUrl,_0OO_IO10__1O) 
else if _OI_OOOI0O1II(extractedUrl)
return extractedUrl 
else 
return _1_OIO10110__(_0OO_IO10__1O,extractedUrl) 
end if
end function
function parsePlaylistVariant(___1I_0__OIIO,_10I_I1IOOO0I)
if _1100IO1O_0_I(___1I_0__OIIO)return invalid 
if not _0O111O_OI0_0(___1I_0__OIIO)return invalid 
parsedPlaylistVariantManifest={}
hlsTagStringsArray=_OO0_1O1_I__I(___1I_0__OIIO)
parsedPlaylistVariantManifest.scte=_IO___0O1__O0(hlsTagStringsArray,_10I_I1IOOO0I)
parsedPlaylistVariantManifest.ext_inf=_0O1IOO0O0100(hlsTagStringsArray,_10I_I1IOOO0I)
return parsedPlaylistVariantManifest 
end function
function _IO___0O1__O0(_IO0I_O_0OI__,__IO_O0I1_O_1)
if _1100IO1O_0_I(_IO0I_O_0OI__)return invalid 
scteArray=[]
for i=0 to _IO0I_O_0OI__.Count()-1
tagString=_IO0I_O_0OI__[i]
if __1_I0_1O1I_1(tagString,m.EXT_X_SCTE)
scteEvent={}
scteFollowingSegment=_II_O10_00011(i,_IO0I_O_0OI__,__IO_O0I1_O_1)
scteEvent.cue=__IIOIII_OI0I(tagString,(Chr(67)+Chr(&H55)+Chr(&H45)))
scteEvent.id=__IIOIII_OI0I(tagString,(Chr(73)+Chr(68)))
scteEvent.segmentUrl=scteFollowingSegment.url
scteArray.Push(scteEvent)
end if
end for
return scteArray 
end function
function _II_O10_00011(_0I0II1II01O1,_O1O1OO_0OI1O,___O0_I0OIO0I)
if _1100IO1O_0_I(_0I0II1II01O1)or _1100IO1O_0_I(_O1O1OO_0OI1O)return invalid 
segment={}
for i=_0I0II1II01O1 to _O1O1OO_0OI1O.Count()-1
tagString=_O1O1OO_0OI1O[i]
if __1_I0_1O1I_1(tagString,m.EXTINF)
segmentTagString=_O1O1OO_0OI1O[i]
segment.url=_O_10_O_10O01(segmentTagString,___O0_I0OIO0I)
exit for
end if
end for
return segment 
end function
function __IIOIII_OI0I(_0IO011I0OI0I,_II0IOO_0_IOO)
if _1100IO1O_0_I(_0IO011I0OI0I)or _1100IO1O_0_I(_II0IOO_0_IOO)return invalid 
params=_0IO011I0OI0I.Split((Chr(44)))
valueIndex=1
value=Chr(0)
for each param in params
tagNameWithEqualSign=_II0IOO_0_IOO+(Chr(&H3d))
if param.Instr(tagNameWithEqualSign)>=0
value=param.split(tagNameWithEqualSign)[valueIndex].Replace(m.QuotationMark,Chr(0)).Trim()
exit for
end if
end for
return _OI000_O_IIOI(value) 
end function
function _0O1IOO0O0100(_OOO__IO110I_,_0I0O11001_01)
extInfArray=[]
for each tag in _OOO__IO110I_
if __1_I0_1O1I_1(tag,m.EXTINF)
extInf={}
extInf.url=_O_10_O_10O01(tag,_0I0O11001_01)
extInfArray.Push(extInf)
end if
end for
return extInfArray 
end function
