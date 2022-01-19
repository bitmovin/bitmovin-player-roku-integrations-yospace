sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(70)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.bitmovinModelObjectMapper=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(101)+Chr(&H6c)+Chr(79)+Chr(98)+Chr(106)+Chr(&H65)+Chr(99)+Chr(116)+Chr(77)+Chr(&H61)+Chr(&H70)+Chr(&H70)+Chr(101)+Chr(114)))
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
m.thumbnailTilesHandler=__0_1O_1_OO1I()
end sub
sub initializeService(_O_0I00I_1OO_)
m.thumbnails=[]
m.video=_O_0I00I_1OO_.videoNode
m.configurationService=_O_0I00I_1OO_.services.configurationService
m.playbackService=_O_0I00I_1OO_.services.playbackService
end sub
sub startService(_10_01O1_OI10,_1_11OIO_IO_1,_O_0_II10O1__)
if _110__I1O00_I(_1_11OIO_IO_1)or _110__I1O00_I(_O_0_II10O1__)return 
if __OOIO0I0__00(_10_01O1_OI10)
_I001I1OOOO_1(_10_01O1_OI10,_1_11OIO_IO_1)
else if _I0OO001_O__I(_10_01O1_OI10)
__0_I_I0_OO1O(_10_01O1_OI10,_O_0_II10O1__)
else if _I00O0OO0_00I()
m.playbackService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H5f)+Chr(49)+Chr(48)+Chr(95)+Chr(&H5f)+Chr(&H31)+Chr(&H31)+Chr(&H4f)+Chr(48)+Chr(&H5f)+Chr(49)+Chr(48)))
end if
end sub
function __OOIO0I0__00(_OOI00I_O_0__)
return _OO0I0OO0I0O1(_OOI00I_O_0__) and Len(_OOI00I_O_0__)>0 
end function
function _I0OO001_O__I(_1O_I___OI1_0)
return _010I_IO_OO_I(_1O_I___OI1_0) 
end function
function _I00O0OO0_00I()
return not __1II0I_I1101(m.configurationService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(67)+Chr(111)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(&H67)),invalid),[(Chr(&H74)+Chr(&H77)+Chr(101)+Chr(97)+Chr(&H6b)+Chr(115)),(Chr(100)+Chr(105)+Chr(&H73)+Chr(&H61)+Chr(&H62)+Chr(&H6c)+Chr(101)+Chr(&H49)+Chr(109)+Chr(&H61)+Chr(103)+Chr(101)+Chr(77)+Chr(101)+Chr(100)+Chr(105)+Chr(97)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(108)+Chr(&H69)+Chr(&H73)+Chr(&H74)+Chr(&H50)+Chr(97)+Chr(114)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67))])=(1=1) 
end function
sub stopService(_0__01_OIOIIO=invalid)
m.thumbnails=[]
m.playbackService.unobserveFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(&H64)))
if not _110__I1O00_I(m.getVttDataOperation)
m.getVttDataOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)))
end if
end sub
sub _I001I1OOOO_1(_000_II1I_1_1,_O0I11OO_1101)
m.getVttDataOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE,_000_II1I_1_1)
m.getVttDataOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(Chr(&H5f)+Chr(79)+Chr(&H5f)+Chr(73)+Chr(&H5f)+Chr(&H4f)+Chr(48)+Chr(&H4f)+Chr(&H31)+Chr(95)+Chr(95)+Chr(73)+Chr(79)))
m.getVttDataOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(&H65)),_O0I11OO_1101)
end sub
sub __0_I_I0_OO1O(_OO0I11OO_1_O,_IO0I__11_1O1)
if _OO0I11OO_1_O.fhd<>invalid _IO0I__11_1O1.FHDBifUrl=_OO0I11OO_1_O.fhd
if _OO0I11OO_1_O.hd<>invalid _IO0I__11_1O1.HDBifUrl=_OO0I11OO_1_O.hd
if _OO0I11OO_1_O.sd<>invalid _IO0I__11_1O1.SDBifUrl=_OO0I11OO_1_O.sd
end sub
sub _O_I_O0O1__IO(__OI_1_OOO1I1)
result=__OI_1_OOO1I1.getData()
if not result.successful
?(Chr(&H56)+Chr(&H74)+Chr(&H74)+Chr(32)+Chr(&H50)+Chr(97)+Chr(114)+Chr(115)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(70)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(100)+Chr(&H21)+Chr(&H20));result.error
else 
m.thumbnails=result.response.thumbnails
end if
end sub
sub __10__11O0_10(_11III100I01_)
data=_11III100I01_.getData()
if data.type=(Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(97)+Chr(116)+Chr(101))
state=data.data.state
else 
state=data.type
end if
if not state=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(110)+Chr(103))return 
__IO1__1II_00(m.video)
end sub
sub __IO1__1II_00(__1OII1IIOIO_)
thumbnailTiles=__1OII1IIOIO_.thumbnailTiles
if not _110__I1O00_I(thumbnailTiles) and m.thumbnailTilesHandler.isThumbnailTileOfSupportedType(thumbnailTiles)
m.thumbnails=m.thumbnailTilesHandler.extractThumbnails(thumbnailTiles)
end if
__1OII1IIOIO_.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(101)))
end sub
function getThumbnail(_0IIIII1_0II_)
if _110__I1O00_I(_0IIIII1_0II_)or m.thumbnails.count()=0
return invalid 
end if
for i=0 to m.thumbnails.Count()-1
thumbnail=m.thumbnails[i]
if _1I10I01I0I_I(_0IIIII1_0II_,thumbnail.start,thumbnail.end)
return thumbnail 
end if
end for
return invalid 
end function
