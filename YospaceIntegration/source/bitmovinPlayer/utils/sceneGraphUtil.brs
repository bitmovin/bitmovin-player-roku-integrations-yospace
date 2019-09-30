sub _OO1_OIO1I_O0(__11101__I_1_,__O0O0I_OO01I)
if not _1_01I1IOI__I(__11101__I_1_) and not _1_01I1IOI__I(__O0O0I_OO01I)
for each key in __O0O0I_OO01I
__11101__I_1_.observeFieldScoped(key,__O0O0I_OO01I[key])
end for
end if
end sub
sub _0_10_I1_OO_O(_10I0O0O1O10O,_00000_1I0_11)
if not _1_01I1IOI__I(_10I0O0O1O10O) and not _1_01I1IOI__I(_00000_1I0_11)
for i=0 to _00000_1I0_11.Count()-1
_10I0O0O1O10O.unobserveFieldScoped(_00000_1I0_11[i])
end for
end if
end sub
