-- Imports ---------------------
local location = require("api/location")
local ui = require("api/ui")
local json = require("api/json")
local pinknet = require("api/pinknet")
-- Variables -------------------
local t, l 
local w, h = term.getSize()

-- show a startup icon of a potato --

local function potatoIcon()
    print("pass")
end

while true do
  pinknet.SendToCC()
  t, l = location.GetTimeAndLocation()
  local loc = json.decode(l)
  if loc == nil then
    loc = "Unknown Location"
  end
  term.clear()
  term.setCursorPos(1, 1)
  local id = pinknet.FindCommandCentre()
  term.write(string.format("ID: %s", id))
  term.setCursorPos(1, 2)
  term.write(string.format("Time: %s", t))
  term.setCursorPos(1, 3)
  term.write(string.format("Location: \n x:%s y:%s z:%s", loc.x, loc.y, loc.z))
  
end