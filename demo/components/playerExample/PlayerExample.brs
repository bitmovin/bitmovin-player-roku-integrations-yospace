sub init()
  m.playerConfig = getExamplePlayerConfig()

  m.bitmovinYospacePlayer = CreateObject("roSGNode", "BitmovinYospacePlayer")
  m.bitmovinYospacePlayer.id = "BitmovinYospacePlayer"
  m.top.appendChild(m.bitmovinYospacePlayer)

  ' Observe the isPlayerReady field to be informed when the player has finished its inital setup up and is ready to be used
  m.bitmovinYospacePlayer.observeField("isPlayerReady", "onPlayerReady")
end sub

function onPlayerReady()
  if m.bitmovinYospacePlayer.isPlayerReady = true
    m.BitmovinFunctions = m.bitmovinYospacePlayer.BitmovinFunctions
    m.BitmovinFields = m.bitmovinYospacePlayer.BitmovinFields

    ' Set ad events listeners
      m.bitmovinYospacePlayer.ObserveField("adBreakStart", "onAdBreakStart")
      m.bitmovinYospacePlayer.ObserveField("adStart", "onAdStart")
      m.bitmovinYospacePlayer.ObserveField("adFinished", "onAdFinished")
      m.bitmovinYospacePlayer.ObserveField("adBreakFinished", "onAdBreakFinished")

      ' Set time change events listeners
      m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.SEEK, "onSeek")
      m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.SEEKED, "onSeeked")
      m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.CURRENT_TIME, "onCurrentTimeChanged")

      ' Set error and warning event listeners
      m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.ERROR, "catchVideoError")
      m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.WARNING, "catchVideoWarning")


    m.top.appendChild(m.bitmovinYospacePlayer)

    params = {
      config : m.playerConfig,
      yospaceConfig : {
        debugVerbosity : m.bitmovinYospacePlayer.DebugVerbosityEnum.TRACE
      }
    }

    m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.SETUP, params)

    print m.bitmovinYospacePlayer
  end if
end function


' Listening to ad events
sub onAdBreakStart()
  print "Ad Break started"
end sub

sub onAdStart()
  print "Ad started"
end sub

sub onAdFinished()
  print "Ad finished"
end sub

sub onAdBreakFinished()
  print "Ad Break finished"
end sub

' Listening to time change events
sub onCurrentTimeChanged()
  print "current time: "; m.bitmovinYospacePlayer.currentTime
end sub

sub onSeek()
  print "SEEKING"
end sub

sub onSeeked()
  print "SEEKED: "; m.bitmovinYospacePlayer.seeked
end sub

' Listening to error and warning events
sub catchVideoError()
  print "ERROR: "; m.bitmovinYospacePlayer.error.code.toStr() + ": " + m.bitmovinYospacePlayer.error.message
end sub

sub catchVideoWarning()
  print "WARNING: "; m.bitmovinYospacePlayer.warning.code.toStr() + ": " + m.bitmovinYospacePlayer.warning.message
end sub

' Setting a policy
sub setPolicy()

end sub
