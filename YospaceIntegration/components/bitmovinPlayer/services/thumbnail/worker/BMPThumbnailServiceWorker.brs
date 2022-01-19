sub init()
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
end sub
sub executeOperation(____0O1010O0I)
if _110__I1O00_I(____0O1010O0I.data)or _110__I1O00_I(____0O1010O0I.data.url)return 
if ____0O1010O0I.type=m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE _IOO1000_IO10(____0O1010O0I)
end sub
sub _IOO1000_IO10(_10IO1II0I11I)
getVttRequest=_I0I10_IO__0_(_10IO1II0I11I.data.url)
onSuccess=function(_0_1_01_O1_0_,_O_0I_0000O0O,___O01I1II1O_)
vttParser=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H56)+Chr(&H54)+Chr(84)+Chr(80)+Chr(97)+Chr(&H72)+Chr(&H73)+Chr(&H65)+Chr(&H72)))
parsedData=vttParser.callfunc((Chr(&H70)+Chr(&H61)+Chr(114)+Chr(&H73)+Chr(101)+Chr(&H56)+Chr(&H74)+Chr(&H74)),___O01I1II1O_.data.url,_0_1_01_O1_0_)
error=vttParser.error
if error=Chr(0)
contentNode=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(67)+Chr(111)+Chr(110)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)))
contentNode.update({id:(Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(84)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(68)+Chr(&H61)+Chr(&H74)+Chr(&H61)),"thumbnails":parsedData},(1=1))
___O01I1II1O_.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H52)+Chr(101)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)),(1=1),contentNode,_O_0I_0000O0O)
else 
___O01I1II1O_.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H52)+Chr(101)+Chr(115)+Chr(117)+Chr(&H6c)+Chr(&H74)),(1=2),invalid,_O_0I_0000O0O,error)
end if
end function
onError=function(_1O01OI00IIOO,__01OOIOII00_,_I1_O_0O0IO00)
_I1_O_0O0IO00.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(82)+Chr(101)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(116)),(1=2),_1O01OI00IIOO,__01OOIOII00_,_1O01OI00IIOO.error)
end function
___0I_____1O_(getVttRequest,(Chr(&H47)+Chr(&H45)+Chr(84)),onSuccess,onError,_10IO1II0I11I)
end sub
