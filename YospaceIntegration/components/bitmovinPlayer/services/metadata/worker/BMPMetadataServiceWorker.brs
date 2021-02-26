sub init()
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
end sub
sub executeOperation(_01O0__I_100O)
if _OO_O1_O1O0O_(_01O0__I_100O.data)or _OO_O1_O1O0O_(_01O0__I_100O.data.url)return 
if _01O0__I_100O.type=m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST _O1IO0I_I1OOI(_01O0__I_100O)
if _01O0__I_100O.type=m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST _I0__1I_O1_I0(_01O0__I_100O)
end sub
sub _O1IO0I_I1OOI(_IO0IO_OI0_O1)
playlistRequest=_11I00IO1OI10(_IO0IO_OI0_O1.data.url)
onSuccess=function(_O0OO1_I00010,_10OO1I_O_0_0,_0OOII00I11II)
responseWithSegmentBitrate={playlistUrl:_0OOII00I11II.data.url,rawPlaylist:_O0OO1_I00010,playlistVariantBitrate:_0OOII00I11II.data.options.playlistVariantBitrate}
_0OOII00I11II.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(1=1),responseWithSegmentBitrate,_10OO1I_O_0_0)
end function
onError=function(__00I_10001O0,_II00IO__II1_,__0__0_11__I0)
__0__0_11__I0.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H52)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=2),__00I_10001O0,_II00IO__II1_)
end function
_1001IIOO_O_O(playlistRequest,(Chr(&H47)+Chr(&H45)+Chr(84)),onSuccess,onError,_IO0IO_OI0_O1)
end sub
sub _I0__1I_O1_I0(_10II10101O11)
playlistRequest=_11I00IO1OI10(_10II10101O11.data.url)
onSuccess=function(_O11OI011II11,_OIIO1OI0OII_,_I01_0II1OI_O)
responseWithSegmentBitrate={rawPlaylist:_O11OI011II11,playlistVariantBitrate:_I01_0II1OI_O.data.options.playlistVariantBitrate,playlistVariantUrl:_I01_0II1OI_O.data.url}
_I01_0II1OI_O.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(82)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=1),responseWithSegmentBitrate,_OIIO1OI0OII_)
end function
onError=function(_I11O_011O1IO,_1IIO_I0O_0_1,___1O01_OO010)
___1O01_OO010.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=2),_I11O_011O1IO,_1IIO_I0O_0_1)
end function
_1001IIOO_O_O(playlistRequest,(Chr(&H47)+Chr(69)+Chr(84)),onSuccess,onError,_10II10101O11)
end sub
