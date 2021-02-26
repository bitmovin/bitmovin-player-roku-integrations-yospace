sub init()
m.NewLine=Chr(10)
m.QuotationMark=Chr(34)
m.Hashtag=Chr(35)
m.EXTM3U8=(Chr(35)+Chr(&H45)+Chr(&H58)+Chr(&H54)+Chr(&H4d)+Chr(&H33)+Chr(&H55))
m.EXT_X_STREAM_INF=(Chr(&H45)+Chr(&H58)+Chr(84)+Chr(&H2d)+Chr(&H58)+Chr(&H2d)+Chr(&H53)+Chr(&H54)+Chr(&H52)+Chr(&H45)+Chr(65)+Chr(77)+Chr(&H2d)+Chr(&H49)+Chr(&H4e)+Chr(70))
m.EXT_X_SCTE=(Chr(69)+Chr(&H58)+Chr(84)+Chr(&H2d)+Chr(88)+Chr(45)+Chr(&H53)+Chr(67)+Chr(&H54)+Chr(69)+Chr(&H33)+Chr(53))
m.EXTINF=(Chr(&H45)+Chr(&H58)+Chr(84)+Chr(73)+Chr(&H4e)+Chr(70))
end sub
function parseMasterPlaylist(_OI01OOII1_I1,__1_1OI0I10OI)
if _OI01OOII1_I1=invalid return invalid 
if not ___1OOOO100I1(_OI01OOII1_I1)return invalid 
parsedManifest={}
hlsTagStringsArray=_O10IO0O1_0_0(_OI01OOII1_I1)
parsedManifest.ext_x_stream_inf=_I_0_100011O_(hlsTagStringsArray,__1_1OI0I10OI)
return parsedManifest 
end function
function ___1OOOO100I1(___O10_111III)
if ___O10_111III=invalid return(1=2) 
return ____I0_1_1O01(___O10_111III,m.EXTM3U8) 
end function
function ____I0_1_1O01(_0O_0OI__I1I1,_0O_I1_000O_0)
return _0O_0OI__I1I1.Instr(_0O_I1_000O_0)=0 
end function
function _O10IO0O1_0_0(_O1I111_10O_I)
if _OO_O1_O1O0O_(_O1I111_10O_I)return invalid 
return _O1I111_10O_I.Split(m.Hashtag) 
end function
function _I_0_100011O_(_0110I0IO1__1,__1I_1I11IOO1)
if _OO_O1_O1O0O_(_0110I0IO1__1)return invalid 
playlistVariants=[]
for each tagString in _0110I0IO1__1
if ____I0_1_1O01(tagString,m.EXT_X_STREAM_INF)
playlistVariant={}
playlistVariant.bandwidth=__I0_I_1_OI_0(tagString,(Chr(66)+Chr(65)+Chr(78)+Chr(68)+Chr(&H57)+Chr(&H49)+Chr(&H44)+Chr(84)+Chr(&H48)))
playlistVariant.url=_1__01IO1I__0(tagString,__1I_1I11IOO1)
playlistVariants.Push(playlistVariant)
end if
end for
return playlistVariants 
end function
function _1__01IO1I__0(_01O000_OOOI0,_000O01O_I_OO)
if _OO_O1_O1O0O_(_01O000_OOOI0)return invalid 
url=Chr(0)
uriIndex=1
extractedUrl=_01O000_OOOI0.split(m.NewLine)[uriIndex]
if _OO_O1_O1O0O_(extractedUrl)or extractedUrl.Len()=0 return invalid 
if ___O0O_IOI0OO(extractedUrl)
return _0011I1O0IIO1(extractedUrl,_000O01O_I_OO) 
else if ___OIO011O__0(extractedUrl)
return extractedUrl 
else 
return _111IO110OI_O(_000O01O_I_OO,extractedUrl) 
end if
end function
function parsePlaylistVariant(_11OII__I11O1,_I_0001_0_I_I)
if _OO_O1_O1O0O_(_11OII__I11O1)return invalid 
if not ___1OOOO100I1(_11OII__I11O1)return invalid 
parsedPlaylistVariantManifest={}
hlsTagStringsArray=_O10IO0O1_0_0(_11OII__I11O1)
parsedPlaylistVariantManifest.scte=_II_11I__110_(hlsTagStringsArray,_I_0001_0_I_I)
parsedPlaylistVariantManifest.ext_inf=_IOI0_1__O0OO(hlsTagStringsArray,_I_0001_0_I_I)
return parsedPlaylistVariantManifest 
end function
function _II_11I__110_(_O1_1I__10O10,_0O0OI__OI__1)
if _OO_O1_O1O0O_(_O1_1I__10O10)return invalid 
scteArray=[]
for i=0 to _O1_1I__10O10.Count()-1
tagString=_O1_1I__10O10[i]
if ____I0_1_1O01(tagString,m.EXT_X_SCTE)
scteEvent={}
scteFollowingSegment=__11_I0__O0_0(i,_O1_1I__10O10,_0O0OI__OI__1)
scteEvent.cue=__I0_I_1_OI_0(tagString,(Chr(&H43)+Chr(85)+Chr(69)))
scteEvent.id=__I0_I_1_OI_0(tagString,(Chr(&H49)+Chr(&H44)))
scteEvent.segmentUrl=scteFollowingSegment.url
scteArray.Push(scteEvent)
end if
end for
return scteArray 
end function
function __11_I0__O0_0(_O0II_11_0_I_,_I0I__1I_IO10,_0_0_O1111O10)
if _OO_O1_O1O0O_(_O0II_11_0_I_)or _OO_O1_O1O0O_(_I0I__1I_IO10)return invalid 
segment={}
for i=_O0II_11_0_I_ to _I0I__1I_IO10.Count()-1
tagString=_I0I__1I_IO10[i]
if ____I0_1_1O01(tagString,m.EXTINF)
segmentTagString=_I0I__1I_IO10[i]
segment.url=_1__01IO1I__0(segmentTagString,_0_0_O1111O10)
exit for
end if
end for
return segment 
end function
function __I0_I_1_OI_0(_I1IIIII01O10,____10_1_0_1_)
if _OO_O1_O1O0O_(_I1IIIII01O10)or _OO_O1_O1O0O_(____10_1_0_1_)return invalid 
params=_I1IIIII01O10.Split((Chr(&H2c)))
valueIndex=1
value=Chr(0)
for each param in params
if param.Instr(____10_1_0_1_)>=0
value=param.split(____10_1_0_1_+(Chr(&H3d)))[valueIndex].Replace(m.QuotationMark,Chr(0)).Trim()
exit for
end if
end for
return __0I_011I_I01(value) 
end function
function _IOI0_1__O0OO(__IO1100IIIO_,_I1OO0_010000)
extInfArray=[]
for each tag in __IO1100IIIO_
if ____I0_1_1O01(tag,m.EXTINF)
extInf={}
extInf.url=_1__01IO1I__0(tag,_I1OO0_010000)
extInfArray.Push(extInf)
end if
end for
return extInfArray 
end function
