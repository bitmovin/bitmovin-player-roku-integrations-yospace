function _OO_IOIO_0___()
this={}
this[(Chr(95)+Chr(115)+Chr(116)+Chr(97)+Chr(114)+Chr(&H74)+Chr(84)+Chr(&H69)+Chr(109)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(120))]=1
this[(Chr(&H5f)+Chr(&H66)+Chr(&H69)+Chr(114)+Chr(115)+Chr(&H74)+Chr(&H52)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(73)+Chr(110)+Chr(100)+Chr(101)+Chr(&H78))]=0
this[(Chr(&H5f)+Chr(98)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(&H6c)+Chr(79)+Chr(98)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(97)+Chr(&H70)+Chr(112)+Chr(101)+Chr(&H72))]=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H67)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(&H6a)+Chr(101)+Chr(&H63)+Chr(116)+Chr(77)+Chr(97)+Chr(112)+Chr(&H70)+Chr(101)+Chr(&H72)))
this[(Chr(&H5f)+Chr(101)+Chr(&H78)+Chr(116)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(116)+Chr(84)+Chr(&H68)+Chr(&H75)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(105)+Chr(108)+Chr(70)+Chr(&H72)+Chr(&H6f)+Chr(109)+Chr(83)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(&H65))]=function(_I10____O_0OI,__11_0110OOOI)
thumbnail={}
thumbnail.url=_I10____O_0OI.url
thumbnail.h=_I10____O_0OI.singleThumbnailHeight
thumbnail.w=_I10____O_0OI.singleThumbnailWidth
thumbnail.x=_I10____O_0OI.xPositionMap[StrI(__11_0110OOOI)]
thumbnail.y=_I10____O_0OI.yPositionMap[StrI(__11_0110OOOI)]
thumbnail.start=_I10____O_0OI.end-(_I10____O_0OI.singleThumbnailDuration*(_I10____O_0OI.numberOfThumbnails-__11_0110OOOI))
thumbnail.end=thumbnail.start+_I10____O_0OI.singleThumbnailDuration
return thumbnail 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(116)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(116)+Chr(65)+Chr(108)+Chr(&H6c)+Chr(84)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(115))]=function(_11_1_110_IIO)
bitmovinThumbnails=[]
for each sprite in _11_1_110_IIO
for i=0 to sprite.numberOfThumbnails-1
thumbnail=m._extractThumbnailFromSprite(sprite,i)
bitmovinThumbnails.Push(thumbnail)
end for
end for
return bitmovinThumbnails 
end function
this[(Chr(95)+Chr(109)+Chr(&H61)+Chr(&H70)+Chr(83)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(108)+Chr(&H65)+Chr(&H53)+Chr(&H70)+Chr(&H72)+Chr(105)+Chr(116)+Chr(&H65)+Chr(&H49)+Chr(&H6d)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(&H49)+Chr(&H6e)+Chr(100)+Chr(&H65)+Chr(&H78)+Chr(84)+Chr(&H6f)+Chr(89)+Chr(80)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e))]=function(_01_IIIO1_1OI)
yPositionMap={}
row=0
for i=0 to _01_IIIO1_1OI.numberOfThumbnails-1
if row=_01_IIIO1_1OI.numberOfRows row=0
yPositionMap[StrI(i)]=_01_IIIO1_1OI.singleThumbnailHeight*row
if i/_01_IIIO1_1OI.numberOfRows-1=1 row=row+1
end for
return yPositionMap 
end function
this[(Chr(&H5f)+Chr(109)+Chr(97)+Chr(112)+Chr(&H53)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H6c)+Chr(101)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(105)+Chr(116)+Chr(101)+Chr(&H49)+Chr(109)+Chr(97)+Chr(&H67)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(100)+Chr(&H65)+Chr(&H78)+Chr(&H54)+Chr(111)+Chr(88)+Chr(80)+Chr(111)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(110))]=function(_O_O011I_O0II)
xPositionMap={}
column=0
for i=0 to _O_O011I_O0II.numberOfThumbnails-1
if column=_O_O011I_O0II.numberOfColumns column=0
xPositionMap[StrI(i)]=_O_O011I_O0II.singleThumbnailWidth*column
column=column+1
end for
return xPositionMap 
end function
this[(Chr(95)+Chr(117)+Chr(&H70)+Chr(100)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H4e)+Chr(117)+Chr(109)+Chr(98)+Chr(&H65)+Chr(&H72)+Chr(&H4f)+Chr(102)+Chr(84)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(&H61)+Chr(105)+Chr(108)+Chr(115)+Chr(65)+Chr(&H6e)+Chr(100)+Chr(80)+Chr(111)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(77)+Chr(97)+Chr(112)+Chr(&H73))]=function(__1011OO1I0_I)
__1011OO1I0_I.numberOfThumbnails=Cint((__1011OO1I0_I.end-__1011OO1I0_I.start)/__1011OO1I0_I.singleThumbnailDuration)
__1011OO1I0_I.xPositionMap=m._mapSingleSpriteImageIndexToXPosition(__1011OO1I0_I)
__1011OO1I0_I.yPositionMap=m._mapSingleSpriteImageIndexToYPosition(__1011OO1I0_I)
end function
this[(Chr(95)+Chr(&H75)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H53)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(101)+Chr(69)+Chr(&H6e)+Chr(&H64)+Chr(&H54)+Chr(&H69)+Chr(&H6d)+Chr(&H65))]=function(__O000I0111I_,_O10I_III0I0O,_I0O0I_10O10O)
if not _I0O0I_10O10O=invalid
__O000I0111I_.end=_I0O0I_10O10O[m._startTimeIndex]
else if not _O10I_III0I0O=invalid
__O000I0111I_.end=_O10I_III0I0O.tiles[m._firstRokuSpriteIndex][m._startTimeIndex]
else if _I0O0I_10O10O=invalid and _O10I_III0I0O=invalid
__O000I0111I_.end=__O000I0111I_.start+__O000I0111I_.duration
end if
end function
this[(Chr(95)+Chr(99)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(83)+Chr(112)+Chr(&H72)+Chr(105)+Chr(116)+Chr(101))]=function(__1OOII_O_110,_O0OI_01I__0O,__11I10I1_0_I,__OIO_0OO_00I)
bitmovinSprite=m._bitmovinModelObjectMapper.callFunc((Chr(&H6d)+Chr(&H61)+Chr(&H70)+Chr(&H54)+Chr(104)+Chr(117)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H54)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(65)+Chr(&H6e)+Chr(100)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(&H53)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(101)+Chr(&H54)+Chr(111)+Chr(66)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(101)),__1OOII_O_110,__11I10I1_0_I)
m._updateSpriteEndTime(bitmovinSprite,_O0OI_01I__0O,__OIO_0OO_00I)
m._updateNumberOfThumbnailsAndPositionMaps(bitmovinSprite)
return bitmovinSprite 
end function
this[(Chr(&H5f)+Chr(&H65)+Chr(120)+Chr(116)+Chr(114)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(83)+Chr(&H70)+Chr(114)+Chr(105)+Chr(&H74)+Chr(&H65)+Chr(&H73)+Chr(&H46)+Chr(114)+Chr(111)+Chr(&H6d)+Chr(&H52)+Chr(111)+Chr(107)+Chr(117)+Chr(&H53)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(101)+Chr(115))]=function(_I1IOOO_IIIIO,__0_10IO___I_)
bitmovinSprites=[]
rokuSprites=_I1IOOO_IIIIO.tiles
for i=0 to rokuSprites.Count()-1
bitmovinSprites.push(m._createBitmovinSprite(_I1IOOO_IIIIO,__0_10IO___I_,_I1IOOO_IIIIO.tiles[i],_I1IOOO_IIIIO.tiles[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(115))]=function(_0_II11_1O___)
bitmovinSprites=[]
for i=0 to _0_II11_1O___.Count()-1
bitmovinSprites.Append(m._extractBitmovinSpritesFromRokuSprites(_0_II11_1O___[i],_0_II11_1O___[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(95)+Chr(&H65)+Chr(120)+Chr(116)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(82)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(84)+Chr(105)+Chr(&H6c)+Chr(101)+Chr(&H73))]=function(_0I1_I_I0__II)
for each quality in _0I1_I_I0__II
return _0I1_I_I0__II[quality] 
end for
end function
this[(Chr(&H69)+Chr(115)+Chr(84)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(108)+Chr(84)+Chr(&H69)+Chr(&H6c)+Chr(101)+Chr(79)+Chr(102)+Chr(83)+Chr(117)+Chr(112)+Chr(&H70)+Chr(&H6f)+Chr(&H72)+Chr(116)+Chr(&H65)+Chr(100)+Chr(&H54)+Chr(121)+Chr(&H70)+Chr(101))]=function(_O1_1I1I__0_0)
for each quality in _O1_1I1I__0_0
return type(_O1_1I1I__0_0[quality])=(Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(&H72)+Chr(114)+Chr(&H61)+Chr(&H79)) 
end for
end function
this[(Chr(101)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(116)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(&H61)+Chr(105)+Chr(108)+Chr(115))]=function(__01110I0IO0_)
if __01110I0IO0_=invalid
thumbnails=[]
else 
bitmovinSprites=m._extractBitmovinSprites(m._extractRokuTiles(__01110I0IO0_))
thumbnails=m._extractAllThumbnails(bitmovinSprites)
end if
return thumbnails 
end function
return this 
end function
