sub init()
m.BitmovinFields=_O_10OO110010()
m.RokuAdEvents=_0O01OO_I0000()
m.HttpRequestTypes=___OIO_III0O0()
m.BitmovinPlayerStates=_II0_0_O__10O()
end sub
function createBitmovinAdFromRokuAd(__O0_II0O_OI_)
bitmovinAd={}
bitmovinAd.data={}
bitmovinAd.clickThroughUrl=Chr(0)
bitmovinAd.companionAds=[]
bitmovinAd.id=Chr(0)
if __O0_II0O_OI_=invalid or __O0_II0O_OI_.Count()=0
return bitmovinAd 
else 
bitmovinAd.data=__O0_II0O_OI_
end if
if __O0_II0O_OI_.clickThrough<>invalid bitmovinAd.clickThroughUrl=__O0_II0O_OI_.clickThrough
if __O0_II0O_OI_.companionAds<>invalid bitmovinAd.companionAds=__O0_II0O_OI_.companionAds
if __O0_II0O_OI_.adId<>invalid bitmovinAd.id=__O0_II0O_OI_.adId
return bitmovinAd 
end function
function createBitmovinAdBreakFromRokuAdBreak(__0O_I_OO1OOI)
bitmovinAdBreak={}
bitmovinAdBreak.ads=[]
bitmovinAdBreak.id=Chr(0)
bitmovinAdBreak.scheduleTime=-1
if __0O_I_OO1OOI=invalid return bitmovinAdBreak 
if __0O_I_OO1OOI.ads<>invalid
for each ad in __0O_I_OO1OOI.ads
bitmovinAdBreak.ads.Push(createBitmovinAdFromRokuAd(ad))
end for
end if
if __0O_I_OO1OOI.id<>invalid bitmovinAdBreak.id=__0O_I_OO1OOI.id
if __0O_I_OO1OOI.renderTime<>invalid bitmovinAdBreak.scheduleTime=__0O_I_OO1OOI.renderTime
return bitmovinAdBreak 
end function
function getAdQuartile(_O1_O1_0_O1_I)
if _O1_O1_0_O1_I=m.RokuAdEvents.FIRST_QUARTILE return(Chr(&H66)+Chr(105)+Chr(114)+Chr(115)+Chr(&H74)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(&H6c)+Chr(101)) 
if _O1_O1_0_O1_I=m.RokuAdEvents.MIDPOINT return(Chr(109)+Chr(&H69)+Chr(100)+Chr(112)+Chr(111)+Chr(105)+Chr(110)+Chr(&H74)) 
if _O1_O1_0_O1_I=m.RokuAdEvents.THIRD_QUARTILE return(Chr(&H74)+Chr(104)+Chr(105)+Chr(114)+Chr(100)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(&H72)+Chr(116)+Chr(105)+Chr(108)+Chr(101)) 
end function
function rokuEventTypeToBitmovinEventField(_O11I10___1IO=invalid)
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
function rokuSegmentTypeToBitmovinHttpRequestType(__I111I0I0I0_)
if __I111I0I0I0_=0 or __I111I0I0I0_=2 return m.HttpRequestTypes.MEDIA_VIDEO 
if __I111I0I0I0_=1 return m.HttpRequestTypes.MEDIA_AUDIO 
if __I111I0I0I0_=3 return m.HttpRequestTypes.MEDIA_SUBTITLES 
end function
function rokuSegmentInformationToDownloadFinishedEvent(_O10_0_10__IO)
event={}
event.downloadTime=(_O10_0_10__IO.downloadDuration/1000)
event.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(_O10_0_10__IO.SegType)
event.size=_O10_0_10__IO.SegSize
event.url=_O10_0_10__IO.SegUrl
event.type=m.BitmovinFields.DOWNLOAD_FINISHED
if _O10_0_10__IO.Status=0
event.success=(1=1)
else 
event.success=(1=2)
end if
return event 
end function
function createBitmovinSegmentFromRokuSegment(_00OI_1IOO1I_)
bitmovinSegment={}
quality={bitrate:_00OI_1IOO1I_.BitrateBPS}
bitmovinSegment.downloadType=rokuSegmentTypeToBitmovinHttpRequestType(_00OI_1IOO1I_.segType)
bitmovinSegment.quality=quality
return bitmovinSegment 
end function
function rokuVideoErrorCodeToBitmovinErrorCode(__1_1____I000)
errors={"0":1400,"-1":1400,"-2":1400,"-3":1000,"-4":1201,"-5":1300,"-6":2000}
error=errors[__1_1____I000.toStr()]
if error<>invalid
return error 
else 
return 1000 
end if
end function
function mapThumbnailTileAndRokuSpriteToBitmovinSprite(_I_00_I_OO1_1,_O_0I_OIIO0II)
bitmovinSprite={}
bitmovinSprite.url=_O_0I_OIIO0II[0]
bitmovinSprite.start=_O_0I_OIIO0II[1]
bitmovinSprite.duration=_I_00_I_OO1_1.duration
bitmovinSprite.numberOfColumns=_I_00_I_OO1_1.htiles
bitmovinSprite.numberOfRows=_I_00_I_OO1_1.vtiles
bitmovinSprite.singleThumbnailHeight=_I_00_I_OO1_1.height
bitmovinSprite.singleThumbnailWidth=_I_00_I_OO1_1.width
bitmovinSprite.singleThumbnailDuration=_I_00_I_OO1_1.duration/(_I_00_I_OO1_1.htiles*_I_00_I_OO1_1.vtiles)
bitmovinSprite.end=invalid
bitmovinSprite.numberOfThumbnails=invalid
bitmovinSprite.xPositionMap=invalid
bitmovinSprite.yPositionMap=invalid
return bitmovinSprite 
end function
