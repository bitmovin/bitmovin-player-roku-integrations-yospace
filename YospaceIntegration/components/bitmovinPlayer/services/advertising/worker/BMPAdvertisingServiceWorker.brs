library "Roku_Ads.brs"
sub init()
m.options=invalid
m.eventListener=invalid
m.scheduleAdBreakEventListener=invalid
m.previousPlayerPosition=0
m.adBreakList=[]
m.deviceInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H44)+Chr(&H65)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(102)+Chr(&H6f)))
m.activeAdBreak=invalid
m.PREROLL=(Chr(&H70)+Chr(114)+Chr(&H65)+Chr(114)+Chr(111)+Chr(&H6c)+Chr(108))
m.POSTROLL=(Chr(&H70)+Chr(111)+Chr(115)+Chr(116)+Chr(114)+Chr(111)+Chr(108)+Chr(&H6c))
m.MIDROLL=(Chr(109)+Chr(105)+Chr(&H64)+Chr(114)+Chr(&H6f)+Chr(108)+Chr(&H6c))
m.RokuAdEvents=_10_0_I0000O1()
m.InternalAdEvents=_I1O0IO00IO1O()
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
end sub
sub executeOperation(_1O1__011_I_I,_0I_0O11111__=invalid)
if _I1_I11_1O_0I(_1O1__011_I_I.data)
?(Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(101)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(32)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H20)+Chr(87)+Chr(111)+Chr(&H72)+Chr(107)+Chr(101)+Chr(114)+Chr(&H20)+Chr(99)+Chr(&H61)+Chr(&H6e)+Chr(39)+Chr(116)+Chr(32)+Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(&H20)+Chr(&H74)+Chr(104)+Chr(&H65)+Chr(32)+Chr(&H6f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H21)+Chr(32)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(32)+Chr(105)+Chr(&H6e)+Chr(&H76)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(100)+Chr(&H20)+Chr(100)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(&H2e))
return 
end if
if _1O1__011_I_I.type=m.BitmovinAsyncOperationTypes.SET_UP_AD_HANDLER __1I1110_1OII(_1O1__011_I_I,_0I_0O11111__)
if _1O1__011_I_I.type=m.BitmovinAsyncOperationTypes.SCHEDULE_ADS scheduleAds(_1O1__011_I_I)
if _1O1__011_I_I.type=m.BitmovinAsyncOperationTypes.DISCARD_AD_BREAK discardAdBreak(_1O1__011_I_I)
if _1O1__011_I_I.type=m.BitmovinAsyncOperationTypes.CLEAR_AD_BREAKS _I10O_0O11I01(_1O1__011_I_I)
end sub
function _1010OO_0IO01()
if m.options=invalid return(1=2) 
if m.options.view=invalid return(1=2) 
if m.options.videoNode=invalid return(1=2) 
return(1=1) 
end function
sub ___OI1_O0IO__(_OII1__11II01,__O0_I_111II0)
if __O0_I_111II0.genre<>invalid _OII1__11II01.setContentGenre(__O0_I_111II0.genre.name,__O0_I_111II0.genre.isKidsContent)
if __O0_I_111II0.id<>invalid _OII1__11II01.setContentID(__O0_I_111II0.id)
if __O0_I_111II0.length<>invalid _OII1__11II01.setContentLength(__O0_I_111II0.length)
end sub
sub _I0I0OOIII0II()
if not _1010OO_0IO01()return 
video=m.options.videoNode
m.previousPlayerPosition=video.position
video.control=(Chr(83)+Chr(84)+Chr(&H4f)+Chr(&H50))
end sub
sub _0_1IOI11__1O()
if not _1010OO_0IO01()return 
video=m.options.videoNode
if m.previousPlayerPosition>0 video.seek=m.previousPlayerPosition
video.control=(Chr(80)+Chr(&H4c)+Chr(65)+Chr(&H59))
m.previousPlayerPosition=0
end sub
function _O00_0O_O_10O()
return m.deviceInfo.GetRandomUUID() 
end function
sub __0O00I_101I_(_01_110_1OI1I)
if _01_110_1OI1I=invalid return 
for each ad in _01_110_1OI1I
if ad.adId=invalid or Len(ad.adId)=0 ad.adId=_O00_0O_O_10O()
end for
end sub
sub _1111010O10I_(__11IIII000I1,_0I_O_0_O1IO1)
if __11IIII000I1=invalid return 
_OO11OI0O_II_(__11IIII000I1,_0I_O_0_O1IO1)
if type(_0I_O_0_O1IO1.position)<>(Chr(114)+Chr(111)+Chr(83)+Chr(116)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103))
_1O_1II01111I(__11IIII000I1,_0I_O_0_O1IO1.position)
else if _0I_O_0_O1IO1.position=(Chr(112)+Chr(114)+Chr(&H65))or _0I_O_0_O1IO1.position=invalid
__11IIII000I1.renderSequence=m.PREROLL
__11IIII000I1.renderTime=0
else if _0I_O_0_O1IO1.position=(Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(116))
__11IIII000I1.renderSequence=m.POSTROLL
else if right(_0I_O_0_O1IO1.position,1)=(Chr(37))
percentage=_0I_O_0_O1IO1.position.split((Chr(37)))[0].toFloat()
position=_O011OO0_OO__(percentage)
if position<0 position=_0I_O_0_O1IO1.position
_1O_1II01111I(__11IIII000I1,position)
else if Instr(1,_0I_O_0_O1IO1.position,(Chr(58)))>0
_1O_1II01111I(__11IIII000I1,__0_O11_10O11(_0I_O_0_O1IO1.position))
end if
end sub
function _O011OO0_OO__(_11___1OIOII_)
duration=m.options.VideoNode.duration
position=_11___1OIOII_
if not duration>0 return-1 
return duration*(position/100) 
end function
function __0_O11_10O11(_0OO0_OIII10I)
positionInSeconds=0
milliSeconds=_0OO0_OIII10I.Split((Chr(&H2e)))[1]
if milliSeconds<>invalid
positionInSeconds+=milliSeconds.toFloat()
end if
time=_0OO0_OIII10I.Split((Chr(46)))[0].Split((Chr(58)))
for i=(time.count()-1)to(0 or(time.count()-3))step -1
positionInSeconds+=time[i].toFloat()*(60^((time.count()-i)-1))
end for
return positionInSeconds 
end function
sub _1O_1II01111I(_0I1IIO_OI_II,_1_IOIOI1_I_0)
_0I1IIO_OI_II.renderSequence=m.MIDROLL
_0I1IIO_OI_II.renderTime=_1_IOIOI1_I_0
end sub
sub __I11I100_OOO()
for each adBreak in m.adBreakList
if adBreak.renderSequence=m.POSTROLL and adBreak.viewed=(1=2)
shouldResume=_1_11O01111_I(adBreak,(1=1))
if not shouldResume exit for
end if
end for
end sub
sub _0OOOO_00_O_O(_0_01IOIO0001)
for each adBreak in m.adBreakList
if(adBreak.renderSequence=m.MIDROLL or adBreak.renderSequence=m.PREROLL) and adBreak.viewed=(1=2)
if type(adBreak.renderTime)<>(Chr(114)+Chr(&H6f)+Chr(83)+Chr(116)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67)) and _0_01IOIO0001>=adBreak.renderTime
shouldResume=_1_11O01111_I(adBreak)
if not shouldResume exit for
end if
end if
end for
end sub
function _1_11O01111_I(___10O10_0_I_,_I0__II1I_11O=(1=2))
m.activeAdBreak=___10O10_0_I_
shouldResume=_OI_I101_I_I0(___10O10_0_I_,_I0__II1I_11O)
m.activeAdBreak=invalid
___10O10_0_I_.viewed=(1=1)
return shouldResume 
end function
function _OI_I101_I_I0(_I0_00I1_1I_1,_01IIOI01_100=(1=2))
_I0I0OOIII0II()
shouldResume=m.adInterface.showAds(_I0_00I1_1I_1,invalid,m.options.view)
if shouldResume and not _01IIOI01_100 _0_1IOI11__1O()
return shouldResume 
end function
sub _OO11OI0O_II_(___O11000O10_,_1_0OI_01II_O)
if ___O11000O10_=invalid or _1_0OI_01II_O=invalid return 
id=_1_0OI_01II_O.id
if id=invalid id=_O00_0O_O_10O()
___O11000O10_.id=id
end sub
sub __1I1110_1OII(_0I00_0IIOO_1,_O0_1OO0IO1I1)
m.options=_0I00_0IIOO_1.data.options
m.adInterface=Roku_Ads()
__II11_OI1O00(_O0_1OO0IO1I1)
_101I10000110(_O0_1OO0IO1I1)
___OI1_O0IO__(m.adInterface,m.options.adContentMetadata)
m.bitmovinAdvertisingEventFactory=_111O_11__11O()
trackingCallback=function(_I0I01_000___=invalid,_IO1I_1I_01II=invalid,_1_O01I10OI_0=invalid) as Void
if _I0I01_000___.eventListener=invalid return 
internalAdvertisingEventType=Chr(0)
externalAdvertisingData=invalid
if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.POD_START
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_BREAK_STARTED
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(_I0I01_000___.activeAdBreak,_IO1I_1I_01II)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.POD_COMPLETE
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_BREAK_FINISHED
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdBreakEvent(_I0I01_000___.activeAdBreak,_IO1I_1I_01II)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.ACCEPT_INVITATION
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_INTERACTION
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1_O01I10OI_0)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.ERROR or _IO1I_1I_01II=(Chr(&H4e)+Chr(111)+Chr(65)+Chr(&H64)+Chr(115)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72))
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_ERROR
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdErrorEvent(_1_O01I10OI_0,_IO1I_1I_01II)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.COMPLETE
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_FINISHED
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1_O01I10OI_0)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.FIRST_QUARTILE or _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.MIDPOINT or _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.THIRD_QUARTILE
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_QUARTILE
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdQuartileEvent(_IO1I_1I_01II)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.START
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_STARTED
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1_O01I10OI_0)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.SKIP or _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.CLOSE
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_SKIPPED
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1_O01I10OI_0)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.PAUSE
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_PAUSE
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1_O01I10OI_0)
else if _IO1I_1I_01II=_I0I01_000___.RokuAdEvents.RESUME
internalAdvertisingEventType=_I0I01_000___.InternalAdEvents.AD_RESUME
externalAdvertisingData=_I0I01_000___.bitmovinAdvertisingEventFactory.createBitmovinAdEvent(_1_O01I10OI_0)
else 
return 
end if
_I0I01_000___.eventListener.eventOccurred={internalEventType:internalAdvertisingEventType,externalEventData:externalAdvertisingData}
end function
m.adInterface.setTrackingCallback(trackingCallback,m)
end sub
sub scheduleAds(_I_OI010_I_IO)
if not _1010OO_0IO01()return 
adBreaks=_I_OI010_I_IO.data.options.adBreaks
for each adBreak in adBreaks
m.adInterface.setAdUrl(adBreak.tag.url)
rokuFormattedAdBreaks=m.adInterface.getAds()
if adBreak.tag.type=(Chr(&H76)+Chr(97)+Chr(&H73)+Chr(116))
formattedAdBreak=rokuFormattedAdBreaks[0]
_1I11OO100_01(formattedAdBreak,adBreak)
else if adBreak.tag.type=(Chr(&H76)+Chr(109)+Chr(97)+Chr(&H70))
for each formattedAdBreak in rokuFormattedAdBreaks
__10I0I__I01I(formattedAdBreak,adBreak)
end for
end if
if formattedAdBreak<>invalid __0O00I_101I_(formattedAdBreak.ads)
end for
end sub
sub _1I11OO100_01(_I0I_I1_I1II0,_OII_O1_O_IO0)
if _I1_I11_1O_0I(_I0I_I1_I1II0)return 
_1111010O10I_(_I0I_I1_I1II0,_OII_O1_O_IO0)
__0O00I_101I_(_I0I_I1_I1II0.ads)
m.adBreakList.push(_I0I_I1_I1II0)
_OO_O_10_0I00()
if _I0I_I1_I1II0.renderSequence=m.PREROLL _1_11O01111_I(_I0I_I1_I1II0)
end sub
sub __10I0I__I01I(_1I001I0OOIOO,_00__II_OOI0O)
if _I1_I11_1O_0I(_1I001I0OOIOO)return 
_OO11OI0O_II_(_1I001I0OOIOO,_00__II_OOI0O)
m.adBreakList.push(_1I001I0OOIOO)
_OO_O_10_0I00()
if _1I001I0OOIOO.renderSequence=m.PREROLL
_1I001I0OOIOO.renderTime=0
_1_11O01111_I(_1I001I0OOIOO)
end if
end sub
sub discardAdBreak(_I_0OOOOIIOOO)
if not _1010OO_0IO01()return 
updatedAdBreakList=[]
for each adBreak in m.adBreakList
if adBreak.id<>_I_0OOOOIIOOO.data.options.adBreakId
updatedAdBreakList.push(adBreak)
end if
end for
m.adBreakList=updatedAdBreakList
_I_0OOOOIIOOO.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)),(1=1),{adList:m.adBreakList})
end sub
sub _I10O_0O11I01(_1110II01II1O)
if not _1010OO_0IO01()return 
m.adBreakList=[]
_1110II01II1O.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=1),{adList:m.adBreakList})
end sub
sub durationChanged(_1011_I_0IOO1=invalid)
for each adBreak in m.adBreakList
if type(adBreak.renderTime)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(116)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(103)) and Instr(1,adBreak.renderTime,(Chr(&H25)))>0
percentage=adBreak.renderTime.split((Chr(37)))[0].toFloat()
adBreak.renderTime=_O011OO0_OO__(percentage)
end if
end for
end sub
sub checkAds(_I1__10O_O_0I,_I0II_0I011OO)
if not _1010OO_0IO01()return 
if _I1__10O_O_0I=(Chr(115)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)) and _I0II_0I011OO=(Chr(102)+Chr(&H69)+Chr(110)+Chr(105)+Chr(&H73)+Chr(104)+Chr(&H65)+Chr(100))
__I11I100_OOO()
else 
_0OOOO_00_O_O(_I0II_0I011OO)
end if
end sub
sub _101I10000110(_O0O0OO_IIOI0)
if not _1010OO_0IO01()return 
_O0O0OO_IIOI0.video=m.options.videoNode
_O0O0OO_IIOI0.setVideoNodeObservers=(1=1)
end sub
sub __II11_OI1O00(_OOOII0111_II)
if not _1010OO_0IO01()return 
_OOOII0111_II.callFunc((Chr(114)+Chr(101)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H65)+Chr(&H56)+Chr(105)+Chr(100)+Chr(&H65)+Chr(111)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)+Chr(79)+Chr(&H62)+Chr(115)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H65)+Chr(&H72)+Chr(&H73)),m.options.videoNode)
end sub
sub setAdEventListener(_1I00110I_O_O)
m.eventListener=_1I00110I_O_O
end sub
sub setScheduleAdBreakEventListener(__01100I000_0)
m.scheduleAdBreakEventListener=__01100I000_0
end sub
sub _OO_O_10_0I00()
if _I1_I11_1O_0I(m.scheduleAdBreakEventListener)return 
m.scheduleAdBreakEventListener.eventOccurred={internalEventType:m.InternalAdEvents.AD_BREAK_SCHEDULED,eventData:{adBreakList:m.adBreakList}}
end sub
