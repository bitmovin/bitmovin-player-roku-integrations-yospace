sub init()
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
end sub
sub executeOperation(_OO000O_0O00O)
if _110__I1O00_I(_OO000O_0O00O.data)or _110__I1O00_I(_OO000O_0O00O.data.url)return 
if _OO000O_0O00O.type=m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST __0000111O0IO(_OO000O_0O00O)
if _OO000O_0O00O.type=m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST _O1O1I0_000O1(_OO000O_0O00O)
end sub
sub __0000111O0IO(___OII1I0II00)
playlistRequest=_I0I10_IO__0_(___OII1I0II00.data.url)
onSuccess=function(__O_1O__0_I0_,_0_O011I101I1,_OO010III00O0)
responseWithSegmentBitrate={playlistUrl:_OO010III00O0.data.url,rawPlaylist:__O_1O__0_I0_,playlistVariantBitrate:_OO010III00O0.data.options.playlistVariantBitrate}
_OO010III00O0.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H52)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=1),responseWithSegmentBitrate,_0_O011I101I1)
end function
onError=function(__0OO__0I10IO,_O_II_I_1IO0O,__OI0I00_I_O1)
__OI0I00_I_O1.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(115)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=2),__0OO__0I10IO,_O_II_I_1IO0O)
end function
___0I_____1O_(playlistRequest,(Chr(71)+Chr(&H45)+Chr(84)),onSuccess,onError,___OII1I0II00)
end sub
sub _O1O1I0_000O1(_OOO_0II__0_O)
playlistRequest=_I0I10_IO__0_(_OOO_0II__0_O.data.url)
onSuccess=function(_I_1O1I1_OIOO,_O0IO1OO_10OI,_O0II_O00O_0_)
responseWithSegmentBitrate={rawPlaylist:_I_1O1I1_OIOO,playlistVariantBitrate:_O0II_O00O_0_.data.options.playlistVariantBitrate,playlistVariantUrl:_O0II_O00O_0_.data.url}
_O0II_O00O_0_.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(1=1),responseWithSegmentBitrate,_O0IO1OO_10OI)
end function
onError=function(_0I__O111IO__,_IO_I_O1_0_0I,_10I__O_I00II)
_10I__O_I00II.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(1=2),_0I__O111IO__,_IO_I_O1_0_0I)
end function
___0I_____1O_(playlistRequest,(Chr(71)+Chr(&H45)+Chr(&H54)),onSuccess,onError,_OOO_0II__0_O)
end sub
