sub init()
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
end sub
sub executeOperation(__1O00O_O__1O)
if _1100IO1O_0_I(__1O00O_O__1O.data)or _1100IO1O_0_I(__1O00O_O__1O.data.url)return 
if __1O00O_O__1O.type=m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST _II1OIO_O011I(__1O00O_O__1O)
if __1O00O_O__1O.type=m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST _11OI__10III0(__1O00O_O__1O)
end sub
sub _II1OIO_O011I(_O1I00__OOI10)
playlistRequest=_000OO__IO0O1(_O1I00__OOI10.data.url)
onSuccess=function(_O00IO_I0_1_1,_O_I_1__I_I0O,__OOOIII_O0I_)
responseWithSegmentBitrate={playlistUrl:__OOOIII_O0I_.data.url,rawPlaylist:_O00IO_I0_1_1,playlistVariantBitrate:__OOOIII_O0I_.data.options.playlistVariantBitrate}
__OOOIII_O0I_.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(1=1),responseWithSegmentBitrate,_O_I_1__I_I0O)
end function
onError=function(_II1_O1I10OII,_1_00OIO1I0I_,_0000110O0I1_)
_0000110O0I1_.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=2),_II1_O1I10OII,_1_00OIO1I0I_)
end function
__I_O1II01O1I(playlistRequest,(Chr(71)+Chr(&H45)+Chr(&H54)),onSuccess,onError,_O1I00__OOI10)
end sub
sub _11OI__10III0(_OI_011I11I_O)
playlistRequest=_000OO__IO0O1(_OI_011I11I_O.data.url)
onSuccess=function(_I0_IOO01O0II,_OOI11_0O_1I1,_1OI1I_II1_I0)
responseWithSegmentBitrate={rawPlaylist:_I0_IOO01O0II,playlistVariantBitrate:_1OI1I_II1_I0.data.options.playlistVariantBitrate,playlistVariantUrl:_1OI1I_II1_I0.data.url}
_1OI1I_II1_I0.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(116)),(1=1),responseWithSegmentBitrate,_OOI11_0O_1I1)
end function
onError=function(_0I11O_I_0IOI,_III_11OO0_10,__1O1101I0_O0)
__1O1101I0_O0.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=2),_0I11O_I_0IOI,_III_11OO0_10)
end function
__I_O1II01O1I(playlistRequest,(Chr(&H47)+Chr(&H45)+Chr(84)),onSuccess,onError,_OI_011I11I_O)
end sub
