Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 0.5, y = 0.5, z = 0.5 }
Config.MarkerColor                = { r = 999, g = 999, b = 999 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true
Config.EnableNonFreemodePeds      = true
Config.EnableLicenses             = true

Config.EnableHandcuffTimer        = true
Config.HandcuffTimer              = 10 * 60000

Config.EnableJobBlip              = true

Config.MaxInService               = -1
Config.Locale = 'es'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.8,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(5000.65, 7995.84, 30.69)
		},

		Armories = {
			vector3(5000.65, 7995.84, 30.69)
		},

		Vehicles = {
			{
				Spawner = vector3(4500.0, -1700.0, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0 },
					{ coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0 },
					{ coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0 },
					{ coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0 }
				}
			},

			{
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
					{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, 30.6)
		}

	}

}

Config.AuthorizedWeapons = {

	  

    recruit = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

    },

	agente = {
	    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	agente1 = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	cabo = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	Cabo1 = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	cabomayor = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	sargento = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	Sargento1 = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	Subteniente = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	teniente = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	Subins = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	inspector = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	InsJefe = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	},

	boss = {
    	{ weapon = 'WEAPON_NIGHTSTICK',    price = 1 },
      { weapon = 'WEAPON_PISTOL',     price = 1 },
      { weapon = 'WEAPON_HEAVYPISTOL',     price = 1 },
      { weapon = 'weapon_smg',	price = 1 },
      { weapon = 'WEAPON_STUNGUN',          price = 1 },

	}
}

Config.AuthorizedVehicles = {
	Shared = {
                { model = 'police3', label = '--------=PATRULLA=--------', price = 0 },
		{ model = 'police3', label = 'Ford Mondeo', price = 1 },
                { model = 'police2', label = 'Dodge Charger', price = 0 },
		{ model = 'police2', label = '----------=TRAFICO=----------', price = 0 },
                { model = 'policeb', label = 'Moto CNP', price = 1 },
                { model = 'ghispo2', label = 'Maserati Interceptor', price = 1 },
		{ model = 'policet', label = 'Furgon Opel', price = 1 }, 
		{ model = 'policet', label = '----------=UIP=----------', price = 0 },
                { model = 'pbus', label = 'Bus Transporte Presos', price = 1 }, 
		{ model = 'firetruk', label = 'Antidisturbios', price = 1 },
		{ model = 'firetruk', label = '----------=GEO=----------', price = 0 },
                { model = 'policeinsurgent', label = 'Camión Blindado', price = 1 },
                { model = 'brickade', label = '--------=SECRETA=--------', price = 0 },
                { model = 'unmarked4', label = 'Ford Mustang Secreta', price = 1 },
                { model = 'unmarked9', label = 'Dodge Charger Secreta', price = 1 },
                { model = 'unmarked8', label = 'Chevrolet Secreta', price = 1 }
         },
  	recruit = {
		
	},

	agente = {

		
	},

	agente1 = {

		

	},

	cabo = {

		

	},

	Cabo1 = {

		

	},

	cabomayor = {

		

	},

	sargento = {

	},

	Sargento1 = {

		

	},

	Subteniente = {

		
	},

	teniente = {

		
	},

	Subins = {

		

	},

	inspector = {	

		
	},

	InsJefe = {

	},

	boss = {

	},
}		

Config.AuthorizedHelicopters = {
	Shared = {},
  	recruit = {},

	agente = {},

	agente1 = {
	},

	cabo = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 1 },
	},

	Cabo1 = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 1 },
	},

	cabomayor = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 1 },
	},

	sargento = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 1 },
	},

	Sargento1 = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 0 },
	},

	Subteniente = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 0 },
	},

	teniente = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 0 },
	},

	Subins = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 0 },
	},

	inspector = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 0 },
	},

	InsJefe = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 0 },
	},

	boss = {
		{ model = 'polmav', label = 'G.E.O', livery = 0, price = 1 },
	}
}

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 52,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bags_1'] = 0,
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 52,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bags_1'] = 0,
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 52,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bags_1'] = 0,
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 52,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bags_1'] = 0,
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 52,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bags_1'] = 0,
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 52,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bags_1'] = 0,
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 52,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bags_1'] = 0,
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 52,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bags_1'] = 0,
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 7,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['bproof_1'] = 10,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 10,  ['bproof_2'] = 0
		}
	}

}