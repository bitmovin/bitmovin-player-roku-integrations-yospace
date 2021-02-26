library "Roku_Ads.brs"
sub init()
m.options=invalid
m.eventListener=invalid
m.scheduleAdBreakEventListener=invalid
m.previousPlayerPosition=0
m.adBreakList=[]
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(68)+Chr(&H65)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(73)+Chr(110)+Chr(102)+Chr(111)))
m.activeAdBreak=invalid
m.PREROLL=(Chr(112)+Chr(114)+Chr(&H65)+Chr(&H72)+Chr(111)+Chr(108)+Chr(108))
m.POSTROLL=(Chr(&H70)+Chr(111)+Chr(115)+Chr(&H74)+Chr(&H72)+Chr(111)+Chr(108)+Chr(108))
m.MIDROLL=(Chr(&H6d)+Chr(105)+Chr(100)+Chr(&H72)+Chr(&H6f)+Chr(108)+Chr(108))
m.RokuAdEvents=___0___IOIOO1()
m.InternalAdEvents=_1OII_1_0_II_()
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
m.adQuartileEventHandler=__OIO_10I10_1({calculatePercentage:_111000O0I00_,isBetweenBound:__I0_IOII_OIO})
m.ExternalBitmovinPlayerFields=_I__1I0I_O__0()
end sub
sub executeOperation(_0_OIO1I0O01O,_OOOI0IO10_00=invalid)
if _OO_O1_O1O0O_(_0_OIO1I0O01O.data)
?(Chr(65)+Chr(&H64)+Chr(&H76)+Chr(101)+Chr(114)+Chr(116)+Chr(&H69)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H20)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H20)+Chr(87)+Chr(111)+Chr(&H72)+Chr(107)+Chr(101)+Chr(114)+Chr(32)+Chr(99)+Chr(&H61)+Chr(&H6e)+Chr(&H27)+Chr(116)+Chr(&H20)+Chr(&H65)+Chr(120)+Chr(101)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(101)+Chr(&H20)+Chr(116)+Chr(&H68)+Chr(101)+Chr(32)+Chr(&H6f)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H21)+Chr(32)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(32)+Chr(&H69)+Chr(&H6e)+Chr(118)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(&H64)+Chr(&H20)+Chr(100)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(&H2e))
return 
end if
if _0_OIO1I0O01O.type=m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER __0_OO0__0_IO(_0_OIO1I0O01O,_OOOI0IO10_00)
if _0_OIO1I0O01O.type=m.BitmovinAsyncOperationTypes.SCHEDULE_ADS scheduleAds(_0_OIO1I0O01O)
if _0_OIO1I0O01O.type=m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK discardAdBreak(_0_OIO1I0O01O)
if _0_OIO1I0O01O.type=m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS _0I1O_1O1_1_1(_0_OIO1I0O01O)
end sub
function _OO10I1I1_00_()
if m.options=invalid return(1=2) 
if m.options.view=invalid return(1=2) 
if m.options.videoNode=invalid return(1=2) 
return(1=1) 
end function
sub _1OII0I0110I1(_100_0__IO00I,__110IO1_O01O)
if __110IO1_O01O.genre<>invalid _100_0__IO00I.setContentGenre(__110IO1_O01O.genre.name,__110IO1_O01O.genre.isKidsContent)
if __110IO1_O01O.id<>invalid _100_0__IO00I.setContentID(__110IO1_O01O.id)
if __110IO1_O01O.length<>invalid _100_0__IO00I.setContentLength(__110IO1_O01O.length)
end sub
sub _IIOIIOO_1111()
if not _OO10I1I1_00_()return 
video=m.options.videoNode
m.previousPlayerPosition=video.position
video.control=(Chr(83)+Chr(&H54)+Chr(79)+Chr(80))
end sub
sub _I0__O10IIOI0()
if not _OO10I1I1_00_()return 
video=m.options.videoNode
if m.previousPlayerPosition>0 video.seek=m.previousPlayerPosition
video.control=(Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H59))
m.previousPlayerPosition=0
end sub
function _0I_O_IIII0O_()
return m.deviceInfo.GetRandomUUID() 
end function
sub _O0_1__OI110I(___O1OO0_O_00)
if ___O1OO0_O_00=invalid return 
for each ad in ___O1OO0_O_00
if ad.adId=invalid or Len(ad.adId)=0 ad.adId=_0I_O_IIII0O_()
end for
end sub
sub __01_II1I00II(_0O0IOI0_011O,_I11II0O_I111)
if _0O0IOI0_011O=invalid return 
__1O_O__IIIOI(_0O0IOI0_011O,_I11II0O_I111)
if type(_I11II0O_I111.position)<>(Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H74)+Chr(114)+Chr(&H69)+Chr(&H6e)+Chr(&H67))
_O1OIOOI_II1_(_0O0IOI0_011O,_I11II0O_I111.position)
else if _I11II0O_I111.position=(Chr(112)+Chr(&H72)+Chr(&H65))or _I11II0O_I111.position=invalid
_0O0IOI0_011O.renderSequence=m.PREROLL
_0O0IOI0_011O.renderTime=0
else if _I11II0O_I111.position=(Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(&H74))
_0O0IOI0_011O.renderSequence=m.POSTROLL
else if right(_I11II0O_I111.position,1)=(Chr(&H25))
percentage=_I11II0O_I111.position.split((Chr(37)))[0].toFloat()
position=_IO00O_0OOO__(percentage)
if position<0 position=_I11II0O_I111.position
_O1OIOOI_II1_(_0O0IOI0_011O,position)
else if Instr(1,_I11II0O_I111.position,(Chr(58)))>0
_O1OIOOI_II1_(_0O0IOI0_011O,_101_OI01OOI0(_I11II0O_I111.position))
end if
end sub
function _IO00O_0OOO__(_I0III10IOI_I)
duration=m.options.VideoNode.duration
position=_I0III10IOI_I
if not duration>0 return-1 
return duration*(position/100) 
end function
function _101_OI01OOI0(_I000O1I_O_O0)
positionInSeconds=0
milliSeconds=_I000O1I_O_O0.Split((Chr(46)))[1]
if milliSeconds<>invalid
positionInSeconds+=milliSeconds.toFloat()
end if
time=_I000O1I_O_O0.Split((Chr(&H2e)))[0].Split((Chr(&H3a)))
for i=(time.count()-1)to(0 or(time.count()-3))step -1
positionInSeconds+=time[i].toFloat()*(60^((time.count()-i)-1))
end for
return positionInSeconds 
end function
sub _O1OIOOI_II1_(_1I001I0IO1I0,_III01IO__0__)
_1I001I0IO1I0.renderSequence=m.MIDROLL
_1I001I0IO1I0.renderTime=_III01IO__0__
end sub
sub _I1I1IO_10_I0()
for each adBreak in m.adBreakList
if adBreak.renderSequence=m.POSTROLL and adBreak.viewed=(1=2)
shouldResume=__0_01__IIIO0(adBreak,(1=1))
if not shouldResume exit for
end if
end for
end sub
sub _I_10O1O1II0O(_O1OO__I01O0O)
for each adBreak in m.adBreakList
if(adBreak.renderSequence=m.MIDROLL or adBreak.renderSequence=m.PREROLL) and adBreak.viewed=(1=2)
if type(adBreak.renderTime)<>(Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H74)+Chr(114)+Chr(105)+Chr(110)+Chr(103)) and _O1OO__I01O0O>=adBreak.renderTime
shouldResume=__0_01__IIIO0(adBreak)
if not shouldResume exit for
end if
end if
end for
end sub
function __0_01__IIIO0(_1_O1II_OO_0I,_O00___0O01_0=(1=2))
m.activeAdBreak=_1_O1II_OO_0I
shouldResume=_10_1I1_0II_0(_1_O1II_OO_0I,_O00___0O01_0)
m.activeAdBreak=invalid
_1_O1II_OO_0I.viewed=(1=1)
return shouldResume 
end function
function _10_1I1_0II_0(_0I01IIII0_00,_1_0I__0II111=(1=2))
_IIOIIOO_1111()
shouldResume=m.adInterface.showAds(_0I01IIII0_00,invalid,m.options.view)
if shouldResume and not _1_0I__0II111 _I0__O10IIOI0()
return shouldResume 
end function
sub __1O_O__IIIOI(__I_1__O10I11,_I0___I__1I01)
if __I_1__O10I11=invalid or _I0___I__1I01=invalid return 
id=_I0___I__1I01.id
if id=invalid id=_0I_O_IIII0O_()
__I_1__O10I11.id=id
end sub
sub __0_OO0__0_IO(_0II1OO00010I,_O01_II_I_00O)
m.options=_0II1OO00010I.data.options
m.adInterface=Roku_Ads()
_I_I0_OO1I0O0(_O01_II_I_00O)
_O_1I__011__I(_O01_II_I_00O)
_1OII0I0110I1(m.adInterface,m.options.adContentMetadata)
m.bitmovinAdvertisingEventFactory=_I1I_O1I0I100()
trackingCallback=function(___0I1IIO0___=invalid,__1I00O_O0II1=invalid,_1I_I00OII_O1=invalid) as Void
if ___0I1IIO0___.eventListener=invalid return 
internalAdvertisingEventType=Chr(0)
externalAdvertisingData=invalid
adPlayhead=_1I_I00OII_O1.time
adDuration=_1I_I00OII_O1.duration
if adPlayhead<>invalid
___0I1IIO0___.eventListener.eventOccurred={internalEventType:___0I1IIO0___.InternalAdEvents.AD_PLAYHEAD,externalEventData:___0I1IIO0___.bitmovinAdvertisingEventFactory.createTimeChangedEvent(adPlayhead,___0I1IIO0___.ExternalBitmovinPlayerFields)}
end if
if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.POD_START
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_BREAK_STARTED
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(___0I1IIO0___.activeAdBreak,__1I00O_O0II1)
else if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.POD_COMPLETE
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_BREAK_FINISHED
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(___0I1IIO0___.activeAdBreak,__1I00O_O0II1)
else if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.ACCEPT_INVITATION
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_INTERACTION
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1I_I00OII_O1)
else if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.ERROR or __1I00O_O0II1=(Chr(78)+Chr(111)+Chr(65)+Chr(&H64)+Chr(115)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72))
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_ERROR
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdErrorEvent(_1I_I00OII_O1,__1I00O_O0II1)
else if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.COMPLETE
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_FINISHED
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1I_I00OII_O1)
else if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.START
___0I1IIO0___.adQuartileEventHandler.resetQuartileAdEventReachedFlags()
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_STARTED
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1I_I00OII_O1)
else if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.SKIP or __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.CLOSE
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_SKIPPED
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1I_I00OII_O1)
else if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.PAUSE
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_PAUSE
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1I_I00OII_O1)
else if __1I00O_O0II1=___0I1IIO0___.RokuAdEvents.RESUME
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_RESUME
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1I_I00OII_O1)
else if ___0I1IIO0___.adQuartileEventHandler.isFirstQuartileReached(adPlayhead,adDuration)
___0I1IIO0___.adQuartileEventHandler.setFirstQuartileReachedFlag((1=1))
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(___0I1IIO0___.RokuAdEvents.FIRST_QUARTILE)
else if ___0I1IIO0___.adQuartileEventHandler.isMidpointReached(adPlayhead,adDuration)
___0I1IIO0___.adQuartileEventHandler.setMidpointReachedFlag((1=1))
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(___0I1IIO0___.RokuAdEvents.MIDPOINT)
else if ___0I1IIO0___.adQuartileEventHandler.isThirdQuartileReached(adPlayhead,adDuration)
___0I1IIO0___.adQuartileEventHandler.setThirdQuartileReachedFlag((1=1))
internalAdvertisingEventType=___0I1IIO0___.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=___0I1IIO0___.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(___0I1IIO0___.RokuAdEvents.THIRD_QUARTILE)
else 
return 
end if
___0I1IIO0___.eventListener.eventOccurred={internalEventType:internalAdvertisingEventType,externalEventData:externalAdvertisingData}
end function
m.adInterface.setTrackingCallback(trackingCallback,m)
end sub
sub scheduleAds(_1_1_10OIOO_I)
if not _OO10I1I1_00_()return 
adBreaks=_1_1_10OIOO_I.data.options.adBreaks
for each adBreak in adBreaks
m.adInterface.setAdUrl(adBreak.tag.url)
rokuFormattedAdBreaks=m.adInterface.getAds()
if adBreak.tag.type=(Chr(&H76)+Chr(97)+Chr(115)+Chr(116))
formattedAdBreak=rokuFormattedAdBreaks[0]
__OIOOIO00O_1(formattedAdBreak,adBreak)
else if adBreak.tag.type=(Chr(118)+Chr(109)+Chr(&H61)+Chr(&H70))
for each formattedAdBreak in rokuFormattedAdBreaks
_1OO_O_I00___(formattedAdBreak,adBreak)
end for
end if
if formattedAdBreak<>invalid _O0_1__OI110I(formattedAdBreak.ads)
end for
end sub
sub __OIOOIO00O_1(_1I_0O0O_100I,_0IO11_OIOOIO)
if _OO_O1_O1O0O_(_1I_0O0O_100I)return 
__01_II1I00II(_1I_0O0O_100I,_0IO11_OIOOIO)
_O0_1__OI110I(_1I_0O0O_100I.ads)
m.adBreakList.push(_1I_0O0O_100I)
_IOO1OIO10O01()
if _1I_0O0O_100I.renderSequence=m.PREROLL __0_01__IIIO0(_1I_0O0O_100I)
end sub
sub _1OO_O_I00___(_IIIOI0I00OO_,_OI1I_1O1I_O0)
if _OO_O1_O1O0O_(_IIIOI0I00OO_)return 
__1O_O__IIIOI(_IIIOI0I00OO_,_OI1I_1O1I_O0)
m.adBreakList.push(_IIIOI0I00OO_)
_IOO1OIO10O01()
if _IIIOI0I00OO_.renderSequence=m.PREROLL
_IIIOI0I00OO_.renderTime=0
__0_01__IIIO0(_IIIOI0I00OO_)
end if
end sub
sub discardAdBreak(_O1I101OIII0O)
if not _OO10I1I1_00_()return 
updatedAdBreakList=[]
for each adBreak in m.adBreakList
if adBreak.id<>_O1I101OIII0O.data.options.adBreakId
updatedAdBreakList.push(adBreak)
end if
end for
m.adBreakList=updatedAdBreakList
_O1I101OIII0O.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H52)+Chr(101)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(1=1),{adList:m.adBreakList})
end sub
sub _0I1O_1O1_1_1(_O1I1_OOO0OOO)
if not _OO10I1I1_00_()return 
m.adBreakList=[]
_O1I1_OOO0OOO.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(82)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=1),{adList:m.adBreakList})
end sub
sub durationChanged(_01110011IO__=invalid)
for each adBreak in m.adBreakList
if type(adBreak.renderTime)=(Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H74)+Chr(114)+Chr(105)+Chr(110)+Chr(103)) and Instr(1,adBreak.renderTime,(Chr(37)))>0
percentage=adBreak.renderTime.split((Chr(37)))[0].toFloat()
adBreak.renderTime=_IO00O_0OOO__(percentage)
end if
end for
end sub
sub checkAds(_O_I10O_OO1__,__OI00_IIO0II)
if not _OO10I1I1_00_()return 
if _O_I10O_OO1__=(Chr(115)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H65)) and __OI00_IIO0II=(Chr(&H66)+Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(&H64))
_I1I1IO_10_I0()
else 
_I_10O1O1II0O(__OI00_IIO0II)
end if
end sub
sub _O_1I__011__I(_I1I00IIII_I_)
if not _OO10I1I1_00_()return 
_I1I00IIII_I_.video=m.options.videoNode
_I1I00IIII_I_.setVideoNodeObservers=(1=1)
end sub
sub _I_I0_OO1I0O0(_10O111O1_OII)
if not _OO10I1I1_00_()return 
_10O111O1_OII.callFunc((Chr(&H72)+Chr(101)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H65)+Chr(86)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(111)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)+Chr(79)+Chr(98)+Chr(&H73)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(101)+Chr(114)+Chr(115)),m.options.videoNode)
end sub
sub setAdEventListener(_1OO_O001I000)
m.eventListener=_1OO_O001I000
end sub
sub setScheduleAdBreakEventListener(_O__IOI_OO_0I)
m.scheduleAdBreakEventListener=_O__IOI_OO_0I
end sub
sub _IOO1OIO10O01()
if _OO_O1_O1O0O_(m.scheduleAdBreakEventListener)return 
m.scheduleAdBreakEventListener.eventOccurred={internalEventType:m.InternalAdEvents.AD_BREAK_SCHEDULED,eventData:{adBreakList:m.adBreakList}}
end sub
