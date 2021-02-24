sub init()
m.BitmovinComponentIds=_1011I__1I0OI()
m.BitmovinAsyncOperationTypes=___IO10I10001()
m.ServiceEndpoints=__01_00_1O_OI()
m.BitmovinFunctions=_IO1OO_O1_OI0()
m.BitmovinFields=_OO0OOO1IOII_()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(65)+Chr(115)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(114)+Chr(121)))
m.eventFactory=_III0OO_011_1()
end sub
sub initializeService(_0IIOIO0_O00I,_10OI_I101_OI,_1OO1I01_IO__)
m.bitmovinPlayerTask=_0IIOIO0_O00I
m.video=_10OI_I101_OI
m.bitmovinPlayerVersion=_1OO1I01_IO__
end sub
sub startService(_I1I_I0I0OO01,_OO1_OO010II0)
_1O0_0__00I01()
m.playerLicenseKey=_I1I_I0I0OO01
m.numberOfItemsInPlaylist=_OO1_OO010II0
m.video.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)),(Chr(&H5f)+Chr(73)+Chr(48)+Chr(73)+Chr(&H4f)+Chr(&H49)+Chr(73)+Chr(48)+Chr(49)+Chr(73)+Chr(48)+Chr(&H30)+Chr(&H49)))
if _OO1_OO010II0>1
m.video.observeFieldScoped((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(110)+Chr(116)+Chr(73)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(120)),(Chr(95)+Chr(95)+Chr(48)+Chr(49)+Chr(&H30)+Chr(&H49)+Chr(&H4f)+Chr(49)+Chr(73)+Chr(&H5f)+Chr(&H30)+Chr(79)+Chr(49)))
end if
end sub
sub stopService(_1OI10_10I__1=invalid)
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)))
m.video.unobserveFieldScoped((Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(120)))
if not __OOI0OI11_O0(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(116)))
m.fireImpressionForPlayerStateChange=(1=2)
m.fireImpressionForContentIndexChange=(1=2)
m.playerLicenseKey=invalid
end sub
sub _I0IOII01I00I(_1011O0I___1O)
state=_1011O0I___1O.getData()
if state=(Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(&H67)) and m.fireImpressionForPlayerStateChange=(1=1)
_011O1II__0IO(m.playerLicenseKey)
m.fireImpressionForPlayerStateChange=(1=2)
if m.numberOfItemsInPlaylist>1 m.fireImpressionForContentIndexChange=(1=1)
else if state=(Chr(102)+Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(&H64))
_1O0_0__00I01()
end if
end sub
sub __010IO1I_0O1()
if m.fireImpressionForContentIndexChange=(1=1) and m.video.state=(Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(105)+Chr(110)+Chr(103))
_011O1II__0IO(m.playerLicenseKey)
else 
_1O0_0__00I01()
end if
end sub
sub _11_11O1II_10(_01O_1I110I11)
impressionEvent=m.eventFactory.createImpressionEvent(_01O_1I110I11.getData().response,m.bitmovinPlayerVersion,m.playerLicenseKey,m.BitmovinFields.IMPRESSION)
m.top.eventOccurred=impressionEvent
end sub
sub _011O1II__0IO(_I10I0IIO101I)
if not __OOI0OI11_O0(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)))
appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(112)+Chr(112)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.makeImpressionOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST,m.ServiceEndpoints.IMPRESSION,{"domain":appInfo.getID()+(Chr(46)+Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(&H75)),"key":_I10I0IIO101I,"type":(Chr(114)+Chr(&H6f)+Chr(107)+Chr(117)),"version":m.bitmovinPlayerVersion})
m.makeImpressionOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(49)+Chr(49)+Chr(&H5f)+Chr(&H31)+Chr(49)+Chr(&H4f)+Chr(49)+Chr(73)+Chr(73)+Chr(95)+Chr(&H31)+Chr(&H30)))
m.makeImpressionOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(&H75)+Chr(&H74)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _1O0_0__00I01()
m.fireImpressionForPlayerStateChange=(1=1)
m.fireImpressionForContentIndexChange=(1=2)
end sub
