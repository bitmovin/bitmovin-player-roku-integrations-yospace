sub init()
m.AsyncOperationTypes=___IO10I10001()
m.AsyncOperationWorkerTypes=_0OO1II_01I01()
end sub
function createAsyncOperation(__1I__0O11O_I,_0__0O1IO0_0_=Chr(0),__0IOO_I0I_0I=invalid)
if __1I__0O11O_I=invalid or _0__0O1IO0_0_=invalid return invalid 
asyncOperation=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)))
data={}
data.url=_0__0O1IO0_0_
data.options=__0IOO_I0I_0I
asyncOperation.type=__1I__0O11O_I
asyncOperation.workerType=___O_O00__IIO(__1I__0O11O_I)
asyncOperation.data=data
return asyncOperation 
end function
function ___O_O00__IIO(_01I_01OOO0_0)
if _01I_01OOO0_0=m.AsyncOperationTypes.CHECK_LICENSE_KEY return m.AsyncOperationWorkerTypes.LICENSE 
if _01I_01OOO0_0=m.AsyncOperationTypes.MAKE_IMPRESSION_REQUEST return m.AsyncOperationWorkerTypes.IMPRESSION 
if _01I_01OOO0_0=m.AsyncOperationTypes.GET_THUMBNAILS_VTT_FILE return m.AsyncOperationWorkerTypes.THUMBNAIL 
if _01I_01OOO0_0=m.AsyncOperationTypes.SET_UP_AD_HANDLER return m.AsyncOperationWorkerTypes.ADVERTISING 
if _01I_01OOO0_0=m.AsyncOperationTypes.SCHEDULE_ADS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _01I_01OOO0_0=m.AsyncOperationTypes.DISCARD_AD_BREAK return m.AsyncOperationWorkerTypes.ADVERTISING 
if _01I_01OOO0_0=m.AsyncOperationTypes.CLEAR_AD_BREAKS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _01I_01OOO0_0=m.AsyncOperationTypes.HLS_MASTER_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
if _01I_01OOO0_0=m.AsyncOperationTypes.HLS_VARIANT_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
end function
