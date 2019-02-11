sub init()
  m.playerConfig = getExamplePlayerConfig()

  ' Creates the ComponentLibrary (the BitmovinPlayerSDK in this case)
  m.bitmovinPlayerSDK = CreateObject("roSGNode", "ComponentLibrary")
  m.bitmovinPlayerSDK.id = "BitmovinPlayerSDK"
  m.bitmovinPlayerSDK.uri = "https://cdn.bitmovin.com/player/roku/1/bitmovinplayer.zip"
  ' Adding the ComponentLibrary node to the scene will start the download of the library
  m.top.appendChild(m.bitmovinPlayerSDK)
  m.bitmovinPlayerSDK.observeField("loadStatus", "onLoadStatusChanged")

  '------------------------------------------------------------------------------------------------'

  ' Creates another ComponentLibrary for the yospace wrapper
  m.bitmovinYospacePlayerSDK = CreateObject("roSGNode", "ComponentLibrary")
  m.bitmovinYospacePlayerSDK.id = "BitmovinYospacePlayerSDK"
  ' NOTE: for dev purposes, a node server can be spun up that has the player library as a zip file
  m.bitmovinYospacePlayerSDK.uri = "http://YOUR-IP-HERE:8080/bitmovinyospaceplayer.zip"
  m.top.appendChild(m.bitmovinYospacePlayerSDK)
  m.bitmovinYospacePlayerSDK.observeField("loadStatus", "onLoadStatusChanged")

  'TODO: replace button workaround with an actual solution'
  bttn = m.top.findNode("bttnSetup")
  bttn.observeField("buttonSelected", "onButtonPressed")
  bttn.setFocus(true)
end sub

'TODO: Replace the button workaround with an actual solution'
sub onButtonPressed()
  m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.SETUP, m.playerConfig)
end sub

' The ComponentLibrary loadStatus field can equal "none", "ready", "loading" or "failed"
sub onLoadStatusChanged()
  print "LOAD STATUS FOR PLAYER LIBRARY: "; m.bitmovinPlayerSDK.loadStatus
  print "LOAD STATUS FOR YOSPACE PLAYER LIBRARY: "; m.bitmovinYospacePlayerSDK.loadStatus

  if m.bitmovinYospacePlayerSDK.loadStatus="ready" and m.bitmovinPlayerSDK.loadStatus="ready"
    ' Once the player library and the wrapper are loaded and ready, we can use the wrapper to reference the BitmovinPlayer component
    m.bitmovinYospacePlayer = CreateObject("roSGNode", "BitmovinYospacePlayerSDK:BitmovinYospacePlayer")

    m.BitmovinFunctions = m.bitmovinYospacePlayer.BitmovinFunctions
    m.BitmovinFields = m.bitmovinYospacePlayer.BitmovinFields

    m.BitmovinFunctions = m.bitmovinYospacePlayer.BitmovinFunctions
    m.BitmovinFields = m.bitmovinYospacePlayer.BitmovinFields
    m.bitmovinPlayer.ObserveField(m.BitmovinFields.ERROR, "catchVideoError")
    m.bitmovinPlayer.ObserveField(m.BitmovinFields.WARNING, "catchVideoWarning")
    m.bitmovinPlayer.ObserveField(m.BitmovinFields.SEEK, "onSeek")
    m.bitmovinPlayer.ObserveField(m.BitmovinFields.SEEKED, "onSeeked")

    m.top.appendChild(m.bitmovinYospacePlayer)

    'm.bitmovinPlayer.callFunc(m.BitmovinFunctions.SETUP, m.playerConfig)

    ' Testing that error is thrown correctly, can't play without a source
    'm.bitmovinPlayer.callFunc(m.BitmovinFunctions.PLAY, invalid)

    'm.bitmovinPlayer.callFunc(m.BitmovinFunctions.LOAD, m.playerConfig.source)

    'm.bitmovinPlayer.ObserveField("videoState", "onStateChange")
  end if
end sub

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
