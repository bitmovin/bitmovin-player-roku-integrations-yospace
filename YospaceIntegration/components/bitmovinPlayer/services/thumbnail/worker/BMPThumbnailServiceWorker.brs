sub init()
m.BitmovinAsyncOperationTypes=_001_100I0III()
end sub
sub executeOperation(_O_10I__I_O01)
if _IO1IIIOI0_1O(_O_10I__I_O01.data)or _IO1IIIOI0_1O(_O_10I__I_O01.data.url)return 
if _O_10I__I_O01.type=m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE _10I000O_1I0O(_O_10I__I_O01)
end sub
sub _10I000O_1I0O(_1_OOI1O01_1_)
getVttRequest=_10I__0__1II1(_1_OOI1O01_1_.data.url)
onSuccess=function(_0I_I_11IIO01,_00_1_0_1O0I_,_0O_IIII11OIO)
vttParser=__IOIO010I_OO()
parsedData=vttParser.parseVtt(_0O_IIII11OIO.data.url,_0I_I_11IIO01)
error=vttParser.error
if _IO1IIIOI0_1O(error)
contentNode=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(101)+Chr(110)+Chr(&H74)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)))
contentNode.update({id:(Chr(97)+Chr(&H6c)+Chr(&H6c)+Chr(84)+Chr(&H68)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(68)+Chr(97)+Chr(&H74)+Chr(&H61)),"thumbnails":parsedData},(1=1))
_0O_IIII11OIO.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H52)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=1),contentNode,_00_1_0_1O0I_)
else 
_0O_IIII11OIO.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)),(1=2),invalid,_00_1_0_1O0I_,error)
end if
end function
onError=function(_O_O_1O__I_OO,__0III1IO0100,__O111_1__OI0)
__O111_1__OI0.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(1=2),_O_O_1O__I_OO,__0III1IO0100,_O_O_1O__I_OO.error)
end function
_1011_IOO_I00(getVttRequest,(Chr(&H47)+Chr(69)+Chr(&H54)),onSuccess,onError,_1_OOI1O01_1_)
end sub
