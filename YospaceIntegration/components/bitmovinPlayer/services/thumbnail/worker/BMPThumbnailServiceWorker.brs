sub init()
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
end sub
sub executeOperation(_0__1O_O_0100)
if _1100IO1O_0_I(_0__1O_O_0100.data)or _1100IO1O_0_I(_0__1O_O_0100.data.url)return 
if _0__1O_O_0100.type=m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE _O0O10IIIOII0(_0__1O_O_0100)
end sub
sub _O0O10IIIOII0(_O0O1I__O110I)
getVttRequest=_000OO__IO0O1(_O0O1I__O110I.data.url)
onSuccess=function(_11O0IIII_OO0,_0I11001_0_1O,_I1O11O0I__O1)
vttParser=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H56)+Chr(84)+Chr(&H54)+Chr(&H50)+Chr(97)+Chr(114)+Chr(&H73)+Chr(101)+Chr(&H72)))
parsedData=vttParser.callfunc((Chr(112)+Chr(97)+Chr(114)+Chr(&H73)+Chr(101)+Chr(86)+Chr(&H74)+Chr(116)),_I1O11O0I__O1.data.url,_11O0IIII_OO0)
error=vttParser.error
if error=Chr(0)
contentNode=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(67)+Chr(111)+Chr(110)+Chr(116)+Chr(&H65)+Chr(110)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)))
contentNode.update({id:(Chr(&H61)+Chr(108)+Chr(108)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(68)+Chr(&H61)+Chr(116)+Chr(&H61)),"thumbnails":parsedData},(1=1))
_I1O11O0I__O1.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)),(1=1),contentNode,_0I11001_0_1O)
else 
_I1O11O0I__O1.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)),(1=2),invalid,_0I11001_0_1O,error)
end if
end function
onError=function(__10I_OO0IO00,_0O11OO0_1I1I,_I_O_00III_1_)
_I_O_00III_1_.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=2),__10I_OO0IO00,_0O11OO0_1I1I,__10I_OO0IO00.error)
end function
__I_O1II01O1I(getVttRequest,(Chr(&H47)+Chr(&H45)+Chr(&H54)),onSuccess,onError,_O0O1I__O110I)
end sub
