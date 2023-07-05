function initBitmovinYospacePlayerPolicy()
  this = {}

  this["_watchedAdBreaks"] = []

  this["markAdBreakWatched"] = function(br)
    print "Marking ad break as watched: "; br
    if br <> invalid then
      m._watchedAdBreaks.Push(br.scheduleTime)
    end if
    print "Watched Ad Breaks: "; m._watchedAdBreaks
  end function

  this["resetWatchedAdBreaks"] = function()
    m._watchedAdBreaks = []
  end function

  this["canMute"] = function()
        return true
  end function

  this["canSeek"] = function()
    ' allow seeking only if no add is playing
    return ad_getActiveAdBreak() = invalid
  end function

  this["canSeekTo"] = function(seekTarget as Float, currentTime = getCurrentTime() as Float)
    adBrk = m._closestAdBreak(seekTarget)
    if adBrk <> invalid then
      if m.trapDuration <> invalid and ((adBrk.scheduleTime + m.trapDuration) > seekTarget) then
        return adBrk.scheduleTime
      else
        return seekTarget
      end if
    else
      return seekTarget
    end if
  end function

  this["canSkip"] = function()
    ad = ad_getActiveAd()
    if ad <> invalid then
      currentTime = getCurrentTime()
      if ad.skippableAfter < 0 then
        return -1
      end if
      if currentTime >= ad.skippableAfter then
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
    if ad_getActiveAd() = invalid then
      return true
    else
      return false
    end if
  end function

  this["_closestAdBreak"] = function (seekTarget)
    adBreaks = ad_list()
    skippedAdBreaks = []
    for each adBrk in adBreaks
      if (adBrk.scheduleTime < seekTarget) then
        if m.skipWatchedAds = false then
          print "Skipped watched ads is false. Adding break"; adBrk
          skippedAdBreaks.Push(adBrk)
        else if ((m.skipWatchedAds = true) and (m.hasBreakBeenWatched(adBrk.scheduleTime) = false)) then
          print "Skipped watched ads is true, but we have not seek this break"; adBrk
          skippedAdBreaks.Push(adBrk)
        end if
      end if
    end for

    if skippedAdBreaks.Count() > 0 then
      adBreakToPlay = skippedAdBreaks[skippedAdBreaks.Count() - 1]
      return adBreakToPlay
    end if

    return invalid
  end function

  this["trapDuration"] = invalid
  this["skipWatchedAds"] = false
  this["hasBreakBeenWatched"] = function (time as Float)
    for each adBrk in m._watchedAdBreaks
        if adBrk = time then
            return true
        end if
    end for
    return false
  end function

  return this
end function
