sub init()

end sub

' OVERRIDEN initializeYoSpace method
sub initializeYoSpace()
  m.yospaceTask = CreateObject("roSGNode", "BitmovinYospaceConvivaPlayerTask")
  m.yospaceTask.observeField("taskReady", "onTaskReady")
end sub