sub init()
m.BitmovinFields=_I__1I0I_O__0()
m.RokuAdEvents=___0___IOIOO1()
m.HttpRequestTypes=_OI1OI100I_1I()
m.BitmovinPlayerStates=_1_0I_0I00O_0()
end sub
function createBitmovinAdFromRokuAd(_IO0___OO_11O)
bitmovinAd={}
bitmovinAd.data={}
bitmovinAd.clickThroughUrl=Chr(0)
bitmovinAd.companionAds=[]
bitmovinAd.id=Chr(0)
if _IO0___OO_11O=invalid or _IO0___OO_11O.Count()=0
return bitmovinAd 
else 
bitmovinAd.data=_IO0___OO_11O
end if
if _IO0___OO_11O.clickThrough<>invalid bitmovinAd.clickThroughUrl=_IO0___OO_11O.clickThrough
if _IO0___OO_11O.companionAds<>invalid bitmovinAd.companionAds=_IO0___OO_11O.companionAds
if _IO0___OO_11O.adId<>invalid bitmovinAd.id=_IO0___OO_11O.adId
return bitmovinAd 
end function
function createBitmovinAdBreakFromRokuAdBreak(_1I01OOII_O11)
bitmovinAdBreak={}
bitmovinAdBreak.ads=[]
bitmovinAdBreak.id=Chr(0)
bitmovinAdBreak.scheduleTime=-1
if _1I01OOII_O11=invalid return bitmovinAdBreak 
if _1I01OOII_O11.ads<>invalid
for each ad in _1I01OOII_O11.ads
bitmovinAdBreak.ads.Push(createBitmovinAdFromRokuAd(ad))
end for
end if
if _1I01OOII_O11.id<>invalid bitmovinAdBreak.id=_1I01OOII_O11.id
if _1I01OOII_O11.renderTime<>invalid bitmovinAdBreak.scheduleTime=_1I01OOII_O11.renderTime
return bitmovinAdBreak 
end function
function getAdQuartile(_00O1OI10IO0I)
if _00O1OI10IO0I=m.RokuAdEvents.FIRST_QUARTILE return(Chr(102)+Chr(105)+Chr(114)+Chr(115)+Chr(&H74)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(101)) 
if _00O1OI10IO0I=m.RokuAdEvents.MIDPOINT return(Chr(&H6d)+Chr(&H69)+Chr(&H64)+Chr(&H70)+Chr(&H6f)+Chr(&H69)+Chr(&H6e)+Chr(&H74)) 
if _00O1OI10IO0I=m.RokuAdEvents.THIRD_QUARTILE return(Chr(&H74)+Chr(&H68)+Chr(105)+Chr(&H72)+Chr(100)+Chr(&H51)+Chr(117)+Chr(97)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(108)+Chr(&H65)) 
end function
function rokuEventTypeToBitmovinEventField(__OO0_IO1_I01=invalid)
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
function rokuSegmentTypeToBitmovinHttpRequestType(_0O1I01_011I1)
if _0O1I01_011I1=0 or _0O1I01_011I1=2 return m.HttpRequestTypes.MEDIA_VIDEO 
if _0O1I01_011I1=1 return m.HttpRequestTypes.MEDIA_AUDIO 
if _0O1I01_011I1=3 return m.HttpRequestTypes.MEDIA_SUBTITLES 
end function
function rokuSegmentInformationToDownloadFinishedEvent(___0I101_O_I1)
event={}
event.downloadTime=(___0I101_O_I1.downloadDuration/1000)
event.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(___0I101_O_I1.SegType)
event.size=___0I101_O_I1.SegSize
event.url=___0I101_O_I1.SegUrl
event.type=m.BitmovinFields.DOWNLOAD_FINISHED
if ___0I101_O_I1.Status=0
event.success=(1=1)
else 
event.success=(1=2)
end if
return event 
end function
function createBitmovinSegmentFromRokuSegment(_I_0OI_II_0O_)
bitmovinSegment={}
quality={bitrate:_I_0OI_II_0O_.BitrateBPS}
bitmovinSegment.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(_I_0OI_II_0O_.segType)
bitmovinSegment.quality=quality
return bitmovinSegment 
end function
function rokuVideoErrorCodeToBitmovinErrorCode(_01_0I01IO1_0)
errors={"0":1400,"-1":1400,"-2":1400,"-3":1000,"-4":1201,"-5":1300,"-6":2000}
error=errors[_01_0I01IO1_0.toStr()]
if error<>invalid
return error 
else 
return 1000 
end if
end function
function mapThumbnailTileAndRokuSpriteToBitmovinSprite(_0O1IIO_1010I,_01__O1O0I1I_)
bitmovinSprite={}
bitmovinSprite.url=_01__O1O0I1I_[0]
bitmovinSprite.start=_01__O1O0I1I_[1]
bitmovinSprite.duration=_0O1IIO_1010I.duration
bitmovinSprite.numberOfColumns=_0O1IIO_1010I.htiles
bitmovinSprite.numberOfRows=_0O1IIO_1010I.vtiles
bitmovinSprite.singleThumbnailHeight=_0O1IIO_1010I.height
bitmovinSprite.singleThumbnailWidth=_0O1IIO_1010I.width
bitmovinSprite.singleThumbnailDuration=_0O1IIO_1010I.duration/(_0O1IIO_1010I.htiles*_0O1IIO_1010I.vtiles)
bitmovinSprite.end=invalid
bitmovinSprite.numberOfThumbnails=invalid
bitmovinSprite.xPositionMap=invalid
bitmovinSprite.yPositionMap=invalid
return bitmovinSprite 
end function
