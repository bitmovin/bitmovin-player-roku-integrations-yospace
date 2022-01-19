function __0_1O_1_OO1I()
this={}
this[(Chr(95)+Chr(115)+Chr(&H74)+Chr(97)+Chr(&H72)+Chr(&H74)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(120))]=1
this[(Chr(&H5f)+Chr(102)+Chr(&H69)+Chr(114)+Chr(&H73)+Chr(&H74)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(83)+Chr(112)+Chr(&H72)+Chr(105)+Chr(116)+Chr(101)+Chr(73)+Chr(&H6e)+Chr(100)+Chr(&H65)+Chr(120))]=0
this[(Chr(95)+Chr(109)+Chr(97)+Chr(112)+Chr(84)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(84)+Chr(105)+Chr(108)+Chr(101)+Chr(65)+Chr(110)+Chr(&H64)+Chr(82)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(116)+Chr(&H65)+Chr(84)+Chr(111)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(83)+Chr(112)+Chr(114)+Chr(105)+Chr(&H74)+Chr(&H65))]=function(__1O10O__0O1O,__1101__11___)
bitmovinSprite={}
bitmovinSprite.url=__1101__11___[0]
bitmovinSprite.start=__1101__11___[1]
bitmovinSprite.duration=__1O10O__0O1O.duration
bitmovinSprite.numberOfColumns=__1O10O__0O1O.htiles
bitmovinSprite.numberOfRows=__1O10O__0O1O.vtiles
bitmovinSprite.singleThumbnailHeight=__1O10O__0O1O.height
bitmovinSprite.singleThumbnailWidth=__1O10O__0O1O.width
bitmovinSprite.singleThumbnailDuration=__1O10O__0O1O.duration/(__1O10O__0O1O.htiles*__1O10O__0O1O.vtiles)
bitmovinSprite.end=invalid
bitmovinSprite.numberOfThumbnails=invalid
bitmovinSprite.xPositionMap=invalid
bitmovinSprite.yPositionMap=invalid
return bitmovinSprite 
end function
this[(Chr(&H5f)+Chr(101)+Chr(120)+Chr(116)+Chr(114)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(109)+Chr(98)+Chr(110)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H46)+Chr(&H72)+Chr(&H6f)+Chr(109)+Chr(&H53)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(&H65))]=function(_001_O1O1II0O,_00I1IIO1_I10)
thumbnail={}
thumbnail.url=_001_O1O1II0O.url
thumbnail.h=_001_O1O1II0O.singleThumbnailHeight
thumbnail.w=_001_O1O1II0O.singleThumbnailWidth
thumbnail.x=_001_O1O1II0O.xPositionMap[StrI(_00I1IIO1_I10)]
thumbnail.y=_001_O1O1II0O.yPositionMap[StrI(_00I1IIO1_I10)]
thumbnail.start=_001_O1O1II0O.end-(_001_O1O1II0O.singleThumbnailDuration*(_001_O1O1II0O.numberOfThumbnails-_00I1IIO1_I10))
thumbnail.end=thumbnail.start+_001_O1O1II0O.singleThumbnailDuration
return thumbnail 
end function
this[(Chr(&H5f)+Chr(101)+Chr(120)+Chr(&H74)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H41)+Chr(&H6c)+Chr(108)+Chr(&H54)+Chr(104)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H73))]=function(_0I1100I____1)
bitmovinThumbnails=[]
for each sprite in _0I1100I____1
for i=0 to sprite.numberOfThumbnails-1
thumbnail=m._extractThumbnailFromSprite(sprite,i)
bitmovinThumbnails.Push(thumbnail)
end for
end for
return bitmovinThumbnails 
end function
this[(Chr(95)+Chr(109)+Chr(&H61)+Chr(&H70)+Chr(83)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(108)+Chr(&H65)+Chr(83)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(73)+Chr(109)+Chr(&H61)+Chr(&H67)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(101)+Chr(120)+Chr(84)+Chr(&H6f)+Chr(&H59)+Chr(80)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e))]=function(_001_1_O0I1_I)
yPositionMap={}
row=0
for i=0 to _001_1_O0I1_I.numberOfThumbnails-1
if row=_001_1_O0I1_I.numberOfRows row=0
yPositionMap[StrI(i)]=_001_1_O0I1_I.singleThumbnailHeight*row
if i/_001_1_O0I1_I.numberOfRows-1=1 row=row+1
end for
return yPositionMap 
end function
this[(Chr(95)+Chr(109)+Chr(&H61)+Chr(112)+Chr(&H53)+Chr(105)+Chr(110)+Chr(&H67)+Chr(108)+Chr(&H65)+Chr(83)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(101)+Chr(&H49)+Chr(&H6d)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(100)+Chr(101)+Chr(120)+Chr(&H54)+Chr(&H6f)+Chr(88)+Chr(&H50)+Chr(111)+Chr(115)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110))]=function(_I01___0O1000)
xPositionMap={}
column=0
for i=0 to _I01___0O1000.numberOfThumbnails-1
if column=_I01___0O1000.numberOfColumns column=0
xPositionMap[StrI(i)]=_I01___0O1000.singleThumbnailWidth*column
column=column+1
end for
return xPositionMap 
end function
this[(Chr(&H5f)+Chr(117)+Chr(112)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(101)+Chr(78)+Chr(117)+Chr(109)+Chr(98)+Chr(&H65)+Chr(114)+Chr(&H4f)+Chr(&H66)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(115)+Chr(65)+Chr(110)+Chr(&H64)+Chr(&H50)+Chr(&H6f)+Chr(115)+Chr(105)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(77)+Chr(&H61)+Chr(&H70)+Chr(&H73))]=function(_II0O1001_110)
_II0O1001_110.numberOfThumbnails=Cint((_II0O1001_110.end-_II0O1001_110.start)/_II0O1001_110.singleThumbnailDuration)
_II0O1001_110.xPositionMap=m._mapSingleSpriteImageIndexToXPosition(_II0O1001_110)
_II0O1001_110.yPositionMap=m._mapSingleSpriteImageIndexToYPosition(_II0O1001_110)
end function
this[(Chr(&H5f)+Chr(&H75)+Chr(112)+Chr(100)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(101)+Chr(69)+Chr(&H6e)+Chr(100)+Chr(84)+Chr(&H69)+Chr(109)+Chr(&H65))]=function(_00I0OOOO11O_,_1O_IO0_OO1IO,_11I1II000_00)
if not _11I1II000_00=invalid
_00I0OOOO11O_.end=_11I1II000_00[m._startTimeIndex]
else if not _1O_IO0_OO1IO=invalid
_00I0OOOO11O_.end=_1O_IO0_OO1IO.tiles[m._firstRokuSpriteIndex][m._startTimeIndex]
else if _11I1II000_00=invalid and _1O_IO0_OO1IO=invalid
_00I0OOOO11O_.end=_00I0OOOO11O_.start+_00I0OOOO11O_.duration
end if
end function
this[(Chr(&H5f)+Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(83)+Chr(112)+Chr(&H72)+Chr(105)+Chr(&H74)+Chr(&H65))]=function(___O11I0111I_,_1010001O0I1_,_O1__O__OO100,_1010IO1__1O1)
bitmovinSprite=m._mapThumbnailTileAndRokuSpriteToBitmovinSprite(___O11I0111I_,_O1__O__OO100)
m._updateSpriteEndTime(bitmovinSprite,_1010001O0I1_,_1010IO1__1O1)
m._updateNumberOfThumbnailsAndPositionMaps(bitmovinSprite)
return bitmovinSprite 
end function
this[(Chr(95)+Chr(&H65)+Chr(&H78)+Chr(116)+Chr(114)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(83)+Chr(112)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(115)+Chr(&H46)+Chr(114)+Chr(&H6f)+Chr(&H6d)+Chr(82)+Chr(&H6f)+Chr(107)+Chr(&H75)+Chr(83)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(101)+Chr(&H73))]=function(_1_I1_0__I0__,__01I1OO1I_0I)
bitmovinSprites=[]
rokuSprites=_1_I1_0__I0__.tiles
for i=0 to rokuSprites.Count()-1
bitmovinSprites.push(m._createBitmovinSprite(_1_I1_0__I0__,__01I1OO1I_0I,_1_I1_0__I0__.tiles[i],_1_I1_0__I0__.tiles[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(&H5f)+Chr(101)+Chr(&H78)+Chr(116)+Chr(114)+Chr(&H61)+Chr(99)+Chr(116)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(115))]=function(_1_1111O00_O_)
bitmovinSprites=[]
for i=0 to _1_1111O00_O_.Count()-1
bitmovinSprites.Append(m._extractBitmovinSpritesFromRokuSprites(_1_1111O00_O_[i],_1_1111O00_O_[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(116)+Chr(114)+Chr(97)+Chr(99)+Chr(&H74)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(84)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(115))]=function(_1O0IO11_0I__)
for each quality in _1O0IO11_0I__
return _1O0IO11_0I__[quality] 
end for
end function
this[(Chr(&H69)+Chr(115)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(108)+Chr(&H54)+Chr(&H69)+Chr(&H6c)+Chr(101)+Chr(79)+Chr(&H66)+Chr(83)+Chr(117)+Chr(112)+Chr(112)+Chr(&H6f)+Chr(114)+Chr(&H74)+Chr(&H65)+Chr(&H64)+Chr(&H54)+Chr(&H79)+Chr(&H70)+Chr(101))]=function(_0O1O0IIIO1_I)
for each quality in _0O1O0IIIO1_I
return type(_0O1O0IIIO1_I[quality])=(Chr(114)+Chr(111)+Chr(65)+Chr(114)+Chr(&H72)+Chr(&H61)+Chr(&H79)) 
end for
end function
this[(Chr(101)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(97)+Chr(99)+Chr(116)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H73))]=function(__0O10_IO1_0_)
if __0O10_IO1_0_=invalid
thumbnails=[]
else 
bitmovinSprites=m._extractBitmovinSprites(m._extractRokuTiles(__0O10_IO1_0_))
thumbnails=m._extractAllThumbnails(bitmovinSprites)
end if
return thumbnails 
end function
return this 
end function
