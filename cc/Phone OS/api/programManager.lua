local programManager = { _version = "0.1.0"}


function programManager.launchProgram(fileLocation)
    local id = multishell.launch({}, fileLocation)
    if id then
        multishell.setTitle(id, "Program " .. id)
    end
end


return programManager