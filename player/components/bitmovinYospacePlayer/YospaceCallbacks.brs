' ---------------------------- yospace callbacks ----------------------------
' Called whenever the player enters an advert break
sub cb_ad_break_start(dummy = invalid as Dynamic)
  YO_TRACE("AD BREAK START")
end sub

' Called whenever an individual advert starts
sub cb_advert_start(miid as String)
  YO_TRACE("ADVERT START for {0}", miid)
end sub

' Called whenever an individual advert completes
sub cb_advert_end(miid as String)
  YO_TRACE("ADVERT END for {0}", miid)
end sub

' Called whenever the player exits an advert break
sub cb_ad_break_end(dummy = invalid as Dynamic)
  YO_TRACE("AD BREAK END")
end sub

sub cb_session_ready(response as Dynamic)
  m.session.RegisterPlayer(m.player)
  m.source.hls = m.session.GetMasterPlaylist()
  m.bitmovinPlayer.callFunc(m.top.BitmovinFunctions.LOAD, m.source)
end sub
