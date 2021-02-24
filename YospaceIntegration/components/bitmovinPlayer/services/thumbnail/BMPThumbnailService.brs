sub init()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(111)+Chr(114)+Chr(121)))
m.bitmovinModelObjectMapper=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(&H65)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(&H74)+Chr(77)+Chr(&H61)+Chr(112)+Chr(&H70)+Chr(&H65)+Chr(&H72)))
m.BitmovinAsyncOperationTypes=___IO10I10001()
m.thumbnailTilesHandler=_01I1I0I_1O1_()
end sub
sub initializeService(___O1__I_0I_0)
m.thumbnails=[]
m.video=___O1__I_0I_0
end sub
sub startService(_00___00II00_,_OIO01OO0_1IO,_11_0OO__I1_O)
if __OOI0OI11_O0(_OIO01OO0_1IO)or __OOI0OI11_O0(_11_0OO__I1_O)return 
if __I00___1_IO_(_00___00II00_)
_O11I1_1O1_OI(_00___00II00_,_OIO01OO0_1IO)
else if _001IOOI__O0O(_00___00II00_)
_OI0OIO0IOO0I(_00___00II00_,_11_0OO__I1_O)
else 
m.video.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)),(Chr(95)+Chr(&H49)+Chr(48)+Chr(&H49)+Chr(&H4f)+Chr(73)+Chr(73)+Chr(&H30)+Chr(&H31)+Chr(73)+Chr(48)+Chr(48)+Chr(73)))
end if
end sub
function __I00___1_IO_(_O1IO_011I01O)
return __01_1IOO0_OI(_O1IO_011I01O) and Len(_O1IO_011I01O)>0 
end function
function _001IOOI__O0O(__OI11__1I1_O)
return _0_I_0IOO00_I(__OI11__1I1_O) 
end function
sub stopService(_I___O1O0_II1=invalid)
m.thumbnails=[]
m.video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)))
if not __OOI0OI11_O0(m.getVttDataOperation)
m.getVttDataOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)))
end if
end sub
sub _O11I1_1O1_OI(_II_00001011O,_0O_011II_IOI)
m.getVttDataOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE,_II_00001011O)
m.getVttDataOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(&H4f)+Chr(49)+Chr(&H31)+Chr(&H5f)+Chr(&H30)+Chr(&H49)+Chr(48)+Chr(&H30)+Chr(79)+Chr(73)+Chr(&H31)+Chr(&H31)))
m.getVttDataOperation.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)),_0O_011II_IOI)
end sub
sub _OI0OIO0IOO0I(_I010OOI0_I01,_1_O1O01_OI01)
if _I010OOI0_I01.fhd<>invalid _1_O1O01_OI01.FHDBifUrl=_I010OOI0_I01.fhd
if _I010OOI0_I01.hd<>invalid _1_O1O01_OI01.HDBifUrl=_I010OOI0_I01.hd
if _I010OOI0_I01.sd<>invalid _1_O1O01_OI01.SDBifUrl=_I010OOI0_I01.sd
end sub
sub _O11_0I00OI11(_IO1_O_I__111)
result=_IO1_O_I__111.getData()
if not result.successful
?(Chr(86)+Chr(&H74)+Chr(&H74)+Chr(&H20)+Chr(80)+Chr(&H61)+Chr(114)+Chr(115)+Chr(&H65)+Chr(&H72)+Chr(32)+Chr(&H46)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H64)+Chr(&H21)+Chr(&H20));result.error
else 
m.thumbnails=result.response.thumbnails
end if
end sub
sub _I0IOII01I00I(_1O1I0011_0O_)
state=_1O1I0011_0O_.getData()
if not state=(Chr(&H70)+Chr(108)+Chr(97)+Chr(121)+Chr(105)+Chr(&H6e)+Chr(&H67))return 
_1_11_II00O_0(m.video)
end sub
sub _1_11_II00O_0(_I___1101O0II)
thumbnailTiles=_I___1101O0II.thumbnailTiles
if not __OOI0OI11_O0(thumbnailTiles) and m.thumbnailTilesHandler.isThumbnailTileOfSupportedType(thumbnailTiles)
m.thumbnails=m.thumbnailTilesHandler.extractThumbnails(thumbnailTiles)
end if
_I___1101O0II.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)))
end sub
function getThumbnail(_OOIII_I0O_0I)
if __OOI0OI11_O0(_OOIII_I0O_0I)or m.thumbnails.count()=0
return invalid 
end if
for i=0 to m.thumbnails.Count()-1
thumbnail=m.thumbnails[i]
if _I11OO1IO_OI1(_OOIII_I0O_0I,thumbnail.start,thumbnail.end)
return thumbnail 
end if
end for
return invalid 
end function
