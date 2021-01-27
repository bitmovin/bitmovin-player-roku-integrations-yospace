sub init()
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
end sub
sub executeOperation(__IOO_1OO11O0)
if ___0O_II_00I_(__IOO_1OO11O0.data)or ___0O_II_00I_(__IOO_1OO11O0.data.url)return 
if __IOO_1OO11O0.type=m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST __O010I0IOO11(__IOO_1OO11O0)
if __IOO_1OO11O0.type=m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST _O10_00IOI0_1(__IOO_1OO11O0)
end sub
sub __O010I0IOO11(_1I_I1OIO_101)
playlistRequest=_I01O11000O0_(_1I_I1OIO_101.data.url)
onSuccess=function(_0II0__1O_O_1,_1_0I001I__O_,_I10__OO0IO__)
responseWithSegmentBitrate={playlistUrl:_I10__OO0IO__.data.url,rawPlaylist:_0II0__1O_O_1,playlistVariantBitrate:_I10__OO0IO__.data.options.playlistVariantBitrate}
_I10__OO0IO__.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(82)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=1),responseWithSegmentBitrate,_1_0I001I__O_)
end function
onError=function(_1I01I0OO0OO_,_1O01OO01_0__,_0__OI1II_01O)
_0__OI1II_01O.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(&H74)),(1=2),_1I01I0OO0OO_,_1O01OO01_0__)
end function
_0III10O01II1(playlistRequest,(Chr(&H47)+Chr(69)+Chr(&H54)),onSuccess,onError,_1I_I1OIO_101)
end sub
sub _O10_00IOI0_1(_110OI0_110OO)
playlistRequest=_I01O11000O0_(_110OI0_110OO.data.url)
onSuccess=function(_O0_0O11001IO,_001IO0__0I0O,_I10I_1010_0_)
responseWithSegmentBitrate={rawPlaylist:_O0_0O11001IO,playlistVariantBitrate:_I10I_1010_0_.data.options.playlistVariantBitrate}
_I10I_1010_0_.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=1),responseWithSegmentBitrate,_001IO0__0I0O)
end function
onError=function(_I_II0__OOIO0,_O11IO__0_11_,_00_OO01_0OOO)
_00_OO01_0OOO.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=2),_I_II0__OOIO0,_O11IO__0_11_)
end function
_0III10O01II1(playlistRequest,(Chr(71)+Chr(&H45)+Chr(84)),onSuccess,onError,_110OI0_110OO)
end sub
