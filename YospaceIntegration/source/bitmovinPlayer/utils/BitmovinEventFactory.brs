function _0I__010_III_()
this={}
this[(Chr(&H5f)+Chr(98)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(101)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(&H6a)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(77)+Chr(97)+Chr(&H70)+Chr(112)+Chr(101)+Chr(&H72))]=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(101)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(&H63)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(112)+Chr(&H70)+Chr(101)+Chr(&H72)))
this[(Chr(&H5f)+Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H54)+Chr(121)+Chr(&H70)+Chr(101)+Chr(84)+Chr(111)+Chr(69)+Chr(&H78)+Chr(116)+Chr(101)+Chr(&H72)+Chr(&H6e)+Chr(97)+Chr(&H6c)+Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H46)+Chr(&H69)+Chr(&H65)+Chr(&H6c)+Chr(&H64))]=this._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(69)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H54)+Chr(121)+Chr(112)+Chr(101)+Chr(&H54)+Chr(&H6f)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(70)+Chr(105)+Chr(&H65)+Chr(&H6c)+Chr(100)),invalid)
this[(Chr(95)+Chr(100)+Chr(101)+Chr(102)+Chr(105)+Chr(&H63)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(99)+Chr(121)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(&H72)+Chr(121))]=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H44)+Chr(&H65)+Chr(&H66)+Chr(&H69)+Chr(&H63)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(99)+Chr(121)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(111)+Chr(&H72)+Chr(121)))
this[(Chr(&H63)+Chr(114)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(66)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H41)+Chr(&H64)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116))]=function(__I10OI_00_OI)
bitmovinAdEvent={}
bitmovinAdEvent.type=Chr(0)
bitmovinAdEvent.ad={}
if __I10OI_00_OI=invalid return bitmovinAdEvent 
if __I10OI_00_OI.type<>invalid bitmovinAdEvent.type=m._rokuEventTypeToExternalBitmovinEventField[__I10OI_00_OI.type]
if __I10OI_00_OI.ad<>invalid bitmovinAdEvent.ad=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(66)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H41)+Chr(100)+Chr(70)+Chr(114)+Chr(&H6f)+Chr(&H6d)+Chr(82)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(&H41)+Chr(&H64)),__I10OI_00_OI.ad)
return bitmovinAdEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H6b)+Chr(69)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74))]=function(___OIIIII1II0,_IO_O_10_0_00)
bitmovinAdBreakEvent={}
bitmovinAdBreakEvent.type=Chr(0)
bitmovinAdBreakEvent.adBreak={}
if _IO_O_10_0_00<>invalid bitmovinAdBreakEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_IO_O_10_0_00]
if ___OIIIII1II0<>invalid bitmovinAdBreakEvent.adBreak=m._bitmovinModelObjectMapper.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(65)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(97)+Chr(107)+Chr(70)+Chr(114)+Chr(111)+Chr(&H6d)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(&H41)+Chr(&H64)+Chr(&H42)+Chr(114)+Chr(101)+Chr(97)+Chr(&H6b)),___OIIIII1II0)
return bitmovinAdBreakEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H41)+Chr(&H64)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(69)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_OI1O__01O1O_,_O1II_I101I00)
errors=m._deficiencyFactory.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(115)))
bitmovinAdErrorEvent={}
errorType=m._rokuEventTypeToExternalBitmovinEventField[_O1II_I101I00]
bitmovinAdErrorEvent=m._deficiencyFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)),errors.MODULE_ADVERTISING_ERROR,Chr(0),_OI1O__01O1O_,errorType)
return bitmovinAdErrorEvent 
end function
this[(Chr(99)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H41)+Chr(100)+Chr(81)+Chr(&H75)+Chr(97)+Chr(114)+Chr(&H74)+Chr(105)+Chr(108)+Chr(101)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(_0____0IO__1I)
bitmovinAdQuartileEvent={}
bitmovinAdQuartileEvent.type=Chr(0)
bitmovinAdQuartileEvent.quartile=Chr(0)
if _0____0IO__1I<>invalid
bitmovinAdQuartileEvent.type=m._rokuEventTypeToExternalBitmovinEventField[_0____0IO__1I]
bitmovinAdQuartileEvent.quartile=m._bitmovinModelObjectMapper.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(100)+Chr(81)+Chr(117)+Chr(97)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(101)),_0____0IO__1I)
end if
return bitmovinAdQuartileEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(66)+Chr(97)+Chr(115)+Chr(&H65)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116))]=function(__I_00__1O011)
baseEvent={}
baseEvent.type=__I_00__1O011
return baseEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(68)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(70)+Chr(105)+Chr(110)+Chr(&H69)+Chr(115)+Chr(104)+Chr(101)+Chr(&H64)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(_1__IOO1O1_00)
if _1__IOO1O1_00=invalid return invalid 
return m._bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(&H53)+Chr(&H65)+Chr(103)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)+Chr(&H72)+Chr(&H6d)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(84)+Chr(111)+Chr(68)+Chr(&H6f)+Chr(119)+Chr(&H6e)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(&H64)+Chr(&H46)+Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(&H68)+Chr(101)+Chr(&H64)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)),_1__IOO1O1_00) 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H4d)+Chr(&H65)+Chr(100)+Chr(105)+Chr(&H61)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(116)+Chr(&H79)+Chr(67)+Chr(104)+Chr(&H61)+Chr(&H6e)+Chr(&H67)+Chr(101)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74))]=function(__OOO_1010__1,_100_IOO_0O1O,_I0I0OI1O0000)
qualityChangedEvent={}
qualityChangedEvent.sourceQuality=invalid
qualityChangedEvent.targetQuality=invalid
qualityChangedEvent.type=_I0I0OI1O0000
if __OOO_1010__1<>invalid
qualityChangedEvent.sourceQuality=__OOO_1010__1.quality
end if
if _100_IOO_0O1O<>invalid
qualityChangedEvent.targetQuality=_100_IOO_0O1O.quality
end if
return qualityChangedEvent 
end function
this[(Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(73)+Chr(109)+Chr(&H70)+Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H69)+Chr(111)+Chr(110)+Chr(69)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116))]=function(_1O_O_I0II_0I,__0_1O__I_01O,_0O01IO_10___,__0_O110I_O00)
deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H44)+Chr(&H65)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(73)+Chr(110)+Chr(&H66)+Chr(111)))
appInfo=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(112)+Chr(112)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
impressionEvent={}
impressionEvent.response=_1O_O_I0II_0I
impressionEvent.type=__0_O110I_O00
impressionEvent.version=__0_1O__I_01O
impressionEvent.domain=appInfo.getID()+(Chr(&H2e)+Chr(&H72)+Chr(&H6f)+Chr(107)+Chr(&H75))
impressionEvent.key=_0O01IO_10___
impressionEvent.platform=deviceInfo.GetModelType()
return impressionEvent 
end function
this[(Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(101)+Chr(76)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(110)+Chr(&H73)+Chr(&H65)+Chr(86)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H64)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(__0I0IO1OOOI_,__10_1I0I_0_O)
data=__0I0IO1OOOI_.getData()
licenseValidatedEvent={}
licenseValidatedEvent.type=__10_1I0I_0_O
licenseValidatedEvent.response=data.response
licenseValidatedEvent.responseCode=data.responseCode
return licenseValidatedEvent 
end function
this[(Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(&H53)+Chr(&H63)+Chr(&H74)+Chr(101)+Chr(77)+Chr(&H65)+Chr(&H74)+Chr(&H61)+Chr(100)+Chr(97)+Chr(&H74)+Chr(97)+Chr(69)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74))]=function(__IOIII_I_1_I,_0O_1_1O___11,_0_0II11II11O,__0_0O10_1I0O)
event=m.createBitmovinBaseEvent(__0_0O10_1I0O.METADATA)
event.metadata={id:__IOIII_I_1_I.id,cue:__IOIII_I_1_I.cue,start:_0O_1_1O___11}
event.metadataType=_0_0II11II11O.SCTE
return event 
end function
this[(Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(84)+Chr(105)+Chr(109)+Chr(&H65)+Chr(67)+Chr(104)+Chr(97)+Chr(110)+Chr(&H67)+Chr(&H65)+Chr(&H64)+Chr(69)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74))]=function(___1IO0I1I1IO,_10IOIIOOI1__)
timeChangedEvent=m.createBitmovinBaseEvent(_10IOIIOOI1__.TIME_CHANGED)
timeChangedEvent.time=___1IO0I1I1IO
return timeChangedEvent 
end function
return this 
end function
