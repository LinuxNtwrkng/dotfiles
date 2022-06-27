-------------------------------------------------------------------
--Hammerspoon config to display notification on WiFi status changes
-------------------------------------------------------------------

wifiwatcher = hs.wifi.watcher.new(function ()
    net = hs.wifi.currentNetwork()
    if net==nil then
        hs.notify.show("You lost Wi-Fi connection","","","")
    else
        hs.notify.show("Connected to Wi-Fi network","",net,"")
    end
end)
wifiwatcher:start()