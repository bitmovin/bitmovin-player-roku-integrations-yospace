sub init()
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
end sub
sub executeOperation(_OIOOO__1O011)
if _OO_O1_O1O0O_(_OIOOO__1O011.data)or _OO_O1_O1O0O_(_OIOOO__1O011.data.url)return 
if _OIOOO__1O011.type=m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE _0101IOIO_I_O(_OIOOO__1O011)
end sub
sub _0101IOIO_I_O(_010_1IO1_0_0)
getVttRequest=_11I00IO1OI10(_010_1IO1_0_0.data.url)
onSuccess=function(__0II1I0_IO1I,_1O10I_0OI11_,__0OIO101_0O0)
vttParser=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H56)+Chr(84)+Chr(&H54)+Chr(&H50)+Chr(&H61)+Chr(&H72)+Chr(115)+Chr(&H65)+Chr(&H72)))
parsedData=vttParser.callfunc((Chr(&H70)+Chr(&H61)+Chr(&H72)+Chr(&H73)+Chr(&H65)+Chr(&H56)+Chr(&H74)+Chr(&H74)),__0OIO101_0O0.data.url,__0II1I0_IO1I)
error=vttParser.error
if error=Chr(0)
contentNode=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)))
contentNode.update({id:(Chr(97)+Chr(&H6c)+Chr(108)+Chr(84)+Chr(104)+Chr(117)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H44)+Chr(&H61)+Chr(&H74)+Chr(&H61)),"thumbnails":parsedData},(1=1))
__0OIO101_0O0.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=1),contentNode,_1O10I_0OI11_)
else 
__0OIO101_0O0.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=2),invalid,_1O10I_0OI11_,error)
end if
end function
onError=function(_10IOI1_II0_0,_00I0__00__00,_OOOI10I0O1II)
_OOOI10I0O1II.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(1=2),_10IOI1_II0_0,_00I0__00__00,_10IOI1_II0_0.error)
end function
_1001IIOO_O_O(getVttRequest,(Chr(71)+Chr(69)+Chr(84)),onSuccess,onError,_010_1IO1_0_0)
end sub
