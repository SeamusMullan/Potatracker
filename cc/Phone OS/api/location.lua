local json = require("api/json")
local location = { _version = "0.1.0"}
-- get the current time and location --
function location.GetTimeAndLocation()
  local time = os.date("%H:%M:%S")
  local _x, _y, _z = gps.locate(2)
  if not _x then
      return time, "Unknown Location"
  end
  local loc = json.encode({{x = _x}, {y = _y}, {z = _z}})
  return time, loc
end

function location.GetLocation()
  local _x, _y, _z = gps.locate(2)
  if not _x then
      return "Unknown Location"
  end
  local loc = json.encode({{x = _x}, {y = _y}, {z = _z}})
  return loc
end

function location.GetTime()
  local time = os.date("%H:%M:%S")
  return time
end

return location