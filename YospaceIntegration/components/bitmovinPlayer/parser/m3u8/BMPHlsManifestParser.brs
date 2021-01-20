sub init()
m.NewLine=Chr(10)
m.QuotationMark=Chr(34)
m.Hashtag=Chr(35)
m.EXTM3U8=(Chr(35)+Chr(&H45)+Chr(88)+Chr(&H54)+Chr(77)+Chr(&H33)+Chr(85))
m.EXT_X_STREAM_INF=(Chr(69)+Chr(88)+Chr(&H54)+Chr(45)+Chr(88)+Chr(&H2d)+Chr(83)+Chr(84)+Chr(82)+Chr(&H45)+Chr(65)+Chr(&H4d)+Chr(45)+Chr(&H49)+Chr(78)+Chr(&H46))
m.EXT_X_SCTE=(Chr(69)+Chr(&H58)+Chr(84)+Chr(45)+Chr(88)+Chr(&H2d)+Chr(&H53)+Chr(67)+Chr(&H54)+Chr(&H45)+Chr(&H33)+Chr(53))
m.EXTINF=(Chr(&H45)+Chr(&H58)+Chr(&H54)+Chr(&H49)+Chr(78)+Chr(70))
end sub
function parseMasterPlaylist(__IIOOOIIO100,_O0_010I1OOO0)
if __IIOOOIIO100=invalid return invalid 
if not _00_100IIOIOO(__IIOOOIIO100)return invalid 
parsedManifest={}
hlsTagStringsArray=_IO__0O_10I0I(__IIOOOIIO100)
parsedManifest.ext_x_stream_inf=_1_0_1O01IO_1(hlsTagStringsArray,_O0_010I1OOO0)
return parsedManifest 
end function
function _00_100IIOIOO(_II_I0O_00O00)
if _II_I0O_00O00=invalid return(1=2) 
return _OI101IOI0O11(_II_I0O_00O00,m.EXTM3U8) 
end function
function _OI101IOI0O11(_I_1_O10O1__1,_10I__1011O00)
return _I_1_O10O1__1.Instr(_10I__1011O00)=0 
end function
function _IO__0O_10I0I(_1III_0O00I1O)
if _I1_I11_1O_0I(_1III_0O00I1O)return invalid 
return _1III_0O00I1O.Split(m.Hashtag) 
end function
function _1_0_1O01IO_1(_O0I11_O0____,___I___OI_01I)
if _I1_I11_1O_0I(_O0I11_O0____)return invalid 
playlistVariants=[]
for each tagString in _O0I11_O0____
if _OI101IOI0O11(tagString,m.EXT_X_STREAM_INF)
playlistVariant={}
playlistVariant.bandwidth=_I_IOOO_11IO0(tagString,(Chr(66)+Chr(65)+Chr(&H4e)+Chr(&H44)+Chr(&H57)+Chr(73)+Chr(&H44)+Chr(&H54)+Chr(72)))
playlistVariant.url=_0_01O0___11_(tagString,___I___OI_01I)
playlistVariants.Push(playlistVariant)
end if
end for
return playlistVariants 
end function
function _0_01O0___11_(_0I100O11_0IO,_IO0OOO100O_1=invalid)
if _I1_I11_1O_0I(_0I100O11_0IO)return invalid 
url=Chr(0)
uriIndex=1
extractedUrl=_0I100O11_0IO.split(m.NewLine)[uriIndex]
if _I1_I11_1O_0I(extractedUrl)or extractedUrl.Len()=0 return invalid 
if _I_0__1__1O1O(extractedUrl)
return _1_0_O1I1_0O1(extractedUrl,_IO0OOO100O_1) 
else if _0O_IO_0_IO0_(extractedUrl)
return extractedUrl 
else 
return _0I0OIIIO1O11(_IO0OOO100O_1,extractedUrl) 
end if
end function
function parsePlaylistVariant(_1_I00O0_O0_I)
if _I1_I11_1O_0I(_1_I00O0_O0_I)return invalid 
if not _00_100IIOIOO(_1_I00O0_O0_I)return invalid 
parsedPlaylistVariantManifest={}
hlsTagStringsArray=_IO__0O_10I0I(_1_I00O0_O0_I)
parsedPlaylistVariantManifest.scte=_1O00O0111IOO(hlsTagStringsArray)
parsedPlaylistVariantManifest.ext_inf=_1II_1_O_1I01(hlsTagStringsArray)
return parsedPlaylistVariantManifest 
end function
function _1O00O0111IOO(_111O_0OO_OO1)
if _I1_I11_1O_0I(_111O_0OO_OO1)return invalid 
scteArray=[]
for i=0 to _111O_0OO_OO1.Count()-1
tagString=_111O_0OO_OO1[i]
if _OI101IOI0O11(tagString,m.EXT_X_SCTE)
scteEvent={}
scteFollowingSegment=_01_O_11O100_(i,_111O_0OO_OO1)
scteEvent.cue=_I_IOOO_11IO0(tagString,(Chr(&H43)+Chr(&H55)+Chr(69)))
scteEvent.id=_I_IOOO_11IO0(tagString,(Chr(73)+Chr(&H44)))
scteEvent.segmentUrl=scteFollowingSegment.url
scteEvent.duration=scteFollowingSegment.duration
scteArray.Push(scteEvent)
end if
end for
return scteArray 
end function
function _01_O_11O100_(_O1O11I__O100,__OIIO_1_O1IO)
if _I1_I11_1O_0I(_O1O11I__O100)or _I1_I11_1O_0I(__OIIO_1_O1IO)return invalid 
segment={}
for i=_O1O11I__O100 to __OIIO_1_O1IO.Count()-1
tagString=__OIIO_1_O1IO[i]
if _OI101IOI0O11(tagString,m.EXTINF)
segmentTagString=__OIIO_1_O1IO[i]
segment.url=_0_01O0___11_(segmentTagString)
exit for
end if
end for
return segment 
end function
function _I_IOOO_11IO0(_I0I1OI11I1__,_0110O_1_O1O1)
if _I1_I11_1O_0I(_I0I1OI11I1__)or _I1_I11_1O_0I(_0110O_1_O1O1)return invalid 
params=_I0I1OI11I1__.Split((Chr(44)))
valueIndex=1
value=Chr(0)
for each param in params
if param.Instr(_0110O_1_O1O1)>=0
value=param.split((Chr(61)))[valueIndex].Replace(m.QuotationMark,Chr(0)).Trim()
exit for
end if
end for
return _0O1101110O1O(value) 
end function
function _1II_1_O_1I01(___O100III__I)
extInfArray=[]
for each tag in ___O100III__I
if _OI101IOI0O11(tag,m.EXTINF)
extInf={}
extInf.url=_0_01O0___11_(tag)
extInfArray.Push(extInf)
end if
end for
return extInfArray 
end function
