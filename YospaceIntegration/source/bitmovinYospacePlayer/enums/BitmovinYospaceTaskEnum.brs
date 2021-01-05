function getBitmovinYospaceTaskEnum()
  return {
    ObservableFields: {
      STREAM_CONTENT: "StreamContent",
      EVENT_REPORT: "EventReport",
      CALL_FUNCTION: "callFunction"
    },
    StreamType: {
      LIVE: "live",
      VOD: "vod",
      V_LIVE: "vlive"
    },
    Functions: {
      SKIP_AD: "skipAd",
      SEEK: "seek",
      PAUSE: "pause",
      MUTE: "mute",
      SET_CONTENT_METADATA: "setContentMetadata",
      SET_DEBUG_LEVEL: "setDebugLevel",
      SET_ENABLE_RAF: "setEnableRAF",
      INITIALIZE_CONVIVA: "initializeConviva",
      MONITOR_VIDEO: "monitorVideo",
      MONITOR_YOSPACE_SDK: "monitorYoSpaceSDK",
      CREATE_CONVIVA_SESSION: "createConvivaSession",
      VIDEO_ERROR: "videoError",
      UPDATE_CONTENT_METADATA: "updateContentMetadata",
      END_SESSION: "endSession",
      REPORT_PLAYBACK_DEFICIENCY: "reportPlaybackDeficiency",
      REPORT_SEEK_STARTED: "reportSeekStarted",
      SEND_CUSTOM_APPLICATION_EVENT: "sendCustomApplicationEvent",
      SEND_CUSTOM_PLAYBACK_EVENT: "sendCustomPlaybackEvent"

    }
  }
end function
