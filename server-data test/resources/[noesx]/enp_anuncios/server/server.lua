ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterCommand("banner", function(source, args)
	local xPlayer = ESX.GetPlayerFromId(source)
	local argString = table.concat(args, " ")
	if xPlayer.job.name == 'police' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'lspd', text = argString})
	elseif xPlayer.job.name == 'ambulance' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'ems', text = argString})	
	elseif xPlayer.job.name == 'mechanic' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'mecanico', text = argString})
	elseif xPlayer.job.name == 'taxi' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'taxi', text = argString})
	elseif xPlayer.job.name == 'bennys' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'bennys', text = argString})
	elseif xPlayer.job.name == 'galaxy' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'galaxy', text = argString})
	elseif xPlayer.job.name == 'matutino' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'matutino', text = argString})
	elseif xPlayer.job.name == 'pearls' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'pearls', text = argString})
	elseif xPlayer.job.name == 'vanilla' then
		TriggerClientEvent('enp_anuncios:client:SendAlert', -1, { type = 'vanilla', text = argString})
    end
end, false)
