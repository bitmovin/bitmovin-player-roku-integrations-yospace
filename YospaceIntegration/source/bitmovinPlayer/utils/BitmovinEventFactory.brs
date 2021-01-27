function _0_1_1IO_0_IO()
this={}
this[(Chr(95)+Chr(98)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(&H63)+Chr(&H74)+Chr(&H4d)+Chr(&H61)+Chr(112)+Chr(112)+Chr(101)+Chr(&H72))]=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H4d)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(108)+Chr(79)+Chr(&H62)+Chr(106)+Chr(101)+Chr(99)+Chr(&H74)+Chr(&H4d)+Chr(&H61)+Chr(112)+Chr(&H70)+Chr(&H65)+Chr(&H72)))
this[(Chr(&H5f)+Chr(&H72)+Chr(111)+Chr(107)+Chr(117)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H54)+Chr(121)+Chr(112)+Chr(&H65)+Chr(84)+Chr(&H6f)+Chr(69)+Chr(&H78)+Chr(&H74)+Chr(&H65)+Chr(&H72)+Chr(&H6e)+Chr(&H61)+Chr(&H6c)+Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(69)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H46)+Chr(105)+Chr(101)+Chr(108)+Chr(&H64))]=this._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(107)+Chr(&H75)+Chr(69)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(84)+Chr(121)+Chr(112)+Chr(&H65)+Chr(84)+Chr(111)+Chr(66)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H46)+Chr(105)+Chr(101)+Chr(108)+Chr(100)),invalid)
this[(Chr(95)+Chr(&H64)+Chr(101)+Chr(102)+Chr(105)+Chr(&H63)+Chr(105)+Chr(&H65)+Chr(110)+Chr(99)+Chr(121)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(111)+Chr(&H72)+Chr(121))]=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(68)+Chr(101)+Chr(&H66)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(101)+Chr(&H6e)+Chr(99)+Chr(121)+Chr(70)+Chr(97)+Chr(99)+Chr(&H74)+Chr(111)+Chr(114)+Chr(&H79)))
this[(Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H41)+Chr(&H64)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74))]=function(_I_O1O0_I0001)
bitmovinAdEvent={}
bitmovinAdEvent.type=Chr(0)
bitmovinAdEvent.ad={}
if _I_O1O0_I0001=invalid return bitmovinAdEvent 
if _I_O1O0_I0001.type<>invalid bitmovinAdEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_I_O1O0_I0001.type]
if _I_O1O0_I0001.ad<>invalid bitmovinAdEvent.ad=m._bitmovinModelObjectMapper.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(65)+Chr(100)+Chr(&H46)+Chr(&H72)+Chr(111)+Chr(109)+Chr(&H52)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(65)+Chr(&H64)),_I_O1O0_I0001.ad)
return bitmovinAdEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H41)+Chr(&H64)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H6b)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_OIO100__0_I0,___0_IO10II_I)
bitmovinAdBreakEvent={}
bitmovinAdBreakEvent.type=Chr(0)
bitmovinAdBreakEvent.adBreak={}
if ___0_IO10II_I<>invalid bitmovinAdBreakEvent.type=m._rokuEventTypeToExternalBitmovinEventField[___0_IO10II_I]
if _OIO100__0_I0<>invalid bitmovinAdBreakEvent.adBreak=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(&H41)+Chr(&H64)+Chr(66)+Chr(114)+Chr(101)+Chr(97)+Chr(107)+Chr(&H46)+Chr(114)+Chr(&H6f)+Chr(&H6d)+Chr(82)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(65)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(97)+Chr(107)),_OIO100__0_I0)
return bitmovinAdBreakEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H41)+Chr(&H64)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116))]=function(_01O0110_0110,__IOI1_O010I_)
errors=m._deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H45)+Chr(114)+Chr(114)+Chr(111)+Chr(114)+Chr(115)))
bitmovinAdErrorEvent={}
errorType=m._rokuEventTypeToExternalBitmovinEventField[__IOI1_O010I_]
bitmovinAdErrorEvent=m._deficiencyFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(69)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)),errors.MODULE_ADVERTISING_ERROR,Chr(0),_01O0110_0110,errorType)
return bitmovinAdErrorEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H41)+Chr(100)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(114)+Chr(116)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_O__1IOI1O10O)
bitmovinAdQuartileEvent={}
bitmovinAdQuartileEvent.type=Chr(0)
bitmovinAdQuartileEvent.quartile=Chr(0)
if _O__1IOI1O10O<>invalid bitmovinAdQuartileEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_O__1IOI1O10O]
if rokuAdQuartileEventData<>invalid bitmovinAdQuartileEvent.quartile=m._bitmovinModelObjectMapper.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(&H64)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(108)+Chr(101)),_O__1IOI1O10O)
return bitmovinAdQuartileEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H42)+Chr(&H61)+Chr(&H73)+Chr(101)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74))]=function(_0I1II__1_0__)
baseEvent={}
baseEvent.type=_0I1II__1_0__
return baseEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H44)+Chr(111)+Chr(&H77)+Chr(&H6e)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(&H46)+Chr(105)+Chr(110)+Chr(&H69)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(100)+Chr(69)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(&H74))]=function(_0O1OOO_I_IO_)
if _0O1OOO_I_IO_=invalid return invalid 
return m._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(&H53)+Chr(&H65)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(102)+Chr(111)+Chr(&H72)+Chr(109)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(84)+Chr(&H6f)+Chr(&H44)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(&H46)+Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(&H64)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)),_0O1OOO_I_IO_) 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(77)+Chr(&H65)+Chr(&H64)+Chr(&H69)+Chr(&H61)+Chr(81)+Chr(117)+Chr(97)+Chr(108)+Chr(105)+Chr(116)+Chr(121)+Chr(&H43)+Chr(&H68)+Chr(97)+Chr(110)+Chr(&H67)+Chr(101)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))]=function(_0_O__II1IO11,_I001O_0101_0,__0I00II1_III)
qualityChangedEvent={}
qualityChangedEvent.sourceQuality=invalid
qualityChangedEvent.targetQuality=invalid
qualityChangedEvent.type=__0I00II1_III
if _0_O__II1IO11<>invalid
qualityChangedEvent.sourceQuality=_0_O__II1IO11.quality
end if
if _I001O_0101_0<>invalid
qualityChangedEvent.targetQuality=_I001O_0101_0.quality
end if
return qualityChangedEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H49)+Chr(&H6d)+Chr(112)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_0101101I01I_,_II1I10_I0_10,__O0O0O01_1_1,_1OI0__O01_00)
deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(&H44)+Chr(101)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(73)+Chr(110)+Chr(&H66)+Chr(&H6f)))
appInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(&H70)+Chr(&H70)+Chr(73)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
impressionEvent={}
impressionEvent.response=_0101101I01I_
impressionEvent.type=_1OI0__O01_00
impressionEvent.version=_II1I10_I0_10
impressionEvent.domain=appInfo.getID()+(Chr(46)+Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(&H75))
impressionEvent.key=__O0O0O01_1_1
impressionEvent.platform=deviceInfo.GetModelType()
return impressionEvent 
end function
this[(Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(86)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(100)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(_O_IIIOO_OO1O,__IIO00IO0110)
data=_O_IIIOO_OO1O.getData()
licenseValidatedEvent={}
licenseValidatedEvent.type=__IIO00IO0110
licenseValidatedEvent.response=data.response
licenseValidatedEvent.responseCode=data.responseCode
return licenseValidatedEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(83)+Chr(99)+Chr(&H74)+Chr(&H65)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(&H61)+Chr(100)+Chr(97)+Chr(116)+Chr(&H61)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116))]=function(_0OI1O10I_110,_O00I_1O1O000,___I01IOI10O0,_0OO1OO__I10O)
event=m.createBitmovinBaseEvent(_0OO1OO__I10O.METADATA)
event.metadata={id:_0OI1O10I_110.id,cue:_0OI1O10I_110.cue,start:_O00I_1O1O000}
event.metadataType=___I01IOI10O0.SCTE
return event 
end function
return this 
end function
