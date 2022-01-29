-- YouTube FiveM ChillZone

-- Discord https://discord.gg/HAS4S7c

-- Feel free to edit everithing 

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(1)
		if IsPedOnFoot(GetPlayerPed(-1)) then 
			DisplayRadar(false)
		elseif IsPedInAnyVehicle(GetPlayerPed(-1), true) then
			DisplayRadar(true)
		end
    end
end)