function _IO_O10O__0IO(_0OI100011_II)
this={}
this[(Chr(&H5f)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)+Chr(115))]=_0OI100011_II
this[(Chr(95)+Chr(115)+Chr(101)+Chr(101)+Chr(&H6e)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(&H67))]=(1=2)
this[(Chr(&H5f)+Chr(105)+Chr(115)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(105)+Chr(110)+Chr(&H67))]=(1=2)
this[(Chr(95)+Chr(114)+Chr(101)+Chr(115)+Chr(101)+Chr(&H74))]=function()
m._seenPlaying=(1=2)
m._isStalling=(1=2)
end function
this[(Chr(105)+Chr(&H73)+Chr(80)+Chr(&H72)+Chr(&H65)+Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(98)+Chr(97)+Chr(99)+Chr(&H6b)+Chr(83)+Chr(116)+Chr(97)+Chr(108)+Chr(108)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(73)+Chr(&H6e)+Chr(&H50)+Chr(114)+Chr(&H6f)+Chr(&H67)+Chr(&H72)+Chr(101)+Chr(115)+Chr(115))]=function()
return m._isStalling and not m._seenPlaying 
end function
this[(Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(108)+Chr(108)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(83)+Chr(116)+Chr(97)+Chr(116)+Chr(&H75)+Chr(&H73))]=function(_OO_1___01OO0)
m._isStalling=(_OO_1___01OO0=m._BitmovinPlayerStates.STALLING)
if _OO_1___01OO0=m._BitmovinPlayerStates.PLAYING
m._seenPlaying=(1=1)
else if _OO_1___01OO0=m._BitmovinPlayerStates.FINISHED
m._reset()
end if
end function
return this 
end function
