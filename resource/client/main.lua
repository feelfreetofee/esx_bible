CreateThread(function()
    if Config.Keybind then
        RegisterInput(FormatEvent('openbible'), 'Opens the Bible', 'keyboard', Config.Keybind, OpenBible)
    end
end)