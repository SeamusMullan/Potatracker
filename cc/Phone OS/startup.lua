-- Imports ---------------------
local location = require("api/location")
local ui = require("api/ui")
local json = require("api/json")
local rnet = require("api/rednet")
-- Variables -------------------
local t, l 
local w, h = term.getSize()

-- show a startup icon of a potato --

local function potatoIcon()
    print("pass")
end

while true do
  t, l = GetTimeAndLocation()
  term.clear()
  term.setCursorPos(1, 1)
  print(FindCommandCentre)
end