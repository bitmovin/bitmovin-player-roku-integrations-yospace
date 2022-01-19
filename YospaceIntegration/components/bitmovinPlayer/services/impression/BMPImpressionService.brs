sub init()
m.BitmovinComponentIds=__0I00OO11O0_()
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
m.ServiceEndpoints=_O1I1OO0_II0I()
m.BitmovinFunctions=_IO__1__O1IO_()
m.BitmovinFields=_IOO11O01_10I()
m.asyncOperationFactory=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.internalEventFactory=_IOI0_011_1O1()
m.lastNativePlayerState=invalid
end sub
sub initializeService(___I_I1O11I1I)
m.bitmovinPlayerTask=___I_I1O11I1I.task
m.video=___I_I1O11I1I.videoNode
m.bitmovinPlayerVersion=___I_I1O11I1I.version
m.playbackService=___I_I1O11I1I.services.playbackService
m.advertisingService=___I_I1O11I1I.services.advertisingService
end sub
sub startService(_O001IO1_0010,_0OI11I00000_)
___10O10_1I_0()
m.playerLicenseKey=_O001IO1_0010
m.numberOfItemsInPlaylist=_0OI11I00000_
m.playbackService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(114)+Chr(101)+Chr(100)),(Chr(95)+Chr(&H5f)+Chr(49)+Chr(&H30)+Chr(&H5f)+Chr(95)+Chr(49)+Chr(&H31)+Chr(&H4f)+Chr(48)+Chr(95)+Chr(49)+Chr(&H30)))
if _0OI11I00000_>1
m.video.observeFieldScoped((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(73)+Chr(110)+Chr(100)+Chr(101)+Chr(&H78)),(Chr(&H5f)+Chr(&H49)+Chr(&H49)+Chr(95)+Chr(&H5f)+Chr(48)+Chr(73)+Chr(95)+Chr(79)+Chr(&H30)+Chr(&H30)+Chr(&H30)+Chr(&H31)))
end if
end sub
sub stopService(__O0_O___O11O=invalid)
m.playbackService.unobserveFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(117)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(100)))
m.video.unobserveFieldScoped((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(&H6e)+Chr(100)+Chr(&H65)+Chr(120)))
if not _110__I1O00_I(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)))
m.fireImpressionForPlayerStateChange=(1=2)
m.fireImpressionForContentIndexChange=(1=2)
m.playerLicenseKey=invalid
end sub
sub __10__11O0_10(_OO1_1O11_OI0)
data=_OO1_1O11_OI0.getData()
if data.type=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101))
state=data.data.state
else 
state=data.type
end if
if m.lastNativePlayerState=(Chr(101)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)) and state=(Chr(&H66)+Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H73)+Chr(&H68)+Chr(101)+Chr(100))return 
m.lastNativePlayerState=state
if not m.advertisingService.callFunc((Chr(105)+Chr(&H73)+Chr(65)+Chr(100)),invalid) and state=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(105)+Chr(110)+Chr(103)) and m.fireImpressionForPlayerStateChange=(1=1)
_1O0OO0I01O1_(m.playerLicenseKey)
m.fireImpressionForPlayerStateChange=(1=2)
if m.numberOfItemsInPlaylist>1 m.fireImpressionForContentIndexChange=(1=1)
else if state=(Chr(&H66)+Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(104)+Chr(101)+Chr(100))or state=(Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114))
___10O10_1I_0()
end if
end sub
sub _II__0I_O0001()
if m.fireImpressionForContentIndexChange=(1=1) and m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)))=(Chr(112)+Chr(108)+Chr(97)+Chr(121)+Chr(105)+Chr(&H6e)+Chr(&H67))
_1O0OO0I01O1_(m.playerLicenseKey)
else 
___10O10_1I_0()
end if
end sub
sub _I00__OIOIO00(_I001__O__I0I)
impressionEventData={impressionResponse:_I001__O__I0I.getData().response,version:m.bitmovinPlayerVersion,key:m.playerLicenseKey}
impressionEvent=m.internalEventFactory.createInternalEvent(m.BitmovinFields.IMPRESSION,impressionEventData)
m.top.eventOccurred=impressionEvent
end sub
sub _1O0OO0I01O1_(_O0_O_OI0_1OO)
if not _110__I1O00_I(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(116)))
appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H70)+Chr(&H70)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(111)))
m.makeImpressionOperation=m.asyncOperationFactory.callFunc((Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST,m.ServiceEndpoints.IMPRESSION,{"domain":appInfo.getID()+(Chr(&H2e)+Chr(114)+Chr(111)+Chr(&H6b)+Chr(117)),"key":_O0_O_OI0_1OO,"type":(Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)),"version":m.bitmovinPlayerVersion})
m.makeImpressionOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(73)+Chr(48)+Chr(&H30)+Chr(&H5f)+Chr(&H5f)+Chr(79)+Chr(73)+Chr(79)+Chr(73)+Chr(79)+Chr(48)+Chr(48)))
m.makeImpressionOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(&H63)+Chr(117)+Chr(&H74)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub ___10O10_1I_0()
m.fireImpressionForPlayerStateChange=(1=1)
m.fireImpressionForContentIndexChange=(1=2)
end sub
