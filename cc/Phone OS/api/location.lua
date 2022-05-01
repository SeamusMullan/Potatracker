local json = require("api/json")
local location = { _version = "0.1.0"}
-- get the current time and location --
function location.GetTimeAndLocation()
  local time = os.date("%H:%M:%S")
  local x, y, z = gps.locate(2)
  if not x then
      return time, "Unknown Location"
  end
  local loc = json.encode({"x" == x, "y" == y, "z" == z})
  return time, loc
end

function location.GetLocation()
  local x, y, z = gps.locate(2)
  if not x then
      return "Unknown Location"
  end
  local loc = json.encode({"x" == x, "y" == y, "z" == z})
  return loc
end

function location.GetTime()
  local time = os.date("%H:%M:%S")
  return time
end

return location