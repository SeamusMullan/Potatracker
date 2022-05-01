local json = require("json")
rednet.open("back") --phones have modem on the back --

function FindCommandCentre()
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
  return id
end
