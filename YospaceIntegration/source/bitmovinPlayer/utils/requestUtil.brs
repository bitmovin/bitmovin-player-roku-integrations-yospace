function _0_0_11_01O1I(_IO_O0IO_0II_,_011O_OO_O1_0=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H4d)+Chr(101)+Chr(&H73)+Chr(115)+Chr(&H61)+Chr(103)+Chr(101)+Chr(80)+Chr(111)+Chr(&H72)+Chr(&H74))))
request=CreateObject((Chr(&H72)+Chr(111)+Chr(85)+Chr(&H72)+Chr(&H6c)+Chr(84)+Chr(114)+Chr(97)+Chr(&H6e)+Chr(&H73)+Chr(102)+Chr(101)+Chr(114)))
request.SetCertificatesFile((Chr(&H63)+Chr(&H6f)+Chr(109)+Chr(&H6d)+Chr(&H6f)+Chr(&H6e)+Chr(&H3a)+Chr(&H2f)+Chr(&H63)+Chr(101)+Chr(114)+Chr(116)+Chr(115)+Chr(47)+Chr(&H63)+Chr(97)+Chr(45)+Chr(&H62)+Chr(117)+Chr(110)+Chr(&H64)+Chr(108)+Chr(101)+Chr(46)+Chr(99)+Chr(114)+Chr(116)))
request.SetUrl(_IO_O0IO_0II_)
request.AddHeader((Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(45)+Chr(&H54)+Chr(&H79)+Chr(112)+Chr(&H65)),(Chr(&H61)+Chr(112)+Chr(&H70)+Chr(&H6c)+Chr(&H69)+Chr(&H63)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H2f)+Chr(&H6a)+Chr(115)+Chr(&H6f)+Chr(&H6e)))
request.SetPort(_011O_OO_O1_0)
return request 
end function
function _OI00_01II_1O(_1I_O0II00_IO,_I___I0IO_11O=_O_IOO1OOIO0O)
if _1I_O0II00_IO.getString()=Chr(0)
return invalid 
end if
return _I___I0IO_11O(_1I_O0II00_IO.getString()) 
end function
function __IIO01IOOI01(_0IIII0O1I_0O,_0OO011O00_IO,_01OIO00II0O1,_0O001___0OI_,__00I1II1I1_O={},__101_OOO10IO=_O_IOO1OOIO0O)
DEFAULT_REQUEST_TIMEOUT=5000
if _0OO011O00_IO=(Chr(71)+Chr(69)+Chr(&H54))
_0IIII0O1I_0O.AsyncGetToString()
else if _0OO011O00_IO=(Chr(80)+Chr(79)+Chr(83)+Chr(&H54))
_0IIII0O1I_0O.AsyncPostFromString(FormatJSON(__00I1II1I1_O))
end if
while(1=1)
msg=wait(DEFAULT_REQUEST_TIMEOUT,_0IIII0O1I_0O.GetMessagePort())
msgType=type(msg)
if msgType=(Chr(114)+Chr(111)+Chr(&H55)+Chr(&H72)+Chr(108)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116))
event=msg.getSourceIdentity()
responseCode=msg.GetResponseCode()
if event=_0IIII0O1I_0O.getIdentity()
if responseCode=200 or responseCode=204
result=_OI00_01II_1O(msg,__101_OOO10IO)
_01OIO00II0O1(result,responseCode)
exit while
else 
_0O001___0OI_({error:msg.getFailureReason()},responseCode)
exit while
end if
end if
end if
end while
end function
