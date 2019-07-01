function mapAd(ad)
  mediaFiles = ad.GetAdvert().GetLinear().GetMediaFiles()
  url = invalid
  if mediaFiles.count() > 0 then url = ad.GetAdvert().GetLinear().GetMediaFiles()[0].src

  return {
    isLinear: true,
    duration: ad.GetDuration(),
    id: ad.GetAdvert().GetId(),
    clickThroughUrl: ad.GetAdvert().GetLinear().GetClickThrough(),
    mediaFileUrl: url,
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
