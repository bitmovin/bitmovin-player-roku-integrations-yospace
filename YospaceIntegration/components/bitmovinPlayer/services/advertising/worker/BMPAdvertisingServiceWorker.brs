library "Roku_Ads.brs"
sub init()
m.options=invalid
m.eventListener=invalid
m.scheduleAdBreakEventListener=invalid
m.previousPlayerPosition=0
m.adBreakList=[]
m.deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(68)+Chr(101)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(73)+Chr(110)+Chr(&H66)+Chr(&H6f)))
m.activeAdBreak=invalid
m.PREROLL=(Chr(112)+Chr(114)+Chr(101)+Chr(&H72)+Chr(111)+Chr(&H6c)+Chr(&H6c))
m.POSTROLL=(Chr(112)+Chr(111)+Chr(&H73)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(&H6c)+Chr(108))
m.MIDROLL=(Chr(109)+Chr(105)+Chr(&H64)+Chr(&H72)+Chr(111)+Chr(108)+Chr(108))
m.RokuAdEvents=_0O01OO_I0000()
m.InternalAdEvents=_I00OOOO__OI1()
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
end sub
sub executeOperation(_I11___1I0_I_,_0I1O0IIII_OO=invalid)
if ___0O_II_00I_(_I11___1I0_I_.data)
?(Chr(&H41)+Chr(100)+Chr(&H76)+Chr(101)+Chr(&H72)+Chr(116)+Chr(105)+Chr(115)+Chr(&H69)+Chr(110)+Chr(103)+Chr(32)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H20)+Chr(&H57)+Chr(111)+Chr(114)+Chr(107)+Chr(101)+Chr(&H72)+Chr(&H20)+Chr(&H63)+Chr(&H61)+Chr(110)+Chr(&H27)+Chr(116)+Chr(32)+Chr(&H65)+Chr(&H78)+Chr(101)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(&H20)+Chr(116)+Chr(&H68)+Chr(101)+Chr(&H20)+Chr(&H6f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H21)+Chr(32)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(32)+Chr(105)+Chr(110)+Chr(118)+Chr(97)+Chr(108)+Chr(&H69)+Chr(100)+Chr(32)+Chr(100)+Chr(97)+Chr(&H74)+Chr(97)+Chr(&H2e))
return 
end if
if _I11___1I0_I_.type=m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER __1101I1_00OI(_I11___1I0_I_,_0I1O0IIII_OO)
if _I11___1I0_I_.type=m.BitmovinAsyncOperationTypes.SCHEDULE_ADS scheduleAds(_I11___1I0_I_)
if _I11___1I0_I_.type=m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK discardAdBreak(_I11___1I0_I_)
if _I11___1I0_I_.type=m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS _1IO00_O_IO_0(_I11___1I0_I_)
end sub
function _I10__0_IO1O1()
if m.options=invalid return(1=2) 
if m.options.view=invalid return(1=2) 
if m.options.videoNode=invalid return(1=2) 
return(1=1) 
end function
sub _01I1OO__OO1I(__I1IO0OI_1I1,_1O_I000O_001)
if _1O_I000O_001.genre<>invalid __I1IO0OI_1I1.setContentGenre(_1O_I000O_001.genre.name,_1O_I000O_001.genre.isKidsContent)
if _1O_I000O_001.id<>invalid __I1IO0OI_1I1.setContentID(_1O_I000O_001.id)
if _1O_I000O_001.length<>invalid __I1IO0OI_1I1.setContentLength(_1O_I000O_001.length)
end sub
sub _0_OI10I1I010()
if not _I10__0_IO1O1()return 
video=m.options.videoNode
m.previousPlayerPosition=video.position
video.control=(Chr(&H53)+Chr(84)+Chr(79)+Chr(80))
end sub
sub _I11I_O11O__1()
if not _I10__0_IO1O1()return 
video=m.options.videoNode
if m.previousPlayerPosition>0 video.seek=m.previousPlayerPosition
video.control=(Chr(80)+Chr(76)+Chr(65)+Chr(89))
m.previousPlayerPosition=0
end sub
function _1OO1O_0O10I_()
return m.deviceInfo.GetRandomUUID() 
end function
sub __0_OI1I01O__(_0IOO_I01III_)
if _0IOO_I01III_=invalid return 
for each ad in _0IOO_I01III_
if ad.adId=invalid or Len(ad.adId)=0 ad.adId=_1OO1O_0O10I_()
end for
end sub
sub _0I1O0O1_00_O(_OI_O1I101O_I,_I__010__11_0)
if _OI_O1I101O_I=invalid return 
_0_01_O_I_O1_(_OI_O1I101O_I,_I__010__11_0)
if type(_I__010__11_0.position)<>(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(116)+Chr(114)+Chr(105)+Chr(110)+Chr(&H67))
_II00O1I00__O(_OI_O1I101O_I,_I__010__11_0.position)
else if _I__010__11_0.position=(Chr(112)+Chr(&H72)+Chr(&H65))or _I__010__11_0.position=invalid
_OI_O1I101O_I.renderSequence=m.PREROLL
_OI_O1I101O_I.renderTime=0
else if _I__010__11_0.position=(Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(&H74))
_OI_O1I101O_I.renderSequence=m.POSTROLL
else if right(_I__010__11_0.position,1)=(Chr(&H25))
percentage=_I__010__11_0.position.split((Chr(37)))[0].toFloat()
position=__O0OO1O_011O(percentage)
if position<0 position=_I__010__11_0.position
_II00O1I00__O(_OI_O1I101O_I,position)
else if Instr(1,_I__010__11_0.position,(Chr(58)))>0
_II00O1I00__O(_OI_O1I101O_I,_I1O00II1IO_I(_I__010__11_0.position))
end if
end sub
function __O0OO1O_011O(_0O00_OI_O_0I)
duration=m.options.VideoNode.duration
position=_0O00_OI_O_0I
if not duration>0 return-1 
return duration*(position/100) 
end function
function _I1O00II1IO_I(__0_O_0I_OO_0)
positionInSeconds=0
milliSeconds=__0_O_0I_OO_0.Split((Chr(46)))[1]
if milliSeconds<>invalid
positionInSeconds+=milliSeconds.toFloat()
end if
time=__0_O_0I_OO_0.Split((Chr(46)))[0].Split((Chr(58)))
for i=(time.count()-1)to(0 or(time.count()-3))step -1
positionInSeconds+=time[i].toFloat()*(60^((time.count()-i)-1))
end for
return positionInSeconds 
end function
sub _II00O1I00__O(_I0I_I__010O_,_11II01II1111)
_I0I_I__010O_.renderSequence=m.MIDROLL
_I0I_I__010O_.renderTime=_11II01II1111
end sub
sub ___1_O1II_I0_()
for each adBreak in m.adBreakList
if adBreak.renderSequence=m.POSTROLL and adBreak.viewed=(1=2)
shouldResume=_01_O11IO_0I0(adBreak,(1=1))
if not shouldResume exit for
end if
end for
end sub
sub _I_OI1000OO0O(_01__10___I00)
for each adBreak in m.adBreakList
if(adBreak.renderSequence=m.MIDROLL or adBreak.renderSequence=m.PREROLL) and adBreak.viewed=(1=2)
if type(adBreak.renderTime)<>(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(114)+Chr(105)+Chr(110)+Chr(103)) and _01__10___I00>=adBreak.renderTime
shouldResume=_01_O11IO_0I0(adBreak)
if not shouldResume exit for
end if
end if
end for
end sub
function _01_O11IO_0I0(_0O0OO___1O0I,_O0I_11_IO0IO=(1=2))
m.activeAdBreak=_0O0OO___1O0I
shouldResume=_IO0IO_O10O0O(_0O0OO___1O0I,_O0I_11_IO0IO)
m.activeAdBreak=invalid
_0O0OO___1O0I.viewed=(1=1)
return shouldResume 
end function
function _IO0IO_O10O0O(_1I0_O0111II0,_10I1I_O_01OO=(1=2))
_0_OI10I1I010()
shouldResume=m.adInterface.showAds(_1I0_O0111II0,invalid,m.options.view)
if shouldResume and not _10I1I_O_01OO _I11I_O11O__1()
return shouldResume 
end function
sub _0_01_O_I_O1_(_01I1_01OI_1I,_OO0O100I0IO0)
if _01I1_01OI_1I=invalid or _OO0O100I0IO0=invalid return 
id=_OO0O100I0IO0.id
if id=invalid id=_1OO1O_0O10I_()
_01I1_01OI_1I.id=id
end sub
sub __1101I1_00OI(__I1O10O0I1I_,_0_I_OI10_I0O)
m.options=__I1O10O0I1I_.data.options
m.adInterface=Roku_Ads()
_1_O11I_010__(_0_I_OI10_I0O)
_I_I_01I001OO(_0_I_OI10_I0O)
_01I1OO__OO1I(m.adInterface,m.options.adContentMetadata)
m.bitmovinAdvertisingEventFactory=_0_1_1IO_0_IO()
trackingCallback=function(_O0110_1IIIOI=invalid,__I0_O1OI01IO=invalid,_I_OI_0O0I_1O=invalid) as Void
if _O0110_1IIIOI.eventListener=invalid return 
internalAdvertisingEventType=Chr(0)
externalAdvertisingData=invalid
if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.POD_START
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_BREAK_STARTED
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(_O0110_1IIIOI.activeAdBreak,__I0_O1OI01IO)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.POD_COMPLETE
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_BREAK_FINISHED
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(_O0110_1IIIOI.activeAdBreak,__I0_O1OI01IO)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.ACCEPT_INVITATION
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_INTERACTION
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_OI_0O0I_1O)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.ERROR or __I0_O1OI01IO=(Chr(78)+Chr(111)+Chr(&H41)+Chr(&H64)+Chr(115)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114))
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_ERROR
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdErrorEvent(_I_OI_0O0I_1O,__I0_O1OI01IO)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.COMPLETE
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_FINISHED
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_OI_0O0I_1O)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.FIRST_QUARTILE or __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.MIDPOINT or __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.THIRD_QUARTILE
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(__I0_O1OI01IO)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.START
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_STARTED
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_OI_0O0I_1O)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.SKIP or __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.CLOSE
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_SKIPPED
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_OI_0O0I_1O)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.PAUSE
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_PAUSE
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_OI_0O0I_1O)
else if __I0_O1OI01IO=_O0110_1IIIOI.RokuAdEvents.RESUME
internalAdvertisingEventType=_O0110_1IIIOI.InternalAdEvents.AD_RESUME
externalAdvertisingData=_O0110_1IIIOI.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_I_OI_0O0I_1O)
else 
return 
end if
_O0110_1IIIOI.eventListener.eventOccurred={internalEventType:internalAdvertisingEventType,externalEventData:externalAdvertisingData}
end function
m.adInterface.setTrackingCallback(trackingCallback,m)
end sub
sub scheduleAds(_I00100OOIO1_)
if not _I10__0_IO1O1()return 
adBreaks=_I00100OOIO1_.data.options.adBreaks
for each adBreak in adBreaks
m.adInterface.setAdUrl(adBreak.tag.url)
rokuFormattedAdBreaks=m.adInterface.getAds()
if adBreak.tag.type=(Chr(118)+Chr(97)+Chr(&H73)+Chr(&H74))
formattedAdBreak=rokuFormattedAdBreaks[0]
_0I01IO_0000_(formattedAdBreak,adBreak)
else if adBreak.tag.type=(Chr(&H76)+Chr(&H6d)+Chr(97)+Chr(&H70))
for each formattedAdBreak in rokuFormattedAdBreaks
__1I11O_OI0I0(formattedAdBreak,adBreak)
end for
end if
if formattedAdBreak<>invalid __0_OI1I01O__(formattedAdBreak.ads)
end for
end sub
sub _0I01IO_0000_(_0I00IIOIOO01,_00I_I_0O_I0O)
if ___0O_II_00I_(_0I00IIOIOO01)return 
_0I1O0O1_00_O(_0I00IIOIOO01,_00I_I_0O_I0O)
__0_OI1I01O__(_0I00IIOIOO01.ads)
m.adBreakList.push(_0I00IIOIOO01)
__010_OII0IOO()
if _0I00IIOIOO01.renderSequence=m.PREROLL _01_O11IO_0I0(_0I00IIOIOO01)
end sub
sub __1I11O_OI0I0(___O110O_O1I_,_O0I1O01_110O)
if ___0O_II_00I_(___O110O_O1I_)return 
_0_01_O_I_O1_(___O110O_O1I_,_O0I1O01_110O)
m.adBreakList.push(___O110O_O1I_)
__010_OII0IOO()
if ___O110O_O1I_.renderSequence=m.PREROLL
___O110O_O1I_.renderTime=0
_01_O11IO_0I0(___O110O_O1I_)
end if
end sub
sub discardAdBreak(__1II_1IIO_01)
if not _I10__0_IO1O1()return 
updatedAdBreakList=[]
for each adBreak in m.adBreakList
if adBreak.id<>__1II_1IIO_01.data.options.adBreakId
updatedAdBreakList.push(adBreak)
end if
end for
m.adBreakList=updatedAdBreakList
__1II_1IIO_01.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=1),{adList:m.adBreakList})
end sub
sub _1IO00_O_IO_0(_11IOOOO000O0)
if not _I10__0_IO1O1()return 
m.adBreakList=[]
_11IOOOO000O0.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=1),{adList:m.adBreakList})
end sub
sub durationChanged(___0_11O1OIO_=invalid)
for each adBreak in m.adBreakList
if type(adBreak.renderTime)=(Chr(114)+Chr(111)+Chr(83)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(103)) and Instr(1,adBreak.renderTime,(Chr(37)))>0
percentage=adBreak.renderTime.split((Chr(&H25)))[0].toFloat()
adBreak.renderTime=__O0OO1O_011O(percentage)
end if
end for
end sub
sub checkAds(__001_I0_O0II,__O0I0_110O1_)
if not _I10__0_IO1O1()return 
if __001_I0_O0II=(Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)) and __O0I0_110O1_=(Chr(&H66)+Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(104)+Chr(101)+Chr(&H64))
___1_O1II_I0_()
else 
_I_OI1000OO0O(__O0I0_110O1_)
end if
end sub
sub _I_I_01I001OO(_I_IO010__1I1)
if not _I10__0_IO1O1()return 
_I_IO010__1I1.video=m.options.videoNode
_I_IO010__1I1.setVideoNodeObservers=(1=1)
end sub
sub _1_O11I_010__(_11_1O1I_II1O)
if not _I10__0_IO1O1()return 
_11_1O1I_II1O.callFunc((Chr(114)+Chr(&H65)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(101)+Chr(&H56)+Chr(105)+Chr(&H64)+Chr(101)+Chr(&H6f)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)+Chr(&H4f)+Chr(98)+Chr(115)+Chr(101)+Chr(114)+Chr(&H76)+Chr(101)+Chr(114)+Chr(&H73)),m.options.videoNode)
end sub
sub setAdEventListener(__1OII1__1O_1)
m.eventListener=__1OII1__1O_1
end sub
sub setScheduleAdBreakEventListener(_I1101OOOI0I_)
m.scheduleAdBreakEventListener=_I1101OOOI0I_
end sub
sub __010_OII0IOO()
if ___0O_II_00I_(m.scheduleAdBreakEventListener)return 
m.scheduleAdBreakEventListener.eventOccurred={internalEventType:m.InternalAdEvents.AD_BREAK_SCHEDULED,eventData:{adBreakList:m.adBreakList}}
end sub
