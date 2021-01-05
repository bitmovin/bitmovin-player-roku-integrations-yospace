sub init()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(&H46)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.BitmovinAsyncOperationTypes=_001_100I0III()
end sub
sub initializeService(_1O0_OII111I1=invalid)
m.allThumbnailData=[]
end sub
sub startService(___O0_O111_11,_1__OOO_O_0I0,_01110O_01I0O)
if _IO1IIIOI0_1O(___O0_O111_11)or _IO1IIIOI0_1O(_1__OOO_O_0I0)or _IO1IIIOI0_1O(_01110O_01I0O)return 
if ___0OO_I1OI1_(___O0_O111_11) and Len(___O0_O111_11)>0
__OI01O1_1OOO(___O0_O111_11,_1__OOO_O_0I0)
else if _1_I10I__1I_0(___O0_O111_11)
_I10O11IOO_I1(___O0_O111_11,_01110O_01I0O)
end if
end sub
sub stopService(_1__0_OOI100O=invalid)
m.allThumbnailData=[]
if not _IO1IIIOI0_1O(m.getVttDataOperation)
m.getVttDataOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)))
end if
end sub
sub __OI01O1_1OOO(_0I10IIOOI0I_,_01O1_II0010O)
m.getVttDataOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE,_0I10IIOOI0I_)
m.getVttDataOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(95)+Chr(95)+Chr(49)+Chr(48)+Chr(&H30)+Chr(95)+Chr(95)+Chr(&H30)+Chr(48)+Chr(95)+Chr(&H5f)+Chr(79)+Chr(&H31)))
m.getVttDataOperation.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(101)),_01O1_II0010O)
end sub
sub _I10O11IOO_I1(_10IO_0O001I1,_OO_I01O0_I1_)
if _10IO_0O001I1.fhd<>invalid _OO_I01O0_I1_.FHDBifUrl=_10IO_0O001I1.fhd
if _10IO_0O001I1.hd<>invalid _OO_I01O0_I1_.HDBifUrl=_10IO_0O001I1.hd
if _10IO_0O001I1.sd<>invalid _OO_I01O0_I1_.SDBifUrl=_10IO_0O001I1.sd
end sub
sub __100__00__O1(_1_I01I01___I)
result=_1_I01I01___I.getData()
if not result.successful
?(Chr(&H56)+Chr(&H74)+Chr(&H74)+Chr(&H20)+Chr(80)+Chr(97)+Chr(&H72)+Chr(115)+Chr(101)+Chr(114)+Chr(&H20)+Chr(&H46)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(&H64)+Chr(&H21)+Chr(&H20));result.error
else 
m.allThumbnailData=result.response.thumbnails
end if
end sub
function getThumbnail(_01O_O0OOO___)
if _IO1IIIOI0_1O(_01O_O0OOO___)or m.allThumbnailData.count()=0
return invalid 
end if
for i=0 to m.allThumbnailData.Count()-1
thumbnail=m.allThumbnailData[i]
if _II0O11_0O_0_(_01O_O0OOO___,thumbnail.start,thumbnail.end)
return thumbnail 
end if
end for
return invalid 
end function
