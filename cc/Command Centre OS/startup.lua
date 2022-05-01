local monitors = { peripheral.find("monitor") }
peripheral.find("modem", rednet.open)
local phones = {}

-- Send message to all computers that have rednet open --
-- to tell all computers the ID of the command centre --
-- so they can send messages to it safely --
local CommandCentre = "V2F0IHRoZSBkb2cgZG9pbg=="
rednet.host(CommandCentre, "CommandCentre")

local function locate(table, value) 
  for i = 1, #table do
    if table[i][1] == value then return true end
  end
  return false
end


local m = monitors[1]
m.setTextScale(0.5)
m.write("Sup Bitches! Ready to spy on some idiots?!")

while true do
  local id, message = rednet.receive()
  if locate(phones, id) then
    if message.type == "location" then
      phones[id][1] = message.msg
    end
  else
    phones[#phones + 1] = {id, message.msg}
  end
  m.setCursorPos(1, 1)
  m.clear()
  m.write("stuff" .. tostring(message.msg))
end
