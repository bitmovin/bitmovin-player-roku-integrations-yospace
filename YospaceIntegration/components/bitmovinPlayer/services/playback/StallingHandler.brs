function __100I11O1_0O(_0011I1_0_OO0,_O_010_00OO11)
this={}
this[(Chr(95)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72)+Chr(83)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(115))]=_0011I1_0_OO0
this[(Chr(95)+Chr(&H52)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)+Chr(&H4e)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H76)+Chr(101)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(97)+Chr(116)+Chr(101)+Chr(&H73))]=_O_010_00OO11
this[(Chr(&H5f)+Chr(&H73)+Chr(&H65)+Chr(&H65)+Chr(110)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(103))]=(1=2)
this[(Chr(95)+Chr(&H69)+Chr(&H73)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(&H69)+Chr(&H6e)+Chr(103))]=(1=2)
this[(Chr(95)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(101)+Chr(&H74))]=function()
m._seenPlaying=(1=2)
m._isStalling=(1=2)
end function
this[(Chr(&H69)+Chr(&H73)+Chr(&H50)+Chr(114)+Chr(101)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(107)+Chr(83)+Chr(&H74)+Chr(97)+Chr(108)+Chr(108)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(&H49)+Chr(110)+Chr(&H50)+Chr(&H72)+Chr(&H6f)+Chr(103)+Chr(114)+Chr(&H65)+Chr(115)+Chr(&H73))]=function()
return m._isStalling and not m._seenPlaying 
end function
this[(Chr(115)+Chr(&H65)+Chr(116)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(116)+Chr(97)+Chr(116)+Chr(117)+Chr(115))]=function(_OII1_I0_I_11)
m._isStalling=(_OII1_I0_I_11=m._BitmovinPlayerStates.STALLING)
if _OII1_I0_I_11=m._BitmovinPlayerStates.PLAYING
m._seenPlaying=(1=1)
else if _OII1_I0_I_11=m._BitmovinPlayerStates.FINISHED or _OII1_I0_I_11=m._RokuNativePlayerStates.STOPPED
m._reset()
end if
end function
return this 
end function
