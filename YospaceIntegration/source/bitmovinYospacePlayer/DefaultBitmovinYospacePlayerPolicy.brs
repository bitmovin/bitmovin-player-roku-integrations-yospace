function initBitmovinYospacePlayerPolicy()
  this = {}

  this["canMute"] = function()
        return true
  end function

  this["canSeek"] = function()
    ' allow seeking only if no add is playing
    return ad_getActiveAdBreak() = invalid
  end function

  this["canSeekTo"] = function(seekTarget as Float, currentTime = getCurrentTime() as Float)
    adBreaks = ad_list()
    skippedAdBreaks = []
    for each adBrk in adBreaks
      if (adBrk.scheduleTime > currentTime) and (adBrk.scheduleTime < seekTarget)
        skippedAdBreaks.Push(adBrk)
      end if
    end for
    if skippedAdBreaks.Count() > 0
      adBreakToPlay = skippedAdBreaks[skippedAdBreaks.Count() - 1]
      seekTarget = adBreakToPlay.scheduleTime
    end if
    return seekTarget
  end function

  this["canSkip"] = function()
    ad = ad_getActiveAd()
    if ad <> invalid
      currentTime = getCurrentTime()
      if ad.skippableAfter < 0
        return -1
      end if
      if currentTime >= ad.skippableAfter
        return 0
      else
        return (ad.skippableAfter - currentTime)
      end if
    else
      return -1
    end if
  end function

  this["canPause"] = function()
    return true
  end function

  this["canChangePlaybackSpeed"] = function()
    if ad_getActiveAd() = invalid
      return true
    else
      return false
    end if
  end function

  return this
end function
