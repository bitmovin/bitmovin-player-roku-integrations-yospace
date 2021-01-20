sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(65)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(70)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(&H72)+Chr(121)))
m.bitmovinModelObjectMapper=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H4d)+Chr(111)+Chr(&H64)+Chr(101)+Chr(&H6c)+Chr(&H4f)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(&H63)+Chr(116)+Chr(77)+Chr(97)+Chr(112)+Chr(112)+Chr(101)+Chr(&H72)))
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
m.thumbnailTilesHandler=_I11I_I010_II()
end sub
sub initializeService(_O_I0I0O_O_IO)
m.thumbnails=[]
m.video=_O_I0I0O_O_IO
end sub
sub startService(_II___O_01O_0,_0I0_O0IO01O0,_11___0100_OI)
if _I1_I11_1O_0I(_0I0_O0IO01O0)or _I1_I11_1O_0I(_11___0100_OI)return 
if _0___1I00IIOI(_II___O_01O_0)
_0_I0_IO0O0_1(_II___O_01O_0,_0I0_O0IO01O0)
else if _0___1_11I1O1(_II___O_01O_0)
_O_10___I01_I(_II___O_01O_0,_11___0100_OI)
else 
m.video.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H65)),(Chr(95)+Chr(95)+Chr(48)+Chr(79)+Chr(73)+Chr(49)+Chr(95)+Chr(79)+Chr(&H30)+Chr(&H49)+Chr(95)+Chr(&H5f)+Chr(&H31)))
end if
end sub
function _0___1I00IIOI(_I0__O11__10_)
return _IO11_1_OO_O_(_I0__O11__10_) and Len(_I0__O11__10_)>0 
end function
function _0___1_11I1O1(_10II0IOOO1__)
return _1I0OI0_OOOI1(_10II0IOOO1__) 
end function
sub stopService(_O1_O0IOO1II_=invalid)
m.thumbnails=[]
m.video.unobserveFieldScoped((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H65)))
if not _I1_I11_1O_0I(m.getVttDataOperation)
m.getVttDataOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)))
end if
end sub
sub _0_I0_IO0O0_1(_I0_1_I000_I0,_1O__O1IO1IO1)
m.getVttDataOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE,_I0_1_I000_I0)
m.getVttDataOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(79)+Chr(&H31)+Chr(49)+Chr(79)+Chr(&H30)+Chr(79)+Chr(95)+Chr(&H31)+Chr(&H5f)+Chr(&H5f)+Chr(73)+Chr(&H5f)))
m.getVttDataOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(&H74)+Chr(&H65)),_1O__O1IO1IO1)
end sub
sub _O_10___I01_I(_IO00I1_01I__,_OI10OI11_00I)
if _IO00I1_01I__.fhd<>invalid _OI10OI11_00I.FHDBifUrl=_IO00I1_01I__.fhd
if _IO00I1_01I__.hd<>invalid _OI10OI11_00I.HDBifUrl=_IO00I1_01I__.hd
if _IO00I1_01I__.sd<>invalid _OI10OI11_00I.SDBifUrl=_IO00I1_01I__.sd
end sub
sub _O11O0O_1__I_(_I_10OO1IO01_)
result=_I_10OO1IO01_.getData()
if not result.successful
?(Chr(&H56)+Chr(116)+Chr(116)+Chr(&H20)+Chr(&H50)+Chr(97)+Chr(&H72)+Chr(&H73)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(&H46)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H64)+Chr(&H21)+Chr(&H20));result.error
else 
m.thumbnails=result.response.thumbnails
end if
end sub
sub __0OI1_O0I__1(_1IOI1IO00OI1)
state=_1IOI1IO00OI1.getData()
if not state=(Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(&H67))return 
__011I110O1_O(m.video)
end sub
sub __011I110O1_O(_O01IO1__0_I0)
thumbnailTiles=_O01IO1__0_I0.thumbnailTiles
if not _I1_I11_1O_0I(thumbnailTiles) and m.thumbnailTilesHandler.isThumbnailTileOfSupportedType(thumbnailTiles)
m.thumbnails=m.thumbnailTilesHandler.extractThumbnails(thumbnailTiles)
end if
_O01IO1__0_I0.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)))
end sub
function getThumbnail(_O0_IO_01__O_)
if _I1_I11_1O_0I(_O0_IO_01__O_)or m.thumbnails.count()=0
return invalid 
end if
for i=0 to m.thumbnails.Count()-1
thumbnail=m.thumbnails[i]
if __1_I00O1IOOO(_O0_IO_01__O_,thumbnail.start,thumbnail.end)
return thumbnail 
end if
end for
return invalid 
end function
