function _OOII0I_1001O(_OII1I0_11_0O)
this={}
this[(Chr(95)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(83)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H73))]=_OII1I0_11_0O
this[(Chr(95)+Chr(&H73)+Chr(101)+Chr(101)+Chr(110)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(&H6e)+Chr(&H67))]=(1=2)
this[(Chr(95)+Chr(&H69)+Chr(&H73)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(105)+Chr(&H6e)+Chr(&H67))]=(1=2)
this[(Chr(95)+Chr(114)+Chr(101)+Chr(115)+Chr(101)+Chr(&H74))]=function()
m._seenPlaying=(1=2)
m._isStalling=(1=2)
end function
this[(Chr(105)+Chr(115)+Chr(&H50)+Chr(114)+Chr(&H65)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(83)+Chr(116)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(&H49)+Chr(&H6e)+Chr(80)+Chr(&H72)+Chr(111)+Chr(&H67)+Chr(114)+Chr(101)+Chr(115)+Chr(115))]=function()
return m._isStalling and not m._seenPlaying 
end function
this[(Chr(115)+Chr(&H65)+Chr(116)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(83)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(117)+Chr(&H73))]=function(__10_OI1II_1_)
m._isStalling=(__10_OI1II_1_=m._BitmovinPlayerStates.STALLING)
if __10_OI1II_1_=m._BitmovinPlayerStates.PLAYING
m._seenPlaying=(1=1)
else if __10_OI1II_1_=m._BitmovinPlayerStates.FINISHED
m._reset()
end if
end function
return this 
end function
