sub observeFields(node, observers)
  if not isInvalid(node) and not isInvalid(observers)
    for each key in observers
      node.observeFieldScoped(key, observers[key])
    end for
  end if
end sub

sub unobserveFields(node, fields)
  if not isInvalid(node) and not isInvalid(fields)
    for i = 0 to fields.Count() - 1
      node.unobserveFieldScoped(fields[i])
    end for
  end if
end sub
