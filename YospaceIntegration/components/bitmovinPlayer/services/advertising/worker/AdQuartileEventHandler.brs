function _O_10_II_IO_I(_OOO0_I_I1_I0)
this={}
this[(Chr(95)+Chr(105)+Chr(115)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(108)+Chr(101)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(&H63)+Chr(104)+Chr(101)+Chr(100)+Chr(&H46)+Chr(108)+Chr(&H61)+Chr(103)+Chr(&H73))]={firstQuartile:(1=2),midpoint:(1=2),thirdQuartile:(1=2)}
this[(Chr(&H5f)+Chr(&H63)+Chr(97)+Chr(&H6c)+Chr(&H63)+Chr(&H75)+Chr(&H6c)+Chr(97)+Chr(&H74)+Chr(101)+Chr(80)+Chr(101)+Chr(114)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H61)+Chr(&H67)+Chr(101))]=_OOO0_I_I1_I0.calculatePercentage
this[(Chr(&H5f)+Chr(105)+Chr(115)+Chr(&H42)+Chr(&H65)+Chr(116)+Chr(119)+Chr(101)+Chr(&H65)+Chr(&H6e)+Chr(&H42)+Chr(111)+Chr(&H75)+Chr(&H6e)+Chr(100))]=_OOO0_I_I1_I0.isBetweenBound
this[(Chr(&H69)+Chr(&H73)+Chr(&H46)+Chr(105)+Chr(114)+Chr(&H73)+Chr(116)+Chr(81)+Chr(&H75)+Chr(97)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H52)+Chr(&H65)+Chr(97)+Chr(99)+Chr(&H68)+Chr(101)+Chr(&H64))]=function(_O1I1010_____,_1_1_I_01_01I)
adProgressInPercent=_1_0_00I__IOI(_O1I1010_____,_1_1_I_01_01I)
isQuartileReached=_I11OO1IO_OI1(adProgressInPercent,25,50)
return not m._isQuartileReachedFlags.firstQuartile and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(&H69)+Chr(&H73)+Chr(&H4d)+Chr(&H69)+Chr(&H64)+Chr(112)+Chr(&H6f)+Chr(105)+Chr(110)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H61)+Chr(99)+Chr(104)+Chr(&H65)+Chr(100))]=function(__IO_O0I_0O0I,_IOI11OI001_O)
adProgressInPercent=m._calculatePercentage(__IO_O0I_0O0I,_IOI11OI001_O)
isQuartileReached=m._isBetweenBound(adProgressInPercent,50,75)
return not m._isQuartileReachedFlags.midpoint and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(105)+Chr(115)+Chr(&H54)+Chr(&H68)+Chr(&H69)+Chr(&H72)+Chr(100)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(116)+Chr(105)+Chr(108)+Chr(101)+Chr(82)+Chr(&H65)+Chr(97)+Chr(&H63)+Chr(&H68)+Chr(101)+Chr(100))]=function(_1II__IO11__O,_0III0OI0__01)
adProgressInPercent=m._calculatePercentage(_1II__IO11__O,_0III0OI0__01)
isQuartileReached=m._isBetweenBound(adProgressInPercent,75,100)
return not m._isQuartileReachedFlags.thirdQuartile and isQuartileReached<>invalid and isQuartileReached 
end function
this[(Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(70)+Chr(&H69)+Chr(114)+Chr(&H73)+Chr(116)+Chr(81)+Chr(117)+Chr(&H61)+Chr(114)+Chr(116)+Chr(105)+Chr(108)+Chr(101)+Chr(&H52)+Chr(101)+Chr(&H61)+Chr(&H63)+Chr(104)+Chr(&H65)+Chr(100)+Chr(70)+Chr(&H6c)+Chr(97)+Chr(103))]=function(_1O_0II0O_I0_)
m._isQuartileReachedFlags.firstQuartile=_1O_0II0O_I0_
end function
this[(Chr(115)+Chr(101)+Chr(&H74)+Chr(&H4d)+Chr(105)+Chr(100)+Chr(112)+Chr(&H6f)+Chr(&H69)+Chr(110)+Chr(116)+Chr(82)+Chr(101)+Chr(&H61)+Chr(99)+Chr(&H68)+Chr(101)+Chr(100)+Chr(70)+Chr(&H6c)+Chr(&H61)+Chr(103))]=function(_O_0__IIIIO_0)
m._isQuartileReachedFlags.midpoint=_O_0__IIIIO_0
end function
this[(Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H54)+Chr(&H68)+Chr(105)+Chr(114)+Chr(&H64)+Chr(&H51)+Chr(117)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(82)+Chr(101)+Chr(&H61)+Chr(99)+Chr(&H68)+Chr(101)+Chr(&H64)+Chr(70)+Chr(&H6c)+Chr(&H61)+Chr(103))]=function(_0OI01I_O1O1O)
m._isQuartileReachedFlags.thirdQuartile=_0OI01I_O1O1O
end function
this[(Chr(&H72)+Chr(101)+Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(105)+Chr(108)+Chr(101)+Chr(&H41)+Chr(&H64)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H52)+Chr(101)+Chr(97)+Chr(99)+Chr(104)+Chr(&H65)+Chr(&H64)+Chr(&H46)+Chr(108)+Chr(&H61)+Chr(&H67)+Chr(&H73))]=function()
m._isQuartileReachedFlags.firstQuartile=(1=2)
m._isQuartileReachedFlags.midpoint=(1=2)
m._isQuartileReachedFlags.thirdQuartile=(1=2)
end function
return this 
end function
