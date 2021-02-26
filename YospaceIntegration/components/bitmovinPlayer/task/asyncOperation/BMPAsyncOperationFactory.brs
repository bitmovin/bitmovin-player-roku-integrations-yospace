sub init()
m.AsyncOperationTypes=__OI0_00O_00_()
m.AsyncOperationWorkerTypes=_1____II01O0O()
end sub
function createAsyncOperation(_OIOOO_000111,_I_0__O001O0I=Chr(0),_O0OII0_000OI=invalid)
if _OIOOO_000111=invalid or _I_0__O001O0I=invalid return invalid 
asyncOperation=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(110)))
data={}
data.url=_I_0__O001O0I
data.options=_O0OII0_000OI
asyncOperation.type=_OIOOO_000111
asyncOperation.workerType=_O_I0_IIO_OO0(_OIOOO_000111)
asyncOperation.data=data
return asyncOperation 
end function
function _O_I0_IIO_OO0(_I01IO00__I01)
if _I01IO00__I01=m.AsyncOperationTypes.CHECK_LICENSE_KEY return m.AsyncOperationWorkerTypes.LICENSE 
if _I01IO00__I01=m.AsyncOperationTypes.MAKE_IMPRESSION_REQUEST return m.AsyncOperationWorkerTypes.IMPRESSION 
if _I01IO00__I01=m.AsyncOperationTypes.GET_THUMBNAILS_VTT_FILE return m.AsyncOperationWorkerTypes.THUMBNAIL 
if _I01IO00__I01=m.AsyncOperationTypes.SET_UP_AD_HANDLER return m.AsyncOperationWorkerTypes.ADVERTISING 
if _I01IO00__I01=m.AsyncOperationTypes.SCHEDULE_ADS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _I01IO00__I01=m.AsyncOperationTypes.DISCARD_AD_BREAK return m.AsyncOperationWorkerTypes.ADVERTISING 
if _I01IO00__I01=m.AsyncOperationTypes.CLEAR_AD_BREAKS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _I01IO00__I01=m.AsyncOperationTypes.HLS_MASTER_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
if _I01IO00__I01=m.AsyncOperationTypes.HLS_VARIANT_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
end function
