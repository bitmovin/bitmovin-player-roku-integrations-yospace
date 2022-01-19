sub init()
m.bitmovinInternalEventFactory=_IOI0_011_1O1()
m.BitmovinInternalEventTypes=___00__0_1OI_()
end sub
sub initializeService(_11O11O111OOO)
m.video=_11O11O111OOO.videoNode
end sub
sub startService(_1I1I1O0I1O0I=invalid)
if _110__I1O00_I(m.video)return 
m.video.observeFieldScoped((Chr(&H64)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)),(Chr(95)+Chr(95)+Chr(&H49)+Chr(79)+Chr(&H49)+Chr(49)+Chr(&H4f)+Chr(73)+Chr(&H49)+Chr(&H31)+Chr(&H30)+Chr(79)+Chr(49)))
end sub
sub stopService(_110OOO_OIO11=invalid)
if _110__I1O00_I(m.video)return 
m.video.unobserveFieldScoped((Chr(100)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)))
end sub
sub __IOI1OII10O1(__000I0I10I0O)
m.top.eventOccurred=m.bitmovinInternalEventFactory.createInternalEvent(m.BitmovinInternalEventTypes.DURATION_CHANGE,__000I0I10I0O.getData())
end sub
