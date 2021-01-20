sub init()
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
end sub
sub executeOperation(_O1_I1I1I1___)
if _I1_I11_1O_0I(_O1_I1I1I1___.data)or _I1_I11_1O_0I(_O1_I1I1I1___.data.url)return 
if _O1_I1I1I1___.type=m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST _1II10OO_1IO1(_O1_I1I1I1___)
if _O1_I1I1I1___.type=m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST _1II1O1O11_IO(_O1_I1I1I1___)
end sub
sub _1II10OO_1IO1(_1OI_IOI_11I_)
playlistRequest=_OIIOI_001OII(_1OI_IOI_11I_.data.url)
onSuccess=function(_0O1I10111II1,__111O0_O__0I,_I_OI110OO_O_)
responseWithSegmentBitrate={playlistUrl:_I_OI110OO_O_.data.url,rawPlaylist:_0O1I10111II1,playlistVariantBitrate:_I_OI110OO_O_.data.options.playlistVariantBitrate}
_I_OI110OO_O_.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=1),responseWithSegmentBitrate,__111O0_O__0I)
end function
onError=function(_1101I1O_I0I_,__O01O01I11_O,_I1__1_OI0I00)
_I1__1_OI0I00.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=2),_1101I1O_I0I_,__O01O01I11_O)
end function
_101O_I_I_1IO(playlistRequest,(Chr(&H47)+Chr(&H45)+Chr(84)),onSuccess,onError,_1OI_IOI_11I_)
end sub
sub _1II1O1O11_IO(_I0IOO1_II10O)
playlistRequest=_OIIOI_001OII(_I0IOO1_II10O.data.url)
onSuccess=function(_01IOO01O__O0,_0_OI0100__OI,_10O1OO00I1_I)
responseWithSegmentBitrate={rawPlaylist:_01IOO01O__O0,playlistVariantBitrate:_10O1OO00I1_I.data.options.playlistVariantBitrate}
_10O1OO00I1_I.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=1),responseWithSegmentBitrate,_0_OI0100__OI)
end function
onError=function(_11_0IOOO1OO0,_1I0O110I0III,_IO01_I0I_1I_)
_IO01_I0I_1I_.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=2),_11_0IOOO1OO0,_1I0O110I0III)
end function
_101O_I_I_1IO(playlistRequest,(Chr(&H47)+Chr(&H45)+Chr(&H54)),onSuccess,onError,_I0IOO1_II10O)
end sub
