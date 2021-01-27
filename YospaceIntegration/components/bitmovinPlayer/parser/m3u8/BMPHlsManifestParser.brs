sub init()
m.NewLine=Chr(10)
m.QuotationMark=Chr(34)
m.Hashtag=Chr(35)
m.EXTM3U8=(Chr(&H23)+Chr(69)+Chr(88)+Chr(84)+Chr(77)+Chr(51)+Chr(&H55))
m.EXT_X_STREAM_INF=(Chr(69)+Chr(&H58)+Chr(&H54)+Chr(45)+Chr(&H58)+Chr(45)+Chr(83)+Chr(84)+Chr(&H52)+Chr(69)+Chr(65)+Chr(&H4d)+Chr(&H2d)+Chr(&H49)+Chr(78)+Chr(70))
m.EXT_X_SCTE=(Chr(&H45)+Chr(88)+Chr(&H54)+Chr(&H2d)+Chr(&H58)+Chr(&H2d)+Chr(83)+Chr(67)+Chr(84)+Chr(&H45)+Chr(&H33)+Chr(&H35))
m.EXTINF=(Chr(&H45)+Chr(88)+Chr(&H54)+Chr(73)+Chr(78)+Chr(&H46))
end sub
function parseMasterPlaylist(_I10OII0_O1II,_00O0011__1OI)
if _I10OII0_O1II=invalid return invalid 
if not __IIIOI1IOO0O(_I10OII0_O1II)return invalid 
parsedManifest={}
hlsTagStringsArray=_1__II0III011(_I10OII0_O1II)
parsedManifest.ext_x_stream_inf=_0IO0I_O_OII0(hlsTagStringsArray,_00O0011__1OI)
return parsedManifest 
end function
function __IIIOI1IOO0O(_OOO0IOOO0101)
if _OOO0IOOO0101=invalid return(1=2) 
return _0_1_I____1OO(_OOO0IOOO0101,m.EXTM3U8) 
end function
function _0_1_I____1OO(_O0OIO0I0I0OI,_OI_1II0I101_)
return _O0OIO0I0I0OI.Instr(_OI_1II0I101_)=0 
end function
function _1__II0III011(_IOO1OIO10_00)
if ___0O_II_00I_(_IOO1OIO10_00)return invalid 
return _IOO1OIO10_00.Split(m.Hashtag) 
end function
function _0IO0I_O_OII0(_OI_OOO_OI1OO,_II1010O11I_1)
if ___0O_II_00I_(_OI_OOO_OI1OO)return invalid 
playlistVariants=[]
for each tagString in _OI_OOO_OI1OO
if _0_1_I____1OO(tagString,m.EXT_X_STREAM_INF)
playlistVariant={}
playlistVariant.bandwidth=_I110011IOI1O(tagString,(Chr(66)+Chr(65)+Chr(&H4e)+Chr(&H44)+Chr(&H57)+Chr(73)+Chr(&H44)+Chr(84)+Chr(&H48)))
playlistVariant.url=_00OOOOI__1II(tagString,_II1010O11I_1)
playlistVariants.Push(playlistVariant)
end if
end for
return playlistVariants 
end function
function _00OOOOI__1II(_OIOI_O11__1_,_O0I0III10OOO=invalid)
if ___0O_II_00I_(_OIOI_O11__1_)return invalid 
url=Chr(0)
uriIndex=1
extractedUrl=_OIOI_O11__1_.split(m.NewLine)[uriIndex]
if ___0O_II_00I_(extractedUrl)or extractedUrl.Len()=0 return invalid 
if _1IO1I11111_O(extractedUrl)
return _0O_I_0I_1_1I(extractedUrl,_O0I0III10OOO) 
else if _11OOIO001OII(extractedUrl)
return extractedUrl 
else 
return _I0OIO0_01010(_O0I0III10OOO,extractedUrl) 
end if
end function
function parsePlaylistVariant(_O10_0I_IO1IO)
if ___0O_II_00I_(_O10_0I_IO1IO)return invalid 
if not __IIIOI1IOO0O(_O10_0I_IO1IO)return invalid 
parsedPlaylistVariantManifest={}
hlsTagStringsArray=_1__II0III011(_O10_0I_IO1IO)
parsedPlaylistVariantManifest.scte=_OOO00IO1O1_1(hlsTagStringsArray)
parsedPlaylistVariantManifest.ext_inf=_1O___O00I1OI(hlsTagStringsArray)
return parsedPlaylistVariantManifest 
end function
function _OOO00IO1O1_1(_I0011_1O_100)
if ___0O_II_00I_(_I0011_1O_100)return invalid 
scteArray=[]
for i=0 to _I0011_1O_100.Count()-1
tagString=_I0011_1O_100[i]
if _0_1_I____1OO(tagString,m.EXT_X_SCTE)
scteEvent={}
scteFollowingSegment=_I0_O11OO_1O1(i,_I0011_1O_100)
scteEvent.cue=_I110011IOI1O(tagString,(Chr(&H43)+Chr(85)+Chr(&H45)))
scteEvent.id=_I110011IOI1O(tagString,(Chr(&H49)+Chr(68)))
scteEvent.segmentUrl=scteFollowingSegment.url
scteEvent.duration=scteFollowingSegment.duration
scteArray.Push(scteEvent)
end if
end for
return scteArray 
end function
function _I0_O11OO_1O1(_I_IOII100_I_,_1_1OO10IO__I)
if ___0O_II_00I_(_I_IOII100_I_)or ___0O_II_00I_(_1_1OO10IO__I)return invalid 
segment={}
for i=_I_IOII100_I_ to _1_1OO10IO__I.Count()-1
tagString=_1_1OO10IO__I[i]
if _0_1_I____1OO(tagString,m.EXTINF)
segmentTagString=_1_1OO10IO__I[i]
segment.url=_00OOOOI__1II(segmentTagString)
exit for
end if
end for
return segment 
end function
function _I110011IOI1O(_001_OI1I00_I,_1___IO_O10__)
if ___0O_II_00I_(_001_OI1I00_I)or ___0O_II_00I_(_1___IO_O10__)return invalid 
params=_001_OI1I00_I.Split((Chr(44)))
valueIndex=1
value=Chr(0)
for each param in params
if param.Instr(_1___IO_O10__)>=0
value=param.split((Chr(&H3d)))[valueIndex].Replace(m.QuotationMark,Chr(0)).Trim()
exit for
end if
end for
return _O1IIO01O0_0_(value) 
end function
function _1O___O00I1OI(__010_O001II1)
extInfArray=[]
for each tag in __010_O001II1
if _0_1_I____1OO(tag,m.EXTINF)
extInf={}
extInf.url=_00OOOOI__1II(tag)
extInfArray.Push(extInf)
end if
end for
return extInfArray 
end function
