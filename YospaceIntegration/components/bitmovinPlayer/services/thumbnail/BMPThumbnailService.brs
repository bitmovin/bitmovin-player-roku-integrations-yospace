sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(111)+Chr(114)+Chr(&H79)))
m.bitmovinModelObjectMapper=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(&H6c)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(97)+Chr(&H70)+Chr(112)+Chr(101)+Chr(114)))
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
m.thumbnailTilesHandler=__110I_I100II()
end sub
sub initializeService(_I_0__0IO0O0O)
m.thumbnails=[]
m.video=_I_0__0IO0O0O
end sub
sub startService(_00_O0II_O0OO,_1000_01_OOO1,_O10OI1I_0_O_)
if ___0O_II_00I_(_1000_01_OOO1)or ___0O_II_00I_(_O10OI1I_0_O_)return 
if _IO0__O111III(_00_O0II_O0OO)
__OOI_O1_00O_(_00_O0II_O0OO,_1000_01_OOO1)
else if _OI_11IIOII1_(_00_O0II_O0OO)
__0_I_00_O_1I(_00_O0II_O0OO,_O10OI1I_0_O_)
else 
m.video.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H65)),(Chr(95)+Chr(49)+Chr(73)+Chr(49)+Chr(79)+Chr(79)+Chr(79)+Chr(&H5f)+Chr(&H4f)+Chr(&H4f)+Chr(&H49)+Chr(&H5f)+Chr(48)))
end if
end sub
function _IO0__O111III(__0____O_1_1_)
return __I_O0I_0_O_O(__0____O_1_1_) and Len(__0____O_1_1_)>0 
end function
function _OI_11IIOII1_(_11O1001_1I0O)
return _O__00IO1IOOI(_11O1001_1I0O) 
end function
sub stopService(__0I0OO10I_1I=invalid)
m.thumbnails=[]
m.video.unobserveFieldScoped((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)))
if not ___0O_II_00I_(m.getVttDataOperation)
m.getVttDataOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(&H74)))
end if
end sub
sub __OOI_O1_00O_(_01I__10O_001,_101IOI_IIO_I)
m.getVttDataOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE,_01I__10O_001)
m.getVttDataOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(&H5f)+Chr(&H5f)+Chr(73)+Chr(79)+Chr(&H30)+Chr(&H30)+Chr(73)+Chr(73)+Chr(&H4f)+Chr(&H5f)+Chr(49)+Chr(&H30)+Chr(&H30)))
m.getVttDataOperation.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(116)+Chr(101)),_101IOI_IIO_I)
end sub
sub __0_I_00_O_1I(_0I1_I_0_1__I,__O_I0I_II__O)
if _0I1_I_0_1__I.fhd<>invalid __O_I0I_II__O.FHDBifUrl=_0I1_I_0_1__I.fhd
if _0I1_I_0_1__I.hd<>invalid __O_I0I_II__O.HDBifUrl=_0I1_I_0_1__I.hd
if _0I1_I_0_1__I.sd<>invalid __O_I0I_II__O.SDBifUrl=_0I1_I_0_1__I.sd
end sub
sub __IO00IIO_100(_OI_1IOOO0O1I)
result=_OI_1IOOO0O1I.getData()
if not result.successful
?(Chr(86)+Chr(&H74)+Chr(116)+Chr(&H20)+Chr(&H50)+Chr(&H61)+Chr(114)+Chr(115)+Chr(&H65)+Chr(114)+Chr(32)+Chr(70)+Chr(&H61)+Chr(105)+Chr(108)+Chr(&H65)+Chr(100)+Chr(33)+Chr(&H20));result.error
else 
m.thumbnails=result.response.thumbnails
end if
end sub
sub _1I1OOO_OOI_0(___11100I_11O)
state=___11100I_11O.getData()
if not state=(Chr(112)+Chr(108)+Chr(97)+Chr(121)+Chr(105)+Chr(110)+Chr(&H67))return 
___00O0O110_0(m.video)
end sub
sub ___00O0O110_0(__0IO101O1_1_)
thumbnailTiles=__0IO101O1_1_.thumbnailTiles
if not ___0O_II_00I_(thumbnailTiles) and m.thumbnailTilesHandler.isThumbnailTileOfSupportedType(thumbnailTiles)
m.thumbnails=m.thumbnailTilesHandler.extractThumbnails(thumbnailTiles)
end if
__0IO101O1_1_.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(&H74)+Chr(101)))
end sub
function getThumbnail(__011_IIO10I1)
if ___0O_II_00I_(__011_IIO10I1)or m.thumbnails.count()=0
return invalid 
end if
for i=0 to m.thumbnails.Count()-1
thumbnail=m.thumbnails[i]
if _OOI1_1OO1I_I(__011_IIO10I1,thumbnail.start,thumbnail.end)
return thumbnail 
end if
end for
return invalid 
end function
