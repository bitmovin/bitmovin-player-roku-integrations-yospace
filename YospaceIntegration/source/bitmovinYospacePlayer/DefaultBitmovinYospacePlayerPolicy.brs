function getDefaultBitmovinYospacePlayerPolicy()
  return {
    canMute: function() as Boolean:
        return true
      :end function,

    canSeek: function() as Boolean:
        ' allow seeking only if no add is playing
        return ad_getActiveAdBreak() = invalid
      :end function,

    canSeekTo: function(seekTarget as Float, currentTime = getCurrentTime() as Float) as Float:
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
      :end function,

    canSkip: function() as Float:
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
      :end function,

    canPause: function() as Boolean:
        return true
      :end function,

    canChangePlaybackSpeed: function() as Boolean:
        if ad_getActiveAd() = invalid
          return true
        else
          return false
        end if
      :end function
  }
end function
