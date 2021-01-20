sub init()
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
end sub
sub executeOperation(_O0I1_10OOO0I)
if _I1_I11_1O_0I(_O0I1_10OOO0I.data)or _I1_I11_1O_0I(_O0I1_10OOO0I.data.url)return 
if _O0I1_10OOO0I.type=m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE _O0I1OI100_OO(_O0I1_10OOO0I)
end sub
sub _O0I1OI100_OO(_OO0I_01I10O1)
getVttRequest=_OIIOI_001OII(_OO0I_01I10O1.data.url)
onSuccess=function(_0_OO__10_I1O,__I_I__1I1_I1,_0I_011_OIO_1)
vttParser=_0O___1_0001I()
parsedData=vttParser.parseVtt(_0I_011_OIO_1.data.url,_0_OO__10_I1O)
error=vttParser.error
if _I1_I11_1O_0I(error)
contentNode=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(67)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)))
contentNode.update({id:(Chr(97)+Chr(&H6c)+Chr(108)+Chr(84)+Chr(&H68)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H44)+Chr(97)+Chr(&H74)+Chr(97)),"thumbnails":parsedData},(1=1))
_0I_011_OIO_1.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(82)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(1=1),contentNode,__I_I__1I1_I1)
else 
_0I_011_OIO_1.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(1=2),invalid,__I_I__1I1_I1,error)
end if
end function
onError=function(_I00O_1__II1O,_11O0OOII_O_I,__I0O__OI_1OO)
__I0O__OI_1OO.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=2),_I00O_1__II1O,_11O0OOII_O_I,_I00O_1__II1O.error)
end function
_101O_I_I_1IO(getVttRequest,(Chr(71)+Chr(&H45)+Chr(84)),onSuccess,onError,_OO0I_01I10O1)
end sub
