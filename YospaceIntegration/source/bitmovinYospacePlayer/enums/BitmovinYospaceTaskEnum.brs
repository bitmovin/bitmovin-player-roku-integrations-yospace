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
      REPORT_COMPANION_EVENT: "reportCompanionEvent",
      SET_CONTENT_METADATA: "setContentMetadata",
      SET_DEBUG_LEVEL: "setDebugLevel",
      SET_ENABLE_RAF: "setEnableRAF"
    }
  }
end function
