sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.bitmovinModelObjectMapper=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(66)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(77)+Chr(111)+Chr(100)+Chr(101)+Chr(&H6c)+Chr(79)+Chr(98)+Chr(&H6a)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(&H4d)+Chr(97)+Chr(&H70)+Chr(112)+Chr(&H65)+Chr(114)))
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
m.thumbnailTilesHandler=_I0I_II101OO1()
end sub
sub initializeService(_O000O1_O10__,__1110O_OO10O)
m.thumbnails=[]
m.video=_O000O1_O10__
m.configurationService=__1110O_OO10O
end sub
sub startService(_0_IOI_0III00,_0O_1_0O1_II0,___0_0_010O1_)
if _1100IO1O_0_I(_0O_1_0O1_II0)or _1100IO1O_0_I(___0_0_010O1_)return 
if ___OI_01001_0(_0_IOI_0III00)
_O_O_O01O001_(_0_IOI_0III00,_0O_1_0O1_II0)
else if __OO110_O0000(_0_IOI_0III00)
_IO0I_O0O0IIO(_0_IOI_0III00,___0_0_010O1_)
else if __I1O1I___0_0()
m.video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)),(Chr(&H5f)+Chr(&H30)+Chr(&H31)+Chr(&H31)+Chr(79)+Chr(&H49)+Chr(&H49)+Chr(95)+Chr(95)+Chr(49)+Chr(95)+Chr(&H5f)+Chr(&H30)))
end if
end sub
function ___OI_01001_0(_I0IIOI1IIIOI)
return _OI_IOII0I__0(_I0IIOI1IIIOI) and Len(_I0IIOI1IIIOI)>0 
end function
function __OO110_O0000(_01OOOIO0000_)
return _OI010O001_0_(_01OOOIO0000_) 
end function
function __I1O1I___0_0()
return not _1OI1001I_1I1(m.configurationService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(&H67)),invalid),[(Chr(&H74)+Chr(119)+Chr(&H65)+Chr(97)+Chr(&H6b)+Chr(115)),(Chr(100)+Chr(&H69)+Chr(&H73)+Chr(97)+Chr(98)+Chr(&H6c)+Chr(&H65)+Chr(&H49)+Chr(109)+Chr(&H61)+Chr(&H67)+Chr(&H65)+Chr(&H4d)+Chr(101)+Chr(100)+Chr(105)+Chr(97)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(108)+Chr(&H69)+Chr(&H73)+Chr(116)+Chr(80)+Chr(&H61)+Chr(&H72)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(103))])=(1=1) 
end function
sub stopService(_1O_O0II0OI0_=invalid)
m.thumbnails=[]
m.video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)))
if not _1100IO1O_0_I(m.getVttDataOperation)
m.getVttDataOperation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)))
end if
end sub
sub _O_O_O01O001_(_OO0O0I11_11I,_1IO1II01II0_)
m.getVttDataOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE,_OO0O0I11_11I)
m.getVttDataOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(Chr(&H5f)+Chr(&H30)+Chr(48)+Chr(73)+Chr(&H31)+Chr(&H49)+Chr(49)+Chr(73)+Chr(48)+Chr(&H30)+Chr(79)+Chr(&H30)+Chr(&H5f)))
m.getVttDataOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(101)),_1IO1II01II0_)
end sub
sub _IO0I_O0O0IIO(__OO111_10O_I,_O0IO00O10_00)
if __OO111_10O_I.fhd<>invalid _O0IO00O10_00.FHDBifUrl=__OO111_10O_I.fhd
if __OO111_10O_I.hd<>invalid _O0IO00O10_00.HDBifUrl=__OO111_10O_I.hd
if __OO111_10O_I.sd<>invalid _O0IO00O10_00.SDBifUrl=__OO111_10O_I.sd
end sub
sub _00I1I1I00O0_(__IOO1__I__O1)
result=__IOO1__I__O1.getData()
if not result.successful
?(Chr(86)+Chr(116)+Chr(&H74)+Chr(&H20)+Chr(80)+Chr(97)+Chr(114)+Chr(115)+Chr(101)+Chr(&H72)+Chr(&H20)+Chr(70)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(100)+Chr(33)+Chr(&H20));result.error
else 
m.thumbnails=result.response.thumbnails
end if
end sub
sub _011OII__1__0(_OIIOO01I_OII)
state=_OIIOO01I_OII.getData()
if not state=(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(105)+Chr(110)+Chr(&H67))return 
_I10OI_OI_O1I(m.video)
end sub
sub _I10OI_OI_O1I(_1I011_0_0_O1)
thumbnailTiles=_1I011_0_0_O1.thumbnailTiles
if not _1100IO1O_0_I(thumbnailTiles) and m.thumbnailTilesHandler.isThumbnailTileOfSupportedType(thumbnailTiles)
m.thumbnails=m.thumbnailTilesHandler.extractThumbnails(thumbnailTiles)
end if
_1I011_0_0_O1.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)))
end sub
function getThumbnail(__I_O_____1IO)
if _1100IO1O_0_I(__I_O_____1IO)or m.thumbnails.count()=0
return invalid 
end if
for i=0 to m.thumbnails.Count()-1
thumbnail=m.thumbnails[i]
if __1_0__0I_OIO(__I_O_____1IO,thumbnail.start,thumbnail.end)
return thumbnail 
end if
end for
return invalid 
end function
