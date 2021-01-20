sub init()
m.BitmovinComponentIds=_O0OIII0IO00O()
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
m.ServiceEndpoints=_I0O_0_10O110()
m.BitmovinFunctions=_11_1OIIIO1II()
m.BitmovinFields=_0O1I0_1O_O0I()
m.asyncOperationFactory=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(70)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(114)+Chr(121)))
m.eventFactory=_111O_11__11O()
end sub
sub initializeService(_O0I01_I0OIOI,_000I0OO11_I1,_1_II1__I1O1_)
m.bitmovinPlayerTask=_O0I01_I0OIOI
m.video=_000I0OO11_I1
m.bitmovinPlayerVersion=_1_II1__I1O1_
end sub
sub startService(_I__O11II__OO,_OIO1O_1_1__I)
_I0I00OOOI1_O()
m.playerLicenseKey=_I__O11II__OO
m.numberOfItemsInPlaylist=_OIO1O_1_1__I
m.video.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)),(Chr(95)+Chr(&H5f)+Chr(&H30)+Chr(79)+Chr(73)+Chr(49)+Chr(&H5f)+Chr(79)+Chr(48)+Chr(&H49)+Chr(&H5f)+Chr(95)+Chr(49)))
if _OIO1O_1_1__I>1
m.video.observeFieldScoped((Chr(&H63)+Chr(111)+Chr(110)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(73)+Chr(110)+Chr(100)+Chr(&H65)+Chr(&H78)),(Chr(&H5f)+Chr(&H31)+Chr(73)+Chr(&H5f)+Chr(&H4f)+Chr(49)+Chr(95)+Chr(&H30)+Chr(79)+Chr(95)+Chr(73)+Chr(&H31)+Chr(73)))
end if
end sub
sub stopService(_I011I10OI1I0=invalid)
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)))
m.video.unobserveFieldScoped((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(110)+Chr(100)+Chr(&H65)+Chr(&H78)))
if not _I1_I11_1O_0I(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)))
m.fireImpressionForPlayerStateChange=(1=2)
m.fireImpressionForContentIndexChange=(1=2)
m.playerLicenseKey=invalid
end sub
sub __0OI1_O0I__1(_00O_OO_OI011)
state=_00O_OO_OI011.getData()
if state=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(103)) and m.fireImpressionForPlayerStateChange=(1=1)
_I_0_01_01O0O(m.playerLicenseKey)
m.fireImpressionForPlayerStateChange=(1=2)
if m.numberOfItemsInPlaylist>1 m.fireImpressionForContentIndexChange=(1=1)
else if state=(Chr(&H66)+Chr(105)+Chr(110)+Chr(&H69)+Chr(115)+Chr(&H68)+Chr(&H65)+Chr(100))
_I0I00OOOI1_O()
end if
end sub
sub _1I_O1_0O_I1I()
if m.fireImpressionForContentIndexChange=(1=1) and m.video.state=(Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)+Chr(105)+Chr(&H6e)+Chr(103))
_I_0_01_01O0O(m.playerLicenseKey)
else 
_I0I00OOOI1_O()
end if
end sub
sub _I_0II1O0_IOO(_I101IIII1I1I)
impressionEvent=m.eventFactory.createImpressionEvent(_I101IIII1I1I.getData().response,m.bitmovinPlayerVersion,m.playerLicenseKey,m.BitmovinFields.IMPRESSION)
m.top.eventOccurred=impressionEvent
end sub
sub _I_0_01_01O0O(_I1_IOOI1_II1)
if not _I1_I11_1O_0I(m.makeImpressionOperation)m.makeImpressionOperation.unobserveFieldScoped((Chr(114)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)))
appInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H41)+Chr(&H70)+Chr(112)+Chr(73)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.makeImpressionOperation=m.asyncOperationFactory.callFunc((Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)),m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST,m.ServiceEndpoints.IMPRESSION,{"domain":appInfo.getID()+(Chr(46)+Chr(&H72)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)),"key":_I1_IOOI1_II1,"type":(Chr(114)+Chr(111)+Chr(&H6b)+Chr(117)),"version":m.bitmovinPlayerVersion})
m.makeImpressionOperation.observeFieldScoped((Chr(&H72)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(Chr(95)+Chr(&H49)+Chr(&H5f)+Chr(48)+Chr(73)+Chr(&H49)+Chr(&H31)+Chr(79)+Chr(48)+Chr(&H5f)+Chr(73)+Chr(&H4f)+Chr(&H4f)))
m.makeImpressionOperation.callFunc((Chr(&H65)+Chr(120)+Chr(101)+Chr(99)+Chr(117)+Chr(116)+Chr(101)),m.bitmovinPlayerTask)
end sub
sub _I0I00OOOI1_O()
m.fireImpressionForPlayerStateChange=(1=1)
m.fireImpressionForContentIndexChange=(1=2)
end sub
