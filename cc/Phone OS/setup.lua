-- Installing Dependencies

shell.run("wget https://raw.githubusercontent.com/SeamusMullan/Potatracker/main/cc/Phone%20OS/api/json.lua api/json")
shell.run("wget https://raw.githubusercontent.com/SeamusMullan/Potatracker/main/cc/Phone%20OS/api/location.lua api/location")
shell.run("wget https://raw.githubusercontent.com/SeamusMullan/Potatracker/main/cc/Phone%20OS/api/pinknet.lua api/pinknet")
shell.run("wget https://raw.githubusercontent.com/SeamusMullan/Potatracker/main/cc/Phone%20OS/api/ui.lua api/ui")
shell.run("wget https://raw.githubusercontent.com/SeamusMullan/Potatracker/main/cc/Phone%20OS/startup.lua startup")
shell.run("reboot")