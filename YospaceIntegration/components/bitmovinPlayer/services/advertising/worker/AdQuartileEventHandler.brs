function __OIO_10I10_1(_OI0__OII1100)
this={}
this[(Chr(95)+Chr(105)+Chr(&H73)+Chr(81)+Chr(117)+Chr(&H61)+Chr(114)+Chr(116)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H52)+Chr(101)+Chr(&H61)+Chr(&H63)+Chr(104)+Chr(&H65)+Chr(100)+Chr(&H46)+Chr(108)+Chr(&H61)+Chr(103)+Chr(&H73))]={firstQuartile:(1=2),midpoint:(1=2),thirdQuartile:(1=2)}
this[(Chr(&H5f)+Chr(&H63)+Chr(&H61)+Chr(&H6c)+Chr(99)+Chr(&H75)+Chr(108)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H50)+Chr(101)+Chr(&H72)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(97)+Chr(&H67)+Chr(&H65))]=_OI0__OII1100.calculatePercentage
this[(Chr(&H5f)+Chr(105)+Chr(&H73)+Chr(&H42)+Chr(101)+Chr(&H74)+Chr(119)+Chr(&H65)+Chr(101)+Chr(110)+Chr(66)+Chr(111)+Chr(117)+Chr(&H6e)+Chr(100))]=_OI0__OII1100.isBetweenBound
this[(Chr(&H69)+Chr(&H73)+Chr(&H46)+Chr(105)+Chr(&H72)+Chr(&H73)+Chr(&H74)+Chr(81)+Chr(117)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(&H6c)+Chr(101)+Chr(&H52)+Chr(&H65)+Chr(&H61)+Chr(&H63)+Chr(&H68)+Chr(101)+Chr(100))]=function(_011_0I___I01,__0I0_0OI__OI)
adProgressInPercent=_111000O0I00_(_011_0I___I01,__0I0_0OI__OI)
isQuartileReached=__I0_IOII_OIO(adProgressInPercent,25,50)
return not m._isQuartileReachedFlags.firstQuartile and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(&H69)+Chr(115)+Chr(&H4d)+Chr(&H69)+Chr(100)+Chr(112)+Chr(&H6f)+Chr(105)+Chr(&H6e)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(97)+Chr(99)+Chr(&H68)+Chr(101)+Chr(&H64))]=function(_IIOO_1_10II1,_IOO0_11O_IOI)
adProgressInPercent=m._calculatePercentage(_IIOO_1_10II1,_IOO0_11O_IOI)
isQuartileReached=m._isBetweenBound(adProgressInPercent,50,75)
return not m._isQuartileReachedFlags.midpoint and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(&H69)+Chr(115)+Chr(84)+Chr(104)+Chr(105)+Chr(&H72)+Chr(&H64)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(116)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H52)+Chr(&H65)+Chr(&H61)+Chr(&H63)+Chr(104)+Chr(&H65)+Chr(&H64))]=function(__IIOI_0_O_I_,_I01101IO10I_)
adProgressInPercent=m._calculatePercentage(__IIOI_0_O_I_,_I01101IO10I_)
isQuartileReached=m._isBetweenBound(adProgressInPercent,75,100)
return not m._isQuartileReachedFlags.thirdQuartile and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(115)+Chr(101)+Chr(116)+Chr(70)+Chr(&H69)+Chr(114)+Chr(&H73)+Chr(116)+Chr(81)+Chr(117)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(108)+Chr(101)+Chr(82)+Chr(&H65)+Chr(97)+Chr(99)+Chr(&H68)+Chr(101)+Chr(100)+Chr(&H46)+Chr(&H6c)+Chr(&H61)+Chr(103))]=function(_O_0110_01111)
m._isQuartileReachedFlags.firstQuartile=_O_0110_01111
end function
this[(Chr(&H73)+Chr(101)+Chr(116)+Chr(77)+Chr(&H69)+Chr(100)+Chr(112)+Chr(&H6f)+Chr(&H69)+Chr(110)+Chr(116)+Chr(&H52)+Chr(101)+Chr(&H61)+Chr(99)+Chr(&H68)+Chr(101)+Chr(&H64)+Chr(&H46)+Chr(108)+Chr(&H61)+Chr(103))]=function(_I00_I100O_O0)
m._isQuartileReachedFlags.midpoint=_I00_I100O_O0
end function
this[(Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H54)+Chr(104)+Chr(&H69)+Chr(&H72)+Chr(&H64)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H52)+Chr(&H65)+Chr(&H61)+Chr(99)+Chr(104)+Chr(&H65)+Chr(&H64)+Chr(70)+Chr(108)+Chr(&H61)+Chr(103))]=function(_II00__0O111_)
m._isQuartileReachedFlags.thirdQuartile=_II00__0O111_
end function
this[(Chr(114)+Chr(&H65)+Chr(115)+Chr(101)+Chr(&H74)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(105)+Chr(108)+Chr(101)+Chr(65)+Chr(100)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(70)+Chr(&H6c)+Chr(&H61)+Chr(103)+Chr(&H73))]=function()
m._isQuartileReachedFlags.firstQuartile=(1=2)
m._isQuartileReachedFlags.midpoint=(1=2)
m._isQuartileReachedFlags.thirdQuartile=(1=2)
end function
return this 
end function
