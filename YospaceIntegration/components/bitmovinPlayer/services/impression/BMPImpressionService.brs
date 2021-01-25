sub init()
m.BitmovinComponentIds=_00I10OOO01OO()
m.BitmovinAsyncOperationTypes=_001_100I0III()
m.ServiceEndpoints=___01_I_10_IO()
m.BitmovinFunctions=_O0I0O_1_1_1_()
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(111)+Chr(114)+Chr(&H79)))
end sub
sub initializeService(_IO0_I_111OO1,_1IIOO_O_I010,__OOI100I1O_O)
m.bitmovinPlayerTask=_IO0_I_111OO1
m.video=_1IIOO_O_I010
m.bitmovinPlayerVersion=__OOI100I1O_O
end sub
sub startService(___I10IIIO1I_,_II0_III1II0I)
_OO0OII1I0_I_()
m.playerLicenseKey=___I10IIIO1I_
m.numberOfItemsInPlaylist=_II0_III1II0I
m.video.observeFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)),(Chr(95)+Chr(79)+Chr(&H49)+Chr(&H49)+Chr(73)+Chr(49)+Chr(73)+Chr(&H30)+Chr(48)+Chr(&H5f)+Chr(&H4f)+Chr(&H30)+Chr(&H5f)))
if _II0_III1II0I>1
m.video.observeFieldScoped((Chr(&H63)+Chr(&H6f)+Chr(110)+Chr(116)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H49)+Chr(&H6e)+Chr(100)+Chr(&H65)+Chr(120)),(Chr(&H5f)+Chr(79)+Chr(&H30)+Chr(49)+Chr(&H5f)+Chr(48)+Chr(&H49)+Chr(95)+Chr(&H30)+Chr(49)+Chr(&H4f)+Chr(48)+Chr(&H31)))
end if
end sub
sub stopService(__0100__10__0=invalid)
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)))
m.video.unobserveFieldScoped((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H49)+Chr(&H6e)+Chr(100)+Chr(&H65)+Chr(120)))
if not _IO1IIIOI0_1O(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(&H74)))
m.fireImpressionForPlayerStateChange=(1=2)
m.fireImpressionForContentIndexChange=(1=2)
m.playerLicenseKey=invalid
end sub
sub _OIII1I00_O0_(_IIII1O101101)
state=_IIII1O101101.getData()
if state=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(105)+Chr(110)+Chr(103)) and m.fireImpressionForPlayerStateChange=(1=1)
_IO011O1001O_(m.playerLicenseKey)
m.fireImpressionForPlayerStateChange=(1=2)
if m.numberOfItemsInPlaylist>1 m.fireImpressionForContentIndexChange=(1=1)
else if state=(Chr(&H66)+Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(&H64))
_OO0OII1I0_I_()
end if
end sub
sub _O01_0I_01O01()
if m.fireImpressionForContentIndexChange=(1=1) and m.video.state=(Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(105)+Chr(110)+Chr(103))
_IO011O1001O_(m.playerLicenseKey)
else 
_OO0OII1I0_I_()
end if
end sub
sub _1I1O_0OO__0I(_1_0_O1I_0O0O)
?_1_0_O1I_0O0O.getData().response
end sub
sub _IO011O1001O_(_110___O11OO0)
if not _IO1IIIOI0_1O(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)))
appInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(112)+Chr(112)+Chr(&H49)+Chr(&H6e)+Chr(&H66)+Chr(&H6f)))
m.makeImpressionOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(99)+Chr(&H4f)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST,m.ServiceEndpoints.IMPRESSION,{"domain":appInfo.getID()+(Chr(&H2e)+Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(117)),"key":_110___O11OO0,"type":(Chr(&H72)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)),"version":m.bitmovinPlayerVersion})
m.makeImpressionOperation.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(Chr(&H5f)+Chr(49)+Chr(73)+Chr(&H31)+Chr(&H4f)+Chr(&H5f)+Chr(48)+Chr(79)+Chr(&H4f)+Chr(&H5f)+Chr(&H5f)+Chr(48)+Chr(73)))
m.makeImpressionOperation.callFunc((Chr(101)+Chr(120)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(&H65)),m.bitmovinPlayerTask)
end sub
sub _OO0OII1I0_I_()
m.fireImpressionForPlayerStateChange=(1=1)
m.fireImpressionForContentIndexChange=(1=2)
end sub
