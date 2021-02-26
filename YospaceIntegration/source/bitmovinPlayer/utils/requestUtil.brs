function _11I00IO1OI10(_1O0II1_1_10O,_1OO_1___I10I=CreateObject((Chr(114)+Chr(&H6f)+Chr(77)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H61)+Chr(103)+Chr(101)+Chr(&H50)+Chr(&H6f)+Chr(114)+Chr(&H74))))
request=CreateObject((Chr(114)+Chr(111)+Chr(85)+Chr(&H72)+Chr(108)+Chr(&H54)+Chr(&H72)+Chr(97)+Chr(110)+Chr(115)+Chr(102)+Chr(101)+Chr(&H72)))
request.SetCertificatesFile((Chr(&H63)+Chr(&H6f)+Chr(&H6d)+Chr(&H6d)+Chr(&H6f)+Chr(110)+Chr(&H3a)+Chr(47)+Chr(&H63)+Chr(101)+Chr(&H72)+Chr(116)+Chr(115)+Chr(&H2f)+Chr(&H63)+Chr(97)+Chr(&H2d)+Chr(98)+Chr(117)+Chr(&H6e)+Chr(&H64)+Chr(&H6c)+Chr(&H65)+Chr(46)+Chr(99)+Chr(114)+Chr(116)))
request.SetUrl(_1O0II1_1_10O)
request.AddHeader((Chr(67)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(45)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(&H65)),(Chr(&H61)+Chr(112)+Chr(&H70)+Chr(&H6c)+Chr(105)+Chr(&H63)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H2f)+Chr(&H6a)+Chr(115)+Chr(&H6f)+Chr(&H6e)))
request.SetPort(_1OO_1___I10I)
return request 
end function
function _O10O_1O11I1_(_1IO0I_0011OI,__011OI10_OII=_0OO1OIOI_1O1)
if _1IO0I_0011OI.getString()=Chr(0)
return invalid 
end if
return __011OI10_OII(_1IO0I_0011OI.getString()) 
end function
function _1001IIOO_O_O(_0_0O_0101_1_,_01O0OO1O0_I_,_IO_1I_OO_1I0,_OOI__01100__,_0OI_O0___I00,_IIO0110IOI10=_0OO1OIOI_1O1)
DEFAULT_REQUEST_TIMEOUT=5000
if _0OI_O0___I00.data.options=invalid
options={}
else 
options=_0OI_O0___I00.data.options
end if
requestIssued=(1=2)
if _01O0OO1O0_I_=(Chr(71)+Chr(69)+Chr(&H54))
requestIssued=_0_0O_0101_1_.AsyncGetToString()
else if _01O0OO1O0_I_=(Chr(80)+Chr(&H4f)+Chr(&H53)+Chr(&H54))
requestIssued=_0_0O_0101_1_.AsyncPostFromString(FormatJSON(options))
end if
if not requestIssued
_OOI__01100__({error:(Chr(85)+Chr(110)+Chr(107)+Chr(&H6e)+Chr(&H6f)+Chr(&H77)+Chr(&H6e)+Chr(&H20)+Chr(99)+Chr(108)+Chr(&H69)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H20)+Chr(&H65)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72))},418,_0OI_O0___I00)
_0_0O_0101_1_.asyncCancel()
return invalid 
end if
msg=wait(DEFAULT_REQUEST_TIMEOUT,_0_0O_0101_1_.GetMessagePort())
msgType=type(msg)
if msgType=invalid
_OOI__01100__({error:(Chr(&H54)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(111)+Chr(&H75)+Chr(&H74)+Chr(32)+Chr(&H65)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72))},504,_0OI_O0___I00)
_0_0O_0101_1_.asyncCancel()
return invalid 
end if
if msgType=(Chr(&H72)+Chr(111)+Chr(85)+Chr(114)+Chr(&H6c)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=_0_0O_0101_1_.getIdentity()
if responseCode=200 or responseCode=204
result=_O10O_1O11I1_(msg,_IIO0110IOI10)
_IO_1I_OO_1I0(result,responseCode,_0OI_O0___I00)
else 
_OOI__01100__({error:msg.getFailureReason()},responseCode,_0OI_O0___I00)
end if
_0_0O_0101_1_.asyncCancel()
end if
end if
end function
