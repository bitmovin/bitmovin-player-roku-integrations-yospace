function _I0I10_IO__0_(_1OO0_I1OO_01,_O1I0OOO0OIO_=CreateObject((Chr(&H72)+Chr(111)+Chr(77)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(80)+Chr(111)+Chr(114)+Chr(116))))
request=CreateObject((Chr(&H72)+Chr(111)+Chr(&H55)+Chr(&H72)+Chr(108)+Chr(&H54)+Chr(&H72)+Chr(97)+Chr(&H6e)+Chr(115)+Chr(102)+Chr(&H65)+Chr(&H72)))
request.SetCertificatesFile((Chr(&H63)+Chr(&H6f)+Chr(109)+Chr(109)+Chr(111)+Chr(&H6e)+Chr(58)+Chr(&H2f)+Chr(99)+Chr(&H65)+Chr(114)+Chr(&H74)+Chr(&H73)+Chr(&H2f)+Chr(&H63)+Chr(&H61)+Chr(&H2d)+Chr(&H62)+Chr(117)+Chr(&H6e)+Chr(100)+Chr(&H6c)+Chr(101)+Chr(46)+Chr(&H63)+Chr(&H72)+Chr(116)))
request.SetUrl(_1OO0_I1OO_01)
request.AddHeader((Chr(&H43)+Chr(111)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(45)+Chr(84)+Chr(121)+Chr(112)+Chr(101)),(Chr(&H61)+Chr(&H70)+Chr(&H70)+Chr(108)+Chr(105)+Chr(&H63)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(47)+Chr(&H6a)+Chr(&H73)+Chr(&H6f)+Chr(&H6e)))
request.SetPort(_O1I0OOO0OIO_)
return request 
end function
function __1I_0OIO0I11(_IO0I0O_1101I,_0I__OO0I_I00=____O101OOII_)
if _IO0I0O_1101I.getString()=Chr(0)
return invalid 
end if
return _0I__OO0I_I00(_IO0I0O_1101I.getString()) 
end function
function ___0I_____1O_(__1OIIO_O_I1O,_OI0OI0_OO111,_11OIIO1_OI1_,_11IO11I_1010,_0I111I11_O_1,_OIO1O__0II1I=____O101OOII_)
DEFAULT_REQUEST_TIMEOUT=5000
if _0I111I11_O_1.data.options=invalid
options={}
else 
options=_0I111I11_O_1.data.options
end if
requestIssued=(1=2)
if _OI0OI0_OO111=(Chr(&H47)+Chr(69)+Chr(84))
requestIssued=__1OIIO_O_I1O.AsyncGetToString()
else if _OI0OI0_OO111=(Chr(&H50)+Chr(&H4f)+Chr(&H53)+Chr(&H54))
requestIssued=__1OIIO_O_I1O.AsyncPostFromString(FormatJSON(options))
end if
if not requestIssued
_11IO11I_1010({error:(Chr(85)+Chr(&H6e)+Chr(107)+Chr(110)+Chr(&H6f)+Chr(&H77)+Chr(&H6e)+Chr(&H20)+Chr(&H63)+Chr(108)+Chr(105)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H20)+Chr(101)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(114))},418,_0I111I11_O_1)
__1OIIO_O_I1O.asyncCancel()
return invalid 
end if
msg=wait(DEFAULT_REQUEST_TIMEOUT,__1OIIO_O_I1O.GetMessagePort())
msgType=type(msg)
if msgType=invalid
_11IO11I_1010({error:(Chr(&H54)+Chr(&H69)+Chr(109)+Chr(&H65)+Chr(&H6f)+Chr(&H75)+Chr(&H74)+Chr(&H20)+Chr(&H65)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114))},504,_0I111I11_O_1)
__1OIIO_O_I1O.asyncCancel()
return invalid 
end if
if msgType=(Chr(&H72)+Chr(111)+Chr(&H55)+Chr(114)+Chr(&H6c)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=__1OIIO_O_I1O.getIdentity()
if responseCode=200 or responseCode=204
result=__1I_0OIO0I11(msg,_OIO1O__0II1I)
_11OIIO1_OI1_(result,responseCode,_0I111I11_O_1)
else 
_11IO11I_1010({error:msg.getFailureReason()},responseCode,_0I111I11_O_1)
end if
__1OIIO_O_I1O.asyncCancel()
end if
end if
end function
