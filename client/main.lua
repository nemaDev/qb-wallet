local QBCore = exports['qb-core']:GetCoreObject()

--billetera
RegisterNetEvent('qb-items:client:use:billetera')
AddEventHandler('qb-items:client:use:billetera', function(BilleteraId)
	TriggerServerEvent("inventory:server:OpenInventory", "stash", 'billetera_'..BilleteraId, {maxweight = 500, slots = 4})
	TriggerEvent("inventory:client:SetCurrentStash", 'billetera_'..BilleteraId)
end)
