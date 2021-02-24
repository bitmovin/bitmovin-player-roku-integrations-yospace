library "Roku_Ads.brs"
sub init()
m.options=invalid
m.eventListener=invalid
m.scheduleAdBreakEventListener=invalid
m.previousPlayerPosition=0
m.adBreakList=[]
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(73)+Chr(110)+Chr(&H66)+Chr(111)))
m.activeAdBreak=invalid
m.PREROLL=(Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(114)+Chr(&H6f)+Chr(108)+Chr(&H6c))
m.POSTROLL=(Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)+Chr(108))
m.MIDROLL=(Chr(109)+Chr(105)+Chr(&H64)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)+Chr(108))
m.RokuAdEvents=_OOIO0I_O1O01()
m.InternalAdEvents=_0_110I0I1_1_()
m.BitmovinAsyncOperationTypes=___IO10I10001()
m.adQuartileEventHandler=_O_10_II_IO_I({calculatePercentage:_1_0_00I__IOI,isBetweenBound:_I11OO1IO_OI1})
m.ExternalBitmovinPlayerFields=_OO0OOO1IOII_()
end sub
sub executeOperation(__III_1I_1I1I,__IIIIO11OIOI=invalid)
if __OOI0OI11_O0(__III_1I_1I1I.data)
?(Chr(&H41)+Chr(&H64)+Chr(118)+Chr(&H65)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(32)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(32)+Chr(&H57)+Chr(111)+Chr(&H72)+Chr(&H6b)+Chr(101)+Chr(&H72)+Chr(32)+Chr(&H63)+Chr(&H61)+Chr(110)+Chr(&H27)+Chr(116)+Chr(&H20)+Chr(101)+Chr(&H78)+Chr(101)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(32)+Chr(&H74)+Chr(104)+Chr(&H65)+Chr(32)+Chr(&H6f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(33)+Chr(32)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(&H20)+Chr(105)+Chr(&H6e)+Chr(&H76)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(100)+Chr(32)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(97)+Chr(&H2e))
return 
end if
if __III_1I_1I1I.type=m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER _O1I_OIOI01IO(__III_1I_1I1I,__IIIIO11OIOI)
if __III_1I_1I1I.type=m.BitmovinAsyncOperationTypes.SCHEDULE_ADS scheduleAds(__III_1I_1I1I)
if __III_1I_1I1I.type=m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK discardAdBreak(__III_1I_1I1I)
if __III_1I_1I1I.type=m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS _OII01I_1OO0O(__III_1I_1I1I)
end sub
function _0_O00I10I_I_()
if m.options=invalid return(1=2) 
if m.options.view=invalid return(1=2) 
if m.options.videoNode=invalid return(1=2) 
return(1=1) 
end function
sub _0O_OO_111I11(_I00IOI0I11O_,_IOO_1O___OI1)
if _IOO_1O___OI1.genre<>invalid _I00IOI0I11O_.setContentGenre(_IOO_1O___OI1.genre.name,_IOO_1O___OI1.genre.isKidsContent)
if _IOO_1O___OI1.id<>invalid _I00IOI0I11O_.setContentID(_IOO_1O___OI1.id)
if _IOO_1O___OI1.length<>invalid _I00IOI0I11O_.setContentLength(_IOO_1O___OI1.length)
end sub
sub _OIIOIO0OOOO_()
if not _0_O00I10I_I_()return 
video=m.options.videoNode
m.previousPlayerPosition=video.position
video.control=(Chr(&H53)+Chr(84)+Chr(&H4f)+Chr(80))
end sub
sub _OI0__I00_1O1()
if not _0_O00I10I_I_()return 
video=m.options.videoNode
if m.previousPlayerPosition>0 video.seek=m.previousPlayerPosition
video.control=(Chr(&H50)+Chr(76)+Chr(65)+Chr(&H59))
m.previousPlayerPosition=0
end sub
function _1OIIO10O__O1()
return m.deviceInfo.GetRandomUUID() 
end function
sub _IO0_0IIO0_1I(_I_00OO_IOO__)
if _I_00OO_IOO__=invalid return 
for each ad in _I_00OO_IOO__
if ad.adId=invalid or Len(ad.adId)=0 ad.adId=_1OIIO10O__O1()
end for
end sub
sub _I__OI11I_1I_(_1I000O_1000O,_I0IIO1II1O00)
if _1I000O_1000O=invalid return 
_OIO_O_100__I(_1I000O_1000O,_I0IIO1II1O00)
if type(_I0IIO1II1O00.position)<>(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(114)+Chr(105)+Chr(110)+Chr(103))
_0I0II1OO0IO1(_1I000O_1000O,_I0IIO1II1O00.position)
else if _I0IIO1II1O00.position=(Chr(&H70)+Chr(&H72)+Chr(101))or _I0IIO1II1O00.position=invalid
_1I000O_1000O.renderSequence=m.PREROLL
_1I000O_1000O.renderTime=0
else if _I0IIO1II1O00.position=(Chr(&H70)+Chr(111)+Chr(115)+Chr(116))
_1I000O_1000O.renderSequence=m.POSTROLL
else if right(_I0IIO1II1O00.position,1)=(Chr(&H25))
percentage=_I0IIO1II1O00.position.split((Chr(&H25)))[0].toFloat()
position=_I11_O____OI_(percentage)
if position<0 position=_I0IIO1II1O00.position
_0I0II1OO0IO1(_1I000O_1000O,position)
else if Instr(1,_I0IIO1II1O00.position,(Chr(&H3a)))>0
_0I0II1OO0IO1(_1I000O_1000O,_O111IO0_10OI(_I0IIO1II1O00.position))
end if
end sub
function _I11_O____OI_(_1I0I1_10_O0_)
duration=m.options.VideoNode.duration
position=_1I0I1_10_O0_
if not duration>0 return-1 
return duration*(position/100) 
end function
function _O111IO0_10OI(_O0IO00_I0110)
positionInSeconds=0
milliSeconds=_O0IO00_I0110.Split((Chr(46)))[1]
if milliSeconds<>invalid
positionInSeconds+=milliSeconds.toFloat()
end if
time=_O0IO00_I0110.Split((Chr(46)))[0].Split((Chr(58)))
for i=(time.count()-1)to(0 or(time.count()-3))step -1
positionInSeconds+=time[i].toFloat()*(60^((time.count()-i)-1))
end for
return positionInSeconds 
end function
sub _0I0II1OO0IO1(_0OO00_O0I1I_,_O1_00OIII1O0)
_0OO00_O0I1I_.renderSequence=m.MIDROLL
_0OO00_O0I1I_.renderTime=_O1_00OIII1O0
end sub
sub _O_IO011_OO1_()
for each adBreak in m.adBreakList
if adBreak.renderSequence=m.POSTROLL and adBreak.viewed=(1=2)
shouldResume=_I_O1__I11_01(adBreak,(1=1))
if not shouldResume exit for
end if
end for
end sub
sub _O0II10_011__(_I_10O00010_1)
for each adBreak in m.adBreakList
if(adBreak.renderSequence=m.MIDROLL or adBreak.renderSequence=m.PREROLL) and adBreak.viewed=(1=2)
if type(adBreak.renderTime)<>(Chr(114)+Chr(111)+Chr(83)+Chr(&H74)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67)) and _I_10O00010_1>=adBreak.renderTime
shouldResume=_I_O1__I11_01(adBreak)
if not shouldResume exit for
end if
end if
end for
end sub
function _I_O1__I11_01(_I101IOOIO1_I,_OO1_0O0OOO0I=(1=2))
m.activeAdBreak=_I101IOOIO1_I
shouldResume=_O_O1O101O0_1(_I101IOOIO1_I,_OO1_0O0OOO0I)
m.activeAdBreak=invalid
_I101IOOIO1_I.viewed=(1=1)
return shouldResume 
end function
function _O_O1O101O0_1(_1OO_00O00OI_,_II_IO00_0I__=(1=2))
_OIIOIO0OOOO_()
shouldResume=m.adInterface.showAds(_1OO_00O00OI_,invalid,m.options.view)
if shouldResume and not _II_IO00_0I__ _OI0__I00_1O1()
return shouldResume 
end function
sub _OIO_O_100__I(_00O0O00_O_II,_010OOI__1IOO)
if _00O0O00_O_II=invalid or _010OOI__1IOO=invalid return 
id=_010OOI__1IOO.id
if id=invalid id=_1OIIO10O__O1()
_00O0O00_O_II.id=id
end sub
sub _O1I_OIOI01IO(__10IO0100OO_,__OI1___0OOII)
m.options=__10IO0100OO_.data.options
m.adInterface=Roku_Ads()
_I_O__1II1OOO(__OI1___0OOII)
_O11O1I10I0_0(__OI1___0OOII)
_0O_OO_111I11(m.adInterface,m.options.adContentMetadata)
m.bitmovinAdvertisingEventFactory=_III0OO_011_1()
trackingCallback=function(_00101I1O01_0=invalid,_I1OOI0_0_O_0=invalid,_1II110_1IO11=invalid) as Void
if _00101I1O01_0.eventListener=invalid return 
internalAdvertisingEventType=Chr(0)
externalAdvertisingData=invalid
adPlayhead=_1II110_1IO11.time
adDuration=_1II110_1IO11.duration
if adPlayhead<>invalid
_00101I1O01_0.eventListener.eventOccurred={internalEventType:_00101I1O01_0.InternalAdEvents.AD_PLAYHEAD,externalEventData:_00101I1O01_0.bitmovinAdvertisingEventFactory.createTimeChangedEvent(adPlayhead,_00101I1O01_0.ExternalBitmovinPlayerFields)}
end if
if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.POD_START
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_BREAK_STARTED
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(_00101I1O01_0.activeAdBreak,_I1OOI0_0_O_0)
else if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.POD_COMPLETE
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_BREAK_FINISHED
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(_00101I1O01_0.activeAdBreak,_I1OOI0_0_O_0)
else if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.ACCEPT_INVITATION
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_INTERACTION
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1II110_1IO11)
else if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.ERROR or _I1OOI0_0_O_0=(Chr(&H4e)+Chr(111)+Chr(&H41)+Chr(100)+Chr(&H73)+Chr(69)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114))
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_ERROR
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdErrorEvent(_1II110_1IO11,_I1OOI0_0_O_0)
else if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.COMPLETE
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_FINISHED
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1II110_1IO11)
else if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.START
_00101I1O01_0.adQuartileEventHandler.resetQuartileAdEventReachedFlags()
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_STARTED
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1II110_1IO11)
else if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.SKIP or _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.CLOSE
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_SKIPPED
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1II110_1IO11)
else if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.PAUSE
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_PAUSE
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1II110_1IO11)
else if _I1OOI0_0_O_0=_00101I1O01_0.RokuAdEvents.RESUME
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_RESUME
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1II110_1IO11)
else if _00101I1O01_0.adQuartileEventHandler.isFirstQuartileReached(adPlayhead,adDuration)
_00101I1O01_0.adQuartileEventHandler.setFirstQuartileReachedFlag((1=1))
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(_00101I1O01_0.RokuAdEvents.FIRST_QUARTILE)
else if _00101I1O01_0.adQuartileEventHandler.isMidpointReached(adPlayhead,adDuration)
_00101I1O01_0.adQuartileEventHandler.setMidpointReachedFlag((1=1))
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(_00101I1O01_0.RokuAdEvents.MIDPOINT)
else if _00101I1O01_0.adQuartileEventHandler.isThirdQuartileReached(adPlayhead,adDuration)
_00101I1O01_0.adQuartileEventHandler.setThirdQuartileReachedFlag((1=1))
internalAdvertisingEventType=_00101I1O01_0.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=_00101I1O01_0.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(_00101I1O01_0.RokuAdEvents.THIRD_QUARTILE)
else 
return 
end if
_00101I1O01_0.eventListener.eventOccurred={internalEventType:internalAdvertisingEventType,externalEventData:externalAdvertisingData}
end function
m.adInterface.setTrackingCallback(trackingCallback,m)
end sub
sub scheduleAds(_0I_1O1OO_100)
if not _0_O00I10I_I_()return 
adBreaks=_0I_1O1OO_100.data.options.adBreaks
for each adBreak in adBreaks
m.adInterface.setAdUrl(adBreak.tag.url)
rokuFormattedAdBreaks=m.adInterface.getAds()
if adBreak.tag.type=(Chr(&H76)+Chr(97)+Chr(115)+Chr(&H74))
formattedAdBreak=rokuFormattedAdBreaks[0]
_I_0O_O_OOIO_(formattedAdBreak,adBreak)
else if adBreak.tag.type=(Chr(118)+Chr(109)+Chr(97)+Chr(&H70))
for each formattedAdBreak in rokuFormattedAdBreaks
_O_OIOO1I0OOI(formattedAdBreak,adBreak)
end for
end if
if formattedAdBreak<>invalid _IO0_0IIO0_1I(formattedAdBreak.ads)
end for
end sub
sub _I_0O_O_OOIO_(_100O0I00IOIO,_11_IIO_1O__O)
if __OOI0OI11_O0(_100O0I00IOIO)return 
_I__OI11I_1I_(_100O0I00IOIO,_11_IIO_1O__O)
_IO0_0IIO0_1I(_100O0I00IOIO.ads)
m.adBreakList.push(_100O0I00IOIO)
_I0_I10O1_I1O()
if _100O0I00IOIO.renderSequence=m.PREROLL _I_O1__I11_01(_100O0I00IOIO)
end sub
sub _O_OIOO1I0OOI(_0I11001III1O,_0_IOII1__1O0)
if __OOI0OI11_O0(_0I11001III1O)return 
_OIO_O_100__I(_0I11001III1O,_0_IOII1__1O0)
m.adBreakList.push(_0I11001III1O)
_I0_I10O1_I1O()
if _0I11001III1O.renderSequence=m.PREROLL
_0I11001III1O.renderTime=0
_I_O1__I11_01(_0I11001III1O)
end if
end sub
sub discardAdBreak(_I1110O_1III0)
if not _0_O00I10I_I_()return 
updatedAdBreakList=[]
for each adBreak in m.adBreakList
if adBreak.id<>_I1110O_1III0.data.options.adBreakId
updatedAdBreakList.push(adBreak)
end if
end for
m.adBreakList=updatedAdBreakList
_I1110O_1III0.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=1),{adList:m.adBreakList})
end sub
sub _OII01I_1OO0O(_0_OO0__100I_)
if not _0_O00I10I_I_()return 
m.adBreakList=[]
_0_OO0__100I_.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=1),{adList:m.adBreakList})
end sub
sub durationChanged(_0OO00O_IIO0_=invalid)
for each adBreak in m.adBreakList
if type(adBreak.renderTime)=(Chr(&H72)+Chr(111)+Chr(83)+Chr(&H74)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103)) and Instr(1,adBreak.renderTime,(Chr(&H25)))>0
percentage=adBreak.renderTime.split((Chr(37)))[0].toFloat()
adBreak.renderTime=_I11_O____OI_(percentage)
end if
end for
end sub
sub checkAds(_0_I_I11_I0_0,_IOO1II0OO0OO)
if not _0_O00I10I_I_()return 
if _0_I_I11_I0_0=(Chr(115)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101)) and _IOO1II0OO0OO=(Chr(&H66)+Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(115)+Chr(104)+Chr(&H65)+Chr(100))
_O_IO011_OO1_()
else 
_O0II10_011__(_IOO1II0OO0OO)
end if
end sub
sub _O11O1I10I0_0(_1O01___0I111)
if not _0_O00I10I_I_()return 
_1O01___0I111.video=m.options.videoNode
_1O01___0I111.setVideoNodeObservers=(1=1)
end sub
sub _I_O__1II1OOO(_I_I0_O011011)
if not _0_O00I10I_I_()return 
_I_I0_O011011.callFunc((Chr(114)+Chr(&H65)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(101)+Chr(&H56)+Chr(&H69)+Chr(&H64)+Chr(101)+Chr(111)+Chr(78)+Chr(111)+Chr(100)+Chr(101)+Chr(&H4f)+Chr(98)+Chr(&H73)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(101)+Chr(114)+Chr(115)),m.options.videoNode)
end sub
sub setAdEventListener(_0I_001I0I11O)
m.eventListener=_0I_001I0I11O
end sub
sub setScheduleAdBreakEventListener(_1__10O100IIO)
m.scheduleAdBreakEventListener=_1__10O100IIO
end sub
sub _I0_I10O1_I1O()
if __OOI0OI11_O0(m.scheduleAdBreakEventListener)return 
m.scheduleAdBreakEventListener.eventOccurred={internalEventType:m.InternalAdEvents.AD_BREAK_SCHEDULED,eventData:{adBreakList:m.adBreakList}}
end sub
