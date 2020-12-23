function __1_O10I0O_I0(___0I_I1I_O_O)
this={}
this[(Chr(&H5f)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(114)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(115))]=___0I_I1I_O_O
this[(Chr(95)+Chr(115)+Chr(&H65)+Chr(101)+Chr(110)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(105)+Chr(&H6e)+Chr(103))]=(1=2)
this[(Chr(&H5f)+Chr(105)+Chr(115)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(105)+Chr(&H6e)+Chr(&H67))]=(1=2)
this[(Chr(95)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H65)+Chr(116))]=function()
m._seenPlaying=(1=2)
m._isStalling=(1=2)
end function
this[(Chr(&H69)+Chr(&H73)+Chr(&H50)+Chr(114)+Chr(&H65)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(108)+Chr(108)+Chr(105)+Chr(110)+Chr(&H67)+Chr(73)+Chr(110)+Chr(&H50)+Chr(&H72)+Chr(111)+Chr(&H67)+Chr(114)+Chr(101)+Chr(&H73)+Chr(&H73))]=function()
return m._isStalling and not m._seenPlaying 
end function
this[(Chr(115)+Chr(101)+Chr(116)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(116)+Chr(97)+Chr(&H74)+Chr(117)+Chr(115))]=function(___III00OO_II)
m._isStalling=(___III00OO_II=m._BitmovinPlayerStates.STALLING)
if ___III00OO_II=m._BitmovinPlayerStates.PLAYING
m._seenPlaying=(1=1)
else if ___III00OO_II=m._BitmovinPlayerStates.FINISHED
m._reset()
end if
end function
return this 
end function
