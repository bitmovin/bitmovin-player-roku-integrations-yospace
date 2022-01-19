sub init()
m.bitmovinInternalEventFactory=_IOI0_011_1O1()
m.BitmovinInternalEventTypes=___00__0_1OI_()
end sub
sub initializeService(_I1101111I1I_)
m.video=_I1101111I1I_.videoNode
end sub
sub setNativePlayerObservers(___IOIOI1IIO1=invalid)
if _110__I1O00_I(m.video)return 
m.video.observeFieldScoped((Chr(&H70)+Chr(111)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),(Chr(95)+Chr(&H5f)+Chr(79)+Chr(49)+Chr(95)+Chr(&H4f)+Chr(95)+Chr(49)+Chr(73)+Chr(95)+Chr(79)+Chr(&H4f)+Chr(48)))
end sub
sub removeNativePlayerObservers(___II01011O01=invalid)
if _110__I1O00_I(m.video)return 
m.video.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)))
end sub
function getCurrentTime(_010I10__II1_=invalid)
return m.video.position 
end function
sub __O1_O_1I_OO0(__OOI1II1O__I)
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.POSITION_CHANGE,__OOI1II1O__I.getData())
end sub
