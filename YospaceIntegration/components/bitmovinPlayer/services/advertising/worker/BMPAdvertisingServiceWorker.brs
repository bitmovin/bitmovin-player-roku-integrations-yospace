library "Roku_Ads.brs"
sub init()
m.options=invalid
m.eventListener=invalid
m.scheduleAdBreakEventListener=invalid
m.previousPlayerPosition=0
m.adBreakList=[]
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(73)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.activeAdBreak=invalid
m.PREROLL=(Chr(112)+Chr(&H72)+Chr(&H65)+Chr(114)+Chr(&H6f)+Chr(&H6c)+Chr(&H6c))
m.POSTROLL=(Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(116)+Chr(&H72)+Chr(111)+Chr(&H6c)+Chr(&H6c))
m.MIDROLL=(Chr(&H6d)+Chr(&H69)+Chr(100)+Chr(114)+Chr(&H6f)+Chr(&H6c)+Chr(&H6c))
m.RokuAdEvents=__I10III_011_()
m.InternalAdEvents=__0_0IOO_I0I_()
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
m.adQuartileEventHandler=_OO_I1OO0I0__({calculatePercentage:_O_OII_0II11I,isBetweenBound:__1_0__0I_OIO})
m.ExternalBitmovinPlayerFields=_0OOO_00I01OO()
m.adBufferingScreenHandler=_100_0_10OI00(__OOIO0III1IO)
m.adBufferingScreenHandler.scaleAdBufferingScreenLayers()
m.adBufferingScreenHandler.customizeAdBufferingScreen(_1_1I__01OO0O())
m.BitmovinFields=_0OOO_00I01OO()
m.BitmovinPlayerStates=_I1O_I1IO0010()
end sub
sub executeOperation(_10O__I_1IOIO,_11_I_1I01I1I=invalid)
if _1100IO1O_0_I(_10O__I_1IOIO.data)
?(Chr(65)+Chr(100)+Chr(&H76)+Chr(&H65)+Chr(114)+Chr(&H74)+Chr(105)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H20)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H20)+Chr(87)+Chr(111)+Chr(114)+Chr(&H6b)+Chr(101)+Chr(114)+Chr(&H20)+Chr(&H63)+Chr(97)+Chr(&H6e)+Chr(&H27)+Chr(&H74)+Chr(32)+Chr(101)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(&H75)+Chr(116)+Chr(&H65)+Chr(32)+Chr(116)+Chr(104)+Chr(101)+Chr(&H20)+Chr(&H6f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(33)+Chr(32)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(32)+Chr(&H69)+Chr(110)+Chr(118)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H64)+Chr(32)+Chr(100)+Chr(97)+Chr(116)+Chr(97)+Chr(&H2e))
return 
end if
if _10O__I_1IOIO.type=m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER _1O01IIO___1O(_10O__I_1IOIO,_11_I_1I01I1I)
if _10O__I_1IOIO.type=m.BitmovinAsyncOperationTypes.SCHEDULE_ADS scheduleAds(_10O__I_1IOIO)
if _10O__I_1IOIO.type=m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK discardAdBreak(_10O__I_1IOIO)
if _10O__I_1IOIO.type=m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS __0I10I__O___(_10O__I_1IOIO)
if _10O__I_1IOIO.type=m.BitmovinAsyncOperationTypes.SET_AUDIENCE_MEASUREMENT_METADATA setAudienceMeasurementMetadata(_10O__I_1IOIO)
if _10O__I_1IOIO.type=m.BitmovinAsyncOperationTypes.CUSTOMIZE_AD_BUFFERING_SCREEN customizeAdBufferingScreen(_10O__I_1IOIO)
if _10O__I_1IOIO.type=m.BitmovinAsyncOperationTypes.UPDATE_AD_BUFFERING_SCREEN_WITH_METADATA updateAdBufferingScreenWithMetadata(_10O__I_1IOIO)
end sub
function _III__I1_OOII()
if m.options=invalid return(1=2) 
if m.options.view=invalid return(1=2) 
if m.options.videoNode=invalid return(1=2) 
return(1=1) 
end function
sub setAudienceMeasurementMetadata(_11_0__00I_I_)
if not _III__I1_OOII()return 
metadata=_11_0__00I_I_.data.options.metadata
if not _1100IO1O_0_I(metadata) and _I0_10_1O_11I(metadata)
m.adInterface.enableAdMeasurements((1=1))
m.adInterface.setContentGenre(metadata.genres,__IO_I10I__0I(metadata.childrenContent))
m.adInterface.setContentId(metadata.id)
m.adInterface.setContentLength(metadata.length.ToInt())
else 
m.adInterface.enableAdMeasurements((1=2))
end if
end sub
function _I0_10_1O_11I(_II_OOO_OOI1_)
return not _1100IO1O_0_I(_II_OOO_OOI1_.genres) and not _1100IO1O_0_I(_II_OOO_OOI1_.childrenContent) and not _1100IO1O_0_I(_II_OOO_OOI1_.id) and not _1100IO1O_0_I(_II_OOO_OOI1_.length) 
end function
sub customizeAdBufferingScreen(___I0_IO_1II_)
m.adBufferingScreenHandler.customizeAdBufferingScreen(___I0_IO_1II_.data.options.adBufferingScreenConfiguration)
end sub
sub updateAdBufferingScreenWithMetadata(_0___O_IOO_O_)
m.adBufferingScreenHandler.updateAdBufferingScreenWithMetadata(_0___O_IOO_O_.data.options.metadata)
end sub
sub _1O11I11IIOOI()
if not _III__I1_OOII()return 
video=m.options.videoNode
m.previousPlayerPosition=video.position
video.control=(Chr(&H53)+Chr(84)+Chr(&H4f)+Chr(80))
end sub
sub _IOIII__I__0I()
if not _III__I1_OOII()return 
video=m.options.videoNode
if m.previousPlayerPosition>0 video.seek=m.previousPlayerPosition
video.control=(Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H59))
m.previousPlayerPosition=0
end sub
function _1_I0O10IO011()
return m.deviceInfo.GetRandomUUID() 
end function
sub _010I_O1OO1I1(_1_OII001_000)
if _1_OII001_000=invalid return 
for each ad in _1_OII001_000
if ad.adId=invalid or Len(ad.adId)=0 ad.adId=_1_I0O10IO011()
end for
end sub
sub __1O_0O_0_I0_(_0_I1IOOI0_1O,_0I0O00II010_)
if _0_I1IOOI0_1O=invalid return 
___O__0_00IOI(_0_I1IOOI0_1O,_0I0O00II010_)
if type(_0I0O00II010_.position)<>(Chr(114)+Chr(111)+Chr(83)+Chr(&H74)+Chr(&H72)+Chr(105)+Chr(110)+Chr(103))
_O0O1O_OI1110(_0_I1IOOI0_1O,_0I0O00II010_.position)
else if _0I0O00II010_.position=(Chr(&H70)+Chr(114)+Chr(&H65))or _0I0O00II010_.position=invalid
_0_I1IOOI0_1O.renderSequence=m.PREROLL
_0_I1IOOI0_1O.renderTime=0
else if _0I0O00II010_.position=(Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(116))
_0_I1IOOI0_1O.renderSequence=m.POSTROLL
else if right(_0I0O00II010_.position,1)=(Chr(37))
percentage=_0I0O00II010_.position.split((Chr(&H25)))[0].toFloat()
position=_O1O0OOI11_O0(percentage)
if position<0 position=_0I0O00II010_.position
_O0O1O_OI1110(_0_I1IOOI0_1O,position)
else if Instr(1,_0I0O00II010_.position,(Chr(&H3a)))>0
_O0O1O_OI1110(_0_I1IOOI0_1O,_O1OOI__OOIOO(_0I0O00II010_.position))
end if
end sub
function _O1O0OOI11_O0(_I11OOIIO_O_I)
duration=m.options.VideoNode.duration
position=_I11OOIIO_O_I
if not duration>0 return-1 
return duration*(position/100) 
end function
function _O1OOI__OOIOO(_10I00I0_1I1O)
positionInSeconds=0
milliSeconds=_10I00I0_1I1O.Split((Chr(46)))[1]
if milliSeconds<>invalid
positionInSeconds+=milliSeconds.toFloat()
end if
time=_10I00I0_1I1O.Split((Chr(46)))[0].Split((Chr(58)))
for i=(time.count()-1)to(0 or(time.count()-3))step -1
positionInSeconds+=time[i].toFloat()*(60^((time.count()-i)-1))
end for
return positionInSeconds 
end function
sub _O0O1O_OI1110(_1I___0IO1OO0,_00O_1O1100OO)
_1I___0IO1OO0.renderSequence=m.MIDROLL
_1I___0IO1OO0.renderTime=_00O_1O1100OO
end sub
sub __1OO00_OI0_0()
for each adBreak in m.adBreakList
if adBreak.renderSequence=m.POSTROLL and adBreak.viewed=(1=2)
shouldResume=____O1I0_0OO0(adBreak,(1=1))
if not shouldResume exit for
end if
end for
end sub
sub _01I1I_OO_1O1(__1III0110O_1)
for each adBreak in m.adBreakList
if(adBreak.renderSequence=m.MIDROLL or adBreak.renderSequence=m.PREROLL) and adBreak.viewed=(1=2)
if type(adBreak.renderTime)<>(Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(103)) and __1III0110O_1>=adBreak.renderTime
shouldResume=____O1I0_0OO0(adBreak)
if not shouldResume exit for
end if
end if
end for
end sub
function ____O1I0_0OO0(_OIIOO_I__I1O,__II0_1__0OII=(1=2))
m.activeAdBreak=_OIIOO_I__I1O
shouldResume=_O__0I1_OIO0_(_OIIOO_I__I1O,__II0_1__0OII)
m.activeAdBreak=invalid
_OIIOO_I__I1O.viewed=(1=1)
return shouldResume 
end function
function _O__0I1_OIO0_(__O0I1IO_I01I,__010I_I0O101=(1=2))
_1O11I11IIOOI()
shouldResume=m.adInterface.showAds(__O0I1IO_I01I,invalid,m.options.view)
if shouldResume and not __010I_I0O101 _IOIII__I__0I()
return shouldResume 
end function
sub ___O__0_00IOI(__I0O_01I01O0,_10_0OI1_1_1_)
if __I0O_01I01O0=invalid or _10_0OI1_1_1_=invalid return 
id=_10_0OI1_1_1_.id
if id=invalid id=_1_I0O10IO011()
__I0O_01I01O0.id=id
end sub
sub _1O01IIO___1O(__0111OOI111I,_0O110I1O0O_0)
m.options=__0111OOI111I.data.options
m.adInterface=Roku_Ads()
_OO_1__00_O10(_0O110I1O0O_0)
_OIIO111I1_I_(_0O110I1O0O_0)
m.bitmovinAdvertisingEventFactory=_0I__010_III_()
m.adInterface.clearAdBufferScreenLayers()
m.adInterface.setAdBufferScreenLayer(0,m.adBufferingScreenHandler.getAdBufferingScreen())
m.adInterface.setAdBufferRenderCallback(_I01OI0O00O0_,m)
m.adInterface.setTrackingCallback(_1I10IOO0_1_0,m)
end sub
sub _I01OI0O00O0_(_OII_I_00IO0I,___111_O0IO1O,_1O_I1_OOIO11)
_OII_I_00IO0I.adBufferingScreenHandler.handleAdBufferingProgress(_1O_I1_OOIO11)
eventOccurred={internalEventType:invalid,externalEventData:invalid}
if ___111_O0IO1O=m.RokuAdEvents.BUFFERING_START or ___111_O0IO1O=m.RokuAdEvents.RE_BUFFERING_START
eventOccurred.internalEventType=_OII_I_00IO0I.InternalAdEvents.AD_BUFFERING_START
eventOccurred.externalEventData={type:m.BitmovinPlayerStates.STALLING}
end if
if not _1100IO1O_0_I(eventOccurred.internalEventType)
_OII_I_00IO0I.eventListener.eventOccurred=eventOccurred
end if
end sub
sub _1I10IOO0_1_0(_I01IOI_0IO1I=invalid,_OII_000_O01I=invalid,__1011010I1I0=invalid)
if _I01IOI_0IO1I.eventListener=invalid return 
internalAdvertisingEventType=Chr(0)
externalAdvertisingData=invalid
adPlayhead=__1011010I1I0.time
adDuration=__1011010I1I0.duration
if adPlayhead<>invalid
_I01IOI_0IO1I.eventListener.eventOccurred={internalEventType:_I01IOI_0IO1I.InternalAdEvents.AD_PLAYHEAD,externalEventData:_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createTimeChangedEvent(adPlayhead,_I01IOI_0IO1I.ExternalBitmovinPlayerFields)}
end if
if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.POD_START
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_BREAK_STARTED
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(_I01IOI_0IO1I.activeAdBreak,_OII_000_O01I)
else if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.POD_COMPLETE
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_BREAK_FINISHED
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(_I01IOI_0IO1I.activeAdBreak,_OII_000_O01I)
else if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.ACCEPT_INVITATION
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_INTERACTION
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(__1011010I1I0)
else if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.ERROR or _OII_000_O01I=(Chr(&H4e)+Chr(&H6f)+Chr(&H41)+Chr(&H64)+Chr(115)+Chr(69)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114))
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_ERROR
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdErrorEvent(__1011010I1I0,_OII_000_O01I)
else if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.COMPLETE
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_FINISHED
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(__1011010I1I0)
else if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.START
_I01IOI_0IO1I.adQuartileEventHandler.resetQuartileAdEventReachedFlags()
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_STARTED
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(__1011010I1I0)
else if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.SKIP or _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.CLOSE
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_SKIPPED
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(__1011010I1I0)
else if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.PAUSE
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_PAUSE
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(__1011010I1I0)
else if _OII_000_O01I=_I01IOI_0IO1I.RokuAdEvents.RESUME
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_RESUME
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(__1011010I1I0)
else if _I01IOI_0IO1I.adQuartileEventHandler.isFirstQuartileReached(adPlayhead,adDuration)
_I01IOI_0IO1I.adQuartileEventHandler.setFirstQuartileReachedFlag((1=1))
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(_I01IOI_0IO1I.RokuAdEvents.FIRST_QUARTILE)
else if _I01IOI_0IO1I.adQuartileEventHandler.isMidpointReached(adPlayhead,adDuration)
_I01IOI_0IO1I.adQuartileEventHandler.setMidpointReachedFlag((1=1))
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(_I01IOI_0IO1I.RokuAdEvents.MIDPOINT)
else if _I01IOI_0IO1I.adQuartileEventHandler.isThirdQuartileReached(adPlayhead,adDuration)
_I01IOI_0IO1I.adQuartileEventHandler.setThirdQuartileReachedFlag((1=1))
internalAdvertisingEventType=_I01IOI_0IO1I.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=_I01IOI_0IO1I.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(_I01IOI_0IO1I.RokuAdEvents.THIRD_QUARTILE)
else 
return 
end if
_I01IOI_0IO1I.eventListener.eventOccurred={internalEventType:internalAdvertisingEventType,externalEventData:externalAdvertisingData}
end sub
sub scheduleAds(__OOOO_1O_101)
if not _III__I1_OOII()return 
adBreaks=__OOOO_1O_101.data.options.adBreaks
for each adBreak in adBreaks
if not _1100IO1O_0_I(adBreak.tag.url)
m.adInterface.setAdUrl(adBreak.tag.url)
rokuFormattedAdBreaks=m.adInterface.getAds()
if not _1100IO1O_0_I(rokuFormattedAdBreaks)
if adBreak.tag.type=(Chr(&H76)+Chr(&H61)+Chr(&H73)+Chr(116))
formattedAdBreak=rokuFormattedAdBreaks[0]
___OI_OO1I00O(formattedAdBreak,adBreak)
else if adBreak.tag.type=(Chr(118)+Chr(&H6d)+Chr(97)+Chr(112))
for each formattedAdBreak in rokuFormattedAdBreaks
__0_I0O10OI1_(formattedAdBreak,adBreak)
end for
end if
if formattedAdBreak<>invalid _010I_O1OO1I1(formattedAdBreak.ads)
end if
end if
end for
end sub
sub ___OI_OO1I00O(_0II_____IOO1,__IIO_OI0I___)
if _1100IO1O_0_I(_0II_____IOO1)return 
__1O_0O_0_I0_(_0II_____IOO1,__IIO_OI0I___)
_010I_O1OO1I1(_0II_____IOO1.ads)
m.adBreakList.push(_0II_____IOO1)
_O0_O_OO10_II()
if _0II_____IOO1.renderSequence=m.PREROLL and m.options.config.playback.autoplay
____O1I0_0OO0(_0II_____IOO1)
end if
end sub
sub __0_I0O10OI1_(_I_01IO0_111_,__1O01I1O0_I_)
if _1100IO1O_0_I(_I_01IO0_111_)return 
___O__0_00IOI(_I_01IO0_111_,__1O01I1O0_I_)
m.adBreakList.push(_I_01IO0_111_)
_O0_O_OO10_II()
if _I_01IO0_111_.renderSequence=m.PREROLL
_I_01IO0_111_.renderTime=0
____O1I0_0OO0(_I_01IO0_111_)
end if
end sub
sub discardAdBreak(__O10IO0I1_1I)
if not _III__I1_OOII()return 
updatedAdBreakList=[]
for each adBreak in m.adBreakList
if adBreak.id<>__O10IO0I1_1I.data.options.adBreakId
updatedAdBreakList.push(adBreak)
end if
end for
m.adBreakList=updatedAdBreakList
__O10IO0I1_1I.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H52)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=1),{adList:m.adBreakList})
end sub
sub __0I10I__O___(__O__I_0_10O1)
if not _III__I1_OOII()return 
m.adBreakList=[]
__O__I_0_10O1.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=1),{adList:m.adBreakList})
end sub
sub durationChanged(_I10I0IOIO0O1=invalid)
for each adBreak in m.adBreakList
if type(adBreak.renderTime)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H74)+Chr(114)+Chr(&H69)+Chr(&H6e)+Chr(103)) and Instr(1,adBreak.renderTime,(Chr(&H25)))>0
percentage=adBreak.renderTime.split((Chr(&H25)))[0].toFloat()
adBreak.renderTime=_O1O0OOI11_O0(percentage)
end if
end for
end sub
sub checkAds(__III_IOOI1_I,_0O1OI1OI_0I0)
if not _III__I1_OOII()return 
if __III_IOOI1_I=(Chr(115)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)) and _0O1OI1OI_0I0=(Chr(102)+Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(115)+Chr(104)+Chr(&H65)+Chr(&H64))
__1OO00_OI0_0()
else 
_01I1I_OO_1O1(_0O1OI1OI_0I0)
end if
end sub
sub _OIIO111I1_I_(_1_0_0_I11I0I)
if not _III__I1_OOII()return 
_1_0_0_I11I0I.video=m.options.videoNode
_1_0_0_I11I0I.setVideoNodeObservers=(1=1)
end sub
sub _OO_1__00_O10(_1_0OOI1O001O)
if not _III__I1_OOII()return 
_1_0OOI1O001O.callFunc((Chr(114)+Chr(101)+Chr(109)+Chr(111)+Chr(118)+Chr(101)+Chr(86)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(&H6f)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)+Chr(79)+Chr(&H62)+Chr(&H73)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H65)+Chr(114)+Chr(&H73)),m.options.videoNode)
end sub
sub setAdEventListener(_01IOIIO0I010)
m.eventListener=_01IOIIO0I010
end sub
sub setScheduleAdBreakEventListener(__01_111_11I1)
m.scheduleAdBreakEventListener=__01_111_11I1
end sub
sub _O0_O_OO10_II()
if _1100IO1O_0_I(m.scheduleAdBreakEventListener)return 
m.scheduleAdBreakEventListener.eventOccurred={internalEventType:m.InternalAdEvents.AD_BREAK_SCHEDULED,eventData:{adBreakList:m.adBreakList}}
end sub
