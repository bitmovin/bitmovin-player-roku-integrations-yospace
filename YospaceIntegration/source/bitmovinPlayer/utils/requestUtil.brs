function _00OI0_III1_O(_I__1OO001I_O,_0O010001I01O=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H4d)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(80)+Chr(&H6f)+Chr(&H72)+Chr(116))))
request=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(85)+Chr(&H72)+Chr(&H6c)+Chr(84)+Chr(114)+Chr(&H61)+Chr(&H6e)+Chr(115)+Chr(&H66)+Chr(&H65)+Chr(&H72)))
request.SetCertificatesFile((Chr(99)+Chr(111)+Chr(&H6d)+Chr(&H6d)+Chr(111)+Chr(&H6e)+Chr(&H3a)+Chr(47)+Chr(&H63)+Chr(&H65)+Chr(&H72)+Chr(116)+Chr(&H73)+Chr(&H2f)+Chr(&H63)+Chr(&H61)+Chr(&H2d)+Chr(98)+Chr(117)+Chr(110)+Chr(&H64)+Chr(108)+Chr(&H65)+Chr(&H2e)+Chr(99)+Chr(114)+Chr(&H74)))
request.SetUrl(_I__1OO001I_O)
request.AddHeader((Chr(&H43)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(45)+Chr(84)+Chr(&H79)+Chr(112)+Chr(101)),(Chr(97)+Chr(112)+Chr(112)+Chr(108)+Chr(105)+Chr(99)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H2f)+Chr(&H6a)+Chr(115)+Chr(&H6f)+Chr(110)))
request.SetPort(_0O010001I01O)
return request 
end function
function _IO_01O0IO0_0(_01III_1O1001,_III1II_10OO_=_I_I0000O_I11)
if _01III_1O1001.getString()=Chr(0)
return invalid 
end if
json=ParseJSON(_01III_1O1001.getString())
return _III1II_10OO_(json) 
end function
function _1IOII1_10OIO(_IIOI_OOIOI_1,__1_I_I__O1I1,_1I11OIII1O_1,_OI_0OOII0_0I,_111_O0O_0I_O={},_I00O0_1O_I00=_I_I0000O_I11)
DEFAULT_REQUEST_TIMEOUT=5000
if __1_I_I__O1I1=(Chr(71)+Chr(69)+Chr(&H54))
_IIOI_OOIOI_1.AsyncGetToString()
else if __1_I_I__O1I1=(Chr(80)+Chr(&H4f)+Chr(&H53)+Chr(84))
_IIOI_OOIOI_1.AsyncPostFromString(FormatJSON(_111_O0O_0I_O))
end if
while(1=1)
msg=wait(DEFAULT_REQUEST_TIMEOUT,_IIOI_OOIOI_1.GetMessagePort())
msgType=type(msg)
if msgType=(Chr(114)+Chr(&H6f)+Chr(&H55)+Chr(&H72)+Chr(108)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=_IIOI_OOIOI_1.getIdentity()
if responseCode=200 or responseCode=204
result=_IO_01O0IO0_0(msg,_I00O0_1O_I00)
_1I11OIII1O_1(result,responseCode)
exit while
else 
_OI_0OOII0_0I({error:msg.getFailureReason()},responseCode)
exit while
end if
end if
end if
end while
end function
