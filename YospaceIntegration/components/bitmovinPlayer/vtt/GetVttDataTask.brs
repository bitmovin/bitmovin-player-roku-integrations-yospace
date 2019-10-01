sub init()
m.top.functionName="_I0O1O001O_10"
m.vttParser=_110O0001O_01()
end sub
sub _I0O1O001O_10()
getVttRequest=_0_0_11_01O1I(m.top.vttUrl)
onSuccess=function(_II1II0110I0I,_I1_O1_IOIOI1)
parsedData=m.vttParser.parseVtt(m.top.vttUrl,_II1II0110I0I)
error=m.vttParser.error
if _1_01I1IOI__I(error)
contentNode=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(67)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)))
contentNode.update({id:(Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(84)+Chr(&H68)+Chr(117)+Chr(109)+Chr(98)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H44)+Chr(&H61)+Chr(&H74)+Chr(97)),"data":parsedData},(1=1))
m.top.result={data:contentNode}
else 
m.top.error={data:error}
end if
end function
onError=function(_01I010OO00I_,_11_OOOO1OO01)
m.top.error={data:_01I010OO00I_}
end function
__IIO01IOOI01(getVttRequest,(Chr(71)+Chr(69)+Chr(84)),onSuccess,onError)
end sub
