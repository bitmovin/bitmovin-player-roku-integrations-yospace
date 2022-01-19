function __0OI1I1OII__(_I_OO011I1_1O)
this={}
this[(Chr(95)+Chr(&H62)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(70)+Chr(&H69)+Chr(&H65)+Chr(&H6c)+Chr(&H64)+Chr(&H73))]=_I_OO011I1_1O
this[(Chr(&H5f)+Chr(&H62)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H4d)+Chr(&H6f)+Chr(&H64)+Chr(101)+Chr(&H6c)+Chr(&H4f)+Chr(&H62)+Chr(106)+Chr(101)+Chr(&H63)+Chr(116)+Chr(77)+Chr(97)+Chr(&H70)+Chr(112)+Chr(101)+Chr(114))]=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(&H65)+Chr(99)+Chr(&H74)+Chr(&H4d)+Chr(&H61)+Chr(&H70)+Chr(&H70)+Chr(101)+Chr(&H72)))
this[(Chr(95)+Chr(114)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H54)+Chr(121)+Chr(&H70)+Chr(101)+Chr(84)+Chr(111)+Chr(&H45)+Chr(120)+Chr(&H74)+Chr(101)+Chr(114)+Chr(&H6e)+Chr(97)+Chr(108)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(70)+Chr(&H69)+Chr(101)+Chr(108)+Chr(100))]=this._bitmovinModelObjectMapper.callFunc((Chr(114)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(84)+Chr(121)+Chr(112)+Chr(101)+Chr(&H54)+Chr(111)+Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(70)+Chr(&H69)+Chr(101)+Chr(&H6c)+Chr(&H64)),invalid)
this[(Chr(&H5f)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(&H65))]=CreateObject((Chr(&H72)+Chr(111)+Chr(68)+Chr(97)+Chr(&H74)+Chr(101)+Chr(84)+Chr(105)+Chr(&H6d)+Chr(101)))
this._dateTime.toLocalTime()
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H42)+Chr(&H61)+Chr(&H73)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_O01O11O____1=Chr(0))
baseEvent={}
baseEvent.type=_O01O11O____1
baseEvent.timeStamp=m._dateTime.toISOString()
return baseEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(65)+Chr(100)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74))]=function(_100IIOOI_1_1)
bitmovinAdEvent=m.createBitmovinBaseEvent()
bitmovinAdEvent.ad={}
if _100IIOOI_1_1=invalid return bitmovinAdEvent 
if _100IIOOI_1_1.type<>invalid bitmovinAdEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_100IIOOI_1_1.type]
if _100IIOOI_1_1.ad<>invalid bitmovinAdEvent.ad=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H41)+Chr(100)+Chr(&H46)+Chr(114)+Chr(&H6f)+Chr(109)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(65)+Chr(100)),_100IIOOI_1_1.ad)
return bitmovinAdEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(65)+Chr(100)+Chr(66)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H6b)+Chr(69)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_1OO_II__O0_I,_0IIIO10O_1OI=Chr(0))
bitmovinAdBreakEvent=m.createBitmovinBaseEvent()
bitmovinAdBreakEvent.adBreak={}
bitmovinAdBreakEvent.type=Chr(0)
if _0IIIO10O_1OI<>invalid bitmovinAdBreakEvent.type=_0IIIO10O_1OI
if _1OO_II__O0_I<>invalid bitmovinAdBreakEvent.adBreak=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(65)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H6b)+Chr(&H46)+Chr(&H72)+Chr(111)+Chr(&H6d)+Chr(&H52)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(65)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(107)),_1OO_II__O0_I)
return bitmovinAdBreakEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(65)+Chr(&H64)+Chr(81)+Chr(117)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(69)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_IOOI101011_0)
bitmovinAdQuartileEvent=m.createBitmovinBaseEvent()
bitmovinAdQuartileEvent.quartile=Chr(0)
if _IOOI101011_0<>invalid
bitmovinAdQuartileEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_IOOI101011_0]
bitmovinAdQuartileEvent.quartile=m._bitmovinModelObjectMapper.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(&H41)+Chr(100)+Chr(&H51)+Chr(117)+Chr(97)+Chr(&H72)+Chr(116)+Chr(105)+Chr(&H6c)+Chr(101)),_IOOI101011_0)
end if
return bitmovinAdQuartileEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(68)+Chr(111)+Chr(&H77)+Chr(110)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(70)+Chr(&H69)+Chr(110)+Chr(105)+Chr(115)+Chr(&H68)+Chr(101)+Chr(100)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_OIO1I__O00_0)
if _OIO1I__O00_0=invalid return invalid 
return m._bitmovinModelObjectMapper.callFunc((Chr(114)+Chr(111)+Chr(107)+Chr(&H75)+Chr(83)+Chr(101)+Chr(103)+Chr(109)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(110)+Chr(102)+Chr(&H6f)+Chr(&H72)+Chr(&H6d)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H54)+Chr(&H6f)+Chr(&H44)+Chr(111)+Chr(119)+Chr(&H6e)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)+Chr(&H46)+Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(115)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)),_OIO1I__O00_0) 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H56)+Chr(105)+Chr(&H64)+Chr(101)+Chr(&H6f)+Chr(81)+Chr(117)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(116)+Chr(121)+Chr(&H43)+Chr(&H68)+Chr(97)+Chr(110)+Chr(&H67)+Chr(&H65)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_0_011_OIII00,_OI1II000O1_O)
qualityChangedEvent=m.createBitmovinBaseEvent(m._bitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED)
qualityChangedEvent.sourceQuality=invalid
qualityChangedEvent.targetQuality=invalid
if _0_011_OIII00<>invalid
qualityChangedEvent.sourceQuality=_0_011_OIII00.quality
end if
if _OI1II000O1_O<>invalid
qualityChangedEvent.targetQuality=_OI1II000O1_O.quality
end if
return qualityChangedEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(65)+Chr(117)+Chr(&H64)+Chr(&H69)+Chr(111)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H74)+Chr(&H79)+Chr(&H43)+Chr(&H68)+Chr(&H61)+Chr(&H6e)+Chr(&H67)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_1_O11O_1_0_I,_011_1I_1__01)
qualityChangedEvent=m.createBitmovinBaseEvent(m._bitmovinFields.AUDIO_DOWNLOAD_QUALITY_CHANGED)
qualityChangedEvent.sourceQuality=invalid
qualityChangedEvent.targetQuality=invalid
if _1_O11O_1_0_I<>invalid
qualityChangedEvent.sourceQuality=_1_O11O_1_0_I.quality
end if
if _011_1I_1__01<>invalid
qualityChangedEvent.targetQuality=_011_1I_1__01.quality
end if
return qualityChangedEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H49)+Chr(&H6d)+Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(_10__IOO10OOO,___111OOO_O0_,_1I_O01__101_)
deviceInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(&H6f)))
appInfo=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(&H70)+Chr(&H70)+Chr(&H49)+Chr(110)+Chr(102)+Chr(111)))
impressionEvent=m.createBitmovinBaseEvent(m._bitmovinFields.IMPRESSION)
impressionEvent.response=_10__IOO10OOO
impressionEvent.version=___111OOO_O0_
impressionEvent.domain=appInfo.getID()+(Chr(46)+Chr(&H72)+Chr(111)+Chr(107)+Chr(&H75))
impressionEvent.key=_1I_O01__101_
impressionEvent.platform=deviceInfo.GetModelType()
return impressionEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(110)+Chr(&H73)+Chr(101)+Chr(&H56)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H64)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116))]=function(_O0_11_00OI01)
licenseValidatedEvent=m.createBitmovinBaseEvent(m._bitmovinFields.LICENSE_VALIDATED)
licenseValidatedEvent.response=_O0_11_00OI01.response
licenseValidatedEvent.responseCode=_O0_11_00OI01.responseCode
return licenseValidatedEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H53)+Chr(99)+Chr(116)+Chr(101)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(&H61)+Chr(&H64)+Chr(97)+Chr(116)+Chr(&H61)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74))]=function(_11O1IOO1I_0_,_O1_1001O00_O,__I__OO10OI00)
event=m.createBitmovinBaseEvent(m._bitmovinFields.METADATA)
event.metadata={id:_11O1IOO1I_0_.id,cue:_11O1IOO1I_0_.cue,start:_O1_1001O00_O}
event.metadataType=__I__OO10OI00.SCTE
return event 
end function
this[(Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H54)+Chr(&H69)+Chr(109)+Chr(&H65)+Chr(67)+Chr(&H68)+Chr(&H61)+Chr(110)+Chr(&H67)+Chr(101)+Chr(100)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116))]=function(_OI_OIO0_I0O0)
timeChangedEvent=m.createBitmovinBaseEvent(m._bitmovinFields.TIME_CHANGED)
timeChangedEvent.time=_OI_OIO0_I0O0
return timeChangedEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_00___1II0OOO,_1O1_I0I10_0I,_O1011011I0I_,_I1IO_O_I1111)
errorEvent=m.createBitmovinBaseEvent(m._bitmovinFields.ERROR)
errorEvent.code=_00___1II0OOO
errorEvent.message=_1O1_I0I10_0I
errorEvent.name=_O1011011I0I_
errorEvent.data=_I1IO_O_I1111
return errorEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(65)+Chr(100)+Chr(69)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74))]=function(__I0II01__IOO)
bitmovinAdErrorEvent={}
bitmovinAdErrorEvent.data=__I0II01__IOO
bitmovinAdErrorEvent.type=m._bitmovinFields.AD_ERROR
return bitmovinAdErrorEvent 
end function
return this 
end function
