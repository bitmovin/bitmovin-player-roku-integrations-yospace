function _010III1O_I1I(_O_II1_10I01I)
this={}
this[(Chr(95)+Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H73))]=_O_II1_10I01I
this[(Chr(95)+Chr(115)+Chr(&H65)+Chr(101)+Chr(&H6e)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(&H67))]=(1=2)
this[(Chr(95)+Chr(105)+Chr(&H73)+Chr(&H53)+Chr(116)+Chr(97)+Chr(&H6c)+Chr(108)+Chr(&H69)+Chr(&H6e)+Chr(&H67))]=(1=2)
this[(Chr(95)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H65)+Chr(&H74))]=function()
m._seenPlaying=(1=2)
m._isStalling=(1=2)
end function
this[(Chr(105)+Chr(115)+Chr(&H50)+Chr(114)+Chr(101)+Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(98)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(108)+Chr(&H6c)+Chr(105)+Chr(110)+Chr(103)+Chr(&H49)+Chr(&H6e)+Chr(80)+Chr(114)+Chr(111)+Chr(&H67)+Chr(114)+Chr(&H65)+Chr(115)+Chr(115))]=function()
return m._isStalling and not m._seenPlaying 
end function
this[(Chr(115)+Chr(101)+Chr(116)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(105)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H75)+Chr(&H73))]=function(_01OI1_O000O1)
m._isStalling=(_01OI1_O000O1=m._BitmovinPlayerStates.STALLING)
if _01OI1_O000O1=m._BitmovinPlayerStates.PLAYING
m._seenPlaying=(1=1)
else if _01OI1_O000O1=m._BitmovinPlayerStates.FINISHED
m._reset()
end if
end function
return this 
end function
