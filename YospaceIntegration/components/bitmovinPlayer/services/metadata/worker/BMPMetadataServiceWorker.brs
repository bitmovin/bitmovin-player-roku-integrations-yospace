sub init()
m.BitmovinAsyncOperationTypes=___IO10I10001()
end sub
sub executeOperation(____1O1IOO011)
if __OOI0OI11_O0(____1O1IOO011.data)or __OOI0OI11_O0(____1O1IOO011.data.url)return 
if ____1O1IOO011.type=m.BitmovinAsyncOperationTypes.HLS_MASTER_PLAYLIST _10O__I00_I1O(____1O1IOO011)
if ____1O1IOO011.type=m.BitmovinAsyncOperationTypes.HLS_VARIANT_PLAYLIST _II1IIO0__I0O(____1O1IOO011)
end sub
sub _10O__I00_I1O(_010O1O0O____)
playlistRequest=___I0I_IOO0__(_010O1O0O____.data.url)
onSuccess=function(_10111OOOI10I,_0O1_O_1__0O1,_1IIO10___I_0)
responseWithSegmentBitrate={playlistUrl:_1IIO10___I_0.data.url,rawPlaylist:_10111OOOI10I,playlistVariantBitrate:_1IIO10___I_0.data.options.playlistVariantBitrate}
_1IIO10___I_0.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(&H6c)+Chr(116)),(1=1),responseWithSegmentBitrate,_0O1_O_1__0O1)
end function
onError=function(_O_IOO10_O_O_,_O_1I_0I1OI_0,_1_01011_O10_)
_1_01011_O10_.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=2),_O_IOO10_O_O_,_O_1I_0I1OI_0)
end function
__II1I_00O00I(playlistRequest,(Chr(&H47)+Chr(&H45)+Chr(&H54)),onSuccess,onError,_010O1O0O____)
end sub
sub _II1IIO0__I0O(_IIOO_0OI11_O)
playlistRequest=___I0I_IOO0__(_IIOO_0OI11_O.data.url)
onSuccess=function(_01O111_I1_IO,_11I0O10_O1__,_1_10_IOI001I)
responseWithSegmentBitrate={rawPlaylist:_01O111_I1_IO,playlistVariantBitrate:_1_10_IOI001I.data.options.playlistVariantBitrate,playlistVariantUrl:_1_10_IOI001I.data.url}
_1_10_IOI001I.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=1),responseWithSegmentBitrate,_11I0O10_O1__)
end function
onError=function(__I11010O0_I1,_1I_0I_O1_01I,_0OO000IO1001)
_0OO000IO1001.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(82)+Chr(101)+Chr(115)+Chr(117)+Chr(108)+Chr(&H74)),(1=2),__I11010O0_I1,_1I_0I_O1_01I)
end function
__II1I_00O00I(playlistRequest,(Chr(&H47)+Chr(&H45)+Chr(&H54)),onSuccess,onError,_IIOO_0OI11_O)
end sub
