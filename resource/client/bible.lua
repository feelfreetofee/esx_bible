local bible

function OpenBible()
	if bible or IsPauseMenuActive() then return end
	bible = true
    SetNuiFocus(true, true)
    SendNUIMessage({'OpenBible', Config.BibleUrl})
end

function HideBible()
	if not bible then return end
    SetNuiFocus(false, false)
    SendNUIMessage({'HideBible'})
	bible = nil
end

RegisterNUICallback('HideBible', function(data, cb) cb(0)
    SetNuiFocus(false, false)
	bible = nil
end)

exports('OpenBible', OpenBible)
exports('HideBible', HideBible)