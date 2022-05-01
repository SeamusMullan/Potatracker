local w = 26
local h = 20
local logo = "Phone OS"
local taskbar = {
  " ________________________ ",
  "| Home | Settings | Bonk!|"
}
local boot = {
  {"P______", 0.5},
  {"Po_____", 0.5},
  {"Pot____", 0.5},
  {"Pota___", 0.5},
  {"Potat__", 0.5},
  {"Potato_", 2.0},
  {"PotatO_", 1.0},
  {"PotatOS", 4.0}
}
local function drawLogo()
  for i = 1, #boot do
    term.clear()
    term.setCursorPos(w/2 - #boot[i]/2, h/2 - #boot/2)
    term.write(boot[i])
    sleep(boot[i][2])
  end
  term.setCursorPos(w/2 - #logo/2, 1)
end
function DrawUI()
  term.clear()
  term.setCursorPos(w/2-string.len(logo)/2, h/2)
  term.setTextColor(colors.white)
  print(logo)
  term.setCursorPos(1, h-1)
  print(taskbar[1])
  term.setCursorPos(1, h)
  print(taskbar[2])
end
drawLogo()