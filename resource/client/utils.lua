function FormatEvent(eventName, resource)
    return ('%s:%s'):format(resource or GetCurrentResourceName(), eventName)
end