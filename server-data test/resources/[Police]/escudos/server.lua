RegisterCommand("escudopolicia", function(source, args, raw)
    local src = source
    TriggerClientEvent("shield:TogglePoliceShield", src)
end)

RegisterCommand("escudoswat", function(source, args, raw)
    local src = source
    TriggerClientEvent("shield:ToggleSwatShield", src)
end)
