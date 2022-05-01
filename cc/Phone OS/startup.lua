-- Imports ---------------------
local location = require("api/location")
local ui = require("api/ui")
local json = require("api/json")
local pinknet = require("api/pinknet")
-- Variables -------------------
local t, l 
local w, h = term.getSize()
local id = pinknet.FindCommandCentre()
local booted = false

-- show a startup icon of a potato --

local function potatoIcon()
    print("pass")
end

booted = ui.drawLogo()

while booted do
  t, l = location.GetTimeAndLocation()
  if l == nil then
    l = "Unknown Location"
  end
  local loc = json.decode(l)
  term.clear()
  term.setCursorPos(1, 1)
  pinknet.SendToCC("location", loc)
  term.write(string.format("CCID: %s", id))
  term.setCursorPos(1, 2)
  term.write(string.format("Time: %s", t))
  term.setCursorPos(1, 3)
  term.write(string.format("Location:"))
  term.setCursorPos(1, 4) 
  term.write(string.format("%s", l)) 
  term.setCursorPos(1, 5)
  term.write(string.format("%s", loc))
end