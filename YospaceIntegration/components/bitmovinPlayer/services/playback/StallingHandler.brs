function _O___0_I_O10I(_0O101I1___I1)
this={}
this[(Chr(&H5f)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)+Chr(115))]=_0O101I1___I1
this[(Chr(95)+Chr(&H73)+Chr(&H65)+Chr(&H65)+Chr(&H6e)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(105)+Chr(110)+Chr(&H67))]=(1=2)
this[(Chr(95)+Chr(105)+Chr(115)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(&H69)+Chr(110)+Chr(&H67))]=(1=2)
this[(Chr(&H5f)+Chr(114)+Chr(101)+Chr(115)+Chr(101)+Chr(116))]=function()
m._seenPlaying=(1=2)
m._isStalling=(1=2)
end function
this[(Chr(&H69)+Chr(115)+Chr(&H50)+Chr(&H72)+Chr(&H65)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(&H6b)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(&H6c)+Chr(108)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(73)+Chr(&H6e)+Chr(80)+Chr(&H72)+Chr(&H6f)+Chr(&H67)+Chr(114)+Chr(&H65)+Chr(115)+Chr(&H73))]=function()
return m._isStalling and not m._seenPlaying 
end function
this[(Chr(&H73)+Chr(101)+Chr(116)+Chr(83)+Chr(&H74)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H75)+Chr(115))]=function(_I0O0I0__10OO)
m._isStalling=(_I0O0I0__10OO=m._BitmovinPlayerStates.STALLING)
if _I0O0I0__10OO=m._BitmovinPlayerStates.PLAYING
m._seenPlaying=(1=1)
else if _I0O0I0__10OO=m._BitmovinPlayerStates.FINISHED
m._reset()
end if
end function
return this 
end function
