function getTBSYoSpaceVOD()
  return {
    playback: {
      autoplay: true,
      muted: false
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "https://vod-manifests-ctl.warnermediacdn.com/csm/tbs/cenc/5d95d3c5f8925524f0d22c78eae60ead00000000/master_wv_tv.m3u8?_fw_ae=91299a6348e3a78cd4d5714ca7fb1312&_fw_ar=1&_fw_did=rida:30d52de2-bac1-560f-828e-513d88315429&_fw_vcid2=30d52de2-bac1-560f-828e-513d88315429&_is_lat=0&afid=222591187&caid=teste536b216022396015032ab21a03eedde3ee10e80&conf_csid=tbs.com_connecteddevices_roku_midroll&context=182883174&ifa_type=rida&nw=48804&prof=48804%3Atbs_roku_vod&vdur=1214.71&yo.dnt=false",
      assetType: "vod",
      title: "TBS VOD",
      drm: {
        widevine: {
          LA_URL: "https://widevine.license.istreamplanet.com/widevine/api/license/369463fd-e0a2-4ce9-9ad4-e698aabe5a77"
        }
        headers: {
          "x-isp-token": "eyJ2ZXIiOjEsInR5cCI6IkpXVCIsImVuYyI6IkExMjhHQ00ifQ.oAlTZgzjAHCnhIbc1Odu1w.C91_NYWt5QnS639k1VsiY-RNafy19rdu9lqXgTj0LLlOZqRqrCkkdnqjXPoWJWnpwatu6hUtKrgCfz9A9miX23eLC-yy208G2HNOL8stlMuzydwxdZo8cMD49wMX7uOM3LsAORad_m9yIZjSkQyXPJht8PkfULTCS5UtUNDBRWivSb_DMjT2T8I4gyhF33DEtCOKU2z6x5YuNt4xZ7XTXEnCB-FyTdjZHN-APqxBAlhS4aQ8XCSNSg.SYzpBseM1_YOcBdviHktiQ"
        }
      },
      options: {
        startOffset: 300
      }
    }
  }
end function

function getPrerollClip()
  return {
    playback: {
      autoplay: true,
      muted: true
    },
    adaptation: {
      preload: false
    },
    source: {
      hls: "https://clips-manifests-aka-qa.warnermediacdn.com/csm/tbs/clips/2020-01/7559-ref/cmaf/master_cl_tv.m3u8?_fw_ar=0&_fw_did=rida:30d52de2-bac1-560f-828e-513d88315429&_fw_vcid2=30d52de2-bac1-560f-828e-513d88315429&_is_lat=0&afid=256242188&caid=me905b9a7f42dd12241badf153a82038feee4c6866&conf_csid=trutv.com_connecteddevices_roku_midroll&context=181740194&nw=48804&playername=top-2.1.0&prof=48804%3Atrutv_roku_vod&vdur=361.596&yo.dnt=false",
      title: "Test video",
      assetType: "vod"
      options: {
        startOffset: 10
      }
    }
  }
end function

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
