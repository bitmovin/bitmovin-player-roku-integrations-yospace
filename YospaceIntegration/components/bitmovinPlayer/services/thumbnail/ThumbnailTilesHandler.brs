function _I0I_II101OO1()
this={}
this[(Chr(&H5f)+Chr(115)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(&H65)+Chr(&H49)+Chr(&H6e)+Chr(&H64)+Chr(&H65)+Chr(&H78))]=1
this[(Chr(&H5f)+Chr(102)+Chr(&H69)+Chr(114)+Chr(115)+Chr(&H74)+Chr(&H52)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(&H53)+Chr(112)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(73)+Chr(&H6e)+Chr(&H64)+Chr(&H65)+Chr(&H78))]=0
this[(Chr(&H5f)+Chr(109)+Chr(&H61)+Chr(&H70)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H54)+Chr(&H69)+Chr(108)+Chr(101)+Chr(&H41)+Chr(&H6e)+Chr(&H64)+Chr(82)+Chr(111)+Chr(107)+Chr(117)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(116)+Chr(101)+Chr(84)+Chr(111)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(&H65))]=function(_0_I1_1_O__O1,_O1OOI0O10OOO)
bitmovinSprite={}
bitmovinSprite.url=_O1OOI0O10OOO[0]
bitmovinSprite.start=_O1OOI0O10OOO[1]
bitmovinSprite.duration=_0_I1_1_O__O1.duration
bitmovinSprite.numberOfColumns=_0_I1_1_O__O1.htiles
bitmovinSprite.numberOfRows=_0_I1_1_O__O1.vtiles
bitmovinSprite.singleThumbnailHeight=_0_I1_1_O__O1.height
bitmovinSprite.singleThumbnailWidth=_0_I1_1_O__O1.width
bitmovinSprite.singleThumbnailDuration=_0_I1_1_O__O1.duration/(_0_I1_1_O__O1.htiles*_0_I1_1_O__O1.vtiles)
bitmovinSprite.end=invalid
bitmovinSprite.numberOfThumbnails=invalid
bitmovinSprite.xPositionMap=invalid
bitmovinSprite.yPositionMap=invalid
return bitmovinSprite 
end function
this[(Chr(&H5f)+Chr(101)+Chr(&H78)+Chr(116)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(108)+Chr(70)+Chr(&H72)+Chr(&H6f)+Chr(&H6d)+Chr(83)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(116)+Chr(101))]=function(_IOIOO0_001IO,_0010IOOII1O1)
thumbnail={}
thumbnail.url=_IOIOO0_001IO.url
thumbnail.h=_IOIOO0_001IO.singleThumbnailHeight
thumbnail.w=_IOIOO0_001IO.singleThumbnailWidth
thumbnail.x=_IOIOO0_001IO.xPositionMap[StrI(_0010IOOII1O1)]
thumbnail.y=_IOIOO0_001IO.yPositionMap[StrI(_0010IOOII1O1)]
thumbnail.start=_IOIOO0_001IO.end-(_IOIOO0_001IO.singleThumbnailDuration*(_IOIOO0_001IO.numberOfThumbnails-_0010IOOII1O1))
thumbnail.end=thumbnail.start+_IOIOO0_001IO.singleThumbnailDuration
return thumbnail 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(65)+Chr(108)+Chr(&H6c)+Chr(84)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(105)+Chr(108)+Chr(&H73))]=function(_O1_110_O0_IO)
bitmovinThumbnails=[]
for each sprite in _O1_110_O0_IO
for i=0 to sprite.numberOfThumbnails-1
thumbnail=m._extractThumbnailFromSprite(sprite,i)
bitmovinThumbnails.Push(thumbnail)
end for
end for
return bitmovinThumbnails 
end function
this[(Chr(&H5f)+Chr(109)+Chr(97)+Chr(112)+Chr(&H53)+Chr(&H69)+Chr(110)+Chr(103)+Chr(108)+Chr(101)+Chr(83)+Chr(&H70)+Chr(114)+Chr(105)+Chr(&H74)+Chr(&H65)+Chr(&H49)+Chr(&H6d)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(100)+Chr(101)+Chr(120)+Chr(84)+Chr(111)+Chr(&H59)+Chr(&H50)+Chr(111)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110))]=function(_1_00I0O1O_OI)
yPositionMap={}
row=0
for i=0 to _1_00I0O1O_OI.numberOfThumbnails-1
if row=_1_00I0O1O_OI.numberOfRows row=0
yPositionMap[StrI(i)]=_1_00I0O1O_OI.singleThumbnailHeight*row
if i/_1_00I0O1O_OI.numberOfRows-1=1 row=row+1
end for
return yPositionMap 
end function
this[(Chr(&H5f)+Chr(&H6d)+Chr(97)+Chr(&H70)+Chr(&H53)+Chr(105)+Chr(110)+Chr(103)+Chr(&H6c)+Chr(101)+Chr(83)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(116)+Chr(&H65)+Chr(73)+Chr(&H6d)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(73)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(120)+Chr(&H54)+Chr(111)+Chr(88)+Chr(80)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e))]=function(___I_O0_1OI1_)
xPositionMap={}
column=0
for i=0 to ___I_O0_1OI1_.numberOfThumbnails-1
if column=___I_O0_1OI1_.numberOfColumns column=0
xPositionMap[StrI(i)]=___I_O0_1OI1_.singleThumbnailWidth*column
column=column+1
end for
return xPositionMap 
end function
this[(Chr(&H5f)+Chr(117)+Chr(&H70)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(78)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(101)+Chr(114)+Chr(79)+Chr(&H66)+Chr(84)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(115)+Chr(&H41)+Chr(110)+Chr(&H64)+Chr(80)+Chr(111)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(77)+Chr(&H61)+Chr(&H70)+Chr(&H73))]=function(_1_010IO1IOI0)
_1_010IO1IOI0.numberOfThumbnails=Cint((_1_010IO1IOI0.end-_1_010IO1IOI0.start)/_1_010IO1IOI0.singleThumbnailDuration)
_1_010IO1IOI0.xPositionMap=m._mapSingleSpriteImageIndexToXPosition(_1_010IO1IOI0)
_1_010IO1IOI0.yPositionMap=m._mapSingleSpriteImageIndexToYPosition(_1_010IO1IOI0)
end function
this[(Chr(95)+Chr(&H75)+Chr(&H70)+Chr(100)+Chr(97)+Chr(116)+Chr(101)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(116)+Chr(&H65)+Chr(69)+Chr(&H6e)+Chr(&H64)+Chr(&H54)+Chr(&H69)+Chr(&H6d)+Chr(101))]=function(_1O11011O_11O,_1O0O_1OO11O0,_10111_IIO_01)
if not _10111_IIO_01=invalid
_1O11011O_11O.end=_10111_IIO_01[m._startTimeIndex]
else if not _1O0O_1OO11O0=invalid
_1O11011O_11O.end=_1O0O_1OO11O0.tiles[m._firstRokuSpriteIndex][m._startTimeIndex]
else if _10111_IIO_01=invalid and _1O0O_1OO11O0=invalid
_1O11011O_11O.end=_1O11011O_11O.start+_1O11011O_11O.duration
end if
end function
this[(Chr(95)+Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H53)+Chr(&H70)+Chr(&H72)+Chr(&H69)+Chr(116)+Chr(101))]=function(_IOOO_O_00OIO,_00I0_1OI_0_O,_O_0_10__O1IO,_0I01OIOI0I1_)
bitmovinSprite=m._mapThumbnailTileAndRokuSpriteToBitmovinSprite(_IOOO_O_00OIO,_O_0_10__O1IO)
m._updateSpriteEndTime(bitmovinSprite,_00I0_1OI_0_O,_0I01OIOI0I1_)
m._updateNumberOfThumbnailsAndPositionMaps(bitmovinSprite)
return bitmovinSprite 
end function
this[(Chr(&H5f)+Chr(101)+Chr(&H78)+Chr(116)+Chr(114)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(83)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(101)+Chr(115)+Chr(&H46)+Chr(&H72)+Chr(&H6f)+Chr(&H6d)+Chr(82)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(83)+Chr(&H70)+Chr(114)+Chr(105)+Chr(&H74)+Chr(&H65)+Chr(115))]=function(_0OO0O1_OII11,__11_OO1IOO01)
bitmovinSprites=[]
rokuSprites=_0OO0O1_OII11.tiles
for i=0 to rokuSprites.Count()-1
bitmovinSprites.push(m._createBitmovinSprite(_0OO0O1_OII11,__11_OO1IOO01,_0OO0O1_OII11.tiles[i],_0OO0O1_OII11.tiles[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(&H5f)+Chr(&H65)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(83)+Chr(112)+Chr(&H72)+Chr(105)+Chr(116)+Chr(&H65)+Chr(&H73))]=function(__I011I1II0O0)
bitmovinSprites=[]
for i=0 to __I011I1II0O0.Count()-1
bitmovinSprites.Append(m._extractBitmovinSpritesFromRokuSprites(__I011I1II0O0[i],__I011I1II0O0[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(&H74)+Chr(114)+Chr(&H61)+Chr(99)+Chr(116)+Chr(82)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(&H54)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(115))]=function(_O00O_O_I__IO)
for each quality in _O00O_O_I__IO
return _O00O_O_I__IO[quality] 
end for
end function
this[(Chr(105)+Chr(115)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H54)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(79)+Chr(&H66)+Chr(83)+Chr(&H75)+Chr(112)+Chr(112)+Chr(111)+Chr(&H72)+Chr(&H74)+Chr(&H65)+Chr(&H64)+Chr(84)+Chr(121)+Chr(112)+Chr(&H65))]=function(_OI0___IOOO11)
for each quality in _OI0___IOOO11
return type(_OI0___IOOO11[quality])=(Chr(&H72)+Chr(111)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(97)+Chr(&H79)) 
end for
end function
this[(Chr(&H65)+Chr(120)+Chr(116)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(84)+Chr(104)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H73))]=function(_1000_111_O0_)
if _1000_111_O0_=invalid
thumbnails=[]
else 
bitmovinSprites=m._extractBitmovinSprites(m._extractRokuTiles(_1000_111_O0_))
thumbnails=m._extractAllThumbnails(bitmovinSprites)
end if
return thumbnails 
end function
return this 
end function
