library "Roku_Ads.brs"
sub init()
m.options=invalid
m.eventListener=invalid
m.scheduleAdBreakEventListener=invalid
m.previousPlayerPosition=0
m.adBreakList=[]
m.deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(68)+Chr(101)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(73)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.activeAdBreak=invalid
m.PREROLL=(Chr(112)+Chr(114)+Chr(&H65)+Chr(&H72)+Chr(&H6f)+Chr(108)+Chr(&H6c))
m.POSTROLL=(Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(116)+Chr(114)+Chr(&H6f)+Chr(108)+Chr(108))
m.MIDROLL=(Chr(109)+Chr(&H69)+Chr(100)+Chr(&H72)+Chr(111)+Chr(&H6c)+Chr(&H6c))
m.RokuAdEvents=_10O11O1OOI01()
m.InternalEventTypes=___00__0_1OI_()
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
m.adQuartileEventHandler=_O1OI0__OO011({calculatePercentage:_O1II0O0_1I00,isBetweenBound:_1I10I01I0I_I})
m.ExternalBitmovinPlayerFields=_IOO11O01_10I()
m.adBufferingScreenHandler=__1I11_O_O100(_O__1O_O1O0IO)
m.adBufferingScreenHandler.scaleAdBufferingScreenLayers()
m.adBufferingScreenHandler.customizeAdBufferingScreen(_I1I__IOIO1I_())
m.BitmovinFields=_IOO11O01_10I()
m.BitmovinPlayerStates=__O1_I_O1I_0_()
m.bitmovinInternalEventFactory=_IOI0_011_1O1()
m.BitmovinInternalEventTypes=___00__0_1OI_()
m.isVideoErrorPresent=(1=2)
m.demandApiCriteria=invalid
end sub
sub executeOperation(_01OIIO0__10O)
if _110__I1O00_I(_01OIIO0__10O.data)
?(Chr(&H41)+Chr(100)+Chr(118)+Chr(&H65)+Chr(114)+Chr(116)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(&H20)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H20)+Chr(87)+Chr(111)+Chr(&H72)+Chr(&H6b)+Chr(&H65)+Chr(114)+Chr(32)+Chr(99)+Chr(&H61)+Chr(&H6e)+Chr(39)+Chr(116)+Chr(&H20)+Chr(101)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(&H20)+Chr(116)+Chr(&H68)+Chr(&H65)+Chr(32)+Chr(111)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(33)+Chr(&H20)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(32)+Chr(&H69)+Chr(&H6e)+Chr(118)+Chr(&H61)+Chr(108)+Chr(105)+Chr(100)+Chr(32)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(97)+Chr(&H2e))
return 
end if
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER _111OO1___11O(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.SCHEDULE_ADS scheduleAds(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.INITIALIZE_DEMAND_API initializeDemandApi(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK discardAdBreak(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS _0O1O_OI_O1_0(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.CUSTOMIZE_AD_BUFFERING_SCREEN customizeAdBufferingScreen(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.ON_VIDEO_ERROR onVideoError(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.CHECK_PREROLL_AD_BREAK _1IIOOO_0O__O()
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.CHECK_AD_BREAKS checkAdBreaks(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.CONTENT_DURATION_CHANGED contentDurationChanged()
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.SET_ADVERTISING_DEBUG_OUTPUT setAdvertisingDebugOutput(_01OIIO0__10O)
if _01OIIO0__10O.type=m.BitmovinAsyncOperationTypes.UPDATE_ADVERTISING_METADATA updateMetadata(_01OIIO0__10O)
end sub
function _OI_O00_01001()
if m.options=invalid return(1=2) 
if m.options.view=invalid return(1=2) 
if m.options.videoNode=invalid return(1=2) 
return(1=1) 
end function
sub _OI1OOOIOI_01(_I0O_00_0I1O0)
if not _OI_O00_01001()return 
if not _110__I1O00_I(_I0O_00_0I1O0) and __O_1OI__1IO_(_I0O_00_0I1O0)
m.adInterface.enableAdMeasurements((1=1))
m.adInterface.setContentGenre(_I0O_00_0I1O0.genres,__01IOOI_II11(_I0O_00_0I1O0.childrenContent))
m.adInterface.setContentId(_I0O_00_0I1O0.id)
m.adInterface.setContentLength(_I0O_00_0I1O0.length.ToInt())
m.demandApiCriteria=_I0O_00_0I1O0.demandApi
else 
m.adInterface.enableAdMeasurements((1=2))
end if
end sub
function __O_1OI__1IO_(_0O_OIOOO10I0)
return not _110__I1O00_I(_0O_OIOOO10I0.genres) and not _110__I1O00_I(_0O_OIOOO10I0.childrenContent) and not _110__I1O00_I(_0O_OIOOO10I0.id) and not _110__I1O00_I(_0O_OIOOO10I0.length) 
end function
sub customizeAdBufferingScreen(_011O1O0I__01)
m.adBufferingScreenHandler.customizeAdBufferingScreen(_011O1O0I__01.data.options.adBufferingScreenConfiguration)
end sub
sub _011100OO1OOO(__1100O0_01I0)
m.adBufferingScreenHandler.updateAdBufferingScreenWithMetadata(__1100O0_01I0)
end sub
sub _O11_1110_OOO()
if not _OI_O00_01001()return 
video=m.options.videoNode
m.previousPlayerPosition=video.position
m.eventListener.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.INTERNAL_STOP_PLAYBACK)
end sub
sub __OI0111_I0O1()
if not _OI_O00_01001()return 
video=m.options.videoNode
if m.previousPlayerPosition>0 video.seek=m.previousPlayerPosition
m.eventListener.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.INTERNAL_PLAY)
m.previousPlayerPosition=0
end sub
function _OO__I__1_O_1()
return m.deviceInfo.GetRandomUUID() 
end function
sub __0O1_1__II1O(_0O00011IO10I)
if _0O00011IO10I=invalid return 
for each ad in _0O00011IO10I
if ad.adId=invalid or Len(ad.adId)=0 ad.adId=_OO__I__1_O_1()
end for
end sub
sub _0OI_IIII_0O1(_IO_0IO101110,_I1IIOOO_1O1O)
if _IO_0IO101110=invalid return 
_0IO0_0OI1III(_IO_0IO101110,_I1IIOOO_1O1O)
if type(_I1IIOOO_1O1O.position)<>(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(103))
_01_1_0010IO0(_IO_0IO101110,_I1IIOOO_1O1O.position)
else if _I1IIOOO_1O1O.position=(Chr(&H70)+Chr(&H72)+Chr(&H65))or _I1IIOOO_1O1O.position=invalid
_IO_0IO101110.renderSequence=m.PREROLL
_IO_0IO101110.renderTime=0
else if _I1IIOOO_1O1O.position=(Chr(&H70)+Chr(111)+Chr(&H73)+Chr(116))
_IO_0IO101110.renderSequence=m.POSTROLL
else if right(_I1IIOOO_1O1O.position,1)=(Chr(&H25))
percentage=_I1IIOOO_1O1O.position.split((Chr(&H25)))[0].toFloat()
position=_O_0I01O1I100(percentage)
if position<0 position=_I1IIOOO_1O1O.position
_01_1_0010IO0(_IO_0IO101110,position)
else if Instr(1,_I1IIOOO_1O1O.position,(Chr(58)))>0
_01_1_0010IO0(_IO_0IO101110,__O_IOI1I1I01(_I1IIOOO_1O1O.position))
end if
end sub
function _O_0I01O1I100(_OI11IIIOI__0)
duration=m.options.VideoNode.duration
position=_OI11IIIOI__0
if not duration>0 return-1 
return duration*(position/100) 
end function
function __O_IOI1I1I01(_0_O1II11I_0I)
positionInSeconds=0
milliSeconds=_0_O1II11I_0I.Split((Chr(&H2e)))[1]
if milliSeconds<>invalid
positionInSeconds+=milliSeconds.toFloat()
end if
time=_0_O1II11I_0I.Split((Chr(46)))[0].Split((Chr(&H3a)))
for i=(time.count()-1)to(0 or(time.count()-3))step -1
positionInSeconds+=time[i].toFloat()*(60^((time.count()-i)-1))
end for
return positionInSeconds 
end function
sub _01_1_0010IO0(_011_1111IOI0,_I_1I1I_I0O_I)
_011_1111IOI0.renderSequence=m.MIDROLL
_011_1111IOI0.renderTime=_I_1I1I_I0O_I
end sub
sub _1OI_0_0OO11O()
for each adBreak in m.adBreakList
if adBreak.renderSequence=m.POSTROLL and adBreak.viewed=(1=2)
shouldResume=_01_O1IO_O0__(adBreak,(1=1))
if not shouldResume exit for
end if
end for
end sub
sub _IO_I_OI01_1_(__1I_0I_11I1_)
for each adBreak in m.adBreakList
if(adBreak.renderSequence=m.MIDROLL or adBreak.renderSequence=m.PREROLL) and adBreak.viewed=(1=2)
if type(adBreak.renderTime)<>(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(114)+Chr(&H69)+Chr(110)+Chr(&H67)) and __1I_0I_11I1_>=adBreak.renderTime
shouldResume=_01_O1IO_O0__(adBreak)
if not shouldResume exit for
end if
end if
end for
end sub
sub _1IIOOO_0O__O()
if _OI_O00_01001()_IO_I_OI01_1_(0)
end sub
function _01_O1IO_O0__(_IIIOI__O11II,_O00_I1I_O110=(1=2))
m.activeAdBreak=_IIIOI__O11II
shouldResume=_1O__I_011011(_IIIOI__O11II,_O00_I1I_O110)
m.activeAdBreak=invalid
_IIIOI__O11II.viewed=(1=1)
return shouldResume 
end function
function _1O__I_011011(__O100_O11_1I,__I_1I00_OO1_=(1=2))
_O11_1110_OOO()
shouldResume=m.adInterface.showAds(__O100_O11_1I,invalid,m.options.view)
if shouldResume and not __I_1I00_OO1_ __OI0111_I0O1()
return shouldResume 
end function
sub _0IO0_0OI1III(_1O0O1IOO10I1,_I_01_0I1O1_0)
if _1O0O1IOO10I1=invalid or _I_01_0I1O1_0=invalid return 
id=_I_01_0I1O1_0.id
if id=invalid id=_OO__I__1_O_1()
_1O0O1IOO10I1.id=id
end sub
sub _111OO1___11O(_1O010OOII0_0)
m.options=_1O010OOII0_0.data.options
m.adInterface=Roku_Ads()
m.bitmovinInternalEventFactory=_IOI0_011_1O1()
m.adInterface.clearAdBufferScreenLayers()
m.adInterface.setAdBufferScreenLayer(0,m.adBufferingScreenHandler.getAdBufferingScreen())
m.adInterface.setAdBufferRenderCallback(_I00O00_1OO_1,m)
m.adInterface.setTrackingCallback(_01O_II__I__I,m)
end sub
sub _I00O00_1OO_1(_IO_I111I_I_O,_0O0IIO_1101_,_0O_I0II1O0IO)
_IO_I111I_I_O.adBufferingScreenHandler.handleAdBufferingProgress(_0O_I0II1O0IO)
if _0O0IIO_1101_=m.RokuAdEvents.BUFFERING_START or _0O0IIO_1101_=m.RokuAdEvents.RE_BUFFERING_START
internalAdEvent=_IO_I111I_I_O.bitmovinInternalEventFactory.createInternalEvent(_IO_I111I_I_O.InternalEventTypes.AD_BUFFERING_START,{type:m.BitmovinPlayerStates.STALLING})
_IO_I111I_I_O.eventListener.eventOccurred=internalAdEvent
end if
end sub
sub _01O_II__I__I(__11IOI_11I0_=invalid,_1001OIII00O0=invalid,_10__1_IO0OO1=invalid)
if __11IOI_11I0_.eventListener=invalid return 
internalAdEvent=invalid
adPlayhead=_10__1_IO0OO1.time
adDuration=_10__1_IO0OO1.duration
if adPlayhead<>invalid
__11IOI_11I0_.eventListener.eventOccurred=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_PLAYHEAD,adPlayhead)
end if
if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.POD_START
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_BREAK_STARTED,__11IOI_11I0_.activeAdBreak)
else if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.POD_COMPLETE
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_BREAK_FINISHED,__11IOI_11I0_.activeAdBreak)
else if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.ACCEPT_INVITATION
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_INTERACTION,_10__1_IO0OO1)
else if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.ERROR or _1001OIII00O0=(Chr(78)+Chr(111)+Chr(65)+Chr(&H64)+Chr(&H73)+Chr(69)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72))
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_ERROR,_10__1_IO0OO1)
else if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.COMPLETE
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_FINISHED,_10__1_IO0OO1)
else if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.START
__11IOI_11I0_.adQuartileEventHandler.resetQuartileAdEventReachedFlags()
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_STARTED,_10__1_IO0OO1)
else if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.SKIP or _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.CLOSE
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_SKIPPED,_10__1_IO0OO1)
else if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.PAUSE
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_PAUSE,_10__1_IO0OO1)
else if _1001OIII00O0=__11IOI_11I0_.RokuAdEvents.RESUME
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_RESUME,_10__1_IO0OO1)
else if __11IOI_11I0_.adQuartileEventHandler.isFirstQuartileReached(adPlayhead,adDuration)
__11IOI_11I0_.adQuartileEventHandler.setFirstQuartileReachedFlag((1=1))
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_QUARTILE)
else if __11IOI_11I0_.adQuartileEventHandler.isMidpointReached(adPlayhead,adDuration)
__11IOI_11I0_.adQuartileEventHandler.setMidpointReachedFlag((1=1))
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_QUARTILE)
else if __11IOI_11I0_.adQuartileEventHandler.isThirdQuartileReached(adPlayhead,adDuration)
__11IOI_11I0_.adQuartileEventHandler.setThirdQuartileReachedFlag((1=1))
internalAdEvent=__11IOI_11I0_.bitmovinInternalEventFactory.createInternalEvent(__11IOI_11I0_.InternalEventTypes.AD_QUARTILE)
else 
return 
end if
__11IOI_11I0_.eventListener.eventOccurred=internalAdEvent
end sub
sub initializeDemandApi(_1OO1I011_1I1)
if m.eventListener=invalid return 
internalAdEvent=invalid
if(not _110__I1O00_I(m.demandApiCriteria))or(not _110__I1O00_I(m.demandApiCriteria.seat_id))or(not _110__I1O00_I(m.demandApiCriteria.tag_id))
adQueryResult=m.adInterface.demandApi_queryAds({seat_id:m.demandApiCriteria.seat_id,tag_id:m.demandApiCriteria.tag_id})
internalAdEvent=m.bitmovinInternalEventFactory.createInternalEvent(m.InternalEventTypes.DEMAND_API_QUERY_ADS_RESULT,adQueryResult)
m.eventListener.eventOccurred=internalAdEvent
end if
end sub
sub scheduleAds(_0OO1_I1101_1)
if not _OI_O00_01001()return 
adBreaks=_0OO1_I1101_1.data.options.adBreaks
for each adBreak in adBreaks
if not _110__I1O00_I(adBreak.tag.url)
m.adInterface.setAdUrl(adBreak.tag.url)
rokuFormattedAdBreaks=m.adInterface.getAds()
if not _110__I1O00_I(rokuFormattedAdBreaks)
if adBreak.tag.type=(Chr(&H76)+Chr(&H61)+Chr(115)+Chr(116))
formattedAdBreak=rokuFormattedAdBreaks[0]
___00_0110I_0(formattedAdBreak,adBreak)
else if adBreak.tag.type=(Chr(118)+Chr(&H6d)+Chr(&H61)+Chr(&H70))
for each formattedAdBreak in rokuFormattedAdBreaks
_0OI__00OOOIO(formattedAdBreak,adBreak)
end for
end if
if formattedAdBreak<>invalid __0O1_1__II1O(formattedAdBreak.ads)
end if
end if
end for
end sub
sub ___00_0110I_0(___11IO1001I1,_0O0OO1_0_IO1)
if _110__I1O00_I(___11IO1001I1)return 
_0OI_IIII_0O1(___11IO1001I1,_0O0OO1_0_IO1)
__0O1_1__II1O(___11IO1001I1.ads)
m.adBreakList.push(___11IO1001I1)
__OIII1O1O101()
if ___11IO1001I1.renderSequence=m.PREROLL and _1I0_00II1_II(m.options.autoplay)_01_O1IO_O0__(___11IO1001I1)
end sub
sub _0OI__00OOOIO(_IO_10I00I_O1,_1OO0II_O1OO0)
if _110__I1O00_I(_IO_10I00I_O1)return 
_0IO0_0OI1III(_IO_10I00I_O1,_1OO0II_O1OO0)
m.adBreakList.push(_IO_10I00I_O1)
__OIII1O1O101()
if _IO_10I00I_O1.renderSequence=m.PREROLL
_IO_10I00I_O1.renderTime=0
_01_O1IO_O0__(_IO_10I00I_O1)
end if
end sub
sub discardAdBreak(_IO_1OO01__OI)
if not _OI_O00_01001()return 
updatedAdBreakList=[]
for each adBreak in m.adBreakList
if adBreak.id<>_IO_1OO01__OI.data.options.adBreakId
updatedAdBreakList.push(adBreak)
end if
end for
m.adBreakList=updatedAdBreakList
__OIII1O1O101()
end sub
sub _0O1O_OI_O1_0(_OII___011OO_)
if not _OI_O00_01001()return 
m.adBreakList=[]
__OIII1O1O101()
end sub
sub contentDurationChanged(__0_00O1_1O01=invalid)
for each adBreak in m.adBreakList
if type(adBreak.renderTime)=(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67)) and Instr(1,adBreak.renderTime,(Chr(37)))>0
percentage=adBreak.renderTime.split((Chr(&H25)))[0].toFloat()
adBreak.renderTime=_O_0I01O1I100(percentage)
end if
end for
end sub
sub onVideoError(_11I1I_1I0O_I)
m.isVideoErrorPresent=(1=1)
end sub
sub checkAdBreaks(_I1I___I_1_I1)
data=_I1I___I_1_I1.data.options
field=data.field
fieldData=data.fieldData
if not _OI_O00_01001()return 
if field=(Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H65)) and fieldData=(Chr(&H66)+Chr(105)+Chr(110)+Chr(105)+Chr(&H73)+Chr(104)+Chr(101)+Chr(100))
_1OI_0_0OO11O()
else if field=(Chr(112)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e))
_IO_I_OI01_1_(fieldData)
end if
end sub
sub setAdEventListener(___00I0OIO0II)
m.eventListener=___00I0OIO0II
end sub
sub setScheduleAdBreakEventListener(_II10_I_I1I_0)
m.scheduleAdBreakEventListener=_II10_I_I1I_0
end sub
sub __OIII1O1O101()
if _110__I1O00_I(m.scheduleAdBreakEventListener)return 
m.scheduleAdBreakEventListener.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.InternalEventTypes.AD_BREAK_SCHEDULED,{adBreakList:m.adBreakList})
end sub
sub setAdvertisingDebugOutput(_01_1IOO00_0_)
setDebugOutput=_01_1IOO00_0_.data.options.enableAdvertisingDebugOutput
m.adInterface.SetDebugOutput(setDebugOutput)
end sub
sub updateMetadata(_I00OOIIIO0O0)
metadata=_I00OOIIIO0O0.data.options
_011100OO1OOO(metadata.adBufferingScreenMetadata)
_OI1OOOIOI_01(metadata.audienceMeasurementMetadata)
end sub
