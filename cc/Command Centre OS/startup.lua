local json = require("api/json")
local monitors = { peripheral.find("monitor") }
peripheral.find("modem", rednet.open)

-- Send message to all computers that have rednet open --
-- to tell all computers the ID of the command centre --
-- so they can send messages to it safely --
local CommandCentre = "V2F0IHRoZSBkb2cgZG9pbg=="
rednet.host(CommandCentre, "CommandCentre")

local m = monitors[1]
m.setTextScale(0.5)
m.write("Sup Bitches! Ready to spy on some idiots?!")

while true do
  
end
