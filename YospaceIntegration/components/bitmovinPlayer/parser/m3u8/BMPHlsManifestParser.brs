sub init()
m.NewLine=Chr(10)
m.QuotationMark=Chr(34)
m.Hashtag=Chr(35)
m.EXTM3U8=(Chr(&H23)+Chr(&H45)+Chr(88)+Chr(&H54)+Chr(&H4d)+Chr(&H33)+Chr(&H55))
m.EXT_X_STREAM_INF=(Chr(&H45)+Chr(88)+Chr(&H54)+Chr(45)+Chr(88)+Chr(45)+Chr(83)+Chr(84)+Chr(&H52)+Chr(&H45)+Chr(&H41)+Chr(&H4d)+Chr(45)+Chr(73)+Chr(&H4e)+Chr(&H46))
m.EXT_X_SCTE=(Chr(69)+Chr(&H58)+Chr(84)+Chr(45)+Chr(&H58)+Chr(&H2d)+Chr(&H53)+Chr(67)+Chr(&H54)+Chr(&H45)+Chr(51)+Chr(53))
m.EXTINF=(Chr(&H45)+Chr(88)+Chr(84)+Chr(&H49)+Chr(78)+Chr(70))
end sub
function parseMasterPlaylist(_O11I0OO11_OO,_I0_1OI1OO_10)
if _O11I0OO11_OO=invalid return invalid 
if not _0O0_I_0OI1_0(_O11I0OO11_OO)return invalid 
parsedManifest={}
hlsTagStringsArray=_1_I__I11I110(_O11I0OO11_OO)
parsedManifest.ext_x_stream_inf=_O_0__I1OIO00(hlsTagStringsArray,_I0_1OI1OO_10)
return parsedManifest 
end function
function _0O0_I_0OI1_0(_I10IOO1O11O_)
if _I10IOO1O11O_=invalid return(1=2) 
return __OO_O0II0O0_(_I10IOO1O11O_,m.EXTM3U8) 
end function
function __OO_O0II0O0_(_10_00O__0__O,_I_1O0O0__01_)
return _10_00O__0__O.Instr(_I_1O0O0__01_)=0 
end function
function _1_I__I11I110(_0IOO001OI_00)
if __OOI0OI11_O0(_0IOO001OI_00)return invalid 
return _0IOO001OI_00.Split(m.Hashtag) 
end function
function _O_0__I1OIO00(_0_I0O_O_0O01,_I__0IO__01O0)
if __OOI0OI11_O0(_0_I0O_O_0O01)return invalid 
playlistVariants=[]
for each tagString in _0_I0O_O_0O01
if __OO_O0II0O0_(tagString,m.EXT_X_STREAM_INF)
playlistVariant={}
playlistVariant.bandwidth=_0O1_0_00111I(tagString,(Chr(66)+Chr(&H41)+Chr(78)+Chr(68)+Chr(&H57)+Chr(&H49)+Chr(68)+Chr(84)+Chr(&H48)))
playlistVariant.url=__O1I1OI0OI1I(tagString,_I__0IO__01O0)
playlistVariants.Push(playlistVariant)
end if
end for
return playlistVariants 
end function
function __O1I1OI0OI1I(__010OO1O001_,_OO0011I0I0_0)
if __OOI0OI11_O0(__010OO1O001_)return invalid 
url=Chr(0)
uriIndex=1
extractedUrl=__010OO1O001_.split(m.NewLine)[uriIndex]
if __OOI0OI11_O0(extractedUrl)or extractedUrl.Len()=0 return invalid 
if __O00O1100OIO(extractedUrl)
return _I0O_I1_00OI_(extractedUrl,_OO0011I0I0_0) 
else if _0O0_O0_IO1_I(extractedUrl)
return extractedUrl 
else 
return _O_111O0O1OO0(_OO0011I0I0_0,extractedUrl) 
end if
end function
function parsePlaylistVariant(_OIII0IOO1OI_,__1_00010O1_1)
if __OOI0OI11_O0(_OIII0IOO1OI_)return invalid 
if not _0O0_I_0OI1_0(_OIII0IOO1OI_)return invalid 
parsedPlaylistVariantManifest={}
hlsTagStringsArray=_1_I__I11I110(_OIII0IOO1OI_)
parsedPlaylistVariantManifest.scte=__O0I0101II11(hlsTagStringsArray,__1_00010O1_1)
parsedPlaylistVariantManifest.ext_inf=_0_II00_II1OI(hlsTagStringsArray,__1_00010O1_1)
return parsedPlaylistVariantManifest 
end function
function __O0I0101II11(_0I0I1III1O_1,_IOI111O1__I1)
if __OOI0OI11_O0(_0I0I1III1O_1)return invalid 
scteArray=[]
for i=0 to _0I0I1III1O_1.Count()-1
tagString=_0I0I1III1O_1[i]
if __OO_O0II0O0_(tagString,m.EXT_X_SCTE)
scteEvent={}
scteFollowingSegment=_III_IIOII1_0(i,_0I0I1III1O_1,_IOI111O1__I1)
scteEvent.cue=_0O1_0_00111I(tagString,(Chr(67)+Chr(&H55)+Chr(69)))
scteEvent.id=_0O1_0_00111I(tagString,(Chr(&H49)+Chr(68)))
scteEvent.segmentUrl=scteFollowingSegment.url
scteArray.Push(scteEvent)
end if
end for
return scteArray 
end function
function _III_IIOII1_0(_01O_10OO0II0,__OIII01_OOI_,_O1II001O0I0_)
if __OOI0OI11_O0(_01O_10OO0II0)or __OOI0OI11_O0(__OIII01_OOI_)return invalid 
segment={}
for i=_01O_10OO0II0 to __OIII01_OOI_.Count()-1
tagString=__OIII01_OOI_[i]
if __OO_O0II0O0_(tagString,m.EXTINF)
segmentTagString=__OIII01_OOI_[i]
segment.url=__O1I1OI0OI1I(segmentTagString,_O1II001O0I0_)
exit for
end if
end for
return segment 
end function
function _0O1_0_00111I(_11O000OIIO1O,__0_1000IOIIO)
if __OOI0OI11_O0(_11O000OIIO1O)or __OOI0OI11_O0(__0_1000IOIIO)return invalid 
params=_11O000OIIO1O.Split((Chr(44)))
valueIndex=1
value=Chr(0)
for each param in params
if param.Instr(__0_1000IOIIO)>=0
value=param.split(__0_1000IOIIO+(Chr(&H3d)))[valueIndex].Replace(m.QuotationMark,Chr(0)).Trim()
exit for
end if
end for
return _0_O0II00I0__(value) 
end function
function _0_II00_II1OI(_10_0_OI_IOII,_1__IOI0OI1_1)
extInfArray=[]
for each tag in _10_0_OI_IOII
if __OO_O0II0O0_(tag,m.EXTINF)
extInf={}
extInf.url=__O1I1OI0OI1I(tag,_1__IOI0OI1_1)
extInfArray.Push(extInf)
end if
end for
return extInfArray 
end function
