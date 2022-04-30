require("json")

-- get the current time and location --
function GetTimeAndLocation()
  local time = os.date("%H:%M:%S")
  local x, y, z = gps.locate(2)
  if not x then
      return time, "Unknown Location"
  end
  local location = json.encode({x = x, y = y, z = z})
  return time, location
end