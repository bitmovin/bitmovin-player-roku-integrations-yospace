function _I01O11000O0_(_1IO_0__O0I0_,_1000I1O011I_=CreateObject((Chr(114)+Chr(111)+Chr(77)+Chr(101)+Chr(&H73)+Chr(115)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(&H50)+Chr(111)+Chr(114)+Chr(116))))
request=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H55)+Chr(&H72)+Chr(&H6c)+Chr(84)+Chr(&H72)+Chr(97)+Chr(&H6e)+Chr(&H73)+Chr(&H66)+Chr(&H65)+Chr(&H72)))
request.SetCertificatesFile((Chr(&H63)+Chr(&H6f)+Chr(109)+Chr(109)+Chr(&H6f)+Chr(&H6e)+Chr(&H3a)+Chr(47)+Chr(99)+Chr(101)+Chr(&H72)+Chr(&H74)+Chr(&H73)+Chr(&H2f)+Chr(99)+Chr(97)+Chr(45)+Chr(98)+Chr(&H75)+Chr(&H6e)+Chr(100)+Chr(108)+Chr(&H65)+Chr(46)+Chr(&H63)+Chr(114)+Chr(&H74)))
request.SetUrl(_1IO_0__O0I0_)
request.AddHeader((Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H2d)+Chr(&H54)+Chr(121)+Chr(112)+Chr(&H65)),(Chr(&H61)+Chr(112)+Chr(112)+Chr(&H6c)+Chr(&H69)+Chr(&H63)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(47)+Chr(106)+Chr(115)+Chr(111)+Chr(110)))
request.SetPort(_1000I1O011I_)
return request 
end function
function _0_II0IO1I_I0(_O111O0I0O0I1,_1OI1_O1I01_1=_O1O1O0I0_1II)
if _O111O0I0O0I1.getString()=Chr(0)
return invalid 
end if
return _1OI1_O1I01_1(_O111O0I0O0I1.getString()) 
end function
function _0III10O01II1(_OI_01IO0OI_1,_O_I__OOOI101,_II1I_011O_OI,_11_OIOI100II,__O0II1IO011I,_OI010IO_O001=_O1O1O0I0_1II)
DEFAULT_REQUEST_TIMEOUT=5000
if __O0II1IO011I.data.options=invalid
options={}
else 
options=__O0II1IO011I.data.options
end if
requestIssued=(1=2)
if _O_I__OOOI101=(Chr(71)+Chr(69)+Chr(84))
requestIssued=_OI_01IO0OI_1.AsyncGetToString()
else if _O_I__OOOI101=(Chr(80)+Chr(79)+Chr(&H53)+Chr(84))
requestIssued=_OI_01IO0OI_1.AsyncPostFromString(FormatJSON(options))
end if
if not requestIssued
_11_OIOI100II({error:(Chr(85)+Chr(&H6e)+Chr(&H6b)+Chr(&H6e)+Chr(111)+Chr(119)+Chr(&H6e)+Chr(&H20)+Chr(&H63)+Chr(108)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(32)+Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72))},418,__O0II1IO011I)
_OI_01IO0OI_1.asyncCancel()
return invalid 
end if
msg=wait(DEFAULT_REQUEST_TIMEOUT,_OI_01IO0OI_1.GetMessagePort())
msgType=type(msg)
if msgType=invalid
_11_OIOI100II({error:(Chr(84)+Chr(105)+Chr(109)+Chr(&H65)+Chr(111)+Chr(117)+Chr(&H74)+Chr(&H20)+Chr(101)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72))},504,__O0II1IO011I)
_OI_01IO0OI_1.asyncCancel()
return invalid 
end if
if msgType=(Chr(&H72)+Chr(111)+Chr(85)+Chr(&H72)+Chr(&H6c)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=_OI_01IO0OI_1.getIdentity()
if responseCode=200 or responseCode=204
result=_0_II0IO1I_I0(msg,_OI010IO_O001)
_II1I_011O_OI(result,responseCode,__O0II1IO011I)
else 
_11_OIOI100II({error:msg.getFailureReason()},responseCode,__O0II1IO011I)
end if
_OI_01IO0OI_1.asyncCancel()
end if
end if
end function
