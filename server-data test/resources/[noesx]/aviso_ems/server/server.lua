ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS

RegisterServerEvent('enp-entorno:getJob')
AddEventHandler('enp-entorno:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('enp-entorno:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

RegisterServerEvent('enp-entorno:alert')
AddEventHandler('enp-entorno:alert', function(message, x, y, z)
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'ambulance' or xPlayer.job.name == 'ambulance1'  then
			
			TriggerClientEvent('enp-entorno:setBlip', xPlayers[i], x, y, z)
		end
	end
end)

RegisterServerEvent('enp-entorno:auxilio:alert')
AddEventHandler('enp-entorno:auxilio:alert', function(message, x, y, z)
		TriggerClientEvent('enp-entorno:setBlip', xPlayers[i], x, y, z)
end)

RegisterServerEvent('enp-entorno:auxilio:sendNotify')
AddEventHandler('enp-entorno:auxilio:sendNotify', function( msg, location  )
	TriggerClientEvent('enp-entorno:auxilio:sendNotify', -1, msg, location )
end, false)

