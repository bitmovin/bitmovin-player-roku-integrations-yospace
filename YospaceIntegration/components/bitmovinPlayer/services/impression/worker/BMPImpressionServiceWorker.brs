sub init()
m.BitmovinAsyncOperationTypes=___IO10I10001()
end sub
sub executeOperation(_OO_100I110_0)
if __OOI0OI11_O0(_OO_100I110_0.data)or __OOI0OI11_O0(_OO_100I110_0.data.url)return 
if _OO_100I110_0.type=m.BitmovinAsyncOperationTypes.MAKE_IMPRESSION_REQUEST _I0I0_O11OI0_(_OO_100I110_0)
end sub
sub _I0I0_O11OI0_(__01O1100000_)
impression=___I0I_IOO0__(__01O1100000_.data.url)
onSuccess=function(_11O_I1O1__O1,_OI_IO0101O11,_00OII10OO0O1)
_00OII10OO0O1.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(116)),(1=1),(Chr(&H49)+Chr(109)+Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H20)+Chr(&H72)+Chr(&H65)+Chr(113)+Chr(117)+Chr(101)+Chr(115)+Chr(116)+Chr(&H20)+Chr(&H77)+Chr(&H61)+Chr(115)+Chr(32)+Chr(115)+Chr(117)+Chr(99)+Chr(99)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(102)+Chr(117)+Chr(108)))
end function
onError=function(__1O000O11O00,___O0II01O1O0,_I0_001I01101)
_I0_001I01101.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H52)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(116)),(1=2),(Chr(&H49)+Chr(&H6d)+Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H20)+Chr(&H72)+Chr(&H65)+Chr(&H71)+Chr(117)+Chr(101)+Chr(&H73)+Chr(&H74)+Chr(&H20)+Chr(&H66)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(100)))
end function
__II1I_00O00I(impression,(Chr(80)+Chr(79)+Chr(&H53)+Chr(&H54)),onSuccess,onError,__01O1100000_)
end sub
