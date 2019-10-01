sub init()
m.BitmovinControlState=_0I0I_0O_O1I0()
end sub
sub setup(_IIIOO101_O1O)
m.vttUrl=_IIIOO101_O1O.vttUrl
if _1_01I1IOI__I(m.GetVttDataTask)
m.GetVttDataTask=createObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(71)+Chr(101)+Chr(&H74)+Chr(86)+Chr(116)+Chr(&H74)+Chr(&H44)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(84)+Chr(97)+Chr(115)+Chr(&H6b)))
m.GetVttDataTask.id=(Chr(&H47)+Chr(&H65)+Chr(&H74)+Chr(86)+Chr(&H74)+Chr(116)+Chr(68)+Chr(97)+Chr(116)+Chr(&H61)+Chr(&H54)+Chr(&H61)+Chr(115)+Chr(&H6b))
m.top.appendChild(m.GetVttDataTask)
else 
m.GetVttDataTask.unobserveFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)))
m.GetVttDataTask.unobserveFieldScoped((Chr(101)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)))
if m.GetVttDataTask.state=m.BitmovinControlState.RUN m.GetVttDataTask.control=m.BitmovinControlState.stop
end if
m.GetVttDataTask.observeFieldScoped((Chr(114)+Chr(&H65)+Chr(&H73)+Chr(117)+Chr(&H6c)+Chr(&H74)),(Chr(&H5f)+Chr(&H49)+Chr(&H5f)+Chr(&H30)+Chr(49)+Chr(&H4f)+Chr(73)+Chr(48)+Chr(48)+Chr(&H31)+Chr(95)+Chr(&H30)+Chr(&H4f)))
m.GetVttDataTask.observeFieldScoped((Chr(101)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)),(Chr(95)+Chr(&H30)+Chr(48)+Chr(95)+Chr(&H5f)+Chr(&H31)+Chr(&H5f)+Chr(73)+Chr(79)+Chr(&H4f)+Chr(&H4f)+Chr(&H4f)+Chr(49)))
m.GetVttDataTask.setField((Chr(118)+Chr(116)+Chr(&H74)+Chr(&H55)+Chr(114)+Chr(108)),m.vttUrl)
end sub
sub runVttTask(_0101101O1O_O)
m.GetVttDataTask.control=m.BitmovinControlState.RUN
end sub
sub stopVttTask(_11O1O11IOI00)
if not _1_01I1IOI__I(m.GetVttDataTask)
m.GetVttDataTask.control=m.BitmovinControlState.stop
m.GetVttDataTask.unobserveFieldScoped((Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H75)+Chr(108)+Chr(116)))
m.GetVttDataTask.unobserveFieldScoped((Chr(&H65)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)))
if not _1_01I1IOI__I(m.allThumbnailData)
m.allThumbnailData=[]
end if
end if
end sub
function getThumbnail(__O01O1_I_O_I)
if _1_01I1IOI__I(m.allThumbnailData)
return invalid 
end if
for i=0 to m.allThumbnailData.Count()-1
thumbnail=m.allThumbnailData[i]
if _II10O0O1I__I(__O01O1_I_O_I,thumbnail.start,thumbnail.end)
return thumbnail 
end if
end for
return invalid 
end function
sub _I_01OI001_0O(_1_1O__O1I_1_)
data=_1_1O__O1I_1_.getData().data
m.allThumbnailData=data.data
m.GetVttDataTask.control=m.BitmovinControlState.stop
end sub
sub _00__1_IOOOO1(_OO10O00I01_0)
data=_OO10O00I01_0.getData().data
?(Chr(86)+Chr(116)+Chr(116)+Chr(32)+Chr(&H50)+Chr(&H61)+Chr(&H72)+Chr(115)+Chr(101)+Chr(&H72)+Chr(32)+Chr(70)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H64)+Chr(&H21)+Chr(&H20))+data.error
m.GetVttDataTask.control=m.BitmovinControlState.stop
end sub
