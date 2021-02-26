sub init()
m.BitmovinComponentIds=_101I__01OO_0()
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
m.ServiceEndpoints=_1I1O_1I0__10()
m.BitmovinFunctions=_OOI_OO0_I_I1()
m.BitmovinFields=_I__1I0I_O__0()
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(65)+Chr(&H73)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.eventFactory=_I1I_O1I0I100()
end sub
sub initializeService(_I_I11010110O,__101OI1010_1,_0__OO010O__O)
m.bitmovinPlayerTask=_I_I11010110O
m.video=__101OI1010_1
m.bitmovinPlayerVersion=_0__OO010O__O
end sub
sub startService(_101I_001IOI0,_1__10_I01_1I)
_O10I_11O10_1()
m.playerLicenseKey=_101I_001IOI0
m.numberOfItemsInPlaylist=_1__10_I01_1I
m.video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)),(Chr(95)+Chr(95)+Chr(95)+Chr(&H49)+Chr(48)+Chr(73)+Chr(&H31)+Chr(49)+Chr(&H4f)+Chr(&H49)+Chr(&H30)+Chr(&H49)+Chr(&H30)))
if _1__10_I01_1I>1
m.video.observeFieldScoped((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(73)+Chr(110)+Chr(&H64)+Chr(101)+Chr(120)),(Chr(95)+Chr(&H5f)+Chr(79)+Chr(73)+Chr(&H49)+Chr(&H4f)+Chr(&H31)+Chr(&H4f)+Chr(&H31)+Chr(&H49)+Chr(73)+Chr(73)+Chr(&H49)))
end if
end sub
sub stopService(_0I_IOO1I1I_O=invalid)
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)))
m.video.unobserveFieldScoped((Chr(99)+Chr(111)+Chr(110)+Chr(&H74)+Chr(101)+Chr(110)+Chr(116)+Chr(73)+Chr(&H6e)+Chr(100)+Chr(101)+Chr(&H78)))
if not _OO_O1_O1O0O_(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(&H74)))
m.fireImpressionForPlayerStateChange=(1=2)
m.fireImpressionForContentIndexChange=(1=2)
m.playerLicenseKey=invalid
end sub
sub ___I0I11OI0I0(_11_0I10O0O11)
state=_11_0I10O0O11.getData()
if state=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(110)+Chr(103)) and m.fireImpressionForPlayerStateChange=(1=1)
_1_II01IIII_O(m.playerLicenseKey)
m.fireImpressionForPlayerStateChange=(1=2)
if m.numberOfItemsInPlaylist>1 m.fireImpressionForContentIndexChange=(1=1)
else if state=(Chr(&H66)+Chr(&H69)+Chr(110)+Chr(105)+Chr(115)+Chr(&H68)+Chr(&H65)+Chr(100))
_O10I_11O10_1()
end if
end sub
sub __OIIO1O1IIII()
if m.fireImpressionForContentIndexChange=(1=1) and m.video.state=(Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(110)+Chr(&H67))
_1_II01IIII_O(m.playerLicenseKey)
else 
_O10I_11O10_1()
end if
end sub
sub _O1I0OII0_10_(___I0_I_1001_)
impressionEvent=m.eventFactory.createImpressionEvent(___I0_I_1001_.getData().response,m.bitmovinPlayerVersion,m.playerLicenseKey,m.BitmovinFields.IMPRESSION)
m.top.eventOccurred=impressionEvent
end sub
sub _1_II01IIII_O(_0O0__0O11__O)
if not _OO_O1_O1O0O_(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(&H72)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)))
appInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(112)+Chr(&H70)+Chr(73)+Chr(110)+Chr(&H66)+Chr(&H6f)))
m.makeImpressionOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(99)+Chr(79)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(110)),m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST,m.ServiceEndpoints.IMPRESSION,{"domain":appInfo.getID()+(Chr(46)+Chr(&H72)+Chr(&H6f)+Chr(107)+Chr(117)),"key":_0O0__0O11__O,"type":(Chr(&H72)+Chr(&H6f)+Chr(&H6b)+Chr(117)),"version":m.bitmovinPlayerVersion})
m.makeImpressionOperation.observeFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)),(Chr(&H5f)+Chr(&H4f)+Chr(&H31)+Chr(73)+Chr(48)+Chr(&H4f)+Chr(73)+Chr(&H49)+Chr(48)+Chr(95)+Chr(&H31)+Chr(&H30)+Chr(&H5f)))
m.makeImpressionOperation.callFunc((Chr(&H65)+Chr(&H78)+Chr(&H65)+Chr(99)+Chr(117)+Chr(116)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _O10I_11O10_1()
m.fireImpressionForPlayerStateChange=(1=1)
m.fireImpressionForContentIndexChange=(1=2)
end sub
