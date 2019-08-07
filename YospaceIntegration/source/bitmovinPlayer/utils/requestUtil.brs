function _0I_I_0OIO0_0(__010OI0O00O_,_0OIOIOII_0OI=CreateObject((Chr(&H72)+Chr(111)+Chr(77)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H61)+Chr(&H67)+Chr(101)+Chr(80)+Chr(&H6f)+Chr(114)+Chr(&H74))))
request=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(85)+Chr(114)+Chr(108)+Chr(84)+Chr(&H72)+Chr(&H61)+Chr(110)+Chr(115)+Chr(&H66)+Chr(101)+Chr(&H72)))
request.SetCertificatesFile((Chr(99)+Chr(&H6f)+Chr(&H6d)+Chr(&H6d)+Chr(111)+Chr(&H6e)+Chr(58)+Chr(47)+Chr(99)+Chr(&H65)+Chr(114)+Chr(&H74)+Chr(&H73)+Chr(47)+Chr(&H63)+Chr(&H61)+Chr(45)+Chr(98)+Chr(&H75)+Chr(110)+Chr(&H64)+Chr(&H6c)+Chr(101)+Chr(&H2e)+Chr(99)+Chr(114)+Chr(&H74)))
request.SetUrl(__010OI0O00O_)
request.AddHeader((Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(110)+Chr(&H74)+Chr(45)+Chr(&H54)+Chr(121)+Chr(112)+Chr(101)),(Chr(&H61)+Chr(112)+Chr(&H70)+Chr(&H6c)+Chr(&H69)+Chr(99)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(47)+Chr(&H6a)+Chr(115)+Chr(&H6f)+Chr(110)))
request.SetPort(_0OIOIOII_0OI)
return request 
end function
function __0OOI00IO___(_O00O010__0I0,_1__1O_10__OO=_I_0II0I0_O1I)
if _O00O010__0I0.getString()=Chr(0)
return invalid 
end if
json=ParseJSON(_O00O010__0I0.getString())
return _1__1O_10__OO(json) 
end function
function _1_I01O1O01_O(_IO_I0OO00O0_,_10_11I1_O_O1,_1I0OO_011I11,__IIII11_I_1I,_I_01O_I1____={},__1_O10IIO010=_I_0II0I0_O1I)
DEFAULT_REQUEST_TIMEOUT=5000
if _10_11I1_O_O1=(Chr(&H47)+Chr(69)+Chr(&H54))
_IO_I0OO00O0_.AsyncGetToString()
else if _10_11I1_O_O1=(Chr(&H50)+Chr(&H4f)+Chr(83)+Chr(84))
_IO_I0OO00O0_.AsyncPostFromString(FormatJSON(_I_01O_I1____))
end if
while(1=1)
msg=wait(DEFAULT_REQUEST_TIMEOUT,_IO_I0OO00O0_.GetMessagePort())
msgType=type(msg)
if msgType=(Chr(114)+Chr(111)+Chr(85)+Chr(114)+Chr(108)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=_IO_I0OO00O0_.getIdentity()
if responseCode=200 or responseCode=204
result=__0OOI00IO___(msg,__1_O10IIO010)
_1I0OO_011I11(result,responseCode)
exit while
else 
__IIII11_I_1I({error:msg.getFailureReason()},responseCode)
exit while
end if
end if
end if
end while
end function
