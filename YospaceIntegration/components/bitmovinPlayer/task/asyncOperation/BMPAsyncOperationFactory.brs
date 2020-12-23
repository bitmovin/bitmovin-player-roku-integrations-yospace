sub init()
m.AsyncOperationTypes=_001_100I0III()
m.AsyncOperationWorkerTypes=_O__1I_1_0_IO()
end sub
function createAsyncOperation(__I1OIOO_0_O1,_1_IIIO_10O10=Chr(0),_O10III011_10=invalid)
if __I1OIOO_0_O1=invalid or _1_IIIO_10O10=invalid return invalid 
asyncOperation=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)))
data={}
data.url=_1_IIIO_10O10
data.options=_O10III011_10
asyncOperation.type=__I1OIOO_0_O1
asyncOperation.workerType=_O11I1__OO0O1(__I1OIOO_0_O1)
asyncOperation.data=data
return asyncOperation 
end function
function _O11I1__OO0O1(_IO1I111OO__0)
if _IO1I111OO__0=m.AsyncOperationTypes.CHECK_LICENSE_KEY return m.AsyncOperationWorkerTypes.LICENSE 
if _IO1I111OO__0=m.AsyncOperationTypes.MAKE_IMPRESSION_REQUEST return m.AsyncOperationWorkerTypes.IMPRESSION 
if _IO1I111OO__0=m.AsyncOperationTypes.GET_THUMBNAILS_VTT_FILE return m.AsyncOperationWorkerTypes.THUMBNAIL 
if _IO1I111OO__0=m.AsyncOperationTypes.SET_UP_AD_HANDLER return m.AsyncOperationWorkerTypes.ADVERTISING 
if _IO1I111OO__0=m.AsyncOperationTypes.SCHEDULE_ADS return m.AsyncOperationWorkerTypes.ADVERTISING 
if _IO1I111OO__0=m.AsyncOperationTypes.DISCARD_AD_BREAK return m.AsyncOperationWorkerTypes.ADVERTISING 
if _IO1I111OO__0=m.AsyncOperationTypes.CLEAR_AD_BREAKS return m.AsyncOperationWorkerTypes.ADVERTISING 
end function
