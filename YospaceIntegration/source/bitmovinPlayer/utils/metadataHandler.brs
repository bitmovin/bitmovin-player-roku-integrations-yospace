sub _01O10I0I10_I(_0O_O10_OOI0I)
m.metadataTimeline=[]
m.top.observeFieldScoped((Chr(115)+Chr(101)+Chr(101)+Chr(107)),(Chr(&H5f)+Chr(&H5f)+Chr(49)+Chr(&H4f)+Chr(&H30)+Chr(&H30)+Chr(&H31)+Chr(&H4f)+Chr(95)+Chr(&H5f)+Chr(&H4f)+Chr(&H49)+Chr(49)))
_0O_O10_OOI0I.timedMetaDataSelectionKeys=[(Chr(42))]
_0O_O10_OOI0I.observeFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),(Chr(&H5f)+Chr(73)+Chr(79)+Chr(49)+Chr(&H49)+Chr(79)+Chr(48)+Chr(&H5f)+Chr(&H31)+Chr(79)+Chr(&H5f)+Chr(73)+Chr(79)))
_0O_O10_OOI0I.observeFieldScoped((Chr(&H74)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(&H64)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(97)+Chr(68)+Chr(97)+Chr(116)+Chr(&H61)),(Chr(&H5f)+Chr(49)+Chr(79)+Chr(48)+Chr(73)+Chr(73)+Chr(73)+Chr(&H4f)+Chr(49)+Chr(&H31)+Chr(&H5f)+Chr(&H5f)+Chr(73)))
end sub
sub _1O0IIIO11__I(_1111I0100OII)
metadata=_1111I0100OII.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(101)+Chr(109)+Chr(115)+Chr(103))
__I_O1I1_0I__(metadata)
return 
end if
m.top.metadata=metadata
end sub
sub __1O001O__OI1()
m.metadataTimeline.Clear()
end sub
sub __I_O1I1_0I__(__OO_I__II000)
m.metadataTimeline.Push(_1OI00OI10O0_(__OO_I__II000))
_IO1IO0_1O_IO()
end sub
sub _IO1IO0_1O_IO()
alreadyFired=0
for i=0 to(m.metadataTimeline.Count()-1)step 1
currentIndex=i-alreadyFired
if m.metadataTimeline[currentIndex].BMP_scheduledTime<=m.top.currentTime
m.top.metadata=m.metadataTimeline[currentIndex]
m.metadataTimeline.Delete(currentIndex)
alreadyFired++
end if
end for
end sub
function _1OI00OI10O0_(__0II1I__10I_)
__0II1I__10I_.AddReplace((Chr(66)+Chr(77)+Chr(80)+Chr(&H5f)+Chr(115)+Chr(&H63)+Chr(&H68)+Chr(101)+Chr(&H64)+Chr(117)+Chr(108)+Chr(101)+Chr(100)+Chr(84)+Chr(&H69)+Chr(109)+Chr(&H65)),_0100O0000OOO(__0II1I__10I_))
return __0II1I__10I_ 
end function
function _0100O0000OOO(_101I0___OI1O)
scheduledTime=_101I0___OI1O._decodeInfo_pts
if _101I0___OI1O.Offset<>invalid and _101I0___OI1O.Offset>0 and _101I0___OI1O.Timescale<>invalid and _101I0___OI1O.Timescale>0
scheduledTime+=(_101I0___OI1O.Offset/_101I0___OI1O.Timescale)
end if
return scheduledTime 
end function
