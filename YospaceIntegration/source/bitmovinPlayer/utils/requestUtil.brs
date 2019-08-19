function _O0I0__1_010I(_IOO0O_I0O_0O,_01_I_0111O_1=CreateObject((Chr(114)+Chr(111)+Chr(77)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(97)+Chr(&H67)+Chr(101)+Chr(80)+Chr(&H6f)+Chr(&H72)+Chr(&H74))))
request=CreateObject((Chr(114)+Chr(&H6f)+Chr(85)+Chr(&H72)+Chr(108)+Chr(&H54)+Chr(&H72)+Chr(&H61)+Chr(&H6e)+Chr(115)+Chr(&H66)+Chr(101)+Chr(&H72)))
request.SetCertificatesFile((Chr(99)+Chr(111)+Chr(109)+Chr(&H6d)+Chr(111)+Chr(&H6e)+Chr(&H3a)+Chr(&H2f)+Chr(&H63)+Chr(101)+Chr(&H72)+Chr(116)+Chr(115)+Chr(47)+Chr(99)+Chr(97)+Chr(&H2d)+Chr(&H62)+Chr(117)+Chr(&H6e)+Chr(&H64)+Chr(&H6c)+Chr(&H65)+Chr(46)+Chr(99)+Chr(&H72)+Chr(116)))
request.SetUrl(_IOO0O_I0O_0O)
request.AddHeader((Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(101)+Chr(110)+Chr(116)+Chr(45)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(&H65)),(Chr(97)+Chr(112)+Chr(&H70)+Chr(108)+Chr(&H69)+Chr(99)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H2f)+Chr(&H6a)+Chr(&H73)+Chr(&H6f)+Chr(110)))
request.SetPort(_01_I_0111O_1)
return request 
end function
function _01O10__I1I_O(__O_O1OII1OIO,_O0_01_IO10OI=__000I01OOIIO)
if __O_O1OII1OIO.getString()=Chr(0)
return invalid 
end if
json=ParseJSON(__O_O1OII1OIO.getString())
return _O0_01_IO10OI(json) 
end function
function _11OO1OIO0II0(_I0IO_O10OO0_,_O11O_0_O0IO_,_01_1_OIOII_0,_1I0_10_I___O,_I1OOI1_111O_={},_I_OO0_II____=__000I01OOIIO)
DEFAULT_REQUEST_TIMEOUT=5000
if _O11O_0_O0IO_=(Chr(&H47)+Chr(&H45)+Chr(84))
_I0IO_O10OO0_.AsyncGetToString()
else if _O11O_0_O0IO_=(Chr(&H50)+Chr(79)+Chr(83)+Chr(84))
_I0IO_O10OO0_.AsyncPostFromString(FormatJSON(_I1OOI1_111O_))
end if
while(1=1)
msg=wait(DEFAULT_REQUEST_TIMEOUT,_I0IO_O10OO0_.GetMessagePort())
msgType=type(msg)
if msgType=(Chr(&H72)+Chr(&H6f)+Chr(&H55)+Chr(114)+Chr(&H6c)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=_I0IO_O10OO0_.getIdentity()
if responseCode=200 or responseCode=204
result=_01O10__I1I_O(msg,_I_OO0_II____)
_01_1_OIOII_0(result,responseCode)
exit while
else 
_1I0_10_I___O({error:msg.getFailureReason()},responseCode)
exit while
end if
end if
end if
end while
end function
