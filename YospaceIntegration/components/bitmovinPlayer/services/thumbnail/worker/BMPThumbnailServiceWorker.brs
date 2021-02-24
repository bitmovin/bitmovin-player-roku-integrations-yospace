sub init()
m.BitmovinAsyncOperationTypes=___IO10I10001()
end sub
sub executeOperation(_1I__1II0I1_1)
if __OOI0OI11_O0(_1I__1II0I1_1.data)or __OOI0OI11_O0(_1I__1II0I1_1.data.url)return 
if _1I__1II0I1_1.type=m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE _1011_1OOOO00(_1I__1II0I1_1)
end sub
sub _1011_1OOOO00(__10O_1I_0_I_)
getVttRequest=___I0I_IOO0__(__10O_1I_0_I_.data.url)
onSuccess=function(_O__I0OO1O001,_0OOIO0O_101I,_1I_I11I_1I_O)
vttParser=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H56)+Chr(84)+Chr(&H54)+Chr(80)+Chr(97)+Chr(&H72)+Chr(115)+Chr(101)+Chr(114)))
parsedData=vttParser.callfunc((Chr(112)+Chr(&H61)+Chr(&H72)+Chr(115)+Chr(&H65)+Chr(86)+Chr(116)+Chr(116)),_1I_I11I_1I_O.data.url,_O__I0OO1O001)
error=vttParser.error
if error=Chr(0)
contentNode=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(67)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)))
contentNode.update({id:(Chr(97)+Chr(&H6c)+Chr(&H6c)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(&H44)+Chr(97)+Chr(&H74)+Chr(97)),"thumbnails":parsedData},(1=1))
_1I_I11I_1I_O.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(1=1),contentNode,_0OOIO0O_101I)
else 
_1I_I11I_1I_O.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(1=2),invalid,_0OOIO0O_101I,error)
end if
end function
onError=function(__0O__OO1IIOI,_O_1IO1I01O1_,_11II1III__O0)
_11II1III__O0.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)),(1=2),__0O__OO1IIOI,_O_1IO1I01O1_,__0O__OO1IIOI.error)
end function
__II1I_00O00I(getVttRequest,(Chr(71)+Chr(69)+Chr(84)),onSuccess,onError,__10O_1I_0_I_)
end sub
