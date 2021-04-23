function _100_0_10OI00(_0O___OOOIO_0)
this={}
this[(Chr(95)+Chr(99)+Chr(97)+Chr(&H6c)+Chr(&H63)+Chr(117)+Chr(&H6c)+Chr(97)+Chr(&H74)+Chr(101)+Chr(86)+Chr(97)+Chr(108)+Chr(117)+Chr(&H65)+Chr(70)+Chr(&H72)+Chr(&H6f)+Chr(&H6d)+Chr(&H50)+Chr(&H65)+Chr(114)+Chr(99)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(97)+Chr(103)+Chr(101))]=_0O___OOOIO_0
this[(Chr(&H5f)+Chr(103)+Chr(101)+Chr(&H74)+Chr(76)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H54)+Chr(&H79)+Chr(112)+Chr(&H65)+Chr(&H73))]=function()
return{TEXT:(Chr(&H74)+Chr(101)+Chr(120)+Chr(116)),RECT:(Chr(114)+Chr(101)+Chr(99)+Chr(&H74)),IMAGE:(Chr(105)+Chr(109)+Chr(&H61)+Chr(&H67)+Chr(101))} 
end function
this[(Chr(95)+Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(76)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114))]=function(_110IIII1_O0O,_I001OOIO0101=Chr(0),__OIO_O__I___=(1=2),_I1OO11IIIO01=m._getLayerTypes())
layer={}
if _110IIII1_O0O=_I1OO11IIIO01.TEXT
layer={text:Chr(0),textAttrs:{color:Chr(0),font:Chr(0)},targetRect:{y:invalid,h:invalid,w:invalid,h:invalid}}
else if _110IIII1_O0O=_I1OO11IIIO01.RECT
layer={color:Chr(0),targetRect:{x:invalid,y:invalid,w:invalid,h:invalid}}
else if _110IIII1_O0O=_I1OO11IIIO01.IMAGE
layer={url:Chr(0),targetRect:{x:invalid,y:invalid,w:invalid,h:invalid}}
end if
layer.bitmovinLayerId=_I001OOIO0101
layer.bitmovinShouldUseMetadata=__OIO_O__I___
layer.bitmovinLayerType=_110IIII1_O0O
return layer 
end function
this[(Chr(95)+Chr(105)+Chr(115)+Chr(82)+Chr(&H65)+Chr(115)+Chr(&H6f)+Chr(&H6c)+Chr(117)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(80)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(73)+Chr(&H6e)+Chr(&H4d)+Chr(&H61)+Chr(&H6e)+Chr(&H69)+Chr(102)+Chr(101)+Chr(115)+Chr(116))]=function(_00OIII1I0100)
appInfo=CreateObject((Chr(114)+Chr(111)+Chr(65)+Chr(112)+Chr(&H70)+Chr(&H49)+Chr(&H6e)+Chr(&H66)+Chr(111)))
presentResolutions=appInfo.getValue((Chr(&H75)+Chr(&H69)+Chr(95)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(111)+Chr(&H6c)+Chr(&H75)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(115))).split((Chr(&H2c)))
isPresent=(1=2)
for each presentResolution in presentResolutions
if LCase(presentResolution.trim())=_00OIII1I0100
isPresent=(1=1)
end if
end for
return isPresent 
end function
this[(Chr(95)+Chr(105)+Chr(&H73)+Chr(&H55)+Chr(&H49)+Chr(82)+Chr(&H65)+Chr(&H73)+Chr(&H6f)+Chr(108)+Chr(&H75)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(70)+Chr(104)+Chr(100))]=function()
deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H44)+Chr(&H65)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)+Chr(73)+Chr(110)+Chr(&H66)+Chr(111)))
displayMode=deviceInfo.GetDisplayMode()
hdResolutionPresent=m._isResolutionPresentInManifest((Chr(&H68)+Chr(100)))
fhdResolutionPresent=m._isResolutionPresentInManifest((Chr(&H66)+Chr(&H68)+Chr(100)))
if displayMode=(Chr(&H31)+Chr(48)+Chr(56)+Chr(&H30)+Chr(&H70)) and hdResolutionPresent and fhdResolutionPresent
return(1=1) 
else if fhdResolutionPresent and hdResolutionPresent=(1=2)
return(1=1) 
else 
return(1=2) 
end if
end function
this[(Chr(&H5f)+Chr(115)+Chr(99)+Chr(97)+Chr(&H6c)+Chr(&H65)+Chr(84)+Chr(&H6f)+Chr(72)+Chr(&H64))]=function(__IIO_0OII__0)
if __IIO_0OII__0=invalid return invalid 
return(__IIO_0OII__0*2)/3 
end function
this[(Chr(&H5f)+Chr(&H73)+Chr(&H63)+Chr(&H61)+Chr(&H6c)+Chr(101)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(115))]=function(_OOIOOIOO__IO)
for each layer in _OOIOOIOO__IO
if layer.targetRect<>invalid
layer.targetRect.x=m._scaleToHd(layer.targetRect.x)
layer.targetRect.y=m._scaleToHd(layer.targetRect.y)
layer.targetRect.w=m._scaleToHd(layer.targetRect.w)
layer.targetRect.h=m._scaleToHd(layer.targetRect.h)
end if
end for
end function
this[(Chr(95)+Chr(&H72)+Chr(101)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H65)+Chr(68)+Chr(&H65)+Chr(102)+Chr(&H61)+Chr(&H75)+Chr(108)+Chr(116)+Chr(83)+Chr(99)+Chr(&H72)+Chr(101)+Chr(&H65)+Chr(110)+Chr(78)+Chr(111)+Chr(&H74)+Chr(&H56)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(&H62)+Chr(&H6c)+Chr(&H65)+Chr(76)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H73))]=function(_1I_1O_0O1O00)
adBufferingScreenLayers=[]
for i=0 to m._defaultAdBufferingScreenLayers.Count()-1
layer=m._defaultAdBufferingScreenLayers[i]
layerConfig=_1I_1O_0O1O00[layer.bitmovinLayerId]
if layerConfig=invalid or not layerConfig.visible=(1=2)
adBufferingScreenLayers.Push(layer)
end if
end for
m._defaultAdBufferingScreenLayers=adBufferingScreenLayers
end function
this[(Chr(&H5f)+Chr(117)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(84)+Chr(&H65)+Chr(120)+Chr(&H74)+Chr(&H54)+Chr(121)+Chr(&H70)+Chr(&H65)+Chr(76)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72))]=function(_OI11OI1_1_I_,_0O_0_O0_100O)
if _0O_0_O0_100O.text<>invalid _OI11OI1_1_I_.text=_0O_0_O0_100O.text
if _0O_0_O0_100O.color<>invalid _OI11OI1_1_I_.textAttrs.color=_0O_0_O0_100O.color
end function
this[(Chr(95)+Chr(117)+Chr(&H70)+Chr(100)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H52)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(84)+Chr(121)+Chr(&H70)+Chr(101)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72))]=function(_00I11OIO_101,_I__01IIIO1_O)
if _I__01IIIO1_O.color<>invalid _00I11OIO_101.color=_I__01IIIO1_O.color
end function
this[(Chr(&H5f)+Chr(&H75)+Chr(112)+Chr(100)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H49)+Chr(109)+Chr(&H61)+Chr(&H67)+Chr(&H65)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(101)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114))]=function(__1I0IIII_OII,_I_O__0III_00)
if _I_O__0III_00.url<>invalid __1I0IIII_OII.url=_I_O__0III_00.url
end function
this[(Chr(95)+Chr(&H64)+Chr(105)+Chr(&H73)+Chr(97)+Chr(&H62)+Chr(108)+Chr(101)+Chr(&H55)+Chr(115)+Chr(&H65)+Chr(79)+Chr(102)+Chr(77)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(100)+Chr(97)+Chr(&H74)+Chr(97)+Chr(70)+Chr(&H6f)+Chr(&H72)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72))]=function(_0O01II_I_I0O)
if not _0O01II_I_I0O.bitmovinShouldUseMetadata return invalid 
if _0O01II_I_I0O.text<>invalid and Len(_0O01II_I_I0O.text)>0 or _0O01II_I_I0O.url<>invalid and Len(_0O01II_I_I0O.url)>0 _0O01II_I_I0O.bitmovinShouldUseMetadata=(1=2)
end function
this[(Chr(&H5f)+Chr(&H63)+Chr(&H75)+Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(109)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(76)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H73))]=function(_11_1_00_0O1O)
for each layer in m._defaultAdBufferingScreenLayers
layerConfig=_11_1_00_0O1O[layer.bitmovinLayerId]
if layerConfig<>invalid and layer.bitmovinLayerType=m._LayerTypes.TEXT
m._updateTextTypeLayer(layer,layerConfig)
else if layerConfig<>invalid and layer.bitmovinLayerType=m._LayerTypes.RECT
m._updateRectTypeLayer(layer,layerConfig)
else if layerConfig<>invalid and layer.bitmovinLayerType=m._LayerTypes.IMAGE
m._updateImageTypeLayer(layer,layerConfig)
end if
m._disableUseOfMetadataForLayer(layer)
end for
end function
this[(Chr(&H5f)+Chr(97)+Chr(&H64)+Chr(100)+Chr(77)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(&H64)+Chr(97)+Chr(116)+Chr(97)+Chr(&H43)+Chr(111)+Chr(&H64)+Chr(101)+Chr(112)+Chr(&H65)+Chr(&H6e)+Chr(&H64)+Chr(101)+Chr(100)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(&H73))]=function(_1O_O111_I_I_)
if _1O_O111_I_I_.posterImage<>invalid and _1O_O111_I_I_.posterImage.visible=(1=1)m._defaultAdBufferingScreenLayers.Push(m._posterImageLayer)
if _1O_O111_I_I_.title<>invalid and _1O_O111_I_I_.title.visible=(1=1)m._defaultAdBufferingScreenLayers.Push(m._titleLayer)
if _1O_O111_I_I_.description<>invalid and _1O_O111_I_I_.description.visible=(1=1)m._defaultAdBufferingScreenLayers.Push(m._descriptionLayer)
end function
this[(Chr(&H5f)+Chr(117)+Chr(112)+Chr(100)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H4c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(87)+Chr(105)+Chr(&H74)+Chr(&H68)+Chr(&H4c)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(77)+Chr(&H65)+Chr(116)+Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(97))]=function(_0O1I_O1I0O_0,_10IOO0_0_0_1,_00O11I_IOO_O,_0OI0OI110III=Chr(0))
if _00O11I_IOO_O<>invalid
_0O1I_O1I0O_0[_10IOO0_0_0_1]=_00O11I_IOO_O
else 
_0O1I_O1I0O_0[_10IOO0_0_0_1]=_0OI0OI110III
end if
end function
this[(Chr(95)+Chr(104)+Chr(&H61)+Chr(110)+Chr(&H64)+Chr(&H6c)+Chr(&H65)+Chr(76)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(115)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(&H61)+Chr(100)+Chr(97)+Chr(116)+Chr(&H61)+Chr(85)+Chr(112)+Chr(100)+Chr(97)+Chr(&H74)+Chr(101))]=function(__I0O__1I100I)
if __I0O__1I100I=invalid return invalid 
if m._posterImageLayer.bitmovinShouldUseMetadata m._updateLayerWithLatestMetadata(m._posterImageLayer,(Chr(&H75)+Chr(&H72)+Chr(108)),__I0O__1I100I.posterImageUrl)
if m._titleLayer.bitmovinShouldUseMetadata m._updateLayerWithLatestMetadata(m._titleLayer,(Chr(116)+Chr(101)+Chr(120)+Chr(&H74)),__I0O__1I100I.title)
if m._descriptionLayer.bitmovinShouldUseMetadata m._updateLayerWithLatestMetadata(m._descriptionLayer,(Chr(116)+Chr(101)+Chr(120)+Chr(116)),__I0O__1I100I.description)
end function
this[(Chr(95)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H54)+Chr(121)+Chr(112)+Chr(&H65)+Chr(&H73))]=this._getLayerTypes()
this[(Chr(&H5f)+Chr(98)+Chr(97)+Chr(&H63)+Chr(107)+Chr(&H67)+Chr(&H72)+Chr(&H6f)+Chr(117)+Chr(110)+Chr(&H64)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72))]=this._createLayer(this._LayerTypes.RECT,(Chr(&H62)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(&H67)+Chr(&H72)+Chr(&H6f)+Chr(117)+Chr(110)+Chr(&H64)))
this[(Chr(95)+Chr(&H70)+Chr(111)+Chr(&H73)+Chr(116)+Chr(&H65)+Chr(&H72)+Chr(73)+Chr(109)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114))]=this._createLayer(this._LayerTypes.IMAGE,(Chr(112)+Chr(111)+Chr(115)+Chr(116)+Chr(&H65)+Chr(114)+Chr(&H49)+Chr(109)+Chr(97)+Chr(103)+Chr(101)),(1=1))
this[(Chr(&H5f)+Chr(&H70)+Chr(111)+Chr(115)+Chr(&H74)+Chr(101)+Chr(114)+Chr(&H49)+Chr(&H6d)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72))].targetRect={x:663,y:81,w:600,h:400}
this[(Chr(95)+Chr(116)+Chr(105)+Chr(&H74)+Chr(108)+Chr(101)+Chr(76)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114))]=this._createLayer(this._LayerTypes.TEXT,(Chr(116)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(101)),(1=1))
this[(Chr(&H5f)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(&H65)+Chr(76)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114))].textAttrs.font=(Chr(77)+Chr(&H65)+Chr(100)+Chr(105)+Chr(&H75)+Chr(&H6d))
this[(Chr(&H5f)+Chr(116)+Chr(&H69)+Chr(116)+Chr(&H6c)+Chr(101)+Chr(76)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114))].targetRect={y:501,h:50}
this[(Chr(&H5f)+Chr(100)+Chr(101)+Chr(&H73)+Chr(99)+Chr(114)+Chr(&H69)+Chr(112)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(101)+Chr(114))]=this._createLayer(this._LayerTypes.TEXT,(Chr(100)+Chr(101)+Chr(115)+Chr(&H63)+Chr(&H72)+Chr(&H69)+Chr(112)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)),(1=1))
this[(Chr(&H5f)+Chr(&H64)+Chr(&H65)+Chr(&H73)+Chr(99)+Chr(&H72)+Chr(&H69)+Chr(&H70)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(76)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72))].textAttrs.font=(Chr(&H53)+Chr(109)+Chr(&H61)+Chr(&H6c)+Chr(&H6c))
this[(Chr(95)+Chr(&H64)+Chr(101)+Chr(&H73)+Chr(99)+Chr(114)+Chr(105)+Chr(&H70)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(76)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72))].targetRect={y:570,h:200}
this[(Chr(&H5f)+Chr(98)+Chr(&H75)+Chr(&H66)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(77)+Chr(101)+Chr(115)+Chr(&H73)+Chr(97)+Chr(103)+Chr(101)+Chr(76)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114))]=this._createLayer(this._LayerTypes.TEXT,(Chr(98)+Chr(&H75)+Chr(&H66)+Chr(102)+Chr(&H65)+Chr(114)+Chr(105)+Chr(110)+Chr(103)+Chr(77)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(97)+Chr(&H67)+Chr(&H65)))
this[(Chr(&H5f)+Chr(&H62)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(101)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(77)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H61)+Chr(&H67)+Chr(101)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114))].textAttrs.font=(Chr(&H4c)+Chr(&H61)+Chr(&H72)+Chr(&H67)+Chr(&H65))
this[(Chr(&H5f)+Chr(98)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(&H4d)+Chr(101)+Chr(115)+Chr(115)+Chr(97)+Chr(103)+Chr(101)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114))].targetRect={y:789,h:50}
this[(Chr(95)+Chr(&H70)+Chr(&H72)+Chr(&H6f)+Chr(&H67)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(66)+Chr(&H61)+Chr(114)+Chr(77)+Chr(&H65)+Chr(115)+Chr(115)+Chr(97)+Chr(&H67)+Chr(101)+Chr(76)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72))]=this._createLayer(this._LayerTypes.TEXT,(Chr(112)+Chr(&H72)+Chr(111)+Chr(&H67)+Chr(114)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H42)+Chr(&H61)+Chr(&H72)+Chr(&H4d)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(101)))
this[(Chr(&H5f)+Chr(&H70)+Chr(114)+Chr(111)+Chr(103)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H42)+Chr(&H61)+Chr(114)+Chr(&H4d)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H61)+Chr(&H67)+Chr(101)+Chr(76)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72))].textAttrs.font=(Chr(&H53)+Chr(&H6d)+Chr(97)+Chr(108)+Chr(108))
this[(Chr(95)+Chr(&H70)+Chr(114)+Chr(&H6f)+Chr(&H67)+Chr(114)+Chr(101)+Chr(115)+Chr(&H73)+Chr(66)+Chr(97)+Chr(&H72)+Chr(&H4d)+Chr(101)+Chr(115)+Chr(&H73)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(76)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72))].targetRect={y:870,h:30}
this[(Chr(&H5f)+Chr(112)+Chr(&H72)+Chr(&H6f)+Chr(&H67)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H42)+Chr(97)+Chr(114)+Chr(&H42)+Chr(97)+Chr(&H63)+Chr(107)+Chr(&H67)+Chr(&H72)+Chr(111)+Chr(&H75)+Chr(&H6e)+Chr(100)+Chr(76)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114))]=this._createLayer(this._LayerTypes.RECT,(Chr(112)+Chr(114)+Chr(&H6f)+Chr(&H67)+Chr(114)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(66)+Chr(97)+Chr(&H72)+Chr(&H42)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(&H67)+Chr(114)+Chr(&H6f)+Chr(117)+Chr(110)+Chr(&H64)))
this[(Chr(&H5f)+Chr(&H70)+Chr(&H72)+Chr(111)+Chr(103)+Chr(114)+Chr(101)+Chr(115)+Chr(115)+Chr(66)+Chr(97)+Chr(114)+Chr(66)+Chr(97)+Chr(&H63)+Chr(&H6b)+Chr(103)+Chr(114)+Chr(&H6f)+Chr(&H75)+Chr(110)+Chr(&H64)+Chr(76)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114))].targetRect={x:609,y:906,w:699,h:18}
this[(Chr(&H5f)+Chr(&H70)+Chr(&H72)+Chr(&H6f)+Chr(103)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H42)+Chr(&H61)+Chr(&H72)+Chr(&H49)+Chr(110)+Chr(100)+Chr(105)+Chr(&H63)+Chr(&H61)+Chr(116)+Chr(111)+Chr(&H72)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114))]=this._createLayer(this._LayerTypes.RECT,(Chr(&H70)+Chr(&H72)+Chr(111)+Chr(&H67)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(66)+Chr(&H61)+Chr(&H72)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H69)+Chr(99)+Chr(&H61)+Chr(116)+Chr(111)+Chr(&H72)))
this[(Chr(95)+Chr(112)+Chr(&H72)+Chr(&H6f)+Chr(&H67)+Chr(114)+Chr(101)+Chr(115)+Chr(115)+Chr(66)+Chr(97)+Chr(114)+Chr(&H49)+Chr(&H6e)+Chr(&H64)+Chr(105)+Chr(&H63)+Chr(&H61)+Chr(116)+Chr(111)+Chr(&H72)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72))].targetRect={x:609,y:906,w:1,h:18}
this[(Chr(&H5f)+Chr(&H64)+Chr(&H65)+Chr(&H66)+Chr(97)+Chr(&H75)+Chr(&H6c)+Chr(&H74)+Chr(65)+Chr(&H64)+Chr(66)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H53)+Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H65)+Chr(&H6e)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(115))]=[this._backgroundLayer,this._bufferingMessageLayer,this._progressBarBackgroundLayer,this._progressBarIndicatorLayer,this._progressBarMessageLayer]
this[(Chr(115)+Chr(&H63)+Chr(&H61)+Chr(108)+Chr(101)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(&H75)+Chr(&H66)+Chr(102)+Chr(101)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H63)+Chr(114)+Chr(101)+Chr(101)+Chr(110)+Chr(76)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(&H73))]=function()
if not m._isUIResolutionFhd()m._scaleLayers([m._backgroundLayer,m._bufferingMessageLayer,m._progressBarBackgroundLayer,m._progressBarIndicatorLayer,m._progressBarMessageLayer,m._posterImageLayer,m._titleLayer,m._descriptionLayer])
end function
this[(Chr(&H68)+Chr(&H61)+Chr(110)+Chr(&H64)+Chr(108)+Chr(101)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(101)+Chr(114)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(80)+Chr(&H72)+Chr(&H6f)+Chr(103)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H73))]=function(_IO1_0I_1O_10)
bufferingProgress=_IO1_0I_1O_10.progress
if _IO1_0I_1O_10.canvaslayers.Count()>0 and bufferingProgress<>invalid and bufferingProgress>0
m._progressBarIndicatorLayer.targetRect.w=m._calculateValueFromPercentage(bufferingProgress,m._progressBarBackgroundLayer.targetRect.w)
end if
end function
this[(Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(100)+Chr(66)+Chr(&H75)+Chr(102)+Chr(102)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(110)+Chr(103)+Chr(&H53)+Chr(&H63)+Chr(&H72)+Chr(101)+Chr(101)+Chr(&H6e))]=function()
return m._defaultAdBufferingScreenLayers 
end function
this[(Chr(99)+Chr(&H75)+Chr(&H73)+Chr(&H74)+Chr(111)+Chr(&H6d)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(65)+Chr(&H64)+Chr(66)+Chr(117)+Chr(102)+Chr(&H66)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H65)+Chr(&H6e))]=function(_O_1111_I_O00)
m._removeDefaultScreenNotVisibleLayers(_O_1111_I_O00)
m._addMetadataCodependedLayers(_O_1111_I_O00)
m._customizeLayers(_O_1111_I_O00)
end function
this[(Chr(&H75)+Chr(112)+Chr(100)+Chr(97)+Chr(116)+Chr(&H65)+Chr(65)+Chr(100)+Chr(&H42)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(114)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(&H53)+Chr(&H63)+Chr(114)+Chr(&H65)+Chr(&H65)+Chr(110)+Chr(87)+Chr(105)+Chr(&H74)+Chr(104)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H61))]=function(_0_10__III_0O)
m._handleLayersMetadataUpdate(_0_10__III_0O)
end function
return this 
end function
