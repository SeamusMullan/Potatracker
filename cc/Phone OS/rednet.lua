require("json")
rednet.open("back") --phones have modem on the back --

local commandCentre
local id, obj = rednet.receive()
local message = json.decode(obj)
if message.type == "V2F0IHRoZSBkb2cgZG9pbg==" then
  commandCentre = id
end

