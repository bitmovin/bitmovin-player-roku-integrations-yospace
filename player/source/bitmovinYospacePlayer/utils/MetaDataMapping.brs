function mapID3MetaData(metaData)
  metaDataObj = {}
  if (metaData.Count() = 6) then
    for each i in metaData
      if (len(i) = 4) then
        hex = metaData[i]
        parsed = ""
        for j = 3 to len(hex) step 2
          pair = mid(hex, j, 2)
          parsed = parsed + chr(val(pair, 16))
        end for
        YO_DEBUG("Decoded ID3 tag: {0} as {1}", i, parsed)
        metaDataObj[i] = parsed
      end if
    end for
    return metaDataObj
  end if
end function

function mapEmsgMetaData(metaData)
  rC = CreateObject("roRegex", ",", "")
  rE = createObject("roRegex", "=", "")
  metaDataObj = {}
  for each s in rC.Split(metaData.MessageData)
    pair = rE.Split(s)
    key = pair[0]
    value = pair[1]
    metaDataObj.AddReplace(key, value)
  end for
  return metaDataObj
end function
