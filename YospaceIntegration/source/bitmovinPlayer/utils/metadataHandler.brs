sub _I_1____1O1O0(_OI_101_0000I)
m.metadataTimeline=[]
m.top.observeFieldScoped((Chr(&H73)+Chr(101)+Chr(101)+Chr(&H6b)),(Chr(95)+Chr(48)+Chr(48)+Chr(79)+Chr(49)+Chr(&H31)+Chr(&H31)+Chr(&H5f)+Chr(49)+Chr(79)+Chr(&H31)+Chr(&H49)+Chr(79)))
_OI_101_0000I.timedMetaDataSelectionKeys=[(Chr(42))]
_OI_101_0000I.observeFieldScoped((Chr(&H70)+Chr(111)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),(Chr(95)+Chr(&H5f)+Chr(79)+Chr(&H49)+Chr(48)+Chr(48)+Chr(49)+Chr(73)+Chr(49)+Chr(&H4f)+Chr(&H5f)+Chr(&H31)+Chr(&H30)))
_OI_101_0000I.observeFieldScoped((Chr(&H74)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(100)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(&H61)+Chr(&H44)+Chr(&H61)+Chr(&H74)+Chr(&H61)),(Chr(95)+Chr(48)+Chr(48)+Chr(&H30)+Chr(73)+Chr(&H31)+Chr(49)+Chr(95)+Chr(73)+Chr(&H5f)+Chr(73)+Chr(79)+Chr(&H30)))
end sub
sub _000I11_I_IO0(_11____OI0IOI)
metadata=_11____OI0IOI.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(&H65)+Chr(&H6d)+Chr(&H73)+Chr(103))
__1I1I0II1I__(metadata)
return 
end if
m.top.metadata=metadata
end sub
sub _00O111_1O1IO()
m.metadataTimeline.Clear()
end sub
sub __1I1I0II1I__(_OO_01_100O0O)
m.metadataTimeline.Push(_001__1I_IOO_(_OO_01_100O0O))
__OI001I1O_10()
end sub
sub __OI001I1O_10()
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
function _001__1I_IOO_(_IIIOOO0O_O__)
_IIIOOO0O_O__.AddReplace((Chr(66)+Chr(77)+Chr(&H50)+Chr(&H5f)+Chr(115)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(117)+Chr(&H6c)+Chr(&H65)+Chr(&H64)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(&H65)),_1I110OO0II10(_IIIOOO0O_O__))
return _IIIOOO0O_O__ 
end function
function _1I110OO0II10(_I_O00III___0)
scheduledTime=_I_O00III___0._decodeInfo_pts
if _I_O00III___0.Offset<>invalid and _I_O00III___0.Offset>0 and _I_O00III___0.Timescale<>invalid and _I_O00III___0.Timescale>0
scheduledTime+=(_I_O00III___0.Offset/_I_O00III___0.Timescale)
end if
return scheduledTime 
end function
