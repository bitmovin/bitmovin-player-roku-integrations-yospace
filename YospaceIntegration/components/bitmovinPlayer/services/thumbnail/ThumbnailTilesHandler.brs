function _01I1I0I_1O1_()
this={}
this[(Chr(&H5f)+Chr(115)+Chr(116)+Chr(&H61)+Chr(114)+Chr(&H74)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(&H64)+Chr(101)+Chr(&H78))]=1
this[(Chr(&H5f)+Chr(&H66)+Chr(&H69)+Chr(&H72)+Chr(&H73)+Chr(&H74)+Chr(82)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(116)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(100)+Chr(101)+Chr(120))]=0
this[(Chr(95)+Chr(98)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(&H65)+Chr(108)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(&H65)+Chr(&H63)+Chr(&H74)+Chr(&H4d)+Chr(97)+Chr(112)+Chr(112)+Chr(101)+Chr(114))]=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(103)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(110)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(&H6c)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(&H74)+Chr(77)+Chr(97)+Chr(112)+Chr(112)+Chr(&H65)+Chr(&H72)))
this[(Chr(95)+Chr(&H65)+Chr(&H78)+Chr(&H74)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(109)+Chr(98)+Chr(110)+Chr(97)+Chr(105)+Chr(108)+Chr(70)+Chr(114)+Chr(&H6f)+Chr(109)+Chr(83)+Chr(&H70)+Chr(&H72)+Chr(&H69)+Chr(116)+Chr(101))]=function(_101IOO101IO_,_I10I10__OO__)
thumbnail={}
thumbnail.url=_101IOO101IO_.url
thumbnail.h=_101IOO101IO_.singleThumbnailHeight
thumbnail.w=_101IOO101IO_.singleThumbnailWidth
thumbnail.x=_101IOO101IO_.xPositionMap[StrI(_I10I10__OO__)]
thumbnail.y=_101IOO101IO_.yPositionMap[StrI(_I10I10__OO__)]
thumbnail.start=_101IOO101IO_.end-(_101IOO101IO_.singleThumbnailDuration*(_101IOO101IO_.numberOfThumbnails-_I10I10__OO__))
thumbnail.end=thumbnail.start+_101IOO101IO_.singleThumbnailDuration
return thumbnail 
end function
this[(Chr(&H5f)+Chr(&H65)+Chr(&H78)+Chr(116)+Chr(&H72)+Chr(97)+Chr(99)+Chr(&H74)+Chr(&H41)+Chr(108)+Chr(108)+Chr(84)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H73))]=function(_0_O01O1I0011)
bitmovinThumbnails=[]
for each sprite in _0_O01O1I0011
for i=0 to sprite.numberOfThumbnails-1
thumbnail=m._extractThumbnailFromSprite(sprite,i)
bitmovinThumbnails.Push(thumbnail)
end for
end for
return bitmovinThumbnails 
end function
this[(Chr(95)+Chr(109)+Chr(97)+Chr(&H70)+Chr(&H53)+Chr(105)+Chr(110)+Chr(103)+Chr(&H6c)+Chr(101)+Chr(83)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(101)+Chr(73)+Chr(&H6d)+Chr(&H61)+Chr(103)+Chr(101)+Chr(73)+Chr(&H6e)+Chr(&H64)+Chr(101)+Chr(&H78)+Chr(&H54)+Chr(111)+Chr(&H59)+Chr(&H50)+Chr(111)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e))]=function(_IIO10O__0OII)
yPositionMap={}
row=0
for i=0 to _IIO10O__0OII.numberOfThumbnails-1
if row=_IIO10O__0OII.numberOfRows row=0
yPositionMap[StrI(i)]=_IIO10O__0OII.singleThumbnailHeight*row
if i/_IIO10O__0OII.numberOfRows-1=1 row=row+1
end for
return yPositionMap 
end function
this[(Chr(95)+Chr(109)+Chr(97)+Chr(112)+Chr(&H53)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(108)+Chr(101)+Chr(83)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(101)+Chr(73)+Chr(&H6d)+Chr(97)+Chr(&H67)+Chr(101)+Chr(&H49)+Chr(110)+Chr(100)+Chr(101)+Chr(120)+Chr(84)+Chr(&H6f)+Chr(88)+Chr(&H50)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e))]=function(__01O1I0IOI0I)
xPositionMap={}
column=0
for i=0 to __01O1I0IOI0I.numberOfThumbnails-1
if column=__01O1I0IOI0I.numberOfColumns column=0
xPositionMap[StrI(i)]=__01O1I0IOI0I.singleThumbnailWidth*column
column=column+1
end for
return xPositionMap 
end function
this[(Chr(&H5f)+Chr(117)+Chr(&H70)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H4e)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H65)+Chr(&H72)+Chr(&H4f)+Chr(102)+Chr(&H54)+Chr(104)+Chr(117)+Chr(109)+Chr(98)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H73)+Chr(65)+Chr(110)+Chr(&H64)+Chr(80)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(77)+Chr(&H61)+Chr(112)+Chr(115))]=function(__0_O0O01OO10)
__0_O0O01OO10.numberOfThumbnails=Cint((__0_O0O01OO10.end-__0_O0O01OO10.start)/__0_O0O01OO10.singleThumbnailDuration)
__0_O0O01OO10.xPositionMap=m._mapSingleSpriteImageIndexToXPosition(__0_O0O01OO10)
__0_O0O01OO10.yPositionMap=m._mapSingleSpriteImageIndexToYPosition(__0_O0O01OO10)
end function
this[(Chr(95)+Chr(&H75)+Chr(112)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(&H65)+Chr(69)+Chr(110)+Chr(100)+Chr(&H54)+Chr(105)+Chr(109)+Chr(101))]=function(_I_0__O0I1O_I,_1O_10OOO0_I1,_I00_0___O_10)
if not _I00_0___O_10=invalid
_I_0__O0I1O_I.end=_I00_0___O_10[m._startTimeIndex]
else if not _1O_10OOO0_I1=invalid
_I_0__O0I1O_I.end=_1O_10OOO0_I1.tiles[m._firstRokuSpriteIndex][m._startTimeIndex]
else if _I00_0___O_10=invalid and _1O_10OOO0_I1=invalid
_I_0__O0I1O_I.end=_I_0__O0I1O_I.start+_I_0__O0I1O_I.duration
end if
end function
this[(Chr(95)+Chr(&H63)+Chr(114)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(83)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(116)+Chr(&H65))]=function(_I0OO__0_I__0,_O_01_10__I01,_IOI1I00_I1IO,_1OO__0111011)
bitmovinSprite=m._bitmovinModelObjectMapper.callFunc((Chr(109)+Chr(&H61)+Chr(&H70)+Chr(84)+Chr(104)+Chr(117)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(84)+Chr(105)+Chr(&H6c)+Chr(&H65)+Chr(&H41)+Chr(&H6e)+Chr(&H64)+Chr(&H52)+Chr(111)+Chr(107)+Chr(&H75)+Chr(83)+Chr(112)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(&H65)+Chr(&H54)+Chr(&H6f)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(101)),_I0OO__0_I__0,_IOI1I00_I1IO)
m._updateSpriteEndTime(bitmovinSprite,_O_01_10__I01,_1OO__0111011)
m._updateNumberOfThumbnailsAndPositionMaps(bitmovinSprite)
return bitmovinSprite 
end function
this[(Chr(95)+Chr(&H65)+Chr(120)+Chr(&H74)+Chr(&H72)+Chr(97)+Chr(99)+Chr(&H74)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(&H73)+Chr(&H46)+Chr(114)+Chr(&H6f)+Chr(&H6d)+Chr(&H52)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(&H53)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(101)+Chr(&H73))]=function(_O1_I1O1O_II_,_0IIOI0I0_I__)
bitmovinSprites=[]
rokuSprites=_O1_I1O1O_II_.tiles
for i=0 to rokuSprites.Count()-1
bitmovinSprites.push(m._createBitmovinSprite(_O1_I1O1O_II_,_0IIOI0I0_I__,_O1_I1O1O_II_.tiles[i],_O1_I1O1O_II_.tiles[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(116)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(83)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(115))]=function(__00IIOOI0010)
bitmovinSprites=[]
for i=0 to __00IIOOI0010.Count()-1
bitmovinSprites.Append(m._extractBitmovinSpritesFromRokuSprites(__00IIOOI0010[i],__00IIOOI0010[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(&H5f)+Chr(&H65)+Chr(120)+Chr(&H74)+Chr(114)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(82)+Chr(111)+Chr(107)+Chr(&H75)+Chr(84)+Chr(&H69)+Chr(&H6c)+Chr(101)+Chr(&H73))]=function(__011IO___II0)
for each quality in __011IO___II0
return __011IO___II0[quality] 
end for
end function
this[(Chr(&H69)+Chr(115)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(108)+Chr(&H54)+Chr(&H69)+Chr(&H6c)+Chr(101)+Chr(79)+Chr(102)+Chr(&H53)+Chr(&H75)+Chr(&H70)+Chr(112)+Chr(111)+Chr(114)+Chr(&H74)+Chr(101)+Chr(&H64)+Chr(84)+Chr(121)+Chr(112)+Chr(101))]=function(_OIOII_111O01)
for each quality in _OIOII_111O01
return type(_OIOII_111O01[quality])=(Chr(114)+Chr(&H6f)+Chr(65)+Chr(114)+Chr(114)+Chr(97)+Chr(121)) 
end for
end function
this[(Chr(101)+Chr(120)+Chr(116)+Chr(&H72)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H54)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H73))]=function(_IIII_I___111)
if _IIII_I___111=invalid
thumbnails=[]
else 
bitmovinSprites=m._extractBitmovinSprites(m._extractRokuTiles(_IIII_I___111))
thumbnails=m._extractAllThumbnails(bitmovinSprites)
end if
return thumbnails 
end function
return this 
end function
