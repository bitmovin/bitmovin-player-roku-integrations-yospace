sub init()
m.BitmovinFields=_IOO11O01_10I()
m.RokuAdEvents=_10O11O1OOI01()
m.HttpRequestTypes=_00I110IO0OOI()
m.BitmovinPlayerStates=__O1_I_O1I_0_()
end sub
function createBitmovinAdFromRokuAd(_0O000OO01O0O)
bitmovinAd={}
bitmovinAd.data={}
bitmovinAd.clickThroughUrl=Chr(0)
bitmovinAd.companionAds=[]
bitmovinAd.id=Chr(0)
if _0O000OO01O0O=invalid or _0O000OO01O0O.Count()=0
return bitmovinAd 
else 
bitmovinAd.data=_0O000OO01O0O
end if
if _0O000OO01O0O.clickThrough<>invalid bitmovinAd.clickThroughUrl=_0O000OO01O0O.clickThrough
if _0O000OO01O0O.companionAds<>invalid bitmovinAd.companionAds=_0O000OO01O0O.companionAds
if _0O000OO01O0O.adId<>invalid bitmovinAd.id=_0O000OO01O0O.adId
return bitmovinAd 
end function
function createBitmovinAdBreakFromRokuAdBreak(_01_1O_00IO11)
bitmovinAdBreak={}
bitmovinAdBreak.ads=[]
bitmovinAdBreak.id=Chr(0)
bitmovinAdBreak.scheduleTime=-1
if _01_1O_00IO11=invalid return bitmovinAdBreak 
if _01_1O_00IO11.ads<>invalid
for each ad in _01_1O_00IO11.ads
bitmovinAdBreak.ads.Push(createBitmovinAdFromRokuAd(ad))
end for
end if
if _01_1O_00IO11.id<>invalid bitmovinAdBreak.id=_01_1O_00IO11.id
if _01_1O_00IO11.renderTime<>invalid bitmovinAdBreak.scheduleTime=_01_1O_00IO11.renderTime
return bitmovinAdBreak 
end function
function getAdQuartile(_I01O1_IIOI_1)
if _I01O1_IIOI_1=m.RokuAdEvents.FIRST_QUARTILE return(Chr(102)+Chr(105)+Chr(&H72)+Chr(&H73)+Chr(116)+Chr(81)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(108)+Chr(101)) 
if _I01O1_IIOI_1=m.RokuAdEvents.MIDPOINT return(Chr(109)+Chr(&H69)+Chr(&H64)+Chr(112)+Chr(&H6f)+Chr(105)+Chr(&H6e)+Chr(&H74)) 
if _I01O1_IIOI_1=m.RokuAdEvents.THIRD_QUARTILE return(Chr(&H74)+Chr(104)+Chr(&H69)+Chr(&H72)+Chr(100)+Chr(81)+Chr(117)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(105)+Chr(108)+Chr(&H65)) 
end function
function rokuEventTypeToBitmovinEventField(_OO0OI0I10_0I=invalid)
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
map[m.RokuAdEvents.PAUSE]=m.BitmovinPlayerStates.PAUSED
map[m.RokuAdEvents.RESUME]=m.BitmovinPlayerStates.PLAYING
return map 
end function
function rokuSegmentTypeToBitmovinHttpRequestType(_1I0_I_O1110O)
if _1I0_I_O1110O=0 or _1I0_I_O1110O=2 return m.HttpRequestTypes.MEDIA_VIDEO 
if _1I0_I_O1110O=1 return m.HttpRequestTypes.MEDIA_AUDIO 
if _1I0_I_O1110O=3 return m.HttpRequestTypes.MEDIA_SUBTITLES 
end function
function rokuSegmentInformationToDownloadFinishedEvent(_1IIO_O_00_1O)
event={}
event.downloadTime=(_1IIO_O_00_1O.downloadDuration/1000)
event.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(_1IIO_O_00_1O.SegType)
event.size=_1IIO_O_00_1O.SegSize
event.url=_1IIO_O_00_1O.SegUrl
event.type=m.BitmovinFields.DOWNLOAD_FINISHED
if _1IIO_O_00_1O.Status=0
event.success=(1=1)
else 
event.success=(1=2)
end if
return event 
end function
function createBitmovinSegmentFromRokuSegment(_1_0OI11__I0I)
bitmovinSegment={}
quality={bitrate:_1_0OI11__I0I.BitrateBPS}
bitmovinSegment.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(_1_0OI11__I0I.segType)
bitmovinSegment.quality=quality
return bitmovinSegment 
end function
function rokuVideoErrorCodeToBitmovinErrorCode(___1I01O1100_)
errors={"0":1400,"-1":1400,"-2":1400,"-3":1000,"-4":1201,"-5":1300,"-6":2000}
error=errors[___1I01O1100_.toStr()]
if error<>invalid
return error 
else 
return 1000 
end if
end function
