local m = peripheral.find("monitor")

--                    #############      
--                    #############      
--          ##########(((****//////###   
--       ###(((////******///*******///###
--    ###***,,,,,,,,,,**********//*///%%%
--    ###***,,,,,,,,,,**********//*///%%%
--####///,,,.......,,,**********//*(((%%%
--####***,,,.......**********///((((((%%%
--%%%%*/*///,,,*******////*/(((((((%%%   
--%%%%//////,,,*******//////(((((((%%%   
--%%%%(((//////****//////(((%%%%%%%      
--    %%%(((///////(((%%%%%%             
--       %%%%%%%%%%%%%                   
m.setCursorPos(1,1)
m.write("                    #############      ")
m.setCursorPos(1,2)
m.write("                    #############      ")
m.setCursorPos(1,3)
m.write("          ##########(((****//////###   ")
m.setCursorPos(1,4)
m.write("       ###(((////******///*******///### ")
m.setCursorPos(1,5)
m.write("    ###***,,,,,,,,,,**********//*///%%% ")
m.setCursorPos(1,6)
m.write("    ###***,,,,,,,,,,**********//*///%%% ")
m.setCursorPos(1,7)
m.write("####///,,,.......,,,**********//*(((%%% ")
m.setCursorPos(1,8)
m.write("####***,,,.......**********///((((((%%% ")
m.setCursorPos(1,9)
m.write("%%%%*/*///,,,*******////*/(((((((%%%    ")
m.setCursorPos(1,10)
m.write("%%%%//////,,,*******//////(((((((%%%    ")
m.setCursorPos(1,11)
m.write("%%%%(((//////****//////(((%%%%%%%       ")
m.setCursorPos(1,12)
m.write("    %%%(((///////(((%%%%%%              ")
m.setCursorPos(1,13)
m.write("       %%%%%%%%%%%%%                    ")







------------------------------------------------------------


local function magiclines( str )
    local pos = 1;
    return function()
        if not pos then return nil end
        local  p1, p2 = string.find( str, "\r?\n", pos )
        local line
        if p1 then
            line = str:sub( pos, p1 - 1 )
            pos = p2 + 1
        else
            line = str:sub( pos )
            pos = nil
        end
        return line
    end
end




local potato = [[
                    #############      
                    #############      
          ##########(((****//////###   
       ###(((////******///*******///###
    ###***,,,,,,,,,,**********//*///%%%
    ###***,,,,,,,,,,**********//*///%%%
####///,,,.......,,,**********//*(((%%%
####***,,,.......**********///((((((%%%
%%%%*/*///,,,*******////*/(((((((%%%   
%%%%//////,,,*******//////(((((((%%%   
%%%%(((//////****//////(((%%%%%%%      
    %%%(((///////(((%%%%%%             
       %%%%%%%%%%%%%         
]]

m.setCursorPos(1,14)
for line in magiclines(potato) do
    m.setCursorPos(1, line)
    m.write(line)
    sleep(0.1)
end