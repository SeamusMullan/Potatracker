local json = require("api/json")
local location = require("api/location")
rednet.open("back") --phones have modem on the back --

local function FindCommandCentre()
  local commandCentre
  local id, obj = rednet.receive()
  local message = json.decode(obj)
  if not message.type then
    print("No message no message type")
    return
  end
  if message.type == "V2F0IHRoZSBkb2cgZG9pbg==" then
    commandCentre = id
  end
  return commandCentre
end

function SendToCC()
  local id = FindCommandCentre()
  if id then
    local message = json.encode({type = "location", loc = location.GetLocation()})
    rednet.send(id, message)
  end
end