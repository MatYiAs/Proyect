ESX = nil
blip = nil
oldblip = nil
blips = {}



Citizen.CreateThread(function()
  while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
  end
end)

AddEventHandler('playerSpawned', function(spawn)
  TriggerServerEvent('enp-entorno:getJob')
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    TriggerServerEvent('enp-entorno:getJob')
end)

TriggerServerEvent('enp-entorno:getJob')

RegisterNetEvent('enp-entorno:setJob')
AddEventHandler('enp-entorno:setJob',function(theJob)
    job = theJob
end)

        
Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/auxilio', 'Llamada de emergencia')
end)


RegisterNetEvent('enp-entorno:auxilio:sendNotify')
AddEventHandler('enp-entorno:auxilio:sendNotify', function( msg, location )
  if Config.Notify == true  then 
    if job == 'ambulance' then 
      TriggerEvent("pNotify:SetQueueMax", "auxilio", 5)
      TriggerEvent('pNotify:SendNotification',{text = "Aviso  </br> "..msg.."  en  "..location.." </br> <p> </p><b style='color:#3efe00'>[E Aceptar] </b> <b style='color:#fe0000'>[Q Denegar] </b>", 
      timeout = 15000,
        type = "info",
        progressBar = false,
        layout     = "centerRight",
        animation = {
          open = "gta_effects_fade_in",
          close = "gta_effects_fade_out"
        }
      })
    end  
  else
    ESX.ShowNotification('Auxilio ~n~ '..msg..' en '..location..' ~n~ ~g~[E Aceptar]~w~ ~r~[Q Denegar]')
  end
end)

RegisterNetEvent('enp-entorno:setBlip')
AddEventHandler('enp-entorno:setBlip', function(x, y, z)


    contador = 250

    entorno_llamada = true 
    Citizen.CreateThread(function()
      blipPos = vector3(x, y, z)
      blip = AddBlipForCoord(x, y, z)
      SetBlipSprite(blip, Config.Blips.SetBlipSprite)
      SetBlipScale(blip, Config.Blips.SetBlipScale)
      SetBlipColour(blip, Config.Blips.SetBlipColour)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Config.Blips.TextBlip )
      EndTextCommandSetBlipName(blip)
      table.insert(blips, blip)

      activarcontador = true
      
      
      while entorno_llamada do
        if IsControlJustReleased(1, 38) then
          if Config.Notify == true  then
            TriggerEvent("pNotify:SendNotification", {
              text = 'Has aceptado la llamada',
              type = "info",
              timeout = 3000,
              layout = "centerRight",
              queue = "forzar"
            })
          else
            ESX.ShowNotification('Has aceptado la llamada') 
          end
          activarcontador2 = true
          entorno_llamada = false
          TriggerEvent('enp-entorno:remblip', blip)
          SetNewWaypoint(tonumber(x), tonumber(y))
        elseif IsControlJustReleased(1, 44) then
          if Config.Notify == true  then
            TriggerEvent("pNotify:SendNotification", {
              text = 'Has rechazado la llamada',
              type = "info",
              timeout = 3000,
              layout = "centerRight",
              queue = "forzar"
            })
          else
            ESX.ShowNotification('Has rechazado la llamada')
          end
          entorno_llamada = false
          blipPos = nil  
          RemoveBlip(blip)
        end

        contador = contador - 1
        if contador <= 0 then
          entorno_llamada = false 
          RemoveBlip(blip)
        end
        Citizen.Wait(0)
      end 

    end)
end)

RegisterNetEvent('enp-entorno:remblip')
AddEventHandler('enp-entorno:remblip', function(blip)
  local newblip = blip
  Wait(180000)
  RemoveBlip(newblip)
end)

Citizen.CreateThread(function()
  local contador2 = 10
  while activarcontador2 == true do
    print ('activado')
    Citizen.Wait(1000)
    if contador2 <= 0 then
      blipPos = nil 
      RemoveBlip(blip)
      activarcontador2 = false
    else
      contador2 = contador2 - 1
      print (contador2)
    end
  end 
end)

RegisterCommand(Config.CommnandEntorno, function(source, args)
  local playername = GetPlayerName(PlayerId())
  local ped = GetPlayerPed(PlayerId())
  local x, y, z = table.unpack(GetEntityCoords(ped, true))
  local street = GetStreetNameAtCoord(x, y, z)
  local location = GetStreetNameFromHashKey(street)
  local msg = table.concat(args, ' ')
  TriggerEvent('chatMessage', '[^2AUXILIO^1]', {5, 62, 252}, 'Has avisado a emergencias.')

  if args[1] == nil then
    TriggerEvent('chatMessage', '[^1ENTORNO^0]', {255,255,255}, "Has enviado una llamada de auxilio.")
  else
    TriggerServerEvent('enp-entorno:auxilio:sendNotify', msg, location)
    TriggerServerEvent('enp-entorno:alert', message, x, y, z)
  end
end)