sub init()
m.AsyncOperationTypes=_1O_O11O1OOO_()
m.AsyncOperationWorkerTypes=_IOI0101_IOO_()
end sub
function createAsyncOperation(__1_011_IIII1,_0O10_000I_OI=Chr(0),_01O00_01OI1_=invalid)
if __1_011_IIII1=invalid or _0O10_000I_OI=invalid return invalid 
asyncOperation=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)))
data={}
data.url=_0O10_000I_OI
data.options=_01O00_01OI1_
asyncOperation.type=__1_011_IIII1
asyncOperation.workerType=__IO00_10O01O(__1_011_IIII1)
asyncOperation.data=data
return asyncOperation 
end function
function __IO00_10O01O(_01___0011I0O)
if _01___0011I0O=m.AsyncOperationTypes.CHECK_LICENSE_KEY return m.AsyncOperationWorkerTypes.LICENSE 
if _01___0011I0O=m.AsyncOperationTypes.MAKE_IMPRESSION_REQUEST return m.AsyncOperationWorkerTypes.IMPRESSION 
if _01___0011I0O=m.AsyncOperationTypes.GET_THUMBNAILS_VTT_FILE return m.AsyncOperationWorkerTypes.THUMBNAIL 
if _01___0011I0O=m.AsyncOperationTypes.SET_UP_AD_HANDLER return m.AsyncOperationWorkerTypes.ADVERTISING 
if _01___0011I0O=m.AsyncOperationTypes.SCHEDULE_ADS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _01___0011I0O=m.AsyncOperationTypes.DISCARD_AD_BREAK return m.AsyncOperationWorkerTypes.ADVERTISING 
if _01___0011I0O=m.AsyncOperationTypes.CLEAR_AD_BREAKS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _01___0011I0O=m.AsyncOperationTypes.HLS_MASTER_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
if _01___0011I0O=m.AsyncOperationTypes.HLS_VARIANT_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
end function
