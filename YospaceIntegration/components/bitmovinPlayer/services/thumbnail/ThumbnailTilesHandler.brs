function _I11I_I010_II()
this={}
this[(Chr(&H5f)+Chr(&H73)+Chr(116)+Chr(&H61)+Chr(&H72)+Chr(&H74)+Chr(&H54)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(73)+Chr(110)+Chr(&H64)+Chr(101)+Chr(&H78))]=1
this[(Chr(&H5f)+Chr(102)+Chr(105)+Chr(114)+Chr(115)+Chr(116)+Chr(82)+Chr(111)+Chr(107)+Chr(&H75)+Chr(83)+Chr(&H70)+Chr(&H72)+Chr(&H69)+Chr(&H74)+Chr(&H65)+Chr(73)+Chr(&H6e)+Chr(&H64)+Chr(&H65)+Chr(120))]=0
this[(Chr(95)+Chr(98)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(&H6c)+Chr(&H4f)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(&H63)+Chr(&H74)+Chr(77)+Chr(97)+Chr(112)+Chr(112)+Chr(&H65)+Chr(114))]=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(103)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(101)+Chr(&H63)+Chr(&H74)+Chr(77)+Chr(&H61)+Chr(&H70)+Chr(112)+Chr(&H65)+Chr(&H72)))
this[(Chr(95)+Chr(101)+Chr(120)+Chr(116)+Chr(&H72)+Chr(&H61)+Chr(99)+Chr(116)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(109)+Chr(&H62)+Chr(110)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(70)+Chr(114)+Chr(111)+Chr(&H6d)+Chr(&H53)+Chr(112)+Chr(&H72)+Chr(&H69)+Chr(&H74)+Chr(&H65))]=function(_0OOO10_0OIO0,____O0I_IIIII)
thumbnail={}
thumbnail.url=_0OOO10_0OIO0.url
thumbnail.h=_0OOO10_0OIO0.singleThumbnailHeight
thumbnail.w=_0OOO10_0OIO0.singleThumbnailWidth
thumbnail.x=_0OOO10_0OIO0.xPositionMap[StrI(____O0I_IIIII)]
thumbnail.y=_0OOO10_0OIO0.yPositionMap[StrI(____O0I_IIIII)]
thumbnail.start=_0OOO10_0OIO0.end-(_0OOO10_0OIO0.singleThumbnailDuration*(_0OOO10_0OIO0.numberOfThumbnails-____O0I_IIIII))
thumbnail.end=thumbnail.start+_0OOO10_0OIO0.singleThumbnailDuration
return thumbnail 
end function
this[(Chr(95)+Chr(101)+Chr(&H78)+Chr(&H74)+Chr(114)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H41)+Chr(108)+Chr(108)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(115))]=function(_1_O0IO_1OI_1)
bitmovinThumbnails=[]
for each sprite in _1_O0IO_1OI_1
for i=0 to sprite.numberOfThumbnails-1
thumbnail=m._extractThumbnailFromSprite(sprite,i)
bitmovinThumbnails.Push(thumbnail)
end for
end for
return bitmovinThumbnails 
end function
this[(Chr(&H5f)+Chr(109)+Chr(97)+Chr(112)+Chr(83)+Chr(&H69)+Chr(110)+Chr(&H67)+Chr(&H6c)+Chr(101)+Chr(83)+Chr(112)+Chr(114)+Chr(&H69)+Chr(116)+Chr(&H65)+Chr(&H49)+Chr(109)+Chr(&H61)+Chr(103)+Chr(&H65)+Chr(73)+Chr(110)+Chr(100)+Chr(&H65)+Chr(&H78)+Chr(&H54)+Chr(111)+Chr(89)+Chr(&H50)+Chr(111)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e))]=function(_11O11I1IOI1_)
yPositionMap={}
row=0
for i=0 to _11O11I1IOI1_.numberOfThumbnails-1
if row=_11O11I1IOI1_.numberOfRows row=0
yPositionMap[StrI(i)]=_11O11I1IOI1_.singleThumbnailHeight*row
if i/_11O11I1IOI1_.numberOfRows-1=1 row=row+1
end for
return yPositionMap 
end function
this[(Chr(&H5f)+Chr(109)+Chr(&H61)+Chr(112)+Chr(&H53)+Chr(105)+Chr(110)+Chr(103)+Chr(&H6c)+Chr(&H65)+Chr(83)+Chr(112)+Chr(&H72)+Chr(105)+Chr(&H74)+Chr(&H65)+Chr(73)+Chr(&H6d)+Chr(97)+Chr(&H67)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(&H78)+Chr(&H54)+Chr(&H6f)+Chr(&H58)+Chr(80)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110))]=function(_I_OI0IO0_1_O)
xPositionMap={}
column=0
for i=0 to _I_OI0IO0_1_O.numberOfThumbnails-1
if column=_I_OI0IO0_1_O.numberOfColumns column=0
xPositionMap[StrI(i)]=_I_OI0IO0_1_O.singleThumbnailWidth*column
column=column+1
end for
return xPositionMap 
end function
this[(Chr(&H5f)+Chr(117)+Chr(&H70)+Chr(100)+Chr(97)+Chr(&H74)+Chr(101)+Chr(78)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(101)+Chr(114)+Chr(79)+Chr(&H66)+Chr(84)+Chr(&H68)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(97)+Chr(105)+Chr(108)+Chr(&H73)+Chr(&H41)+Chr(110)+Chr(&H64)+Chr(80)+Chr(111)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(77)+Chr(&H61)+Chr(112)+Chr(115))]=function(_0_10O0I0I00I)
_0_10O0I0I00I.numberOfThumbnails=Cint((_0_10O0I0I00I.end-_0_10O0I0I00I.start)/_0_10O0I0I00I.singleThumbnailDuration)
_0_10O0I0I00I.xPositionMap=m._mapSingleSpriteImageIndexToXPosition(_0_10O0I0I00I)
_0_10O0I0I00I.yPositionMap=m._mapSingleSpriteImageIndexToYPosition(_0_10O0I0I00I)
end function
this[(Chr(&H5f)+Chr(&H75)+Chr(&H70)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H53)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(101)+Chr(69)+Chr(110)+Chr(&H64)+Chr(84)+Chr(105)+Chr(109)+Chr(&H65))]=function(_0OO0_O_1O_OI,__OOO00O_01_1,___0OO1IOIO_0)
if not ___0OO1IOIO_0=invalid
_0OO0_O_1O_OI.end=___0OO1IOIO_0[m._startTimeIndex]
else if not __OOO00O_01_1=invalid
_0OO0_O_1O_OI.end=__OOO00O_01_1.tiles[m._firstRokuSpriteIndex][m._startTimeIndex]
else if ___0OO1IOIO_0=invalid and __OOO00O_01_1=invalid
_0OO0_O_1O_OI.end=_0OO0_O_1O_OI.start+_0OO0_O_1O_OI.duration
end if
end function
this[(Chr(&H5f)+Chr(99)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(83)+Chr(112)+Chr(&H72)+Chr(105)+Chr(&H74)+Chr(101))]=function(_IIOO_OO0IO0O,_IO1100OO0OO_,__O000_00_I10,__0OO0OII1O01)
bitmovinSprite=m._bitmovinModelObjectMapper.callFunc((Chr(&H6d)+Chr(97)+Chr(112)+Chr(84)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(84)+Chr(105)+Chr(108)+Chr(101)+Chr(&H41)+Chr(110)+Chr(&H64)+Chr(82)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(&H53)+Chr(112)+Chr(114)+Chr(105)+Chr(&H74)+Chr(&H65)+Chr(&H54)+Chr(&H6f)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H53)+Chr(112)+Chr(114)+Chr(105)+Chr(&H74)+Chr(&H65)),_IIOO_OO0IO0O,__O000_00_I10)
m._updateSpriteEndTime(bitmovinSprite,_IO1100OO0OO_,__0OO0OII1O01)
m._updateNumberOfThumbnailsAndPositionMaps(bitmovinSprite)
return bitmovinSprite 
end function
this[(Chr(95)+Chr(&H65)+Chr(120)+Chr(&H74)+Chr(&H72)+Chr(&H61)+Chr(&H63)+Chr(116)+Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(83)+Chr(&H70)+Chr(114)+Chr(&H69)+Chr(&H74)+Chr(&H65)+Chr(&H73)+Chr(70)+Chr(114)+Chr(111)+Chr(109)+Chr(82)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(83)+Chr(112)+Chr(&H72)+Chr(105)+Chr(116)+Chr(101)+Chr(115))]=function(___OO_11IO0O_,_0I1100O_110_)
bitmovinSprites=[]
rokuSprites=___OO_11IO0O_.tiles
for i=0 to rokuSprites.Count()-1
bitmovinSprites.push(m._createBitmovinSprite(___OO_11IO0O_,_0I1100O_110_,___OO_11IO0O_.tiles[i],___OO_11IO0O_.tiles[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(&H5f)+Chr(101)+Chr(&H78)+Chr(116)+Chr(114)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(83)+Chr(&H70)+Chr(&H72)+Chr(105)+Chr(&H74)+Chr(&H65)+Chr(&H73))]=function(_00IO11O0_11I)
bitmovinSprites=[]
for i=0 to _00IO11O0_11I.Count()-1
bitmovinSprites.Append(m._extractBitmovinSpritesFromRokuSprites(_00IO11O0_11I[i],_00IO11O0_11I[i+1]))
end for
return bitmovinSprites 
end function
this[(Chr(&H5f)+Chr(101)+Chr(120)+Chr(&H74)+Chr(114)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H52)+Chr(&H6f)+Chr(107)+Chr(117)+Chr(84)+Chr(&H69)+Chr(108)+Chr(&H65)+Chr(115))]=function(__11OII_1O0_O)
for each quality in __11OII_1O0_O
return __11OII_1O0_O[quality] 
end for
end function
this[(Chr(&H69)+Chr(115)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(&H61)+Chr(105)+Chr(108)+Chr(84)+Chr(&H69)+Chr(&H6c)+Chr(101)+Chr(79)+Chr(&H66)+Chr(&H53)+Chr(&H75)+Chr(112)+Chr(&H70)+Chr(&H6f)+Chr(114)+Chr(116)+Chr(101)+Chr(&H64)+Chr(84)+Chr(&H79)+Chr(&H70)+Chr(&H65))]=function(_O__I__I1IOOI)
for each quality in _O__I__I1IOOI
return type(_O__I__I1IOOI[quality])=(Chr(&H72)+Chr(111)+Chr(&H41)+Chr(114)+Chr(114)+Chr(97)+Chr(121)) 
end for
end function
this[(Chr(101)+Chr(&H78)+Chr(&H74)+Chr(114)+Chr(97)+Chr(&H63)+Chr(116)+Chr(84)+Chr(&H68)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(115))]=function(_II01O10__1I1)
if _II01O10__1I1=invalid
thumbnails=[]
else 
bitmovinSprites=m._extractBitmovinSprites(m._extractRokuTiles(_II01O10__1I1))
thumbnails=m._extractAllThumbnails(bitmovinSprites)
end if
return thumbnails 
end function
return this 
end function
