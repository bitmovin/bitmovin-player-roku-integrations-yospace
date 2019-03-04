sub init()
  m.playerConfig = getExamplePlayerConfig()

  ' Creates a ComponentLibrary for the bitmovin yospace player
  m.bitmovinYospacePlayerSDK = CreateObject("roSGNode", "ComponentLibrary")
  m.bitmovinYospacePlayerSDK.id = "BitmovinYospacePlayerSDK"
  ' NOTE: for dev purposes, a node server can be spun up that has the player library as a zip file
  m.bitmovinYospacePlayerSDK.uri = "http://YOUR-IP-HERE:8080/roku/player.zip"
  m.top.appendChild(m.bitmovinYospacePlayerSDK)
  m.bitmovinYospacePlayerSDK.observeField("loadStatus", "onLoadStatusChanged")
end sub

' The ComponentLibrary loadStatus field can equal "none", "ready", "loading" or "failed"
sub onLoadStatusChanged()
  print "LOAD STATUS FOR YOSPACE PLAYER LIBRARY: "; m.bitmovinYospacePlayerSDK.loadStatus
  if m.bitmovinYospacePlayerSDK.loadStatus="ready"
    ' Once the player library is loaded and ready, we can use is to reference the BitmovinPlayer component
    m.bitmovinYospacePlayer = CreateObject("roSGNode", "BitmovinYospacePlayerSDK:BitmovinYospacePlayer")
    m.bitmovinYospacePlayer.observeField("isPlayerReady", "onPlayerReady")
  end if
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
