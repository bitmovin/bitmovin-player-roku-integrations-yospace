sub init()
  m.bitmovinPlayer = createObject("roSGNode", "BitmovinPlayerSDK:BitmovinPlayer")
  m.bitmovinPlayer.id = "BitmovinPlayer"

  m.top.BitmovinFunctions = m.bitmovinPlayer.BitmovinFunctions
  m.top.BitmovinFields = m.bitmovinPlayer.BitmovinFields

  m.top.appendChild(m.bitmovinPlayer)
end sub

sub setup(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.SETUP, params)
end sub

sub play(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.PLAY, params)
end sub

sub pause(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.PAUSE, params)
end sub

sub unload(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.UNLOAD, params)
end sub

sub preload(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.PRELOAD, params)
end sub

sub seek(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.SEEK, params)
end sub

'TO BE OVERRIDEN'
sub load(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.LOAD, params)
end sub

sub mute(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.MUTE, params)
end sub

sub unmute(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.UNMUTE, params)
end sub

sub isMuted(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.IS_MUTED, params)
end sub

sub captionMode(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.CAPTION_MODE, params)
end sub

sub isPlaying(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.IS_PLAYING, params)
end sub

sub isPaused(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.IS_PAUSED, params)
end sub

sub isStalled(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.IS_STALLED, params)
end sub

sub availableSubtitles(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.AVAILABLE_SUBTITLES, params)
end sub

sub getSubtitles(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.GET_SUBTITLES, params)
end sub

sub setSubtitles(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.SET_SUBTITLES, params)
end sub

sub availableAudio(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.AVAILABLE_AUDIO, params)
end sub

sub getAudio(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.GET_AUDIO, params)
end sub

sub setAudio(params)
  m.top.findNode("BitmovinPlayer").callFunc(m.top.BitmovinFunctions.SET_AUDIO, params)
end sub
