sub _OI_OO_1_IO10(__11_1I00II01)
m.metadataTimeline=[]
m.top.observeFieldScoped((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(&H6b)),(Chr(95)+Chr(95)+Chr(&H49)+Chr(&H5f)+Chr(&H31)+Chr(&H31)+Chr(&H49)+Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(95)+Chr(49)+Chr(&H30)))
__11_1I00II01.timedMetaDataSelectionKeys=[(Chr(&H2a))]
__11_1I00II01.observeFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(105)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)),(Chr(95)+Chr(&H30)+Chr(73)+Chr(49)+Chr(&H4f)+Chr(&H49)+Chr(&H4f)+Chr(&H31)+Chr(&H31)+Chr(95)+Chr(&H49)+Chr(95)+Chr(79)))
__11_1I00II01.observeFieldScoped((Chr(&H74)+Chr(&H69)+Chr(109)+Chr(&H65)+Chr(100)+Chr(&H4d)+Chr(&H65)+Chr(116)+Chr(97)+Chr(68)+Chr(&H61)+Chr(116)+Chr(&H61)),(Chr(95)+Chr(&H31)+Chr(&H30)+Chr(&H31)+Chr(95)+Chr(95)+Chr(79)+Chr(49)+Chr(49)+Chr(&H5f)+Chr(95)+Chr(&H5f)+Chr(48)))
end sub
sub _101__O11___0(_O0_O_I_0O_I1)
metadata=_O0_O_I_0O_I1.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(&H65)+Chr(&H6d)+Chr(&H73)+Chr(103))
_11IO_01I10__(metadata)
return 
end if
m.top.metadata=metadata
end sub
sub __I_11I_OI_10()
m.metadataTimeline.Clear()
end sub
sub _11IO_01I10__(_11IIO_0_O00O)
m.metadataTimeline.Push(_OOO01_10OO_I(_11IIO_0_O00O))
_0I1OIO11_I_O()
end sub
sub _0I1OIO11_I_O()
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
function _OOO01_10OO_I(_0000II1I1OIO)
_0000II1I1OIO.AddReplace((Chr(66)+Chr(77)+Chr(80)+Chr(&H5f)+Chr(115)+Chr(99)+Chr(104)+Chr(101)+Chr(100)+Chr(117)+Chr(&H6c)+Chr(101)+Chr(100)+Chr(84)+Chr(105)+Chr(&H6d)+Chr(101)),_O_0O11O00_OI(_0000II1I1OIO))
return _0000II1I1OIO 
end function
function _O_0O11O00_OI(__11I11_I0I1O)
scheduledTime=__11I11_I0I1O._decodeInfo_pts
if __11I11_I0I1O.Offset<>invalid and __11I11_I0I1O.Offset>0 and __11I11_I0I1O.Timescale<>invalid and __11I11_I0I1O.Timescale>0
scheduledTime+=(__11I11_I0I1O.Offset/__11I11_I0I1O.Timescale)
end if
return scheduledTime 
end function
