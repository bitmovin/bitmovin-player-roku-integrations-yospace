sub _10OO0IIO0100(_01_OO__I11_0)
m.metadataTimeline=[]
m.top.observeFieldScoped((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(107)),(Chr(&H5f)+Chr(&H4f)+Chr(79)+Chr(&H31)+Chr(79)+Chr(&H49)+Chr(&H4f)+Chr(48)+Chr(49)+Chr(&H30)+Chr(&H49)+Chr(&H31)+Chr(&H4f)))
_01_OO__I11_0.timedMetaDataSelectionKeys=[(Chr(&H2a))]
_01_OO__I11_0.observeFieldScoped((Chr(&H70)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)),(Chr(&H5f)+Chr(&H49)+Chr(&H4f)+Chr(&H31)+Chr(&H31)+Chr(48)+Chr(79)+Chr(&H49)+Chr(&H30)+Chr(&H4f)+Chr(49)+Chr(&H4f)+Chr(&H4f)))
_01_OO__I11_0.observeFieldScoped((Chr(&H74)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(&H64)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(97)+Chr(68)+Chr(&H61)+Chr(&H74)+Chr(&H61)),(Chr(&H5f)+Chr(&H49)+Chr(&H4f)+Chr(73)+Chr(&H5f)+Chr(&H4f)+Chr(79)+Chr(79)+Chr(&H5f)+Chr(&H5f)+Chr(79)+Chr(&H31)+Chr(73)))
end sub
sub _IOI_OOO__O1I(_O1O1I__1OI00)
metadata=_O1O1I__1OI00.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(&H65)+Chr(&H6d)+Chr(&H73)+Chr(103))
_I1_0O_0OO11O(metadata)
return 
end if
m.top.metadata=metadata
end sub
sub _OO1OIO010I1O()
m.metadataTimeline.Clear()
end sub
sub _I1_0O_0OO11O(_1O0O0010I010)
m.metadataTimeline.Push(_IO_OOO__0OO0(_1O0O0010I010))
_IO110OI0O1OO()
end sub
sub _IO110OI0O1OO()
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
function _IO_OOO__0OO0(_OI0OI0OI1IOI)
_OI0OI0OI1IOI.AddReplace((Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(95)+Chr(115)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(&H64)+Chr(117)+Chr(108)+Chr(101)+Chr(&H64)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(&H65)),__OI0II0IIIO_(_OI0OI0OI1IOI))
return _OI0OI0OI1IOI 
end function
function __OI0II0IIIO_(_OO_0OO10OOI_)
scheduledTime=_OO_0OO10OOI_._decodeInfo_pts
if _OO_0OO10OOI_.Offset<>invalid and _OO_0OO10OOI_.Offset>0 and _OO_0OO10OOI_.Timescale<>invalid and _OO_0OO10OOI_.Timescale>0
scheduledTime+=(_OO_0OO10OOI_.Offset/_OO_0OO10OOI_.Timescale)
end if
return scheduledTime 
end function
