sub init()
m.BitmovinComponentIds=__01_0O1OO_OI()
services={}
video=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(86)+Chr(105)+Chr(100)+Chr(101)+Chr(111)))
video.id=m.BitmovinComponentIds.MAIN_VIDEO
video.translation=(Chr(91)+Chr(&H30)+Chr(&H2c)+Chr(48)+Chr(&H5d))
keyEventHandler=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H4b)+Chr(&H65)+Chr(121)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(72)+Chr(97)+Chr(110)+Chr(&H64)+Chr(108)+Chr(&H65)+Chr(&H72)))
keyEventHandler.id=m.BitmovinComponentIds.KEY_EVENT_HANDLER
video.appendChild(keyEventHandler)
m.top.appendChild(video)
m.video=video
bitmovinPlayerTask=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H42)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(84)+Chr(97)+Chr(115)+Chr(&H6b)))
bitmovinPlayerTask.id=m.BitmovinComponentIds.BITMOVIN_PLAYER_TASK
m.top.appendChild(bitmovinPlayerTask)
m.deviceInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H44)+Chr(101)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(111)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(102)+Chr(111)+Chr(99)+Chr(117)+Chr(115)+Chr(&H65)+Chr(&H64)+Chr(67)+Chr(104)+Chr(105)+Chr(&H6c)+Chr(&H64)),(Chr(95)+Chr(&H49)+Chr(95)+Chr(73)+Chr(&H5f)+Chr(73)+Chr(73)+Chr(&H30)+Chr(48)+Chr(&H49)+Chr(&H4f)+Chr(48)+Chr(&H5f)))
m.BitmovinPlayerTask=m.top.findNode((Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(84)+Chr(97)+Chr(&H73)+Chr(&H6b)))
m.top.BitmovinPlayerState=_II0_0_O__10O()
m.top.BitmovinFunctions=_0O0O1O00I__1()
m.top.BitmovinFields=_O_10OO110010()
m.BitmovinConfigAssetTypes=__OOO0O__1100()
m.KeyEventHandler=m.top.findNode((Chr(75)+Chr(&H65)+Chr(121)+Chr(&H45)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H48)+Chr(&H61)+Chr(&H6e)+Chr(&H64)+Chr(108)+Chr(&H65)+Chr(&H72)))
m.KeyEventHandler.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(117)+Chr(&H70)),invalid)
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(68)+Chr(101)+Chr(&H66)+Chr(105)+Chr(&H63)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(&H79)+Chr(&H46)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(69)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(&H72)+Chr(&H73)))
m.deficiencyService=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H44)+Chr(&H65)+Chr(&H66)+Chr(105)+Chr(99)+Chr(105)+Chr(101)+Chr(110)+Chr(99)+Chr(121)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.deficiencyService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),m.top)
m.deficiencyService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(49)+Chr(&H4f)+Chr(&H30)+Chr(&H5f)+Chr(&H5f)+Chr(&H31)+Chr(79)+Chr(&H4f)+Chr(95)+Chr(&H30)+Chr(&H5f)+Chr(73)))
services.AddReplace((Chr(&H64)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.deficiencyService)
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(&H73)+Chr(121)+Chr(&H6e)+Chr(99)+Chr(&H4f)+Chr(&H70)+Chr(&H65)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(70)+Chr(97)+Chr(99)+Chr(116)+Chr(111)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=_1IO1O1I_1001()
m.TimelineReferencePoints=_0_IO11O1_0OO()
m.ServiceEndpoints=_OI0O__0OII11()
m.isDestroyed=(1=2)
m.eventFactory=_0_1_1IO_0_IO()
m.configurationService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(&H66)+Chr(&H69)+Chr(&H67)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.configurationService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
services.AddReplace((Chr(99)+Chr(&H6f)+Chr(110)+Chr(102)+Chr(&H69)+Chr(103)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.configurationService)
m.mediaQualityService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(77)+Chr(101)+Chr(&H64)+Chr(&H69)+Chr(97)+Chr(&H51)+Chr(117)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(116)+Chr(&H79)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.mediaQualityService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),video)
m.mediaQualityService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(95)+Chr(&H49)+Chr(&H31)+Chr(&H31)+Chr(&H30)+Chr(79)+Chr(95)+Chr(&H4f)+Chr(95)+Chr(48)+Chr(79)+Chr(&H5f)))
services.AddReplace((Chr(109)+Chr(&H65)+Chr(100)+Chr(105)+Chr(97)+Chr(&H51)+Chr(117)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H74)+Chr(121)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),m.mediaQualityService)
m.advertisingService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(103)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(101)+Chr(114)+Chr(&H74)+Chr(105)+Chr(&H73)+Chr(105)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.advertisingService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),m.top,m.bitmovinPlayerTask)
m.advertisingService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(100)),(Chr(95)+Chr(&H49)+Chr(79)+Chr(95)+Chr(&H31)+Chr(79)+Chr(95)+Chr(&H5f)+Chr(&H31)+Chr(&H5f)+Chr(&H5f)+Chr(73)+Chr(&H31)))
services.AddReplace((Chr(97)+Chr(100)+Chr(&H76)+Chr(&H65)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),m.advertisingService)
m.licensingService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H4c)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)))
m.licensingService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),m.deficiencyService,m.bitmovinPlayerTask,getVersion())
m.licensingService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H30)+Chr(&H4f)+Chr(&H4f)+Chr(49)+Chr(73)+Chr(79)+Chr(95)+Chr(73)+Chr(&H4f)+Chr(95)+Chr(49)+Chr(79)))
services.AddReplace((Chr(108)+Chr(&H69)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H69)+Chr(110)+Chr(103)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),m.licensingService)
m.impressionService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H67)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(73)+Chr(109)+Chr(112)+Chr(&H72)+Chr(101)+Chr(115)+Chr(115)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.impressionService.callFunc((Chr(105)+Chr(110)+Chr(105)+Chr(116)+Chr(&H69)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.bitmovinPlayerTask,video,getVersion())
m.impressionService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(&H5f)+Chr(79)+Chr(48)+Chr(&H31)+Chr(73)+Chr(&H49)+Chr(&H4f)+Chr(&H31)+Chr(&H49)+Chr(95)+Chr(79)+Chr(&H30)+Chr(49)))
services.AddReplace((Chr(&H69)+Chr(&H6d)+Chr(&H70)+Chr(114)+Chr(101)+Chr(&H73)+Chr(115)+Chr(105)+Chr(111)+Chr(110)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),m.impressionService)
m.playbackService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H62)+Chr(97)+Chr(99)+Chr(107)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.playbackService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(122)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),video)
m.playbackService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(117)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(95)+Chr(95)+Chr(49)+Chr(49)+Chr(48)+Chr(&H4f)+Chr(79)+Chr(79)+Chr(&H4f)+Chr(&H30)+Chr(48)+Chr(95)))
services.AddReplace((Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(97)+Chr(99)+Chr(&H6b)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.playbackService)
m.metadataService=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H4d)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(100)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.metadataService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(101)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),video,m.top,services,m.bitmovinPlayerTask)
services.AddReplace((Chr(&H6d)+Chr(&H65)+Chr(&H74)+Chr(&H61)+Chr(100)+Chr(&H61)+Chr(116)+Chr(&H61)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.metadataService)
m.thumbnailService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(84)+Chr(&H68)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(110)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.thumbnailService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),video)
services.AddReplace((Chr(116)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),m.thumbnailService)
m.audioService=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(65)+Chr(117)+Chr(&H64)+Chr(&H69)+Chr(&H6f)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)))
m.audioService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),video)
m.audioService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(95)+Chr(48)+Chr(95)+Chr(&H30)+Chr(48)+Chr(&H4f)+Chr(&H5f)+Chr(&H31)+Chr(&H4f)+Chr(73)+Chr(95)+Chr(&H31)+Chr(&H49)))
services.AddReplace((Chr(97)+Chr(117)+Chr(&H64)+Chr(&H69)+Chr(&H6f)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.audioService)
m.captionService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H43)+Chr(97)+Chr(&H70)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.captionService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),video)
m.captionService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(&H5f)+Chr(&H4f)+Chr(&H49)+Chr(&H30)+Chr(73)+Chr(&H4f)+Chr(&H49)+Chr(48)+Chr(&H49)+Chr(73)+Chr(48)+Chr(73)+Chr(&H30)))
services.AddReplace((Chr(&H63)+Chr(97)+Chr(112)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.captionService)
m.initializationService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H49)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)))
m.initializationService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),video,m.bitmovinPlayerTask,m.top,services)
m.initializationService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(&H49)+Chr(48)+Chr(&H30)+Chr(&H31)+Chr(&H4f)+Chr(48)+Chr(79)+Chr(&H49)+Chr(&H5f)+Chr(79)+Chr(&H30)+Chr(&H31)))
services.AddReplace((Chr(99)+Chr(&H61)+Chr(&H70)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),m.initializationService)
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H67)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(&H65)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(&H6a)+Chr(101)+Chr(99)+Chr(&H74)+Chr(&H4d)+Chr(&H61)+Chr(112)+Chr(&H70)+Chr(&H65)+Chr(114)))
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_001_1OI1O11O)
if m.isDestroyed return invalid 
_O01O__O_01OO()
m.initializationService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(117)+Chr(&H70)),_001_1OI1O11O)
end function
function getConfig(_011_10IO1IOI=invalid)
if m.isDestroyed return invalid 
config=m.configurationService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(67)+Chr(111)+Chr(110)+Chr(&H66)+Chr(105)+Chr(&H67)),invalid)
if _I0III10_1O_I(config.source)
config.source=config.source.clone((1=1))
end if
return config 
end function
function getVersion(__O10OO_OO011=invalid)
if m.isDestroyed return invalid 
return(Chr(49)+Chr(&H2e)+Chr(&H33)+Chr(57)+Chr(&H2e)+Chr(&H31)) 
end function
sub _1I1OOO_OOI_0()
if m.Video<>invalid
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(97)+Chr(116)+Chr(101)),m.Video.state)
if m.Video.state=(Chr(&H65)+Chr(&H72)+Chr(114)+Chr(&H6f)+Chr(114))
errorCode=m.bitmovinModelObjectMapper.callFunc((Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(117)+Chr(&H56)+Chr(105)+Chr(&H64)+Chr(101)+Chr(&H6f)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(67)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(84)+Chr(&H6f)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(67)+Chr(111)+Chr(&H64)+Chr(&H65)),m.Video.errorCode)
m.deficiencyService.callFunc((Chr(111)+Chr(110)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(101)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)),errorCode))
else if m.Video.state=(Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(105)+Chr(110)+Chr(103))
if m.KeyEventHandler.seeking
if m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(76)+Chr(&H69)+Chr(118)+Chr(101)))
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=m.top.currentTime
end if
_O01O__O_01OO()
end if
else if m.Video.state=(Chr(102)+Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(&H68)+Chr(101)+Chr(&H64))
_O01O__O_01OO()
end if
end if
end sub
sub _O01O__O_01OO()
m.KeyEventHandler.seeking=(1=2)
end sub
sub play(_O0O__01I1_0I=invalid)
if m.isDestroyed return 
m.playBackService.callFunc((Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121)))
end sub
sub instantReplay(_OOO00_0I0_1I=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H69)+Chr(110)+Chr(115)+Chr(116)+Chr(97)+Chr(110)+Chr(&H74)+Chr(82)+Chr(&H65)+Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(121)))
end sub
sub pause(__000I__10O10=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(&H61)+Chr(&H75)+Chr(&H73)+Chr(101)))
end sub
sub preload(_0O00O11OO_I0=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(114)+Chr(&H65)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64)))
end sub
sub seek(_1OO1_O0_I1OO)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(101)+Chr(&H6b)),_1OO1_O0_I1OO)
end sub
sub mute(_00OIII0_I1__=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)))
end sub
sub unmute(_1I0O11_10_I0=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H75)+Chr(&H6e)+Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)))
end sub
sub captionMode(_01IO01I001O1)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(67)+Chr(97)+Chr(112)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)),_01IO01I001O1)
end sub
sub setCaptionMode(_I__0_IO_010O)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H43)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),_I__0_IO_010O)
end sub
function isMuted(_I1_0I101IIO1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(&H4d)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(&H64))) 
end function
function isPlaying(_0110O_I_0O0O=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(110)+Chr(103))) 
end function
function isPaused(_O_O1_O_0O11_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(80)+Chr(&H61)+Chr(&H75)+Chr(&H73)+Chr(&H65)+Chr(100))) 
end function
function isStalled(_1O0O0O10IOI1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(108)+Chr(108)+Chr(&H65)+Chr(&H64))) 
end function
function availableSubtitles(_I00OIO0_IO01=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(97)+Chr(&H76)+Chr(97)+Chr(&H69)+Chr(108)+Chr(97)+Chr(&H62)+Chr(108)+Chr(101)+Chr(83)+Chr(&H75)+Chr(&H62)+Chr(116)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(101)+Chr(115))) 
end function
function getSubtitle(_1_10IO0_0OII=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(83)+Chr(&H75)+Chr(&H62)+Chr(116)+Chr(105)+Chr(116)+Chr(&H6c)+Chr(&H65))) 
end function
function setSubtitle(_I1__10II0I01)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(83)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(&H74)+Chr(108)+Chr(&H65)),_I1__10II0I01)
end function
function setSubtitleStyles(_I_OI_1_O1111)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H53)+Chr(&H75)+Chr(98)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(101)+Chr(&H53)+Chr(&H74)+Chr(&H79)+Chr(108)+Chr(101)+Chr(115)),_I_OI_1_O1111)
end function
function getSubtitleStyles(_OI0_O1_1_I11=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H53)+Chr(117)+Chr(&H62)+Chr(116)+Chr(&H69)+Chr(&H74)+Chr(108)+Chr(&H65)+Chr(83)+Chr(&H74)+Chr(121)+Chr(&H6c)+Chr(101)+Chr(&H73))) 
end function
function availableAudio(_O_1O110O_IO0=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(&H61)+Chr(118)+Chr(97)+Chr(&H69)+Chr(108)+Chr(97)+Chr(98)+Chr(&H6c)+Chr(&H65)+Chr(&H41)+Chr(117)+Chr(100)+Chr(&H69)+Chr(111)),invalid) 
end function
function getAudio(_0_I10O1_1101=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(117)+Chr(&H64)+Chr(105)+Chr(111)),invalid) 
end function
function setAudio(_0I_O01O00I00)
if m.isDestroyed return invalid 
m.audioService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H41)+Chr(117)+Chr(100)+Chr(&H69)+Chr(111)),_0I_O01O00I00)
end function
sub unload(_1I01OO_1_II0=invalid)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H75)+Chr(110)+Chr(&H6c)+Chr(&H6f)+Chr(97)+Chr(&H64)),invalid)
end sub
sub load(_O00OI00_IO0_)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(108)+Chr(111)+Chr(97)+Chr(100)),_O00OI00_IO0_)
end sub
function getDuration(__0_O100II_II=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(68)+Chr(117)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e))) 
end function
sub timeShift(_1_101010II11)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H74)+Chr(&H69)+Chr(&H6d)+Chr(&H65)+Chr(83)+Chr(104)+Chr(105)+Chr(&H66)+Chr(&H74)),_1_101010II11)
end sub
function getTimeShift(_O_I1001IO_I1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(84)+Chr(105)+Chr(109)+Chr(&H65)+Chr(&H53)+Chr(104)+Chr(&H69)+Chr(&H66)+Chr(&H74))) 
end function
function getMaxTimeShift(_0110__IO0O__=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(77)+Chr(97)+Chr(120)+Chr(84)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(&H53)+Chr(104)+Chr(&H69)+Chr(102)+Chr(&H74))) 
end function
sub _I00O__00IO_1()
m.top.currentTime=m.Video.position
end sub
function isLive(_IIOOI1OO_O__=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(&H4c)+Chr(105)+Chr(118)+Chr(&H65))) 
end function
sub setHttpHeaders(_I_011__1II01)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(72)+Chr(116)+Chr(&H74)+Chr(112)+Chr(&H48)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(&H72)+Chr(&H73)),_I_011__1II01)
end sub
sub _I_I_II00IO0_(_I1O_010I11IO)
previousFocusedNodeId=_I1O_010I11IO.getNode()
if not ___0O_II_00I_(ad_getActiveAdBreak())return 
if previousFocusedNodeId=m.top.id and m.Video.enableUI
_000III_1__1O()
end if
end sub
sub _000III_1__1O()
m.KeyEventHandler.setFocus((1=1))
end sub
function getThumbnail(_O0I_OIIII0_I)
if m.isDestroyed return invalid 
if ___0O_II_00I_(_O0I_OIIII0_I)
return invalid 
end if
return m.thumbnailService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(84)+Chr(104)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(105)+Chr(108)),_O0I_OIIII0_I) 
end function
sub ad_schedule(_00I100I00O0I=invalid)
if m.isDestroyed return 
if ___0O_II_00I_(_00I100I00O0I)return 
m.advertisingService.callFunc((Chr(&H73)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(&H75)+Chr(&H6c)+Chr(&H65)+Chr(65)+Chr(100)+Chr(&H73)),_00I100I00O0I)
end sub
function ad_list(_0OIIO__O_11_=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(65)+Chr(100)+Chr(&H4c)+Chr(105)+Chr(115)+Chr(116)),invalid) 
end function
function ad_getActiveAdBreak(_IIOOOI0O_I_I=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(&H41)+Chr(99)+Chr(&H74)+Chr(&H69)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H6b)),invalid) 
end function
sub ad_discardAdBreak(___1O0II1IIOI)
if m.isDestroyed return 
if ___0O_II_00I_(___1O0II1IIOI)return 
m.advertisingService.callFunc((Chr(100)+Chr(&H69)+Chr(115)+Chr(&H63)+Chr(&H61)+Chr(114)+Chr(&H64)+Chr(65)+Chr(100)+Chr(66)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H6b)),___1O0II1IIOI)
end sub
sub _10___0OOIOO1()
m.top.destroy=m.eventFactory.createBitmovinBaseEvent(m.top.bitmovinFields.DESTROY)
m.isDestroyed=(1=1)
m.BitmovinPlayerTask.callFunc((Chr(115)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(&H54)+Chr(&H61)+Chr(115)+Chr(107)),invalid)
_01IO1O011O1_()
_I001OI1_0IO1()
end sub
sub destroy(____O_0IO1_0_=invalid)
_10___0OOIOO1()
end sub
sub _01IO1O011O1_()
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)))
m.video.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)))
m.video.unobserveFieldScoped((Chr(&H64)+Chr(111)+Chr(119)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(100)+Chr(&H65)+Chr(&H64)+Chr(&H53)+Chr(101)+Chr(&H67)+Chr(109)+Chr(&H65)+Chr(110)+Chr(&H74)))
m.video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(100)+Chr(&H69)+Chr(&H6f)+Chr(&H54)+Chr(&H72)+Chr(97)+Chr(99)+Chr(&H6b)))
m.video.unobserveFieldScoped((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(116)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(110)+Chr(&H64)+Chr(101)+Chr(120)))
m.video.unobserveFieldScoped((Chr(100)+Chr(117)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)))
m.top.unobserveFieldScoped((Chr(&H66)+Chr(&H6f)+Chr(&H63)+Chr(117)+Chr(&H73)+Chr(&H65)+Chr(&H64)+Chr(67)+Chr(104)+Chr(&H69)+Chr(&H6c)+Chr(&H64)))
m.playbackService.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(117)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)))
end sub
sub _I001OI1_0IO1()
m.KeyEventHandler.callFunc((Chr(&H64)+Chr(&H65)+Chr(&H73)+Chr(&H74)+Chr(114)+Chr(&H6f)+Chr(121)))
end sub
sub ___110OOOO00_(_O01OI00O_0I1)
eventName=_O01OI00O_0I1.getData().eventName
eventData=_O01OI00O_0I1.getData().eventData
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
?(Chr(&H43)+Chr(&H68)+Chr(97)+Chr(110)+Chr(&H67)+Chr(101)+Chr(&H20)+Chr(&H74)+Chr(&H6f)+Chr(&H20)+Chr(&H70)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(&H20)+Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(58)+Chr(32));m.top.playerState
else if eventName=m.top.BitmovinFields.MUTED
m.top.muted=eventData
else if eventName=m.top.BitmovinFields.UNMUTED
m.top.unmuted=eventData
end if
end sub
sub _1O0__1OO_0_I(__II0OOOOO01O)
eventName=__II0OOOOO01O.getData().eventName
if eventName=m.top.BitmovinFields.DESTROY and not m.isDestroyed
_10___0OOIOO1()
end if
end sub
sub _0_00O_1OI_1I(__101I0IO0O1O)
eventName=__101I0IO0O1O.getData().eventName
eventData=__101I0IO0O1O.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
else if eventName=m.top.BitmovinFields.AUDIO_CHANGED
m.top.audioChanged=eventData
end if
end sub
sub _OI0IOI0II0I0(_I1O11100O1I_)
eventName=_I1O11100O1I_.getData().eventName
eventData=_I1O11100O1I_.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
end if
end sub
sub _O01IIO1I_O01(___1O_IO00OI1)
eventData=___1O_IO00OI1.getData()
if eventData.type=m.top.BitmovinFields.IMPRESSION
m.top.impression=eventData
end if
end sub
sub _0OO1IO_IO_1O(___O0_0011OOO)
eventData=___O0_0011OOO.getData()
if eventData.type=m.top.BitmovinFields.LICENSE_VALIDATED
m.top.licenseValidated=eventData
end if
end sub
sub _I001O0OI_O01(_10__0O0IO00I)
eventName=_10__0O0IO00I.getData().eventName
eventData=_10__0O0IO00I.getData().eventData
if eventName=m.top.BitmovinFields.SOURCE_LOADED
_OO00_0I0IOO1()
m.top.sourceLoaded=eventData
else if eventName=m.top.BitmovinFields.SOURCE_UNLOADED
__10O1O1I0O_O()
m.top.sourceUnloaded=eventData
else if eventName=m.top.BitmovinFields.PLAY
m.top.play=eventData
else if eventName=(Chr(95)+Chr(&H4f)+Chr(&H30)+Chr(49)+Chr(79)+Chr(&H5f)+Chr(95)+Chr(&H4f)+Chr(&H5f)+Chr(48)+Chr(&H31)+Chr(&H4f)+Chr(79))
_O01O__O_01OO()
end if
end sub
sub _OO00_0I0IOO1()
m.Video.observeFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(&H65)),(Chr(95)+Chr(49)+Chr(&H49)+Chr(&H31)+Chr(&H4f)+Chr(79)+Chr(&H4f)+Chr(95)+Chr(&H4f)+Chr(&H4f)+Chr(73)+Chr(95)+Chr(&H30)))
m.Video.observeFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(105)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)),(Chr(95)+Chr(73)+Chr(48)+Chr(&H30)+Chr(79)+Chr(&H5f)+Chr(95)+Chr(&H30)+Chr(&H30)+Chr(&H49)+Chr(79)+Chr(95)+Chr(49)))
end sub
sub __10O1O1I0O_O()
m.Video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(116)+Chr(101)))
m.Video.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)))
end sub
sub _IO_1O__1__I1(_1I1II0OIOI_1)
eventData=_1I1II0OIOI_1.getData()
eventType=eventData.type
if eventType=m.top.BitmovinPlayerState.PAUSED or eventType=m.top.BitmovinPlayerState.PLAYING
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)),eventType)
else if eventType=m.top.BitmovinFields.AD_STARTED
m.top.adStarted=eventData
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(83)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101)),m.top.BitmovinPlayerState.PLAYING)
end if
end sub
sub __I110O_O_0O_(_0OOI_II__O1_)
eventData=_0OOI_II__O1_.getData()
if eventData.type=m.top.BitmovinFields.DOWNLOAD_FINISHED
m.top.downloadFinished=eventData
else if eventData.type=m.top.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED
m.top.videoDownloadQualityChanged=eventData
else if eventData.type=m.top.BitmovinFields.AUDIO_DOWNLOAD_QUALITY_CHANGED
m.top.audioDownloadQualityChanged=eventData
end if
end sub
