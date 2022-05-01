-- Imports ---------------------
local json = require("api/json")
CommandCentre = nil
-- Variables -------------------
local pinknet = { _version = "0.1.0"}
local cC = "V2F0IHRoZSBkb2cgZG9pbg==" --Command Centre protocol
peripheral.find("modem", rednet.open)

while CommandCentre == nil do
  return rednet.lookup(cC, "CommandCentre")
end
function pinknet.FindCommandCentre()
  return CommandCentre
end

function pinknet.SendToCC(type, msg)
  local id = pinknet.FindCommandCentre()
  if id then
    local message = json.encode({type = type, message = msg})
    rednet.send(id, message)
  end
end

return pinknet