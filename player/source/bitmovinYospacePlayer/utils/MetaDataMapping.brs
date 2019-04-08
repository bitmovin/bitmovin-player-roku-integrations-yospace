function mapID3MetaData(metaData)
  metaDataObj = {}
  for each i in metaData
    if (len(i) = 4) then
      hex = metaData[i]
      parsed = parseHexString(hex)
      YO_DEBUG("Decoded ID3 tag: {0} as {1}", i, parsed)
      metaDataObj[i] = parsed
    end if
  end for
  return metaDataObj
end function

function mapEmsgMetaData(metaData)
  metaDataObj = {}
  for each token in metaData.MessageData.Tokenize(",")
    pair = token.Tokenize("=")
    if pair.Count() <> 2 return invalid
    key = pair[0]
    value = pair[1]
    metaDataObj.AddReplace(key, value)
  end for
  return metaDataObj
end function

' Parses hex values found in ID3 tags which are used by Yospace for ad tracking
function parseHexString(hexString)
  parsed = ""
  for j = 3 to len(hexString) step 2
    ' mid returns a substring of "hexString" with length "2" and the starting position "j"
    pair = mid(hexString, j, 2)
    ' chr returns a one-character string whose character has the specified Unicode value
    ' val returns the integer value from parsing the string with the specified radix
    parsed = parsed + chr(val(pair, 16))
  end for
  return parsed
end function
