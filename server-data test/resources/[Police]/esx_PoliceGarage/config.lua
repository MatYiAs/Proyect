--------------------------------
------- Created by Hamza -------
------ Reworked by D4NDI -------
-------------------------------- 

Config = {}

Config.KeyToOpenCarGarage = 38			-- default 38 is E
Config.KeyToOpenHeliGarage = 38			-- default 38 is E
Config.KeyToOpenBoatGarage = 38			-- default 38 is E

Config.PoliceDatabaseName = 'police'	-- set the exact name from your jobs database for police

--Police Car Garage:
Config.CarZones = {
	PoliceCarGarage = {
		Pos = {
			{x = 451.45,  y = -1018.09, z = 29.51},
		}
	}
}

--Police Heli Garage:
Config.HeliZones = {
	PoliceHeliGarage = {
		Pos = {
			{x = 448.65,  y = -981.25, z = 43.69},--raw
			{x = 481.57,  y = -982.25, z = 41.01},--raw
			{x = -475.45,  y = 5988.34, z = 31.30},--paleto
			{x = 1868.57,  y = 3647.98, z = 35.86},--sandy
			{x = -1096.35,  y = -832.3, z = 37.68}, --vespucci
			{x = 1690.43,  y = 2582.43, z = 50.75} --prison
		}
	}
}

--Police Boat Garage:
Config.BoatZones = {
	PoliceBoatGarage = {
		Pos = {
			{x = 1538.69,  y = 3901.5, z = 30.35},
			{x = -952.34,  y = -1472.87, z = 0.33}
		}
	}
}

-- Police Car Garage Blip Settings:
Config.CarGarageSprite = 357
Config.CarGarageDisplay = 4
Config.CarGarageScale = 0.65
Config.CarGarageColour = 38
Config.CarGarageName = "Police Car Garage"
Config.EnableCarGarageBlip = false

-- Police Heli Garage Blip Settings:
Config.HeliGarageSprite = 43
Config.HeliGarageDisplay = 4
Config.HeliGarageScale = 0.65
Config.HeliGarageColour = 38
Config.HeliGarageName = "Police Heli Garage"
Config.EnableHeliGarageBlip = false

-- Police Boat Garage Blip Settings:
Config.BoatGarageSprite = 427
Config.BoatGarageDisplay = 4
Config.BoatGarageScale = 0.65
Config.BoatGarageColour = 38
Config.BoatGarageName = "Police Boat Garage"
Config.EnableBoatGarageBlip = true

-- Police Car Garage Marker Settings:
Config.PoliceCarMarker = 2												-- marker type
Config.PoliceCarMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 			-- rgba color of the marker
Config.PoliceCarMarkerScale = { x = 0.3, y = 0.3, z = 0.3 }  				-- the scale for the marker on the x, y and z axis
Config.CarDraw3DText = "Presiona ~g~[E]~s~ para abrir ~y~garage~"			-- set your desired text here

-- Police Heli Garage Marker Settings:
Config.PoliceHeliMarker = 27 												-- marker type
Config.PoliceHeliMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 		-- rgba color of the marker
Config.PoliceHeliMarkerScale = { x = 5.5, y = 5.5, z = 1.0 }  				-- the scale for the marker on the x, y and z axis
Config.HeliDraw3DText = "Presiona ~g~[E]~s~ para abrir ~y~garage~"		-- set your desired text here

-- Police Boat Garage Marker Settings:
Config.PoliceBoatMarker = 27 												-- marker type
Config.PoliceBoatMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 		-- rgba color of the marker
Config.PoliceBoatMarkerScale = { x = 3.0, y = 3.0, z = 1.0 }  				-- the scale for the marker on the x, y and z axis
Config.BoatDraw3DText = "Presiona ~g~[E]~s~ para abrir ~y~garage~"		-- set your desired text here

-- -- Police Cars:
Config.PoliceVehicles = {
	{ model = 'code318charg', label = 'Dodge Charger' ,  price = 0 }, --
	{ model = 'code3fpis', label = 'Ford Taurus', price = 0 },--Lexus
	{ model = 'code3ram', label = 'Ram' ,  price = 0 }, --
	{ model = 'code318tahoe', label = 'Tahoe', price = 0 },--Mclaren
	{ model = 'code320exp', label = 'Explorer' ,  price = 0 }, --
	{ model = 'code398cvpi', label = 'Crown Victoria' ,  price = 0 }, --

	--{ model = 'libertybmw', label = 'BMW' ,  price = 0 }, --
	{ model = 'code3bmw', label = 'Moto BMW', price = 0 }, --Moto
	{ model = 'pbike', label = 'Bicicleta' ,  price = 0 }, --
	{ model = 'pd_dirtbike', label = 'Moto TodoTerreno' , price = 0 }, --
	
	{ model = 'pbus', label = 'Bus Penitenciario', price = 0 }, --Bus

	{ model = 'riot', label = 'SWAT', price = 0 }--SWAT
}

-- Police Helicopters:
Config.PoliceHelicopters = {
	{ model = 'polmav', label = 'Police Maverick', price = 0 }
}

-- Police Boats:
Config.PoliceBoats = {
	{ model = 'libertyboat', label = 'Police PredatorXV', price = 0 }
}

-- Commands:
Config.RepairCommand = 'fix'
Config.CleanCommand = 'clean'

-- Menu Labels & Titles:
Config.LabelStoreVeh = "Guardar Vehiculo"
Config.LabelGetVeh = "Sacar Vehiculo"
Config.TitlePoliceGarage = "GARAGE"
Config.TitleValues = "Value"

-- ESX.ShowNotifications:
Config.VehicleParked = "~b~The vehicle was parked!"
Config.NoVehicleNearby = "~b~No~s~ vehicle near!"
Config.CarOutFromPolGar = "~b~Adam~s~ ~y~Operating~s~!"
Config.HeliOutFromPolGar = "~b~Eagle~s~ ~y~Operating~s~!"
Config.BoatOutFromPolGar = "~b~Bonito~s~ ~y~Operating~s~!"
Config.VehRepNotify = "Your ~b~vehicle~s~ is about to be ~y~repaired~s~, please wait!"
Config.VehRepDoneNotify = "Your ~b~vehicle~s~ it was ~y~repaired~s~!"
Config.VehCleanNotify = "Your ~b~vehicle~s~ is about to be ~y~clean~s~, please wait!"
Config.VehCleanDoneNotify = "Your ~b~vehicle~s~ it was ~y~clean~s~!"

-- ProgressBars text
Config.Progress1 = "REPAIR VEHICLE"
Config.Progress2 = "CLEAN VEHICLE"

-- ProgressBar Timers, in seconds:
Config.RepairTime = 5					-- time to repair vehicle
Config.CleanTime = 3.5					-- time to clean vehicle

Config.VehicleLoadText = "Espera a por el ~r~vehiclo!"			-- text on screen when vehicle model is being loaded

-- Distance from garage marker to the point where /fix and /clean shall work
Config.Distance = 20

Config.DrawDistance      = 100.0
Config.TriggerDistance 	 = 3.0
Config.Marker 			 = {Type = 27, r = 0, g = 127, b = 22}
