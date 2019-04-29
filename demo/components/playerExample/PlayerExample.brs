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

    m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.ERROR, "catchVideoError")
    m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.WARNING, "catchVideoWarning")
    m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.SEEK, "onSeek")
    m.bitmovinYospacePlayer.ObserveField(m.BitmovinFields.SEEKED, "onSeeked")

    m.top.appendChild(m.bitmovinYospacePlayer)

    params = {
      config : m.playerConfig,
      yospaceConfig : {
        debugVerbosity : m.bitmovinYospacePlayer.DebugVerbosityEnum.TRACE
      }
    }

    m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.SETUP, params)
  end if
end function

sub catchVideoError()
  print "ERROR: "; m.bitmovinYospacePlayer.error.code.toStr() + ": " + m.bitmovinYospacePlayer.error.message
end sub

sub catchVideoWarning()
  print "WARNING: "; m.bitmovinYospacePlayer.warning.code.toStr() + ": " + m.bitmovinYospacePlayer.warning.message
end sub

sub onSeek()
  print "SEEKING"
end sub

sub onSeeked()
  print "SEEKED: "; m.bitmovinYospacePlayer.seeked
end sub
