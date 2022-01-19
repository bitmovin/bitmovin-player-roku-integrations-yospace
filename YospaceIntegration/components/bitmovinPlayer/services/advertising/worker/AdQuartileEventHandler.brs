function _O1OI0__OO011(__01I0IIII0O_)
this={}
this[(Chr(95)+Chr(105)+Chr(115)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(116)+Chr(105)+Chr(108)+Chr(101)+Chr(82)+Chr(&H65)+Chr(97)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(&H64)+Chr(70)+Chr(&H6c)+Chr(&H61)+Chr(103)+Chr(&H73))]={firstQuartile:(1=2),midpoint:(1=2),thirdQuartile:(1=2)}
this[(Chr(&H5f)+Chr(&H63)+Chr(&H61)+Chr(108)+Chr(99)+Chr(117)+Chr(&H6c)+Chr(97)+Chr(116)+Chr(101)+Chr(80)+Chr(&H65)+Chr(114)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(97)+Chr(103)+Chr(&H65))]=__01I0IIII0O_.calculatePercentage
this[(Chr(&H5f)+Chr(105)+Chr(115)+Chr(66)+Chr(101)+Chr(&H74)+Chr(119)+Chr(101)+Chr(&H65)+Chr(110)+Chr(66)+Chr(111)+Chr(117)+Chr(&H6e)+Chr(100))]=__01I0IIII0O_.isBetweenBound
this[(Chr(&H69)+Chr(115)+Chr(&H46)+Chr(&H69)+Chr(114)+Chr(&H73)+Chr(&H74)+Chr(81)+Chr(117)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(82)+Chr(&H65)+Chr(97)+Chr(99)+Chr(104)+Chr(101)+Chr(100))]=function(_II1I11__1_1O,__I_0IOOO0010)
adProgressInPercent=_O1II0O0_1I00(_II1I11__1_1O,__I_0IOOO0010)
isQuartileReached=_1I10I01I0I_I(adProgressInPercent,25,50)
return not m._isQuartileReachedFlags.firstQuartile and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(&H69)+Chr(115)+Chr(77)+Chr(105)+Chr(&H64)+Chr(&H70)+Chr(111)+Chr(&H69)+Chr(&H6e)+Chr(&H74)+Chr(82)+Chr(101)+Chr(97)+Chr(99)+Chr(&H68)+Chr(101)+Chr(&H64))]=function(_OI01O1_1_001,_O0O1OOO1_1I0)
adProgressInPercent=m._calculatePercentage(_OI01O1_1_001,_O0O1OOO1_1I0)
isQuartileReached=m._isBetweenBound(adProgressInPercent,50,75)
return not m._isQuartileReachedFlags.midpoint and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(105)+Chr(&H73)+Chr(&H54)+Chr(&H68)+Chr(&H69)+Chr(&H72)+Chr(&H64)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(82)+Chr(&H65)+Chr(97)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(&H64))]=function(__I0_IO01I_0O,_1O1OOI011OOO)
adProgressInPercent=m._calculatePercentage(__I0_IO01I_0O,_1O1OOI011OOO)
isQuartileReached=m._isBetweenBound(adProgressInPercent,75,100)
return not m._isQuartileReachedFlags.thirdQuartile and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(&H73)+Chr(101)+Chr(&H74)+Chr(70)+Chr(105)+Chr(114)+Chr(&H73)+Chr(116)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(101)+Chr(82)+Chr(101)+Chr(&H61)+Chr(99)+Chr(&H68)+Chr(101)+Chr(100)+Chr(70)+Chr(&H6c)+Chr(&H61)+Chr(103))]=function(_O_OI01I_O0OO)
m._isQuartileReachedFlags.firstQuartile=_O_OI01I_O0OO
end function
this[(Chr(115)+Chr(&H65)+Chr(&H74)+Chr(77)+Chr(105)+Chr(100)+Chr(&H70)+Chr(&H6f)+Chr(&H69)+Chr(110)+Chr(116)+Chr(&H52)+Chr(&H65)+Chr(&H61)+Chr(&H63)+Chr(104)+Chr(&H65)+Chr(&H64)+Chr(70)+Chr(&H6c)+Chr(&H61)+Chr(&H67))]=function(__11OO0_11II1)
m._isQuartileReachedFlags.midpoint=__11OO0_11II1
end function
this[(Chr(&H73)+Chr(101)+Chr(&H74)+Chr(84)+Chr(104)+Chr(&H69)+Chr(114)+Chr(100)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(&H63)+Chr(&H68)+Chr(101)+Chr(100)+Chr(&H46)+Chr(108)+Chr(97)+Chr(103))]=function(_III1I10_0O11)
m._isQuartileReachedFlags.thirdQuartile=_III1I10_0O11
end function
this[(Chr(114)+Chr(101)+Chr(115)+Chr(101)+Chr(116)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H69)+Chr(108)+Chr(101)+Chr(&H41)+Chr(100)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(82)+Chr(101)+Chr(97)+Chr(&H63)+Chr(104)+Chr(&H65)+Chr(100)+Chr(&H46)+Chr(&H6c)+Chr(&H61)+Chr(&H67)+Chr(&H73))]=function()
m._isQuartileReachedFlags.firstQuartile=(1=2)
m._isQuartileReachedFlags.midpoint=(1=2)
m._isQuartileReachedFlags.thirdQuartile=(1=2)
end function
return this 
end function
