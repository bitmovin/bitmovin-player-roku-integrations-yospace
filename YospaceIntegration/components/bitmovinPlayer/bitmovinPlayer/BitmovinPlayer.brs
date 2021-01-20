sub init()
m.BitmovinComponentIds=_O0OIII0IO00O()
services={}
video=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H56)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(&H6f)))
video.id=m.BitmovinComponentIds.MAIN_VIDEO
video.translation=(Chr(91)+Chr(&H30)+Chr(&H2c)+Chr(48)+Chr(93))
keyEventHandler=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H4b)+Chr(&H65)+Chr(121)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H48)+Chr(97)+Chr(&H6e)+Chr(100)+Chr(108)+Chr(101)+Chr(&H72)))
keyEventHandler.id=m.BitmovinComponentIds.KEY_EVENT_HANDLER
video.appendChild(keyEventHandler)
m.top.appendChild(video)
m.video=video
bitmovinPlayerTask=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H54)+Chr(97)+Chr(&H73)+Chr(107)))
bitmovinPlayerTask.id=m.BitmovinComponentIds.BITMOVIN_PLAYER_TASK
m.top.appendChild(bitmovinPlayerTask)
m.deviceInfo=CreateObject((Chr(&H72)+Chr(111)+Chr(&H44)+Chr(101)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H49)+Chr(110)+Chr(102)+Chr(&H6f)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(102)+Chr(111)+Chr(99)+Chr(&H75)+Chr(&H73)+Chr(101)+Chr(100)+Chr(&H43)+Chr(104)+Chr(&H69)+Chr(108)+Chr(100)),(Chr(&H5f)+Chr(95)+Chr(79)+Chr(73)+Chr(&H31)+Chr(&H49)+Chr(&H30)+Chr(&H31)+Chr(&H5f)+Chr(73)+Chr(95)+Chr(&H49)+Chr(&H30)))
m.BitmovinPlayerTask=m.top.findNode((Chr(&H42)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(110)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(84)+Chr(97)+Chr(&H73)+Chr(107)))
m.top.BitmovinPlayerState=__OII0I0O_O01()
m.top.BitmovinFunctions=_11_1OIIIO1II()
m.top.BitmovinFields=_0O1I0_1O_O0I()
m.BitmovinConfigAssetTypes=_____IO1O000I()
m.KeyEventHandler=m.top.findNode((Chr(75)+Chr(&H65)+Chr(121)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(72)+Chr(&H61)+Chr(&H6e)+Chr(&H64)+Chr(&H6c)+Chr(&H65)+Chr(&H72)))
m.KeyEventHandler.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H75)+Chr(112)),invalid)
m.deficiencyFactory=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(68)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(105)+Chr(&H65)+Chr(&H6e)+Chr(99)+Chr(121)+Chr(70)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(69)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(&H73)))
m.deficiencyService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H44)+Chr(101)+Chr(102)+Chr(105)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(&H63)+Chr(121)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.deficiencyService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.top)
m.deficiencyService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(48)+Chr(&H5f)+Chr(48)+Chr(48)+Chr(49)+Chr(&H31)+Chr(&H5f)+Chr(95)+Chr(&H49)+Chr(73)+Chr(&H5f)+Chr(73)))
services.AddReplace((Chr(100)+Chr(101)+Chr(102)+Chr(&H69)+Chr(&H63)+Chr(105)+Chr(101)+Chr(110)+Chr(&H63)+Chr(&H79)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),m.deficiencyService)
m.asyncOperationFactory=createObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(70)+Chr(97)+Chr(99)+Chr(&H74)+Chr(111)+Chr(&H72)+Chr(121)))
m.BitmovinAsyncOperationTypes=_1O_O11O1OOO_()
m.TimelineReferencePoints=_I10III1IIIII()
m.ServiceEndpoints=_I0O_0_10O110()
m.isDestroyed=(1=2)
m.eventFactory=_111O_11__11O()
m.configurationService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H43)+Chr(&H6f)+Chr(&H6e)+Chr(102)+Chr(&H69)+Chr(103)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)))
m.configurationService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),invalid)
services.AddReplace((Chr(&H63)+Chr(111)+Chr(&H6e)+Chr(102)+Chr(&H69)+Chr(&H67)+Chr(117)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),m.configurationService)
m.mediaQualityService=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H4d)+Chr(101)+Chr(&H64)+Chr(105)+Chr(&H61)+Chr(&H51)+Chr(117)+Chr(97)+Chr(108)+Chr(105)+Chr(116)+Chr(&H79)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)))
m.mediaQualityService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(116)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),video)
m.mediaQualityService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H5f)+Chr(&H31)+Chr(&H30)+Chr(&H30)+Chr(&H5f)+Chr(&H5f)+Chr(&H5f)+Chr(&H30)+Chr(&H4f)+Chr(95)+Chr(79)+Chr(&H4f)))
services.AddReplace((Chr(109)+Chr(101)+Chr(&H64)+Chr(&H69)+Chr(97)+Chr(&H51)+Chr(&H75)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(116)+Chr(121)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),m.mediaQualityService)
m.advertisingService=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(103)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H41)+Chr(&H64)+Chr(118)+Chr(&H65)+Chr(114)+Chr(&H74)+Chr(&H69)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)))
m.advertisingService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(97)+Chr(108)+Chr(105)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),m.top,m.bitmovinPlayerTask)
m.advertisingService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(&H30)+Chr(73)+Chr(73)+Chr(95)+Chr(&H30)+Chr(&H4f)+Chr(79)+Chr(49)+Chr(&H5f)+Chr(&H31)+Chr(95)+Chr(&H4f)))
services.AddReplace((Chr(&H61)+Chr(100)+Chr(118)+Chr(101)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),m.advertisingService)
m.licensingService=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(76)+Chr(&H69)+Chr(&H63)+Chr(101)+Chr(&H6e)+Chr(115)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.licensingService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.deficiencyService,m.bitmovinPlayerTask,getVersion())
m.licensingService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(48)+Chr(&H31)+Chr(95)+Chr(&H49)+Chr(79)+Chr(&H31)+Chr(95)+Chr(73)+Chr(&H4f)+Chr(95)+Chr(79)+Chr(73)))
services.AddReplace((Chr(&H6c)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.licensingService)
m.impressionService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H67)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H49)+Chr(109)+Chr(112)+Chr(114)+Chr(&H65)+Chr(115)+Chr(115)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.impressionService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(105)+Chr(122)+Chr(101)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.bitmovinPlayerTask,video,getVersion())
m.impressionService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(&H5f)+Chr(49)+Chr(&H4f)+Chr(&H31)+Chr(&H30)+Chr(49)+Chr(&H5f)+Chr(&H4f)+Chr(&H5f)+Chr(&H30)+Chr(&H49)+Chr(79)+Chr(&H5f)))
services.AddReplace((Chr(105)+Chr(&H6d)+Chr(&H70)+Chr(&H72)+Chr(101)+Chr(115)+Chr(115)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.impressionService)
m.playbackService=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(98)+Chr(97)+Chr(&H63)+Chr(107)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)))
m.playbackService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),video)
m.playbackService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(99)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(101)+Chr(100)),(Chr(95)+Chr(95)+Chr(95)+Chr(&H4f)+Chr(95)+Chr(&H5f)+Chr(73)+Chr(&H30)+Chr(79)+Chr(&H49)+Chr(73)+Chr(&H4f)+Chr(95)))
services.AddReplace((Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(97)+Chr(99)+Chr(&H6b)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.playbackService)
m.metadataService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(77)+Chr(&H65)+Chr(116)+Chr(97)+Chr(100)+Chr(&H61)+Chr(116)+Chr(97)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)))
m.metadataService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),video,m.top,services,m.bitmovinPlayerTask)
services.AddReplace((Chr(&H6d)+Chr(101)+Chr(&H74)+Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H61)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),m.metadataService)
m.thumbnailService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(84)+Chr(&H68)+Chr(&H75)+Chr(109)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.thumbnailService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(97)+Chr(108)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),video)
services.AddReplace((Chr(116)+Chr(104)+Chr(&H75)+Chr(109)+Chr(98)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),m.thumbnailService)
m.audioService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(65)+Chr(&H75)+Chr(&H64)+Chr(105)+Chr(&H6f)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.audioService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),video)
m.audioService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(95)+Chr(48)+Chr(49)+Chr(&H4f)+Chr(79)+Chr(&H30)+Chr(&H31)+Chr(&H49)+Chr(&H4f)+Chr(&H30)+Chr(&H31)+Chr(49)+Chr(79)))
services.AddReplace((Chr(97)+Chr(&H75)+Chr(100)+Chr(105)+Chr(111)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),m.audioService)
m.captionService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H43)+Chr(97)+Chr(&H70)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.captionService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),video)
m.captionService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(100)),(Chr(95)+Chr(73)+Chr(79)+Chr(49)+Chr(95)+Chr(73)+Chr(&H5f)+Chr(&H30)+Chr(&H49)+Chr(49)+Chr(&H49)+Chr(&H5f)+Chr(49)))
services.AddReplace((Chr(99)+Chr(97)+Chr(112)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),m.captionService)
m.initializationService=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(73)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)))
m.initializationService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),video,m.bitmovinPlayerTask,m.top,services)
m.initializationService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(99)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(73)+Chr(&H30)+Chr(48)+Chr(&H5f)+Chr(49)+Chr(49)+Chr(49)+Chr(95)+Chr(&H31)+Chr(49)+Chr(&H4f)+Chr(49)))
services.AddReplace((Chr(99)+Chr(&H61)+Chr(&H70)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.initializationService)
m.bitmovinModelObjectMapper=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H67)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(100)+Chr(101)+Chr(108)+Chr(&H4f)+Chr(&H62)+Chr(&H6a)+Chr(&H65)+Chr(99)+Chr(&H74)+Chr(77)+Chr(97)+Chr(112)+Chr(&H70)+Chr(101)+Chr(114)))
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_IO__01IO0_10)
if m.isDestroyed return invalid 
_OI__IOI111O_()
m.initializationService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(117)+Chr(&H70)),_IO__01IO0_10)
end function
function getConfig(_00__0O__II_1=invalid)
if m.isDestroyed return invalid 
config=m.configurationService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(&H43)+Chr(111)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(103)),invalid)
if _1_00_O_O0I_I(config.source)
config.source=config.source.clone((1=1))
end if
return config 
end function
function getVersion(_0__II110II1I=invalid)
if m.isDestroyed return invalid 
return(Chr(49)+Chr(46)+Chr(&H33)+Chr(&H39)+Chr(46)+Chr(&H30)) 
end function
sub __0OI1_O0I__1()
if m.Video<>invalid
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(83)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)),m.Video.state)
if m.Video.state=(Chr(101)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114))
errorCode=m.bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(&H56)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(111)+Chr(69)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H43)+Chr(&H6f)+Chr(100)+Chr(101)+Chr(84)+Chr(111)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H43)+Chr(111)+Chr(100)+Chr(&H65)),m.Video.errorCode)
m.deficiencyService.callFunc((Chr(111)+Chr(&H6e)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(114)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(114)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)),errorCode))
else if m.Video.state=(Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(103))
if m.KeyEventHandler.seeking
if m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(76)+Chr(105)+Chr(118)+Chr(&H65)))
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=m.top.currentTime
end if
_OI__IOI111O_()
end if
else if m.Video.state=(Chr(102)+Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(100))
_OI__IOI111O_()
end if
end if
end sub
sub _OI__IOI111O_()
m.KeyEventHandler.seeking=(1=2)
end sub
sub play(_0I0O__O_OI0O=invalid)
if m.isDestroyed return 
m.playBackService.callFunc((Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)))
end sub
sub instantReplay(_O11OI10_OI10=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H6e)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)))
end sub
sub pause(__011_I_I_II1=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(112)+Chr(97)+Chr(117)+Chr(115)+Chr(&H65)))
end sub
sub preload(_01I0IIIII0IO=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(&H72)+Chr(101)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(&H64)))
end sub
sub seek(_1IO1I__110__)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(101)+Chr(107)),_1IO1I__110__)
end sub
sub mute(_I1_11O11O_I_=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(109)+Chr(117)+Chr(&H74)+Chr(&H65)))
end sub
sub unmute(_OI1II0I11I01=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(117)+Chr(110)+Chr(&H6d)+Chr(&H75)+Chr(116)+Chr(&H65)))
end sub
sub captionMode(___I0I_I1O0O1)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H43)+Chr(97)+Chr(&H70)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)),___I0I_I1O0O1)
end sub
sub setCaptionMode(__01IOO1OOO1O)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H43)+Chr(97)+Chr(112)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),__01IOO1OOO1O)
end sub
function isMuted(_I_O1_IO1___O=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(&H4d)+Chr(117)+Chr(116)+Chr(&H65)+Chr(100))) 
end function
function isPlaying(___I0I1_1O10O=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H69)+Chr(&H6e)+Chr(103))) 
end function
function isPaused(_01I11IIIOI0_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(80)+Chr(&H61)+Chr(&H75)+Chr(&H73)+Chr(101)+Chr(&H64))) 
end function
function isStalled(_I_0I0I_II000=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(83)+Chr(116)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(&H65)+Chr(&H64))) 
end function
function availableSubtitles(_I_11O01_II00=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(97)+Chr(118)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H61)+Chr(&H62)+Chr(108)+Chr(&H65)+Chr(&H53)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(101)+Chr(&H73))) 
end function
function getSubtitle(_I_0O1__1101_=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H53)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(116)+Chr(&H6c)+Chr(101))) 
end function
function setSubtitle(_OI___1O0_OOO)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(83)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(105)+Chr(116)+Chr(108)+Chr(&H65)),_OI___1O0_OOO)
end function
function setSubtitleStyles(_11_111_01I_0)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(83)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(101)+Chr(&H53)+Chr(116)+Chr(121)+Chr(&H6c)+Chr(&H65)+Chr(&H73)),_11_111_01I_0)
end function
function getSubtitleStyles(_I00_O1001I1O=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(83)+Chr(&H75)+Chr(98)+Chr(116)+Chr(&H69)+Chr(116)+Chr(&H6c)+Chr(&H65)+Chr(83)+Chr(116)+Chr(&H79)+Chr(108)+Chr(&H65)+Chr(115))) 
end function
function availableAudio(_1_O__0011O__=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(97)+Chr(118)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H61)+Chr(&H62)+Chr(108)+Chr(&H65)+Chr(&H41)+Chr(117)+Chr(&H64)+Chr(&H69)+Chr(&H6f)),invalid) 
end function
function getAudio(___0_I_0__O1O=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(&H41)+Chr(117)+Chr(&H64)+Chr(105)+Chr(&H6f)),invalid) 
end function
function setAudio(_0O_0_I11III_)
if m.isDestroyed return invalid 
m.audioService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(&H75)+Chr(&H64)+Chr(105)+Chr(111)),_0O_0_I11III_)
end function
sub unload(__I01_1_OI1OI=invalid)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(117)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)),invalid)
end sub
sub load(_0I0IOO101IO0)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H6c)+Chr(&H6f)+Chr(97)+Chr(100)),_0I0IOO101IO0)
end sub
function getDuration(_O00001I1OI10=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(&H44)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110))) 
end function
sub timeShift(_IOO10OO_I1_1)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(116)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(&H53)+Chr(&H68)+Chr(&H69)+Chr(&H66)+Chr(&H74)),_IOO10OO_I1_1)
end sub
function getTimeShift(_10_1I01OO0O_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(&H54)+Chr(105)+Chr(109)+Chr(101)+Chr(&H53)+Chr(&H68)+Chr(&H69)+Chr(102)+Chr(&H74))) 
end function
function getMaxTimeShift(_OO1_0_00I1_O=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H4d)+Chr(97)+Chr(120)+Chr(&H54)+Chr(&H69)+Chr(&H6d)+Chr(&H65)+Chr(&H53)+Chr(&H68)+Chr(105)+Chr(&H66)+Chr(&H74))) 
end function
sub _IO10O11_1_0_()
m.top.currentTime=m.Video.position
end sub
function isLive(_00O_1OI_I10_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(76)+Chr(105)+Chr(118)+Chr(&H65))) 
end function
sub setHttpHeaders(_1III0OI_0_I0)
if m.isDestroyed return 
m.configurationService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(72)+Chr(116)+Chr(116)+Chr(&H70)+Chr(72)+Chr(101)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(114)+Chr(&H73)),_1III0OI_0_I0)
end sub
sub __OI1I01_I_I0(_1II0_11O1110)
previousFocusedNodeId=_1II0_11O1110.getNode()
if not _I1_I11_1O_0I(ad_getActiveAdBreak())return 
if previousFocusedNodeId=m.top.id and m.Video.enableUI
__1O1IO__0II_()
end if
end sub
sub __1O1IO__0II_()
m.KeyEventHandler.setFocus((1=1))
end sub
function getThumbnail(_OI_0I1_11_1I)
if m.isDestroyed return invalid 
if _I1_I11_1O_0I(_OI_0I1_11_1I)
return invalid 
end if
return m.thumbnailService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(84)+Chr(&H68)+Chr(117)+Chr(109)+Chr(98)+Chr(110)+Chr(&H61)+Chr(105)+Chr(&H6c)),_OI_0I1_11_1I) 
end function
sub ad_schedule(_0I_1_O1__I00=invalid)
if m.isDestroyed return 
if _I1_I11_1O_0I(_0I_1_O1__I00)return 
m.advertisingService.callFunc((Chr(115)+Chr(99)+Chr(&H68)+Chr(101)+Chr(100)+Chr(117)+Chr(108)+Chr(&H65)+Chr(65)+Chr(&H64)+Chr(115)),_0I_1_O1__I00)
end sub
function ad_list(_10_1_OI1011O=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(&H64)+Chr(&H4c)+Chr(&H69)+Chr(&H73)+Chr(116)),invalid) 
end function
function ad_getActiveAdBreak(_O11I_110O0OI=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(65)+Chr(&H63)+Chr(116)+Chr(&H69)+Chr(&H76)+Chr(101)+Chr(&H41)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(97)+Chr(&H6b)),invalid) 
end function
sub ad_discardAdBreak(_1_O_O11OI1I_)
if m.isDestroyed return 
if _I1_I11_1O_0I(_1_O_O11OI1I_)return 
m.advertisingService.callFunc((Chr(100)+Chr(105)+Chr(115)+Chr(99)+Chr(&H61)+Chr(114)+Chr(100)+Chr(65)+Chr(&H64)+Chr(66)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(107)),_1_O_O11OI1I_)
end sub
sub __OI0_1__0O1_()
m.top.destroy=m.eventFactory.createBitmovinBaseEvent(m.top.bitmovinFields.DESTROY)
m.isDestroyed=(1=1)
m.BitmovinPlayerTask.callFunc((Chr(&H73)+Chr(116)+Chr(&H6f)+Chr(112)+Chr(&H54)+Chr(97)+Chr(&H73)+Chr(107)),invalid)
_10__I_IIOI11()
_10I0I11I_00I()
end sub
sub destroy(_O1I___0O_11O=invalid)
__OI0_1__0O1_()
end sub
sub _10__I_IIOI11()
m.video.unobserveFieldScoped((Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(&H65)))
m.video.unobserveFieldScoped((Chr(&H70)+Chr(111)+Chr(&H73)+Chr(105)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)))
m.video.unobserveFieldScoped((Chr(100)+Chr(111)+Chr(&H77)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64)+Chr(&H65)+Chr(100)+Chr(83)+Chr(&H65)+Chr(103)+Chr(109)+Chr(101)+Chr(&H6e)+Chr(&H74)))
m.video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(100)+Chr(&H69)+Chr(&H6f)+Chr(84)+Chr(114)+Chr(&H61)+Chr(99)+Chr(107)))
m.video.unobserveFieldScoped((Chr(&H63)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(110)+Chr(116)+Chr(73)+Chr(110)+Chr(100)+Chr(&H65)+Chr(&H78)))
m.video.unobserveFieldScoped((Chr(&H64)+Chr(117)+Chr(114)+Chr(&H61)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)))
m.top.unobserveFieldScoped((Chr(102)+Chr(&H6f)+Chr(99)+Chr(&H75)+Chr(&H73)+Chr(&H65)+Chr(100)+Chr(67)+Chr(&H68)+Chr(&H69)+Chr(&H6c)+Chr(&H64)))
m.playbackService.unobserveFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(100)))
end sub
sub _10I0I11I_00I()
m.KeyEventHandler.callFunc((Chr(&H64)+Chr(101)+Chr(&H73)+Chr(&H74)+Chr(114)+Chr(111)+Chr(121)))
end sub
sub ___O__I0OIIO_(_O_011II101I_)
eventName=_O_011II101I_.getData().eventName
eventData=_O_011II101I_.getData().eventData
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
?(Chr(&H43)+Chr(104)+Chr(&H61)+Chr(&H6e)+Chr(&H67)+Chr(&H65)+Chr(32)+Chr(116)+Chr(&H6f)+Chr(&H20)+Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(&H72)+Chr(32)+Chr(115)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H65)+Chr(58)+Chr(&H20));m.top.playerState
else if eventName=m.top.BitmovinFields.MUTED
m.top.muted=eventData
else if eventName=m.top.BitmovinFields.UNMUTED
m.top.unmuted=eventData
end if
end sub
sub _0_0011__II_I(_I1I1000II_II)
eventName=_I1I1000II_II.getData().eventName
if eventName=m.top.BitmovinFields.DESTROY and not m.isDestroyed
__OI0_1__0O1_()
end if
end sub
sub _01OO01IO011O(_I1_1OI100IOI)
eventName=_I1_1OI100IOI.getData().eventName
eventData=_I1_1OI100IOI.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
else if eventName=m.top.BitmovinFields.AUDIO_CHANGED
m.top.audioChanged=eventData
end if
end sub
sub _IO1_I_0I1I_1(__I1I0OOO1O_0)
eventName=__I1I0OOO1O_0.getData().eventName
eventData=__I1I0OOO1O_0.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
end if
end sub
sub _1O101_O_0IO_(__O011_0I0III)
eventData=__O011_0I0III.getData()
if eventData.type=m.top.BitmovinFields.IMPRESSION
m.top.impression=eventData
end if
end sub
sub _01_IO1_IO_OI(_1_0_11_001IO)
eventData=_1_0_11_001IO.getData()
if eventData.type=m.top.BitmovinFields.LICENSE_VALIDATED
m.top.licenseValidated=eventData
end if
end sub
sub _I00_111_11O1(_1OI01IOIOO1O)
eventName=_1OI01IOIOO1O.getData().eventName
eventData=_1OI01IOIOO1O.getData().eventData
if eventName=m.top.BitmovinFields.SOURCE_LOADED
_IOIOIO0_OO_I()
m.top.sourceLoaded=eventData
else if eventName=m.top.BitmovinFields.SOURCE_UNLOADED
_01_0__010OO1()
m.top.sourceUnloaded=eventData
else if eventName=m.top.BitmovinFields.PLAY
m.top.play=eventData
else if eventName=(Chr(&H5f)+Chr(79)+Chr(73)+Chr(&H5f)+Chr(&H5f)+Chr(73)+Chr(79)+Chr(73)+Chr(&H31)+Chr(49)+Chr(49)+Chr(&H4f)+Chr(&H5f))
_OI__IOI111O_()
end if
end sub
sub _IOIOIO0_OO_I()
m.Video.observeFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)),(Chr(95)+Chr(95)+Chr(48)+Chr(&H4f)+Chr(&H49)+Chr(&H31)+Chr(&H5f)+Chr(&H4f)+Chr(&H30)+Chr(&H49)+Chr(95)+Chr(95)+Chr(&H31)))
m.Video.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)),(Chr(95)+Chr(73)+Chr(79)+Chr(&H31)+Chr(&H30)+Chr(79)+Chr(&H31)+Chr(&H31)+Chr(95)+Chr(&H31)+Chr(95)+Chr(&H30)+Chr(&H5f)))
end sub
sub _01_0__010OO1()
m.Video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)))
m.Video.unobserveFieldScoped((Chr(&H70)+Chr(111)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)))
end sub
sub _0II_0OO1_1_O(__0O0I_I_001I)
eventData=__0O0I_I_001I.getData()
eventType=eventData.type
if eventType=m.top.BitmovinPlayerState.PAUSED or eventType=m.top.BitmovinPlayerState.PLAYING
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)),eventType)
else if eventType=m.top.BitmovinFields.AD_STARTED
m.top.adStarted=eventData
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72)+Chr(83)+Chr(116)+Chr(97)+Chr(116)+Chr(101)),m.top.BitmovinPlayerState.PLAYING)
end if
end sub
sub __100___0O_OO(_1O_1110O0_OO)
eventData=_1O_1110O0_OO.getData()
if eventData.type=m.top.BitmovinFields.DOWNLOAD_FINISHED
m.top.downloadFinished=eventData
else if eventData.type=m.top.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED
m.top.videoDownloadQualityChanged=eventData
else if eventData.type=m.top.BitmovinFields.AUDIO_DOWNLOAD_QUALITY_CHANGED
m.top.audioDownloadQualityChanged=eventData
end if
end sub
