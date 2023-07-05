sub init()
  m.top.functionName = "handleWebRequests"
  m.top.control = "RUN"
  m.requestTimeoutWindow = 15000 'milliseconds
end sub

sub handleWebRequests()
  port = CreateObject("roMessagePort")
  m.top.observeField("targeturl", port)

  while true
    msg = wait(0, port)
    if type(msg) = "roSGNodeEvent" and msg.GetField() = "targeturl" then
      url = msg.GetData()
      request = CreateObject("roUrlTransfer")
      requestPort = CreateObject("roMessagePort")
      responseMessage = ""
      responseCode = -1

      request.SetMessagePort(requestPort)
      request.SetUrl(url)
      request.SetCertificatesFile("common:/certs/ca-bundle.crt")

      request.AsyncGetToString()

      while true
        response = wait(m.requestTimeoutWindow, requestPort)
        if response <> invalid and type(response) = "roUrlEvent" then
          responseCode = response.GetResponseCode()
          if (responseCode >= 200) and (responseCode < 400) then
            responseMessage = response.GetString()
          end if
          exit while
        end if
      end while

      m.top.response = responseMessage
      m.top.result = responseCode
    end if
  end while
end sub
