sub init()
m.BitmovinFields=_0O1I0_1O_O0I()
m.RokuAdEvents=_10_0_I0000O1()
m.HttpRequestTypes=_O00_0O10II__()
m.BitmovinPlayerStates=__OII0I0O_O01()
end sub
function createBitmovinAdFromRokuAd(_O_011O1_I0I0)
bitmovinAd={}
bitmovinAd.data={}
bitmovinAd.clickThroughUrl=Chr(0)
bitmovinAd.companionAds=[]
bitmovinAd.id=Chr(0)
if _O_011O1_I0I0=invalid or _O_011O1_I0I0.Count()=0
return bitmovinAd 
else 
bitmovinAd.data=_O_011O1_I0I0
end if
if _O_011O1_I0I0.clickThrough<>invalid bitmovinAd.clickThroughUrl=_O_011O1_I0I0.clickThrough
if _O_011O1_I0I0.companionAds<>invalid bitmovinAd.companionAds=_O_011O1_I0I0.companionAds
if _O_011O1_I0I0.adId<>invalid bitmovinAd.id=_O_011O1_I0I0.adId
return bitmovinAd 
end function
function createBitmovinAdBreakFromRokuAdBreak(_1O_IO1IOO0O1)
bitmovinAdBreak={}
bitmovinAdBreak.ads=[]
bitmovinAdBreak.id=Chr(0)
bitmovinAdBreak.scheduleTime=-1
if _1O_IO1IOO0O1=invalid return bitmovinAdBreak 
if _1O_IO1IOO0O1.ads<>invalid
for each ad in _1O_IO1IOO0O1.ads
bitmovinAdBreak.ads.Push(createBitmovinAdFromRokuAd(ad))
end for
end if
if _1O_IO1IOO0O1.id<>invalid bitmovinAdBreak.id=_1O_IO1IOO0O1.id
if _1O_IO1IOO0O1.renderTime<>invalid bitmovinAdBreak.scheduleTime=_1O_IO1IOO0O1.renderTime
return bitmovinAdBreak 
end function
function getAdQuartile(_I1I1II1OO_I1)
if _I1I1II1OO_I1=m.RokuAdEvents.FIRST_QUARTILE return(Chr(102)+Chr(&H69)+Chr(114)+Chr(&H73)+Chr(&H74)+Chr(81)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(&H69)+Chr(108)+Chr(101)) 
if _I1I1II1OO_I1=m.RokuAdEvents.MIDPOINT return(Chr(109)+Chr(105)+Chr(&H64)+Chr(112)+Chr(111)+Chr(105)+Chr(110)+Chr(&H74)) 
if _I1I1II1OO_I1=m.RokuAdEvents.THIRD_QUARTILE return(Chr(&H74)+Chr(104)+Chr(105)+Chr(114)+Chr(&H64)+Chr(81)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(&H6c)+Chr(&H65)) 
end function
function rokuEventTypeToBitmovinEventField(_O0__IOO_0I0O=invalid)
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
function rokuSegmentTypeToBitmovinHttpRequestType(_1O1I1_IO1110)
if _1O1I1_IO1110=0 or _1O1I1_IO1110=2 return m.HttpRequestTypes.MEDIA_VIDEO 
if _1O1I1_IO1110=1 return m.HttpRequestTypes.MEDIA_AUDIO 
if _1O1I1_IO1110=3 return m.HttpRequestTypes.MEDIA_SUBTITLES 
end function
function rokuSegmentInformationToDownloadFinishedEvent(__O11_O_00OOO)
event={}
event.downloadTime=(__O11_O_00OOO.downloadDuration/1000)
event.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(__O11_O_00OOO.SegType)
event.size=__O11_O_00OOO.SegSize
event.url=__O11_O_00OOO.SegUrl
event.type=m.BitmovinFields.DOWNLOAD_FINISHED
if __O11_O_00OOO.Status=0
event.success=(1=1)
else 
event.success=(1=2)
end if
return event 
end function
function createBitmovinSegmentFromRokuSegment(_OIIOOI_0O_IO)
bitmovinSegment={}
quality={bitrate:_OIIOOI_0O_IO.BitrateBPS}
bitmovinSegment.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(_OIIOOI_0O_IO.segType)
bitmovinSegment.quality=quality
return bitmovinSegment 
end function
function rokuVideoErrorCodeToBitmovinErrorCode(_0OI01O_OO__I)
errors={"0":1400,"-1":1400,"-2":1400,"-3":1000,"-4":1201,"-5":1300,"-6":2000}
error=errors[_0OI01O_OO__I.toStr()]
if error<>invalid
return error 
else 
return 1000 
end if
end function
function mapThumbnailTileAndRokuSpriteToBitmovinSprite(_1I_0OOIO10I_,__1I_0O0_I000)
bitmovinSprite={}
bitmovinSprite.url=__1I_0O0_I000[0]
bitmovinSprite.start=__1I_0O0_I000[1]
bitmovinSprite.duration=_1I_0OOIO10I_.duration
bitmovinSprite.numberOfColumns=_1I_0OOIO10I_.htiles
bitmovinSprite.numberOfRows=_1I_0OOIO10I_.vtiles
bitmovinSprite.singleThumbnailHeight=_1I_0OOIO10I_.height
bitmovinSprite.singleThumbnailWidth=_1I_0OOIO10I_.width
bitmovinSprite.singleThumbnailDuration=_1I_0OOIO10I_.duration/(_1I_0OOIO10I_.htiles*_1I_0OOIO10I_.vtiles)
bitmovinSprite.end=invalid
bitmovinSprite.numberOfThumbnails=invalid
bitmovinSprite.xPositionMap=invalid
bitmovinSprite.yPositionMap=invalid
return bitmovinSprite 
end function
