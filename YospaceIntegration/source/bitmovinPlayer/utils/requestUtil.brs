function _I0I1O_I_0I00(__I0I00IOI11O,_IO110_1O11_I=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H4d)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(80)+Chr(111)+Chr(&H72)+Chr(116))))
request=CreateObject((Chr(&H72)+Chr(111)+Chr(85)+Chr(114)+Chr(&H6c)+Chr(84)+Chr(&H72)+Chr(&H61)+Chr(&H6e)+Chr(115)+Chr(&H66)+Chr(&H65)+Chr(&H72)))
request.SetCertificatesFile((Chr(&H63)+Chr(&H6f)+Chr(&H6d)+Chr(&H6d)+Chr(&H6f)+Chr(110)+Chr(&H3a)+Chr(&H2f)+Chr(&H63)+Chr(&H65)+Chr(&H72)+Chr(&H74)+Chr(115)+Chr(&H2f)+Chr(99)+Chr(97)+Chr(45)+Chr(98)+Chr(117)+Chr(&H6e)+Chr(100)+Chr(&H6c)+Chr(&H65)+Chr(46)+Chr(&H63)+Chr(114)+Chr(116)))
request.SetUrl(__I0I00IOI11O)
request.AddHeader((Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(45)+Chr(&H54)+Chr(121)+Chr(&H70)+Chr(101)),(Chr(97)+Chr(&H70)+Chr(112)+Chr(&H6c)+Chr(105)+Chr(&H63)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(&H2f)+Chr(106)+Chr(&H73)+Chr(&H6f)+Chr(&H6e)))
request.SetPort(_IO110_1O11_I)
return request 
end function
function _01O01_O1I_01(_O_O1OI00111_,_I11_1I0_I0IO=_O__OII0I_I1_)
if _O_O1OI00111_.getString()=Chr(0)
return invalid 
end if
json=ParseJSON(_O_O1OI00111_.getString())
return _I11_1I0_I0IO(json) 
end function
function _1I000IIO_01_(__0111O_1I0O1,_OO_1_01_1OI0,_O0I11II001__,_110_01II0OI1,_II00O01O01O0={},_II_O1_0OO001=_O__OII0I_I1_)
DEFAULT_REQUEST_TIMEOUT=5000
if _OO_1_01_1OI0=(Chr(71)+Chr(&H45)+Chr(84))
__0111O_1I0O1.AsyncGetToString()
else if _OO_1_01_1OI0=(Chr(80)+Chr(79)+Chr(&H53)+Chr(&H54))
__0111O_1I0O1.AsyncPostFromString(FormatJSON(_II00O01O01O0))
end if
while(1=1)
msg=wait(DEFAULT_REQUEST_TIMEOUT,__0111O_1I0O1.GetMessagePort())
msgType=type(msg)
if msgType=(Chr(114)+Chr(111)+Chr(&H55)+Chr(114)+Chr(&H6c)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=__0111O_1I0O1.getIdentity()
if responseCode=200 or responseCode=204
result=_01O01_O1I_01(msg,_II_O1_0OO001)
_O0I11II001__(result,responseCode)
exit while
else 
_110_01II0OI1({error:msg.getFailureReason()},responseCode)
exit while
end if
end if
end if
end while
end function
