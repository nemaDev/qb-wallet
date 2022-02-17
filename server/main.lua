local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("billetera", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-items:client:use:billetera', source, item.info.billeteraid)
    end
end)