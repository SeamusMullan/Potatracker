local location = { _version = "0.1.0"}
-- get the current time and location --
function location.GetTimeAndLocation()
  local time = os.date("%H:%M:%S")
  local x, y, z = gps.locate(2)
  if not x then
    x = "Unknown"
  end
  if not y then
    y = "Unknown"
  end
  if not z then
    z = "Unknown"
  end
  local loc = {}
  loc.x = x
  loc.y = y
  loc.z = z
  return time, loc
end

function location.GetLocation()
  local x, y, z = gps.locate(2)
  if not x then
    x = "Unknown"
  end
  if not y then
    y = "Unknown"
  end
  if not z then
    z = "Unknown"
  end
  local loc = {}
  loc.x = x
  loc.y = y
  loc.z = z
  return loc
end

function location.GetTime()
  local time = os.date("%H:%M:%S")
  return time
end

return location