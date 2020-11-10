library "Roku_Ads.brs"
sub init()
m.options=invalid
m.eventListener=invalid
m.previousPlayerPosition=0
m.adBreakList=[]
m.deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H44)+Chr(&H65)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(111)))
m.activeAdBreak=invalid
m.PREROLL=(Chr(&H70)+Chr(114)+Chr(&H65)+Chr(114)+Chr(111)+Chr(&H6c)+Chr(108))
m.POSTROLL=(Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(&H74)+Chr(114)+Chr(111)+Chr(108)+Chr(108))
m.MIDROLL=(Chr(&H6d)+Chr(&H69)+Chr(100)+Chr(&H72)+Chr(&H6f)+Chr(108)+Chr(108))
m.RokuAdEvents=_1_IIO0I11I0I()
m.InternalAdEvents=_11_0OIIIOI0O()
m.BitmovinAsyncOperationTypes=_001_100I0III()
end sub
sub executeOperation(_0O1_I_IO_010,_OO_I1OO100O_=invalid)
if _IO1IIIOI0_1O(_0O1_I_IO_010.data)
?(Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(115)+Chr(105)+Chr(110)+Chr(103)+Chr(&H20)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H20)+Chr(87)+Chr(111)+Chr(114)+Chr(107)+Chr(&H65)+Chr(114)+Chr(32)+Chr(99)+Chr(97)+Chr(&H6e)+Chr(&H27)+Chr(116)+Chr(&H20)+Chr(101)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(116)+Chr(101)+Chr(&H20)+Chr(116)+Chr(104)+Chr(101)+Chr(&H20)+Chr(&H6f)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(33)+Chr(&H20)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H20)+Chr(105)+Chr(110)+Chr(&H76)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(32)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H61)+Chr(46))
return 
end if
if _0O1_I_IO_010.type=m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER __IO__1_I_I0I(_0O1_I_IO_010,_OO_I1OO100O_)
if _0O1_I_IO_010.type=m.BitmovinAsyncOperationTypes.SCHEDULE_ADS scheduleAds(_0O1_I_IO_010)
if _0O1_I_IO_010.type=m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK discardAdBreak(_0O1_I_IO_010)
if _0O1_I_IO_010.type=m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS _0III_III11I0(_0O1_I_IO_010)
end sub
function _1I0OI_10_1I_()
if m.options=invalid return(1=2) 
if m.options.view=invalid return(1=2) 
if m.options.videoNode=invalid return(1=2) 
return(1=1) 
end function
sub __0111IOOO0_1(_I0O0O1OO0O1_,_OIOOI1I0_00I)
if _OIOOI1I0_00I.genre<>invalid _I0O0O1OO0O1_.setContentGenre(_OIOOI1I0_00I.genre.name,_OIOOI1I0_00I.genre.isKidsContent)
if _OIOOI1I0_00I.id<>invalid _I0O0O1OO0O1_.setContentID(_OIOOI1I0_00I.id)
if _OIOOI1I0_00I.length<>invalid _I0O0O1OO0O1_.setContentLength(_OIOOI1I0_00I.length)
end sub
sub _1__O000O_O0_()
if not _1I0OI_10_1I_()return 
video=m.options.videoNode
m.previousPlayerPosition=video.position
video.control=(Chr(83)+Chr(&H54)+Chr(&H4f)+Chr(&H50))
end sub
sub _0_0OOI0_IIO1()
if not _1I0OI_10_1I_()return 
video=m.options.videoNode
if m.previousPlayerPosition>0 video.seek=m.previousPlayerPosition
video.control=(Chr(&H50)+Chr(76)+Chr(&H41)+Chr(&H59))
m.previousPlayerPosition=0
end sub
function _I01O0O1IO_0O()
return m.deviceInfo.GetRandomUUID() 
end function
sub _OO0IOI0I0_O1(_0__I100_I0_I)
if _0__I100_I0_I=invalid return 
for each ad in _0__I100_I0_I
if ad.adId=invalid or Len(ad.adId)=0 ad.adId=_I01O0O1IO_0O()
end for
end sub
sub _1_0II_OI11O0(_000OIO01OIO0,_0I0_0I11_10I)
if _000OIO01OIO0=invalid return 
__01_1I1O1_1_(_000OIO01OIO0,_0I0_0I11_10I)
if type(_0I0_0I11_10I.position)<>(Chr(114)+Chr(111)+Chr(&H53)+Chr(&H74)+Chr(&H72)+Chr(105)+Chr(110)+Chr(103))
_10OOII00_OI_(_000OIO01OIO0,_0I0_0I11_10I.position)
else if _0I0_0I11_10I.position=(Chr(&H70)+Chr(&H72)+Chr(&H65))or _0I0_0I11_10I.position=invalid
_000OIO01OIO0.renderSequence=m.PREROLL
_000OIO01OIO0.renderTime=0
else if _0I0_0I11_10I.position=(Chr(&H70)+Chr(111)+Chr(115)+Chr(116))
_000OIO01OIO0.renderSequence=m.POSTROLL
else if right(_0I0_0I11_10I.position,1)=(Chr(37))
percentage=_0I0_0I11_10I.position.split((Chr(&H25)))[0].toFloat()
position=_III100_I0OOO(percentage)
if position<0 position=_0I0_0I11_10I.position
_10OOII00_OI_(_000OIO01OIO0,position)
else if Instr(1,_0I0_0I11_10I.position,(Chr(&H3a)))>0
_10OOII00_OI_(_000OIO01OIO0,_O111__I_0_II(_0I0_0I11_10I.position))
end if
end sub
function _III100_I0OOO(__0I00I0OO0__)
duration=m.options.VideoNode.duration
position=__0I00I0OO0__
if not duration>0 return-1 
return duration*(position/100) 
end function
function _O111__I_0_II(_I10I1__OO_01)
positionInSeconds=0
milliSeconds=_I10I1__OO_01.Split((Chr(46)))[1]
if milliSeconds<>invalid
positionInSeconds+=milliSeconds.toFloat()
end if
time=_I10I1__OO_01.Split((Chr(&H2e)))[0].Split((Chr(&H3a)))
for i=(time.count()-1)to(0 or(time.count()-3))step -1
positionInSeconds+=time[i].toFloat()*(60^((time.count()-i)-1))
end for
return positionInSeconds 
end function
sub _10OOII00_OI_(_I_OOO0O00_1I,_111IOOO0IO1_)
_I_OOO0O00_1I.renderSequence=m.MIDROLL
_I_OOO0O00_1I.renderTime=_111IOOO0IO1_
end sub
sub _1O10O_0O_110()
for each adBreak in m.adBreakList
if adBreak.renderSequence=m.POSTROLL and adBreak.viewed=(1=2)
m.activeAdBreak=adBreak
shouldResume=_OII01OIIO__I(adBreak,(1=1))
m.activeAdBreak=invalid
adBreak.viewed=(1=1)
if not shouldResume exit for
end if
end for
end sub
sub _O__OO1_I0O_I(_II0O00_0_O0_)
for each adBreak in m.adBreakList
if(adBreak.renderSequence=m.MIDROLL or adBreak.renderSequence=m.PREROLL) and adBreak.viewed=(1=2)
if type(adBreak.renderTime)<>(Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(116)+Chr(114)+Chr(&H69)+Chr(&H6e)+Chr(&H67)) and _II0O00_0_O0_>=adBreak.renderTime
m.activeAdBreak=adBreak
shouldResume=_OII01OIIO__I(adBreak)
m.activeAdBreak=invalid
adBreak.viewed=(1=1)
if not shouldResume exit for
end if
end if
end for
end sub
function _OII01OIIO__I(_1_I0___I_0IO,_101O0I__IO__=(1=2))
_1__O000O_O0_()
shouldResume=m.adInterface.showAds(_1_I0___I_0IO,invalid,m.options.view)
if shouldResume and not _101O0I__IO__ _0_0OOI0_IIO1()
return shouldResume 
end function
sub __01_1I1O1_1_(_1100_0I1I11_,_101I11I1001O)
if _1100_0I1I11_=invalid or _101I11I1001O=invalid return 
id=_101I11I1001O.id
if id=invalid id=_I01O0O1IO_0O()
_1100_0I1I11_.id=id
end sub
sub __IO__1_I_I0I(_O10__O0_O_0O,_O_I0O0__0I1I)
m.options=_O10__O0_O_0O.data.options
m.adInterface=Roku_Ads()
_IIOII_0__O_O(_O_I0O0__0I1I)
___III000OO11(_O_I0O0__0I1I)
__0111IOOO0_1(m.adInterface,m.options.adContentMetadata)
m.bitmovinAdvertisingEventFactory=_1_OO1IO0I1O_()
trackingCallback=function(__1O0_O_0II_0=invalid,__0I0_I_1_0OI=invalid,_I_00I1I0I_00=invalid) as Void
if __1O0_O_0II_0.eventListener=invalid return 
internalAdvertisingEventType=Chr(0)
externalAdvertisingData=invalid
if __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.POD_START
internalAdvertisingEventType=__1O0_O_0II_0.InternalAdEvents.AD_BREAK_STARTED
externalAdvertisingData=__1O0_O_0II_0.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(__1O0_O_0II_0.activeAdBreak,__0I0_I_1_0OI)
else if __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.POD_COMPLETE
internalAdvertisingEventType=__1O0_O_0II_0.InternalAdEvents.AD_BREAK_FINISHED
externalAdvertisingData=__1O0_O_0II_0.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(__1O0_O_0II_0.activeAdBreak,__0I0_I_1_0OI)
else if __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.ACCEPT_INVITATION
internalAdvertisingEventType=__1O0_O_0II_0.InternalAdEvents.AD_INTERACTION
externalAdvertisingData=__1O0_O_0II_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_00I1I0I_00)
else if __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.ERROR or __0I0_I_1_0OI=(Chr(&H4e)+Chr(111)+Chr(&H41)+Chr(100)+Chr(115)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72))
internalAdvertisingEventType=__1O0_O_0II_0.InternalAdEvents.AD_ERROR
externalAdvertisingData=__1O0_O_0II_0.bitmovinAdvertisingEventFactory.createBitmovinAdErrorEvent(_I_00I1I0I_00,__0I0_I_1_0OI)
else if __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.COMPLETE
internalAdvertisingEventType=__1O0_O_0II_0.InternalAdEvents.AD_FINISHED
externalAdvertisingData=__1O0_O_0II_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_00I1I0I_00)
else if __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.FIRST_QUARTILE or __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.MIDPOINT or __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.THIRD_QUARTILE
internalAdvertisingEventType=__1O0_O_0II_0.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=__1O0_O_0II_0.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(__0I0_I_1_0OI)
else if __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.START
internalAdvertisingEventType=__1O0_O_0II_0.InternalAdEvents.AD_STARTED
externalAdvertisingData=__1O0_O_0II_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_00I1I0I_00)
else if __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.SKIP or __0I0_I_1_0OI=__1O0_O_0II_0.RokuAdEvents.CLOSE
internalAdvertisingEventType=__1O0_O_0II_0.InternalAdEvents.AD_SKIPPED
externalAdvertisingData=__1O0_O_0II_0.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_00I1I0I_00)
else 
return 
end if
__1O0_O_0II_0.eventListener.eventOccurred={internalEventType:internalAdvertisingEventType,externalEventData:externalAdvertisingData}
end function
m.adInterface.setTrackingCallback(trackingCallback,m)
end sub
sub scheduleAds(_II1OIOIO0000)
if not _1I0OI_10_1I_()return 
adBreaks=_II1OIOIO0000.data.options.adBreaks
for each adBreak in adBreaks
m.adInterface.setAdUrl(adBreak.tag.url)
rokuFormattedAdBreaks=m.adInterface.getAds()
if adBreak.tag.type=(Chr(&H76)+Chr(&H61)+Chr(&H73)+Chr(116))
formattedAdBreak=rokuFormattedAdBreaks[0]
_1_0II_OI11O0(formattedAdBreak,adBreak)
if formattedAdBreak<>invalid m.adBreakList.push(formattedAdBreak)
else if adBreak.tag.type=(Chr(118)+Chr(109)+Chr(&H61)+Chr(112))
for each formattedAdBreak in rokuFormattedAdBreaks
if formattedAdBreak.renderSequence=m.PREROLL formattedAdBreak.renderTime=0
formattedAdBreak.id=_I01O0O1IO_0O()
m.adBreakList.push(formattedAdBreak)
end for
end if
if formattedAdBreak<>invalid _OO0IOI0I0_O1(formattedAdBreak.ads)
end for
_II1OIOIO0000.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H52)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=1),{adList:m.adBreakList})
end sub
sub discardAdBreak(_OI1I0OIOOO1I)
if not _1I0OI_10_1I_()return 
updatedAdBreakList=[]
for each adBreak in m.adBreakList
if adBreak.id<>_OI1I0OIOOO1I.data.options.adBreakId
updatedAdBreakList.push(adBreak)
end if
end for
m.adBreakList=updatedAdBreakList
_OI1I0OIOOO1I.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(1=1),{adList:m.adBreakList})
end sub
sub _0III_III11I0(_11_1O_OO__10)
if not _1I0OI_10_1I_()return 
m.adBreakList=[]
_11_1O_OO__10.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=1),{adList:m.adBreakList})
end sub
sub durationChanged(_I101_0OI_01_=invalid)
for each adBreak in m.adBreakList
if type(adBreak.renderTime)=(Chr(114)+Chr(111)+Chr(83)+Chr(&H74)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(&H67)) and Instr(1,adBreak.renderTime,(Chr(37)))>0
percentage=adBreak.renderTime.split((Chr(&H25)))[0].toFloat()
adBreak.renderTime=_III100_I0OOO(percentage)
end if
end for
end sub
sub checkAds(_O11I1OI_O00_,__O10_O000O0_)
if not _1I0OI_10_1I_()return 
if _O11I1OI_O00_=(Chr(115)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)) and __O10_O000O0_=(Chr(&H66)+Chr(105)+Chr(110)+Chr(105)+Chr(115)+Chr(104)+Chr(&H65)+Chr(&H64))
_1O10O_0O_110()
else 
_O__OO1_I0O_I(__O10_O000O0_)
end if
end sub
sub ___III000OO11(_0I01O_11OOOO)
if not _1I0OI_10_1I_()return 
_0I01O_11OOOO.video=m.options.videoNode
_0I01O_11OOOO.setVideoNodeObservers=(1=1)
end sub
sub _IIOII_0__O_O(_I1I_O0OO00_1)
if not _1I0OI_10_1I_()return 
_I1I_O0OO00_1.callFunc((Chr(&H72)+Chr(&H65)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(101)+Chr(&H56)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(111)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(&H4f)+Chr(&H62)+Chr(&H73)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H65)+Chr(114)+Chr(115)),m.options.videoNode)
end sub
sub setAdEventListener(_III__I01_O0_)
m.eventListener=_III__I01_O0_
end sub
