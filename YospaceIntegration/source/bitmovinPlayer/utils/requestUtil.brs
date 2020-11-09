function _10I__0__1II1(_II0_0I0_OOII,_OI1O_O0O10IO=CreateObject((Chr(114)+Chr(&H6f)+Chr(77)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(80)+Chr(111)+Chr(114)+Chr(&H74))))
request=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(85)+Chr(114)+Chr(&H6c)+Chr(84)+Chr(&H72)+Chr(&H61)+Chr(&H6e)+Chr(&H73)+Chr(&H66)+Chr(&H65)+Chr(114)))
request.SetCertificatesFile((Chr(&H63)+Chr(&H6f)+Chr(&H6d)+Chr(109)+Chr(&H6f)+Chr(110)+Chr(58)+Chr(47)+Chr(99)+Chr(101)+Chr(&H72)+Chr(&H74)+Chr(115)+Chr(47)+Chr(&H63)+Chr(97)+Chr(&H2d)+Chr(98)+Chr(117)+Chr(&H6e)+Chr(100)+Chr(108)+Chr(&H65)+Chr(46)+Chr(&H63)+Chr(114)+Chr(116)))
request.SetUrl(_II0_0I0_OOII)
request.AddHeader((Chr(&H43)+Chr(111)+Chr(110)+Chr(116)+Chr(101)+Chr(110)+Chr(116)+Chr(&H2d)+Chr(84)+Chr(121)+Chr(112)+Chr(101)),(Chr(97)+Chr(112)+Chr(&H70)+Chr(&H6c)+Chr(105)+Chr(&H63)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H2f)+Chr(106)+Chr(&H73)+Chr(&H6f)+Chr(&H6e)))
request.SetPort(_OI1O_O0O10IO)
return request 
end function
function _00_O100IOO1_(_O10I__II_0_1,_O_I_O__01110=_1IO0100I1O11)
if _O10I__II_0_1.getString()=Chr(0)
return invalid 
end if
return _O_I_O__01110(_O10I__II_0_1.getString()) 
end function
function _1011_IOO_I00(__0I0I1_0I0_O,_OOOI0I0_0I_O,_1_OI10_IO11_,__1111__00_II,___IIO_1_O_1_,_0111_0_OIOOO=_1IO0100I1O11)
DEFAULT_REQUEST_TIMEOUT=5000
if ___IIO_1_O_1_.data.options=invalid
options={}
else 
options=___IIO_1_O_1_.data.options
end if
requestIssued=(1=2)
if _OOOI0I0_0I_O=(Chr(&H47)+Chr(69)+Chr(&H54))
requestIssued=__0I0I1_0I0_O.AsyncGetToString()
else if _OOOI0I0_0I_O=(Chr(80)+Chr(79)+Chr(&H53)+Chr(84))
requestIssued=__0I0I1_0I0_O.AsyncPostFromString(FormatJSON(options))
end if
if not requestIssued
__1111__00_II({error:(Chr(85)+Chr(110)+Chr(107)+Chr(110)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(&H20)+Chr(99)+Chr(&H6c)+Chr(&H69)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H20)+Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72))},418,___IIO_1_O_1_)
__0I0I1_0I0_O.asyncCancel()
return invalid 
end if
msg=wait(DEFAULT_REQUEST_TIMEOUT,__0I0I1_0I0_O.GetMessagePort())
msgType=type(msg)
if msgType=invalid
__1111__00_II({error:(Chr(84)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(111)+Chr(117)+Chr(116)+Chr(32)+Chr(101)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114))},504,___IIO_1_O_1_)
__0I0I1_0I0_O.asyncCancel()
return invalid 
end if
if msgType=(Chr(114)+Chr(111)+Chr(&H55)+Chr(&H72)+Chr(108)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=__0I0I1_0I0_O.getIdentity()
if responseCode=200 or responseCode=204
result=_00_O100IOO1_(msg,_0111_0_OIOOO)
_1_OI10_IO11_(result,responseCode,___IIO_1_O_1_)
else 
__1111__00_II({error:msg.getFailureReason()},responseCode,___IIO_1_O_1_)
end if
__0I0I1_0I0_O.asyncCancel()
end if
end if
end function
