local w = 26
local h = 20
local logo = "Phone OS"
local taskbar = {
  " ________________________ ",
  "| Home | Settings | Legal|"
}

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
DrawUI()
while true do
  local i = 1
end