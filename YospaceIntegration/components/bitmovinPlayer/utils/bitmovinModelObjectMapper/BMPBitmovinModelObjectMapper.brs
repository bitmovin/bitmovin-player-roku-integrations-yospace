sub init()
m.BitmovinFields=_0OOO_00I01OO()
m.RokuAdEvents=__I10III_011_()
m.HttpRequestTypes=_II0I000III__()
m.BitmovinPlayerStates=_I1O_I1IO0010()
end sub
function createBitmovinAdFromRokuAd(_I__II_1OOOIO)
bitmovinAd={}
bitmovinAd.data={}
bitmovinAd.clickThroughUrl=Chr(0)
bitmovinAd.companionAds=[]
bitmovinAd.id=Chr(0)
if _I__II_1OOOIO=invalid or _I__II_1OOOIO.Count()=0
return bitmovinAd 
else 
bitmovinAd.data=_I__II_1OOOIO
end if
if _I__II_1OOOIO.clickThrough<>invalid bitmovinAd.clickThroughUrl=_I__II_1OOOIO.clickThrough
if _I__II_1OOOIO.companionAds<>invalid bitmovinAd.companionAds=_I__II_1OOOIO.companionAds
if _I__II_1OOOIO.adId<>invalid bitmovinAd.id=_I__II_1OOOIO.adId
return bitmovinAd 
end function
function createBitmovinAdBreakFromRokuAdBreak(_1_II_OIIOOO_)
bitmovinAdBreak={}
bitmovinAdBreak.ads=[]
bitmovinAdBreak.id=Chr(0)
bitmovinAdBreak.scheduleTime=-1
if _1_II_OIIOOO_=invalid return bitmovinAdBreak 
if _1_II_OIIOOO_.ads<>invalid
for each ad in _1_II_OIIOOO_.ads
bitmovinAdBreak.ads.Push(createBitmovinAdFromRokuAd(ad))
end for
end if
if _1_II_OIIOOO_.id<>invalid bitmovinAdBreak.id=_1_II_OIIOOO_.id
if _1_II_OIIOOO_.renderTime<>invalid bitmovinAdBreak.scheduleTime=_1_II_OIIOOO_.renderTime
return bitmovinAdBreak 
end function
function getAdQuartile(__000OI00I0IO)
if __000OI00I0IO=m.RokuAdEvents.FIRST_QUARTILE return(Chr(102)+Chr(&H69)+Chr(114)+Chr(115)+Chr(116)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(114)+Chr(&H74)+Chr(105)+Chr(108)+Chr(101)) 
if __000OI00I0IO=m.RokuAdEvents.MIDPOINT return(Chr(&H6d)+Chr(&H69)+Chr(100)+Chr(&H70)+Chr(&H6f)+Chr(105)+Chr(110)+Chr(&H74)) 
if __000OI00I0IO=m.RokuAdEvents.THIRD_QUARTILE return(Chr(116)+Chr(104)+Chr(&H69)+Chr(114)+Chr(&H64)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(&H6c)+Chr(&H65)) 
end function
function rokuEventTypeToBitmovinEventField(_I01O__1_IOII=invalid)
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
function rokuSegmentTypeToBitmovinHttpRequestType(_011I1_I1OO1_)
if _011I1_I1OO1_=0 or _011I1_I1OO1_=2 return m.HttpRequestTypes.MEDIA_VIDEO 
if _011I1_I1OO1_=1 return m.HttpRequestTypes.MEDIA_AUDIO 
if _011I1_I1OO1_=3 return m.HttpRequestTypes.MEDIA_SUBTITLES 
end function
function rokuSegmentInformationToDownloadFinishedEvent(__OO0___1I1O0)
event={}
event.downloadTime=(__OO0___1I1O0.downloadDuration/1000)
event.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(__OO0___1I1O0.SegType)
event.size=__OO0___1I1O0.SegSize
event.url=__OO0___1I1O0.SegUrl
event.type=m.BitmovinFields.DOWNLOAD_FINISHED
if __OO0___1I1O0.Status=0
event.success=(1=1)
else 
event.success=(1=2)
end if
return event 
end function
function createBitmovinSegmentFromRokuSegment(_100OI0IOO01I)
bitmovinSegment={}
quality={bitrate:_100OI0IOO01I.BitrateBPS}
bitmovinSegment.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(_100OI0IOO01I.segType)
bitmovinSegment.quality=quality
return bitmovinSegment 
end function
function rokuVideoErrorCodeToBitmovinErrorCode(_0OII001OO0__)
errors={"0":1400,"-1":1400,"-2":1400,"-3":1000,"-4":1201,"-5":1300,"-6":2000}
error=errors[_0OII001OO0__.toStr()]
if error<>invalid
return error 
else 
return 1000 
end if
end function
