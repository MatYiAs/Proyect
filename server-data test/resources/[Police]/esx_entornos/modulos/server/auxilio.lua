-- ESX

ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS

RegisterServerEvent('sendProximityMessageAuxilio')
AddEventHandler('sendProximityMessageAuxilio', function(name, ped)
	local _name = name
	local _source = source
	local xPlayers = ESX.GetPlayers()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(_source)
	print(_name)
	
	TriggerClientEvent("sendProximityMessageAuxilio", -1, _source, _name)
end)

RegisterServerEvent('esx-auxilio:getJob')
AddEventHandler('esx-auxilio:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('esx-auxilio:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

-- FORZAR  POLICIA

RegisterServerEvent('esx-auxilio:forzar:sendNotify')
AddEventHandler('esx-auxilio:forzar:sendNotify', function( id, vehm, vehc, streetName, plate )
	TriggerClientEvent('esx-auxilio:forzar:sendNotify', -1, id, vehm, vehc, streetName, plate )
end, false)

RegisterNetEvent('esx-auxilio:respuesta')
AddEventHandler('esx-auxilio:respuesta', function()
	TriggerClientEvent('esx-auxilio:forzar:sendNotify', -1)
end)

-- END FORZAR POLICIA

-- ENTORNO POLICIA

RegisterServerEvent('esx-auxilio:sendNotify')
AddEventHandler('esx-auxilio:sendNotify', function( id, msg, streetName  )
	TriggerClientEvent('esx-auxilio:sendNotify', -1, id, msg, streetName )
end, false)

RegisterServerEvent('esx-auxilio:setBlip')
AddEventHandler('esx-auxilio:setBlip', function( pos )
	TriggerClientEvent('esx-auxilio:setBlip', -1, pos)
end, false)

-- END ENTORNO POLICIA
