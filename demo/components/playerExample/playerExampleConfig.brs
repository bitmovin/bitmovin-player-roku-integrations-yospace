function getExamplePlayerConfig()
  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "http://csm-e.cds1.yospace.com/access/d/400/u/0/1/130782300?f=0000130753172&format=vmap",
      title: "Test video",
      assetType: "vod"
    }
  }
end function

function getExamplePlayerConfigWithContentNode()
  content = CreateObject("roSGNode", "ContentNode")
  content.streamFormat = "hls"
  content.url = "http://csm-e.cds1.yospace.com/access/d/400/u/0/1/130782300?f=0000130753172&format=vmap"
  content.title = "Test video"
  content.live = false

  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: content
  }
end function

function getExamplePlayerConfigLive()
  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "http://csm-e.cds1.yospace.com/csm/extlive/yospace02,sampledroid.m3u8?yo.br=false&yo.ac=true",
      title: "Test video",
      assetType: "live"
    }
  }
end function

function getConfigLiveMontageScte35NonYs()
return {
  playback: {
    autoplay: true,
    muted: true
  },
  tweaks: {
    nativeHlsParsingEnabled: true
  },
  adaptation: {
    preload: false
  },
  source: {
    hls: "https://live-media-montage-qa.warnermediacdn.com/int/manifest/me-drm-cenc/master_de.m3u8",
    assetType: "none",
    title: "Live Montage Stream - Turner",
    drm: {
      widevine: {
        LA_URL: "https://widevine.license.istreamplanet.com/widevine/api/license/a229afbf-e1d3-499e-8127-c33cd7231e58"
      },
    }
  }
}
end function

function getExamplePlayerConfigLiveRetry()
  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "http://csm-e.cds1.yospace.com/csm/extlive/yospace02,sampledroid.m3u8?yo.br=false&yo.ac=false",
      title: "Test video",
      assetType: "live",
      retryExcludingYospace: true
    }
  }
end function

function getExamplePlayerConfigWidevineVod()
  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "http://example.com/vod.m3u8",
      title: "Test video",
      assetType: "vod",
      drm: {
        widevine: {
          LA_URL: "https://example.com/widevine/license"
        }
      }
    }
  }
end function

function getExamplePlayerConfigNonYospaceVod()
  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "https://bitmovin-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8",
      title: "Test Non Yospace Live Stream",
      assetType: "none"
    }
  }
end function

function getExamplePlayerConfigNoAssetType()
  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "https://bitmovin-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8",
      title: "Test Non Yospace Live Stream"
    }
  }
end function

function getExamplePlayerConfigPlayreadyVod()
  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "http://example.com/vod.m3u8",
      title: "Test video",
      assetType: "vod"
      drm: {
        Widevine: {
          LA_URL: "https://example.com/playready/license"
        }
      }
    }
  }
end function
