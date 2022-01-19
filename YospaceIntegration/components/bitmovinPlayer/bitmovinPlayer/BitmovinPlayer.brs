sub init()
m.BitmovinComponentIds=__0I00OO11O0_()
m.video=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H56)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(111)))
m.video.id=m.BitmovinComponentIds.MAIN_VIDEO
m.video.translation=(Chr(91)+Chr(48)+Chr(44)+Chr(48)+Chr(93))
m.KeyEventHandler=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H4b)+Chr(&H65)+Chr(&H79)+Chr(&H45)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(72)+Chr(&H61)+Chr(&H6e)+Chr(&H64)+Chr(108)+Chr(101)+Chr(&H72)))
m.KeyEventHandler.id=m.BitmovinComponentIds.KEY_EVENT_HANDLER
m.video.appendChild(m.KeyEventHandler)
m.top.appendChild(m.video)
m.BitmovinPlayerTask=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(84)+Chr(97)+Chr(115)+Chr(&H6b)))
m.BitmovinPlayerTask.id=m.BitmovinComponentIds.BITMOVIN_PLAYER_TASK
m.top.appendChild(m.BitmovinPlayerTask)
m.deviceInfo=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(68)+Chr(&H65)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)+Chr(73)+Chr(&H6e)+Chr(102)+Chr(&H6f)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(&H66)+Chr(&H6f)+Chr(&H63)+Chr(117)+Chr(115)+Chr(&H65)+Chr(100)+Chr(67)+Chr(104)+Chr(&H69)+Chr(108)+Chr(100)),(Chr(&H5f)+Chr(48)+Chr(&H31)+Chr(&H30)+Chr(73)+Chr(73)+Chr(79)+Chr(&H4f)+Chr(48)+Chr(&H31)+Chr(48)+Chr(&H30)+Chr(79)))
m.top.BitmovinPlayerState=__O1_I_O1I_0_()
m.top.BitmovinFunctions=_IO__1__O1IO_()
m.top.BitmovinFields=_IOO11O01_10I()
m.BitmovinConfigAssetTypes=_O00IO0IIOOI_()
m.RokuNativePlayerStates=_OIIIOO00O0I1()
m.KeyEventHandler.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(117)+Chr(&H70)),invalid)
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H44)+Chr(101)+Chr(&H66)+Chr(&H69)+Chr(99)+Chr(105)+Chr(&H65)+Chr(110)+Chr(99)+Chr(&H79)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(116)+Chr(111)+Chr(114)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(115)))
m.configurationService=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(67)+Chr(111)+Chr(110)+Chr(&H66)+Chr(105)+Chr(&H67)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.configurationService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),invalid)
advertisingServiceDependencies={player:m.top,videoNode:m.video,services:{configurationService:m.configurationService},task:m.bitmovinPlayerTask}
m.advertisingService=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H67)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(101)+Chr(114)+Chr(&H74)+Chr(105)+Chr(115)+Chr(&H69)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)))
m.advertisingService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),advertisingServiceDependencies)
m.advertisingService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(79)+Chr(79)+Chr(&H4f)+Chr(&H30)+Chr(95)+Chr(48)+Chr(79)+Chr(&H30)+Chr(79)+Chr(&H49)+Chr(95)+Chr(&H49)))
deficiencyServiceDependencies={player:m.top,services:{advertisingService:m.advertisingService}}
m.deficiencyService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(68)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(101)+Chr(110)+Chr(&H63)+Chr(&H79)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)))
m.deficiencyService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),deficiencyServiceDependencies)
m.deficiencyService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(79)+Chr(99)+Chr(99)+Chr(117)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H31)+Chr(49)+Chr(73)+Chr(&H31)+Chr(&H49)+Chr(&H5f)+Chr(95)+Chr(&H49)+Chr(48)+Chr(73)+Chr(&H5f)+Chr(48)))
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(&H73)+Chr(&H79)+Chr(&H6e)+Chr(&H63)+Chr(&H4f)+Chr(&H70)+Chr(101)+Chr(114)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(&H46)+Chr(97)+Chr(99)+Chr(&H74)+Chr(111)+Chr(&H72)+Chr(&H79)))
m.BitmovinAsyncOperationTypes=_10I_O_1__O_1()
m.TimelineReferencePoints=_I0II0O1__0O0()
m.ServiceEndpoints=_O1I1OO0_II0I()
m.isDestroyed=(1=2)
mediaQualityServiceDependencies={videoNode:m.Video}
m.mediaQualityService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(77)+Chr(101)+Chr(&H64)+Chr(105)+Chr(&H61)+Chr(81)+Chr(&H75)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H74)+Chr(121)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.mediaQualityService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(108)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),mediaQualityServiceDependencies)
m.mediaQualityService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(&H5f)+Chr(49)+Chr(&H4f)+Chr(79)+Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(&H4f)+Chr(&H31)+Chr(&H30)+Chr(&H30)+Chr(49)+Chr(&H30)))
licensingServiceDependencies={services:{deficiencyService:m.deficiencyService},task:m.bitmovinPlayerTask,version:getVersion()}
m.licensingService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H4c)+Chr(105)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(&H69)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.licensingService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),licensingServiceDependencies)
m.licensingService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(79)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(95)+Chr(79)+Chr(95)+Chr(&H30)+Chr(&H4f)+Chr(&H49)+Chr(&H31)+Chr(48)+Chr(&H4f)+Chr(79)+Chr(&H49)+Chr(79)+Chr(&H49)))
timeServiceDependencies={videoNode:m.video}
m.timeService=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H54)+Chr(105)+Chr(109)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.timeService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),timeServiceDependencies)
m.timeService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(100)),(Chr(&H5f)+Chr(&H5f)+Chr(&H30)+Chr(&H30)+Chr(&H49)+Chr(95)+Chr(73)+Chr(49)+Chr(79)+Chr(95)+Chr(79)+Chr(&H4f)+Chr(&H49)))
playbackServiceDependencies={videoNode:m.video,services:{advertisingService:m.advertisingService,configurationService:m.configurationService}}
m.playbackService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(97)+Chr(&H63)+Chr(&H6b)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.playbackService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),playbackServiceDependencies)
m.playbackService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(95)+Chr(95)+Chr(&H31)+Chr(&H30)+Chr(&H30)+Chr(&H30)+Chr(&H5f)+Chr(&H4f)+Chr(&H5f)+Chr(79)+Chr(&H31)+Chr(&H4f)))
m.durationService=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H44)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.durationService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),playbackServiceDependencies)
m.durationService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(&H4f)+Chr(95)+Chr(&H30)+Chr(&H30)+Chr(95)+Chr(&H4f)+Chr(48)+Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(&H49)+Chr(95)))
impressionServiceDependencies={task:m.bitmovinPlayerTask,version:getVersion(),videoNode:m.video,services:{playbackService:m.playbackService,advertisingService:m.advertisingService}}
m.impressionService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(103)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H49)+Chr(109)+Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(105)+Chr(111)+Chr(110)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)))
m.impressionService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),impressionServiceDependencies)
m.impressionService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(95)+Chr(95)+Chr(49)+Chr(48)+Chr(&H31)+Chr(95)+Chr(&H49)+Chr(79)+Chr(79)+Chr(&H4f)+Chr(&H30)+Chr(79)+Chr(95)))
metadataServiceDependencies={player:m.top,services:{"mediaQualityService":m.mediaQualityService,"playbackService":m.playbackService,"configurationService":m.configurationService,"timeService":m.timeService},task:m.bitmovinPlayerTask,videoNode:m.video}
m.metadataService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H4d)+Chr(&H65)+Chr(116)+Chr(97)+Chr(100)+Chr(97)+Chr(116)+Chr(&H61)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.metadataService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),metadataServiceDependencies)
m.metadataService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(&H5f)+Chr(73)+Chr(79)+Chr(49)+Chr(&H31)+Chr(&H30)+Chr(&H30)+Chr(95)+Chr(73)+Chr(48)+Chr(&H31)+Chr(&H49)+Chr(&H30)))
m.BitmovinMetadataEventTypes=__I0I0II0OI11()
thumbnailServiceDependencies={services:{configurationService:m.configurationService,playbackService:m.playbackService},videoNode:m.video}
m.thumbnailService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H54)+Chr(&H68)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(110)+Chr(&H61)+Chr(105)+Chr(108)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)))
m.thumbnailService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),thumbnailServiceDependencies)
audioServiceDependencies={videoNode:m.video}
m.audioService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H75)+Chr(&H64)+Chr(105)+Chr(111)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)))
m.audioService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(122)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),audioServiceDependencies)
m.audioService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(100)),(Chr(95)+Chr(&H31)+Chr(49)+Chr(&H30)+Chr(&H31)+Chr(95)+Chr(&H5f)+Chr(79)+Chr(&H5f)+Chr(95)+Chr(&H4f)+Chr(49)+Chr(&H49)))
captionServiceDependencies={videoNode:m.video}
m.captionService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(67)+Chr(97)+Chr(112)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)))
m.captionService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),captionServiceDependencies)
m.captionService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H4f)+Chr(95)+Chr(&H4f)+Chr(&H31)+Chr(&H5f)+Chr(&H30)+Chr(48)+Chr(48)+Chr(73)+Chr(48)+Chr(&H5f)+Chr(&H31)))
durationServiceDependencies={videoNode:m.video}
m.durationService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(68)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.durationService.callFunc((Chr(105)+Chr(110)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),durationServiceDependencies)
initializationServiceDependencies={player:m.top,services:{advertisingService:m.advertisingService,audioService:m.audioService,captionService:m.captionService,configurationService:m.configurationService,deficiencyService:m.deficiencyService,impressionService:m.impressionService,licensingService:m.licensingService,mediaQualityService:m.mediaQualityService,metadataService:m.metadataService,playbackService:m.playbackService,thumbnailService:m.thumbnailService,timeService:m.timesService,durationService:m.durationService},task:m.bitmovinPlayerTask,videoNode:m.video}
m.initializationService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H49)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)))
m.initializationService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),initializationServiceDependencies)
m.initializationService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(95)+Chr(&H30)+Chr(49)+Chr(79)+Chr(95)+Chr(&H31)+Chr(&H49)+Chr(95)+Chr(&H31)+Chr(&H31)+Chr(49)+Chr(&H30)+Chr(&H31)))
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(&H67)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H42)+Chr(&H69)+Chr(&H74)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(77)+Chr(&H6f)+Chr(100)+Chr(101)+Chr(108)+Chr(79)+Chr(&H62)+Chr(&H6a)+Chr(101)+Chr(&H63)+Chr(116)+Chr(77)+Chr(97)+Chr(112)+Chr(112)+Chr(101)+Chr(114)))
m.externalEventFactory=__0OI1I1OII__(m.top.BitmovinFields)
m.InternalEventTypes=___00__0_1OI_()
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_O00__O0_I_I1)
if m.isDestroyed return invalid 
_OI_I0O10_OI0()
m.initializationService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H75)+Chr(&H70)),_O00__O0_I_I1)
end function
function getConfig(_IOIOIOOII0_0=invalid)
if m.isDestroyed return invalid 
config=m.configurationService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(67)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(105)+Chr(103)),invalid)
if _01O11OIIOI_1(config.source)
config.source=config.source.clone((1=1))
end if
return config 
end function
function getVersion(_001I0III__1_=invalid)
if m.isDestroyed return invalid 
return(Chr(&H31)+Chr(&H2e)+Chr(53)+Chr(55)+Chr(46)+Chr(48)) 
end function
sub _OI_I0O10_OI0()
m.KeyEventHandler.seeking=(1=2)
end sub
sub play(_I0OIII0_11_0=invalid)
if m.isDestroyed return 
m.playBackService.callFunc((Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)))
end sub
sub instantReplay(_O_0_0OI00I01=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H73)+Chr(&H74)+Chr(97)+Chr(&H6e)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(112)+Chr(&H6c)+Chr(&H61)+Chr(&H79)))
end sub
sub pause(_O01OIIOO__0I=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(97)+Chr(117)+Chr(&H73)+Chr(101)))
end sub
sub preload(_00OIIII0O1_O=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(114)+Chr(&H65)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(&H64)))
end sub
sub seek(_I010OI_O_011)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(101)+Chr(107)),_I010OI_O_011)
end sub
sub mute(__1_1I0_IIO_1=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)))
end sub
sub unmute(_II1I101O_I01=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H75)+Chr(110)+Chr(&H6d)+Chr(117)+Chr(&H74)+Chr(&H65)))
end sub
sub captionMode(_1_OO_010_IO_)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H43)+Chr(97)+Chr(&H70)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(&H4d)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),_1_OO_010_IO_)
end sub
sub setCaptionMode(_0__I_O1O1OO1)
if m.isDestroyed return 
m.captionService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(67)+Chr(97)+Chr(112)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(&H64)+Chr(&H65)),_0__I_O1O1OO1)
end sub
function isMuted(_O1_1II0_11_I=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(&H4d)+Chr(&H75)+Chr(&H74)+Chr(&H65)+Chr(&H64))) 
end function
function isPlaying(_00OI0_1_I_OO=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(103))) 
end function
function isPaused(_I0I_00O_II11=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(80)+Chr(97)+Chr(117)+Chr(115)+Chr(101)+Chr(100))) 
end function
function isStalled(_OI_00I1__0_1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(&H6c)+Chr(&H6c)+Chr(&H65)+Chr(&H64))) 
end function
function availableSubtitles(_OI0I1OOI_1_0=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(97)+Chr(&H76)+Chr(&H61)+Chr(105)+Chr(108)+Chr(&H61)+Chr(98)+Chr(&H6c)+Chr(101)+Chr(&H53)+Chr(&H75)+Chr(&H62)+Chr(116)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(&H65)+Chr(&H73))) 
end function
function getSubtitle(_01IO00I1OII1=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(&H53)+Chr(&H75)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(&H65))) 
end function
function setSubtitle(_O_IIOO1___I1)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(83)+Chr(117)+Chr(98)+Chr(&H74)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(&H65)),_O_IIOO1___I1)
end function
function setSubtitleStyles(_10__I1I_I_1I)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H53)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(116)+Chr(&H6c)+Chr(101)+Chr(&H53)+Chr(&H74)+Chr(&H79)+Chr(108)+Chr(101)+Chr(&H73)),_10__I1I_I_1I)
end function
function getSubtitleStyles(_O01O0O_01IOI=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H53)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(116)+Chr(108)+Chr(&H65)+Chr(&H53)+Chr(&H74)+Chr(&H79)+Chr(108)+Chr(&H65)+Chr(115))) 
end function
function availableAudio(_00I1100II110=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(97)+Chr(118)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H61)+Chr(98)+Chr(108)+Chr(&H65)+Chr(65)+Chr(&H75)+Chr(100)+Chr(&H69)+Chr(&H6f)),invalid) 
end function
function getAudio(_10_OIO1O100I=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(65)+Chr(&H75)+Chr(100)+Chr(105)+Chr(111)),invalid) 
end function
function setAudio(_00_1OO00_I_1)
if m.isDestroyed return invalid 
m.audioService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(65)+Chr(117)+Chr(100)+Chr(&H69)+Chr(&H6f)),_00_1OO00_I_1)
end function
sub unload(_O_II11010I0O=invalid)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H75)+Chr(110)+Chr(108)+Chr(111)+Chr(97)+Chr(&H64)),invalid)
end sub
sub load(_1O__0_11O0II)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)),_1O__0_11O0II)
end sub
function getDuration(_O_01OO11O000=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H44)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e))) 
end function
sub timeShift(_I_OO11_I_I1_)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H74)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(83)+Chr(104)+Chr(&H69)+Chr(102)+Chr(116)),_I_OO11_I_I1_)
end sub
function getTimeShift(_010OII1OI111=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(84)+Chr(105)+Chr(109)+Chr(&H65)+Chr(&H53)+Chr(104)+Chr(105)+Chr(102)+Chr(&H74))) 
end function
function getMaxTimeShift(_OO1OO001OO0I=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(77)+Chr(&H61)+Chr(&H78)+Chr(84)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(83)+Chr(104)+Chr(105)+Chr(&H66)+Chr(116))) 
end function
function isLive(__01I0_0_0010=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(76)+Chr(&H69)+Chr(&H76)+Chr(&H65))) 
end function
sub setHttpHeaders(_I000IOI0O_OO)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H48)+Chr(&H74)+Chr(&H74)+Chr(&H70)+Chr(72)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(114)+Chr(115)),_I000IOI0O_OO)
end sub
sub _010IIOO0100O(_II0OO1OII0I0)
previousFocusedNodeId=_II0OO1OII0I0.getNode()
if not _110__I1O00_I(ad_getActiveAdBreak())return 
if previousFocusedNodeId=m.top.id and m.Video.enableUI
_1010_1III0I_()
end if
end sub
sub _1010_1III0I_()
m.KeyEventHandler.setFocus((1=1))
end sub
function getThumbnail(_1I_OIOOOO_O1)
if m.isDestroyed return invalid 
if _110__I1O00_I(_1I_OIOOOO_O1)
return invalid 
end if
return m.thumbnailService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H54)+Chr(&H68)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(110)+Chr(97)+Chr(&H69)+Chr(&H6c)),_1I_OIOOOO_O1) 
end function
sub ad_schedule(_0I0011_000IO=invalid)
if m.isDestroyed return 
if _110__I1O00_I(_0I0011_000IO)return 
m.advertisingService.callFunc((Chr(&H73)+Chr(&H63)+Chr(104)+Chr(&H65)+Chr(&H64)+Chr(&H75)+Chr(&H6c)+Chr(101)+Chr(65)+Chr(&H64)+Chr(115)),_0I0011_000IO)
end sub
function ad_list(_____11OIIO0O=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(&H41)+Chr(100)+Chr(&H4c)+Chr(105)+Chr(&H73)+Chr(116)),invalid) 
end function
function ad_getActiveAdBreak(__O01OO1O010I=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(65)+Chr(&H63)+Chr(116)+Chr(105)+Chr(118)+Chr(101)+Chr(65)+Chr(&H64)+Chr(66)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H6b)),invalid) 
end function
sub ad_discardAdBreak(_II_OI0O1I1OO)
if m.isDestroyed return 
if _110__I1O00_I(_II_OI0O1I1OO)return 
m.advertisingService.callFunc((Chr(100)+Chr(&H69)+Chr(115)+Chr(99)+Chr(&H61)+Chr(114)+Chr(&H64)+Chr(65)+Chr(100)+Chr(&H42)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H6b)),_II_OI0O1I1OO)
end sub
sub _0_0O10IO0001(_10OIIIO01I0_=(1=1))
m.isDestroyed=(1=1)
m.BitmovinPlayerTask.callFunc((Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(84)+Chr(97)+Chr(115)+Chr(&H6b)),invalid)
m.initializationService.callFunc((Chr(117)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(100)),invalid)
_OO10_1O00IO_()
_1O1_OO_I1___()
if _10OIIIO01I0_ m.top.destroy=m.externalEventFactory.createBitmovinBaseEvent(m.top.bitmovinFields.DESTROY)
end sub
sub destroy(__0__IO0_O1O0=invalid)
_0_0O10IO0001()
end sub
function getCurrentTime(_O1OO1I1I1OII=invalid)
if m.isDestroyed return invalid 
return m.timeService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(&H43)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H54)+Chr(&H69)+Chr(109)+Chr(&H65)),invalid) 
end function
function ad_isAd(__IO0II1_I0O1=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(&H69)+Chr(&H73)+Chr(65)+Chr(100)),invalid) 
end function
sub demandApiQueryAds(_OO0__IOIOI11)
m.advertisingService.callFunc((Chr(&H73)+Chr(116)+Chr(97)+Chr(&H72)+Chr(116)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
m.advertisingService.callFunc((Chr(&H75)+Chr(&H70)+Chr(100)+Chr(97)+Chr(116)+Chr(&H65)+Chr(&H4d)+Chr(101)+Chr(&H74)+Chr(&H61)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H61)),{"audiencemeasurementmetadata":_OO0__IOIOI11})
m.advertisingService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(68)+Chr(101)+Chr(109)+Chr(&H61)+Chr(110)+Chr(&H64)+Chr(65)+Chr(112)+Chr(105)),invalid)
end sub
sub _OO10_1O00IO_()
_0_1_O00OO0_I()
m.top.unobserveFieldScoped((Chr(&H66)+Chr(111)+Chr(&H63)+Chr(&H75)+Chr(115)+Chr(&H65)+Chr(&H64)+Chr(&H43)+Chr(&H68)+Chr(&H69)+Chr(108)+Chr(&H64)))
m.playbackService.unobserveFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(&H72)+Chr(101)+Chr(100)))
end sub
sub _1O1_OO_I1___()
m.KeyEventHandler.callFunc((Chr(&H64)+Chr(&H65)+Chr(&H73)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(&H79)))
end sub
sub ___1000_O_O1O(_OII0_O0I_O1_)
internalEvent=_OII0_O0I_O1_.getData()
eventType=internalEvent.type
eventData=internalEvent.data
if eventType=m.InternalEventTypes.SEEK
m.top.seek=eventData
m.KeyEventHandler.seeking=(1=1)
else if eventType=m.InternalEventTypes.TIME_SHIFT
m.top.timeShift=eventData
m.KeyEventHandler.seeking=(1=1)
else if eventType=m.InternalEventTypes.PLAYER_STATE
state=eventData.state
m.top.playerState=state
m.KeyEventHandler.playerState=state
_0I_0IO0__O_O(eventData)
?(Chr(67)+Chr(&H68)+Chr(97)+Chr(&H6e)+Chr(103)+Chr(101)+Chr(&H20)+Chr(116)+Chr(&H6f)+Chr(32)+Chr(112)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(32)+Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(101)+Chr(&H3a)+Chr(&H20));m.top.playerState
else if m.top.DoesExist(eventType)
m.top[eventType]=eventData
end if
end sub
sub _0I_0IO0__O_O(___O1I0O1O0O0)
if _110__I1O00_I(___O1I0O1O0O0)return 
state=___O1I0O1O0O0.state
video=___O1I0O1O0O0.video
m.advertisingService.callFunc((Chr(&H63)+Chr(104)+Chr(101)+Chr(99)+Chr(107)+Chr(65)+Chr(100)+Chr(66)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(107)+Chr(115)),{field:(Chr(115)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)),fieldData:state})
if state=m.RokuNativePlayerStates.ERROR
errorCode=m.bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(107)+Chr(&H75)+Chr(&H56)+Chr(105)+Chr(&H64)+Chr(101)+Chr(&H6f)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H43)+Chr(&H6f)+Chr(100)+Chr(101)+Chr(84)+Chr(&H6f)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(67)+Chr(111)+Chr(100)+Chr(&H65)),video.errorCode)
nativeErrorData={errorCode:video.errorCode,errorMsg:video.errorMsg,errorStr:video.errorStr,errorInfo:video.errorInfo}
m.deficiencyService.callFunc((Chr(&H6f)+Chr(&H6e)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)),m.deficiencyFactory.callFunc((Chr(99)+Chr(114)+Chr(&H65)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(114)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)),errorCode,Chr(0),nativeErrorData))
_OI_I0O10_OI0()
else if state=m.RokuNativePlayerStates.PLAYING
if m.KeyEventHandler.seeking
if m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(76)+Chr(&H69)+Chr(&H76)+Chr(&H65)))
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=getCurrentTime()
end if
_OI_I0O10_OI0()
end if
else if state=m.RokuNativePlayerStates.FINISHED
_OI_I0O10_OI0()
end if
end sub
sub _11I1I__I0I_0(_0I__1O_110_1)
internalEvent=_0I__1O_110_1.getData()
eventType=internalEvent.type
eventData=internalEvent.data
if eventType=m.InternalEventTypes.EMIT_DESTROY_EVENT_ONLY_WITHOUT_INTERNAL_DESTROY and m.isDestroyed
m.top.destroy=m.externalEventFactory.createBitmovinBaseEvent(m.top.bitmovinFields.DESTROY)
else if eventType=m.top.BitmovinFields.DESTROY and not m.isDestroyed
_0_0O10IO0001(eventData)
else if eventType=m.InternalEventTypes.INTERNAL_UNLOAD and not m.isDestroyed
m.initializationService.callFunc((Chr(105)+Chr(110)+Chr(116)+Chr(&H65)+Chr(114)+Chr(&H6e)+Chr(&H61)+Chr(108)+Chr(&H55)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(100)),invalid)
else if eventType=m.InternalEventTypes.SOURCE_UNLOADED and not m.isDestroyed
_0_1_O00OO0_I()
m.top[eventType]=eventData
end if
end sub
sub _1101__O__O1I(_0O0I__O1_OO_)
eventType=_0O0I__O1_OO_.getData().type
eventData=_0O0I__O1_OO_.getData().data
_0O0I__O1_OO_=m.externalEventFactory.createBitmovinBaseEvent(eventType)
_0O0I__O1_OO_.append(eventData)
m.top[eventType]=_0O0I__O1_OO_
end sub
sub _O_O1_000I0_1(_00OO11O10_OO)
eventType=_00OO11O10_OO.getData().type
eventData=_00OO11O10_OO.getData().data
_00OO11O10_OO=m.externalEventFactory.createBitmovinBaseEvent(eventType)
_00OO11O10_OO.append(eventData)
m.top[eventType]=_00OO11O10_OO
end sub
sub __101_IOOO0O_(_1_0OO0I_O000)
eventData=_1_0OO0I_O000.getData().data
m.top.impression=m.externalEventFactory.createImpressionEvent(eventData.impressionResponse,eventData.version,eventData.key)
end sub
sub _O_0OI10OOIOI(_I0010I0OI0_0)
externalLicensingEvent=m.externalEventFactory.createLicenseValidatedEvent(_I0010I0OI0_0.getData().data)
m.top.licenseValidated=externalLicensingEvent
end sub
sub _01O_1I_11101(_IIO1IO10I01I)
eventType=_IIO1IO10I01I.getData().type
eventData=_IIO1IO10I01I.getData().data
if eventType=m.top.BitmovinFields.SOURCE_LOADED
_1II11I1OI1OI()
else if eventType=m.top.BitmovinFields.SOURCE_UNLOADED
_0_1_O00OO0_I()
else if eventType=(Chr(95)+Chr(79)+Chr(73)+Chr(&H5f)+Chr(&H49)+Chr(48)+Chr(79)+Chr(49)+Chr(48)+Chr(&H5f)+Chr(79)+Chr(73)+Chr(48))
_OI_I0O10_OI0()
end if
if m.top.DoesExist(eventType)m.top[eventType]=eventData
end sub
sub _1II11I1OI1OI()
m.playbackService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(&H4e)+Chr(&H61)+Chr(116)+Chr(105)+Chr(118)+Chr(101)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(&H65)+Chr(114)+Chr(&H4f)+Chr(98)+Chr(115)+Chr(101)+Chr(114)+Chr(118)+Chr(&H65)+Chr(&H72)+Chr(&H73)),invalid)
m.timeService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H4e)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(118)+Chr(&H65)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(101)+Chr(&H72)+Chr(79)+Chr(98)+Chr(115)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H65)+Chr(114)+Chr(&H73)),invalid)
end sub
sub _0_1_O00OO0_I()
m.playbackService.callFunc((Chr(&H72)+Chr(101)+Chr(&H6d)+Chr(111)+Chr(&H76)+Chr(&H65)+Chr(78)+Chr(97)+Chr(116)+Chr(105)+Chr(118)+Chr(101)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(79)+Chr(98)+Chr(115)+Chr(101)+Chr(114)+Chr(118)+Chr(&H65)+Chr(&H72)+Chr(115)),invalid)
m.timeService.callFunc((Chr(114)+Chr(101)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(101)+Chr(&H4e)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H76)+Chr(101)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H4f)+Chr(98)+Chr(&H73)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(101)+Chr(114)+Chr(&H73)),invalid)
end sub
sub _OOO0_0O0OI_I(_O__O_II__I_1)
eventData=_O__O_II__I_1.getData().data
eventType=_O__O_II__I_1.getData().type
if eventType=m.InternalEventTypes.AD_BUFFERING_START
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(83)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)),eventData.type)
else if eventType=m.InternalEventTypes.INTERNAL_PLAY
m.playbackService.callFunc((Chr(&H69)+Chr(110)+Chr(116)+Chr(101)+Chr(114)+Chr(110)+Chr(97)+Chr(&H6c)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(&H79)),invalid)
else if eventType=m.InternalEventTypes.INTERNAL_STOP_PLAYBACK
m.playbackService.callFunc((Chr(105)+Chr(110)+Chr(116)+Chr(101)+Chr(114)+Chr(110)+Chr(97)+Chr(&H6c)+Chr(&H53)+Chr(&H74)+Chr(111)+Chr(&H70)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(&H62)+Chr(&H61)+Chr(&H63)+Chr(107)),invalid)
else if eventType=m.InternalEventTypes.AD_PLAYHEAD
m.top.timeChanged=m.ExternalEventFactory.createTimeChangedEvent(eventData)
else if eventType=m.InternalEventTypes.AD_BREAK_STARTED or eventType=m.InternalEventTypes.AD_BREAK_FINISHED
m.top[eventType]=m.ExternalEventFactory.createBitmovinAdBreakEvent(eventData,eventType)
else if eventType=m.InternalEventTypes.AD_QUARTILE
m.top[eventType]=m.ExternalEventFactory.createBitmovinAdQuartileEvent(eventType)
else if eventType=m.top.BitmovinPlayerState.PAUSED or eventType=m.top.BitmovinPlayerState.PLAYING or eventType=m.top.BitmovinPlayerState.STALLING
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(114)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(116)+Chr(101)),eventType)
else if eventType=m.top.BitmovinFields.AD_STARTED
m.top.adStarted=m.ExternalEventFactory.createBitmovinAdEvent(eventData)
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(114)+Chr(83)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)),m.top.BitmovinPlayerState.PLAYING)
else if eventType=m.InternalEventTypes.AD_ERROR
m.top[eventType]=m.ExternalEventFactory.createBitmovinAdErrorEvent(eventData)
else if eventType=m.InternalEventTypes.DEMAND_API_QUERY_ADS_RESULT
m.top.demandApiQueryAdsResult=eventData
else if m.top.DoesExist(eventType)
m.top[eventType]=m.ExternalEventFactory.createBitmovinAdEvent(eventData)
end if
end sub
sub _1OO_OIO10010(_O_O0IO0O_0I0)
internalEvent=_O_O0IO0O_0I0.getData()
eventType=internalEvent.type
eventData=internalEvent.data
if eventType=m.InternalEventTypes.DOWNLOAD_FINISHED
externalEvent=m.externalEventFactory.createDownloadFinishedEvent(eventData)
else if eventType=m.InternalEventTypes.VIDEO_DOWNLOAD_QUALITY_CHANGED
externalEvent=m.externalEventFactory.createVideoQualityChangeEvent(eventData.previousVideoDownloadedSegment,eventData.downloadedSegment)
else if eventType=m.InternalEventTypes.AUDIO_DOWNLOAD_QUALITY_CHANGED
externalEvent=m.externalEventFactory.createAudioQualityChangeEvent(eventData.previousAudioDownloadedSegment,eventData.downloadedSegment)
end if
if m.top.DoesExist(eventType)m.top[eventType]=externalEvent
end sub
sub _IO1100_I01I0(_IOO1_I000IOO)
eventData=_IOO1_I000IOO.getData().data
eventType=_IOO1_I000IOO.getData().type
if eventType=m.top.BitmovinFields.METADATA
if eventData.scteEvent<>invalid
metadataEvent=m.externalEventFactory.createScteMetadataEvent(eventData.scteEvent,eventData.currentTime,m.BitmovinMetadataEventTypes)
else 
metadataEvent=m.externalEventFactory.createBitmovinBaseEvent(eventType)
metadataEvent.append(eventData)
end if
end if
m.top.metadata=metadataEvent
end sub
sub __00I_I1O_OOI(_1_1I0OI0II00)
internalEvent=_1_1I0OI0II00.getData()
eventType=internalEvent.type
eventData=internalEvent.data
if eventType=m.InternalEventTypes.POSITION_CHANGE
m.top.timeChanged=m.externalEventFactory.createTimeChangedEvent(eventData)
m.top.currentTime=getCurrentTime()
m.advertisingService.callFunc((Chr(&H63)+Chr(&H68)+Chr(&H65)+Chr(&H63)+Chr(&H6b)+Chr(65)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(&H6b)+Chr(&H73)),{field:(Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)),fieldData:eventData})
end if
end sub
sub _O_00_O0_OII_(_1I00_110_0OO)
internalEvent=_1I00_110_0OO.getData()
eventType=internalEvent.type
if eventType=m.InternalEventTypes.DURATION_CHANGE m.advertisingService.callFunc((Chr(&H63)+Chr(&H6f)+Chr(&H6e)+Chr(&H74)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H44)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H43)+Chr(&H68)+Chr(97)+Chr(&H6e)+Chr(&H67)+Chr(&H65)+Chr(&H64)),invalid)
end sub
