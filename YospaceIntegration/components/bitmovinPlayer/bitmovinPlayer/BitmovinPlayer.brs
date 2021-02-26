sub init()
m.BitmovinComponentIds=_101I__01OO_0()
services={}
m.video=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H56)+Chr(105)+Chr(&H64)+Chr(101)+Chr(&H6f)))
m.video.id=m.BitmovinComponentIds.MAIN_VIDEO
m.video.translation=(Chr(91)+Chr(&H30)+Chr(44)+Chr(&H30)+Chr(&H5d))
m.KeyEventHandler=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(75)+Chr(101)+Chr(&H79)+Chr(&H45)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(72)+Chr(97)+Chr(110)+Chr(100)+Chr(&H6c)+Chr(&H65)+Chr(114)))
m.KeyEventHandler.id=m.BitmovinComponentIds.KEY_EVENT_HANDLER
m.video.appendChild(m.KeyEventHandler)
m.top.appendChild(m.video)
m.BitmovinPlayerTask=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(66)+Chr(105)+Chr(&H74)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(110)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(114)+Chr(84)+Chr(97)+Chr(&H73)+Chr(107)))
m.BitmovinPlayerTask.id=m.BitmovinComponentIds.BITMOVIN_PLAYER_TASK
m.top.appendChild(m.BitmovinPlayerTask)
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(&H44)+Chr(&H65)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)+Chr(&H49)+Chr(&H6e)+Chr(102)+Chr(111)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(&H66)+Chr(&H6f)+Chr(99)+Chr(&H75)+Chr(115)+Chr(101)+Chr(100)+Chr(67)+Chr(&H68)+Chr(&H69)+Chr(108)+Chr(&H64)),(Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(95)+Chr(&H31)+Chr(&H30)+Chr(&H4f)+Chr(48)+Chr(48)+Chr(48)+Chr(73)+Chr(79)+Chr(&H30)))
m.top.BitmovinPlayerState=_1_0I_0I00O_0()
m.top.BitmovinFunctions=_OOI_OO0_I_I1()
m.top.BitmovinFields=_I__1I0I_O__0()
m.BitmovinConfigAssetTypes=_I00OI__I1100()
m.KeyEventHandler.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H75)+Chr(112)),invalid)
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H44)+Chr(&H65)+Chr(&H66)+Chr(&H69)+Chr(&H63)+Chr(&H69)+Chr(101)+Chr(&H6e)+Chr(99)+Chr(&H79)+Chr(70)+Chr(97)+Chr(&H63)+Chr(&H74)+Chr(111)+Chr(&H72)+Chr(&H79)))
m.Errors=m.deficiencyFactory.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(115)))
m.deficiencyService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H44)+Chr(101)+Chr(102)+Chr(105)+Chr(99)+Chr(&H69)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(&H79)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)))
m.deficiencyService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.top)
m.deficiencyService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(117)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(95)+Chr(49)+Chr(95)+Chr(&H4f)+Chr(&H4f)+Chr(48)+Chr(&H31)+Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(79)+Chr(95)))
services.AddReplace((Chr(&H64)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(105)+Chr(&H65)+Chr(&H6e)+Chr(&H63)+Chr(121)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),m.deficiencyService)
m.asyncOperationFactory=createObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(65)+Chr(115)+Chr(121)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(&H61)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(70)+Chr(&H61)+Chr(99)+Chr(116)+Chr(111)+Chr(114)+Chr(&H79)))
m.BitmovinAsyncOperationTypes=__OI0_00O_00_()
m.TimelineReferencePoints=_1010_0O1001O()
m.ServiceEndpoints=_1I1O_1I0__10()
m.isDestroyed=(1=2)
m.eventFactory=_I1I_O1I0I100()
m.configurationService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(67)+Chr(111)+Chr(&H6e)+Chr(&H66)+Chr(105)+Chr(103)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)))
m.configurationService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),invalid)
services.AddReplace((Chr(99)+Chr(111)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(&H67)+Chr(&H75)+Chr(&H72)+Chr(&H61)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.configurationService)
m.mediaQualityService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(77)+Chr(&H65)+Chr(&H64)+Chr(105)+Chr(&H61)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H74)+Chr(&H79)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)))
m.mediaQualityService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(&H65)),m.video)
m.mediaQualityService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(&H5f)+Chr(49)+Chr(79)+Chr(79)+Chr(79)+Chr(95)+Chr(&H4f)+Chr(&H49)+Chr(73)+Chr(&H49)+Chr(&H30)+Chr(&H30)+Chr(73)))
services.AddReplace((Chr(&H6d)+Chr(101)+Chr(&H64)+Chr(&H69)+Chr(&H61)+Chr(81)+Chr(&H75)+Chr(97)+Chr(108)+Chr(105)+Chr(&H74)+Chr(&H79)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.mediaQualityService)
m.advertisingService=CreateObject((Chr(114)+Chr(&H6f)+Chr(83)+Chr(103)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(100)+Chr(118)+Chr(&H65)+Chr(&H72)+Chr(116)+Chr(&H69)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(103)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.advertisingService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(105)+Chr(97)+Chr(108)+Chr(105)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.top,m.bitmovinPlayerTask)
m.advertisingService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(95)+Chr(73)+Chr(&H5f)+Chr(79)+Chr(&H30)+Chr(&H31)+Chr(&H31)+Chr(&H31)+Chr(&H31)+Chr(&H4f)+Chr(&H5f)+Chr(49)+Chr(73)))
services.AddReplace((Chr(&H61)+Chr(&H64)+Chr(118)+Chr(&H65)+Chr(114)+Chr(116)+Chr(&H69)+Chr(115)+Chr(&H69)+Chr(110)+Chr(103)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.advertisingService)
m.licensingService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(76)+Chr(&H69)+Chr(&H63)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(105)+Chr(110)+Chr(&H67)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.licensingService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.deficiencyService,m.bitmovinPlayerTask,getVersion())
m.licensingService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(99)+Chr(117)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H31)+Chr(&H30)+Chr(73)+Chr(49)+Chr(48)+Chr(&H5f)+Chr(&H4f)+Chr(73)+Chr(&H31)+Chr(79)+Chr(73)+Chr(79)))
services.AddReplace((Chr(108)+Chr(105)+Chr(99)+Chr(&H65)+Chr(&H6e)+Chr(115)+Chr(105)+Chr(110)+Chr(103)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.licensingService)
m.impressionService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(103)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(73)+Chr(&H6d)+Chr(112)+Chr(&H72)+Chr(&H65)+Chr(115)+Chr(115)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)))
m.impressionService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.bitmovinPlayerTask,m.video,getVersion())
m.impressionService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(&H31)+Chr(&H31)+Chr(&H4f)+Chr(73)+Chr(&H49)+Chr(&H30)+Chr(&H4f)+Chr(&H31)+Chr(&H49)+Chr(95)+Chr(&H4f)+Chr(&H4f)))
services.AddReplace((Chr(105)+Chr(109)+Chr(&H70)+Chr(114)+Chr(&H65)+Chr(&H73)+Chr(115)+Chr(&H69)+Chr(&H6f)+Chr(110)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),m.impressionService)
m.timeService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(84)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.timeService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),m.video)
services.AddReplace((Chr(116)+Chr(105)+Chr(&H6d)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.timeService)
m.playbackService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(&H50)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(&H62)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(101)))
m.playbackService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(116)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.video)
m.playbackService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(&H30)+Chr(73)+Chr(79)+Chr(49)+Chr(&H49)+Chr(79)+Chr(&H49)+Chr(&H49)+Chr(&H31)+Chr(&H4f)+Chr(&H30)+Chr(&H5f)))
services.AddReplace((Chr(112)+Chr(&H6c)+Chr(97)+Chr(121)+Chr(&H62)+Chr(97)+Chr(&H63)+Chr(107)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.playbackService)
m.metadataService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(77)+Chr(101)+Chr(&H74)+Chr(97)+Chr(100)+Chr(97)+Chr(116)+Chr(97)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)))
m.metadataService.callFunc((Chr(105)+Chr(110)+Chr(105)+Chr(116)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),m.video,m.top,services,m.bitmovinPlayerTask)
services.AddReplace((Chr(&H6d)+Chr(&H65)+Chr(116)+Chr(&H61)+Chr(100)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),m.metadataService)
m.thumbnailService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(105)+Chr(&H6c)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.thumbnailService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(116)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.video)
services.AddReplace((Chr(&H74)+Chr(104)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.thumbnailService)
m.audioService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H41)+Chr(&H75)+Chr(&H64)+Chr(&H69)+Chr(&H6f)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)))
m.audioService.callFunc((Chr(105)+Chr(110)+Chr(105)+Chr(116)+Chr(105)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H7a)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.video)
m.audioService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(&H5f)+Chr(&H30)+Chr(&H49)+Chr(&H4f)+Chr(&H49)+Chr(49)+Chr(73)+Chr(&H5f)+Chr(49)+Chr(48)+Chr(95)+Chr(49)+Chr(95)))
services.AddReplace((Chr(&H61)+Chr(117)+Chr(100)+Chr(&H69)+Chr(111)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),m.audioService)
m.captionService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(67)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.captionService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(&H74)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),m.video)
m.captionService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(95)+Chr(&H30)+Chr(&H4f)+Chr(49)+Chr(&H30)+Chr(&H31)+Chr(&H4f)+Chr(&H5f)+Chr(&H5f)+Chr(79)+Chr(48)+Chr(73)+Chr(&H5f)))
services.AddReplace((Chr(99)+Chr(&H61)+Chr(112)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.captionService)
m.initializationService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H49)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(108)+Chr(105)+Chr(&H7a)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.initializationService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(&H7a)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),m.video,m.bitmovinPlayerTask,m.top,services)
m.initializationService.observeFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(99)+Chr(&H63)+Chr(117)+Chr(114)+Chr(&H72)+Chr(101)+Chr(100)),(Chr(95)+Chr(&H4f)+Chr(73)+Chr(49)+Chr(73)+Chr(&H31)+Chr(&H31)+Chr(79)+Chr(73)+Chr(48)+Chr(&H31)+Chr(&H30)+Chr(95)))
services.AddReplace((Chr(&H63)+Chr(97)+Chr(112)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),m.initializationService)
m.bitmovinModelObjectMapper=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(103)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(66)+Chr(105)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(&H76)+Chr(105)+Chr(&H6e)+Chr(77)+Chr(111)+Chr(&H64)+Chr(101)+Chr(&H6c)+Chr(&H4f)+Chr(98)+Chr(106)+Chr(&H65)+Chr(99)+Chr(&H74)+Chr(77)+Chr(97)+Chr(&H70)+Chr(&H70)+Chr(101)+Chr(&H72)))
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_I1_IO011O1_I)
if m.isDestroyed return invalid 
_0II100O011IO()
m.initializationService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H75)+Chr(&H70)),_I1_IO011O1_I)
end function
function getConfig(_II1II0O_IIOI=invalid)
if m.isDestroyed return invalid 
config=m.configurationService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(67)+Chr(&H6f)+Chr(110)+Chr(102)+Chr(105)+Chr(&H67)),invalid)
if __1O0__O__O11(config.source)
config.source=config.source.clone((1=1))
end if
return config 
end function
function getVersion(_0I1I__I10OO0=invalid)
if m.isDestroyed return invalid 
return(Chr(&H31)+Chr(46)+Chr(52)+Chr(&H31)+Chr(46)+Chr(&H32)) 
end function
sub ___I0I11OI0I0()
if m.Video<>invalid
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(116)+Chr(&H50)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(114)+Chr(83)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(101)),m.Video.state)
if m.Video.state=(Chr(&H65)+Chr(114)+Chr(&H72)+Chr(&H6f)+Chr(&H72))
errorCode=m.bitmovinModelObjectMapper.callFunc((Chr(114)+Chr(&H6f)+Chr(&H6b)+Chr(&H75)+Chr(&H56)+Chr(105)+Chr(&H64)+Chr(&H65)+Chr(111)+Chr(&H45)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(67)+Chr(&H6f)+Chr(&H64)+Chr(101)+Chr(84)+Chr(&H6f)+Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(&H6e)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(67)+Chr(&H6f)+Chr(100)+Chr(101)),m.Video.errorCode)
m.deficiencyService.callFunc((Chr(111)+Chr(&H6e)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72)),m.deficiencyFactory.callFunc((Chr(99)+Chr(114)+Chr(&H65)+Chr(97)+Chr(&H74)+Chr(&H65)+Chr(69)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)),errorCode))
else if m.Video.state=(Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(&H6e)+Chr(103))
if m.KeyEventHandler.seeking
if m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(&H4c)+Chr(&H69)+Chr(&H76)+Chr(&H65)))
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=getCurrentTime()
end if
_0II100O011IO()
end if
else if m.Video.state=(Chr(102)+Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H73)+Chr(&H68)+Chr(101)+Chr(&H64))
_0II100O011IO()
end if
end if
end sub
sub _0II100O011IO()
m.KeyEventHandler.seeking=(1=2)
end sub
sub play(_0_0_I_OOO010=invalid)
if m.isDestroyed return 
m.playBackService.callFunc((Chr(112)+Chr(108)+Chr(97)+Chr(&H79)))
end sub
sub instantReplay(_OI1OO0I1O1_I=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H73)+Chr(116)+Chr(97)+Chr(&H6e)+Chr(116)+Chr(82)+Chr(&H65)+Chr(&H70)+Chr(108)+Chr(97)+Chr(121)))
end sub
sub pause(_I0IO0001010I=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(112)+Chr(&H61)+Chr(&H75)+Chr(&H73)+Chr(&H65)))
end sub
sub preload(_II1O00OII_11=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(112)+Chr(&H72)+Chr(101)+Chr(&H6c)+Chr(111)+Chr(&H61)+Chr(&H64)))
end sub
sub seek(_OO_I110IO_0_)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H73)+Chr(&H65)+Chr(101)+Chr(107)),_OO_I110IO_0_)
end sub
sub mute(_I1OO00O0I0O0=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(109)+Chr(&H75)+Chr(&H74)+Chr(101)))
end sub
sub unmute(_0011IOOO10O_=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H75)+Chr(110)+Chr(&H6d)+Chr(117)+Chr(&H74)+Chr(101)))
end sub
sub captionMode(__11_1OOI010I)
if m.isDestroyed return 
m.captionService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(&H43)+Chr(97)+Chr(&H70)+Chr(116)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(77)+Chr(111)+Chr(100)+Chr(&H65)),__11_1OOI010I)
end sub
sub setCaptionMode(_0_O0OII1__10)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H43)+Chr(&H61)+Chr(&H70)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H4d)+Chr(111)+Chr(&H64)+Chr(&H65)),_0_O0OII1__10)
end sub
function isMuted(_IO_I0OO_1__I=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(115)+Chr(77)+Chr(&H75)+Chr(116)+Chr(101)+Chr(100))) 
end function
function isPlaying(_0IO01I0O0IO1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(80)+Chr(108)+Chr(&H61)+Chr(121)+Chr(&H69)+Chr(110)+Chr(103))) 
end function
function isPaused(_O_I1OII_O0I1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(80)+Chr(97)+Chr(&H75)+Chr(&H73)+Chr(101)+Chr(100))) 
end function
function isStalled(__1_0100000__=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(&H53)+Chr(116)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(101)+Chr(100))) 
end function
function availableSubtitles(_O0I0I00O01I0=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(97)+Chr(&H76)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(&H61)+Chr(98)+Chr(108)+Chr(101)+Chr(83)+Chr(&H75)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(&H65)+Chr(&H73))) 
end function
function getSubtitle(_O_0IIOI0I0_1=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(83)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(&H65))) 
end function
function setSubtitle(_O0I1I1__0_1O)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H53)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(116)+Chr(&H6c)+Chr(101)),_O0I1I1__0_1O)
end function
function setSubtitleStyles(_0O0OI__10011)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(&H53)+Chr(117)+Chr(98)+Chr(&H74)+Chr(105)+Chr(116)+Chr(&H6c)+Chr(101)+Chr(&H53)+Chr(116)+Chr(&H79)+Chr(108)+Chr(101)+Chr(115)),_0O0OI__10011)
end function
function getSubtitleStyles(_0OOI_I11_I00=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(&H67)+Chr(&H65)+Chr(&H74)+Chr(&H53)+Chr(&H75)+Chr(98)+Chr(116)+Chr(105)+Chr(&H74)+Chr(&H6c)+Chr(&H65)+Chr(&H53)+Chr(&H74)+Chr(121)+Chr(&H6c)+Chr(101)+Chr(&H73))) 
end function
function availableAudio(_11_01OO_00OI=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(97)+Chr(&H76)+Chr(&H61)+Chr(&H69)+Chr(&H6c)+Chr(97)+Chr(&H62)+Chr(&H6c)+Chr(101)+Chr(&H41)+Chr(&H75)+Chr(100)+Chr(&H69)+Chr(&H6f)),invalid) 
end function
function getAudio(__IO10__01O11=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(65)+Chr(117)+Chr(&H64)+Chr(&H69)+Chr(111)),invalid) 
end function
function setAudio(_I11I1I00I0IO)
if m.isDestroyed return invalid 
m.audioService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(&H75)+Chr(100)+Chr(105)+Chr(111)),_I11I1I00I0IO)
end function
sub unload(__IOOI01000O_=invalid)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(117)+Chr(110)+Chr(108)+Chr(111)+Chr(&H61)+Chr(100)),invalid)
end sub
sub load(_0_0IIO10II0O)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(108)+Chr(111)+Chr(97)+Chr(100)),_0_0IIO10II0O)
end sub
function getDuration(_0I__I1I111OO=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(68)+Chr(117)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e))) 
end function
sub timeShift(_I1I1O_000101)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H74)+Chr(&H69)+Chr(&H6d)+Chr(101)+Chr(&H53)+Chr(104)+Chr(105)+Chr(102)+Chr(116)),_I1I1O_000101)
end sub
function getTimeShift(_IOOO0_10O0OO=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(84)+Chr(105)+Chr(109)+Chr(101)+Chr(&H53)+Chr(&H68)+Chr(&H69)+Chr(&H66)+Chr(&H74))) 
end function
function getMaxTimeShift(_0_0_0I1O01OI=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(77)+Chr(&H61)+Chr(&H78)+Chr(84)+Chr(&H69)+Chr(109)+Chr(101)+Chr(&H53)+Chr(104)+Chr(105)+Chr(102)+Chr(116))) 
end function
sub _11IOOO011_IO()
m.top.timeChanged=m.eventFactory.createTimeChangedEvent(getCurrentTime(),m.top.bitmovinFields)
m.top.currentTime=getCurrentTime()
end sub
function isLive(_011010I0IOO_=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(&H4c)+Chr(105)+Chr(118)+Chr(&H65))) 
end function
sub setHttpHeaders(__I10_10IO_00)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H48)+Chr(&H74)+Chr(&H74)+Chr(112)+Chr(&H48)+Chr(&H65)+Chr(97)+Chr(100)+Chr(101)+Chr(&H72)+Chr(115)),__I10_10IO_00)
end sub
sub _OI_10O000IO0(_III_I00O11O_)
previousFocusedNodeId=_III_I00O11O_.getNode()
if not _OO_O1_O1O0O_(ad_getActiveAdBreak())return 
if previousFocusedNodeId=m.top.id and m.Video.enableUI
_1_1O_0OI0_O0()
end if
end sub
sub _1_1O_0OI0_O0()
m.KeyEventHandler.setFocus((1=1))
end sub
function getThumbnail(_0O_IO11IOII0)
if m.isDestroyed return invalid 
if _OO_O1_O1O0O_(_0O_IO11IOII0)
return invalid 
end if
return m.thumbnailService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(&H54)+Chr(&H68)+Chr(&H75)+Chr(&H6d)+Chr(98)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(&H6c)),_0O_IO11IOII0) 
end function
sub ad_schedule(__OI0O0_IIIO0=invalid)
if m.isDestroyed return 
if _OO_O1_O1O0O_(__OI0O0_IIIO0)return 
m.advertisingService.callFunc((Chr(&H73)+Chr(99)+Chr(&H68)+Chr(&H65)+Chr(&H64)+Chr(117)+Chr(108)+Chr(&H65)+Chr(&H41)+Chr(&H64)+Chr(115)),__OI0O0_IIIO0)
end sub
function ad_list(_011OO110O__I=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(100)+Chr(&H4c)+Chr(105)+Chr(&H73)+Chr(&H74)),invalid) 
end function
function ad_getActiveAdBreak(_II10I1000I_O=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(99)+Chr(116)+Chr(105)+Chr(118)+Chr(101)+Chr(&H41)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(101)+Chr(&H61)+Chr(107)),invalid) 
end function
sub ad_discardAdBreak(__O_IIOI1_O0I)
if m.isDestroyed return 
if _OO_O1_O1O0O_(__O_IIOI1_O0I)return 
m.advertisingService.callFunc((Chr(100)+Chr(&H69)+Chr(115)+Chr(&H63)+Chr(&H61)+Chr(114)+Chr(100)+Chr(65)+Chr(100)+Chr(&H42)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(107)),__O_IIOI1_O0I)
end sub
sub __O1I1O1O1I11()
m.top.destroy=m.eventFactory.createBitmovinBaseEvent(m.top.bitmovinFields.DESTROY)
m.isDestroyed=(1=1)
m.BitmovinPlayerTask.callFunc((Chr(&H73)+Chr(&H74)+Chr(&H6f)+Chr(&H70)+Chr(&H54)+Chr(&H61)+Chr(&H73)+Chr(&H6b)),invalid)
_0O0I0OOI1OO0()
__0O0_1_0I0O0()
end sub
sub destroy(_0100I_OO110O=invalid)
__O1I1O1O1I11()
end sub
function getCurrentTime(_OI0O__000O00=invalid)
if m.isDestroyed return invalid 
return m.timeService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(67)+Chr(&H75)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(84)+Chr(105)+Chr(109)+Chr(&H65)),invalid) 
end function
function ad_isAd(_1OO__O00_0I1=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(105)+Chr(&H73)+Chr(&H41)+Chr(100)),invalid) 
end function
sub _0O0I0OOI1OO0()
m.video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(97)+Chr(116)+Chr(101)))
m.video.unobserveFieldScoped((Chr(112)+Chr(&H6f)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)))
m.video.unobserveFieldScoped((Chr(100)+Chr(111)+Chr(&H77)+Chr(110)+Chr(108)+Chr(&H6f)+Chr(97)+Chr(&H64)+Chr(101)+Chr(&H64)+Chr(83)+Chr(&H65)+Chr(103)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(&H74)))
m.video.unobserveFieldScoped((Chr(97)+Chr(117)+Chr(&H64)+Chr(105)+Chr(111)+Chr(&H54)+Chr(&H72)+Chr(97)+Chr(&H63)+Chr(107)))
m.video.unobserveFieldScoped((Chr(99)+Chr(&H6f)+Chr(110)+Chr(&H74)+Chr(101)+Chr(110)+Chr(116)+Chr(73)+Chr(110)+Chr(&H64)+Chr(&H65)+Chr(120)))
m.video.unobserveFieldScoped((Chr(100)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(&H6e)))
m.top.unobserveFieldScoped((Chr(102)+Chr(111)+Chr(&H63)+Chr(117)+Chr(&H73)+Chr(101)+Chr(&H64)+Chr(67)+Chr(&H68)+Chr(&H69)+Chr(108)+Chr(100)))
m.playbackService.unobserveFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(&H4f)+Chr(99)+Chr(&H63)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)))
end sub
sub __0O0_1_0I0O0()
m.KeyEventHandler.callFunc((Chr(100)+Chr(101)+Chr(&H73)+Chr(116)+Chr(&H72)+Chr(&H6f)+Chr(121)))
end sub
sub _0IO1IOII1O0_(_00_I00OO0OO1)
eventName=_00_I00OO0OO1.getData().eventName
eventData=_00_I00OO0OO1.getData().eventData
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
?(Chr(67)+Chr(&H68)+Chr(97)+Chr(&H6e)+Chr(&H67)+Chr(&H65)+Chr(32)+Chr(&H74)+Chr(111)+Chr(32)+Chr(&H70)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(32)+Chr(115)+Chr(116)+Chr(&H61)+Chr(&H74)+Chr(101)+Chr(58)+Chr(&H20));m.top.playerState
else if eventName=m.top.BitmovinFields.MUTED
m.top.muted=eventData
else if eventName=m.top.BitmovinFields.UNMUTED
m.top.unmuted=eventData
end if
end sub
sub __1_OO01_OIO_(_0_0O0_0OOI0I)
eventName=_0_0O0_0OOI0I.getData().eventName
if eventName=m.top.BitmovinFields.DESTROY and not m.isDestroyed
__O1I1O1O1I11()
end if
end sub
sub _0IOI1I_10_1_(_0I_0__0__1O1)
eventName=_0I_0__0__1O1.getData().eventName
eventData=_0I_0__0__1O1.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
else if eventName=m.top.BitmovinFields.AUDIO_CHANGED
m.top.audioChanged=eventData
end if
end sub
sub _0O101O__O0I_(_I01I011I1IO1)
eventName=_I01I011I1IO1.getData().eventName
eventData=_I01I011I1IO1.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
end if
end sub
sub _11OII0O1I_OO(_O_10__I11OII)
eventData=_O_10__I11OII.getData()
if eventData.type=m.top.BitmovinFields.IMPRESSION
m.top.impression=eventData
end if
end sub
sub _10I10_OI1OIO(__OIOO0_O11O_)
eventData=__OIOO0_O11O_.getData()
if eventData.type=m.top.BitmovinFields.LICENSE_VALIDATED
m.top.licenseValidated=eventData
end if
end sub
sub _OI1I11OI010_(__1I_O110__10)
eventName=__1I_O110__10.getData().eventName
eventData=__1I_O110__10.getData().eventData
if eventName=m.top.BitmovinFields.SOURCE_LOADED
_0I1IIO1_O000()
m.top.sourceLoaded=eventData
else if eventName=m.top.BitmovinFields.SOURCE_UNLOADED
_011OO__1011I()
m.top.sourceUnloaded=eventData
else if eventName=m.top.BitmovinFields.PLAY
m.top.play=eventData
else if eventName=(Chr(95)+Chr(48)+Chr(&H49)+Chr(73)+Chr(49)+Chr(48)+Chr(48)+Chr(79)+Chr(&H30)+Chr(&H31)+Chr(&H31)+Chr(&H49)+Chr(&H4f))
_0II100O011IO()
end if
end sub
sub _0I1IIO1_O000()
m.Video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),(Chr(95)+Chr(95)+Chr(&H5f)+Chr(&H49)+Chr(&H30)+Chr(73)+Chr(&H31)+Chr(&H31)+Chr(&H4f)+Chr(&H49)+Chr(&H30)+Chr(73)+Chr(&H30)))
m.Video.observeFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)),(Chr(95)+Chr(49)+Chr(49)+Chr(73)+Chr(79)+Chr(79)+Chr(79)+Chr(&H30)+Chr(49)+Chr(&H31)+Chr(&H5f)+Chr(&H49)+Chr(&H4f)))
end sub
sub _011OO__1011I()
m.Video.unobserveFieldScoped((Chr(115)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)))
m.Video.unobserveFieldScoped((Chr(&H70)+Chr(111)+Chr(115)+Chr(105)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)))
end sub
sub _I_O01111O_1I(_1OO_0I0__I00)
eventData=_1OO_0I0__I00.getData()
eventType=eventData.type
if eventType=m.top.BitmovinPlayerState.PAUSED or eventType=m.top.BitmovinPlayerState.PLAYING
m.playbackService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(83)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),eventType)
else if eventType=m.top.BitmovinFields.AD_STARTED
m.top.adStarted=eventData
m.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H50)+Chr(108)+Chr(97)+Chr(&H79)+Chr(101)+Chr(114)+Chr(&H53)+Chr(116)+Chr(&H61)+Chr(116)+Chr(&H65)),m.top.BitmovinPlayerState.PLAYING)
else if eventType=m.top.BitmovinFields.TIME_CHANGED
m.top.timeChanged=eventData
end if
end sub
sub _1OOO_OIII00I(___I0I100IOOI)
eventData=___I0I100IOOI.getData()
if eventData.type=m.top.BitmovinFields.DOWNLOAD_FINISHED
m.top.downloadFinished=eventData
else if eventData.type=m.top.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED
m.top.videoDownloadQualityChanged=eventData
else if eventData.type=m.top.BitmovinFields.AUDIO_DOWNLOAD_QUALITY_CHANGED
m.top.audioDownloadQualityChanged=eventData
end if
end sub
