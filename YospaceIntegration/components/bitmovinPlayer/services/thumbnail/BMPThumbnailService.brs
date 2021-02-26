sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(65)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.bitmovinModelObjectMapper=createObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(&H65)+Chr(&H6c)+Chr(79)+Chr(&H62)+Chr(106)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(77)+Chr(&H61)+Chr(112)+Chr(112)+Chr(101)+Chr(&H72)))
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
m.thumbnailTilesHandler=_OO_IOIO_0___()
end sub
sub initializeService(_OO0_1I0I0I0_)
m.thumbnails=[]
m.video=_OO0_1I0I0I0_
end sub
sub startService(_0110__0OO0I0,_0_OI___OOIII,__I_1IO1_01II)
if _OO_O1_O1O0O_(_0_OI___OOIII)or _OO_O1_O1O0O_(__I_1IO1_01II)return 
if _1OI000OO1__O(_0110__0OO0I0)
_IIOI0_O_O_O1(_0110__0OO0I0,_0_OI___OOIII)
else if _00_1IOO111O0(_0110__0OO0I0)
_111O_0IOI1I_(_0110__0OO0I0,__I_1IO1_01II)
else 
m.video.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)),(Chr(95)+Chr(95)+Chr(95)+Chr(&H49)+Chr(&H30)+Chr(73)+Chr(49)+Chr(&H31)+Chr(&H4f)+Chr(73)+Chr(48)+Chr(73)+Chr(&H30)))
end if
end sub
function _1OI000OO1__O(__0IIO0O0_1I_)
return _1_0II0__1OOI(__0IIO0O0_1I_) and Len(__0IIO0O0_1I_)>0 
end function
function _00_1IOO111O0(_10_1_1_I1_IO)
return _OO0I11IO1_I_(_10_1_1_I1_IO) 
end function
sub stopService(_O01I10_O_1O1=invalid)
m.thumbnails=[]
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)))
if not _OO_O1_O1O0O_(m.getVttDataOperation)
m.getVttDataOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)))
end if
end sub
sub _IIOI0_O_O_O1(__II_001I__O_,_0__01I_0II1_)
m.getVttDataOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(65)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE,__II_001I__O_)
m.getVttDataOperation.observeFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(Chr(95)+Chr(&H31)+Chr(73)+Chr(&H4f)+Chr(95)+Chr(&H5f)+Chr(79)+Chr(79)+Chr(49)+Chr(73)+Chr(&H31)+Chr(73)+Chr(&H30)))
m.getVttDataOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(101)),_0__01I_0II1_)
end sub
sub _111O_0IOI1I_(_010II1_O_000,_O1O0OO0O_01_)
if _010II1_O_000.fhd<>invalid _O1O0OO0O_01_.FHDBifUrl=_010II1_O_000.fhd
if _010II1_O_000.hd<>invalid _O1O0OO0O_01_.HDBifUrl=_010II1_O_000.hd
if _010II1_O_000.sd<>invalid _O1O0OO0O_01_.SDBifUrl=_010II1_O_000.sd
end sub
sub _1IO__OO1I1I0(_10O_O0I1I__O)
result=_10O_O0I1I__O.getData()
if not result.successful
?(Chr(86)+Chr(&H74)+Chr(&H74)+Chr(&H20)+Chr(80)+Chr(97)+Chr(&H72)+Chr(115)+Chr(101)+Chr(&H72)+Chr(&H20)+Chr(70)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(100)+Chr(33)+Chr(&H20));result.error
else 
m.thumbnails=result.response.thumbnails
end if
end sub
sub ___I0I11OI0I0(_001_0O11O11O)
state=_001_0O11O11O.getData()
if not state=(Chr(&H70)+Chr(108)+Chr(97)+Chr(121)+Chr(&H69)+Chr(110)+Chr(103))return 
_1OI1I_O_1I00(m.video)
end sub
sub _1OI1I_O_1I00(_01OIIII_10O_)
thumbnailTiles=_01OIIII_10O_.thumbnailTiles
if not _OO_O1_O1O0O_(thumbnailTiles) and m.thumbnailTilesHandler.isThumbnailTileOfSupportedType(thumbnailTiles)
m.thumbnails=m.thumbnailTilesHandler.extractThumbnails(thumbnailTiles)
end if
_01OIIII_10O_.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)))
end sub
function getThumbnail(__II_IO0OIOO0)
if _OO_O1_O1O0O_(__II_IO0OIOO0)or m.thumbnails.count()=0
return invalid 
end if
for i=0 to m.thumbnails.Count()-1
thumbnail=m.thumbnails[i]
if __I0_IOII_OIO(__II_IO0OIOO0,thumbnail.start,thumbnail.end)
return thumbnail 
end if
end for
return invalid 
end function
