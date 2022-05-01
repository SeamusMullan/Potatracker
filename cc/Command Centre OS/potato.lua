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


local function drawAsciiImage(image)
    local m = peripheral.find("monitor")
    local x, y = 1, 1
    for line in magiclines(image) do
        m.setCursorPos(x, -1 + y*2)
        m.write(line)
        y = y + 1
    end
end

drawAsciiImage(potato)