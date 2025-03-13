function RegisterInput(command_name, label, input_group, key, on_press, on_release)
    local command = on_release and '+' .. command_name or command_name
    RegisterCommand(command, on_press, false)
    if on_release then
        RegisterCommand('-' .. command_name, on_release, false)
    end
    RegisterKeyMapping(command, label or '', input_group or 'keyboard', key or '')
end
