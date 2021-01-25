sub init()
m.BitmovinComponentIds=_00I10OOO01OO()
video=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H56)+Chr(&H69)+Chr(100)+Chr(&H65)+Chr(&H6f)))
video.id=m.BitmovinComponentIds.MAIN_VIDEO
video.translation=(Chr(&H5b)+Chr(48)+Chr(44)+Chr(48)+Chr(&H5d))
keyEventHandler=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(75)+Chr(&H65)+Chr(121)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(72)+Chr(97)+Chr(110)+Chr(100)+Chr(108)+Chr(101)+Chr(&H72)))
keyEventHandler.id=m.BitmovinComponentIds.KEY_EVENT_HANDLER
video.appendChild(keyEventHandler)
m.top.appendChild(video)
bitmovinPlayerTask=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(84)+Chr(&H61)+Chr(115)+Chr(&H6b)))
bitmovinPlayerTask.id=m.BitmovinComponentIds.BITMOVIN_PLAYER_TASK
m.top.appendChild(bitmovinPlayerTask)
m.httpAgent=CreateObject((Chr(114)+Chr(111)+Chr(&H48)+Chr(116)+Chr(&H74)+Chr(112)+Chr(&H41)+Chr(103)+Chr(&H65)+Chr(110)+Chr(116)))
m.httpAgent.enableCookies()
m.drmHttpAgent=invalid
m.deviceInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H49)+Chr(110)+Chr(102)+Chr(&H6f)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(102)+Chr(&H6f)+Chr(99)+Chr(117)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(67)+Chr(104)+Chr(105)+Chr(&H6c)+Chr(100)),(Chr(&H5f)+Chr(&H4f)+Chr(&H49)+Chr(49)+Chr(&H5f)+Chr(48)+Chr(79)+Chr(&H5f)+Chr(49)+Chr(49)+Chr(79)+Chr(&H4f)+Chr(79)))
m.BitmovinPlayerTask=m.top.findNode((Chr(66)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H54)+Chr(&H61)+Chr(115)+Chr(107)))
m.top.BitmovinPlayerState=_O__1___O1OI1()
m.top.BitmovinFunctions=_O0I0O_1_1_1_()
m.top.BitmovinFields=__OO101I00OOO()
m.BitmovinConfigAssetTypes=__00_1IO00100()
m.KeyEventHandler=m.top.findNode((Chr(75)+Chr(&H65)+Chr(&H79)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(72)+Chr(&H61)+Chr(&H6e)+Chr(100)+Chr(108)+Chr(101)+Chr(114)))
m.KeyEventHandler.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(117)+Chr(&H70)),invalid)
m.useDefaultUi=(1=1)
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H44)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(&H63)+Chr(&H79)+Chr(&H46)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(&H72)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(115)))
m.deficiencyService=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H44)+Chr(101)+Chr(&H66)+Chr(&H69)+Chr(&H63)+Chr(105)+Chr(&H65)+Chr(110)+Chr(&H63)+Chr(&H79)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)))
m.deficiencyService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(116)+Chr(&H69)+Chr(97)+Chr(108)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.top)
m.deficiencyService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(95)+Chr(&H31)+Chr(79)+Chr(&H30)+Chr(&H4f)+Chr(&H30)+Chr(95)+Chr(49)+Chr(&H31)+Chr(&H31)+Chr(48)+Chr(&H4f)+Chr(&H31)))
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(111)+Chr(&H72)+Chr(&H79)))
m.BitmovinAsyncOperationTypes=_001_100I0III()
m.TimelineReferencePoints=___O__01O_00O()
m.ServiceEndpoints=___01_I_10_IO()
m.isDestroyed=(1=2)
m.eventFactory=_1_OO1IO0I1O_()
m.mediaQualityService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(77)+Chr(101)+Chr(100)+Chr(105)+Chr(&H61)+Chr(&H51)+Chr(&H75)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H74)+Chr(&H79)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)))
m.mediaQualityService.callFunc((Chr(105)+Chr(110)+Chr(105)+Chr(116)+Chr(105)+Chr(97)+Chr(108)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),m.top)
m.advertisingService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(103)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(65)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(114)+Chr(116)+Chr(&H69)+Chr(115)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)))
m.advertisingService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.top,m.bitmovinPlayerTask)
m.licensingService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(76)+Chr(105)+Chr(99)+Chr(&H65)+Chr(110)+Chr(115)+Chr(105)+Chr(110)+Chr(&H67)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)))
m.licensingService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(97)+Chr(108)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.deficiencyService,m.bitmovinPlayerTask,getVersion())
m.impressionService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H67)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H49)+Chr(&H6d)+Chr(&H70)+Chr(114)+Chr(&H65)+Chr(115)+Chr(115)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)))
m.impressionService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),m.bitmovinPlayerTask,video,getVersion())
m.metadataService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H4d)+Chr(&H65)+Chr(116)+Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(116)+Chr(&H61)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)))
m.metadataService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),video,m.top)
m.playbackService=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)))
m.playbackService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),video)
m.playbackService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(&H5f)+Chr(&H30)+Chr(79)+Chr(&H5f)+Chr(95)+Chr(95)+Chr(49)+Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(95)+Chr(&H49)+Chr(73)))
m.thumbnailService=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.thumbnailService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
m.audioService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(65)+Chr(&H75)+Chr(&H64)+Chr(105)+Chr(&H6f)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.audioService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),video)
m.audioService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(73)+Chr(&H4f)+Chr(&H5f)+Chr(49)+Chr(49)+Chr(&H4f)+Chr(73)+Chr(49)+Chr(&H49)+Chr(&H31)+Chr(&H30)+Chr(&H5f)))
m.captionService=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(67)+Chr(97)+Chr(112)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.captionService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),video)
m.captionService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H5f)+Chr(&H4f)+Chr(49)+Chr(73)+Chr(&H30)+Chr(49)+Chr(48)+Chr(95)+Chr(&H5f)+Chr(&H31)+Chr(49)+Chr(49)))
m.bitmovinModelObjectMapper=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H67)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)+Chr(108)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(101)+Chr(&H63)+Chr(116)+Chr(&H4d)+Chr(97)+Chr(112)+Chr(112)+Chr(101)+Chr(&H72)))
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_I0_IO1_1I0I0)
if m.isDestroyed return invalid 
__OIO0I0OOI_I()
m.config=_I1001OOII100(_I0_IO1_1I0I0)
m.appInfo=CreateObject((Chr(114)+Chr(&H6f)+Chr(65)+Chr(112)+Chr(112)+Chr(&H49)+Chr(110)+Chr(&H66)+Chr(111)))
m.licensingService.callFunc((Chr(&H75)+Chr(&H70)+Chr(100)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(&H67)),m.config)
m.BitmovinPlayerTask.callFunc((Chr(114)+Chr(117)+Chr(110)+Chr(&H54)+Chr(&H61)+Chr(&H73)+Chr(&H6b)),invalid)
m.Video=m.top.findNode((Chr(&H4d)+Chr(&H61)+Chr(&H69)+Chr(110)+Chr(&H56)+Chr(&H69)+Chr(100)+Chr(101)+Chr(111)))
if m.config.ui=(1=2)m.useDefaultUi=(1=2)
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H65)),m.top.BitmovinPlayerState.SETUP)
if not _IO1IIIOI0_1O(m.config.source)
load(m.config.source)
end if
end function
function getConfig(__000I11_I00O=invalid)
if m.isDestroyed return invalid 
config=_I1001OOII100(m.config)
if type(m.config.source)=(Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)) and m.config.source.isSubtype((Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)))
config.source=m.config.source.clone((1=1))
end if
return config 
end function
function getVersion(__001I_1O1_0I=invalid)
if m.isDestroyed return invalid 
return(Chr(49)+Chr(&H2e)+Chr(&H33)+Chr(54)+Chr(&H2e)+Chr(&H31)) 
end function
sub _OIII1I00_O0_()
if m.Video<>invalid
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(83)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)),m.Video.state)
if m.Video.state=(Chr(101)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72))
errorCode=m.bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(117)+Chr(86)+Chr(&H69)+Chr(100)+Chr(101)+Chr(&H6f)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H43)+Chr(111)+Chr(100)+Chr(&H65)+Chr(84)+Chr(111)+Chr(66)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H43)+Chr(111)+Chr(&H64)+Chr(&H65)),m.Video.errorCode)
m.deficiencyService.callFunc((Chr(111)+Chr(110)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)),m.deficiencyFactory.callFunc((Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(116)+Chr(&H65)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(114)+Chr(69)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)),errorCode))
else if m.Video.state=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(105)+Chr(&H6e)+Chr(&H67))
if m.KeyEventHandler.seeking
if m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(&H4c)+Chr(105)+Chr(&H76)+Chr(&H65)))
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=m.top.currentTime
end if
__OIO0I0OOI_I()
end if
else if m.Video.state=(Chr(102)+Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H73)+Chr(104)+Chr(101)+Chr(&H64))
__OIO0I0OOI_I()
end if
end if
end sub
sub __OIO0I0OOI_I()
m.KeyEventHandler.seeking=(1=2)
end sub
function _0011I_000_I1(_11I0I11O0I_1)
if _11I0I11O0I_1.dash<>invalid
return{streamFormat:(Chr(100)+Chr(&H61)+Chr(115)+Chr(&H68)),url:_11I0I11O0I_1.dash} 
else if _11I0I11O0I_1.hls<>invalid
return{streamFormat:(Chr(&H68)+Chr(108)+Chr(&H73)),url:_11I0I11O0I_1.hls} 
else if _11I0I11O0I_1.smooth<>invalid
return{streamFormat:(Chr(&H69)+Chr(&H73)+Chr(&H6d)),url:_11I0I11O0I_1.smooth} 
else if _11I0I11O0I_1.progressive<>invalid and type(_11I0I11O0I_1.progressive)=(Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(116)+Chr(114)+Chr(&H69)+Chr(110)+Chr(&H67))
return{streamFormat:(Chr(&H6d)+Chr(&H70)+Chr(&H34)),url:_11I0I11O0I_1.progressive} 
else if _11I0I11O0I_1.progressive<>invalid and type(_11I0I11O0I_1.progressive)=(Chr(114)+Chr(111)+Chr(&H41)+Chr(115)+Chr(&H73)+Chr(&H6f)+Chr(&H63)+Chr(&H69)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(118)+Chr(&H65)+Chr(65)+Chr(&H72)+Chr(&H72)+Chr(&H61)+Chr(&H79))
return{streamFormat:_11I0I11O0I_1.progressive.type,url:_11I0I11O0I_1.progressive.url} 
else 
return{} 
end if
end function
function _IIIOOO001_I1(_II_O0OIO0O1I)
newItem={trackName:_II_O0OIO0O1I.url,language:_II_O0OIO0O1I.language,description:_II_O0OIO0O1I.label}
return newItem 
end function
sub play(__1I__OOO11OO=invalid)
if m.isDestroyed return 
m.playBackService.callFunc((Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79)))
end sub
sub instantReplay(_10_1___0_IO_=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H69)+Chr(110)+Chr(115)+Chr(&H74)+Chr(&H61)+Chr(&H6e)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H70)+Chr(108)+Chr(97)+Chr(121)))
end sub
sub pause(_1__1_0II__IO=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(112)+Chr(&H61)+Chr(&H75)+Chr(&H73)+Chr(&H65)))
end sub
sub preload(_OI_0_OIO0IOI=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64)))
end sub
sub seek(_O1I11_IO01_I)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(&H65)+Chr(&H6b)),_O1I11_IO01_I)
end sub
sub mute(_O_I0_O_I00II=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H6d)+Chr(117)+Chr(116)+Chr(&H65)))
end sub
sub unmute(_IOO1OO_1O_I_=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H75)+Chr(110)+Chr(109)+Chr(&H75)+Chr(&H74)+Chr(101)))
end sub
sub captionMode(__0I_I__O_0OO)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(67)+Chr(&H61)+Chr(112)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H4d)+Chr(&H6f)+Chr(100)+Chr(101)),__0I_I__O_0OO)
end sub
sub setCaptionMode(_0IOII__OI_11)
if m.isDestroyed return 
m.captionService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H43)+Chr(97)+Chr(112)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(100)+Chr(101)),_0IOII__OI_11)
end sub
function isMuted(_O1_O1_II1II_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(77)+Chr(117)+Chr(&H74)+Chr(101)+Chr(100))) 
end function
function isPlaying(_0O1_I0110_0_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(&H69)+Chr(110)+Chr(103))) 
end function
function isPaused(_0_0O0011I1_I=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(80)+Chr(97)+Chr(117)+Chr(115)+Chr(101)+Chr(&H64))) 
end function
function isStalled(_1I0_10O0IOIO=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(83)+Chr(116)+Chr(&H61)+Chr(108)+Chr(&H6c)+Chr(101)+Chr(100))) 
end function
function availableSubtitles(_OO0_1I01OI0I=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(&H61)+Chr(118)+Chr(97)+Chr(&H69)+Chr(108)+Chr(97)+Chr(98)+Chr(&H6c)+Chr(&H65)+Chr(83)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(&H65)+Chr(&H73))) 
end function
function getSubtitle(_0_010OO1__0I=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(83)+Chr(&H75)+Chr(98)+Chr(116)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(&H65))) 
end function
function setSubtitle(_0OO_I010OI_1)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(83)+Chr(&H75)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(116)+Chr(108)+Chr(101)),_0OO_I010OI_1)
end function
function setSubtitleStyles(_OI10_II1O0IO)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(83)+Chr(&H75)+Chr(98)+Chr(116)+Chr(&H69)+Chr(116)+Chr(&H6c)+Chr(&H65)+Chr(&H53)+Chr(116)+Chr(&H79)+Chr(108)+Chr(&H65)+Chr(&H73)),_OI10_II1O0IO)
end function
function getSubtitleStyles(_1_1III01000_=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H53)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(108)+Chr(101)+Chr(&H53)+Chr(&H74)+Chr(&H79)+Chr(&H6c)+Chr(101)+Chr(&H73))) 
end function
function availableAudio(_1OIOII_O1OI0=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(&H61)+Chr(&H76)+Chr(97)+Chr(105)+Chr(108)+Chr(&H61)+Chr(98)+Chr(&H6c)+Chr(&H65)+Chr(65)+Chr(&H75)+Chr(100)+Chr(&H69)+Chr(111)),invalid) 
end function
function getAudio(_0IOO_O1I_01I=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(117)+Chr(100)+Chr(105)+Chr(&H6f)),invalid) 
end function
function setAudio(___O1I0I_11I1)
if m.isDestroyed return invalid 
m.audioService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(&H75)+Chr(100)+Chr(&H69)+Chr(111)),___O1I0I_11I1)
end function
sub unload(_OO0O001101I1=invalid)
if m.isDestroyed return 
if m.Video.content=invalid return 
m.config.source={}
m.Video.enableUI=(1=2)
m.Video.enableTrickPlay=(1=2)
m.Video.content=invalid
m.playbackService.callFunc((Chr(115)+Chr(116)+Chr(111)+Chr(112)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
__OIO0I0OOI_I()
m.Video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)))
m.Video.unobserveFieldScoped((Chr(&H70)+Chr(111)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(110)))
m.Video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(100)+Chr(105)+Chr(&H6f)+Chr(&H54)+Chr(114)+Chr(97)+Chr(99)+Chr(107)))
m.video.unobserveFieldScoped((Chr(99)+Chr(&H6f)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(&H78)))
m.mediaQualityService.callFunc((Chr(115)+Chr(&H74)+Chr(111)+Chr(112)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.advertisingService.callFunc((Chr(115)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
m.impressionService.callFunc((Chr(&H73)+Chr(116)+Chr(111)+Chr(112)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.metadataService.callFunc((Chr(&H73)+Chr(&H74)+Chr(111)+Chr(112)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.thumbnailService.callFunc((Chr(115)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.audioService.callFunc((Chr(&H73)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.BitmovinPlayerTask.callFunc((Chr(114)+Chr(101)+Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)),invalid)
m.top.sourceUnloaded=(1=1)
end sub
sub load(__10_1__O_I_1)
if m.isDestroyed return 
content=invalid
if type(__10_1__O_I_1)=(Chr(&H72)+Chr(&H6f)+Chr(65)+Chr(115)+Chr(115)+Chr(&H6f)+Chr(&H63)+Chr(105)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(114)+Chr(114)+Chr(97)+Chr(&H79))
content=__1OI00010I1_(__10_1__O_I_1)
else if type(__10_1__O_I_1)=(Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)) and __10_1__O_I_1.isSubtype((Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(110)+Chr(116)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)))
content=__10_1__O_I_1.clone((1=1))
end if
if content=invalid
m.deficiencyService.callFunc((Chr(111)+Chr(&H6e)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(&H45)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)),m.Errors.SOURCE_INVALID))
return 
end if
if not _IO1IIIOI0_1O(m.Video.content)
unload(invalid)
end if
m.deficiencyService.callFunc((Chr(&H72)+Chr(101)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(101)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(86)+Chr(&H69)+Chr(&H65)+Chr(&H77)+Chr(&H49)+Chr(&H66)+Chr(&H50)+Chr(114)+Chr(101)+Chr(115)+Chr(&H65)+Chr(&H6e)+Chr(116)))
m.licensingService.callFunc((Chr(100)+Chr(&H6f)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(76)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H65)+Chr(67)+Chr(&H68)+Chr(&H65)+Chr(&H63)+Chr(107)))
m.config.source=__10_1__O_I_1
thumbnailUrl=__0_O_I_11O_O(__10_1__O_I_1,[(Chr(&H74)+Chr(104)+Chr(117)+Chr(109)+Chr(&H62)+Chr(110)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(84)+Chr(114)+Chr(97)+Chr(99)+Chr(107)),(Chr(117)+Chr(&H72)+Chr(&H6c))])
m.Video.setHttpAgent(m.httpAgent)
m.Video.drmHttpAgent=m.drmHttpAgent
m.Video.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101)),(Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(73)+Chr(73)+Chr(&H31)+Chr(&H49)+Chr(&H30)+Chr(&H30)+Chr(95)+Chr(79)+Chr(&H30)+Chr(95)))
m.Video.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),(Chr(&H5f)+Chr(48)+Chr(&H30)+Chr(49)+Chr(&H30)+Chr(&H4f)+Chr(&H30)+Chr(79)+Chr(&H5f)+Chr(73)+Chr(49)+Chr(73)+Chr(&H49)))
m.mediaQualityService.callFunc((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.advertisingService.callFunc((Chr(115)+Chr(116)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
m.metadataService.callFunc((Chr(115)+Chr(116)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
m.thumbnailService.callFunc((Chr(115)+Chr(116)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),thumbnailUrl,m.bitmovinPlayerTask,content)
m.audioService.callFunc((Chr(&H73)+Chr(&H74)+Chr(97)+Chr(114)+Chr(116)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),invalid)
m.playbackService.callFunc((Chr(115)+Chr(116)+Chr(&H61)+Chr(114)+Chr(116)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),invalid)
m.Video.enableUI=m.useDefaultUi
m.Video.enableTrickPlay=m.useDefaultUi
if content.Live=(1=1) and content.PlayStart=invalid
content.PlayStart=_O_0_1_00__1_()
end if
if content.getChildCount()=0 content=_I1__II_OO01I(content)
m.Video.contentIsPlaylist=(1=1)
m.video.observeFieldScoped((Chr(99)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(&H6e)+Chr(&H64)+Chr(101)+Chr(&H78)),(Chr(95)+Chr(48)+Chr(&H30)+Chr(&H4f)+Chr(73)+Chr(73)+Chr(73)+Chr(&H49)+Chr(48)+Chr(73)+Chr(73)+Chr(&H5f)+Chr(73)))
m.impressionService.callFunc((Chr(115)+Chr(116)+Chr(&H61)+Chr(114)+Chr(116)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.licensingService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(110)+Chr(115)+Chr(&H65)+Chr(75)+Chr(&H65)+Chr(&H79))),content.getChildCount())
m.Video.content=content
m.top.sourceLoaded=(1=1)
prebuffer=__0_O_I_11O_O(m.config,[(Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)),(Chr(&H70)+Chr(114)+Chr(101)+Chr(&H6c)+Chr(&H6f)+Chr(97)+Chr(100))])
if ____O_I_0I10_(prebuffer) and prebuffer
m.playbackService.callFunc((Chr(112)+Chr(114)+Chr(&H65)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(100)),invalid)
end if
m.Video.mute=__0_O_I_11O_O(m.config,[(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(98)+Chr(97)+Chr(99)+Chr(107)),(Chr(&H6d)+Chr(117)+Chr(&H74)+Chr(&H65)+Chr(100))])
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(97)+Chr(&H74)+Chr(101)),m.top.BitmovinPlayerState.READY)
adBreaks=__0_O_I_11O_O(__10_1__O_I_1,[(Chr(97)+Chr(&H64)+Chr(118)+Chr(&H65)+Chr(&H72)+Chr(116)+Chr(105)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67)),(Chr(97)+Chr(100)+Chr(&H42)+Chr(114)+Chr(101)+Chr(97)+Chr(&H6b)+Chr(115))])
if adBreaks<>invalid ad_schedule(adBreaks)
autoplay=__0_O_I_11O_O(m.config,[(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(107)),(Chr(&H61)+Chr(117)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121))])
if(____O_I_0I10_(autoplay) and autoplay)
play(invalid)
end if
end sub
function __1OI00010I1_(_O_I01O11O10_)
contentNode=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)))
stream=_0011I_000_I1(_O_I01O11O10_)
if stream.Keys().Count()=0
return invalid 
end if
contentNode.title=_O_I01O11O10_.title
contentNode.streamFormat=stream.streamFormat
contentNode.url=stream.url
contentNode.HttpSendClientCertificates=(1=1)
if _O_I01O11O10_.assetType=m.BitmovinConfigAssetTypes.LIVE
contentNode.Live=(1=1)
else 
contentNode.Live=(1=2)
end if
subtitleTracks=__0_O_I_11O_O(_O_I01O11O10_,[(Chr(115)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(116)+Chr(108)+Chr(101)+Chr(84)+Chr(114)+Chr(97)+Chr(&H63)+Chr(107)+Chr(115))])
if subTitleTracks<>invalid
mappedTracks=_II_1100O01_O(subtitleTracks,_IIIOOO001_I1)
contentNode.subtitleTracks=mappedTracks
end if
drm=__0_O_I_11O_O(_O_I01O11O10_,[(Chr(100)+Chr(114)+Chr(&H6d))])
if drm<>invalid
if drm.widevine<>invalid
contentNode.drmParams={keySystem:(Chr(87)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H65)),licenseServerURL:drm.widevine.LA_URL}
end if
if drm.PlayReady<>invalid
if drm.PlayReady.LA_URL<>invalid
if drm.PlayReady.customData<>invalid
contentNode.encodingType=(Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(82)+Chr(101)+Chr(&H61)+Chr(100)+Chr(&H79)+Chr(76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H65)+Chr(65)+Chr(99)+Chr(113)+Chr(&H75)+Chr(105)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H41)+Chr(110)+Chr(100)+Chr(&H43)+Chr(104)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(&H65)+Chr(110)+Chr(&H67)+Chr(101))
contentNode.encodingKey=drm.PlayReady.LA_URL+(Chr(37)+Chr(37)+Chr(&H25))+drm.PlayReady.customData
else 
contentNode.encodingType=(Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(82)+Chr(&H65)+Chr(97)+Chr(100)+Chr(&H79)+Chr(76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(&H73)+Chr(101)+Chr(&H41)+Chr(99)+Chr(113)+Chr(117)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(85)+Chr(114)+Chr(&H6c))
contentNode.encodingKey=drm.PlayReady.LA_URL
end if
end if
end if
if drm.headers<>invalid
m.drmHttpAgent=CreateObject((Chr(&H72)+Chr(111)+Chr(72)+Chr(116)+Chr(116)+Chr(&H70)+Chr(65)+Chr(&H67)+Chr(&H65)+Chr(&H6e)+Chr(&H74)))
m.drmHttpAgent.SetHeaders(drm.headers)
else 
m.drmHttpAgent=invalid
end if
end if
options=__0_O_I_11O_O(_O_I01O11O10_,[(Chr(&H6f)+Chr(&H70)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(115))])
if options<>invalid contentNode.PlayStart=_1O1I__I0____(options,contentNode.Live)
if contentNode.PlayStart<0 _1OO000O1_I00()
return contentNode 
end function
function _1O1I__I0____(_011_I_110II_,_O0IOI_OO0_1I)
if _011_I_110II_.startOffset=invalid return 0 
if _011_I_110II_.startOffsetTimelineReference=invalid
if _O0IOI_OO0_1I
_011_I_110II_.startOffsetTimelineReference=m.TimelineReferencePoints.end
else 
_011_I_110II_.startOffsetTimelineReference=m.TimelineReferencePoints.START
end if
end if
if Lcase(_011_I_110II_.startOffsetTimelineReference)=m.TimelineReferencePoints.START and _011_I_110II_.startOffset<0 return 0 
if Lcase(_011_I_110II_.startOffsetTimelineReference)=m.TimelineReferencePoints.end and _011_I_110II_.startOffset>=0 return _O_0_1_00__1_() 
return _011_I_110II_.startOffset 
end function
sub _1OO000O1_I00()
m.video.observeFieldScoped((Chr(100)+Chr(117)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),(Chr(95)+Chr(79)+Chr(73)+Chr(95)+Chr(48)+Chr(&H5f)+Chr(79)+Chr(&H30)+Chr(73)+Chr(&H30)+Chr(49)+Chr(49)+Chr(&H4f)))
end sub
sub _OI_0_O0I011O()
content=_OIOIOO_O0OII(m.video)
m.video.seek=(m.video.duration+content.PlayStart)
m.video.unobserveFieldScoped((Chr(100)+Chr(&H75)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)))
end sub
function _I1__II_OO01I(_1O0_0OIOO0__)
playlist=createObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(67)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)))
playlist.appendChild(_1O0_0OIOO0__)
return playlist 
end function
sub _00OIIII0II_I(__1_I1000IIOO)
if m.top.playerState=m.top.BitmovinPlayerState.SETUP return 
m.top.sourceUnloaded=(1=1)
m.top.sourceLoaded=(1=1)
if(m.top.playerState=m.top.BitmovinPlayerState.PLAYING)or(m.top.playerState=m.top.BitmovinPlayerState.STALLING)m.top.play=(1=1)
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H65)),m.top.playerState)
end sub
function getDuration(_OIII__OI0O_1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(68)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e))) 
end function
sub timeShift(_OO0O1O_I_O_O)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(116)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(83)+Chr(104)+Chr(105)+Chr(102)+Chr(&H74)),_OO0O1O_I_O_O)
end sub
function getTimeShift(_O_OOOI11_I00=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(&H65)+Chr(83)+Chr(&H68)+Chr(105)+Chr(&H66)+Chr(116))) 
end function
function getMaxTimeShift(_0I110I0_01I0=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(&H78)+Chr(&H54)+Chr(105)+Chr(109)+Chr(&H65)+Chr(&H53)+Chr(104)+Chr(105)+Chr(102)+Chr(&H74))) 
end function
sub _0010O0O_I1II()
m.top.currentTime=m.Video.position
end sub
function isLive(_0O1_OO0O_OIO=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(&H4c)+Chr(105)+Chr(118)+Chr(101))) 
end function
sub setHttpHeaders(_OO_00O_001OO)
if m.isDestroyed return 
m.httpAgent.SetHeaders(_OO_00O_001OO)
end sub
sub _OI1_0O_11OOO(_00I__O_11O1I)
previousFocusedNodeId=_00I__O_11O1I.getNode()
if not _IO1IIIOI0_1O(ad_getActiveAdBreak())return 
if previousFocusedNodeId=m.top.id and m.useDefaultUi
_I0__IO0000I1()
end if
end sub
sub _I0__IO0000I1()
m.KeyEventHandler.setFocus((1=1))
end sub
function getThumbnail(_0_011_0_1O_I)
if m.isDestroyed return invalid 
if _IO1IIIOI0_1O(_0_011_0_1O_I)
return invalid 
end if
return m.thumbnailService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(&H54)+Chr(104)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(108)),_0_011_0_1O_I) 
end function
sub ad_schedule(_II1_OOI11I_O=invalid)
if m.isDestroyed return 
if _IO1IIIOI0_1O(_II1_OOI11I_O)return 
m.advertisingService.callFunc((Chr(&H73)+Chr(&H63)+Chr(104)+Chr(101)+Chr(&H64)+Chr(117)+Chr(&H6c)+Chr(&H65)+Chr(&H41)+Chr(&H64)+Chr(115)),_II1_OOI11I_O)
end sub
function ad_list(__010IOO0I_I0=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(&H64)+Chr(&H4c)+Chr(105)+Chr(115)+Chr(&H74)),invalid) 
end function
function ad_getActiveAdBreak(__100II_I00OO=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(65)+Chr(99)+Chr(&H74)+Chr(&H69)+Chr(118)+Chr(101)+Chr(&H41)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(107)),invalid) 
end function
sub ad_discardAdBreak(_1_IOI0I1O0O_)
if m.isDestroyed return 
if _IO1IIIOI0_1O(_1_IOI0I1O0O_)return 
m.advertisingService.callFunc((Chr(&H64)+Chr(105)+Chr(115)+Chr(99)+Chr(97)+Chr(114)+Chr(&H64)+Chr(&H41)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(107)),_1_IOI0I1O0O_)
end sub
sub _0_I0IOI_IO1O()
m.top.destroy=m.eventFactory.createBitmovinBaseEvent(m.top.bitmovinFields.DESTROY)
m.isDestroyed=(1=1)
m.BitmovinPlayerTask.callFunc((Chr(115)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(&H54)+Chr(97)+Chr(115)+Chr(107)),invalid)
_01I1_I10111I()
_OI0OO_O0O_0_()
end sub
sub destroy(_1_0I_I0110OO=invalid)
_0_I0IOI_IO1O()
end sub
sub _01I1_I10111I()
m.video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)))
m.video.unobserveFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)))
m.video.unobserveFieldScoped((Chr(100)+Chr(&H6f)+Chr(119)+Chr(110)+Chr(&H6c)+Chr(&H6f)+Chr(&H61)+Chr(100)+Chr(&H65)+Chr(&H64)+Chr(83)+Chr(101)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)))
m.video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(100)+Chr(105)+Chr(111)+Chr(84)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(&H6b)))
m.video.unobserveFieldScoped((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(110)+Chr(&H74)+Chr(73)+Chr(&H6e)+Chr(100)+Chr(101)+Chr(&H78)))
m.video.unobserveFieldScoped((Chr(100)+Chr(117)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)))
m.top.unobserveFieldScoped((Chr(102)+Chr(111)+Chr(&H63)+Chr(117)+Chr(115)+Chr(&H65)+Chr(100)+Chr(67)+Chr(&H68)+Chr(&H69)+Chr(108)+Chr(100)))
m.playbackService.unobserveFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(99)+Chr(117)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)))
end sub
sub _OI0OO_O0O_0_()
m.KeyEventHandler.callFunc((Chr(100)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(121)))
end sub
sub _0O___1_OI_II(___OOO0_1O00_)
eventName=___OOO0_1O00_.getData().eventName
eventData=___OOO0_1O00_.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
else if eventName=m.top.BitmovinFields.SEEK
m.top.seek=eventData
m.KeyEventHandler.seeking=(1=1)
else if eventName=m.top.BitmovinFields.PLAY
m.top.play=eventData
else if eventName=m.top.BitmovinFields.TIME_SHIFT
m.top.timeShift=eventData
m.KeyEventHandler.seeking=(1=1)
else if eventName=m.top.BitmovinFields.PLAYER_STATE
m.top.playerState=eventData
m.KeyEventHandler.playerState=eventData
?(Chr(&H43)+Chr(104)+Chr(97)+Chr(110)+Chr(103)+Chr(101)+Chr(32)+Chr(116)+Chr(&H6f)+Chr(32)+Chr(112)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(&H20)+Chr(&H73)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(58)+Chr(32));m.top.playerState
else if eventName=m.top.BitmovinFields.MUTED
m.top.muted=eventData
else if eventName=m.top.BitmovinFields.UNMUTED
m.top.unmuted=eventData
end if
end sub
sub _1O0O0_1110O1(_011_0IO101O1)
eventName=_011_0IO101O1.getData().eventName
if eventName=m.top.BitmovinFields.DESTROY and not m.isDestroyed
_0_I0IOI_IO1O()
end if
end sub
sub _IO_11OI1I10_(__OIO000I101_)
eventName=__OIO000I101_.getData().eventName
eventData=__OIO000I101_.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
else if eventName=m.top.BitmovinFields.AUDIO_CHANGED
m.top.audioChanged=eventData
end if
end sub
sub __O1I010__111(_10O11000I_0O)
eventName=_10O11000I_0O.getData().eventName
eventData=_10O11000I_0O.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
end if
end sub
