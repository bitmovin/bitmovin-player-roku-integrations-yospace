sub init()
m.BitmovinFields=__OO101I00OOO()
m.RokuAdEvents=_1_IIO0I11I0I()
m.HttpRequestTypes=_O0000O11_O00()
end sub
function createBitmovinAdFromRokuAd(_I___0__11O_1)
bitmovinAd={}
bitmovinAd.data={}
bitmovinAd.clickThroughUrl=Chr(0)
bitmovinAd.companionAds=[]
bitmovinAd.id=Chr(0)
if _I___0__11O_1=invalid or _I___0__11O_1.Count()=0
return bitmovinAd 
else 
bitmovinAd.data=_I___0__11O_1
end if
if _I___0__11O_1.clickThrough<>invalid bitmovinAd.clickThroughUrl=_I___0__11O_1.clickThrough
if _I___0__11O_1.companionAds<>invalid bitmovinAd.companionAds=_I___0__11O_1.companionAds
if _I___0__11O_1.adId<>invalid bitmovinAd.id=_I___0__11O_1.adId
return bitmovinAd 
end function
function createBitmovinAdBreakFromRokuAdBreak(_I_1OII1I_O1I)
bitmovinAdBreak={}
bitmovinAdBreak.ads=[]
bitmovinAdBreak.id=Chr(0)
bitmovinAdBreak.scheduleTime=-1
if _I_1OII1I_O1I=invalid return bitmovinAdBreak 
if _I_1OII1I_O1I.ads<>invalid
for each ad in _I_1OII1I_O1I.ads
bitmovinAdBreak.ads.Push(createBitmovinAdFromRokuAd(ad))
end for
end if
if _I_1OII1I_O1I.id<>invalid bitmovinAdBreak.id=_I_1OII1I_O1I.id
if _I_1OII1I_O1I.renderTime<>invalid bitmovinAdBreak.scheduleTime=_I_1OII1I_O1I.renderTime
return bitmovinAdBreak 
end function
function getAdQuartile(_0OOIO000IOIO)
if _0OOIO000IOIO=m.RokuAdEvents.FIRST_QUARTILE return(Chr(102)+Chr(105)+Chr(&H72)+Chr(&H73)+Chr(&H74)+Chr(81)+Chr(117)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(&H6c)+Chr(&H65)) 
if _0OOIO000IOIO=m.RokuAdEvents.MIDPOINT return(Chr(109)+Chr(105)+Chr(&H64)+Chr(112)+Chr(111)+Chr(105)+Chr(110)+Chr(&H74)) 
if _0OOIO000IOIO=m.RokuAdEvents.THIRD_QUARTILE return(Chr(&H74)+Chr(104)+Chr(&H69)+Chr(114)+Chr(100)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(105)+Chr(108)+Chr(&H65)) 
end function
function rokuEventTypeToBitmovinEventField(_1O_0OO011I_O=invalid)
map={}
map[m.RokuAdEvents.POD_START]=m.BitmovinFields.AD_BREAK_STARTED
map[m.RokuAdEvents.POD_COMPLETE]=m.BitmovinFields.AD_BREAK_FINISHED
map[m.RokuAdEvents.ACCEPT_INVITATION]=m.BitmovinFields.AD_INTERACTION
map[m.RokuAdEvents.ERROR]=m.BitmovinFields.AD_ERROR
map[m.RokuAdEvents.NO_ADS_ERROR]=m.BitmovinFields.AD_ERROR
map[m.RokuAdEvents.COMPLETE]=m.BitmovinFields.AD_FINISHED
map[m.RokuAdEvents.FIRST_QUARTILE]=m.BitmovinFields.AD_QUARTILE
map[m.RokuAdEvents.MIDPOINT]=m.BitmovinFields.AD_QUARTILE
map[m.RokuAdEvents.THIRD_QUARTILE]=m.BitmovinFields.AD_QUARTILE
map[m.RokuAdEvents.START]=m.BitmovinFields.AD_STARTED
map[m.RokuAdEvents.SKIP]=m.BitmovinFields.AD_SKIPPED
map[m.RokuAdEvents.CLOSE]=m.BitmovinFields.AD_SKIPPED
return map 
end function
function _I1_IOII1O1I1(_1OO0101O_0O0)
if _1OO0101O_0O0=0 or _1OO0101O_0O0=2 return m.HttpRequestTypes.MEDIA_VIDEO 
if _1OO0101O_0O0=1 return m.HttpRequestTypes.MEDIA_AUDIO 
if _1OO0101O_0O0=3 return m.HttpRequestTypes.MEDIA_SUBTITLES 
end function
function rokuSegmentInformationToDownloadFinishedEvent(_IO__1II1OI0I)
event={}
event.downloadTime=(_IO__1II1OI0I.downloadDuration/1000)
event.downloadType=_I1_IOII1O1I1(_IO__1II1OI0I.SegType)
event.size=_IO__1II1OI0I.SegSize
event.url=_IO__1II1OI0I.SegUrl
event.type=m.BitmovinFields.DOWNLOAD_FINISHED
if _IO__1II1OI0I.Status=0
event.success=(1=1)
else 
event.success=(1=2)
end if
return event 
end function
function createBitmovinSegmentFromRokuSegment(_0_0_I1_1O00_)
bitmovinSegment={}
quality={bitrate:_0_0_I1_1O00_.BitrateBPS}
bitmovinSegment.downloadType=_I1_IOII1O1I1(_0_0_I1_1O00_.segType)
bitmovinSegment.quality=quality
return bitmovinSegment 
end function
function rokuVideoErrorCodeToBitmovinErrorCode(_O_OO_I1__0_I)
errors={"0":1400,"-1":1400,"-2":1400,"-3":1000,"-4":1201,"-5":1300,"-6":2000}
error=errors[_O_OO_I1__0_I.toStr()]
if error<>invalid
return error 
else 
return 1000 
end if
end function
