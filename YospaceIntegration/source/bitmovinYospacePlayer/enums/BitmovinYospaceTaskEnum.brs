function getBitmovinYospaceTaskEnum()
  return {
    ObservableFields: {
      STREAM_CONTENT: "StreamContent",
      EVENT_REPORT: "EventReport",
      CALL_AD_FUNCTION: "callAdFunction"
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
      SET_CONTENT_METADATA, "setContentMetadata"
    }
  }
end function
