-- ESX

ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS


RegisterServerEvent('esx-taxi:getJob')
AddEventHandler('esx-taxi:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('esx-taxi:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

-- FORZAR  POLICIA

RegisterServerEvent('esx-taxi:forzar:sendNotify')
AddEventHandler('esx-taxi:forzar:sendNotify', function( id, vehm, vehc, streetName, plate )
	TriggerClientEvent('esx-taxi:forzar:sendNotify', -1, id, vehm, vehc, streetName, plate )
end, false)

RegisterNetEvent('esx-taxi:respuesta')
AddEventHandler('esx-taxi:respuesta', function()
	TriggerClientEvent('esx-taxi:forzar:sendNotify', -1)
end)

-- END FORZAR POLICIA

-- ENTORNO POLICIA

RegisterServerEvent('esx-taxi:sendNotify')
AddEventHandler('esx-taxi:sendNotify', function( id, msg, streetName  )
	TriggerClientEvent('esx-taxi:sendNotify', -1, id, msg, streetName )
end, false)

RegisterServerEvent('esx-taxi:setBlip')
AddEventHandler('esx-taxi:setBlip', function( pos )
	TriggerClientEvent('esx-taxi:setBlip', -1, pos)
end, false)

-- END ENTORNO POLICIA
