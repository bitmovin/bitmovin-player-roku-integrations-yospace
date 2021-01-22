function _OIIOI_001OII(_0O_I0O0100IO,_I01OI_01O_01=CreateObject((Chr(114)+Chr(111)+Chr(&H4d)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H61)+Chr(&H67)+Chr(101)+Chr(80)+Chr(&H6f)+Chr(114)+Chr(116))))
request=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H55)+Chr(114)+Chr(&H6c)+Chr(84)+Chr(&H72)+Chr(97)+Chr(&H6e)+Chr(&H73)+Chr(&H66)+Chr(101)+Chr(114)))
request.SetCertificatesFile((Chr(&H63)+Chr(111)+Chr(109)+Chr(109)+Chr(&H6f)+Chr(110)+Chr(58)+Chr(&H2f)+Chr(&H63)+Chr(&H65)+Chr(&H72)+Chr(&H74)+Chr(115)+Chr(47)+Chr(&H63)+Chr(&H61)+Chr(&H2d)+Chr(98)+Chr(&H75)+Chr(&H6e)+Chr(100)+Chr(108)+Chr(&H65)+Chr(46)+Chr(99)+Chr(&H72)+Chr(&H74)))
request.SetUrl(_0O_I0O0100IO)
request.AddHeader((Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(110)+Chr(116)+Chr(45)+Chr(84)+Chr(121)+Chr(&H70)+Chr(&H65)),(Chr(97)+Chr(&H70)+Chr(&H70)+Chr(&H6c)+Chr(105)+Chr(99)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H2f)+Chr(&H6a)+Chr(115)+Chr(&H6f)+Chr(&H6e)))
request.SetPort(_I01OI_01O_01)
return request 
end function
function _1_1OI00_0__1(__II0OIO1OI_I,_I1I0IO0I_01O=_01I0O_II1O__)
if __II0OIO1OI_I.getString()=Chr(0)
return invalid 
end if
return _I1I0IO0I_01O(__II0OIO1OI_I.getString()) 
end function
function _101O_I_I_1IO(___I_0O1OOOOI,_001O1O__1_I1,_01010I_O010O,_1II10OOO1_II,_O01_I00O_OO0,_O_10O1I11I0_=_01I0O_II1O__)
DEFAULT_REQUEST_TIMEOUT=5000
if _O01_I00O_OO0.data.options=invalid
options={}
else 
options=_O01_I00O_OO0.data.options
end if
requestIssued=(1=2)
if _001O1O__1_I1=(Chr(&H47)+Chr(69)+Chr(84))
requestIssued=___I_0O1OOOOI.AsyncGetToString()
else if _001O1O__1_I1=(Chr(80)+Chr(79)+Chr(83)+Chr(84))
requestIssued=___I_0O1OOOOI.AsyncPostFromString(FormatJSON(options))
end if
if not requestIssued
_1II10OOO1_II({error:(Chr(85)+Chr(&H6e)+Chr(&H6b)+Chr(&H6e)+Chr(&H6f)+Chr(&H77)+Chr(110)+Chr(&H20)+Chr(&H63)+Chr(&H6c)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H20)+Chr(&H65)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72))},418,_O01_I00O_OO0)
___I_0O1OOOOI.asyncCancel()
return invalid 
end if
msg=wait(DEFAULT_REQUEST_TIMEOUT,___I_0O1OOOOI.GetMessagePort())
msgType=type(msg)
if msgType=invalid
_1II10OOO1_II({error:(Chr(&H54)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(&H6f)+Chr(117)+Chr(116)+Chr(&H20)+Chr(101)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114))},504,_O01_I00O_OO0)
___I_0O1OOOOI.asyncCancel()
return invalid 
end if
if msgType=(Chr(114)+Chr(&H6f)+Chr(85)+Chr(114)+Chr(108)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=___I_0O1OOOOI.getIdentity()
if responseCode=200 or responseCode=204
result=_1_1OI00_0__1(msg,_O_10O1I11I0_)
_01010I_O010O(result,responseCode,_O01_I00O_OO0)
else 
_1II10OOO1_II({error:msg.getFailureReason()},responseCode,_O01_I00O_OO0)
end if
___I_0O1OOOOI.asyncCancel()
end if
end if
end function
