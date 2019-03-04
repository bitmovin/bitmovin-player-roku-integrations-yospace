function getDefaultBitmovinYospacePlayerPolicy()
  return {
    canMute: function() as Boolean:
        return true
      :end function,

    canSeek: function() as Boolean:
        ' allow seeking only if no add is playing
        if getCurrentAd() = invalid
          return true
        else
          return false
        end if
      :end function,

    canSeekTo: function(seekTarget as Float) as Float:
        currentTime = getPlayerPosition()
        adBreaks = ad_list()
        skippedAdBreaks = []
        for each ad in adBreaks
          if ad.scheduleTime > currentTime and ad.scheduleTime < seekTarget
            skippedAdBreaks.Push(ad)
          end if
        end for
        if skippedAdBreaks.Count() > 0
          adBreakToPlay = skippedAdBreaks[(skippedAdBreaks.Count()-1)]
          return adBreakToPlay.scheduleTime
        end if
        return seekTarget
      :end function,

    canSkip: function() as Float:
        ad = getCurrentAd()
        if ad <> invalid
          currentTime = getPlayerPosition()
          if ad.GetAdvert().GetLinear().GetSkipOffset() < 0
            return -1
          end if
          if currentTime >= ad.GetAdvert().GetLinear().GetSkipOffset()
            return 0
          else
            return (ad.GetAdvert().GetLinear().GetSkipOffset() - currentTime)
          end if
        else
          return -1
        end if
      :end function,

    canPause: function() as Boolean:
        return true
      :end function,

    canChangePlaybackSpeed: function() as Boolean:
        if getCurrentAd() = invalid
          return true
        else
          return false
        end if
      :end function
  }
end function
