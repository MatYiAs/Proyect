Config                            = {}

Config.DrawDistance               = 10.0

Config.Marker                     = { type = 21, x = 0.5, y = 0.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 5000  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders
Config.NPCJobEarnings             = {min = 50, max = 60}
Config.MinimumDistance            = 100 -- Minimum NPC job destination distance from the pickup in GTA units, a higher number prevents nearby destionations.

Config.Locale                     = 'es'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 1 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 10 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(300.26, -579.42, 43.26), heading = 106.65 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(297.895, -584.094, 43.261),
			sprite = 61,
			color = 43,
			scale  = 0.7
		},

		AmbulanceActions = {
			vector3(334.66, -593.53, 43.28)
		},

		Pharmacies = {
			vector3(309.69, -568.71, 43.28)
		},

		Vehicles = {
			{
				Spawner = vector3(334.0,-561.25,28.74),
				InsideShop = vector3(327.47,-548.59, 28.74),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(292.516,-609.973,43.042), heading = 68.186, radius = 4.0 },
					{ coords = vector3(287.627,-589.442,42.813), heading = 342.019, radius = 4.0 },
					{ coords = vector3(291.625,-571.292, 42.853), heading = 69.296, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(350.89, -599.71, 74.16),
				InsideShop = vector3(351.02,-588.29,74.30),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.02,-588.29,74.30), heading = 142.7, radius = 10.0 }
				}
			}
		}
	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = '', price = 40 },
		{ model = 'sprinter', label = '', price = 40 },		
		{ model = 'fa_ambulance', label = '', price = 40 },
		{ model = 'g63amg6x6cop', label = '', price = 40 }
	},

	doctor = {
		{ model = 'ambulance', label = '', price = 40 },
		{ model = 'sprinter', label = '', price = 40 },		
		{ model = 'fa_ambulance', label = '', price = 40 },
		{ model = 'g63amg6x6cop', label = '', price = 40 }
	},

	chief_doctor = {
		{ model = 'ambulance', label = '', price = 40 },
		{ model = 'sprinter', label = '', price = 40 },		
		{ model = 'fa_ambulance', label = '', price = 40 },
		{ model = 'g63amg6x6cop', label = '', price = 40 }
	},

	boss = {
		{ model = 'ambulance', label = '', price = 40 },
		{ model = 'sprinter', label = '', price = 40 },		
		{ model = 'fa_ambulance', label = '', price = 40 },
		{ model = 'g63amg6x6cop', label = '', price = 40 }
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'supervolito', label = 'Helicoptero Rescate', price = 80 }
	},

	chief_doctor = {
		{ model = 'supervolito', label = 'Helicoptero Rescate', price = 80 }
	},

	boss = {
		{ model = 'supervolito', label = 'Helicoptero Rescate', price = 80 }
	}

}

Config.Uniforms = {
	[1] = { -- EMS
	  male = {
		['tshirt_1'] = 129, ['tshirt_2'] = 0,
		['torso_1'] = 250,  ['torso_2'] = 0,
		['decals_1'] = 60,  ['decals_2'] = 0,
		['arms'] = 85,
		['pants_1'] = 96,   ['pants_2'] = 0,
		['shoes_1'] = 54,   ['shoes_2'] = 0,
		['helmet_1'] = -1, ['helmet_2'] = 0,
		['chain_1'] = 121,  ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0,
		['bproof_1'] = 0,   ['bproof_2'] = 0
	  },
	  female = {
		['tshirt_1'] = 159, ['tshirt_2'] = 0,
		['torso_1'] = 258,  ['torso_2'] = 0,
		['decals_1'] = 66,  ['decals_2'] = 1,
		['arms'] = 98,
		['pants_1'] = 23,   ['pants_2'] = 0,
		['shoes_1'] = 52,   ['shoes_2'] = 0,
		['helmet_1'] = 121, ['helmet_2'] = 0,
		['chain_1'] = 96,   ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0,
		['bproof_1'] = 0,   ['bproof_2'] = 0
	  }
	},
	[2] = { -- BOMBEROS
	  male = {
		['tshirt_1'] = 15, ['tshirt_2'] = 0,
		['torso_1'] = 13,  ['torso_2'] = 3,
		['decals_1'] = 60,  ['decals_2'] = 0,
		['arms'] = 92,
		['pants_1'] = 24,   ['pants_2'] = 5,
		['shoes_1'] = 9,   ['shoes_2'] = 0,
		['helmet_1'] = 8, ['helmet_2'] = 0,
		['chain_1'] = 126,  ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0,
		['bproof_1'] = 0,   ['bproof_2'] = 0
	  },
	  female = {
		['tshirt_1'] = 15,  ['tshirt_2'] = 0,
		['torso_1'] = 5,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 11,
		['pants_1'] = 3,   ['pants_2'] = 0,
		['shoes_1'] = 24,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0,
		['bproof_1'] = 0,  ['bproof_2'] = 0
	  }
	}
}

Config.JobLocations = {
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19),
	vector3(293.02, -584.70, 43.19)
}
