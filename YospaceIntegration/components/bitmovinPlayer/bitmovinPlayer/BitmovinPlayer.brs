sub init()
m.BitmovinComponentIds=_0I010I1I1II1()
services={}
m.video=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(86)+Chr(&H69)+Chr(&H64)+Chr(&H65)+Chr(&H6f)))
m.video.id=m.BitmovinComponentIds.MAIN_VIDEO
m.video.translation=(Chr(&H5b)+Chr(48)+Chr(44)+Chr(&H30)+Chr(&H5d))
m.KeyEventHandler=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(75)+Chr(&H65)+Chr(&H79)+Chr(69)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(72)+Chr(&H61)+Chr(110)+Chr(100)+Chr(&H6c)+Chr(101)+Chr(114)))
m.KeyEventHandler.id=m.BitmovinComponentIds.KEY_EVENT_HANDLER
m.video.appendChild(m.KeyEventHandler)
m.top.appendChild(m.video)
m.BitmovinPlayerTask=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(66)+Chr(&H69)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(84)+Chr(97)+Chr(&H73)+Chr(107)))
m.BitmovinPlayerTask.id=m.BitmovinComponentIds.BITMOVIN_PLAYER_TASK
m.top.appendChild(m.BitmovinPlayerTask)
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(68)+Chr(101)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(&H66)+Chr(111)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(&H66)+Chr(111)+Chr(&H63)+Chr(&H75)+Chr(115)+Chr(&H65)+Chr(100)+Chr(&H43)+Chr(&H68)+Chr(&H69)+Chr(&H6c)+Chr(100)),(Chr(95)+Chr(&H49)+Chr(48)+Chr(48)+Chr(&H4f)+Chr(48)+Chr(&H4f)+Chr(73)+Chr(&H30)+Chr(73)+Chr(&H49)+Chr(79)+Chr(49)))
m.top.BitmovinPlayerState=_I1O_I1IO0010()
m.top.BitmovinFunctions=_O1O0O_O0O__I()
m.top.BitmovinFields=_0OOO_00I01OO()
m.BitmovinConfigAssetTypes=__1_I0101OI_I()
m.KeyEventHandler.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(117)+Chr(&H70)),invalid)
m.deficiencyFactory=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(68)+Chr(&H65)+Chr(102)+Chr(&H69)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(99)+Chr(121)+Chr(&H46)+Chr(&H61)+Chr(99)+Chr(116)+Chr(111)+Chr(&H72)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(69)+Chr(114)+Chr(114)+Chr(111)+Chr(&H72)+Chr(115)))
m.deficiencyService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H44)+Chr(101)+Chr(&H66)+Chr(105)+Chr(&H63)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(&H63)+Chr(121)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.deficiencyService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.top)
m.deficiencyService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(116)+Chr(79)+Chr(99)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(48)+Chr(73)+Chr(&H4f)+Chr(95)+Chr(&H31)+Chr(73)+Chr(&H5f)+Chr(&H30)+Chr(48)+Chr(49)+Chr(&H30)+Chr(&H5f)))
services.AddReplace((Chr(&H64)+Chr(101)+Chr(102)+Chr(105)+Chr(99)+Chr(105)+Chr(&H65)+Chr(110)+Chr(99)+Chr(121)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.deficiencyService)
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(115)+Chr(121)+Chr(110)+Chr(&H63)+Chr(79)+Chr(112)+Chr(&H65)+Chr(&H72)+Chr(97)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H46)+Chr(97)+Chr(99)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.BitmovinAsyncOperationTypes=__10IOO1OII0I()
m.TimelineReferencePoints=__11IO1_IO_1O()
m.ServiceEndpoints=__II_0101I1OO()
m.isDestroyed=(1=2)
m.eventFactory=_0I__010_III_()
m.configurationService=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(67)+Chr(111)+Chr(110)+Chr(102)+Chr(105)+Chr(&H67)+Chr(117)+Chr(114)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.configurationService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),invalid)
services.AddReplace((Chr(99)+Chr(111)+Chr(110)+Chr(&H66)+Chr(105)+Chr(&H67)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),m.configurationService)
m.mediaQualityService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H4d)+Chr(101)+Chr(&H64)+Chr(&H69)+Chr(97)+Chr(81)+Chr(117)+Chr(&H61)+Chr(108)+Chr(105)+Chr(116)+Chr(121)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)))
m.mediaQualityService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.video)
m.mediaQualityService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(&H49)+Chr(79)+Chr(49)+Chr(&H31)+Chr(49)+Chr(95)+Chr(73)+Chr(48)+Chr(&H4f)+Chr(&H49)+Chr(49)+Chr(95)))
services.AddReplace((Chr(109)+Chr(&H65)+Chr(&H64)+Chr(105)+Chr(&H61)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H74)+Chr(121)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),m.mediaQualityService)
m.advertisingService=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H67)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H41)+Chr(100)+Chr(&H76)+Chr(101)+Chr(114)+Chr(116)+Chr(105)+Chr(&H73)+Chr(105)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.advertisingService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.top,m.bitmovinPlayerTask,m.configurationService)
m.advertisingService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(&H5f)+Chr(49)+Chr(&H4f)+Chr(73)+Chr(&H5f)+Chr(&H31)+Chr(&H4f)+Chr(&H31)+Chr(&H31)+Chr(&H5f)+Chr(&H49)+Chr(&H5f)))
services.AddReplace((Chr(&H61)+Chr(100)+Chr(118)+Chr(101)+Chr(&H72)+Chr(&H74)+Chr(105)+Chr(115)+Chr(105)+Chr(110)+Chr(&H67)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.advertisingService)
m.licensingService=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(76)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.licensingService.callFunc((Chr(105)+Chr(110)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.deficiencyService,m.bitmovinPlayerTask,getVersion())
m.licensingService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(79)+Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(&H5f)+Chr(&H31)+Chr(49)+Chr(48)+Chr(48)+Chr(&H30)+Chr(&H4f)+Chr(79)))
services.AddReplace((Chr(108)+Chr(105)+Chr(99)+Chr(&H65)+Chr(110)+Chr(115)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),m.licensingService)
m.impressionService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(103)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H49)+Chr(&H6d)+Chr(112)+Chr(114)+Chr(&H65)+Chr(115)+Chr(&H73)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)))
m.impressionService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.bitmovinPlayerTask,m.video,getVersion())
m.impressionService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(48)+Chr(&H49)+Chr(95)+Chr(48)+Chr(&H31)+Chr(&H4f)+Chr(48)+Chr(73)+Chr(79)+Chr(&H30)+Chr(48)+Chr(95)))
services.AddReplace((Chr(105)+Chr(&H6d)+Chr(112)+Chr(114)+Chr(101)+Chr(115)+Chr(&H73)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),m.impressionService)
m.timeService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.timeService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(105)+Chr(97)+Chr(108)+Chr(105)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.video)
services.AddReplace((Chr(116)+Chr(&H69)+Chr(109)+Chr(101)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.timeService)
m.playbackService=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H50)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H62)+Chr(97)+Chr(99)+Chr(107)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)))
m.playbackService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(116)+Chr(&H69)+Chr(97)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.video)
m.playbackService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(95)+Chr(&H30)+Chr(48)+Chr(&H49)+Chr(&H4f)+Chr(79)+Chr(&H31)+Chr(73)+Chr(48)+Chr(79)+Chr(79)+Chr(48)))
services.AddReplace((Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.playbackService)
m.metadataService=CreateObject((Chr(114)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(77)+Chr(&H65)+Chr(&H74)+Chr(97)+Chr(&H64)+Chr(97)+Chr(&H74)+Chr(97)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.metadataService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),m.video,m.top,services,m.bitmovinPlayerTask)
m.metadataService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(&H5f)+Chr(73)+Chr(&H4f)+Chr(48)+Chr(79)+Chr(&H31)+Chr(95)+Chr(49)+Chr(&H31)+Chr(&H49)+Chr(&H4f)+Chr(49)+Chr(&H5f)))
services.AddReplace((Chr(109)+Chr(101)+Chr(116)+Chr(&H61)+Chr(&H64)+Chr(97)+Chr(116)+Chr(&H61)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),m.metadataService)
m.thumbnailService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(&H54)+Chr(&H68)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)))
m.thumbnailService.callFunc((Chr(&H69)+Chr(110)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.video,m.configurationService)
services.AddReplace((Chr(&H74)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(&H61)+Chr(&H69)+Chr(108)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),m.thumbnailService)
m.audioService=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(117)+Chr(100)+Chr(&H69)+Chr(111)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.audioService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.video)
m.audioService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(110)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(&H49)+Chr(&H31)+Chr(95)+Chr(&H5f)+Chr(&H30)+Chr(&H30)+Chr(&H5f)+Chr(&H4f)+Chr(79)+Chr(95)+Chr(&H30)+Chr(&H31)))
services.AddReplace((Chr(&H61)+Chr(117)+Chr(&H64)+Chr(105)+Chr(&H6f)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.audioService)
m.captionService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(67)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)))
m.captionService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.video)
m.captionService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(&H49)+Chr(&H4f)+Chr(&H31)+Chr(48)+Chr(49)+Chr(&H30)+Chr(95)+Chr(&H5f)+Chr(&H30)+Chr(&H30)+Chr(79)+Chr(&H49)))
services.AddReplace((Chr(99)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),m.captionService)
m.initializationService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(73)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(&H61)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.initializationService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.video,m.bitmovinPlayerTask,m.top,services)
m.initializationService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(&H49)+Chr(79)+Chr(95)+Chr(79)+Chr(&H49)+Chr(49)+Chr(48)+Chr(79)+Chr(&H30)+Chr(49)+Chr(&H4f)+Chr(49)))
services.AddReplace((Chr(&H63)+Chr(97)+Chr(112)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.initializationService)
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(103)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(66)+Chr(105)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(77)+Chr(&H6f)+Chr(100)+Chr(&H65)+Chr(108)+Chr(79)+Chr(&H62)+Chr(106)+Chr(101)+Chr(&H63)+Chr(&H74)+Chr(77)+Chr(&H61)+Chr(&H70)+Chr(112)+Chr(101)+Chr(&H72)))
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_I100O11111_I)
if m.isDestroyed return invalid 
_01I01OII_O0O()
m.initializationService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H75)+Chr(112)),_I100O11111_I)
end function
function getConfig(_1I0_IO0_1O_I=invalid)
if m.isDestroyed return invalid 
config=m.configurationService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H43)+Chr(111)+Chr(&H6e)+Chr(102)+Chr(105)+Chr(&H67)),invalid)
if _O_O11__1II10(config.source)
config.source=config.source.clone((1=1))
end if
return config 
end function
function getVersion(_00010O11_0O0=invalid)
if m.isDestroyed return invalid 
return(Chr(&H31)+Chr(&H2e)+Chr(52)+Chr(52)+Chr(&H2e)+Chr(48)) 
end function
sub _011OII__1__0()
if m.Video<>invalid
m.playbackService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(80)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),m.Video.state)
if m.Video.state=(Chr(101)+Chr(114)+Chr(114)+Chr(111)+Chr(114))
errorCode=m.bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(&H56)+Chr(&H69)+Chr(&H64)+Chr(101)+Chr(111)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(&H72)+Chr(67)+Chr(&H6f)+Chr(&H64)+Chr(&H65)+Chr(&H54)+Chr(111)+Chr(&H42)+Chr(105)+Chr(&H74)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(&H6e)+Chr(&H45)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72)+Chr(&H43)+Chr(&H6f)+Chr(100)+Chr(&H65)),m.Video.errorCode)
m.deficiencyService.callFunc((Chr(111)+Chr(110)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)),m.deficiencyFactory.callFunc((Chr(99)+Chr(&H72)+Chr(101)+Chr(97)+Chr(&H74)+Chr(101)+Chr(&H45)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(69)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)),errorCode))
else if m.Video.state=(Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(110)+Chr(103))
if m.KeyEventHandler.seeking
if m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(&H4c)+Chr(105)+Chr(118)+Chr(&H65)))
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=getCurrentTime()
end if
_01I01OII_O0O()
end if
else if m.Video.state=(Chr(&H66)+Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(104)+Chr(101)+Chr(100))
_01I01OII_O0O()
end if
end if
end sub
sub _01I01OII_O0O()
m.KeyEventHandler.seeking=(1=2)
end sub
sub play(__0_0O1I1O0I1=invalid)
if m.isDestroyed return 
m.playBackService.callFunc((Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)))
end sub
sub instantReplay(_I0II01OII101=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(110)+Chr(116)+Chr(82)+Chr(&H65)+Chr(112)+Chr(108)+Chr(&H61)+Chr(121)))
end sub
sub pause(_00_0OIOOOI_0=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(97)+Chr(117)+Chr(&H73)+Chr(101)))
end sub
sub preload(_O_0___1OIOOO=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(112)+Chr(&H72)+Chr(101)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64)))
end sub
sub seek(_1IO1O0OI_IO0)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(101)+Chr(107)),_1IO1O0OI_IO0)
end sub
sub mute(_0O0IO__1I1_1=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H6d)+Chr(&H75)+Chr(116)+Chr(&H65)))
end sub
sub unmute(_O11O11IOO0I0=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H75)+Chr(110)+Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(&H65)))
end sub
sub captionMode(_1_IO_O_0_II_)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H43)+Chr(97)+Chr(&H70)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(100)+Chr(101)),_1_IO_O_0_II_)
end sub
sub setCaptionMode(_OIII11II01_I)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H43)+Chr(97)+Chr(112)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(101)),_OIII11II01_I)
end sub
function isMuted(_11I_01OOIO0_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(&H4d)+Chr(&H75)+Chr(&H74)+Chr(101)+Chr(&H64))) 
end function
function isPlaying(_O11OO1_O0_O1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(105)+Chr(&H6e)+Chr(103))) 
end function
function isPaused(_O0O__01O0O_0=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(80)+Chr(&H61)+Chr(&H75)+Chr(115)+Chr(&H65)+Chr(100))) 
end function
function isStalled(__0__OOI1_0I_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(&H6c)+Chr(108)+Chr(101)+Chr(&H64))) 
end function
function availableSubtitles(_0_I_1OI_01I0=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(97)+Chr(&H76)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(&H61)+Chr(98)+Chr(&H6c)+Chr(101)+Chr(83)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(105)+Chr(116)+Chr(108)+Chr(101)+Chr(&H73))) 
end function
function getSubtitle(_101O__O1II0_=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(83)+Chr(117)+Chr(&H62)+Chr(116)+Chr(&H69)+Chr(116)+Chr(&H6c)+Chr(&H65))) 
end function
function setSubtitle(__10001O110O0)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(115)+Chr(101)+Chr(116)+Chr(83)+Chr(117)+Chr(98)+Chr(&H74)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(101)),__10001O110O0)
end function
function setSubtitleStyles(_I_0O1O1__011)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(83)+Chr(117)+Chr(98)+Chr(116)+Chr(105)+Chr(&H74)+Chr(108)+Chr(101)+Chr(&H53)+Chr(&H74)+Chr(121)+Chr(&H6c)+Chr(&H65)+Chr(115)),_I_0O1O1__011)
end function
function getSubtitleStyles(_III_I_I__1OO=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(83)+Chr(117)+Chr(98)+Chr(&H74)+Chr(105)+Chr(116)+Chr(&H6c)+Chr(&H65)+Chr(83)+Chr(116)+Chr(121)+Chr(&H6c)+Chr(&H65)+Chr(&H73))) 
end function
function availableAudio(_1IIIO001III1=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(&H61)+Chr(118)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H61)+Chr(&H62)+Chr(&H6c)+Chr(101)+Chr(&H41)+Chr(&H75)+Chr(&H64)+Chr(105)+Chr(111)),invalid) 
end function
function getAudio(_1_1OO01_01OI=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(65)+Chr(&H75)+Chr(&H64)+Chr(&H69)+Chr(111)),invalid) 
end function
function setAudio(_I1O__1IOOI11)
if m.isDestroyed return invalid 
m.audioService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(&H75)+Chr(&H64)+Chr(105)+Chr(111)),_I1O__1IOOI11)
end function
sub unload(__IO1_I01_11I=invalid)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H75)+Chr(110)+Chr(108)+Chr(111)+Chr(97)+Chr(100)),invalid)
end sub
sub load(_O0_1IIO_II10)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H6c)+Chr(&H6f)+Chr(97)+Chr(&H64)),_O0_1IIO_II10)
end sub
function getDuration(_1__10O010I_0=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(&H44)+Chr(117)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110))) 
end function
sub timeShift(_1IIIO0O___0I)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H74)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(&H53)+Chr(104)+Chr(&H69)+Chr(&H66)+Chr(116)),_1IIIO0O___0I)
end sub
function getTimeShift(__0O_I1OI1I_I=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(84)+Chr(105)+Chr(109)+Chr(101)+Chr(&H53)+Chr(&H68)+Chr(&H69)+Chr(&H66)+Chr(&H74))) 
end function
function getMaxTimeShift(_I1__0_OI0_11=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(&H78)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(83)+Chr(&H68)+Chr(105)+Chr(&H66)+Chr(&H74))) 
end function
sub _I1OO0_I01110()
m.top.timeChanged=m.eventFactory.createTimeChangedEvent(getCurrentTime(),m.top.bitmovinFields)
m.top.currentTime=getCurrentTime()
end sub
function isLive(__0OII1O00101=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(&H4c)+Chr(105)+Chr(&H76)+Chr(&H65))) 
end function
sub setHttpHeaders(_10I_11O1OI10)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(72)+Chr(116)+Chr(&H74)+Chr(112)+Chr(72)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(&H65)+Chr(114)+Chr(&H73)),_10I_11O1OI10)
end sub
sub _I00O0OI0IIO1(_I110O0OII01I)
previousFocusedNodeId=_I110O0OII01I.getNode()
if not _1100IO1O_0_I(ad_getActiveAdBreak())return 
if previousFocusedNodeId=m.top.id and m.Video.enableUI
_1O__O_1_I1_1()
end if
end sub
sub _1O__O_1_I1_1()
m.KeyEventHandler.setFocus((1=1))
end sub
function getThumbnail(_IOOII0110I10)
if m.isDestroyed return invalid 
if _1100IO1O_0_I(_IOOII0110I10)
return invalid 
end if
return m.thumbnailService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(&H61)+Chr(&H69)+Chr(108)),_IOOII0110I10) 
end function
sub ad_schedule(_0____O__1110=invalid)
if m.isDestroyed return 
if _1100IO1O_0_I(_0____O__1110)return 
m.advertisingService.callFunc((Chr(&H73)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(100)+Chr(117)+Chr(&H6c)+Chr(&H65)+Chr(65)+Chr(100)+Chr(115)),_0____O__1110)
end sub
function ad_list(_11O__III1I1O=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(100)+Chr(76)+Chr(105)+Chr(&H73)+Chr(&H74)),invalid) 
end function
function ad_getActiveAdBreak(_0_OO11000_0I=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(65)+Chr(99)+Chr(&H74)+Chr(&H69)+Chr(&H76)+Chr(&H65)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(&H72)+Chr(&H65)+Chr(&H61)+Chr(&H6b)),invalid) 
end function
sub ad_discardAdBreak(_01O1_0IO0OO1)
if m.isDestroyed return 
if _1100IO1O_0_I(_01O1_0IO0OO1)return 
m.advertisingService.callFunc((Chr(&H64)+Chr(&H69)+Chr(&H73)+Chr(&H63)+Chr(97)+Chr(&H72)+Chr(&H64)+Chr(65)+Chr(&H64)+Chr(&H42)+Chr(114)+Chr(&H65)+Chr(97)+Chr(107)),_01O1_0IO0OO1)
end sub
sub _O011OO100OOI()
m.top.destroy=m.eventFactory.createBitmovinBaseEvent(m.top.bitmovinFields.DESTROY)
m.isDestroyed=(1=1)
m.BitmovinPlayerTask.callFunc((Chr(115)+Chr(116)+Chr(&H6f)+Chr(&H70)+Chr(84)+Chr(&H61)+Chr(115)+Chr(107)),invalid)
_O10O11O10I11()
_OII0O_1O0001()
end sub
sub destroy(_0OO0I_O___IO=invalid)
_O011OO100OOI()
end sub
function getCurrentTime(__O10_OI0100I=invalid)
if m.isDestroyed return invalid 
return m.timeService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(&H43)+Chr(117)+Chr(114)+Chr(114)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(&H65)),invalid) 
end function
function ad_isAd(_001O__1O01II=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(105)+Chr(115)+Chr(65)+Chr(&H64)),invalid) 
end function
sub _O10O11O10I11()
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(&H65)))
m.video.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(&H69)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)))
m.video.unobserveFieldScoped((Chr(&H64)+Chr(111)+Chr(119)+Chr(110)+Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)+Chr(101)+Chr(&H64)+Chr(&H53)+Chr(&H65)+Chr(103)+Chr(109)+Chr(&H65)+Chr(110)+Chr(116)))
m.video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(100)+Chr(&H69)+Chr(&H6f)+Chr(&H54)+Chr(114)+Chr(97)+Chr(99)+Chr(107)))
m.video.unobserveFieldScoped((Chr(99)+Chr(111)+Chr(110)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(73)+Chr(&H6e)+Chr(100)+Chr(&H65)+Chr(&H78)))
m.video.unobserveFieldScoped((Chr(&H64)+Chr(117)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)))
m.top.unobserveFieldScoped((Chr(102)+Chr(111)+Chr(99)+Chr(117)+Chr(115)+Chr(101)+Chr(&H64)+Chr(67)+Chr(&H68)+Chr(105)+Chr(&H6c)+Chr(&H64)))
m.playbackService.unobserveFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)))
end sub
sub _OII0O_1O0001()
m.KeyEventHandler.callFunc((Chr(100)+Chr(101)+Chr(115)+Chr(&H74)+Chr(114)+Chr(111)+Chr(121)))
end sub
sub __00IOO1I0OO0(_I00I1O1O10__)
eventName=_I00I1O1O10__.getData().eventName
eventData=_I00I1O1O10__.getData().eventData
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
?(Chr(67)+Chr(&H68)+Chr(&H61)+Chr(&H6e)+Chr(&H67)+Chr(101)+Chr(32)+Chr(116)+Chr(111)+Chr(&H20)+Chr(&H70)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(32)+Chr(&H73)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)+Chr(58)+Chr(32));m.top.playerState
else if eventName=m.top.BitmovinFields.MUTED
m.top.muted=eventData
else if eventName=m.top.BitmovinFields.UNMUTED
m.top.unmuted=eventData
end if
end sub
sub _0IO_1I_0010_(_O11I_II0_0__)
eventName=_O11I_II0_0__.getData().eventName
if eventName=m.top.BitmovinFields.DESTROY and not m.isDestroyed
_O011OO100OOI()
end if
end sub
sub _I1__00_OO_01(_100O__101_0O)
eventName=_100O__101_0O.getData().eventName
eventData=_100O__101_0O.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
else if eventName=m.top.BitmovinFields.AUDIO_CHANGED
m.top.audioChanged=eventData
end if
end sub
sub _IO1010__00OI(__OII011OI011)
eventName=__OII011OI011.getData().eventName
eventData=__OII011OI011.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
end if
end sub
sub _0I_01O0IO00_(_0O10_IOIO_IO)
eventData=_0O10_IOIO_IO.getData()
if eventData.type=m.top.BitmovinFields.IMPRESSION
m.top.impression=eventData
end if
end sub
sub _O_OI_11000OO(_1OO_O0_I1O_1)
eventData=_1OO_O0_I1O_1.getData()
if eventData.type=m.top.BitmovinFields.LICENSE_VALIDATED
m.top.licenseValidated=eventData
end if
end sub
sub _IO_OI10O01O1(_10_O_000_O0I)
eventName=_10_O_000_O0I.getData().eventName
eventData=_10_O_000_O0I.getData().eventData
if eventName=m.top.BitmovinFields.SOURCE_LOADED
__10_111_O0_O()
m.top.sourceLoaded=eventData
else if eventName=m.top.BitmovinFields.SOURCE_UNLOADED
_I__1OI___OI_()
m.top.sourceUnloaded=eventData
else if eventName=m.top.BitmovinFields.PLAY
m.top.play=eventData
else if eventName=(Chr(&H5f)+Chr(48)+Chr(49)+Chr(&H49)+Chr(48)+Chr(&H31)+Chr(79)+Chr(73)+Chr(73)+Chr(95)+Chr(&H4f)+Chr(&H30)+Chr(79))
_01I01OII_O0O()
end if
end sub
sub __10_111_O0_O()
m.Video.observeFieldScoped((Chr(&H73)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)),(Chr(95)+Chr(48)+Chr(&H31)+Chr(&H31)+Chr(79)+Chr(73)+Chr(73)+Chr(&H5f)+Chr(&H5f)+Chr(49)+Chr(95)+Chr(&H5f)+Chr(48)))
m.Video.observeFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),(Chr(95)+Chr(&H49)+Chr(&H31)+Chr(&H4f)+Chr(&H4f)+Chr(48)+Chr(95)+Chr(73)+Chr(48)+Chr(49)+Chr(&H31)+Chr(&H31)+Chr(48)))
end sub
sub _I__1OI___OI_()
m.Video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(&H74)+Chr(&H65)))
m.Video.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(&H73)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(110)))
end sub
sub __1OI_1O11_I_(_O01_11I1OI0_)
eventData=_O01_11I1OI0_.getData()
eventType=eventData.type
if eventType=m.top.BitmovinPlayerState.PAUSED or eventType=m.top.BitmovinPlayerState.PLAYING or eventType=m.top.BitmovinPlayerState.STALLING
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H65)+Chr(114)+Chr(83)+Chr(&H74)+Chr(&H61)+Chr(116)+Chr(101)),eventType)
else if eventType=m.top.BitmovinFields.AD_STARTED
m.top.adStarted=eventData
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(80)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(&H65)),m.top.BitmovinPlayerState.PLAYING)
else if m.top.DoesExist(eventType)
m.top[eventType]=eventData
end if
end sub
sub _IO111_I0OI1_(_1000I_OI0110)
eventData=_1000I_OI0110.getData()
if eventData.type=m.top.BitmovinFields.DOWNLOAD_FINISHED
m.top.downloadFinished=eventData
else if eventData.type=m.top.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED
m.top.videoDownloadQualityChanged=eventData
else if eventData.type=m.top.BitmovinFields.AUDIO_DOWNLOAD_QUALITY_CHANGED
m.top.audioDownloadQualityChanged=eventData
end if
end sub
sub _IO0O1_11IO1_(_O__I1O0_1I10)
eventData=_O__I1O0_1I10.getData()
if eventData.type=m.top.BitmovinFields.METADATA
m.top.metadata=eventData
end if
end sub
