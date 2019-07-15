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
      title: "Test video"
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
      title: "Test video"
      assetType: "live"
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
      title: "Test video"
      assetType: "vod"
    },
    drm: {
      Widevine: {
        LA_URL: "https://example.com/widevine/license"
      }
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
      title: "Test video"
      assetType: "vod"
    },
    drm: {
      Widevine: {
        LA_URL: "https://example.com/playready/license"
      }
    }
  }
end function
