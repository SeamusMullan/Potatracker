-- get the current time and location
local function get_time_and_location()
    local time = os.date("%H:%M:%S")
    local x, y, z = gps.locate(2)
    if not x then
        return time, "Unknown Location"
    end
    local location = string.format(x .. ", " .. y .. ", " .. z)
    return time, location
end




while true do
    local time, location = get_time_and_location()
    local data = {
        time = time,
        location = location
    }
    print(data.time .. " : " .. data.location)
    sleep(1)
end
