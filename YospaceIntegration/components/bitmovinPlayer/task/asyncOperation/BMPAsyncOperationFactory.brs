sub init()
m.AsyncOperationTypes=_10I_O_1__O_1()
m.AsyncOperationWorkerTypes=_11O1101_1011()
end sub
function createAsyncOperation(_O0OIO_0_100_,_0IOO000OO___=Chr(0),__I_O___011OI=invalid)
if _O0OIO_0_100_=invalid or _0IOO000OO___=invalid return invalid 
asyncOperation=createObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(101)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)))
data={}
data.url=_0IOO000OO___
data.options=__I_O___011OI
asyncOperation.type=_O0OIO_0_100_
asyncOperation.workerType=_____O_I1O11_(_O0OIO_0_100_)
asyncOperation.data=data
return asyncOperation 
end function
function _____O_I1O11_(__0O010O1O1_O)
if __0O010O1O1_O=m.AsyncOperationTypes.CHECK_LICENSE_KEY return m.AsyncOperationWorkerTypes.LICENSE 
if __0O010O1O1_O=m.AsyncOperationTypes.MAKE_IMPRESSION_REQUEST return m.AsyncOperationWorkerTypes.IMPRESSION 
if __0O010O1O1_O=m.AsyncOperationTypes.GET_THUMBNAILS_VTT_FILE return m.AsyncOperationWorkerTypes.THUMBNAIL 
if __0O010O1O1_O=m.AsyncOperationTypes.SET_UP_AD_HANDLER return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.SCHEDULE_ADS return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.INITIALIZE_DEMAND_API return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.DISCARD_AD_BREAK return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.CLEAR_AD_BREAKS return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.ON_VIDEO_ERROR return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.CUSTOMIZE_AD_BUFFERING_SCREEN return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.CHECK_PREROLL_AD_BREAK return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.CHECK_AD_BREAKS return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.CONTENT_DURATION_CHANGED return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.SET_ADVERTISING_DEBUG_OUTPUT return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.UPDATE_ADVERTISING_METADATA return m.AsyncOperationWorkerTypes.ADVERTISING 
if __0O010O1O1_O=m.AsyncOperationTypes.HLS_MASTER_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
if __0O010O1O1_O=m.AsyncOperationTypes.HLS_VARIANT_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
end function
