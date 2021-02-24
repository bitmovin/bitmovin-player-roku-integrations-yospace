function _O__0_OO1O11O(_0_I_0IO1I_I1)
this={}
this[(Chr(&H5f)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101)+Chr(115))]=_0_I_0IO1I_I1
this[(Chr(&H5f)+Chr(&H73)+Chr(101)+Chr(&H65)+Chr(110)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(&H67))]=(1=2)
this[(Chr(95)+Chr(&H69)+Chr(&H73)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(108)+Chr(108)+Chr(&H69)+Chr(&H6e)+Chr(&H67))]=(1=2)
this[(Chr(&H5f)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(101)+Chr(&H74))]=function()
m._seenPlaying=(1=2)
m._isStalling=(1=2)
end function
this[(Chr(105)+Chr(115)+Chr(&H50)+Chr(114)+Chr(101)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(98)+Chr(97)+Chr(&H63)+Chr(&H6b)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(73)+Chr(&H6e)+Chr(80)+Chr(&H72)+Chr(111)+Chr(&H67)+Chr(114)+Chr(101)+Chr(115)+Chr(&H73))]=function()
return m._isStalling and not m._seenPlaying 
end function
this[(Chr(115)+Chr(101)+Chr(116)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(&H6c)+Chr(108)+Chr(105)+Chr(110)+Chr(&H67)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H75)+Chr(115))]=function(_O10OO1__OI1O)
m._isStalling=(_O10OO1__OI1O=m._BitmovinPlayerStates.STALLING)
if _O10OO1__OI1O=m._BitmovinPlayerStates.PLAYING
m._seenPlaying=(1=1)
else if _O10OO1__OI1O=m._BitmovinPlayerStates.FINISHED
m._reset()
end if
end function
return this 
end function
