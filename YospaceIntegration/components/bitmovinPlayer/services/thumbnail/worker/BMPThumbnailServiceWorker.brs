sub init()
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
end sub
sub executeOperation(_I100_1O_0IOO)
if ___0O_II_00I_(_I100_1O_0IOO.data)or ___0O_II_00I_(_I100_1O_0IOO.data.url)return 
if _I100_1O_0IOO.type=m.BitmovinAsyncOperationTypes.GET_THUMBNAILS_VTT_FILE _1IO_0_0000I0(_I100_1O_0IOO)
end sub
sub _1IO_0_0000I0(_01OI010O0111)
getVttRequest=_I01O11000O0_(_01OI010O0111.data.url)
onSuccess=function(_010I0OI0I1I0,_O00O1IO01OI1,_10O_0O010111)
vttParser=_1_101OI0II__()
parsedData=vttParser.parseVtt(_10O_0O010111.data.url,_010I0OI0I1I0)
error=vttParser.error
if ___0O_II_00I_(error)
contentNode=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(101)+Chr(110)+Chr(&H74)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)))
contentNode.update({id:(Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(&H44)+Chr(&H61)+Chr(116)+Chr(&H61)),"thumbnails":parsedData},(1=1))
_10O_0O010111.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(&H75)+Chr(108)+Chr(&H74)),(1=1),contentNode,_O00O1IO01OI1)
else 
_10O_0O010111.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(&H73)+Chr(117)+Chr(108)+Chr(&H74)),(1=2),invalid,_O00O1IO01OI1,error)
end if
end function
onError=function(__O1O_OII0IIO,____OOI0I1_0I,_0I1_110OI0O1)
_0I1_110OI0O1.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(82)+Chr(&H65)+Chr(115)+Chr(117)+Chr(108)+Chr(116)),(1=2),__O1O_OII0IIO,____OOI0I1_0I,__O1O_OII0IIO.error)
end function
_0III10O01II1(getVttRequest,(Chr(71)+Chr(69)+Chr(84)),onSuccess,onError,_01OI010O0111)
end sub
