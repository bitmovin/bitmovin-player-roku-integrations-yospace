sub init()
  m.metadataTimeline = []
end sub

sub initializeService(video, bitmovinPlayer)
  m.video = video
  m.video.timedMetaDataSelectionKeys = ["*"]
  m.bitmovinPlayer = bitmovinPlayer
end sub

sub startService(param = invalid)
  m.bitmovinPlayer.observeFieldScoped("seek", "clearMetadataTimeline")
  m.video.observeFieldScoped("position", "checkMetadataTimeline")
  m.video.observeFieldScoped("timedMetaData", "onTimedMetaData")
end sub

sub stopService(param = invalid)
  m.bitmovinPlayer.unobserveFieldScoped("seek")
  m.video.unobserveFieldScoped("position")
  m.video.unobserveFieldScoped("timedMetaData")
end sub

sub onTimedMetaData(event)
  metadata = event.getData()
  if metadata.Source <> invalid and metadata.Source = "emsg"
    addMetadataToTimeline(metadata)
    return
  end if
  m.bitmovinPlayer.metadata = metadata
end sub

sub clearMetadataTimeline()
  m.metadataTimeline.Clear()
end sub

sub addMetadataToTimeline(metadata)
  m.metadataTimeline.Push(addScheduledTime(metadata))
  checkMetadataTimeline()
end sub

sub checkMetadataTimeline()
  alreadyFired = 0
  for i = 0 to (m.metadataTimeline.Count() - 1) step 1
    currentIndex = i - alreadyFired
    if m.metadataTimeline[currentIndex].BMP_scheduledTime <= m.bitmovinPlayer.currentTime
      m.bitmovinPlayer.metadata = m.metadataTimeline[currentIndex]
      m.metadataTimeline.Delete(currentIndex)
      alreadyFired++
    end if
  end for
end sub

function addScheduledTime(metadata)
  metadata.AddReplace("BMP_scheduledTime", calculateScheduledTime(metadata))
  return metadata
end function

function calculateScheduledTime(metadata) as Float
  scheduledTime = metadata._decodeInfo_pts
  if metadata.Offset <> invalid and metadata.Offset > 0 and metadata.Timescale <> invalid and metadata.Timescale > 0
    scheduledTime += (metadata.Offset / metadata.Timescale)
  end if
  return scheduledTime
end function
