local programManager = { _version = "0.1.0"}


function programManager.launchProgram(fileLocation, args)
    if args then
        local id = multishell.launch({}, fileLocation, args)
    else
        local id = multishell.launch({}, fileLocation)
    end
    if id then
        multishell.setTitle(id, "Program " .. id)
    else
        print("Failed to launch program")
    end
end



return programManager