local skins = {
    ['default'] = 'mp_m_freemode_01',
	['steam:11000000000000'] = 'reedusn',
	['steam:11000000000000'] = 'shrek' --- example
}

RegisterServerEvent('playerSpawn')
AddEventHandler('playerSpawn', function()
    local steamID = nil
    for k,v in ipairs(GetPlayerIdentifiers(source)) do
        if string.sub(v, 1, 5) == "steam" then
            steamID = string.lower(v)
            break
        end
    end
    local skin = nil
    if skins[steamID] ~= nil then
        skin = skins[steamID]
		TriggerClientEvent("applyskin", source, skin)
    else
	print 'no skin';
    end
end)