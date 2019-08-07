sub _OO_I01000_00(_1I0O1011II__)
m.metadataTimeline=[]
m.top.observeFieldScoped((Chr(115)+Chr(101)+Chr(&H65)+Chr(107)),(Chr(&H5f)+Chr(49)+Chr(49)+Chr(&H31)+Chr(&H30)+Chr(&H4f)+Chr(&H31)+Chr(&H30)+Chr(&H4f)+Chr(79)+Chr(49)+Chr(&H4f)+Chr(95)))
_1I0O1011II__.timedMetaDataSelectionKeys=[(Chr(&H2a))]
_1I0O1011II__.observeFieldScoped((Chr(&H70)+Chr(111)+Chr(115)+Chr(105)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)),(Chr(95)+Chr(&H4f)+Chr(&H30)+Chr(95)+Chr(&H31)+Chr(48)+Chr(&H5f)+Chr(&H49)+Chr(48)+Chr(&H49)+Chr(79)+Chr(&H49)+Chr(49)))
_1I0O1011II__.observeFieldScoped((Chr(116)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(100)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(&H61)+Chr(68)+Chr(&H61)+Chr(116)+Chr(&H61)),(Chr(95)+Chr(&H31)+Chr(&H30)+Chr(95)+Chr(&H49)+Chr(49)+Chr(48)+Chr(49)+Chr(&H5f)+Chr(&H30)+Chr(&H49)+Chr(79)+Chr(95)))
end sub
sub _10_I101_0IO_(_1I__OOOO00_I)
metadata=_1I__OOOO00_I.getData()
if metadata.Source<>invalid and metadata.Source=(Chr(101)+Chr(109)+Chr(&H73)+Chr(&H67))
_OO0_I0I1_0I0(metadata)
return 
end if
m.top.metadata=metadata
end sub
sub _1110O10OO1O_()
m.metadataTimeline.Clear()
end sub
sub _OO0_I0I1_0I0(_1O1O00OIOI0_)
m.metadataTimeline.Push(_10_O1_O_I0II(_1O1O00OIOI0_))
_O0_10_I0IOI1()
end sub
sub _O0_10_I0IOI1()
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
function _10_O1_O_I0II(_I1__11OO11_O)
_I1__11OO11_O.AddReplace((Chr(66)+Chr(77)+Chr(80)+Chr(&H5f)+Chr(&H73)+Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(&H64)+Chr(117)+Chr(&H6c)+Chr(101)+Chr(&H64)+Chr(84)+Chr(105)+Chr(109)+Chr(&H65)),_0I1I00OI0IIO(_I1__11OO11_O))
return _I1__11OO11_O 
end function
function _0I1I00OI0IIO(_00I011_O101I)
scheduledTime=_00I011_O101I._decodeInfo_pts
if _00I011_O101I.Offset<>invalid and _00I011_O101I.Offset>0 and _00I011_O101I.Timescale<>invalid and _00I011_O101I.Timescale>0
scheduledTime+=(_00I011_O101I.Offset/_00I011_O101I.Timescale)
end if
return scheduledTime 
end function
