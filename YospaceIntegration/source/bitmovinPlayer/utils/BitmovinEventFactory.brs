function _1_OO1IO0I1O_()
this={}
this[(Chr(95)+Chr(98)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(101)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(97)+Chr(112)+Chr(&H70)+Chr(101)+Chr(114))]=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(&H64)+Chr(101)+Chr(108)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(101)+Chr(&H63)+Chr(&H74)+Chr(&H4d)+Chr(97)+Chr(112)+Chr(&H70)+Chr(101)+Chr(114)))
this[(Chr(&H5f)+Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)+Chr(84)+Chr(121)+Chr(&H70)+Chr(101)+Chr(&H54)+Chr(&H6f)+Chr(&H45)+Chr(&H78)+Chr(116)+Chr(&H65)+Chr(114)+Chr(110)+Chr(97)+Chr(&H6c)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H46)+Chr(&H69)+Chr(101)+Chr(&H6c)+Chr(100))]=this._bitmovinModelObjectMapper.callFunc((Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H54)+Chr(121)+Chr(112)+Chr(&H65)+Chr(&H54)+Chr(111)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H46)+Chr(&H69)+Chr(101)+Chr(&H6c)+Chr(&H64)),invalid)
this[(Chr(&H5f)+Chr(100)+Chr(&H65)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(101)+Chr(110)+Chr(99)+Chr(121)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(&H79))]=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H44)+Chr(101)+Chr(&H66)+Chr(105)+Chr(99)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(111)+Chr(114)+Chr(121)))
this[(Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H41)+Chr(100)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116))]=function(_IO0O_I1I0_1_)
bitmovinAdEvent={}
bitmovinAdEvent.type=Chr(0)
bitmovinAdEvent.ad={}
if _IO0O_I1I0_1_=invalid return bitmovinAdEvent 
if _IO0O_I1I0_1_.type<>invalid bitmovinAdEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_IO0O_I1I0_1_.type]
if _IO0O_I1I0_1_.ad<>invalid bitmovinAdEvent.ad=m._bitmovinModelObjectMapper.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(65)+Chr(&H64)+Chr(&H46)+Chr(&H72)+Chr(&H6f)+Chr(&H6d)+Chr(82)+Chr(111)+Chr(107)+Chr(117)+Chr(&H41)+Chr(100)),_IO0O_I1I0_1_.ad)
return bitmovinAdEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H41)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(97)+Chr(107)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116))]=function(_1I100III001O,__10010O011I_)
bitmovinAdBreakEvent={}
bitmovinAdBreakEvent.type=Chr(0)
bitmovinAdBreakEvent.adBreak={}
if __10010O011I_<>invalid bitmovinAdBreakEvent.type=m._rokuEventTypeToExternalBitmovinEventField[__10010O011I_]
if _1I100III001O<>invalid bitmovinAdBreakEvent.adBreak=m._bitmovinModelObjectMapper.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(114)+Chr(101)+Chr(97)+Chr(&H6b)+Chr(70)+Chr(114)+Chr(&H6f)+Chr(&H6d)+Chr(82)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(&H41)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(97)+Chr(&H6b)),_1I100III001O)
return bitmovinAdBreakEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(65)+Chr(&H64)+Chr(69)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)+Chr(69)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116))]=function(_1__I0I_0100O,_0O0_1100_OII)
errors=m._deficiencyFactory.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(115)))
bitmovinAdErrorEvent={}
errorType=m._rokuEventTypeToExternalBitmovinEventField[_0O0_1100_OII]
bitmovinAdErrorEvent=m._deficiencyFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)),errors.MODULE_ADVERTISING_ERROR,Chr(0),_1__I0I_0100O,errorType)
return bitmovinAdErrorEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H41)+Chr(100)+Chr(&H51)+Chr(117)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(___00I111I_11)
bitmovinAdQuartileEvent={}
bitmovinAdQuartileEvent.type=Chr(0)
bitmovinAdQuartileEvent.quartile=Chr(0)
if ___00I111I_11<>invalid bitmovinAdQuartileEvent.type=m._rokuEventTypeToExternalBitmovinEventField[___00I111I_11]
if rokuAdQuartileEventData<>invalid bitmovinAdQuartileEvent.quartile=m._bitmovinModelObjectMapper.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(65)+Chr(&H64)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(101)),___00I111I_11)
return bitmovinAdQuartileEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H42)+Chr(97)+Chr(115)+Chr(101)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(__1011O1I__11)
baseEvent={}
baseEvent.type=__1011O1I__11
return baseEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H44)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)+Chr(&H46)+Chr(&H69)+Chr(110)+Chr(105)+Chr(115)+Chr(104)+Chr(101)+Chr(&H64)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74))]=function(_O_0__IIOI11I)
if _O_0__IIOI11I=invalid return invalid 
return m._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(&H53)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(&H6e)+Chr(&H66)+Chr(111)+Chr(&H72)+Chr(109)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H54)+Chr(111)+Chr(&H44)+Chr(&H6f)+Chr(&H77)+Chr(&H6e)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(70)+Chr(&H69)+Chr(110)+Chr(105)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(&H64)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(116)),_O_0__IIOI11I) 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H4d)+Chr(&H65)+Chr(&H64)+Chr(105)+Chr(&H61)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(116)+Chr(121)+Chr(&H43)+Chr(104)+Chr(&H61)+Chr(110)+Chr(103)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116))]=function(_O_0IO1OO1110,_00I_1OOI0OO0,___1_O1O0_01I)
qualityChangedEvent={}
qualityChangedEvent.sourceQuality=invalid
qualityChangedEvent.targetQuality=invalid
qualityChangedEvent.type=___1_O1O0_01I
if _O_0IO1OO1110<>invalid
qualityChangedEvent.sourceQuality=_O_0IO1OO1110.quality
end if
if _00I_1OOI0OO0<>invalid
qualityChangedEvent.targetQuality=_00I_1OOI0OO0.quality
end if
return qualityChangedEvent 
end function
return this 
end function
