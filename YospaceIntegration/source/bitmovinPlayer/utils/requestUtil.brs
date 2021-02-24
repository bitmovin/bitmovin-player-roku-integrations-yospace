function ___I0I_IOO0__(_III0O0_IIOOO,_I1O11_10I11_=CreateObject((Chr(114)+Chr(111)+Chr(77)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(101)+Chr(&H50)+Chr(111)+Chr(114)+Chr(&H74))))
request=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H55)+Chr(&H72)+Chr(&H6c)+Chr(84)+Chr(114)+Chr(97)+Chr(110)+Chr(115)+Chr(&H66)+Chr(101)+Chr(&H72)))
request.SetCertificatesFile((Chr(&H63)+Chr(111)+Chr(&H6d)+Chr(109)+Chr(111)+Chr(&H6e)+Chr(&H3a)+Chr(&H2f)+Chr(99)+Chr(&H65)+Chr(114)+Chr(&H74)+Chr(&H73)+Chr(47)+Chr(99)+Chr(97)+Chr(45)+Chr(98)+Chr(&H75)+Chr(110)+Chr(100)+Chr(&H6c)+Chr(101)+Chr(46)+Chr(&H63)+Chr(&H72)+Chr(&H74)))
request.SetUrl(_III0O0_IIOOO)
request.AddHeader((Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H2d)+Chr(84)+Chr(&H79)+Chr(112)+Chr(101)),(Chr(&H61)+Chr(112)+Chr(112)+Chr(108)+Chr(&H69)+Chr(99)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H2f)+Chr(106)+Chr(&H73)+Chr(&H6f)+Chr(110)))
request.SetPort(_I1O11_10I11_)
return request 
end function
function _I_I1OO0IO_OO(_O00O_O10_OO0,_O_0___00OIO1=__O0O110001I_)
if _O00O_O10_OO0.getString()=Chr(0)
return invalid 
end if
return _O_0___00OIO1(_O00O_O10_OO0.getString()) 
end function
function __II1I_00O00I(_1OOOI_I011_I,__OIO__O_OO0I,_OIOOII1_O1I1,_O_O1_OO1O11O,_01OO0I__11I0,__0I011O_0III=__O0O110001I_)
DEFAULT_REQUEST_TIMEOUT=5000
if _01OO0I__11I0.data.options=invalid
options={}
else 
options=_01OO0I__11I0.data.options
end if
requestIssued=(1=2)
if __OIO__O_OO0I=(Chr(71)+Chr(&H45)+Chr(84))
requestIssued=_1OOOI_I011_I.AsyncGetToString()
else if __OIO__O_OO0I=(Chr(&H50)+Chr(79)+Chr(&H53)+Chr(84))
requestIssued=_1OOOI_I011_I.AsyncPostFromString(FormatJSON(options))
end if
if not requestIssued
_O_O1_OO1O11O({error:(Chr(85)+Chr(110)+Chr(107)+Chr(110)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(&H20)+Chr(99)+Chr(&H6c)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(116)+Chr(32)+Chr(101)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114))},418,_01OO0I__11I0)
_1OOOI_I011_I.asyncCancel()
return invalid 
end if
msg=wait(DEFAULT_REQUEST_TIMEOUT,_1OOOI_I011_I.GetMessagePort())
msgType=type(msg)
if msgType=invalid
_O_O1_OO1O11O({error:(Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(&H6f)+Chr(117)+Chr(116)+Chr(32)+Chr(101)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72))},504,_01OO0I__11I0)
_1OOOI_I011_I.asyncCancel()
return invalid 
end if
if msgType=(Chr(114)+Chr(&H6f)+Chr(85)+Chr(114)+Chr(&H6c)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=_1OOOI_I011_I.getIdentity()
if responseCode=200 or responseCode=204
result=_I_I1OO0IO_OO(msg,__0I011O_0III)
_OIOOII1_O1I1(result,responseCode,_01OO0I__11I0)
else 
_O_O1_OO1O11O({error:msg.getFailureReason()},responseCode,_01OO0I__11I0)
end if
_1OOOI_I011_I.asyncCancel()
end if
end if
end function
