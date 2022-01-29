-- ESX

ESX = nil 

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

-- VARIABLES

entorns = {}
auxi = {}
time = 200
local job = nil

-- REGISTROS // EVENTOS

AddEventHandler('playerSpawned', function(spawn)
    TriggerServerEvent('esx-taxi:getJob')
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    TriggerServerEvent('esx-taxi:getJob')
end)

TriggerServerEvent('esx-taxi:getJob')

RegisterNetEvent('esx-taxi:setJob')
AddEventHandler('esx-taxi:setJob',function(theJob)
    job = theJob
end)

-- BLIP ENTORNO Y FORZAR

RegisterNetEvent('esx-taxi:setBlip')
AddEventHandler('esx-taxi:setBlip', function( pos )
    if job == 'taxi' then 

        cordenadasblip = pos
     --   print(pos.x, pos.y)
     
        entornos = AddBlipForCoord(pos.x, pos.y) 
        SetBlipSprite(entornos, 304)
        SetBlipScale(entornos, 1.0)
        SetBlipColour(entornos, 26)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Aviso')
        EndTextCommandSetBlipName(entornos)
        -- Citizen.Wait(15000)
        -- SetNewWaypoint(pos.x, pos.y)
        table.insert(entorns, entornos)
        Wait(time * 1000)
        for i, blip in pairs(entorns) do 
           RemoveBlip(entornos)
        end
    end
end)



-- END BLIP ENTORNO Y FORZAR 


-- NOTIFICACIÓN ENTORNO 

RegisterNetEvent('esx-taxi:sendNotify')
AddEventHandler('esx-taxi:sendNotify', function( id, msg, streetName  )
    if job == 'taxi' then 
        -- TriggerEvent('pk_notifications:SendNotification',{text = "~r~Entono | ID "..id.." : ~n~ ~w~ "..msg..".  ~n~  ~w~En la calle : "..streetName..". ~n~ ~r~[N Denegar] ~w~ ~o~ [X Borrar Marca]", 
        --     timeout = 15000,
        --     type = "info"
        -- })       
    TriggerEvent("esx_notificaciones:SetQueueMax", "prompt", 5)
        TriggerEvent("esx_notificaciones:SendPrompt", { 
            text = "(" ..id.. ") Entorno:<br> " ..msg,
            type = "taxi_success",
            timeout = (13000),
            layout = "centerRight",
            queue = "prompt",
            job = 'taxi',
        })  
        -- PlaySound(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", 0, 0, 1)
    end
end)

-- END NOTIFICACIÓN ENTORNO


-- NOTIFICACIÓN FORZAR



-- END NOTIFICACIÓN FORZAR


-- RESPUESTA CENTRALITA EMS Y POLICIA

-- RegisterNetEvent('esx-taxi:respuesta')
-- AddEventHandler('esx-taxi:respuesta', function()
--     if job == 'taxi' or job == 'taxi1' or job == 'taxi' then 
--         TriggerEvent('pk_notifications:SendNotification',{
--             text = "~y~ Aqui la centraliza necesitamos que alguna unidad disponible valla a la ultima llamada. ~r~ YA SIDO ENVIADA LA UBICACIÓN GPS A TODAS LA PATRULLAS, EN 9 SEGUNDOS SALDRÁN EN TODOS LOS GPS",
--             timeout = 5000,
--             type = "info", 
--             layout = "bottomCenter"
--         })
--     end
-- end)

-- END RESPUESTA CENTRALITA EMS Y POLICIA

-- COMANDO FORZAR



-- END COMANDO FORZAR 

-- COMADANDO ENTORNO

RegisterCommand('taxi', function(source, args)
    local id = GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))
    local name = GetPlayerName(PlayerId())
    local ped = GetPlayerPed(PlayerId())
    local pos = GetEntityCoords(PlayerPedId())
    local streetName, _ = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
    streetName = GetStreetNameFromHashKey(streetName)
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        -- TriggerEvent('pk_notifications:SendNotification', {
        --     text = 'Introduce el motivo de la llamada.',
        --     type = "error",
        --     layout = "topleft"
        -- })		
        TriggerEvent('pNotify:SendNotification', {
            text = 'Introduce el motivo de la llamada.',
            type = "termi",
            layout = "topleft"
        })	
        PlaySound(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", 0, 0, 1)
    else
        TriggerEvent('pNotify:SendNotification', {
            text = 'Has pedido un taxi.',
            type = "termi",
            layout = "topleft"
        })	
      --  ExecuteCommand("opp Tu llamada de entorno se ha realizado correctamente ")
        TriggerServerEvent('esx-taxi:sendNotify', id, msg, streetName )
        TriggerServerEvent('esx-taxi:setBlip', pos)
        TriggerEvent('esx-taxi:respuesta')
    end
end)

-- END COMANDO ENTORNO


-- ACEPTAR LLAMADAS, DENEGAR, BORRAR MARCA -- POLICIA

Citizen.CreateThread(function()
    while true do 
        local s = 7
        if IsControlJustReleased(0, 10) then 
           -- print(cordenadasblip)
            SetWaypointOff()
            Wait(10)
            SetNewWaypoint(cordenadasblip.x, cordenadasblip.y, cordenadasblip.z)

            s = 7
        end 
        if IsControlJustReleased(0, 11) then 
            s = 7
          --  RemoveBlip(entornos)
        end 
        -- if IsControlJustReleased(0, 73) then 
        --     s = 7
        --     SetWaypointOff()
        -- end 
        Citizen.Wait(s)
    end
end)

-- END ACEPTAR LLAMADAS, DENEGAR, BORRAR MARCA -- POLICIA



RegisterNetEvent('sendProximityMessageAuxilio')
AddEventHandler('sendProximityMessageAuxilio', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
        TriggerEvent('chatMessage', "(OOC) " ..name.. " (" .. id .. ") ", {128, 128, 128}, "^7 Se ha enviado una llamada de rol de entorno a las emergencias sanitarias")
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chatMessage', "(OOC) " ..name.. " (" .. id .. ") ", {128, 128, 128}, "^7 Se ha enviado una llamada de rol de entorno a las emergencias sanitarias")
    end
end)