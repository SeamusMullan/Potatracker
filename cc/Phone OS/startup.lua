-- Imports ---------------------
local location = require("location")
local ui = require("ui")
local json = require("json")
local rnet = require("rednet")
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