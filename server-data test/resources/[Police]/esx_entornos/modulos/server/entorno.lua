-- ESX

ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS

RegisterServerEvent('sendProximityMessageEntorno')
AddEventHandler('sendProximityMessageEntorno', function(name, ped)
	local _name = name
	local _source = source
	local xPlayers = ESX.GetPlayers()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(_source)
	print(_name)
	
	TriggerClientEvent("sendProximityMessageEntorno", -1, _source, _name)
end)

RegisterServerEvent('esx-entorno:getJob')
AddEventHandler('esx-entorno:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('esx-entorno:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

-- FORZAR  POLICIA

RegisterServerEvent('esx-entorno:forzar:sendNotify')
AddEventHandler('esx-entorno:forzar:sendNotify', function( id, vehm, vehc, streetName, plate )
	TriggerClientEvent('esx-entorno:forzar:sendNotify', -1, id, vehm, vehc, streetName, plate )
end, false)

RegisterNetEvent('esx-entorno:respuesta')
AddEventHandler('esx-entorno:respuesta', function()
	TriggerClientEvent('esx-entorno:forzar:sendNotify', -1)
end)

-- END FORZAR POLICIA

-- ENTORNO POLICIA

RegisterServerEvent('esx-entorno:sendNotify')
AddEventHandler('esx-entorno:sendNotify', function( id, msg, streetName  )
	TriggerClientEvent('esx-entorno:sendNotify', -1, id, msg, streetName )
end, false)

RegisterServerEvent('esx-entorno:setBlip')
AddEventHandler('esx-entorno:setBlip', function( pos )
	TriggerClientEvent('esx-entorno:setBlip', -1, pos)
end, false)

-- END ENTORNO POLICIA
