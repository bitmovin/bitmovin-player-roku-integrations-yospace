function _111O_11__11O()
this={}
this[(Chr(95)+Chr(98)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H4d)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(97)+Chr(112)+Chr(&H70)+Chr(101)+Chr(&H72))]=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H4d)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(116)+Chr(77)+Chr(&H61)+Chr(&H70)+Chr(112)+Chr(101)+Chr(&H72)))
this[(Chr(&H5f)+Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)+Chr(84)+Chr(121)+Chr(112)+Chr(101)+Chr(84)+Chr(111)+Chr(69)+Chr(&H78)+Chr(116)+Chr(&H65)+Chr(&H72)+Chr(&H6e)+Chr(&H61)+Chr(&H6c)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H46)+Chr(105)+Chr(101)+Chr(&H6c)+Chr(100))]=this._bitmovinModelObjectMapper.callFunc((Chr(114)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(84)+Chr(&H79)+Chr(112)+Chr(&H65)+Chr(&H54)+Chr(111)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H46)+Chr(&H69)+Chr(101)+Chr(108)+Chr(100)),invalid)
this[(Chr(&H5f)+Chr(&H64)+Chr(101)+Chr(&H66)+Chr(&H69)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(99)+Chr(121)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(121))]=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H44)+Chr(101)+Chr(102)+Chr(105)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(&H46)+Chr(97)+Chr(99)+Chr(&H74)+Chr(&H6f)+Chr(&H72)+Chr(&H79)))
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(65)+Chr(100)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116))]=function(_1I_0O0_10_1_)
bitmovinAdEvent={}
bitmovinAdEvent.type=Chr(0)
bitmovinAdEvent.ad={}
if _1I_0O0_10_1_=invalid return bitmovinAdEvent 
if _1I_0O0_10_1_.type<>invalid bitmovinAdEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_1I_0O0_10_1_.type]
if _1I_0O0_10_1_.ad<>invalid bitmovinAdEvent.ad=m._bitmovinModelObjectMapper.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(65)+Chr(100)+Chr(70)+Chr(&H72)+Chr(111)+Chr(109)+Chr(82)+Chr(111)+Chr(107)+Chr(117)+Chr(&H41)+Chr(100)),_1I_0O0_10_1_.ad)
return bitmovinAdEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(65)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(&H61)+Chr(&H6b)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))]=function(_01OI0_I_I_O1,__0_O0OOI0__0)
bitmovinAdBreakEvent={}
bitmovinAdBreakEvent.type=Chr(0)
bitmovinAdBreakEvent.adBreak={}
if __0_O0OOI0__0<>invalid bitmovinAdBreakEvent.type=m._rokuEventTypeToExternalBitmovinEventField[__0_O0OOI0__0]
if _01OI0_I_I_O1<>invalid bitmovinAdBreakEvent.adBreak=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(66)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(65)+Chr(&H64)+Chr(66)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(107)+Chr(70)+Chr(&H72)+Chr(&H6f)+Chr(&H6d)+Chr(&H52)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(&H41)+Chr(&H64)+Chr(66)+Chr(&H72)+Chr(101)+Chr(97)+Chr(107)),_01OI0_I_I_O1)
return bitmovinAdBreakEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(65)+Chr(100)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116))]=function(_01II0_00_I1_,_IO00I_00OOO1)
errors=m._deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(69)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(115)))
bitmovinAdErrorEvent={}
errorType=m._rokuEventTypeToExternalBitmovinEventField[_IO00I_00OOO1]
bitmovinAdErrorEvent=m._deficiencyFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)),errors.MODULE_ADVERTISING_ERROR,Chr(0),_01II0_00_I1_,errorType)
return bitmovinAdErrorEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H41)+Chr(100)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74))]=function(__01I01III1II)
bitmovinAdQuartileEvent={}
bitmovinAdQuartileEvent.type=Chr(0)
bitmovinAdQuartileEvent.quartile=Chr(0)
if __01I01III1II<>invalid bitmovinAdQuartileEvent.type=m._rokuEventTypeToExternalBitmovinEventField[__01I01III1II]
if rokuAdQuartileEventData<>invalid bitmovinAdQuartileEvent.quartile=m._bitmovinModelObjectMapper.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(65)+Chr(100)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(108)+Chr(&H65)),__01I01III1II)
return bitmovinAdQuartileEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(&H42)+Chr(97)+Chr(115)+Chr(&H65)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74))]=function(_0O1O_O0I0000)
baseEvent={}
baseEvent.type=_0O1O_O0I0000
return baseEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(&H44)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(111)+Chr(97)+Chr(&H64)+Chr(70)+Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(100)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))]=function(_O0I_0OO__01I)
if _O0I_0OO__01I=invalid return invalid 
return m._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(107)+Chr(&H75)+Chr(&H53)+Chr(&H65)+Chr(&H67)+Chr(109)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(102)+Chr(111)+Chr(114)+Chr(109)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(84)+Chr(&H6f)+Chr(&H44)+Chr(111)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(&H46)+Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H73)+Chr(104)+Chr(101)+Chr(100)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)),_O0I_0OO__01I) 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H4d)+Chr(101)+Chr(100)+Chr(&H69)+Chr(97)+Chr(81)+Chr(&H75)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H74)+Chr(&H79)+Chr(&H43)+Chr(&H68)+Chr(97)+Chr(110)+Chr(&H67)+Chr(101)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(_0IIIO110O1_0,_IO_I0III1__1,_1I_0O000I11_)
qualityChangedEvent={}
qualityChangedEvent.sourceQuality=invalid
qualityChangedEvent.targetQuality=invalid
qualityChangedEvent.type=_1I_0O000I11_
if _0IIIO110O1_0<>invalid
qualityChangedEvent.sourceQuality=_0IIIO110O1_0.quality
end if
if _IO_I0III1__1<>invalid
qualityChangedEvent.targetQuality=_IO_I0III1__1.quality
end if
return qualityChangedEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(&H49)+Chr(109)+Chr(112)+Chr(114)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(__1I_10_1I0IO,__0OO__1_OIOI,_I00O10II1IIO,_1_1O_I_1__1O)
deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(68)+Chr(101)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(73)+Chr(&H6e)+Chr(102)+Chr(111)))
appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(65)+Chr(&H70)+Chr(&H70)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
impressionEvent={}
impressionEvent.response=__1I_10_1I0IO
impressionEvent.type=_1_1O_I_1__1O
impressionEvent.version=__0OO__1_OIOI
impressionEvent.domain=appInfo.getID()+(Chr(46)+Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(&H75))
impressionEvent.key=_I00O10II1IIO
impressionEvent.platform=deviceInfo.GetModelType()
return impressionEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H4c)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(&H56)+Chr(97)+Chr(108)+Chr(105)+Chr(100)+Chr(97)+Chr(&H74)+Chr(101)+Chr(100)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116))]=function(_01O1_OI_I011,___OOI__1010_)
data=_01O1_OI_I011.getData()
licenseValidatedEvent={}
licenseValidatedEvent.type=___OOI__1010_
licenseValidatedEvent.response=data.response
licenseValidatedEvent.responseCode=data.responseCode
return licenseValidatedEvent 
end function
this[(Chr(99)+Chr(114)+Chr(101)+Chr(97)+Chr(116)+Chr(&H65)+Chr(83)+Chr(&H63)+Chr(&H74)+Chr(&H65)+Chr(77)+Chr(101)+Chr(&H74)+Chr(97)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H61)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74))]=function(_I1OO__011III,_IO0_000_0010,_II11_100_IIO,_0OI11_I_1_I_)
event=m.createBitmovinBaseEvent(_0OI11_I_1_I_.METADATA)
event.metadata={id:_I1OO__011III.id,cue:_I1OO__011III.cue,start:_IO0_000_0010}
event.metadataType=_II11_100_IIO.SCTE
return event 
end function
return this 
end function
