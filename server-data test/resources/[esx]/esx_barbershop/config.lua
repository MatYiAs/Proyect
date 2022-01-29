Config = {}

Config.Price = 100

Config.DrawDistance = 100.0
Config.MarkerSize   = {x = 0.3, y = 0.4, z = 0.3}
Config.MarkerColor  = {r = 999, g = 999, b = 999}
Config.MarkerType   = 2
Config.Locale = 'en'

Config.Zones = {}

Config.Shops = {
  {x = -814.308,  y = -183.823,  z = 37.568},
  {x = 136.826,   y = -1708.373, z = 29.291},
  {x = -1282.604, y = -1116.757, z = 6.990},
  {x = 1931.513,  y = 3729.671,  z = 32.844},
  {x = 1212.840,  y = -472.921,  z = 63.208},
  {x = -32.885,   y = -152.319,  z = 57.076},
  {x = -278.077,  y = 6228.463,  z = 31.695},
}

for i=1, #Config.Shops, 1 do

	Config.Zones['Shop_' .. i] = {
	 	Pos   = Config.Shops[i],
	 	Size  = Config.MarkerSize,
	 	Color = Config.MarkerColor,
	 	Type  = Config.MarkerType
  }

end