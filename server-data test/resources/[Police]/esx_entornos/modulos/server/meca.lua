-- ESX

ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS

RegisterServerEvent('esx-meca:getJob')
AddEventHandler('esx-meca:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('esx-meca:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

-- FORZAR  POLICIA

RegisterServerEvent('esx-meca:forzar:sendNotify')
AddEventHandler('esx-meca:forzar:sendNotify', function( id, vehm, vehc, streetName, plate )
	TriggerClientEvent('esx-meca:forzar:sendNotify', -1, id, vehm, vehc, streetName, plate )
end, false)

RegisterNetEvent('esx-meca:respuesta')
AddEventHandler('esx-meca:respuesta', function()
	TriggerClientEvent('esx-meca:forzar:sendNotify', -1)
end)

-- END FORZAR POLICIA

-- ENTORNO POLICIA

RegisterServerEvent('esx-meca:sendNotify')
AddEventHandler('esx-meca:sendNotify', function( id, msg, streetName  )
	TriggerClientEvent('esx-meca:sendNotify', -1, id, msg, streetName )
end, false)

RegisterServerEvent('esx-meca:setBlip')
AddEventHandler('esx-meca:setBlip', function( pos )
	TriggerClientEvent('esx-meca:setBlip', -1, pos)
end, false)

-- END ENTORNO POLICIA
