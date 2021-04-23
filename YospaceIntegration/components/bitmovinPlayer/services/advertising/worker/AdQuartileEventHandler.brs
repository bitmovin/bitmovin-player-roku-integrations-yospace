function _OO_I1OO0I0__(___1I1_OOO0_0)
this={}
this[(Chr(95)+Chr(&H69)+Chr(&H73)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H69)+Chr(108)+Chr(101)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(&H64)+Chr(&H46)+Chr(108)+Chr(97)+Chr(103)+Chr(&H73))]={firstQuartile:(1=2),midpoint:(1=2),thirdQuartile:(1=2)}
this[(Chr(95)+Chr(99)+Chr(&H61)+Chr(108)+Chr(&H63)+Chr(117)+Chr(108)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(80)+Chr(&H65)+Chr(&H72)+Chr(99)+Chr(101)+Chr(110)+Chr(&H74)+Chr(97)+Chr(&H67)+Chr(101))]=___1I1_OOO0_0.calculatePercentage
this[(Chr(95)+Chr(105)+Chr(115)+Chr(&H42)+Chr(&H65)+Chr(&H74)+Chr(119)+Chr(&H65)+Chr(&H65)+Chr(110)+Chr(&H42)+Chr(111)+Chr(117)+Chr(110)+Chr(100))]=___1I1_OOO0_0.isBetweenBound
this[(Chr(105)+Chr(115)+Chr(70)+Chr(&H69)+Chr(&H72)+Chr(&H73)+Chr(116)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(82)+Chr(101)+Chr(97)+Chr(99)+Chr(&H68)+Chr(101)+Chr(100))]=function(__0_1_00I1O0_,_I_0011IO0O11)
adProgressInPercent=_O_OII_0II11I(__0_1_00I1O0_,_I_0011IO0O11)
isQuartileReached=__1_0__0I_OIO(adProgressInPercent,25,50)
return not m._isQuartileReachedFlags.firstQuartile and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(105)+Chr(&H73)+Chr(77)+Chr(&H69)+Chr(&H64)+Chr(112)+Chr(111)+Chr(&H69)+Chr(&H6e)+Chr(116)+Chr(82)+Chr(101)+Chr(97)+Chr(&H63)+Chr(&H68)+Chr(101)+Chr(&H64))]=function(_00_OOIOO__I0,_I10OOIIO11I0)
adProgressInPercent=m._calculatePercentage(_00_OOIOO__I0,_I10OOIIO11I0)
isQuartileReached=m._isBetweenBound(adProgressInPercent,50,75)
return not m._isQuartileReachedFlags.midpoint and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(105)+Chr(115)+Chr(&H54)+Chr(&H68)+Chr(&H69)+Chr(114)+Chr(100)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(&H52)+Chr(101)+Chr(97)+Chr(&H63)+Chr(&H68)+Chr(101)+Chr(100))]=function(_I1_10OIO0I__,___OO_OOIO0IO)
adProgressInPercent=m._calculatePercentage(_I1_10OIO0I__,___OO_OOIO0IO)
isQuartileReached=m._isBetweenBound(adProgressInPercent,75,100)
return not m._isQuartileReachedFlags.thirdQuartile and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H46)+Chr(105)+Chr(&H72)+Chr(&H73)+Chr(&H74)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(70)+Chr(108)+Chr(97)+Chr(103))]=function(_10O1OI_I_O0O)
m._isQuartileReachedFlags.firstQuartile=_10O1OI_I_O0O
end function
this[(Chr(115)+Chr(&H65)+Chr(&H74)+Chr(77)+Chr(&H69)+Chr(&H64)+Chr(&H70)+Chr(&H6f)+Chr(105)+Chr(110)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(&H61)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(&H64)+Chr(&H46)+Chr(108)+Chr(97)+Chr(&H67))]=function(_O1O_00_II0_I)
m._isQuartileReachedFlags.midpoint=_O1O_00_II0_I
end function
this[(Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H54)+Chr(&H68)+Chr(105)+Chr(&H72)+Chr(&H64)+Chr(81)+Chr(117)+Chr(97)+Chr(114)+Chr(116)+Chr(105)+Chr(108)+Chr(&H65)+Chr(&H52)+Chr(101)+Chr(97)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(70)+Chr(&H6c)+Chr(97)+Chr(103))]=function(__IO11O1_11II)
m._isQuartileReachedFlags.thirdQuartile=__IO11O1_11II
end function
this[(Chr(114)+Chr(&H65)+Chr(&H73)+Chr(101)+Chr(116)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(105)+Chr(108)+Chr(&H65)+Chr(&H41)+Chr(&H64)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(&H52)+Chr(101)+Chr(&H61)+Chr(99)+Chr(104)+Chr(101)+Chr(100)+Chr(70)+Chr(&H6c)+Chr(97)+Chr(&H67)+Chr(&H73))]=function()
m._isQuartileReachedFlags.firstQuartile=(1=2)
m._isQuartileReachedFlags.midpoint=(1=2)
m._isQuartileReachedFlags.thirdQuartile=(1=2)
end function
return this 
end function
