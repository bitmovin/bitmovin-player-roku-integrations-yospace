function _I1I_O1I0I100()
this={}
this[(Chr(&H5f)+Chr(98)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(108)+Chr(&H4f)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(&H74)+Chr(77)+Chr(97)+Chr(&H70)+Chr(112)+Chr(&H65)+Chr(&H72))]=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H4d)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(&H6c)+Chr(79)+Chr(98)+Chr(106)+Chr(101)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(&H70)+Chr(&H70)+Chr(101)+Chr(114)))
this[(Chr(95)+Chr(114)+Chr(111)+Chr(107)+Chr(117)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H54)+Chr(121)+Chr(&H70)+Chr(&H65)+Chr(84)+Chr(111)+Chr(&H45)+Chr(120)+Chr(&H74)+Chr(&H65)+Chr(114)+Chr(110)+Chr(97)+Chr(108)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(70)+Chr(&H69)+Chr(&H65)+Chr(108)+Chr(&H64))]=this._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(107)+Chr(117)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(84)+Chr(&H79)+Chr(112)+Chr(&H65)+Chr(84)+Chr(111)+Chr(66)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(69)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(70)+Chr(&H69)+Chr(101)+Chr(108)+Chr(100)),invalid)
this[(Chr(&H5f)+Chr(100)+Chr(101)+Chr(102)+Chr(105)+Chr(&H63)+Chr(&H69)+Chr(101)+Chr(&H6e)+Chr(99)+Chr(&H79)+Chr(70)+Chr(97)+Chr(99)+Chr(&H74)+Chr(111)+Chr(114)+Chr(121))]=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H44)+Chr(101)+Chr(&H66)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(101)+Chr(110)+Chr(&H63)+Chr(121)+Chr(&H46)+Chr(97)+Chr(99)+Chr(116)+Chr(111)+Chr(114)+Chr(&H79)))
this[(Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H41)+Chr(&H64)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116))]=function(___II011_1I__)
bitmovinAdEvent={}
bitmovinAdEvent.type=Chr(0)
bitmovinAdEvent.ad={}
if ___II011_1I__=invalid return bitmovinAdEvent 
if ___II011_1I__.type<>invalid bitmovinAdEvent.type=m._rokuEventTypeToExternalBitmovinEventField[___II011_1I__.type]
if ___II011_1I__.ad<>invalid bitmovinAdEvent.ad=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H41)+Chr(&H64)+Chr(&H46)+Chr(&H72)+Chr(111)+Chr(&H6d)+Chr(82)+Chr(111)+Chr(107)+Chr(117)+Chr(&H41)+Chr(&H64)),___II011_1I__.ad)
return bitmovinAdEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H41)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(107)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74))]=function(_I101100_IOII,_01_1O1__I_1O)
bitmovinAdBreakEvent={}
bitmovinAdBreakEvent.type=Chr(0)
bitmovinAdBreakEvent.adBreak={}
if _01_1O1__I_1O<>invalid bitmovinAdBreakEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_01_1O1__I_1O]
if _I101100_IOII<>invalid bitmovinAdBreakEvent.adBreak=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(65)+Chr(100)+Chr(66)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(107)+Chr(70)+Chr(&H72)+Chr(111)+Chr(109)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(65)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(97)+Chr(&H6b)),_I101100_IOII)
return bitmovinAdBreakEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(65)+Chr(&H64)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_111I_OII_OOO,_1OIOOIO1_IOO)
errors=m._deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(115)))
bitmovinAdErrorEvent={}
errorType=m._rokuEventTypeToExternalBitmovinEventField[_1OIOOIO1_IOO]
bitmovinAdErrorEvent=m._deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)),errors.MODULE_ADVERTISING_ERROR,Chr(0),_111I_OII_OOO,errorType)
return bitmovinAdErrorEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H41)+Chr(100)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(108)+Chr(101)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(__OI0__10110_)
bitmovinAdQuartileEvent={}
bitmovinAdQuartileEvent.type=Chr(0)
bitmovinAdQuartileEvent.quartile=Chr(0)
if __OI0__10110_<>invalid
bitmovinAdQuartileEvent.type=m._rokuEventTypeToExternalBitmovinEventField[__OI0__10110_]
bitmovinAdQuartileEvent.quartile=m._bitmovinModelObjectMapper.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(&H64)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(108)+Chr(&H65)),__OI0__10110_)
end if
return bitmovinAdQuartileEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(66)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H42)+Chr(97)+Chr(&H73)+Chr(101)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_OOO_OI__100O)
baseEvent={}
baseEvent.type=_OOO_OI__100O
return baseEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H44)+Chr(111)+Chr(&H77)+Chr(110)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(70)+Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(100)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))]=function(_I_0IO_O_IOOO)
if _I_0IO_O_IOOO=invalid return invalid 
return m._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(&H53)+Chr(&H65)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(116)+Chr(&H49)+Chr(110)+Chr(102)+Chr(111)+Chr(&H72)+Chr(109)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(84)+Chr(&H6f)+Chr(68)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(&H64)+Chr(70)+Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(104)+Chr(101)+Chr(&H64)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),_I_0IO_O_IOOO) 
end function
this[(Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H4d)+Chr(101)+Chr(100)+Chr(&H69)+Chr(97)+Chr(81)+Chr(&H75)+Chr(97)+Chr(108)+Chr(105)+Chr(&H74)+Chr(121)+Chr(67)+Chr(&H68)+Chr(&H61)+Chr(&H6e)+Chr(&H67)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_00OO0I1_01__,__O001I_1O011,_0O_1__I1I1OO)
qualityChangedEvent={}
qualityChangedEvent.sourceQuality=invalid
qualityChangedEvent.targetQuality=invalid
qualityChangedEvent.type=_0O_1__I1I1OO
if _00OO0I1_01__<>invalid
qualityChangedEvent.sourceQuality=_00OO0I1_01__.quality
end if
if __O001I_1O011<>invalid
qualityChangedEvent.targetQuality=__O001I_1O011.quality
end if
return qualityChangedEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H49)+Chr(109)+Chr(&H70)+Chr(114)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(_I11_OO1OIOOI,_0I1_I_1IO_0I,_O1111I_11111,_011O__IO0O_O)
deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H44)+Chr(&H65)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(&H6f)))
appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(65)+Chr(&H70)+Chr(112)+Chr(&H49)+Chr(110)+Chr(102)+Chr(&H6f)))
impressionEvent={}
impressionEvent.response=_I11_OO1OIOOI
impressionEvent.type=_011O__IO0O_O
impressionEvent.version=_0I1_I_1IO_0I
impressionEvent.domain=appInfo.getID()+(Chr(46)+Chr(114)+Chr(111)+Chr(&H6b)+Chr(117))
impressionEvent.key=_O1111I_11111
impressionEvent.platform=deviceInfo.GetModelType()
return impressionEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(&H56)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H64)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(__11IOOIII0_I,_00_OO__OI_1I)
data=__11IOOIII0_I.getData()
licenseValidatedEvent={}
licenseValidatedEvent.type=_00_OO__OI_1I
licenseValidatedEvent.response=data.response
licenseValidatedEvent.responseCode=data.responseCode
return licenseValidatedEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H53)+Chr(99)+Chr(&H74)+Chr(101)+Chr(77)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(97)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))]=function(_O01II1_O0O0_,_O00__IOO_IOI,__OO1_II_0I10,____0_I_11I0I)
event=m.createBitmovinBaseEvent(____0_I_11I0I.METADATA)
event.metadata={id:_O01II1_O0O0_.id,cue:_O01II1_O0O0_.cue,start:_O00__IOO_IOI}
event.metadataType=__OO1_II_0I10.SCTE
return event 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(67)+Chr(104)+Chr(&H61)+Chr(110)+Chr(103)+Chr(101)+Chr(&H64)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74))]=function(_I101O00__1O0,_0IOI_I__110_)
timeChangedEvent=m.createBitmovinBaseEvent(_0IOI_I__110_.TIME_CHANGED)
timeChangedEvent.time=_I101O00__1O0
return timeChangedEvent 
end function
return this 
end function
