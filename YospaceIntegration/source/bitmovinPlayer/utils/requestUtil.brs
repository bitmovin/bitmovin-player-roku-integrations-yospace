function _000OO__IO0O1(__0I010OI1I00,__OO1III_1O__=CreateObject((Chr(&H72)+Chr(111)+Chr(&H4d)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H61)+Chr(&H67)+Chr(101)+Chr(&H50)+Chr(&H6f)+Chr(&H72)+Chr(&H74))))
request=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H55)+Chr(114)+Chr(108)+Chr(84)+Chr(114)+Chr(97)+Chr(110)+Chr(115)+Chr(102)+Chr(&H65)+Chr(114)))
request.SetCertificatesFile((Chr(99)+Chr(&H6f)+Chr(109)+Chr(109)+Chr(111)+Chr(&H6e)+Chr(&H3a)+Chr(47)+Chr(99)+Chr(&H65)+Chr(&H72)+Chr(116)+Chr(115)+Chr(&H2f)+Chr(&H63)+Chr(97)+Chr(&H2d)+Chr(&H62)+Chr(117)+Chr(&H6e)+Chr(100)+Chr(108)+Chr(&H65)+Chr(46)+Chr(99)+Chr(&H72)+Chr(&H74)))
request.SetUrl(__0I010OI1I00)
request.AddHeader((Chr(67)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(45)+Chr(&H54)+Chr(&H79)+Chr(112)+Chr(101)),(Chr(&H61)+Chr(112)+Chr(&H70)+Chr(108)+Chr(105)+Chr(99)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H2f)+Chr(&H6a)+Chr(&H73)+Chr(&H6f)+Chr(110)))
request.SetPort(__OO1III_1O__)
return request 
end function
function _I101OI0O101O(_11OOII0_I11_,__000I1O_01O_=_0_IIO10O01O1)
if _11OOII0_I11_.getString()=Chr(0)
return invalid 
end if
return __000I1O_01O_(_11OOII0_I11_.getString()) 
end function
function __I_O1II01O1I(_OII001O_11O_,_0110O1I0I110,_0I0_OOOI0IIO,_O1I1I__OI1OO,_IO000O_I_101,___O0___0_1_1=_0_IIO10O01O1)
DEFAULT_REQUEST_TIMEOUT=5000
if _IO000O_I_101.data.options=invalid
options={}
else 
options=_IO000O_I_101.data.options
end if
requestIssued=(1=2)
if _0110O1I0I110=(Chr(71)+Chr(&H45)+Chr(84))
requestIssued=_OII001O_11O_.AsyncGetToString()
else if _0110O1I0I110=(Chr(&H50)+Chr(79)+Chr(&H53)+Chr(84))
requestIssued=_OII001O_11O_.AsyncPostFromString(FormatJSON(options))
end if
if not requestIssued
_O1I1I__OI1OO({error:(Chr(&H55)+Chr(110)+Chr(&H6b)+Chr(110)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(32)+Chr(&H63)+Chr(&H6c)+Chr(105)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(32)+Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114))},418,_IO000O_I_101)
_OII001O_11O_.asyncCancel()
return invalid 
end if
msg=wait(DEFAULT_REQUEST_TIMEOUT,_OII001O_11O_.GetMessagePort())
msgType=type(msg)
if msgType=invalid
_O1I1I__OI1OO({error:(Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(&H6f)+Chr(117)+Chr(&H74)+Chr(32)+Chr(101)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114))},504,_IO000O_I_101)
_OII001O_11O_.asyncCancel()
return invalid 
end if
if msgType=(Chr(&H72)+Chr(111)+Chr(85)+Chr(114)+Chr(&H6c)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(116))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=_OII001O_11O_.getIdentity()
if responseCode=200 or responseCode=204
result=_I101OI0O101O(msg,___O0___0_1_1)
_0I0_OOOI0IIO(result,responseCode,_IO000O_I_101)
else 
_O1I1I__OI1OO({error:msg.getFailureReason()},responseCode,_IO000O_I_101)
end if
_OII001O_11O_.asyncCancel()
end if
end if
end function
