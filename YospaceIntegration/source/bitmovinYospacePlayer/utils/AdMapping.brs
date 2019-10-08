function mapAd(ad)
  mediaFiles = ad.GetAdvert().GetLinear().GetMediaFiles()
  url = invalid
  if mediaFiles.count() > 0 then url = mediaFiles[0].src

  return {
    isLinear: true,
    duration: ad.GetDuration(),
    id: ad.getMediaID(),
    clickThroughUrl: ad.GetAdvert().GetLinear().GetClickThrough(),
    mediaFileUrl: url,
    skippableAfter: ad.GetAdvert().GetLinear().GetSkipOffset()
  }
end function

' Parameter name cannot be simply "adBreak" as it would interfere with an already existing "adBreak" from the yospaceSDK
function mapAdBreak(myAdBreak, timeline)
  aBr = {
    id: myAdBreak._INSTANCEID,
    scheduleTime: toMagicTime(myAdBreak.GetStart(),timeline),
    ads: []
  }
  for each ad in myAdBreak.GetAdverts()
    aBr.ads.Push(mapAd(ad))
  end for
  return aBr
end function

function toMagicTime(playbackTime, timeline)
  mTime = playbackTime

  ' This additional offset contains the duration of ads already elapsed during an ad break
  ' Multiple ads in an adbreak will have the same start offset, the offset of the ad break
  offset = 0

  if timeline = invalid
    return mTime
  end if

  for each timelineElement in timeline.elements
    if timelineElement.mode = "ADVERT"
      if ((timelineElement.offset + offset) + timelineElement.size) < playbackTime
        mTime -= timelineElement.size
        offset += timelineElement.size
      else if (playbackTime > (timelineElement.offset + offset)) and (playbackTime < ((timelineElement.offset + offset) + timelineElement.size))
        mTime = (playbackTime - (timelineElement.offset + offset)) ' Subtract the time elapsed from content start to ad start
        exit for ' No need to check the rest of the elements when we are currently in an ad
      end if
    else
      ' Set offset to 0 since timeline entry is not an ad
      offset = 0
    end if
  end for

  return mTime
end function
