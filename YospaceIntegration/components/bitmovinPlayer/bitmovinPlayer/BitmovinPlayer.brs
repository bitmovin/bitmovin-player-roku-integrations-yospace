sub init()
m.BitmovinComponentIds=_1011I__1I0OI()
services={}
m.video=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(&H56)+Chr(105)+Chr(&H64)+Chr(101)+Chr(111)))
m.video.id=m.BitmovinComponentIds.MAIN_VIDEO
m.video.translation=(Chr(&H5b)+Chr(&H30)+Chr(&H2c)+Chr(&H30)+Chr(&H5d))
m.KeyEventHandler=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H4b)+Chr(101)+Chr(&H79)+Chr(&H45)+Chr(&H76)+Chr(101)+Chr(110)+Chr(&H74)+Chr(72)+Chr(97)+Chr(110)+Chr(&H64)+Chr(&H6c)+Chr(&H65)+Chr(114)))
m.KeyEventHandler.id=m.BitmovinComponentIds.KEY_EVENT_HANDLER
m.video.appendChild(m.KeyEventHandler)
m.top.appendChild(m.video)
m.BitmovinPlayerTask=CreateObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(66)+Chr(105)+Chr(116)+Chr(&H6d)+Chr(&H6f)+Chr(118)+Chr(105)+Chr(110)+Chr(80)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H65)+Chr(&H72)+Chr(84)+Chr(&H61)+Chr(115)+Chr(107)))
m.BitmovinPlayerTask.id=m.BitmovinComponentIds.BITMOVIN_PLAYER_TASK
m.top.appendChild(m.BitmovinPlayerTask)
m.deviceInfo=CreateObject((Chr(114)+Chr(111)+Chr(&H44)+Chr(101)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)+Chr(73)+Chr(110)+Chr(102)+Chr(111)))
m.top.id=m.deviceInfo.getRandomUuid()
m.top.observeFieldScoped((Chr(&H66)+Chr(111)+Chr(&H63)+Chr(&H75)+Chr(115)+Chr(&H65)+Chr(&H64)+Chr(67)+Chr(&H68)+Chr(105)+Chr(108)+Chr(&H64)),(Chr(&H5f)+Chr(79)+Chr(49)+Chr(&H31)+Chr(&H30)+Chr(48)+Chr(49)+Chr(73)+Chr(&H5f)+Chr(95)+Chr(49)+Chr(48)+Chr(73)))
m.top.BitmovinPlayerState=_0_1_OI101_0I()
m.top.BitmovinFunctions=_IO1OO_O1_OI0()
m.top.BitmovinFields=_OO0OOO1IOII_()
m.BitmovinConfigAssetTypes=_IIO1O01__I01()
m.KeyEventHandler.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(117)+Chr(&H70)),invalid)
m.deficiencyFactory=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(68)+Chr(101)+Chr(102)+Chr(&H69)+Chr(99)+Chr(&H69)+Chr(&H65)+Chr(&H6e)+Chr(99)+Chr(121)+Chr(70)+Chr(97)+Chr(&H63)+Chr(116)+Chr(&H6f)+Chr(114)+Chr(121)))
m.Errors=m.deficiencyFactory.callFunc((Chr(103)+Chr(101)+Chr(&H74)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(111)+Chr(&H72)+Chr(&H73)))
m.deficiencyService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(&H50)+Chr(&H44)+Chr(&H65)+Chr(102)+Chr(105)+Chr(99)+Chr(105)+Chr(101)+Chr(&H6e)+Chr(&H63)+Chr(&H79)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)))
m.deficiencyService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(&H7a)+Chr(101)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(101)),m.top)
m.deficiencyService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(101)+Chr(110)+Chr(116)+Chr(79)+Chr(99)+Chr(99)+Chr(&H75)+Chr(&H72)+Chr(114)+Chr(101)+Chr(&H64)),(Chr(95)+Chr(&H31)+Chr(79)+Chr(&H30)+Chr(&H49)+Chr(&H4f)+Chr(73)+Chr(95)+Chr(&H30)+Chr(49)+Chr(&H49)+Chr(&H4f)+Chr(95)))
services.AddReplace((Chr(100)+Chr(101)+Chr(102)+Chr(105)+Chr(99)+Chr(&H69)+Chr(&H65)+Chr(110)+Chr(&H63)+Chr(&H79)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)),m.deficiencyService)
m.asyncOperationFactory=createObject((Chr(114)+Chr(111)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(&H65)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(&H41)+Chr(115)+Chr(&H79)+Chr(110)+Chr(99)+Chr(79)+Chr(112)+Chr(&H65)+Chr(114)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H46)+Chr(&H61)+Chr(&H63)+Chr(&H74)+Chr(&H6f)+Chr(114)+Chr(&H79)))
m.BitmovinAsyncOperationTypes=___IO10I10001()
m.TimelineReferencePoints=_I110II0_II1_()
m.ServiceEndpoints=__01_00_1O_OI()
m.isDestroyed=(1=2)
m.eventFactory=_III0OO_011_1()
m.configurationService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(&H43)+Chr(&H6f)+Chr(110)+Chr(&H66)+Chr(&H69)+Chr(&H67)+Chr(117)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(99)+Chr(101)))
m.configurationService.callFunc((Chr(105)+Chr(110)+Chr(&H69)+Chr(116)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(&H65)),invalid)
services.AddReplace((Chr(99)+Chr(&H6f)+Chr(110)+Chr(102)+Chr(&H69)+Chr(103)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(&H65)),m.configurationService)
m.mediaQualityService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(80)+Chr(77)+Chr(101)+Chr(&H64)+Chr(105)+Chr(&H61)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(108)+Chr(105)+Chr(116)+Chr(&H79)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)))
m.mediaQualityService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(&H74)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(101)),m.video)
m.mediaQualityService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(95)+Chr(&H30)+Chr(&H5f)+Chr(&H4f)+Chr(49)+Chr(79)+Chr(&H49)+Chr(&H49)+Chr(48)+Chr(&H4f)+Chr(73)+Chr(&H5f)))
services.AddReplace((Chr(&H6d)+Chr(101)+Chr(&H64)+Chr(105)+Chr(97)+Chr(&H51)+Chr(117)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H74)+Chr(&H79)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),m.mediaQualityService)
m.advertisingService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H67)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(&H41)+Chr(&H64)+Chr(&H76)+Chr(&H65)+Chr(&H72)+Chr(116)+Chr(105)+Chr(115)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(101)+Chr(114)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)))
m.advertisingService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),m.top,m.bitmovinPlayerTask)
m.advertisingService.observeFieldScoped((Chr(101)+Chr(118)+Chr(101)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(99)+Chr(99)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(49)+Chr(73)+Chr(79)+Chr(49)+Chr(&H31)+Chr(&H4f)+Chr(48)+Chr(48)+Chr(&H5f)+Chr(95)+Chr(&H30)+Chr(&H4f)))
services.AddReplace((Chr(&H61)+Chr(&H64)+Chr(118)+Chr(101)+Chr(114)+Chr(116)+Chr(&H69)+Chr(115)+Chr(105)+Chr(110)+Chr(103)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.advertisingService)
m.licensingService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(83)+Chr(&H47)+Chr(&H4e)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(76)+Chr(&H69)+Chr(99)+Chr(101)+Chr(110)+Chr(&H73)+Chr(105)+Chr(&H6e)+Chr(&H67)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)))
m.licensingService.callFunc((Chr(105)+Chr(110)+Chr(105)+Chr(&H74)+Chr(105)+Chr(&H61)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(101)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),m.deficiencyService,m.bitmovinPlayerTask,getVersion())
m.licensingService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(&H30)+Chr(73)+Chr(&H31)+Chr(&H30)+Chr(48)+Chr(&H30)+Chr(73)+Chr(73)+Chr(73)+Chr(&H49)+Chr(&H5f)+Chr(49)))
services.AddReplace((Chr(&H6c)+Chr(105)+Chr(99)+Chr(101)+Chr(110)+Chr(&H73)+Chr(&H69)+Chr(110)+Chr(103)+Chr(83)+Chr(101)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.licensingService)
m.impressionService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(103)+Chr(78)+Chr(111)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(80)+Chr(73)+Chr(109)+Chr(&H70)+Chr(&H72)+Chr(&H65)+Chr(&H73)+Chr(&H73)+Chr(105)+Chr(&H6f)+Chr(110)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)))
m.impressionService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(116)+Chr(&H69)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(&H65)),m.bitmovinPlayerTask,m.video,getVersion())
m.impressionService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(101)+Chr(&H6e)+Chr(&H74)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(&H49)+Chr(48)+Chr(&H30)+Chr(48)+Chr(79)+Chr(73)+Chr(73)+Chr(&H31)+Chr(48)+Chr(95)+Chr(73)+Chr(49)))
services.AddReplace((Chr(&H69)+Chr(109)+Chr(112)+Chr(&H72)+Chr(101)+Chr(115)+Chr(115)+Chr(&H69)+Chr(111)+Chr(110)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.impressionService)
m.timeService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H54)+Chr(105)+Chr(109)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.timeService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(99)+Chr(101)),m.video)
services.AddReplace((Chr(116)+Chr(105)+Chr(109)+Chr(101)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.timeService)
m.playbackService=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(100)+Chr(&H65)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(98)+Chr(&H61)+Chr(&H63)+Chr(107)+Chr(83)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.playbackService.callFunc((Chr(105)+Chr(&H6e)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(97)+Chr(&H6c)+Chr(105)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)),m.video)
m.playbackService.observeFieldScoped((Chr(&H65)+Chr(118)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(&H75)+Chr(114)+Chr(114)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(73)+Chr(73)+Chr(&H31)+Chr(&H49)+Chr(&H5f)+Chr(48)+Chr(95)+Chr(&H30)+Chr(&H4f)+Chr(&H31)+Chr(&H30)+Chr(&H30)))
services.AddReplace((Chr(&H70)+Chr(108)+Chr(97)+Chr(&H79)+Chr(98)+Chr(&H61)+Chr(99)+Chr(&H6b)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.playbackService)
m.metadataService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(&H4e)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(&H4d)+Chr(&H50)+Chr(&H4d)+Chr(101)+Chr(116)+Chr(97)+Chr(&H64)+Chr(&H61)+Chr(&H74)+Chr(&H61)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(101)))
m.metadataService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(116)+Chr(&H69)+Chr(97)+Chr(108)+Chr(&H69)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(&H65)),m.video,m.top,services,m.bitmovinPlayerTask)
services.AddReplace((Chr(109)+Chr(101)+Chr(&H74)+Chr(97)+Chr(100)+Chr(97)+Chr(&H74)+Chr(&H61)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)),m.metadataService)
m.thumbnailService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(71)+Chr(&H4e)+Chr(&H6f)+Chr(100)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H54)+Chr(&H68)+Chr(117)+Chr(&H6d)+Chr(&H62)+Chr(110)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.thumbnailService.callFunc((Chr(&H69)+Chr(110)+Chr(105)+Chr(&H74)+Chr(105)+Chr(97)+Chr(&H6c)+Chr(&H69)+Chr(122)+Chr(101)+Chr(83)+Chr(&H65)+Chr(&H72)+Chr(118)+Chr(105)+Chr(&H63)+Chr(&H65)),m.video)
services.AddReplace((Chr(&H74)+Chr(104)+Chr(&H75)+Chr(&H6d)+Chr(&H62)+Chr(&H6e)+Chr(97)+Chr(&H69)+Chr(&H6c)+Chr(&H53)+Chr(&H65)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.thumbnailService)
m.audioService=CreateObject((Chr(&H72)+Chr(&H6f)+Chr(&H53)+Chr(&H47)+Chr(78)+Chr(111)+Chr(100)+Chr(&H65)),(Chr(66)+Chr(&H4d)+Chr(80)+Chr(65)+Chr(117)+Chr(100)+Chr(105)+Chr(&H6f)+Chr(83)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)))
m.audioService.callFunc((Chr(105)+Chr(110)+Chr(105)+Chr(&H74)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(&H7a)+Chr(101)+Chr(83)+Chr(&H65)+Chr(114)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.video)
m.audioService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(116)+Chr(79)+Chr(&H63)+Chr(99)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(&H5f)+Chr(&H31)+Chr(73)+Chr(49)+Chr(&H49)+Chr(&H5f)+Chr(95)+Chr(79)+Chr(&H31)+Chr(&H5f)+Chr(&H49)+Chr(&H4f)))
services.AddReplace((Chr(&H61)+Chr(117)+Chr(&H64)+Chr(105)+Chr(111)+Chr(&H53)+Chr(&H65)+Chr(&H72)+Chr(&H76)+Chr(105)+Chr(&H63)+Chr(101)),m.audioService)
m.captionService=CreateObject((Chr(&H72)+Chr(111)+Chr(83)+Chr(&H47)+Chr(78)+Chr(111)+Chr(&H64)+Chr(101)),(Chr(&H42)+Chr(77)+Chr(80)+Chr(67)+Chr(97)+Chr(112)+Chr(116)+Chr(105)+Chr(111)+Chr(110)+Chr(83)+Chr(101)+Chr(&H72)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)))
m.captionService.callFunc((Chr(105)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(122)+Chr(101)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),m.video)
m.captionService.observeFieldScoped((Chr(101)+Chr(118)+Chr(&H65)+Chr(110)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(99)+Chr(117)+Chr(&H72)+Chr(&H72)+Chr(&H65)+Chr(100)),(Chr(&H5f)+Chr(49)+Chr(&H30)+Chr(73)+Chr(&H30)+Chr(&H5f)+Chr(48)+Chr(&H4f)+Chr(&H49)+Chr(&H30)+Chr(79)+Chr(73)+Chr(&H4f)))
services.AddReplace((Chr(99)+Chr(97)+Chr(&H70)+Chr(&H74)+Chr(105)+Chr(&H6f)+Chr(&H6e)+Chr(83)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(99)+Chr(101)),m.captionService)
m.initializationService=CreateObject((Chr(114)+Chr(&H6f)+Chr(&H53)+Chr(71)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(101)),(Chr(66)+Chr(77)+Chr(&H50)+Chr(&H49)+Chr(110)+Chr(105)+Chr(&H74)+Chr(105)+Chr(97)+Chr(108)+Chr(&H69)+Chr(122)+Chr(97)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(105)+Chr(99)+Chr(&H65)))
m.initializationService.callFunc((Chr(&H69)+Chr(&H6e)+Chr(105)+Chr(&H74)+Chr(&H69)+Chr(&H61)+Chr(108)+Chr(105)+Chr(122)+Chr(&H65)+Chr(&H53)+Chr(101)+Chr(114)+Chr(118)+Chr(&H69)+Chr(&H63)+Chr(&H65)),m.video,m.bitmovinPlayerTask,m.top,services)
m.initializationService.observeFieldScoped((Chr(101)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(&H74)+Chr(&H4f)+Chr(&H63)+Chr(&H63)+Chr(117)+Chr(114)+Chr(114)+Chr(&H65)+Chr(&H64)),(Chr(&H5f)+Chr(&H31)+Chr(&H49)+Chr(&H49)+Chr(&H5f)+Chr(79)+Chr(95)+Chr(&H4f)+Chr(79)+Chr(&H31)+Chr(&H49)+Chr(79)+Chr(49)))
services.AddReplace((Chr(&H63)+Chr(97)+Chr(&H70)+Chr(&H74)+Chr(105)+Chr(111)+Chr(&H6e)+Chr(&H53)+Chr(101)+Chr(&H72)+Chr(&H76)+Chr(&H69)+Chr(&H63)+Chr(101)),m.initializationService)
m.bitmovinModelObjectMapper=CreateObject((Chr(&H72)+Chr(111)+Chr(&H53)+Chr(&H67)+Chr(78)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),(Chr(66)+Chr(77)+Chr(80)+Chr(&H42)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(&H76)+Chr(&H69)+Chr(110)+Chr(&H4d)+Chr(111)+Chr(&H64)+Chr(101)+Chr(&H6c)+Chr(&H4f)+Chr(&H62)+Chr(106)+Chr(101)+Chr(99)+Chr(116)+Chr(77)+Chr(97)+Chr(&H70)+Chr(&H70)+Chr(&H65)+Chr(114)))
setup({playback:{autoplay:(1=1),muted:(1=2)},adaptation:{preload:(1=1)}})
end sub
function setup(_OI1IO111_0_I)
if m.isDestroyed return invalid 
_1010I__I_IIO()
m.initializationService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(&H75)+Chr(&H70)),_OI1IO111_0_I)
end function
function getConfig(_0O1O_IIOOIO1=invalid)
if m.isDestroyed return invalid 
config=m.configurationService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(67)+Chr(111)+Chr(110)+Chr(102)+Chr(105)+Chr(&H67)),invalid)
if _I11I1OI1O1I_(config.source)
config.source=config.source.clone((1=1))
end if
return config 
end function
function getVersion(_O_I_00O0OIII=invalid)
if m.isDestroyed return invalid 
return(Chr(49)+Chr(&H2e)+Chr(52)+Chr(&H31)+Chr(46)+Chr(49)) 
end function
sub _I0IOII01I00I()
if m.Video<>invalid
m.playbackService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(&H50)+Chr(&H6c)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(83)+Chr(116)+Chr(97)+Chr(116)+Chr(101)),m.Video.state)
if m.Video.state=(Chr(&H65)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(&H72))
errorCode=m.bitmovinModelObjectMapper.callFunc((Chr(&H72)+Chr(111)+Chr(&H6b)+Chr(&H75)+Chr(&H56)+Chr(105)+Chr(100)+Chr(101)+Chr(111)+Chr(&H45)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)+Chr(67)+Chr(111)+Chr(100)+Chr(&H65)+Chr(84)+Chr(&H6f)+Chr(66)+Chr(&H69)+Chr(116)+Chr(109)+Chr(111)+Chr(118)+Chr(&H69)+Chr(&H6e)+Chr(&H45)+Chr(&H72)+Chr(114)+Chr(111)+Chr(114)+Chr(67)+Chr(&H6f)+Chr(&H64)+Chr(&H65)),m.Video.errorCode)
m.deficiencyService.callFunc((Chr(111)+Chr(&H6e)+Chr(69)+Chr(114)+Chr(114)+Chr(&H6f)+Chr(114)),m.deficiencyFactory.callFunc((Chr(&H63)+Chr(&H72)+Chr(&H65)+Chr(97)+Chr(116)+Chr(101)+Chr(69)+Chr(&H72)+Chr(&H72)+Chr(&H6f)+Chr(114)+Chr(&H45)+Chr(118)+Chr(101)+Chr(110)+Chr(116)),errorCode))
else if m.Video.state=(Chr(&H70)+Chr(&H6c)+Chr(97)+Chr(&H79)+Chr(&H69)+Chr(110)+Chr(&H67))
if m.KeyEventHandler.seeking
if m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(&H4c)+Chr(105)+Chr(&H76)+Chr(101)))
m.top.timeShifted=getTimeShift()
else 
m.top.seeked=getCurrentTime()
end if
_1010I__I_IIO()
end if
else if m.Video.state=(Chr(&H66)+Chr(&H69)+Chr(&H6e)+Chr(&H69)+Chr(&H73)+Chr(&H68)+Chr(&H65)+Chr(&H64))
_1010I__I_IIO()
end if
end if
end sub
sub _1010I__I_IIO()
m.KeyEventHandler.seeking=(1=2)
end sub
sub play(__I1O_11O0O0_=invalid)
if m.isDestroyed return 
m.playBackService.callFunc((Chr(112)+Chr(&H6c)+Chr(97)+Chr(&H79)))
end sub
sub instantReplay(_0II1IIOII1_O=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(105)+Chr(&H6e)+Chr(115)+Chr(116)+Chr(&H61)+Chr(110)+Chr(&H74)+Chr(&H52)+Chr(101)+Chr(112)+Chr(108)+Chr(&H61)+Chr(&H79)))
end sub
sub pause(_O_01I_OIIII_=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(97)+Chr(&H75)+Chr(&H73)+Chr(&H65)))
end sub
sub preload(_I_10_O1_0_I0=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H70)+Chr(&H72)+Chr(101)+Chr(108)+Chr(111)+Chr(&H61)+Chr(100)))
end sub
sub seek(_I_OO10O__I01)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(101)+Chr(&H6b)),_I_OO10O__I01)
end sub
sub mute(_I___1I_O11O1=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(&H6d)+Chr(&H75)+Chr(&H74)+Chr(101)))
end sub
sub unmute(___OIO_1II0I_=invalid)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(117)+Chr(&H6e)+Chr(109)+Chr(&H75)+Chr(116)+Chr(101)))
end sub
sub captionMode(__1_IO011IO_O)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(67)+Chr(&H61)+Chr(112)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(110)+Chr(77)+Chr(&H6f)+Chr(&H64)+Chr(101)),__1_IO011IO_O)
end sub
sub setCaptionMode(__II__I01OI0O)
if m.isDestroyed return 
m.captionService.callFunc((Chr(&H73)+Chr(101)+Chr(116)+Chr(67)+Chr(&H61)+Chr(&H70)+Chr(&H74)+Chr(&H69)+Chr(111)+Chr(&H6e)+Chr(&H4d)+Chr(111)+Chr(100)+Chr(101)),__II__I01OI0O)
end sub
function isMuted(_OIO_0OI010II=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(&H4d)+Chr(&H75)+Chr(116)+Chr(&H65)+Chr(100))) 
end function
function isPlaying(_IO__11OIII00=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(80)+Chr(108)+Chr(97)+Chr(121)+Chr(105)+Chr(110)+Chr(103))) 
end function
function isPaused(_1_OOOO0I001O=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(115)+Chr(&H50)+Chr(&H61)+Chr(117)+Chr(&H73)+Chr(&H65)+Chr(100))) 
end function
function isStalled(_O0OII0O_O_00=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H69)+Chr(&H73)+Chr(&H53)+Chr(&H74)+Chr(97)+Chr(108)+Chr(&H6c)+Chr(101)+Chr(&H64))) 
end function
function availableSubtitles(__0IOO0_I1I_O=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(97)+Chr(&H76)+Chr(97)+Chr(&H69)+Chr(108)+Chr(&H61)+Chr(&H62)+Chr(108)+Chr(101)+Chr(83)+Chr(&H75)+Chr(98)+Chr(116)+Chr(105)+Chr(&H74)+Chr(108)+Chr(101)+Chr(115))) 
end function
function getSubtitle(_II1O0_0O_01_=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(103)+Chr(&H65)+Chr(116)+Chr(&H53)+Chr(&H75)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(&H74)+Chr(&H6c)+Chr(&H65))) 
end function
function setSubtitle(_10OIOO0O__IO)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(115)+Chr(&H65)+Chr(116)+Chr(83)+Chr(117)+Chr(&H62)+Chr(&H74)+Chr(&H69)+Chr(116)+Chr(108)+Chr(&H65)),_10OIOO0O__IO)
end function
function setSubtitleStyles(_OII0OO_OO1_1)
if m.isDestroyed return invalid 
m.captionService.callFunc((Chr(&H73)+Chr(&H65)+Chr(&H74)+Chr(83)+Chr(&H75)+Chr(&H62)+Chr(116)+Chr(105)+Chr(116)+Chr(&H6c)+Chr(&H65)+Chr(83)+Chr(116)+Chr(121)+Chr(&H6c)+Chr(&H65)+Chr(115)),_OII0OO_OO1_1)
end function
function getSubtitleStyles(_11OII_I_I_1O=invalid)
if m.isDestroyed return invalid 
return m.captionService.callFunc((Chr(&H67)+Chr(101)+Chr(&H74)+Chr(&H53)+Chr(117)+Chr(&H62)+Chr(116)+Chr(105)+Chr(&H74)+Chr(108)+Chr(101)+Chr(&H53)+Chr(&H74)+Chr(121)+Chr(108)+Chr(101)+Chr(&H73))) 
end function
function availableAudio(_OIIO1I_II_II=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(97)+Chr(&H76)+Chr(&H61)+Chr(105)+Chr(&H6c)+Chr(97)+Chr(98)+Chr(108)+Chr(&H65)+Chr(65)+Chr(&H75)+Chr(&H64)+Chr(&H69)+Chr(&H6f)),invalid) 
end function
function getAudio(__I00OO000_II=invalid)
if m.isDestroyed return invalid 
return m.audioService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(65)+Chr(117)+Chr(100)+Chr(105)+Chr(&H6f)),invalid) 
end function
function setAudio(_1OI_O110101I)
if m.isDestroyed return invalid 
m.audioService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H41)+Chr(117)+Chr(&H64)+Chr(105)+Chr(&H6f)),_1OI_O110101I)
end function
sub unload(_1I__O_1_IO__=invalid)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(117)+Chr(&H6e)+Chr(108)+Chr(&H6f)+Chr(&H61)+Chr(100)),invalid)
end sub
sub load(_110I01I__0O1)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(&H6c)+Chr(111)+Chr(97)+Chr(100)),_110I01I__0O1)
end sub
function getDuration(_OII_O0I__III=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(68)+Chr(&H75)+Chr(114)+Chr(&H61)+Chr(116)+Chr(&H69)+Chr(111)+Chr(110))) 
end function
sub timeShift(_1IO1_0O11100)
if m.isDestroyed return 
m.playbackService.callFunc((Chr(116)+Chr(105)+Chr(109)+Chr(&H65)+Chr(&H53)+Chr(104)+Chr(&H69)+Chr(&H66)+Chr(116)),_1IO1_0O11100)
end sub
function getTimeShift(_1_I_I_IO_011=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(&H54)+Chr(105)+Chr(109)+Chr(&H65)+Chr(&H53)+Chr(&H68)+Chr(105)+Chr(&H66)+Chr(116))) 
end function
function getMaxTimeShift(_O1I01_1III_1=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(103)+Chr(101)+Chr(116)+Chr(&H4d)+Chr(&H61)+Chr(120)+Chr(&H54)+Chr(105)+Chr(&H6d)+Chr(101)+Chr(&H53)+Chr(104)+Chr(105)+Chr(102)+Chr(&H74))) 
end function
sub __I01_11OI0__()
m.top.timeChanged=m.eventFactory.createTimeChangedEvent(getCurrentTime(),m.top.bitmovinFields)
m.top.currentTime=getCurrentTime()
end sub
function isLive(_1__IO_O1O1__=invalid)
if m.isDestroyed return invalid 
return m.playbackService.callFunc((Chr(105)+Chr(&H73)+Chr(&H4c)+Chr(105)+Chr(118)+Chr(&H65))) 
end function
sub setHttpHeaders(_O_0I10____O1)
if m.isDestroyed return 
m.initializationService.callFunc((Chr(115)+Chr(&H65)+Chr(&H74)+Chr(&H48)+Chr(116)+Chr(116)+Chr(112)+Chr(&H48)+Chr(&H65)+Chr(&H61)+Chr(&H64)+Chr(101)+Chr(&H72)+Chr(115)),_O_0I10____O1)
end sub
sub _O11001I__10I(_OIO0OO_01I0_)
previousFocusedNodeId=_OIO0OO_01I0_.getNode()
if not __OOI0OI11_O0(ad_getActiveAdBreak())return 
if previousFocusedNodeId=m.top.id and m.Video.enableUI
_O_IO_0I_O10_()
end if
end sub
sub _O_IO_0I_O10_()
m.KeyEventHandler.setFocus((1=1))
end sub
function getThumbnail(__0O11IOOIOOI)
if m.isDestroyed return invalid 
if __OOI0OI11_O0(__0O11IOOIOOI)
return invalid 
end if
return m.thumbnailService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(&H54)+Chr(&H68)+Chr(&H75)+Chr(109)+Chr(&H62)+Chr(&H6e)+Chr(&H61)+Chr(105)+Chr(108)),__0O11IOOIOOI) 
end function
sub ad_schedule(_O00O_11I_O_O=invalid)
if m.isDestroyed return 
if __OOI0OI11_O0(_O00O_11I_O_O)return 
m.advertisingService.callFunc((Chr(115)+Chr(99)+Chr(104)+Chr(&H65)+Chr(100)+Chr(117)+Chr(108)+Chr(101)+Chr(65)+Chr(&H64)+Chr(&H73)),_O00O_11I_O_O)
end sub
function ad_list(_I1O_I_III_OI=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(103)+Chr(&H65)+Chr(&H74)+Chr(&H41)+Chr(&H64)+Chr(76)+Chr(105)+Chr(115)+Chr(&H74)),invalid) 
end function
function ad_getActiveAdBreak(___1II0I0101_=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(&H67)+Chr(&H65)+Chr(116)+Chr(&H41)+Chr(&H63)+Chr(&H74)+Chr(105)+Chr(&H76)+Chr(101)+Chr(65)+Chr(100)+Chr(66)+Chr(&H72)+Chr(101)+Chr(97)+Chr(107)),invalid) 
end function
sub ad_discardAdBreak(_OIIIO0I1I0OI)
if m.isDestroyed return 
if __OOI0OI11_O0(_OIIIO0I1I0OI)return 
m.advertisingService.callFunc((Chr(&H64)+Chr(&H69)+Chr(&H73)+Chr(&H63)+Chr(&H61)+Chr(&H72)+Chr(&H64)+Chr(&H41)+Chr(100)+Chr(66)+Chr(114)+Chr(101)+Chr(97)+Chr(107)),_OIIIO0I1I0OI)
end sub
sub _10___O_0O1I1()
m.top.destroy=m.eventFactory.createBitmovinBaseEvent(m.top.bitmovinFields.DESTROY)
m.isDestroyed=(1=1)
m.BitmovinPlayerTask.callFunc((Chr(115)+Chr(&H74)+Chr(&H6f)+Chr(112)+Chr(84)+Chr(&H61)+Chr(&H73)+Chr(&H6b)),invalid)
_I__I__01IOI1()
_IIO01I__01OI()
end sub
sub destroy(_IO_00IIIO01O=invalid)
_10___O_0O1I1()
end sub
function getCurrentTime(_1O_01_1O001I=invalid)
if m.isDestroyed return invalid 
return m.timeService.callFunc((Chr(&H67)+Chr(101)+Chr(116)+Chr(&H43)+Chr(&H75)+Chr(114)+Chr(114)+Chr(101)+Chr(&H6e)+Chr(116)+Chr(84)+Chr(105)+Chr(109)+Chr(&H65)),invalid) 
end function
function ad_isAd(_O1_1O_O_1I00=invalid)
if m.isDestroyed return invalid 
return m.advertisingService.callFunc((Chr(105)+Chr(115)+Chr(65)+Chr(100)),invalid) 
end function
sub _I__I__01IOI1()
m.video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(116)+Chr(&H65)))
m.video.unobserveFieldScoped((Chr(&H70)+Chr(&H6f)+Chr(115)+Chr(105)+Chr(116)+Chr(&H69)+Chr(&H6f)+Chr(110)))
m.video.unobserveFieldScoped((Chr(&H64)+Chr(111)+Chr(119)+Chr(110)+Chr(108)+Chr(111)+Chr(&H61)+Chr(100)+Chr(101)+Chr(&H64)+Chr(83)+Chr(101)+Chr(&H67)+Chr(&H6d)+Chr(101)+Chr(110)+Chr(116)))
m.video.unobserveFieldScoped((Chr(&H61)+Chr(117)+Chr(100)+Chr(&H69)+Chr(&H6f)+Chr(84)+Chr(&H72)+Chr(97)+Chr(99)+Chr(&H6b)))
m.video.unobserveFieldScoped((Chr(99)+Chr(111)+Chr(&H6e)+Chr(&H74)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(&H49)+Chr(&H6e)+Chr(&H64)+Chr(&H65)+Chr(120)))
m.video.unobserveFieldScoped((Chr(&H64)+Chr(&H75)+Chr(&H72)+Chr(97)+Chr(&H74)+Chr(105)+Chr(111)+Chr(110)))
m.top.unobserveFieldScoped((Chr(&H66)+Chr(111)+Chr(99)+Chr(117)+Chr(115)+Chr(101)+Chr(&H64)+Chr(67)+Chr(104)+Chr(105)+Chr(108)+Chr(&H64)))
m.playbackService.unobserveFieldScoped((Chr(&H65)+Chr(&H76)+Chr(&H65)+Chr(&H6e)+Chr(116)+Chr(79)+Chr(&H63)+Chr(&H63)+Chr(&H75)+Chr(114)+Chr(&H72)+Chr(101)+Chr(&H64)))
end sub
sub _IIO01I__01OI()
m.KeyEventHandler.callFunc((Chr(&H64)+Chr(&H65)+Chr(115)+Chr(116)+Chr(114)+Chr(111)+Chr(&H79)))
end sub
sub _II1I_0_0O100(__00_1O1_IIOI)
eventName=__00_1O1_IIOI.getData().eventName
eventData=__00_1O1_IIOI.getData().eventData
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
?(Chr(&H43)+Chr(104)+Chr(97)+Chr(&H6e)+Chr(&H67)+Chr(101)+Chr(32)+Chr(&H74)+Chr(111)+Chr(&H20)+Chr(112)+Chr(108)+Chr(&H61)+Chr(121)+Chr(101)+Chr(&H72)+Chr(&H20)+Chr(&H73)+Chr(116)+Chr(97)+Chr(116)+Chr(101)+Chr(58)+Chr(&H20));m.top.playerState
else if eventName=m.top.BitmovinFields.MUTED
m.top.muted=eventData
else if eventName=m.top.BitmovinFields.UNMUTED
m.top.unmuted=eventData
end if
end sub
sub _1O0IOI_01IO_(_O1I111_111O1)
eventName=_O1I111_111O1.getData().eventName
if eventName=m.top.BitmovinFields.DESTROY and not m.isDestroyed
_10___O_0O1I1()
end if
end sub
sub __1I1I__O1_IO(_O1_I1_O10_OI)
eventName=_O1_I1_O10_OI.getData().eventName
eventData=_O1_I1_O10_OI.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
else if eventName=m.top.BitmovinFields.AUDIO_CHANGED
m.top.audioChanged=eventData
end if
end sub
sub _10I0_0OI0OIO(_II000I1IO0I0)
eventName=_II000I1IO0I0.getData().eventName
eventData=_II000I1IO0I0.getData().eventData
if eventName=m.top.BitmovinFields.WARNING
m.top.warning=eventData
end if
end sub
sub _I000OII10_I1(_00OO10_1I011)
eventData=_00OO10_1I011.getData()
if eventData.type=m.top.BitmovinFields.IMPRESSION
m.top.impression=eventData
end if
end sub
sub _0I1000IIII_1(_000000__0OIO)
eventData=_000000__0OIO.getData()
if eventData.type=m.top.BitmovinFields.LICENSE_VALIDATED
m.top.licenseValidated=eventData
end if
end sub
sub _1II_O_OO1IO1(_I1O1I_1_11I0)
eventName=_I1O1I_1_11I0.getData().eventName
eventData=_I1O1I_1_11I0.getData().eventData
if eventName=m.top.BitmovinFields.SOURCE_LOADED
_O1I1_01I_IO0()
m.top.sourceLoaded=eventData
else if eventName=m.top.BitmovinFields.SOURCE_UNLOADED
__1O1IO1O00O_()
m.top.sourceUnloaded=eventData
else if eventName=m.top.BitmovinFields.PLAY
m.top.play=eventData
else if eventName=(Chr(&H5f)+Chr(49)+Chr(48)+Chr(49)+Chr(&H30)+Chr(&H49)+Chr(95)+Chr(95)+Chr(&H49)+Chr(95)+Chr(73)+Chr(&H49)+Chr(&H4f))
_1010I__I_IIO()
end if
end sub
sub _O1I1_01I_IO0()
m.Video.observeFieldScoped((Chr(&H73)+Chr(116)+Chr(&H61)+Chr(116)+Chr(101)),(Chr(&H5f)+Chr(73)+Chr(48)+Chr(73)+Chr(&H4f)+Chr(&H49)+Chr(73)+Chr(&H30)+Chr(&H31)+Chr(&H49)+Chr(48)+Chr(48)+Chr(73)))
m.Video.observeFieldScoped((Chr(112)+Chr(&H6f)+Chr(&H73)+Chr(&H69)+Chr(116)+Chr(&H69)+Chr(111)+Chr(&H6e)),(Chr(&H5f)+Chr(95)+Chr(&H49)+Chr(48)+Chr(&H31)+Chr(&H5f)+Chr(&H31)+Chr(49)+Chr(79)+Chr(73)+Chr(48)+Chr(95)+Chr(95)))
end sub
sub __1O1IO1O00O_()
m.Video.unobserveFieldScoped((Chr(115)+Chr(&H74)+Chr(97)+Chr(&H74)+Chr(&H65)))
m.Video.unobserveFieldScoped((Chr(112)+Chr(111)+Chr(115)+Chr(&H69)+Chr(116)+Chr(105)+Chr(111)+Chr(&H6e)))
end sub
sub _1IO11O00__0O(_00I1I101_0OI)
eventData=_00I1I101_0OI.getData()
eventType=eventData.type
if eventType=m.top.BitmovinPlayerState.PAUSED or eventType=m.top.BitmovinPlayerState.PLAYING
m.playbackService.callFunc((Chr(115)+Chr(101)+Chr(&H74)+Chr(80)+Chr(108)+Chr(&H61)+Chr(&H79)+Chr(101)+Chr(&H72)+Chr(&H53)+Chr(&H74)+Chr(&H61)+Chr(&H74)+Chr(101)),eventType)
else if eventType=m.top.BitmovinFields.AD_STARTED
m.top.adStarted=eventData
m.playbackService.callFunc((Chr(&H73)+Chr(101)+Chr(&H74)+Chr(&H50)+Chr(108)+Chr(97)+Chr(121)+Chr(101)+Chr(114)+Chr(83)+Chr(116)+Chr(97)+Chr(&H74)+Chr(101)),m.top.BitmovinPlayerState.PLAYING)
else if eventType=m.top.BitmovinFields.TIME_CHANGED
m.top.timeChanged=eventData
end if
end sub
sub __0_O1OII0OI_(_0I1O0II_11O1)
eventData=_0I1O0II_11O1.getData()
if eventData.type=m.top.BitmovinFields.DOWNLOAD_FINISHED
m.top.downloadFinished=eventData
else if eventData.type=m.top.BitmovinFields.VIDEO_DOWNLOAD_QUALITY_CHANGED
m.top.videoDownloadQualityChanged=eventData
else if eventData.type=m.top.BitmovinFields.AUDIO_DOWNLOAD_QUALITY_CHANGED
m.top.audioDownloadQualityChanged=eventData
end if
end sub
