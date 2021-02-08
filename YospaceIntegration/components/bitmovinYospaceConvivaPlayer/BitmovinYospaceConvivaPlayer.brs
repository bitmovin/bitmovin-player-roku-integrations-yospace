sub init()
end sub

' ---------------------------- Overridden methods ----------------------------
sub initializeYoSpace()
  m.yospaceTask = CreateObject("roSGNode", "BitmovinYospaceConvivaPlayerTask")
  m.yospaceTask.observeField("taskReady", "onTaskReady")
end sub


sub onSourceLoaded()
  updateContentMetadata()
  m.top.sourceLoaded = m.bitmovinPlayer.sourceLoaded
end sub

sub onTimeShift()
  m.top.timeShift = m.bitmovinplayer.timeShift
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.REPORT_SEEK_STARTED }
end sub

sub onPlayerStateChanged()
  m.top.playerState = m.bitmovinPlayer.playerState
  if m.top.playerState = m.top.BitmovinPlayerState.FINISHED or m.top.playerState = m.top.BitmovinPlayerState.ERROR or m.top.playerState = "stopped"
    m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.END_SESSION }
  end if
  reportPlayerStateChanged(m.top.playerState)
end sub

sub catchVideoError()
  m.top.error = m.bitmovinPlayer.error
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.VIDEO_ERROR }
end sub

sub onSeek()
  m.top.seek = m.bitmovinPlayer.seek
  updatePolicyHelper_seekStartPosition()
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.REPORT_SEEK_STARTED }
end sub
' ---------------------------- bitmovin conviva api function ----------------------------
function setupConvivaAnalytics(player, customerKey, config)
  m.yospaceTask.player = player
  m.yospaceTask.customerKey = customerKey
  m.yospaceTask.config = config
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.INITIALIZE_CONVIVA }
end function

function updateContentMetadata(contentMetadataOverrides = invalid)
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.UPDATE_CONTENT_METADATA, arguments: { contentMetaData: contentMetadataOverrides } }
end function

function monitorVideo(contentMetadataOverrides)
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.MONITOR_VIDEO, arguments: { contentMetaData: contentMetadataOverrides } }
end function

function monitorYoSpaceSDK()
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.MONITOR_YOSPACE_SDK }
end function

' Sends a custom application-level event to Conviva's Player Insight. An application-level event can always
' be sent and is not tied to a specific video.
' @param {String} name - Arbitrary event name
' @param {Object} attributes - A string-to-string dictionary object with arbitrary attribute keys and values
sub sendCustomApplicationEvent(mName, mAttributes)
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.SEND_CUSTOM_APPLICATION_EVENT, arguments: { name: mName, attributes: mAttributes } }
end sub

' Sends a custom playback-level event to Conviva's Player Insight. A playback-level event can only be sent
' during an active video session.
' @param {String} name - Arbitrary event name
' @param {Object} attributes - A string-to-string dictionary object with arbitrary attribute keys and values
sub sendCustomPlaybackEvent(mName, mAttributes)
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.SEND_CUSTOM_PLAYBACK_EVENT, arguments: { name: mName, attributes: mAttributes } }
end sub

' Ends the current conviva tracking session.
' Results in a no-op if there is no active session.

' Warning: The integration can only be validated without external session management. So when using this method we can
' no longer ensure that the session is managed at the correct time.
sub endSession()
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.END_SESSION }
end sub

' Sends a custom deficiency event during playback to Conviva's Player Insight. If no session is active it will NOT
' create one.
' @param {String} message - Message which will be send to conviva
' @param {Boolean} isFatal - Flag if the error is fatal or just a warning
' @param {Boolean} [endSession=true] - Flag if the session should be closed after reporting the deficiency
sub reportPlaybackDeficiency(mMessage, mIsFatal, mEndSession = true)
  m.yospaceTask.callFunction = { id: m.BitmovinYospaceTaskEnums.Functions.REPORT_PLAYBACK_DEFICIENCY, arguments: { message: mMessage, isFatal: mIsFatal, endSession: mEndSession } }
end sub
