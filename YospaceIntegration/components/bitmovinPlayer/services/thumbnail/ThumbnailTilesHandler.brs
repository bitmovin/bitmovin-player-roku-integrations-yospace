function __110I_I100II()
this={}
this[(Chr(&H5f)+Chr(115)+Chr(116)+Chr(97)+Chr(114)+Chr(116)+Chr(84)+Chr(105)+Chr(109)+Chr(101)+Chr(73)+Chr(110)+Chr(100)+Chr(&H65)+Chr(&H78))]=1
this[(Chr(&H5f)+Chr(102)+Chr(105)+Chr(&H72)+Chr(&H73)+Chr(&H74)+Chr(82)+Chr(111)+Chr(107)+Chr(117)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(105)+Chr(116)+Chr(101)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(101)+Chr(120))]=0
this[(Chr(&H5f)+Chr(&H62)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(108)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(101)+Chr(&H63)+Chr(&H74)+Chr(&H4d)+Chr(&H61)+Chr(112)+Chr(112)+Chr(101)+Chr(&H72))]=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(103)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H4d)+Chr(&H6f)+Chr(100)+Chr(101)+Chr(&H6c)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(112)+Chr(&H70)+Chr(&H65)+Chr(&H72)))
this[(Chr(95)+Chr(101)+Chr(120)+Chr(116)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H46)+Chr(114)+Chr(111)+Chr(109)+Chr(83)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(101))]=function(__O10I1_IO_O1,_I1111III10I_)
thumbnail={}
thumbnail.url=__O10I1_IO_O1.url
thumbnail.h=__O10I1_IO_O1.singleThumbnailHeight
thumbnail.w=__O10I1_IO_O1.singleThumbnailWidth
thumbnail.x=__O10I1_IO_O1.xPositionMap[StrI(_I1111III10I_)]
thumbnail.y=__O10I1_IO_O1.yPositionMap[StrI(_I1111III10I_)]
thumbnail.start=__O10I1_IO_O1.end-(__O10I1_IO_O1.singleThumbnailDuration*(__O10I1_IO_O1.numberOfThumbnails-_I1111III10I_))
thumbnail.end=thumbnail.start+__O10I1_IO_O1.singleThumbnailDuration
return thumbnail 
end function
this[(Chr(95)+Chr(101)+Chr(120)+Chr(&H74)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H41)+Chr(108)+Chr(108)+Chr(84)+Chr(104)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H73))]=function(_000_1110O10_)
bitmovinThumbnails=[]
for each sprite in _000_1110O10_
for i=0 to sprite.numberOfThumbnails-1
thumbnail=m._extractThumbnailFromSprite(sprite,i)
bitmovinThumbnails.Push(thumbnail)
end for
end for
return bitmovinThumbnails 
end function
this[(Chr(95)+Chr(&H6d)+Chr(97)+Chr(&H70)+Chr(83)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H6c)+Chr(101)+Chr(83)+Chr(112)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(&H65)+Chr(73)+Chr(&H6d)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(&H49)+Chr(&H6e)+Chr(&H64)+Chr(101)+Chr(120)+Chr(84)+Chr(&H6f)+Chr(&H59)+Chr(&H50)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e))]=function(_1OO_1111000O)
yPositionMap={}
row=0
for i=0 to _1OO_1111000O.numberOfThumbnails-1
if row=_1OO_1111000O.numberOfRows row=0
yPositionMap[StrI(i)]=_1OO_1111000O.singleThumbnailHeight*row
if i/_1OO_1111000O.numberOfRows-1=1 row=row+1
end for
return yPositionMap 
end function
this[(Chr(95)+Chr(109)+Chr(&H61)+Chr(112)+Chr(83)+Chr(105)+Chr(110)+Chr(103)+Chr(108)+Chr(&H65)+Chr(83)+Chr(112)+Chr(&H72)+Chr(105)+Chr(&H74)+Chr(&H65)+Chr(&H49)+Chr(109)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(73)+Chr(110)+Chr(100)+Chr(101)+Chr(120)+Chr(84)+Chr(111)+Chr(&H58)+Chr(80)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110))]=function(_1011O0_01OO_)
xPositionMap={}
column=0
for i=0 to _1011O0_01OO_.numberOfThumbnails-1
if column=_1011O0_01OO_.numberOfColumns column=0
xPositionMap[StrI(i)]=_1011O0_01OO_.singleThumbnailWidth*column
column=column+1
end for
return xPositionMap 
end function
this[(Chr(&H5f)+Chr(&H75)+Chr(112)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(101)+Chr(&H4e)+Chr(117)+Chr(109)+Chr(98)+Chr(101)+Chr(114)+Chr(&H4f)+Chr(102)+Chr(84)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H73)+Chr(&H41)+Chr(&H6e)+Chr(100)+Chr(&H50)+Chr(111)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H4d)+Chr(97)+Chr(&H70)+Chr(&H73))]=function(__I0O10III0O0)
__I0O10III0O0.numberOfThumbnails=Cint((__I0O10III0O0.end-__I0O10III0O0.start)/__I0O10III0O0.singleThumbnailDuration)
__I0O10III0O0.xPositionMap=m._mapSingleSpriteImageIndexToXPosition(__I0O10III0O0)
__I0O10III0O0.yPositionMap=m._mapSingleSpriteImageIndexToYPosition(__I0O10III0O0)
end function
this[(Chr(95)+Chr(&H75)+Chr(&H70)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H53)+Chr(112)+Chr(114)+Chr(105)+Chr(116)+Chr(&H65)+Chr(&H45)+Chr(110)+Chr(100)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(101))]=function(__IO1OO0111IO,_101IOIO0__0_,__00O_OO01I1O)
if not __00O_OO01I1O=invalid
__IO1OO0111IO.end=__00O_OO01I1O[m._startTimeIndex]
else if not _101IOIO0__0_=invalid
__IO1OO0111IO.end=_101IOIO0__0_.tiles[m._firstRokuSpriteIndex][m._startTimeIndex]
else if __00O_OO01I1O=invalid and _101IOIO0__0_=invalid
__IO1OO0111IO.end=__IO1OO0111IO.start+__IO1OO0111IO.duration
end if
end function
this[(Chr(&H5f)+Chr(&H63)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H53)+Chr(&H70)+Chr(&H72)+Chr(105)+Chr(&H74)+Chr(101))]=function(_I1O1_O_0O_0I,_OIOI1I1I_00I,__00O0_I1_O_1,_11O_O1IIO_IO)
bitmovinSprite=m._bitmovinModelObjectMapper.callFunc((Chr(&H6d)+Chr(&H61)+Chr(112)+Chr(84)+Chr(104)+Chr(&H75)+Chr(109)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H54)+Chr(&H69)+Chr(108)+Chr(101)+Chr(65)+Chr(110)+Chr(&H64)+Chr(82)+Chr(111)+Chr(107)+Chr(&H75)+Chr(83)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(116)+Chr(101)+Chr(&H54)+Chr(111)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(105)+Chr(110)+Chr(83)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(&H65)),_I1O1_O_0O_0I,__00O0_I1_O_1)
m._updateSpriteEndTime(bitmovinSprite,_OIOI1I1I_00I,_11O_O1IIO_IO)
m._updateNumberOfThumbnailsAndPositionMaps(bitmovinSprite)
return bitmovinSprite 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(&H74)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(116)+Chr(66)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(105)+Chr(&H74)+Chr(&H65)+Chr(115)+Chr(70)+Chr(&H72)+Chr(&H6f)+Chr(109)+Chr(&H52)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(83)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(116)+Chr(&H65)+Chr(&H73))]=function(__IIIIO_101I_,_I0II_II1III0)
bitmovinSprites=[]
rokuSprites=__IIIIO_101I_.tiles
for i=0 to rokuSprites.Count()-1
bitmovinSprites.push(m._createBitmovinSprite(__IIIIO_101I_,_I0II_II1III0,__IIIIO_101I_.tiles[i],__IIIIO_101I_.tiles[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(95)+Chr(&H65)+Chr(120)+Chr(116)+Chr(114)+Chr(&H61)+Chr(99)+Chr(116)+Chr(&H42)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(&H73))]=function(_1O1I_0000111)
bitmovinSprites=[]
for i=0 to _1O1I_0000111.Count()-1
bitmovinSprites.Append(m._extractBitmovinSpritesFromRokuSprites(_1O1I_0000111[i],_1O1I_0000111[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(&H5f)+Chr(&H65)+Chr(&H78)+Chr(116)+Chr(114)+Chr(&H61)+Chr(99)+Chr(&H74)+Chr(82)+Chr(111)+Chr(107)+Chr(117)+Chr(84)+Chr(&H69)+Chr(&H6c)+Chr(&H65)+Chr(115))]=function(_0III0_1O1IOI)
for each quality in _0III0_1O1IOI
return _0III0_1O1IOI[quality] 
end for
end function
this[(Chr(105)+Chr(115)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(84)+Chr(105)+Chr(108)+Chr(&H65)+Chr(79)+Chr(102)+Chr(83)+Chr(&H75)+Chr(112)+Chr(&H70)+Chr(111)+Chr(114)+Chr(&H74)+Chr(101)+Chr(100)+Chr(84)+Chr(&H79)+Chr(112)+Chr(&H65))]=function(_1O01O0O___1_)
for each quality in _1O01O0O___1_
return type(_1O01O0O___1_[quality])=(Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(114)+Chr(&H72)+Chr(97)+Chr(&H79)) 
end for
end function
this[(Chr(101)+Chr(120)+Chr(116)+Chr(114)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(&H54)+Chr(&H68)+Chr(&H75)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(115))]=function(_O_II__10_IOI)
if _O_II__10_IOI=invalid
thumbnails=[]
else 
bitmovinSprites=m._extractBitmovinSprites(m._extractRokuTiles(_O_II__10_IOI))
thumbnails=m._extractAllThumbnails(bitmovinSprites)
end if
return thumbnails 
end function
return this 
end function
