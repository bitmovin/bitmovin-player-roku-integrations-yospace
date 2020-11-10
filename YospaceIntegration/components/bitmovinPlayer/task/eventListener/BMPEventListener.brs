sub init()

end sub

sub subscribe(task)
  if task = invalid then return
  task.subscribe = m.top
end sub
