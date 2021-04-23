sub init()
m.BitmovinComponentIds=_0I010I1I1II1()
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
m.ServiceEndpoints=__II_0101I1OO()
m.BitmovinFunctions=_O1O0O_O0O__I()
m.BitmovinFields=_0OOO_00I01OO()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(65)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.eventFactory=_0I__010_III_()
end sub
sub initializeService(_O__I_O0I00_1,_O00I1__1OI_O,_0__I_OI_0IIO)
m.bitmovinPlayerTask=_O__I_O0I00_1
m.video=_O00I1__1OI_O
m.bitmovinPlayerVersion=_0__I_OI_0IIO
end sub
sub startService(_0I_OI00_1111,_1O0___IIOI1O)
__I1_0_00_1_I()
m.playerLicenseKey=_0I_OI00_1111
m.numberOfItemsInPlaylist=_1O0___IIOI1O
m.video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(&H74)+Chr(101)),(Chr(95)+Chr(&H30)+Chr(49)+Chr(49)+Chr(79)+Chr(73)+Chr(&H49)+Chr(&H5f)+Chr(95)+Chr(49)+Chr(95)+Chr(95)+Chr(48)))
if _1O0___IIOI1O>1
m.video.observeFieldScoped((Chr(99)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(101)+Chr(&H78)),(Chr(95)+Chr(&H5f)+Chr(49)+Chr(49)+Chr(&H4f)+Chr(&H5f)+Chr(&H49)+Chr(48)+Chr(&H31)+Chr(&H31)+Chr(&H31)+Chr(&H49)+Chr(&H5f)))
end if
end sub
sub stopService(_0I1O_I1IIIOI=invalid)
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H65)))
m.video.unobserveFieldScoped((Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(101)+Chr(&H78)))
if not _1100IO1O_0_I(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)))
m.fireImpressionForPlayerStateChange=(1=2)
m.fireImpressionForContentIndexChange=(1=2)
m.playerLicenseKey=invalid
end sub
sub _011OII__1__0(_O10O_I0101O1)
state=_O10O_I0101O1.getData()
if state=(Chr(&H70)+Chr(108)+Chr(97)+Chr(121)+Chr(&H69)+Chr(110)+Chr(&H67)) and m.fireImpressionForPlayerStateChange=(1=1)
__010_I11O1_O(m.playerLicenseKey)
m.fireImpressionForPlayerStateChange=(1=2)
if m.numberOfItemsInPlaylist>1 m.fireImpressionForContentIndexChange=(1=1)
else if state=(Chr(102)+Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(100))
__I1_0_00_1_I()
end if
end sub
sub __11O_I0111I_()
if m.fireImpressionForContentIndexChange=(1=1) and m.video.state=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(105)+Chr(110)+Chr(&H67))
__010_I11O1_O(m.playerLicenseKey)
else 
__I1_0_00_1_I()
end if
end sub
sub _IOOI0_OO011I(_O_OI1O_0I1_I)
impressionEvent=m.eventFactory.createImpressionEvent(_O_OI1O_0I1_I.getData().response,m.bitmovinPlayerVersion,m.playerLicenseKey,m.BitmovinFields.IMPRESSION)
m.top.eventOccurred=impressionEvent
end sub
sub __010_I11O1_O(__IO__I1_O1_0)
if not _1100IO1O_0_I(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)))
appInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H41)+Chr(&H70)+Chr(112)+Chr(73)+Chr(110)+Chr(102)+Chr(111)))
m.makeImpressionOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(65)+Chr(115)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST,m.ServiceEndpoints.IMPRESSION,{"domain":appInfo.getID()+(Chr(&H2e)+Chr(114)+Chr(&H6f)+Chr(107)+Chr(117)),"key":__IO__I1_O1_0,"type":(Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(&H75)),"version":m.bitmovinPlayerVersion})
m.makeImpressionOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(&H49)+Chr(79)+Chr(79)+Chr(73)+Chr(48)+Chr(95)+Chr(79)+Chr(79)+Chr(&H30)+Chr(49)+Chr(&H31)+Chr(73)))
m.makeImpressionOperation.callFunc((Chr(101)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(&H74)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub __I1_0_00_1_I()
m.fireImpressionForPlayerStateChange=(1=1)
m.fireImpressionForContentIndexChange=(1=2)
end sub
