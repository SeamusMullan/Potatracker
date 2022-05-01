local json = require("json")
local monitors = { peripheral.find("monitor") }
peripheral.find("modem", rednet.open)

-- Send message to all computers that have rednet open --
-- to tell all computers the ID of the command centre --
-- so they can send messages to it safely --
local CommandCentre = "V2F0IHRoZSBkb2cgZG9pbg=="
local atEveryone = json.encode({type = CommandCentre})
rednet.broadcast(atEveryone)


local m = monitors[1]

m.setTextScale(0.5)
m.write("Sup Bitches! Ready to spy on some idiots?!")

while true do
  local message = rednet.receive()
  m.write(message)
end
