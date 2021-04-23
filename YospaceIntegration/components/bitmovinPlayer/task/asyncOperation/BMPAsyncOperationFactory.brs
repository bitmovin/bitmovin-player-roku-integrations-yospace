sub init()
m.AsyncOperationTypes=__10IOO1OII0I()
m.AsyncOperationWorkerTypes=_I_II1110O__1()
end sub
function createAsyncOperation(_IIOOI0I101I1,_O0I10O01_O1I=Chr(0),_111I10I00_OI=invalid)
if _IIOOI0I101I1=invalid or _O0I10O01_O1I=invalid return invalid 
asyncOperation=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)))
data={}
data.url=_O0I10O01_O1I
data.options=_111I10I00_OI
asyncOperation.type=_IIOOI0I101I1
asyncOperation.workerType=_10III__I0101(_IIOOI0I101I1)
asyncOperation.data=data
return asyncOperation 
end function
function _10III__I0101(_1_O1OIO_1O_1)
if _1_O1OIO_1O_1=m.AsyncOperationTypes.CHECK_LICENSE_KEY return m.AsyncOperationWorkerTypes.LICENSE 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.MAKE_IMPRESSION_REQUEST return m.AsyncOperationWorkerTypes.IMPRESSION 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.GET_THUMBNAILS_VTT_FILE return m.AsyncOperationWorkerTypes.THUMBNAIL 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.SET_UP_AD_HANDLER return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.SCHEDULE_ADS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.DISCARD_AD_BREAK return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.CLEAR_AD_BREAKS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.SET_AUDIENCE_MEASUREMENT_METADATA return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.CUSTOMIZE_AD_BUFFERING_SCREEN return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.UPDATE_AD_BUFFERING_SCREEN_WITH_METADATA return m.AsyncOperationWorkerTypes.ADVERTISING 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.HLS_MASTER_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
if _1_O1OIO_1O_1=m.AsyncOperationTypes.HLS_VARIANT_PLAYLIST return m.AsyncOperationWorkerTypes.METADATA 
end function
