sub init()
m.AsyncOperationTypes=_1IO1O1I_1001()
m.AsyncOperationWorkerTypes=__III1O00_110()
end sub
function createAsyncOperation(_O__00_0OO1O_,_0I0O0_I00_0I=Chr(0),_O1O0O11_O_OO=invalid)
if _O__00_0OO1O_=invalid or _0I0O0_I00_0I=invalid return invalid 
asyncOperation=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(65)+Chr(115)+Chr(121)+Chr(&H6e)+Chr(&H63)+Chr(79)+Chr(&H70)+Chr(101)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)))
data={}
data.url=_0I0O0_I00_0I
data.options=_O1O0O11_O_OO
asyncOperation.type=_O__00_0OO1O_
asyncOperation.workerType=_110I0O000_I1(_O__00_0OO1O_)
asyncOperation.data=data
return asyncOperation 
end function
function _110I0O000_I1(_1_0IO11_I_1I)
if _1_0IO11_I_1I=m.AsyncOperationTypes.CHECK_LICENSE_KEY return m.AsyncOperationWorkerTypes.LICENSE 
if _1_0IO11_I_1I=m.AsyncOperationTypes.MAKE_IMPRESSION_REQUEST return m.AsyncOperationWorkerTypes.IMPRESSION 
if _1_0IO11_I_1I=m.AsyncOperationTypes.GET_THUMBNAILS_VTT_FILE return m.AsyncOperationWorkerTypes.THUMBNAIL 
if _1_0IO11_I_1I=m.AsyncOperationTypes.SET_UP_AD_HANDLER return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_0IO11_I_1I=m.AsyncOperationTypes.SCHEDULE_ADS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_0IO11_I_1I=m.AsyncOperationTypes.DISCARD_AD_BREAK return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_0IO11_I_1I=m.AsyncOperationTypes.CLEAR_AD_BREAKS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_0IO11_I_1I=m.AsyncOperationTypes.HLS_MASTER_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
if _1_0IO11_I_1I=m.AsyncOperationTypes.HLS_VARIANT_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
end function
