function mapAd(ad)
  return {
    isLinear: true,
    duration: ad.GetDuration(),
    id: ad.GetAdvert().GetId(),
    clickThroughUrl: ad.GetAdvert().GetLinear().GetClickThrough(),
    mediaFileUrl:  ad.GetAdvert().GetLinear().GetMediaFiles()[0].src,
    skippableAfter: ad.GetAdvert().GetLinear().GetSkipOffset()
  }
end function

' Parameter name cannot be simply "adBreak" as it would interfere with an already existing "adBreak" from the yospaceSDK
function mapAdBreak(myAdBreak)
  aBr = {
    id: myAdBreak._INSTANCEID,
    scheduleTime: myAdBreak.GetStart(),
    ads: []
  }
  for each ad in myAdBreak.GetAdverts()
    aBr.ads.Push(mapAd(ad))
  end for
  return aBr
end function
