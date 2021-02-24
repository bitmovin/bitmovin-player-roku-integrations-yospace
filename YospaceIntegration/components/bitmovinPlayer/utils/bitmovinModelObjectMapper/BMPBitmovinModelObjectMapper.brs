sub init()
m.BitmovinFields=_OO0OOO1IOII_()
m.RokuAdEvents=_OOIO0I_O1O01()
m.HttpRequestTypes=_1I1__OOO_01O()
m.BitmovinPlayerStates=_0_1_OI101_0I()
end sub
function createBitmovinAdFromRokuAd(_0_1O_OIOO0OI)
bitmovinAd={}
bitmovinAd.data={}
bitmovinAd.clickThroughUrl=Chr(0)
bitmovinAd.companionAds=[]
bitmovinAd.id=Chr(0)
if _0_1O_OIOO0OI=invalid or _0_1O_OIOO0OI.Count()=0
return bitmovinAd 
else 
bitmovinAd.data=_0_1O_OIOO0OI
end if
if _0_1O_OIOO0OI.clickThrough<>invalid bitmovinAd.clickThroughUrl=_0_1O_OIOO0OI.clickThrough
if _0_1O_OIOO0OI.companionAds<>invalid bitmovinAd.companionAds=_0_1O_OIOO0OI.companionAds
if _0_1O_OIOO0OI.adId<>invalid bitmovinAd.id=_0_1O_OIOO0OI.adId
return bitmovinAd 
end function
function createBitmovinAdBreakFromRokuAdBreak(_IOIO_O10_1_I)
bitmovinAdBreak={}
bitmovinAdBreak.ads=[]
bitmovinAdBreak.id=Chr(0)
bitmovinAdBreak.scheduleTime=-1
if _IOIO_O10_1_I=invalid return bitmovinAdBreak 
if _IOIO_O10_1_I.ads<>invalid
for each ad in _IOIO_O10_1_I.ads
bitmovinAdBreak.ads.Push(createBitmovinAdFromRokuAd(ad))
end for
end if
if _IOIO_O10_1_I.id<>invalid bitmovinAdBreak.id=_IOIO_O10_1_I.id
if _IOIO_O10_1_I.renderTime<>invalid bitmovinAdBreak.scheduleTime=_IOIO_O10_1_I.renderTime
return bitmovinAdBreak 
end function
function getAdQuartile(__1_O__11__01)
if __1_O__11__01=m.RokuAdEvents.FIRST_QUARTILE return(Chr(102)+Chr(105)+Chr(&H72)+Chr(115)+Chr(116)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H69)+Chr(108)+Chr(&H65)) 
if __1_O__11__01=m.RokuAdEvents.MIDPOINT return(Chr(&H6d)+Chr(&H69)+Chr(&H64)+Chr(112)+Chr(111)+Chr(105)+Chr(&H6e)+Chr(116)) 
if __1_O__11__01=m.RokuAdEvents.THIRD_QUARTILE return(Chr(&H74)+Chr(104)+Chr(&H69)+Chr(114)+Chr(&H64)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(114)+Chr(116)+Chr(105)+Chr(&H6c)+Chr(&H65)) 
end function
function rokuEventTypeToBitmovinEventField(_0I00OII_0_0O=invalid)
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
function rokuSegmentTypeToBitmovinHttpRequestType(_0I00I0O0O001)
if _0I00I0O0O001=0 or _0I00I0O0O001=2 return m.HttpRequestTypes.MEDIA_VIDEO 
if _0I00I0O0O001=1 return m.HttpRequestTypes.MEDIA_AUDIO 
if _0I00I0O0O001=3 return m.HttpRequestTypes.MEDIA_SUBTITLES 
end function
function rokuSegmentInformationToDownloadFinishedEvent(__10III_00I_I)
event={}
event.downloadTime=(__10III_00I_I.downloadDuration/1000)
event.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(__10III_00I_I.SegType)
event.size=__10III_00I_I.SegSize
event.url=__10III_00I_I.SegUrl
event.type=m.BitmovinFields.DOWNLOAD_FINISHED
if __10III_00I_I.Status=0
event.success=(1=1)
else 
event.success=(1=2)
end if
return event 
end function
function createBitmovinSegmentFromRokuSegment(_I_0I0___0_11)
bitmovinSegment={}
quality={bitrate:_I_0I0___0_11.BitrateBPS}
bitmovinSegment.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(_I_0I0___0_11.segType)
bitmovinSegment.quality=quality
return bitmovinSegment 
end function
function rokuVideoErrorCodeToBitmovinErrorCode(_I0__1_000O_1)
errors={"0":1400,"-1":1400,"-2":1400,"-3":1000,"-4":1201,"-5":1300,"-6":2000}
error=errors[_I0__1_000O_1.toStr()]
if error<>invalid
return error 
else 
return 1000 
end if
end function
function mapThumbnailTileAndRokuSpriteToBitmovinSprite(__I_1OOO0O_10,_0001I00I_1I_)
bitmovinSprite={}
bitmovinSprite.url=_0001I00I_1I_[0]
bitmovinSprite.start=_0001I00I_1I_[1]
bitmovinSprite.duration=__I_1OOO0O_10.duration
bitmovinSprite.numberOfColumns=__I_1OOO0O_10.htiles
bitmovinSprite.numberOfRows=__I_1OOO0O_10.vtiles
bitmovinSprite.singleThumbnailHeight=__I_1OOO0O_10.height
bitmovinSprite.singleThumbnailWidth=__I_1OOO0O_10.width
bitmovinSprite.singleThumbnailDuration=__I_1OOO0O_10.duration/(__I_1OOO0O_10.htiles*__I_1OOO0O_10.vtiles)
bitmovinSprite.end=invalid
bitmovinSprite.numberOfThumbnails=invalid
bitmovinSprite.xPositionMap=invalid
bitmovinSprite.yPositionMap=invalid
return bitmovinSprite 
end function
