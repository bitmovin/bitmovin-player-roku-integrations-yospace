function __1I11_O_O100(_I0I_O10010_1)
this={}
this[(Chr(&H5f)+Chr(&H63)+Chr(97)+Chr(&H6c)+Chr(99)+Chr(&H75)+Chr(108)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H56)+Chr(97)+Chr(&H6c)+Chr(117)+Chr(&H65)+Chr(&H46)+Chr(&H72)+Chr(111)+Chr(109)+Chr(80)+Chr(101)+Chr(&H72)+Chr(&H63)+Chr(101)+Chr(110)+Chr(&H74)+Chr(97)+Chr(103)+Chr(&H65))]=_I0I_O10010_1
this[(Chr(95)+Chr(103)+Chr(101)+Chr(116)+Chr(76)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H54)+Chr(&H79)+Chr(112)+Chr(&H65)+Chr(115))]=function()
return{TEXT:(Chr(116)+Chr(&H65)+Chr(&H78)+Chr(&H74)),RECT:(Chr(114)+Chr(&H65)+Chr(&H63)+Chr(&H74)),IMAGE:(Chr(105)+Chr(109)+Chr(97)+Chr(103)+Chr(&H65))} 
end function
this[(Chr(&H5f)+Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(116)+Chr(101)+Chr(&H4c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72))]=function(_0I01OI_I0_0_,_OO110OO10_01=Chr(0),_10II0_O11110=(1=2),_O0O1OI11_IIO=m._getLayerTypes())
layer={}
if _0I01OI_I0_0_=_O0O1OI11_IIO.TEXT
layer={text:Chr(0),textAttrs:{color:Chr(0),font:Chr(0)},targetRect:{y:invalid,h:invalid,w:invalid,h:invalid}}
else if _0I01OI_I0_0_=_O0O1OI11_IIO.RECT
layer={color:Chr(0),targetRect:{x:invalid,y:invalid,w:invalid,h:invalid}}
else if _0I01OI_I0_0_=_O0O1OI11_IIO.IMAGE
layer={url:Chr(0),targetRect:{x:invalid,y:invalid,w:invalid,h:invalid}}
end if
layer.bitmovinLayerId=_OO110OO10_01
layer.bitmovinShouldUseMetadata=_10II0_O11110
layer.bitmovinLayerType=_0I01OI_I0_0_
return layer 
end function
this[(Chr(95)+Chr(&H69)+Chr(&H73)+Chr(&H52)+Chr(&H65)+Chr(&H73)+Chr(111)+Chr(108)+Chr(117)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H50)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(73)+Chr(110)+Chr(77)+Chr(97)+Chr(&H6e)+Chr(105)+Chr(&H66)+Chr(101)+Chr(115)+Chr(116))]=function(______0O01OO0)
appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H41)+Chr(112)+Chr(112)+Chr(73)+Chr(&H6e)+Chr(&H66)+Chr(&H6f)))
presentResolutions=appInfo.getValue((Chr(117)+Chr(105)+Chr(95)+Chr(&H72)+Chr(101)+Chr(115)+Chr(111)+Chr(108)+Chr(&H75)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H73))).split((Chr(44)))
isPresent=(1=2)
for each presentResolution in presentResolutions
if LCase(presentResolution.trim())=______0O01OO0
isPresent=(1=1)
end if
end for
return isPresent 
end function
this[(Chr(95)+Chr(105)+Chr(&H73)+Chr(&H55)+Chr(73)+Chr(&H52)+Chr(101)+Chr(115)+Chr(&H6f)+Chr(108)+Chr(117)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H46)+Chr(&H68)+Chr(&H64))]=function()
deviceInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H44)+Chr(&H65)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
displayMode=deviceInfo.GetDisplayMode()
hdResolutionPresent=m._isResolutionPresentInManifest((Chr(&H68)+Chr(100)))
fhdResolutionPresent=m._isResolutionPresentInManifest((Chr(&H66)+Chr(104)+Chr(&H64)))
if displayMode=(Chr(49)+Chr(&H30)+Chr(56)+Chr(48)+Chr(&H70)) and hdResolutionPresent and fhdResolutionPresent
return(1=1) 
else if fhdResolutionPresent and hdResolutionPresent=(1=2)
return(1=1) 
else 
return(1=2) 
end if
end function
this[(Chr(&H5f)+Chr(115)+Chr(&H63)+Chr(97)+Chr(108)+Chr(101)+Chr(84)+Chr(111)+Chr(72)+Chr(&H64))]=function(_OOO000I_01O0)
if _OOO000I_01O0=invalid return invalid 
return(_OOO000I_01O0*2)/3 
end function
this[(Chr(95)+Chr(115)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(101)+Chr(76)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(115))]=function(__1O_O0011_01)
for each layer in __1O_O0011_01
if layer.targetRect<>invalid
layer.targetRect.x=m._scaleToHd(layer.targetRect.x)
layer.targetRect.y=m._scaleToHd(layer.targetRect.y)
layer.targetRect.w=m._scaleToHd(layer.targetRect.w)
layer.targetRect.h=m._scaleToHd(layer.targetRect.h)
end if
end for
end function
this[(Chr(95)+Chr(114)+Chr(101)+Chr(109)+Chr(111)+Chr(118)+Chr(101)+Chr(&H4e)+Chr(111)+Chr(&H74)+Chr(86)+Chr(105)+Chr(115)+Chr(&H69)+Chr(98)+Chr(108)+Chr(&H65)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H73))]=function(_101_0I010I01)
adBufferingScreenLayers=[]
for i=0 to m._adBufferingScreenLayers.Count()-1
layer=m._adBufferingScreenLayers[i]
layerConfig=_101_0I010I01[layer.bitmovinLayerId]
if layerConfig=invalid or not layerConfig.visible=(1=2)
adBufferingScreenLayers.Push(layer)
end if
end for
m._adBufferingScreenLayers=adBufferingScreenLayers
end function
this[(Chr(&H5f)+Chr(&H75)+Chr(112)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H54)+Chr(&H65)+Chr(120)+Chr(&H74)+Chr(&H54)+Chr(&H79)+Chr(112)+Chr(101)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72))]=function(_OIII_OI0O0O0,_IOIOI0O01O_I)
if _IOIOI0O01O_I.text<>invalid _OIII_OI0O0O0.text=_IOIOI0O01O_I.text
if _IOIOI0O01O_I.color<>invalid _OIII_OI0O0O0.textAttrs.color=_IOIOI0O01O_I.color
end function
this[(Chr(95)+Chr(&H75)+Chr(112)+Chr(100)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H52)+Chr(&H65)+Chr(&H63)+Chr(116)+Chr(84)+Chr(121)+Chr(112)+Chr(101)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114))]=function(__IO1_I000IO1,_010I_IIOO0__)
if _010I_IIOO0__.color<>invalid __IO1_I000IO1.color=_010I_IIOO0__.color
end function
this[(Chr(&H5f)+Chr(117)+Chr(112)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H49)+Chr(&H6d)+Chr(&H61)+Chr(103)+Chr(101)+Chr(84)+Chr(121)+Chr(&H70)+Chr(&H65)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114))]=function(__110IO_I0100,_I_OOI10_I00O)
if _I_OOI10_I00O.url<>invalid __110IO_I0100.url=_I_OOI10_I00O.url
end function
this[(Chr(95)+Chr(100)+Chr(&H69)+Chr(115)+Chr(97)+Chr(98)+Chr(108)+Chr(&H65)+Chr(85)+Chr(115)+Chr(101)+Chr(79)+Chr(102)+Chr(77)+Chr(101)+Chr(&H74)+Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(97)+Chr(70)+Chr(&H6f)+Chr(114)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72))]=function(_00I_0OO_01_I)
if not _00I_0OO_01_I.bitmovinShouldUseMetadata return invalid 
if _00I_0OO_01_I.text<>invalid and Len(_00I_0OO_01_I.text)>0 or _00I_0OO_01_I.url<>invalid and Len(_00I_0OO_01_I.url)>0 _00I_0OO_01_I.bitmovinShouldUseMetadata=(1=2)
end function
this[(Chr(&H5f)+Chr(99)+Chr(117)+Chr(&H73)+Chr(116)+Chr(111)+Chr(&H6d)+Chr(105)+Chr(122)+Chr(101)+Chr(76)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H73))]=function(_0I10IIO101__,__OI10I0__0I_)
for each layer in __OI10I0__0I_
layerConfig=_0I10IIO101__[layer.bitmovinLayerId]
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
this[(Chr(95)+Chr(97)+Chr(100)+Chr(100)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H61)+Chr(67)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(112)+Chr(101)+Chr(110)+Chr(&H64)+Chr(101)+Chr(&H64)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(101)+Chr(114)+Chr(&H73))]=function(_I_O00_I0I0_I)
if _I_O00_I0I0_I.posterImage<>invalid and _I_O00_I0I0_I.posterImage.visible=(1=1)m._adBufferingScreenLayers.Push(m._posterImageLayer)
if _I_O00_I0I0_I.title<>invalid and _I_O00_I0I0_I.title.visible=(1=1)m._adBufferingScreenLayers.Push(m._titleLayer)
if _I_O00_I0I0_I.description<>invalid and _I_O00_I0I0_I.description.visible=(1=1)m._adBufferingScreenLayers.Push(m._descriptionLayer)
end function
this[(Chr(&H5f)+Chr(&H75)+Chr(112)+Chr(100)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H57)+Chr(105)+Chr(&H74)+Chr(&H68)+Chr(76)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H4d)+Chr(101)+Chr(&H74)+Chr(97)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(97))]=function(_11101I01011I,____OO0I11OO1,_O1_1OOIIO__I,_I01I0I111000=Chr(0))
if _O1_1OOIIO__I<>invalid
_11101I01011I[____OO0I11OO1]=_O1_1OOIIO__I
else 
_11101I01011I[____OO0I11OO1]=_I01I0I111000
end if
end function
this[(Chr(&H5f)+Chr(&H68)+Chr(&H61)+Chr(110)+Chr(&H64)+Chr(108)+Chr(101)+Chr(76)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H73)+Chr(77)+Chr(&H65)+Chr(116)+Chr(97)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(85)+Chr(&H70)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(&H65))]=function(_IIO1I0O_1OI_)
if _IIO1I0O_1OI_=invalid return invalid 
if m._posterImageLayer.bitmovinShouldUseMetadata m._updateLayerWithLatestMetadata(m._posterImageLayer,(Chr(117)+Chr(&H72)+Chr(108)),_IIO1I0O_1OI_.posterImageUrl)
if m._titleLayer.bitmovinShouldUseMetadata m._updateLayerWithLatestMetadata(m._titleLayer,(Chr(&H74)+Chr(101)+Chr(120)+Chr(116)),_IIO1I0O_1OI_.title)
if m._descriptionLayer.bitmovinShouldUseMetadata m._updateLayerWithLatestMetadata(m._descriptionLayer,(Chr(&H74)+Chr(101)+Chr(120)+Chr(116)),_IIO1I0O_1OI_.description)
end function
this[(Chr(&H5f)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(101)+Chr(&H73))]=this._getLayerTypes()
this[(Chr(95)+Chr(98)+Chr(97)+Chr(99)+Chr(107)+Chr(103)+Chr(&H72)+Chr(111)+Chr(117)+Chr(&H6e)+Chr(&H64)+Chr(76)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114))]=this._createLayer(this._LayerTypes.RECT,(Chr(98)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(&H67)+Chr(&H72)+Chr(111)+Chr(&H75)+Chr(110)+Chr(&H64)))
this[(Chr(95)+Chr(112)+Chr(111)+Chr(115)+Chr(116)+Chr(101)+Chr(114)+Chr(73)+Chr(109)+Chr(97)+Chr(&H67)+Chr(101)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114))]=this._createLayer(this._LayerTypes.IMAGE,(Chr(&H70)+Chr(111)+Chr(&H73)+Chr(116)+Chr(&H65)+Chr(&H72)+Chr(73)+Chr(&H6d)+Chr(&H61)+Chr(&H67)+Chr(101)),(1=1))
this[(Chr(95)+Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(&H74)+Chr(&H65)+Chr(114)+Chr(&H49)+Chr(109)+Chr(&H61)+Chr(&H67)+Chr(101)+Chr(76)+Chr(97)+Chr(121)+Chr(101)+Chr(114))].targetRect={x:663,y:81,w:600,h:400}
this[(Chr(&H5f)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(108)+Chr(&H65)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72))]=this._createLayer(this._LayerTypes.TEXT,(Chr(&H74)+Chr(105)+Chr(&H74)+Chr(108)+Chr(&H65)),(1=1))
this[(Chr(95)+Chr(116)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(&H65)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114))].textAttrs.font=(Chr(77)+Chr(&H65)+Chr(&H64)+Chr(&H69)+Chr(117)+Chr(109))
this[(Chr(95)+Chr(&H74)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(101)+Chr(76)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72))].targetRect={y:501,h:50}
this[(Chr(95)+Chr(&H64)+Chr(101)+Chr(115)+Chr(99)+Chr(&H72)+Chr(105)+Chr(112)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114))]=this._createLayer(this._LayerTypes.TEXT,(Chr(100)+Chr(&H65)+Chr(115)+Chr(&H63)+Chr(&H72)+Chr(&H69)+Chr(112)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),(1=1))
this[(Chr(95)+Chr(100)+Chr(&H65)+Chr(115)+Chr(99)+Chr(114)+Chr(105)+Chr(&H70)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72))].textAttrs.font=(Chr(83)+Chr(109)+Chr(&H61)+Chr(108)+Chr(108))
this[(Chr(&H5f)+Chr(&H64)+Chr(&H65)+Chr(&H73)+Chr(99)+Chr(&H72)+Chr(&H69)+Chr(&H70)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H4c)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72))].targetRect={y:570,h:200}
this[(Chr(95)+Chr(&H62)+Chr(117)+Chr(102)+Chr(102)+Chr(&H65)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H4d)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(97)+Chr(&H67)+Chr(101)+Chr(76)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72))]=this._createLayer(this._LayerTypes.TEXT,(Chr(&H62)+Chr(&H75)+Chr(102)+Chr(102)+Chr(101)+Chr(114)+Chr(&H69)+Chr(110)+Chr(103)+Chr(77)+Chr(101)+Chr(&H73)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(101)))
this[(Chr(95)+Chr(98)+Chr(117)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(110)+Chr(103)+Chr(77)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(&H4c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72))].textAttrs.font=(Chr(76)+Chr(97)+Chr(114)+Chr(&H67)+Chr(&H65))
this[(Chr(95)+Chr(98)+Chr(117)+Chr(&H66)+Chr(102)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67)+Chr(&H4d)+Chr(101)+Chr(&H73)+Chr(115)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(76)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114))].targetRect={y:789,h:50}
this[(Chr(&H5f)+Chr(112)+Chr(&H72)+Chr(111)+Chr(103)+Chr(114)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H42)+Chr(97)+Chr(114)+Chr(77)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(97)+Chr(103)+Chr(101)+Chr(76)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114))]=this._createLayer(this._LayerTypes.TEXT,(Chr(&H70)+Chr(&H72)+Chr(&H6f)+Chr(&H67)+Chr(114)+Chr(101)+Chr(115)+Chr(&H73)+Chr(66)+Chr(97)+Chr(&H72)+Chr(&H4d)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(&H65)))
this[(Chr(95)+Chr(112)+Chr(&H72)+Chr(&H6f)+Chr(103)+Chr(&H72)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H42)+Chr(&H61)+Chr(114)+Chr(&H4d)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(97)+Chr(103)+Chr(101)+Chr(76)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114))].textAttrs.font=(Chr(&H53)+Chr(109)+Chr(97)+Chr(&H6c)+Chr(&H6c))
this[(Chr(&H5f)+Chr(&H70)+Chr(&H72)+Chr(111)+Chr(103)+Chr(114)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H42)+Chr(97)+Chr(&H72)+Chr(&H4d)+Chr(101)+Chr(115)+Chr(&H73)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72))].targetRect={y:870,h:30}
this[(Chr(&H5f)+Chr(112)+Chr(114)+Chr(&H6f)+Chr(&H67)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(66)+Chr(97)+Chr(&H72)+Chr(66)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(&H67)+Chr(&H72)+Chr(&H6f)+Chr(117)+Chr(&H6e)+Chr(&H64)+Chr(&H4c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72))]=this._createLayer(this._LayerTypes.RECT,(Chr(&H70)+Chr(&H72)+Chr(111)+Chr(103)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H42)+Chr(&H61)+Chr(114)+Chr(&H42)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(103)+Chr(&H72)+Chr(&H6f)+Chr(117)+Chr(&H6e)+Chr(&H64)))
this[(Chr(&H5f)+Chr(&H70)+Chr(&H72)+Chr(111)+Chr(103)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(&H42)+Chr(97)+Chr(114)+Chr(&H42)+Chr(97)+Chr(99)+Chr(&H6b)+Chr(&H67)+Chr(&H72)+Chr(&H6f)+Chr(117)+Chr(&H6e)+Chr(100)+Chr(76)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72))].targetRect={x:609,y:906,w:699,h:18}
this[(Chr(95)+Chr(112)+Chr(114)+Chr(111)+Chr(&H67)+Chr(114)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(&H42)+Chr(&H61)+Chr(&H72)+Chr(73)+Chr(110)+Chr(&H64)+Chr(105)+Chr(&H63)+Chr(&H61)+Chr(&H74)+Chr(&H6f)+Chr(&H72)+Chr(76)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114))]=this._createLayer(this._LayerTypes.RECT,(Chr(&H70)+Chr(&H72)+Chr(111)+Chr(103)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(66)+Chr(97)+Chr(&H72)+Chr(73)+Chr(&H6e)+Chr(&H64)+Chr(&H69)+Chr(&H63)+Chr(&H61)+Chr(116)+Chr(&H6f)+Chr(114)))
this[(Chr(&H5f)+Chr(&H70)+Chr(114)+Chr(111)+Chr(103)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(66)+Chr(&H61)+Chr(114)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(105)+Chr(&H63)+Chr(&H61)+Chr(&H74)+Chr(111)+Chr(114)+Chr(76)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114))].targetRect={x:609,y:906,w:1,h:18}
this[(Chr(95)+Chr(&H61)+Chr(100)+Chr(66)+Chr(&H75)+Chr(&H66)+Chr(&H66)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H63)+Chr(&H72)+Chr(101)+Chr(101)+Chr(110)+Chr(&H4c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(&H73))]=[this._backgroundLayer,this._posterImageLayer,this._titleLayer,this._descriptionLayer,this._bufferingMessageLayer,this._progressBarBackgroundLayer,this._progressBarIndicatorLayer,this._progressBarMessageLayer]
this[(Chr(&H73)+Chr(99)+Chr(&H61)+Chr(&H6c)+Chr(101)+Chr(65)+Chr(100)+Chr(66)+Chr(117)+Chr(102)+Chr(102)+Chr(&H65)+Chr(114)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H65)+Chr(110)+Chr(76)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H73))]=function()
if not m._isUIResolutionFhd()m._scaleLayers(m._adBufferingScreenLayers)
end function
this[(Chr(&H68)+Chr(97)+Chr(&H6e)+Chr(100)+Chr(&H6c)+Chr(&H65)+Chr(&H41)+Chr(100)+Chr(66)+Chr(117)+Chr(&H66)+Chr(102)+Chr(&H65)+Chr(&H72)+Chr(105)+Chr(110)+Chr(&H67)+Chr(80)+Chr(&H72)+Chr(&H6f)+Chr(103)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73))]=function(_11OO0O1O11II)
bufferingProgress=_11OO0O1O11II.progress
if _11OO0O1O11II.canvaslayers.Count()>0 and bufferingProgress<>invalid and bufferingProgress>0
m._progressBarIndicatorLayer.targetRect.w=m._calculateValueFromPercentage(bufferingProgress,m._progressBarBackgroundLayer.targetRect.w)
end if
end function
this[(Chr(103)+Chr(&H65)+Chr(&H74)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(117)+Chr(102)+Chr(&H66)+Chr(101)+Chr(114)+Chr(105)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(&H65)+Chr(110))]=function()
return m._adBufferingScreenLayers 
end function
this[(Chr(99)+Chr(&H75)+Chr(115)+Chr(116)+Chr(&H6f)+Chr(&H6d)+Chr(&H69)+Chr(122)+Chr(101)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(&H75)+Chr(&H66)+Chr(102)+Chr(&H65)+Chr(&H72)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H63)+Chr(114)+Chr(101)+Chr(101)+Chr(110))]=function(_0O11I_00__11)
m._addMetadataCodependedLayers(_0O11I_00__11)
m._customizeLayers(_0O11I_00__11,m._adBufferingScreenLayers)
m._removeNotVisibleLayers(_0O11I_00__11)
end function
this[(Chr(&H75)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H41)+Chr(&H64)+Chr(&H42)+Chr(117)+Chr(102)+Chr(&H66)+Chr(&H65)+Chr(&H72)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H53)+Chr(&H63)+Chr(&H72)+Chr(101)+Chr(101)+Chr(&H6e)+Chr(87)+Chr(&H69)+Chr(116)+Chr(&H68)+Chr(&H4d)+Chr(101)+Chr(&H74)+Chr(&H61)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H61))]=function(_O1OOO_0O1OOI)
m._handleLayersMetadataUpdate(_O1OOO_0O1OOI)
end function
return this 
end function
