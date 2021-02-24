function _III0OO_011_1()
this={}
this[(Chr(&H5f)+Chr(98)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(&H65)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(&H74)+Chr(&H4d)+Chr(&H61)+Chr(&H70)+Chr(&H70)+Chr(101)+Chr(&H72))]=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(108)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(101)+Chr(99)+Chr(116)+Chr(77)+Chr(&H61)+Chr(&H70)+Chr(112)+Chr(101)+Chr(&H72)))
this[(Chr(&H5f)+Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(84)+Chr(121)+Chr(&H70)+Chr(101)+Chr(84)+Chr(&H6f)+Chr(69)+Chr(&H78)+Chr(&H74)+Chr(101)+Chr(&H72)+Chr(110)+Chr(&H61)+Chr(&H6c)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H46)+Chr(105)+Chr(&H65)+Chr(108)+Chr(&H64))]=this._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)+Chr(84)+Chr(121)+Chr(112)+Chr(101)+Chr(&H54)+Chr(&H6f)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(&H46)+Chr(105)+Chr(101)+Chr(108)+Chr(100)),invalid)
this[(Chr(95)+Chr(100)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(101)+Chr(110)+Chr(&H63)+Chr(121)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(111)+Chr(&H72)+Chr(&H79))]=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H44)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(99)+Chr(121)+Chr(&H46)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(114)+Chr(&H79)))
this[(Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(66)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(65)+Chr(100)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_OIO01IOOII10)
bitmovinAdEvent={}
bitmovinAdEvent.type=Chr(0)
bitmovinAdEvent.ad={}
if _OIO01IOOII10=invalid return bitmovinAdEvent 
if _OIO01IOOII10.type<>invalid bitmovinAdEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_OIO01IOOII10.type]
if _OIO01IOOII10.ad<>invalid bitmovinAdEvent.ad=m._bitmovinModelObjectMapper.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(66)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(65)+Chr(&H64)+Chr(&H46)+Chr(114)+Chr(111)+Chr(&H6d)+Chr(82)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(65)+Chr(&H64)),_OIO01IOOII10.ad)
return bitmovinAdEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H6b)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(_I1IO10__OO_O,_1OO_I01II_11)
bitmovinAdBreakEvent={}
bitmovinAdBreakEvent.type=Chr(0)
bitmovinAdBreakEvent.adBreak={}
if _1OO_I01II_11<>invalid bitmovinAdBreakEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_1OO_I01II_11]
if _I1IO10__OO_O<>invalid bitmovinAdBreakEvent.adBreak=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H41)+Chr(&H64)+Chr(66)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H6b)+Chr(&H46)+Chr(114)+Chr(&H6f)+Chr(&H6d)+Chr(82)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(65)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(&H61)+Chr(107)),_I1IO10__OO_O)
return bitmovinAdBreakEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(65)+Chr(100)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_0III11_I110_,_O_OI10__11_1)
errors=m._deficiencyFactory.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(115)))
bitmovinAdErrorEvent={}
errorType=m._rokuEventTypeToExternalBitmovinEventField[_O_OI10__11_1]
bitmovinAdErrorEvent=m._deficiencyFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)),errors.MODULE_ADVERTISING_ERROR,Chr(0),_0III11_I110_,errorType)
return bitmovinAdErrorEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(65)+Chr(100)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74))]=function(_I_IO0OOI010_)
bitmovinAdQuartileEvent={}
bitmovinAdQuartileEvent.type=Chr(0)
bitmovinAdQuartileEvent.quartile=Chr(0)
if _I_IO0OOI010_<>invalid
bitmovinAdQuartileEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_I_IO0OOI010_]
bitmovinAdQuartileEvent.quartile=m._bitmovinModelObjectMapper.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(65)+Chr(&H64)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(&H6c)+Chr(&H65)),_I_IO0OOI010_)
end if
return bitmovinAdQuartileEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H42)+Chr(97)+Chr(115)+Chr(&H65)+Chr(69)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(__1I_11101__0)
baseEvent={}
baseEvent.type=__1I_11101__0
return baseEvent 
end function
this[(Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(68)+Chr(111)+Chr(119)+Chr(110)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(70)+Chr(&H69)+Chr(110)+Chr(&H69)+Chr(115)+Chr(&H68)+Chr(101)+Chr(100)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_O11O11_OII10)
if _O11O11_OII10=invalid return invalid 
return m._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(&H53)+Chr(&H65)+Chr(103)+Chr(109)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(&H6f)+Chr(114)+Chr(109)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(&H54)+Chr(&H6f)+Chr(&H44)+Chr(111)+Chr(&H77)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)+Chr(70)+Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),_O11O11_OII10) 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H4d)+Chr(&H65)+Chr(&H64)+Chr(&H69)+Chr(97)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(116)+Chr(121)+Chr(&H43)+Chr(104)+Chr(&H61)+Chr(110)+Chr(&H67)+Chr(&H65)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_I10IOO1I1O_I,_11O_IO_O_OI1,_01IOO1O1_I11)
qualityChangedEvent={}
qualityChangedEvent.sourceQuality=invalid
qualityChangedEvent.targetQuality=invalid
qualityChangedEvent.type=_01IOO1O1_I11
if _I10IOO1I1O_I<>invalid
qualityChangedEvent.sourceQuality=_I10IOO1I1O_I.quality
end if
if _11O_IO_O_OI1<>invalid
qualityChangedEvent.targetQuality=_11O_IO_O_OI1.quality
end if
return qualityChangedEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H49)+Chr(&H6d)+Chr(112)+Chr(114)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(110)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_IO01_1I00I01,_1I1_I11_0I1_,_O_IO__0I1__1,_101111O0O_O1)
deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(68)+Chr(&H65)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(73)+Chr(110)+Chr(&H66)+Chr(&H6f)))
appInfo=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(&H70)+Chr(112)+Chr(&H49)+Chr(110)+Chr(102)+Chr(&H6f)))
impressionEvent={}
impressionEvent.response=_IO01_1I00I01
impressionEvent.type=_101111O0O_O1
impressionEvent.version=_1I1_I11_0I1_
impressionEvent.domain=appInfo.getID()+(Chr(46)+Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(&H75))
impressionEvent.key=_O_IO__0I1__1
impressionEvent.platform=deviceInfo.GetModelType()
return impressionEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(&H56)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H64)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74))]=function(_OIOO00IO1I00,____O1_O00I_0)
data=_OIOO00IO1I00.getData()
licenseValidatedEvent={}
licenseValidatedEvent.type=____O1_O00I_0
licenseValidatedEvent.response=data.response
licenseValidatedEvent.responseCode=data.responseCode
return licenseValidatedEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H53)+Chr(99)+Chr(116)+Chr(101)+Chr(77)+Chr(101)+Chr(116)+Chr(97)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H61)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116))]=function(__1IOII11_00O,__IIO_1001O01,_101_1O1II000,_IO1O0I11O_0_)
event=m.createBitmovinBaseEvent(_IO1O0I11O_0_.METADATA)
event.metadata={id:__1IOII11_00O.id,cue:__1IOII11_00O.cue,start:__IIO_1001O01}
event.metadataType=_101_1O1II000.SCTE
return event 
end function
this[(Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H54)+Chr(&H69)+Chr(109)+Chr(101)+Chr(&H43)+Chr(104)+Chr(&H61)+Chr(110)+Chr(103)+Chr(101)+Chr(&H64)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(__1_I10O10IO1,_01__IOIIO01I)
timeChangedEvent=m.createBitmovinBaseEvent(_01__IOIIO01I.TIME_CHANGED)
timeChangedEvent.time=__1_I10O10IO1
return timeChangedEvent 
end function
return this 
end function
