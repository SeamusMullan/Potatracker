local ui = { _version = "0.1.0"}

local w = 26
local h = 20
local taskbar = {
  " ________________________ ",
  "| Home | Settings | Bonk!|"
}
local boot = {
  {"       ", 0.1},
  {"_      ", 0.1},
  {"__     ", 0.1},
  {"___    ", 0.1},
  {"____   ", 0.1},
  {"_____  ", 0.1},
  {"______ ", 0.1},
  {"_______", 0.1},
  {"P______", 0.1},
  {"Po_____", 0.1},
  {"Pot____", 0.1},
  {"Pota___", 0.1},
  {"Potat__", 0.1},
  {"Potato_", 1.0},
  {"PotatO_", 0.5},
  {"PotatOS", 2.0}
}
function ui.drawLogo()
  for i = 1, #boot do
    term.clear()
    term.setCursorPos(w/2 - #boot[i][1]/2 + 2, h/2)
    term.write(boot[i][1])
    sleep(boot[i][2])
  end
  return true
end

return ui