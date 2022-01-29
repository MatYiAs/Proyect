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
    TriggerServerEvent('esx-entorno:getJob')
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    TriggerServerEvent('esx-entorno:getJob')
end)

TriggerServerEvent('esx-entorno:getJob')

RegisterNetEvent('esx-entorno:setJob')
AddEventHandler('esx-entorno:setJob',function(theJob)
    job = theJob
end)

-- BLIP ENTORNO Y FORZAR

RegisterNetEvent('esx-entorno:setBlip')
AddEventHandler('esx-entorno:setBlip', function( pos )
    if job == 'police' or job == 'police1' then 

        cordenadasblip = pos
     --   print(pos.x, pos.y)
     
        entornos = AddBlipForCoord(pos.x, pos.y) 
        SetBlipSprite(entornos, 304)
        SetBlipScale(entornos, 1.0)
        SetBlipColour(entornos, 26)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Aviso policial')
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

RegisterNetEvent('esx-entorno:sendNotify')
AddEventHandler('esx-entorno:sendNotify', function( id, msg, streetName  )
    if job == 'police' or job == 'police1' then 
        -- TriggerEvent('pk_notifications:SendNotification',{text = "~r~Entono | ID "..id.." : ~n~ ~w~ "..msg..".  ~n~  ~w~En la calle : "..streetName..". ~n~ ~r~[N Denegar] ~w~ ~o~ [X Borrar Marca]", 
        --     timeout = 15000,
        --     type = "info"
        -- })       
    TriggerEvent("esx_notificaciones:SetQueueMax", "prompt", 5)
        TriggerEvent("esx_notificaciones:SendPrompt", { 
            text = "(" ..id.. ") Entorno:<br> " ..msg,
            type = "police_success",
            timeout = (13000),
            layout = "centerRight",
            queue = "prompt",
            job = 'police',
        })  
        -- PlaySound(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", 0, 0, 1)
    end
end)

-- END NOTIFICACIÓN ENTORNO


-- NOTIFICACIÓN FORZAR

RegisterNetEvent('esx-entorno:forzar:sendNotify')
AddEventHandler('esx-entorno:forzar:sendNotify', function( id, vehm, vehc, streetName, plate )
    if job == 'police' or job == 'police1' then 
        -- TriggerEvent('pk_notifications:SendNotification',{text = "~y~ Robo de Vehiculo | ID "..id.." : ~n~  ~n~ ~w~ Modelo: "..vehm.."  ~n~ Color: "..vehc.."  ~n~ Matricula: "..plate.." ~n~  ~w~Ubicación: "..streetName.." ~n~ ~w~ ~r~[N Denegar] ~w~ ~o~ [X Borrar Marca]", 
        --     timeout = 15000,
        --     type = "info"
        -- })   

    TriggerEvent("esx_notificaciones:SetQueueMax", "prompt", 5)
        TriggerEvent("esx_notificaciones:SendPrompt", { 
            text = "(" ..id.. ") Entorno:<br> Acabo de ver a una persona robar un Vehiculo <br> Modelo: " ..vehm.. "<br>Color: " ..vehc.. "<br>Matricula " ..plate,
            type = "police_success",
            timeout = (13000),
            layout = "centerRight",
            queue = "prompt",
            job = 'police',
        })      
        -- TriggerEvent('pNotify:SendNotification',{text = "Robo de Vehiculo | ID "..id.." </br></br> Modelo: "..vehm.."  </br> Color: "..vehc.."</br> Matricula: "..plate.." </br> Ubicación: "..streetName.." </br> <p> </p><b style='color:#3efe00'>[M Aceptar] </b> <b style='color:#fe0000'>[N Denegar] </b>", 
        --     timeout = 15000,
        --     type = "termi",
        --     progressBar = false,
        --     layout     = "centerRight",
        --     animation = {
        --         open = "gta_effects_fade_in",
        --         close = "gta_effects_fade_out"
        --     }
        -- })    

        --<h2><center>Radar</center></h2>" .. "</br>Se le ha emitido una multa por exceso de velocidad!</br>Matricula: " .. plate .. "</br>Multa: €" .. fineamount .. "</br>Nivel: " .. finelevel .. "</br>Limite de velocidad: " .. maxspeed .. "</br>Tu velocidad: " ..mphspeed,
    end
end)

-- END NOTIFICACIÓN FORZAR


-- RESPUESTA CENTRALITA EMS Y POLICIA

-- RegisterNetEvent('esx-entorno:respuesta')
-- AddEventHandler('esx-entorno:respuesta', function()
--     if job == 'police' or job == 'police1' or job == 'ambulance' then 
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

RegisterCommand('forzar', function(source, args)
    local id = GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))
    local ply = PlayerPedId()
    local plyv = GetVehiclePedIsIn(ply)
    local ped = GetPlayerPed(PlayerId())
    local pos = GetEntityCoords(PlayerPedId())
    local streetName, _ = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
    streetName = GetStreetNameFromHashKey(streetName)
     local name = GetPlayerName(PlayerId())
    
    local vehc = GetVehicleColours(plyv)
    vehc = Config.Colors[tostring(vehc)]
    local vehm = GetDisplayNameFromVehicleModel(GetEntityModel(plyv))
    local plate = GetVehicleNumberPlateText(plyv)
	
    
    
    if IsPedInAnyVehicle(ply) then 
        TriggerServerEvent("sendProximityMessageEntorno", name)
      --  ExecuteCommand("opp Tu llamada de entorno se ha realizado correctamente ")
        TriggerServerEvent('esx-entorno:forzar:sendNotify', id, vehm, vehc, streetName, plate )
        TriggerServerEvent('esx-entorno:setBlip', pos)
        TriggerEvent('esx-entorno:respuesta')
    else 
        -- TriggerEvent('pk_notifications:SendNotification', {
        --     text = 'Debes estar dentro de un vehículo para usar ese comando.',
        --     type = "error",
        --     layout = "topleft"
        -- })		
        TriggerEvent('pNotify:SendNotification', {
            text = 'Debes estar dentro de un vehículo para usar ese comando.',
            type = "termi",
            layout = "topleft"
        })		
        PlaySound(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", 0, 0, 1)
    end
end)

-- END COMANDO FORZAR 

-- COMADANDO ENTORNO

RegisterCommand('entorno', function(source, args)
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
        TriggerServerEvent("sendProximityMessageEntorno", name)
      --  ExecuteCommand("opp Tu llamada de entorno se ha realizado correctamente ")
        TriggerServerEvent('esx-entorno:sendNotify', id, msg, streetName )
        TriggerServerEvent('esx-entorno:setBlip', pos)
        TriggerEvent('esx-entorno:respuesta')
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



RegisterNetEvent('sendProximityMessageEntorno')
AddEventHandler('sendProximityMessageEntorno', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
        TriggerEvent('chatMessage', "(OOC) " ..name.. " (" .. id .. ") ", {128, 128, 128}, "^7 Se ha enviado una llamada de rol de entorno a la policia")
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chatMessage', "(OOC) " ..name.. " (" .. id .. ") ", {128, 128, 128}, "^7 Se ha enviado una llamada de rol de entorno a la policia")
    end
end)