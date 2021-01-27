sub init()
m.BitmovinComponentIds=__01_0O1OO_OI()
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
m.ServiceEndpoints=_OI0O__0OII11()
m.BitmovinFunctions=_0O0O1O00I__1()
m.BitmovinFields=_O_10OO110010()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.eventFactory=_0_1_1IO_0_IO()
end sub
sub initializeService(___100I1II111,_0_10O0OIOO0O,_100I111II_O1)
m.bitmovinPlayerTask=___100I1II111
m.video=_0_10O0OIOO0O
m.bitmovinPlayerVersion=_100I111II_O1
end sub
sub startService(__I000_O0_I01,_I0I0II0O0IO_)
_0I__IO_1I0O0()
m.playerLicenseKey=__I000_O0_I01
m.numberOfItemsInPlaylist=_I0I0II0O0IO_
m.video.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H65)),(Chr(&H5f)+Chr(49)+Chr(73)+Chr(49)+Chr(&H4f)+Chr(&H4f)+Chr(79)+Chr(95)+Chr(&H4f)+Chr(&H4f)+Chr(73)+Chr(95)+Chr(48)))
if _I0I0II0O0IO_>1
m.video.observeFieldScoped((Chr(99)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(101)+Chr(110)+Chr(&H74)+Chr(73)+Chr(110)+Chr(100)+Chr(101)+Chr(&H78)),(Chr(95)+Chr(95)+Chr(48)+Chr(&H5f)+Chr(&H49)+Chr(&H5f)+Chr(&H31)+Chr(&H49)+Chr(49)+Chr(49)+Chr(49)+Chr(&H4f)+Chr(49)))
end if
end sub
sub stopService(_01O11__I__OO=invalid)
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)))
m.video.unobserveFieldScoped((Chr(99)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(73)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(120)))
if not ___0O_II_00I_(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)))
m.fireImpressionForPlayerStateChange=(1=2)
m.fireImpressionForContentIndexChange=(1=2)
m.playerLicenseKey=invalid
end sub
sub _1I1OOO_OOI_0(_I0II_10_01_1)
state=_I0II_10_01_1.getData()
if state=(Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(&H67)) and m.fireImpressionForPlayerStateChange=(1=1)
_0_IIOI1__O_I(m.playerLicenseKey)
m.fireImpressionForPlayerStateChange=(1=2)
if m.numberOfItemsInPlaylist>1 m.fireImpressionForContentIndexChange=(1=1)
else if state=(Chr(&H66)+Chr(105)+Chr(110)+Chr(105)+Chr(&H73)+Chr(104)+Chr(101)+Chr(100))
_0I__IO_1I0O0()
end if
end sub
sub __0_I_1I111O1()
if m.fireImpressionForContentIndexChange=(1=1) and m.video.state=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(103))
_0_IIOI1__O_I(m.playerLicenseKey)
else 
_0I__IO_1I0O0()
end if
end sub
sub _1I01IIO1_1I_(__0I_101_OI10)
impressionEvent=m.eventFactory.createImpressionEvent(__0I_101_OI10.getData().response,m.bitmovinPlayerVersion,m.playerLicenseKey,m.BitmovinFields.IMPRESSION)
m.top.eventOccurred=impressionEvent
end sub
sub _0_IIOI1__O_I(_I0_I11__1OIO)
if not ___0O_II_00I_(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)))
appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H70)+Chr(112)+Chr(73)+Chr(110)+Chr(102)+Chr(&H6f)))
m.makeImpressionOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST,m.ServiceEndpoints.IMPRESSION,{"domain":appInfo.getID()+(Chr(46)+Chr(114)+Chr(&H6f)+Chr(107)+Chr(&H75)),"key":_I0_I11__1OIO,"type":(Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)),"version":m.bitmovinPlayerVersion})
m.makeImpressionOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(&H31)+Chr(&H49)+Chr(48)+Chr(49)+Chr(73)+Chr(&H49)+Chr(&H4f)+Chr(&H31)+Chr(95)+Chr(49)+Chr(&H49)+Chr(&H5f)))
m.makeImpressionOperation.callFunc((Chr(&H65)+Chr(120)+Chr(&H65)+Chr(&H63)+Chr(&H75)+Chr(&H74)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _0I__IO_1I0O0()
m.fireImpressionForPlayerStateChange=(1=1)
m.fireImpressionForContentIndexChange=(1=2)
end sub
