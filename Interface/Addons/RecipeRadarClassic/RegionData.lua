
-- RegionData.lua: all recipes organized by region
-- Auto generated on 12/14/2006 1:35:41 PM
local L = LibStub("AceLocale-3.0"):GetLocale("RecipeRadarClassic")
local BFAC = LibStub("LibBabble-Faction-3.0"):GetLookupTable()

RecipeRadar_RegionData = {

-- Stormwind City
[1453] = {
   IsCity = true,
   Continent = 1415,
   MapFile = "Stormwind-City",
   MapScale = 0.03819701270887,
   MapOffset = { x = 0.41531450060561, y = 0.67097280492581 },
   Vendors = {
      {
         Name = L["Alexandra Bolero"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.434, y = 0.739 },
         },
         Recipes = {
            { ID = 6274, Type = L["Tailoring"], Skill = 100, Cost = 400, Spell = 7639, Item = 6263 },
            { ID = 10325, Type = L["Tailoring"], Skill = 250, Cost = 10000, Spell = 12091, Item = 10040 },
         },
      },
      {
         Name = L["Catherine Leland"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.458, y = 0.585 },
         },
         Recipes = {
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290},
            { ID = 6330, Type = L["Cooking"], Skill = 100, Cost = 1200, Spell = 7755, Item = 4593 },
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
         },
      },
      {
         Name = L["Darian Singh"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.297, y = 0.677 },
         },
         Recipes = {
            { ID = 18649, Type = L["Engineering"], Skill = 150, Cost = 1800, Spell = 23067, Item = 9312 },
         },
      },
      {
         Name = L["Jessara Cordell"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.436, y = 0.642 },
         },
         Recipes = {
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300, Spell = 7443, Item = 0 },
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 20744 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
         },
      },
      {
         Name = L["Kaita Deepforge"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.564, y = 0.173 },
         },
         Recipes = {
            { ID = 12162, Type = L["Blacksmithing"], Skill = 160, Cost = 3000, Spell = 3492, Item = 3849 },
         },
      },
      {
         Name = L["Kendor Kabonka"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.746, y = 0.37 },
         },
         Recipes = {
            { ID = 2889, Type = L["Cooking"], Skill = 25, Cost = 240, Spell = 2795, Item = 2888 },
            { ID = 3679, Type = L["Cooking"], Skill = 60, Cost = 400, Spell = 3371, Item = 3220 },
            { ID = 2698, Type = L["Cooking"], Skill = 85, Cost = 400, Spell = 2545, Item = 2682 },
            { ID = 3681, Type = L["Cooking"], Skill = 120, Cost = 1600, Spell = 3373, Item = 3664 },
            { ID = 3678, Type = L["Cooking"], Skill = 80, Cost = 400 , Spell = 3370, Item = 3662},
            { ID = 3682, Type = L["Cooking"], Skill = 130, Cost = 1600, Spell = 3376, Item = 3665 },
            { ID = 3683, Type = L["Cooking"], Skill = 110, Cost = 1600, Spell = 3377, Item = 3666 },
            { ID = 2697, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 2542, Item = 724 },
            { ID = 3680, Type = L["Cooking"], Skill = 90, Cost = 1600, Spell = 3372, Item = 3663 },
            { ID = 2699, Type = L["Cooking"], Skill = 100, Cost = 800, Spell = 2547, Item = 1082 },
            { ID = 2701, Type = L["Cooking"], Skill = 100, Cost = 1600, Spell = 2549, Item = 1017 },
            { ID = 2700, Type = L["Cooking"], Skill = 110, Cost = 400, Spell = 2548, Item = 2685 },
            { ID = 728, Type = L["Cooking"], Skill = 75, Cost = 200, Spell = 2543, Item = 733 },
         },
      },
      {
         Name = L["Khole Jinglepocket"],
         Team = "Alliance",
         Notes = L["Seasonal"],
         Coordinates = {
            { x = 0.555, y = 0.601 },
         },
         Recipes = {
            { ID = 17201, Type = L["Cooking"], Skill = 35, Cost = 240, Spell = 21144, Item = 17198 },
            { ID = 17200, Type = L["Cooking"], Skill = 1, Cost = 25, Spell = 21143, Item = 17197 },
         },
      },
      {
         Name = L["Maria Lumere"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.459, y = 0.783 },
         },
         Recipes = {
            { ID = 9301, Type = L["Alchemy"], Skill = 250, Cost = 10000, Spell = 11476, Item = 9264 },
         },
      },
      {
         Name = L["Erika Tate"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.76, y = 0.372 },
         },
         Recipes = {
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
   },
},

-- Redridge Mountains
[1433] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Redridge-Mountains",
   MapScale = 0.06170112311456,
   MapOffset = { x = 0.49917278340928, y = 0.68359285304999 },
   Vendors = {
      {
         Name = L["Amy Davenport"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.291, y = 0.473 },
         },
         Recipes = {
            { ID = 20576, Type = L["Leatherworking"], Skill = 100, Cost = 350, Spell = 24940, Item = 20575 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
      {
         Name = L["Clyde Ranthal"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.885, y = 0.701 },
         },
         Recipes = {
            { ID = 7289, Type = L["Leatherworking"], Skill = 100, Cost = 650, Spell = 9070, Item = 7283 },
         },
      },
      {
         Name = L["Gloria Femmel"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.266, y = 0.435 },
         },
         Recipes = {
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
   },
},

-- Arathi Highlands
[1417] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Arathi-Highlands",
   MapScale = 0.10227310921644,
   MapOffset = { x = 0.47916793249546, y = 0.32386170078419 },
   Vendors = {
      {
         Name = L["Androd Fadran"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.451, y = 0.469 },
         },
         Recipes = {
            { ID = 13288, Type = L["Leatherworking"], Skill = 165, Cost = 2500, Spell = 4097, Item = 4456 },
         },
      },
      {
         Name = L["Deneb Walker"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.27, y = 0.588 },
         },
         Recipes = {
            { ID = 16084, Type = L["First Aid"], Skill = 125, Cost = 10000, Spell = 7924, Item = 0 },
            { ID = 16112, Type = L["First Aid"], Skill = 180, Cost = 2200, Spell = 7929, Item = 6451 },
            { ID = 16113, Type = L["First Aid"], Skill = 210, Cost = 5000, Spell = 10840, Item = 8544 },
         },
      },
      {
         Name = L["Drovnar Strongbrew"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.463, y = 0.47 },
         },
         Recipes = {
            { ID = 6056, Type = L["Alchemy"], Skill = 190, Cost = 2000, Spell = 7258, Item = 6050 },
         },
      },
      {
         Name = L["Hammon Karwn"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.467, y = 0.475 },
         },
         Recipes = {
            { ID = 5973, Type = L["Leatherworking"], Skill = 170, Cost = 650, Spell = 7149, Item = 5963 },
            { ID = 12228, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15855, Item = 12210 },
         },
      },
      {
         Name = L["Jannos Ironwill"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.459, y = 0.475 },
         },
         Recipes = {
            { ID = 10858, Type = L["Blacksmithing"], Skill = 155, Cost = 3000, Spell = 3494, Item = 3851 },
         },
      },
      {
         Name = L["Narj Deepslice"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.455, y = 0.475 },
         },
         Recipes = {
            { ID = 4609, Type = L["Cooking"], Skill = 175, Cost = 1000, Spell = 4094, Item = 4457 },
         },
      },
      {
         Name = L["Jun'ha"],
         Team = "Horde",
         Coordinates = {
            { x = 0.73, y = 0.361 },
         },
         Recipes = {
            { ID = 7089, Type = L["Tailoring"], Skill = 175, Cost = 1500, Spell = 8786, Item = 7053 },
         },
      },
      {
         Name = L["Keena"],
         Team = "Horde",
         Coordinates = {
            { x = 0.738, y = 0.326 },
         },
         Recipes = {
            { ID = 11163, Type = L["Enchanting"], Skill = 170, Cost = 3000, Spell = 13646, Item = 0 },
            { ID = 5973, Type = L["Leatherworking"], Skill = 170, Cost = 650, Spell = 7149, Item = 5963 },
            { ID = 3682, Type = L["Cooking"], Skill = 130, Cost = 1600, Spell = 3376, Item = 3665 },
            { ID = 12228, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15855, Item = 12210 },
         },
      },
      {
         Name = L["Tunkk"],
         Team = "Horde",
         Coordinates = {
            { x = 0.742, y = 0.346 },
         },
         Recipes = {
            { ID = 13287, Type = L["Leatherworking"], Skill = 165, Cost = 2500, Spell = 4096, Item = 4445 },
         },
      },
   },
},

-- Azshara
[1447] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Azshara",
   MapScale = 0.13779501505279,
   MapOffset = { x = 0.55282036918049, y = 0.30400571307545 },
   Vendors = {
      {
         Name = L["Blimo Gadgetspring"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.455, y = 0.897 },
         },
         Recipes = {
            { ID = 15751, Type = L["Leatherworking"], Skill = 285, Cost = 20000, Specialty = L["Dragonscale Leatherworking"], Spell = 19077, Item = 15048 },
            { ID = 15729, Type = L["Leatherworking"], Skill = 265, Cost = 12000, Specialty = L["Tribal Leatherworking"], Spell = 19053, Item = 15074 },
         },
      },
      {
         Name = L["Jubie Gadgetspring"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.453, y = 0.91 },
         },
         Recipes = {
            { ID = 10607, Type = L["Engineering"], Skill = 230, Cost = 3600, Spell = 12617, Item = 10506 },
         },
      },
   },
},

-- Ironforge
[1455] = {
   IsCity = true,
   Continent = 1415,
   MapFile = "Ironforge",
   MapScale = 0.02248317426784,
   MapOffset = { x = 0.47481923366335, y = 0.51289242617182 },
   Vendors = {
      {
         Name = L["Bombus Finespindle"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.395, y = 0.343 },
         },
         Recipes = {
            { ID = 18731, Type = L["Leatherworking"], Skill = 150, Cost = 2000, Spell = 23190, Item = 18662 },
         },
      },
      {
         Name = L["Gearcutter Cogspinner"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.68, y = 0.434 },
         },
         Recipes = {
            { ID = 18649, Type = L["Engineering"], Skill = 150, Cost = 1800, Spell = 23067, Item = 9312 },
            { ID = 7560, Type = L["Engineering"], Skill = 125, Cost = 1200, Spell = 9269, Item = 7506 },
            { ID = 16041, Type = L["Engineering"], Skill = 260, Cost = 12000, Spell = 19790, Item = 15993 },
            { ID = 16042, Type = L["Engineering"], Skill = 260, Cost = 12000, Spell = 19791, Item = 15994 },
         },
      },
      {
         Name = L["Outfitter Eric"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.432, y = 0.287 },
         },
         Recipes = {
            { ID = 10314, Type = L["Tailoring"], Skill = 230, Cost = 4000, Spell = 12075, Item = 10054 },
            { ID = 10317, Type = L["Tailoring"], Skill = 235, Cost = 4000, Spell = 12080, Item = 10055 },
            { ID = 10326, Type = L["Tailoring"], Skill = 250, Cost = 5000, Spell = 12093, Item = 10036 },
            { ID = 10323, Type = L["Tailoring"], Skill = 245, Cost = 4500, Spell = 12089, Item = 10035 },
            { ID = 10321, Type = L["Tailoring"], Skill = 240, Cost = 4500, Spell = 12085, Item = 10034 },
         },
      },
      {
         Name = L["Soolie Berryfizz"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.668, y = 0.551 },
         },
         Recipes = {
            { ID = 13478, Type = L["Alchemy"], Skill = 265, Cost = 13000, Spell = 17554, Item = 13445 },
            { ID = 5642, Type = L["Alchemy"], Skill = 150, Cost = 1800, Spell = 6624, Item = 5634 },
         },
      },
      {
         Name = L["Tansy Puddlefizz"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.479, y = 0.059 },
         },
         Recipes = {
            { ID = 6328, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7753, Item = 4592 },
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
            { ID = 6326, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7752, Item = 787 },
         },
      },
      {
         Name = L["Tilli Thistlefuzz"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.609, y = 0.443 },
         },
         Recipes = {
            { ID = 6349, Type = L["Enchanting"], Skill = 100, Cost = 500, Spell = 7793, Item = 0 },
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300, Spell = 7443, Item = 0 },
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 20744 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
         },
      },
      {
         Name = L["Wulmort Jinglepocket"],
         Team = "Alliance",
         Notes = L["Seasonal"],
         Coordinates = {
            { x = 0.332, y = 0.666 },
         },
         Recipes = {
            { ID = 17201, Type = L["Cooking"], Skill = 35, Cost = 240, Spell = 21144, Item = 17198 },
            { ID = 17200, Type = L["Cooking"], Skill = 1, Cost = 25, Spell = 21143, Item = 17197 },
         },
      },
      {
         Name = L["Emrul Riknussun"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.602, y = 0.378 },
         },
         Recipes = {
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
   },
},

-- Feralas

[1444] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Feralas",
   MapScale = 0.18885970960818,
   MapOffset = { x = 0.31589651244686, y = 0.61820581746798 },
   Vendors = {
      {
         Name = L["Brienna Starglow"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.891, y = 0.46 },
         },
         Recipes = {
            { ID = 7089, Type = L["Tailoring"], Skill = 175, Cost = 1500, Spell = 8786, Item = 7053 },
         },
      },
      {
         Name = L["Logannas"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.327, y = 0.44 },
         },
         Recipes = {
            { ID = 9302, Type = L["Alchemy"], Skill = 245, Cost = 9000, Spell = 11473, Item = 9210 },
            { ID = 6057, Type = L["Alchemy"], Skill = 190, Cost = 2000, Spell = 7259, Item = 6052 },
         },
      },
      {
         Name = L["Pratt McGrubben"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.303, y = 0.422 },
         },
         Recipes = {
            { ID = 7451, Type = L["Leatherworking"], Skill = 190, Cost = 2800, Spell = 9202, Item = 7386 },
            { ID = 15734, Type = L["Leatherworking"], Skill = 270, Cost = 14000, Specialty = L["Elemental Leatherworking"], Spell = 19061, Item = 15061 },
            { ID = 8385, Type = L["Leatherworking"], Skill = 205, Cost = 3500, Spell = 10509, Item = 8187 },
         },
      },
      {
         Name = L["Vivianna"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.314, y = 0.434 },
         },
         Recipes = {
            { ID = 13949, Type = L["Cooking"], Skill = 275, Cost = 20000, Spell = 18247, Item = 13935 },
            { ID = 12229, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15856, Item = 13851 },
            { ID = 13947, Type = L["Cooking"], Skill = 275, Cost = 20000, Spell = 18245, Item = 13933 },
            { ID = 13948, Type = L["Cooking"], Skill = 275, Cost = 20000, Spell = 18246, Item = 13934 },
         },
      },
      {
         Name = L["Bronk"],
         Team = "Horde",
         Coordinates = {
            { x = 0.758, y = 0.431 },
         },
         Recipes = {
            { ID = 9302, Type = L["Alchemy"], Skill = 245, Cost = 9000, Spell = 11473, Item = 9210 },
            { ID = 6057, Type = L["Alchemy"], Skill = 190, Cost = 2000, Spell = 7259, Item = 6052 },
         },
      },
      {
         Name = L["Jangdor Swiftstrider"],
         Team = "Horde",
         Coordinates = {
            { x = 0.744, y = 0.428 },
         },
         Recipes = {
            { ID = 7451, Type = L["Leatherworking"], Skill = 190, Cost = 2800, Spell = 9202, Item = 7386 },
            { ID = 15734, Type = L["Leatherworking"], Skill = 270, Cost = 14000, Specialty = L["Elemental Leatherworking"], Spell = 19061, Item = 15061 },
            { ID = 8409, Type = L["Leatherworking"], Skill = 210, Cost = 4000, Spell = 10516, Item = 8192 },
            { ID = 8385, Type = L["Leatherworking"], Skill = 205, Cost = 3500, Spell = 10509, Item = 8187 },
         },
      },
      {
         Name = L["Sheendra Tallgrass"],
         Team = "Horde",
         Coordinates = {
            { x = 0.744, y = 0.425 },
         },
         Recipes = {
            { ID = 13949, Type = L["Cooking"], Skill = 275, Cost = 20000, Spell = 18247, Item = 13935 },
            { ID = 12229, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15856, Item = 13851 },
            { ID = 13947, Type = L["Cooking"], Skill = 275, Cost = 20000, Spell = 18245, Item = 13933 },
            { ID = 13948, Type = L["Cooking"], Skill = 275, Cost = 20000, Spell = 18246, Item = 13934 },
         },
      },
      {
         Name = L["Worb Strongstitch"],
         Team = "Horde",
         Coordinates = {
            { x = 0.742, y = 0.425 },
         },
         Recipes = {
            { ID = 8409, Type = L["Leatherworking"], Skill = 210, Cost = 4000, Spell = 10516, Item = 8192 },
         },
      },
      {
         Name = L["Zorbin Fandazzle"],
         Team = "Neutral",
         Notes = L["Quest"],
         Coordinates = {
            { x = 0.445, y = 0.434 },
         },
         Recipes = {
            { ID = 19027, Type = L["Engineering"], Skill = 250, Cost = 5000, Spell = 23507, Item = 19026 },
         },
      },
   },
},

-- Stranglethorn Vale
[1434] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Stranglethorn-Vale",
   MapScale = 0.18128603034401,
   MapOffset = { x = 0.39145470225916, y = 0.79412224886668 },
   Vendors = {
      {
         Name = L["Corporal Bluth"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.38, y = 0.03 },
         },
         Recipes = {
            { ID = 12231, Type = L["Cooking"], Skill = 175, Cost = 3000, Spell = 15861, Item = 12212 },
            { ID = 12228, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15855, Item = 12210 },
         },
      },
      {
         Name = L["Nerrist"],
         Team = "Horde",
         Coordinates = {
            { x = 0.324, y = 0.287 },
         },
         Recipes = {
            { ID = 3682, Type = L["Cooking"], Skill = 130, Cost = 1600, Spell = 3376, Item = 3665 },
            { ID = 12231, Type = L["Cooking"], Skill = 175, Cost = 3000, Spell = 15861, Item = 12212 },
            { ID = 12228, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15855, Item = 12210 },
         },
      },
      {
         Name = L["Uthok"],
         Team = "Horde",
         Coordinates = {
            { x = 0.314, y = 0.282 },
         },
         Recipes = {
            { ID = 16111, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 15915, Item = 12216 },
         },
      },
      {
         Name = L["Vharr"],
         Team = "Horde",
         Coordinates = {
            { x = 0.322, y = 0.287 },
         },
         Recipes = {
            { ID = 12164, Type = L["Blacksmithing"], Skill = 185, Cost = 4400, Spell = 3498, Item = 3855 },
         },
      },
      {
         Name = L["Blixrez Goodstitch"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.281, y = 0.771 },
         },
         Recipes = {
            { ID = 5789, Type = L["Leatherworking"], Skill = 190, Cost = 2800, Spell = 6705, Item = 5783 },
            { ID = 5788, Type = L["Leatherworking"], Skill = 170, Cost = 650, Spell = 6704, Item = 5782 },
         },
      },
      {
         Name = L["Cowardly Crosby"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.27, y = 0.825 },
         },
         Recipes = {
            { ID = 10318, Type = L["Tailoring"], Skill = 240, Cost = 7000, Spell = 12081, Item = 10030 },
         },
      },
      {
         Name = L["Crazk Sparks"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.283, y = 0.765 },
         },
         Recipes = {
            { ID = 18648, Type = L["Engineering"], Skill = 150, Cost = 1800, Spell = 23068, Item = 9313 },
         },
      },
      {
         Name = L["Glyx Brewright"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.283, y = 0.771 },
         },
         Recipes = {
            { ID = 6056, Type = L["Alchemy"], Skill = 190, Cost = 2000, Spell = 7258, Item = 6050 },
            { ID = 6057, Type = L["Alchemy"], Skill = 190, Cost = 2000, Spell = 7259, Item = 6052 },
         },
      },
      {
         Name = L["Gnaz Blunderflame"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.512, y = 0.352 },
         },
         Recipes = {
            { ID = 13311, Type = L["Engineering"], Skill = 200, Cost = 10000, Spell = 3969, Item = 4396 },
         },
      },
      {
         Name = L["Jaquilina Dramet"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.357, y = 0.111 },
         },
         Recipes = {
            { ID = 12164, Type = L["Blacksmithing"], Skill = 185, Cost = 4400, Spell = 3498, Item = 3855 },
         },
      },
      {
         Name = L["Jutak"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.273, y = 0.774 },
         },
         Recipes = {
            { ID = 12162, Type = L["Blacksmithing"], Skill = 160, Cost = 3000, Spell = 3492, Item = 3849 },
         },
      },
      {
         Name = L["Kelsey Yance"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.282, y = 0.743 },
         },
         Recipes = {
            { ID = 13940, Type = L["Cooking"], Skill = 225, Cost = 16000, Spell = 18239, Item = 13927 },
            { ID = 13941, Type = L["Cooking"], Skill = 225, Cost = 16000, Spell = 18241, Item = 13930 },
            { ID = 6039, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 7213, Item = 6038 },
            { ID = 13943, Type = L["Cooking"], Skill = 240, Cost = 16000, Spell = 18242, Item = 13929 },
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
      {
         Name = L["Knaz Blunderflame"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.512, y = 0.352 },
         },
         Recipes = {
            { ID = 10602, Type = L["Engineering"], Skill = 210, Cost = 3000, Spell = 12597, Item = 10546 },
         },
      },
      {
         Name = L["Mazk Snipeshot"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.285, y = 0.751 },
         },
         Recipes = {
            { ID = 13310, Type = L["Engineering"], Skill = 180, Cost = 2000, Spell = 3979, Item = 4407 },
            { ID = 18651, Type = L["Engineering"], Skill = 260, Cost = 12000, Spell = 23071, Item = 18631 },
         },
      },
      {
         Name = L["Narkk"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.283, y = 0.742 },
         },
         Recipes = {
            { ID = 10728, Type = L["Tailoring"], Skill = 200, Cost = 1500, Spell = 3873, Item = 4336 },
         },
      },
      {
         Name = L["Old Man Heming"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.274, y = 0.772 },
         },
         Recipes = {
            { ID = 16083, Type = L["Fishing"], Skill = 125, Cost = 10000, Spell = 7732, Item = 0 },
         },
      },
      {
         Name = L["Rikqiz"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.283, y = 0.757 },
         },
         Recipes = {
            { ID = 14635, Type = L["Leatherworking"], Skill = 185, Cost = 3000, Spell = 3778, Item = 4262 },
            { ID = 18239, Type = L["Leatherworking"], Skill = 200, Cost = 3500, Spell = 22711, Item = 18238 },
         },
      },
      {
         Name = L["Rin'wosho the Trader"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.151, y = 0.16 },
         },
         Recipes = {
            { ID = 20012, Type = L["Alchemy"], Skill = 275, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 5, Spell = 24366, Item = 20002 },
            { ID = 20014, Type = L["Alchemy"], Skill = 290, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 6, Spell = 24368, Item = 20004 },
            { ID = 20011, Type = L["Alchemy"], Skill = 275, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 7, Spell = 24365, Item = 20007 },
            { ID = 20013, Type = L["Alchemy"], Skill = 285, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 8, Spell = 24367, Item = 20008 },
            { ID = 19781, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 5, Spell = 24141, Item = 19695 },
            { ID = 19780, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 6, Spell = 24140, Item = 19694 },
            { ID = 19779, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 7, Spell = 24139, Item = 19693 },
            { ID = 19778, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 5, Spell = 24138, Item = 19692 },
            { ID = 19777, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 6, Spell = 24137, Item = 19691 },
            { ID = 19776, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 7, Spell = 24136, Item = 19690 },
            { ID = 20756, Type = L["Enchanting"], Skill = 300, Cost = 40000, Faction = BFAC["Zandalar Tribe"], Level = 6, Spell = 25129, Item = 20749 },
            { ID = 20001, Type = L["Engineering"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 5, Spell = 24357, Item = 19998 },
            { ID = 20000, Type = L["Engineering"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 6, Spell = 24356, Item = 19999 },
            { ID = 19771, Type = L["Leatherworking"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 5, Spell = 24123, Item = 19687 },
            { ID = 19773, Type = L["Leatherworking"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 6, Spell = 24125, Item = 19689 },
            { ID = 19770, Type = L["Leatherworking"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 6, Spell = 24122, Item = 19686 },
            { ID = 19772, Type = L["Leatherworking"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 7, Spell = 24124, Item = 19688 },
            { ID = 19769, Type = L["Leatherworking"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 7, Spell = 24121, Item = 19685},
            { ID = 19766, Type = L["Tailoring"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 5, Spell = 24093, Item = 19684 },
            { ID = 19765, Type = L["Tailoring"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 6, Spell = 24092, Item = 19683 },
            { ID = 19764, Type = L["Tailoring"], Skill = 300, Cost = 50000, Faction = BFAC["Zandalar Tribe"], Level = 7, Spell = 24091, Item = 19682 },
            { ID = 20757, Type = L["Enchanting"], Skill = 300, Cost = 40000, Faction = BFAC["Zandalar Tribe"], Level = 5, Spell = 25130, Item = 20748 },
         },
      },
      {
         Name = L["Xizk Goodstitch"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.283, y = 0.762 },
         },
         Recipes = {
            { ID = 7087, Type = L["Tailoring"], Skill = 180, Cost = 1200, Spell = 8789, Item = 4336 },
            { ID = 14630, Type = L["Tailoring"], Skill = 165, Cost = 1000, Spell = 3857, Item = 4322 },
         },
      },
      {
         Name = L["Zarena Cromwind"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.285, y = 0.754 },
         },
         Recipes = {
            { ID = 12163, Type = L["Blacksmithing"], Skill = 180, Cost = 4400, Spell = 3496, Item = 3853 },
         },
      },
   },
},

-- Ashenvale
[1440] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Ashenvale",
   MapScale = 0.15670371525706,
   MapOffset = { x = 0.41757282062541, y = 0.33126468682991 },
   Vendors = {
      {
         Name = L["Dalria"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.361, y = 0.516 },
         },
         Recipes = {
            { ID = 11101, Type = L["Enchanting"], Skill = 140, Cost = 2500, Spell = 13536, Item = 0 },
            { ID = 11039, Type = L["Enchanting"], Skill = 110, Cost = 800, Spell = 13419, Item = 0},
         },
      },
      {
         Name = L["Harklan Moongrove"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.51, y = 0.67 },
         },
         Recipes = {
            { ID = 6054, Type = L["Alchemy"], Skill = 135, Cost = 900, Spell = 7256, Item = 6048 },
         },
      },
      {
         Name = L["Harlown Darkweave"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.184, y = 0.592 },
         },
         Recipes = {
            { ID = 7361, Type = L["Leatherworking"], Skill = 135, Cost = 1800, Spell = 9146, Item = 7349 },
         },
      },
      {
         Name = L["Lardan"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.344, y = 0.493 },
         },
         Recipes = {
            { ID = 5973, Type = L["Leatherworking"], Skill = 170, Cost = 650, Spell = 7149, Item = 5963 },
         },
      },
      {
         Name = L["Shandrina"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.495, y = 0.671 },
         },
         Recipes = {
            { ID = 16072, Type = L["Cooking"], Skill = 125, Cost = 10000, Spell = 3413, Item = 0 },
         },
      },
      {
         Name = L["Ulthaan"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.5, y = 0.666 },
         },
         Recipes = {
            { ID = 3734, Type = L["Cooking"], Skill = 110, Cost = 1600, Spell = 3397, Item = 3726 },
            { ID = 5489, Type = L["Cooking"], Skill = 110, Cost = 1200, Spell = 6419, Item = 5480 },
         },
      },
      {
         Name = L["Wik'Tar"],
         Team = "Horde",
         Coordinates = {
            { x = 0.121, y = 0.34 },
         },
         Recipes = {
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
         },
      },
   },
},

-- Duskwood
[1431] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Duskwood",
   MapScale = 0.07670475476181,
   MapOffset = { x = 0.43087243362495, y = 0.73224350550454 },
   Vendors = {
      {
         Name = L["Danielle Zipstitch"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.759, y = 0.456 },
         },
         Recipes = {
            { ID = 14627, Type = L["Tailoring"], Skill = 135, Cost = 800, Spell = 3869, Item = 4332 },
         },
      },
      {
         Name = L["Sheri Zipstitch"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.757, y = 0.456 },
         },
         Recipes = {
            { ID = 6401, Type = L["Tailoring"], Skill = 155, Cost = 1100, Spell = 3870, Item = 4333 },
            { ID = 6275, Type = L["Tailoring"], Skill = 115, Cost = 800, Spell = 7643, Item = 6264 },
         },
      },
      {
         Name = L["Bliztik"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.18, y = 0.543 },
         },
         Recipes = {
            { ID = 6068, Type = L["Alchemy"], Skill = 165, Cost = 1500, Spell = 3449, Item = 3824 },
         },
      },
      {
         Name = L["Kzixx"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.811, y = 0.205 },
         },
         Recipes = {
            { ID = 6053, Type = L["Alchemy"], Skill = 100, Cost = 800, Spell = 7255, Item = 6051 },
            { ID = 7561, Type = L["Engineering"], Skill = 165, Cost = 2000, Spell = 9273, Item = 7148 },
         },
      },
   },
},

-- Westfall
[1436] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Westfall",
   MapScale = 0.09943208435841,
   MapOffset = { x = 0.36884571674582, y = 0.71874918595783 },
   Vendors = {
      {
         Name = L["Defias Profiteer"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.436, y = 0.677 },
         },
         Recipes = {
            { ID = 5640, Type = L["Alchemy"], Skill = 60, Cost = 100, Spell = 6617, Item = 5631 },
         },
      },
      {
         Name = L["Gina MacGregor"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.572, y = 0.54 },
         },
         Recipes = {
            { ID = 5786, Type = L["Leatherworking"], Skill = 90, Cost = 550, Spell = 6702, Item = 5780 },
            { ID = 5787, Type = L["Leatherworking"], Skill = 95, Cost = 600, Spell = 6703, Item = 5781 },
            { ID = 6274, Type = L["Tailoring"], Skill = 100, Cost = 400, Spell = 7639, Item = 6263 },
            { ID = 5771, Type = L["Tailoring"], Skill = 70, Cost = 200, Spell = 6686, Item = 5762 },
         },
      },
      {
         Name = L["Kriggon Talsone"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.365, y = 0.891 },
         },
         Recipes = {
            { ID = 5528, Type = L["Cooking"], Skill = 90, Cost = 800, Spell = 6501, Item = 5526 },
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
            { ID = 6326, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7752, Item = 787 },
            { ID = 16111, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 15915, Item = 12216 },
         },
      },
   },
},

-- Loch Modan
[1432] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Loch-Modan",
   MapScale = 0.07839152145224,
   MapOffset = { x = 0.51118749188138, y = 0.50940913489577 },
   Vendors = {
      {
         Name = L["Drac Roughcut"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.356, y = 0.491 },
         },
         Recipes = {
            { ID = 6892, Type = L["Cooking"], Skill = 40, Cost = 250, Spell = 8607, Item = 6890 },
         },
      },
      {
         Name = L["Rann Flamespinner"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.359, y = 0.46 },
         },
         Recipes = {
            { ID = 6275, Type = L["Tailoring"], Skill = 115, Cost = 800, Sepll = 7643, Item = 6264 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
      {
         Name = L["Khara Deepwater"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.402, y = 0.393 },
         },
         Recipes = {
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290 },
            { ID = 6329, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7754, Item = 6316 },
            { ID = 6328, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7753, Item = 4592 },
         },
      },
      {
         Name = L["Xandar Goodbeard"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.826, y = 0.633 },
         },
         Recipes = {
            { ID = 6053, Type = L["Alchemy"], Skill = 100, Cost = 800, Spell = 7255, Item = 6051 },
            { ID = 5640, Type = L["Alchemy"], Skill = 60, Cost = 100, Spell = 6617, Item = 5631 },
         },
      },
   },
},

-- Elwynn Forest
[1429] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Elwynn-Forest",
   MapScale = 0.09860350595046,
   MapOffset = { x = 0.41092682316676, y = 0.65651531970162 },
   Vendors = {
      {
         Name = L["Drake Lindgren"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.833, y = 0.667 },
         },
         Recipes = {
            { ID = 6272, Type = L["Tailoring"], Skill = 70, Cost = 300, Spell = 7633, Item = 6242 },
         },
      },
      {
         Name = L["Tharynn Bouden"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.418, y = 0.672 },
         },
         Recipes = {
            { ID = 6270, Type = L["Tailoring"], Skill = 55, Cost = 200, Spell = 7630, Item = 6240 },
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290 },
            { ID = 6328, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7753, Item = 4592 },
         },
      },
   },
},

-- Darnassus
[1457] = {
   IsCity = true,
   Continent = 1414,
   MapFile = "Darnassus",
   MapScale = 0.02876626176374,
   MapOffset = { x = 0.38392150175204, y = 0.10441296545475 },
   Vendors = {
      {
         Name = L["Elynna"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.643, y = 0.217 },
         },
         Recipes = {
            { ID = 6272, Type = L["Tailoring"], Skill = 70, Cost = 300, Spell = 7633, Item = 6242 },
            { ID = 6275, Type = L["Tailoring"], Skill = 115, Cost = 800, Spell = 7643, Item = 6264 },
            { ID = 10311, Type = L["Tailoring"], Skill = 220, Cost = 3000, Spell = 12064, Item = 10052 },
         },
      },
      {
         Name = L["Mythrin'dir"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.6096, y = 0.1769 },
         },
         Recipes = {
            { ID = 11223, Type = L["Enchanting"], Skill = 235, Cost = 5800, Spell = 13931, Item = 0 },
            { ID = 16217, Type = L["Enchanting"], Skill = 265, Cost = 12000, Spell = 20017, Item = 0 },
         },
      },
      {
         Name = L["Saenorion"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.633, y = 0.223 },
         },
         Recipes = {
            { ID = 18949, Type = L["Leatherworking"], Skill = 155, Cost = 2000, Spell = 23399, Item = 18948 },
            { ID = 7451, Type = L["Leatherworking"], Skill = 190, Cost = 2800, Spell = 9202, Item = 7386 },
         },
      },
      {
         Name = L["Ulthir"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.555, y = 0.243 },
         },
         Recipes = {
            { ID = 5642, Type = L["Alchemy"], Skill = 150, Cost = 1800, Spell = 6624, Item = 5634 },
            { ID = 5643, Type = L["Alchemy"], Skill = 175, Cost = 2000, Spell = 6618, Item = 5633 },
            { ID = 13477, Type = L["Alchemy"], Skill = 260, Cost = 12000, Spell = 17553, Item = 13443 },
         },
      },
      {
         Name = L["Vaean"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.58, y = 0.15 },
         },
         Recipes = {
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300, Spell = 7443, Item = 0 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 20744 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
         },
      },
      {
         Name = L["Fyldan"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.48, y = 0.211 },
         },
         Recipes = {
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
         },
      },
   },
},

-- Wetlands
[1437] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Wetlands",
   MapScale = 0.11745423014662,
   MapOffset = { x = 0.46561438951659, y = 0.40971063365152 },
   Vendors = {
      {
         Name = L["Fradd Swiftgear"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.26, y = 0.255 },
         },
         Recipes = {
            { ID = 13309, Type = L["Engineering"], Skill = 120, Cost = 1000, Spell = 3939, Item = 4372 },
            { ID = 14639, Type = L["Engineering"], Skill = 140, Cost = 1500, Spell = 3952, Item = 4381 },
         },
      },
      {
         Name = L["Jennabink Powerseam"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.081, y = 0.558 },
         },
         Recipes = {
            { ID = 6275, Type = L["Tailoring"], Skill = 115, Cost = 800, Spell = 7643, Item = 6264 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
      {
         Name = L["Stuart Fleming"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.082, y = 0.584 },
         },
         Recipes = {
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
         },
      },
      {
         Name = L["Wenna Silkbeard"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.258, y = 0.255 },
         },
         Recipes = {
            { ID = 7613, Type = L["Leatherworking"], Skill = 155, Cost = 2000, Spell = 3772, Item = 4255 },
            { ID = 7290, Type = L["Leatherworking"], Skill = 120, Cost = 1600, Spell = 9072, Item = 7284 },
            { ID = 7114, Type = L["Tailoring"], Skill = 145, Cost = 1000, Spell = 3854, Item = 4319 },
         },
      },
   },
},

-- The Hinterlands
[1425] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "The-Hinterlands",
   MapScale = 0.10937523495111,
   MapOffset = { x = 0.49929119700867, y = 0.25567971676068 },
   Vendors = {
      {
         Name = L["Gigget Zipcoil"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.346, y = 0.39 },
         },
         Recipes = {
            { ID = 15735, Type = L["Leatherworking"], Skill = 270, Cost = 14000, Specialty = L["Tribal Leatherworking"], Spell = 19062, Item = 15067 },
         },
      },
      {
         Name = L["Harggan"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.135, y = 0.446 },
         },
         Recipes = {
            { ID = 7995, Type = L["Blacksmithing"], Skill = 215, Cost = 6000, Spell = 9937, Item = 7924 },
         },
      },
      {
         Name = L["Nioma"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.133, y = 0.434 },
         },
         Recipes = {
            { ID = 8409, Type = L["Leatherworking"], Skill = 210, Cost = 4000, Spell = 10516, Item = 8192 },
         },
      },
      {
         Name = L["Ruppo Zipcoil"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.344, y = 0.375 },
         },
         Recipes = {
            { ID = 10609, Type = L["Engineering"], Skill = 250, Cost = 4000, Spell = 12624, Item = 10576 },
         },
      },
      {
         Name = L["Truk Wildbeard"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.144, y = 0.423 },
         },
         Recipes = {
            { ID = 18046, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 22480, Item = 18045 },
         },
      },
      {
         Name = L["Otho Moji'ko"],
         Team = "Horde",
         Coordinates = {
            { x = 0.795, y = 0.795 },
         },
         Recipes = {
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
   },
},

-- Dun Morogh
[1426] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Dun-Morogh",
   MapScale = 0.13991525534426,
   MapOffset = { x = 0.40335096278072, y = 0.48339696712179 },
   Vendors = {
      {
         Name = L["Gretta Ganter"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.314, y = 0.443 },
         },
         Recipes = {
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290 },
         },
      },
   },
},

-- Darkshore
[1439] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Darkshore",
   MapScale = 0.17799008894522,
   MapOffset = { x = 0.38383175154516, y = 0.18206216123156 },
   Vendors = {
      {
         Name = L["Heldan Galesong"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.37, y = 0.563 },
         },
         Recipes = {
            { ID = 5528, Type = L["Cooking"], Skill = 90, Cost = 800, Spell = 6501, Item = 5526 },
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
         },
      },
      {
         Name = L["Laird"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.368, y = 0.443 },
         },
         Recipes = {
            { ID = 5485, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 6415, Item = 5476 },
         },
      },
      {
         Name = L["Mavralyn"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.373, y = 0.411 },
         },
         Recipes = {
            { ID = 5786, Type = L["Leatherworking"], Skill = 90, Cost = 550, Spell = 6702, Item = 5780 },
            { ID = 5787, Type = L["Leatherworking"], Skill = 95, Cost = 600, Spell = 6703, Item = 5781 },
         },
      },
      {
         Name = L["Valdaron"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.377, y = 0.411 },
         },
         Recipes = {
            { ID = 6270, Type = L["Tailoring"], Skill = 55, Cost = 200, Spell = 7630, Item = 6240 },
            { ID = 5771, Type = L["Tailoring"], Skill = 70, Cost = 200, Spell = 6686, Item = 5762 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
   },
},

-- Dustwallow Marsh
[1445] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Dustwallow-Marsh",
   MapScale = 0.14266384095509,
   MapOffset = { x = 0.49026338351379, y = 0.60461876174686 },
   Vendors = {
      {
         Name = L["Helenia Olden"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.664, y = 0.515 },
         },
         Recipes = {
            { ID = 5789, Type = L["Leatherworking"], Skill = 190, Cost = 2800, Spell = 6705, Item = 5783 },
            { ID = 12239, Type = L["Cooking"], Skill = 200, Cost = 7000, Spell = 15906, Item = 12217 },
            { ID = 12233, Type = L["Cooking"], Skill = 175, Cost = 3000, Spell = 15865, Item = 12214 },
            { ID = 12228, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15855, Item = 12210 },
         },
      },
      {
         Name = L["Balai Lok'Wein"],
         Team = "Horde",
         Coordinates = {
            { x = 0.361, y = 0.308 },
         },
         Recipes = {
            { ID = 16084, Type = L["First Aid"], Skill = 125, Cost = 10000, Spell = 7924, Item = 0 },
            { ID = 16112, Type = L["First Aid"], Skill = 180, Cost = 2200, Spell = 7929, Item = 6451 },
            { ID = 16113, Type = L["First Aid"], Skill = 210, Cost = 5000, Spell = 10840, Item = 8544 },
         },
      },
      {
         Name = L["Ghok'kah"],
         Team = "Horde",
         Coordinates = {
            { x = 0.355, y = 0.311 },
         },
         Recipes = {
            { ID = 4355, Type = L["Tailoring"], Skill = 200, Cost = 1500, Spell = 3862, Item = 4327 },
            { ID = 16084, Type = L["First Aid"], Skill = 125, Cost = 10000, Spell = 7924, Item = 0 },
            { ID = 16112, Type = L["First Aid"], Skill = 180, Cost = 2200, Spell = 7929, Item = 6451 },
            { ID = 16113, Type = L["First Aid"], Skill = 210, Cost = 5000, Spell = 10840, Item = 8544 },
         },
      },
      {
         Name = L["Ogg'marr"],
         Team = "Horde",
         Coordinates = {
            { x = 0.359, y = 0.308 },
         },
         Recipes = {
            { ID = 12232, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15863, Item = 12213 },
            { ID = 12239, Type = L["Cooking"], Skill = 200, Cost = 7000, Spell = 15906, Item = 12217 },
            { ID = 20075, Type = L["Cooking"], Skill = 150, Cost = 2000, Spell = 24418, Item = 20074 },
            { ID = 12228, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15855, Item = 12210 },
         },
      },
   },
},

-- Desolace
[1443] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Desolace",
   MapScale = 0.12219839120669,
   MapOffset = { x = 0.34873187115693, y = 0.50331046935371 },
   Vendors = {
      {
         Name = L["Janet Hommers"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.662, y = 0.066 },
         },
         Recipes = {
            { ID = 12240, Type = L["Cooking"], Skill = 200, Cost = 7000, Spell = 15910, Item = 12215 },
            { ID = 12233, Type = L["Cooking"], Skill = 175, Cost = 3000, Spell = 15865, Item = 12214 },
         },
      },
      {
         Name = L["Kireena"],
         Team = "Horde",
         Coordinates = {
            { x = 0.514, y = 0.537 },
         },
         Recipes = {
            { ID = 7114, Type = L["Tailoring"], Skill = 145, Cost = 1000, Spell = 3854, Item = 4319 },
            { ID = 12232, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15863, Item = 12213 },
            { ID = 12240, Type = L["Cooking"], Skill = 200, Cost = 7000, Spell = 15910, Item = 12215 },
         },
      },
      {
         Name = L["Muuran"],
         Team = "Horde",
         Coordinates = {
            { x = 0.555, y = 0.563 },
         },
         Recipes = {
            { ID = 10858, Type = L["Blacksmithing"], Skill = 155, Cost = 3000, Spell = 3494, Item = 3851 },
         },
      },
      {
         Name = L["Wulan"],
         Team = "Horde",
         Coordinates = {
            { x = 0.266, y = 0.698 },
         },
         Recipes = {
            { ID = 16072, Type = L["Cooking"], Skill = 125, Cost = 10000, Spell = 3413, Item = 0 },
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
      {
         Name = L["Super-Seller 680"],
         Team = "Neutral",
         Notes = L["Intermittent"],
         Coordinates = {
            { x = 0.405, y = 0.793 },
         },
         Recipes = {
            { ID = 4609, Type = L["Cooking"], Skill = 175, Cost = 1000, Spell = 4094, Item = 4457 },
            { ID = 3734, Type = L["Cooking"], Skill = 110, Cost = 1600, Spell = 3397, Item = 3726 },
            { ID = 12239, Type = L["Cooking"], Skill = 200, Cost = 7000, Spell = 15906, Item = 12217 },
            { ID = 12229, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15856, Item = 13851 },
            { ID = 12227, Type = L["Cooking"], Skill = 125, Cost = 1600, Spell = 15853, Item = 12209 },
            { ID = 12233, Type = L["Cooking"], Skill = 175, Cost = 3000, Spell = 15865, Item = 12214},
         },
      },
      {
         Name = L["Vendor-Tron 1000"],
         Team = "Neutral",
         Notes = L["Intermittent"],
         Coordinates = {
            { x = 0.605, y = 0.378 },
         },
         Recipes = {
            { ID = 12232, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15863, Item = 12213 },
            { ID = 12240, Type = L["Cooking"], Skill = 200, Cost = 7000, Spell = 15910, Item = 12215 },
            { ID = 3735, Type = L["Cooking"], Skill = 125, Cost = 1800, Spell = 3398, Item = 3727 },
            { ID = 12231, Type = L["Cooking"], Skill = 175, Cost = 3000, Spell = 15861, Item = 12212 },
            { ID = 5489, Type = L["Cooking"], Skill = 110, Cost = 1200, Spell = 6419, Item = 5480 },
            { ID = 12228, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15855, Item = 12210 },
         },
      },
   },
},

-- Western Plaguelands
[1422] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Western-Plaguelands",
   MapScale = 0.12215946583965,
   MapOffset = { x = 0.44270955019641, y = 0.17471356786018 },
   Vendors = {
      {
         Name = L["Leonard Porter"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.431, y = 0.843 },
         },
         Recipes = {
            { ID = 15741, Type = L["Leatherworking"], Skill = 275, Cost = 16000, Specialty = L["Elemental Leatherworking"], Spell = 19067, Item = 15057 },
            { ID = 15725, Type = L["Leatherworking"], Skill = 260, Cost = 12000, Spell = 19049, Item = 15083 },
         },
      },
      {
         Name = L["Argent Quartermaster Lightspark"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.428, y = 0.837 },
         },
         Recipes = {
            { ID = 13482, Type = L["Alchemy"], Skill = 275, Cost = 15000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 17559, Item = 7078 },
            { ID = 19203, Type = L["Blacksmithing"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23632, Item = 19051 },
            { ID = 19205, Type = L["Blacksmithing"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23633, Item = 19057 },
            { ID = 19447, Type = L["Enchanting"], Skill = 300, Cost = 60000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23802, Item = 0 },
            { ID = 19446, Type = L["Enchanting"], Skill = 290, Cost = 30000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23801, Item = 0 },
            { ID = 19328, Type = L["Leatherworking"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23705, Item = 19052 },
            { ID = 19329, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23706, Item = 19058 },
            { ID = 19216, Type = L["Tailoring"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23664, Item = 19056 },
            { ID = 19217, Type = L["Tailoring"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23665, Item = 19059 },
            { ID = 19442, Type = L["First Aid"], Skill = 300, Cost = 100000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23787, Item = 19440 },
         },
      },
      {
         Name = L["Magnus Frostwake"],
         Team = "Neutral",
         Notes = L["Quest"],
         Coordinates = {
            { x = 0.678, y = 0.771 },
         },
         Recipes = {
            { ID = 13501, Type = L["Alchemy"], Skill = 295, Cost = 30000, Spell = 17580, Item = 13444 },
            { ID = 13485, Type = L["Alchemy"], Skill = 275, Cost = 15000, Spell = 17562, Item = 7082 },
            { ID = 8030, Type = L["Blacksmithing"], Skill = 255, Cost = 10000, Spell = 10013, Item = 7947 },
            { ID = 12823, Type = L["Blacksmithing"], Skill = 280, Cost = 20000, Spell = 16971, Item = 12775 },
            { ID = 12819, Type = L["Blacksmithing"], Skill = 275, Cost = 16000, Spell = 16969, Item = 12773 },
            { ID = 12703, Type = L["Blacksmithing"], Skill = 295, Cost = 40000, Spell = 16661, Item = 12632 },
         },
      },
   },
},

-- Hillsbrad Foothills
[1424] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Hillsbrad-Foothills",
   MapScale = 0.09090931690055,
   MapOffset = { x = 0.4242436124746, y = 0.30113436864162 },
   Vendors = {
      {
         Name = L["Lindea Rabonne"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.506, y = 0.609 },
         },
         Recipes = {
            { ID = 6330, Type = L["Cooking"], Skill = 100, Cost = 1200, Spell = 7755, Item = 4593 },
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
         },
      },
      {
         Name = L["Micha Yance"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.489, y = 0.55 },
         },
         Recipes = {
            { ID = 11163, Type = L["Enchanting"], Skill = 170, Cost = 3000, Spell = 13646, Item = 0 },
            { ID = 5788, Type = L["Leatherworking"], Skill = 170, Cost = 650, Spell = 6704, Item = 5782 },
            { ID = 4355, Type = L["Tailoring"], Skill = 200, Cost = 1500, Spell = 3862, Item = 4327 },
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
      {
         Name = L["Nandar Branson"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.504, y = 0.572 },
         },
         Recipes = {
            { ID = 6055, Type = L["Alchemy"], Skill = 165, Cost = 1500, Spell = 7257, Item = 6049 },
         },
      },
      {
         Name = L["Christoph Jeffcoat"],
         Team = "Horde",
         Coordinates = {
            { x = 0.625, y = 0.191 },
         },
         Recipes = {
            { ID = 6054, Type = L["Alchemy"], Skill = 135, Cost = 900, Spell = 7256, Item = 6048 },
            { ID = 5788, Type = L["Leatherworking"], Skill = 170, Cost = 650, Spell = 6704, Item = 5782 },
         },
      },
      {
         Name = L["Derak Nightfall"],
         Team = "Horde",
         Coordinates = {
            { x = 0.623, y = 0.196 },
         },
         Recipes = {
            { ID = 6330, Type = L["Cooking"], Skill = 100, Cost = 1200, Spell = 7755, Item = 4593 },
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
      {
         Name = L["George Candarte"],
         Team = "Horde",
         Coordinates = {
            { x = 0.914, y = 0.39 },
         },
         Recipes = {
            { ID = 7613, Type = L["Leatherworking"], Skill = 155, Cost = 2000, Spell = 3772, Item = 4255 },
         },
      },
      {
         Name = L["Mallen Swain"],
         Team = "Horde",
         Coordinates = {
            { x = 0.617, y = 0.214 },
         },
         Recipes = {
            { ID = 6274, Type = L["Tailoring"], Skill = 100, Cost = 400, Spell = 7639, Item = 6263 },
            { ID = 6401, Type = L["Tailoring"], Skill = 155, Cost = 1100, Spell = 3870, Item = 4333 },
         },
      },
      {
         Name = L["Zan Shivsproket"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.841, y = 0.184 },
         },
         Recipes = {
            { ID = 7742, Type = L["Engineering"], Skill = 200, Cost = 2400, Spell = 3971, Item = 4397 },
         },
      },
      {
         Name = L["Zixil"],
         Team = "Neutral",
         Notes = L["Roving"],
         Coordinates = {
            { x = 0.609, y = 0.205 },
            { x = 0.555, y = 0.194 },
            { x = 0.559, y = 0.296 },
            { x = 0.514, y = 0.393 },
            { x = 0.506, y = 0.499 },
         },
         Recipes = {
            { ID = 6377, Type = L["Enchanting"], Skill = 125, Cost = 1000, Spell = 7867, Item = 0 },
            { ID = 7561, Type = L["Engineering"], Skill = 165, Cost = 2000, Spell = 9273, Item = 7148 },
            { ID = 7362, Type = L["Leatherworking"], Skill = 135, Cost = 2000, Spell = 9147, Item = 7352 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
--      Thistle Tea not in game
--      {
--         Name = L["Smudge Thunderwood"],
--         Team = "Neutral",
--         Coordinates = {
--            { x = 0.842, y = 0.185 },
--         },
--         Recipes = {
--            { ID = 18160, Type = L["Cooking"], Skill = 60, Cost = 200, Notes = L["Rogue Only"], Spell = 9513, Item = 7676 },
--         },
--      },
   },
},

-- Felwood
[1448] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Felwood",
   MapScale = 0.15625084006464,
   MapOffset = { x = 0.41995800144849, y = 0.23097545880609 },
   Vendors = {
      {
         Name = L["Malygen"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.623, y = 0.256 },
         },
         Recipes = {
            { ID = 16110, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 15933, Item = 12218 },
         },
      },
      {
         Name = L["Bale"],
         Team = "Horde",
         Coordinates = {
            { x = 0.348, y = 0.528 },
         },
         Recipes = {
            { ID = 16110, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 15933, Item = 12218 },
         },
      },
      {
         Name = L["Meilosh"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.66, y = 0.028 },
         },
         Recipes = {
            { ID = 13484, Type = L["Alchemy"], Skill = 275, Cost = 15000, Faction = BFAC["Timbermaw Hold"], Level = 5, Spell = 17561, Item = 7080 },
            { ID = 19202, Type = L["Blacksmithing"], Skill = 290, Cost = 22000, Faction = BFAC["Timbermaw Hold"], Level = 6, Spell = 23628, Item = 19043 },
            { ID = 19204, Type = L["Blacksmithing"], Skill = 300, Cost = 40000, Faction = BFAC["Timbermaw Hold"], Level = 7, Spell = 23629, Item = 19048 },
            { ID = 19445, Type = L["Enchanting"], Skill = 290, Cost = 30000, Faction = BFAC["Timbermaw Hold"], Level = 6, Spell = 23800, Item = 0 },
            { ID = 19326, Type = L["Leatherworking"], Skill = 290, Cost = 22000, Faction = BFAC["Timbermaw Hold"], Level = 6, Spell = 23703, Item = 19044 },
            { ID = 19327, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Timbermaw Hold"], Level = 7, Spell = 23704, Item = 19049 },
            { ID = 20253, Type = L["Leatherworking"], Skill = 275, Cost = 16000, Faction = BFAC["Timbermaw Hold"], Level = 5, Specialty = L["Tribal Leatherworking"], Spell = 19068, Item = 15064 },
            { ID = 20254, Type = L["Leatherworking"], Skill = 285, Cost = 20000, Faction = BFAC["Timbermaw Hold"], Level = 5, Spell = 19080, Item = 15065 },
            { ID = 19215, Type = L["Tailoring"], Skill = 290, Cost = 22000, Faction = BFAC["Timbermaw Hold"], Level = 6, Spell = 23662, Item = 19047 },
            { ID = 19218, Type = L["Tailoring"], Skill = 300, Cost = 40000, Faction = BFAC["Timbermaw Hold"], Level = 7, Spell = 23663, Item = 19050 },
            { ID = 22392, Type = L["Enchanting"], Skill = 290, Cost = 25000, Faction = BFAC["Timbermaw Hold"], Level = 5, Spell = 27837, Item = 0 },
         },
      },
   },
},

-- Gnomeregan
[90] = {
   ZoneName = L["Gnomeregan"],
   IsCity = false,
   Continent = 0,
   MapFile = "Gnomeregan",
   Vendors = {
      {
         Name = L["Namdo Bizzfizzle"],
         Team = "Alliance",
         Recipes = {
            { ID = 14639, Type = L["Engineering"], Skill = 140, Cost = 1500, Spell = 3952, Item = 4381 },
         },
      },
   },
},

-- Teldrassil
[1438] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Teldrassil",
   MapScale = 0.13836131003639,
   MapOffset = { x = 0.36011098024729, y = 0.0394832297921 },
   Vendors = {
      {
         Name = L["Nessa Shadowsong"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.562, y = 0.924 },
         },
         Recipes = {
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
            { ID = 6326, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7752, Item = 787 },
         },
      },
      {
         Name = L["Nyoma"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.57, y = 0.604 },
         },
         Recipes = {
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290 },
            { ID = 6328, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7753, Item = 4592 },
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
   },
},

-- Blasted Lands
[1419] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Blasted-Lands",
   MapScale = 0.09517074521836,
   MapOffset = { x = 0.48982154167011, y = 0.7684651998651 },
   Vendors = {
      {
         Name = L["Nina Lightbrew"],
         Team = "Alliance",
         Coordinates = {
            { x = 0.668, y = 0.182 },
         },
         Recipes = {
            { ID = 9300, Type = L["Alchemy"], Skill = 250, Cost = 10000, Spell = 11477, Item = 9224 },
         },
      },
   },
},

-- Tirisfal Glades
[1420] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Tirisfal-Glades",
   MapScale = 0.12837403412087,
   MapOffset = { x = 0.36837217317549, y = 0.15464954319582 },
   Vendors = {
      {
         Name = L["Abigail Shiel"],
         Team = "Horde",
         Coordinates = {
            { x = 0.607, y = 0.516 },
         },
         Recipes = {
            { ID = 12226, Type = L["Cooking"], Skill = 1, Cost = 25, Spell = 15935, Item = 12224 },
         },
      },
      {
         Name = L["Constance Brisboise"],
         Team = "Horde",
         Coordinates = {
            { x = 0.523, y = 0.554 },
         },
         Recipes = {
            { ID = 6270, Type = L["Tailoring"], Skill = 55, Cost = 200, Spell = 7630, Item = 6240 },
         },
      },
      {
         Name = L["Martine Tramblay"],
         Team = "Horde",
         Coordinates = {
            { x = 0.662, y = 0.592 },
         },
         Recipes = {
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290 },
            { ID = 6326, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7752, Item = 787 },
         },
      },
      {
         Name = L["Werg Thickblade"],
         Team = "Horde",
         Coordinates = {
            { x = 0.833, y = 0.697 },
         },
         Recipes = {
            { ID = 15741, Type = L["Leatherworking"], Skill = 275, Cost = 16000, Specialty = L["Elemental Leatherworking"], Spell = 19067, Item = 15057 },
            { ID = 15725, Type = L["Leatherworking"], Skill = 260, Cost = 12000, Spell = 19049, Item = 15083 },
         },
      },
      {
         Name = L["Argent Quartermaster Hasana"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.832, y = 0.68 },
         },
         Recipes = {
            { ID = 13482, Type = L["Alchemy"], Skill = 275, Cost = 15000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 17559, Item = 7078 },
            { ID = 19203, Type = L["Blacksmithing"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23632, Item = 19051 },
            { ID = 19205, Type = L["Blacksmithing"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23633, Item = 19057 },
            { ID = 19447, Type = L["Enchanting"], Skill = 300, Cost = 60000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23802, Item = 0 },
            { ID = 19446, Type = L["Enchanting"], Skill = 290, Cost = 30000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23801, Item = 0 },
            { ID = 19328, Type = L["Leatherworking"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23705, Item = 19052 },
            { ID = 19329, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23706, Item = 19058 },
            { ID = 19216, Type = L["Tailoring"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23664, Item = 19056 },
            { ID = 19217, Type = L["Tailoring"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23665, Item = 19059 },
            { ID = 19442, Type = L["First Aid"], Skill = 300, Cost = 100000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23787, Item = 19440 },
         },
      },
   },
},

-- Undercity
[1458] = {
   IsCity = true,
   Continent = 1415,
   MapFile = "Undercity",
   MapScale = 0.02727719546939,
   MapOffset = { x = 0.4297399924566, y = 0.23815358517831 },
   Vendors = {
      {
         Name = L["Algernon"],
         Team = "Horde",
         Coordinates = {
            { x = 0.523, y = 0.736 },
         },
         Recipes = {
            { ID = 9301, Type = L["Alchemy"], Skill = 250, Cost = 10000, Spell = 11476, Item = 9264 },
            { ID = 13477, Type = L["Alchemy"], Skill = 260, Cost = 12000, Spell = 17553, Item = 13443 },
         },
      },
      {
         Name = L["Daniel Bartlett"],
         Team = "Horde",
         Coordinates = {
            { x = 0.639, y = 0.384 },
         },
         Recipes = {
            { ID = 16217, Type = L["Enchanting"], Skill = 265, Cost = 12000, Spell = 20017, Item = 0 },
         },
      },
      {
         Name = L["Joseph Moore"],
         Team = "Horde",
         Coordinates = {
            { x = 0.707, y = 0.592 },
         },
         Recipes = {
            { ID = 18949, Type = L["Leatherworking"], Skill = 155, Cost = 2000, Spell = 23399, Item = 18948 },
            { ID = 7451, Type = L["Leatherworking"], Skill = 190, Cost = 2800, Spell = 9202, Item = 7386 },
         },
      },
      {
         Name = L["Lizbeth Cromwell"],
         Team = "Horde",
         Coordinates = {
            { x = 0.813, y = 0.311 },
         },
         Recipes = {
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290 },
            { ID = 6328, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7753, Item = 4592 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
         },
      },
      {
         Name = L["Millie Gregorian"],
         Team = "Horde",
         Coordinates = {
            { x = 0.707, y = 0.296 },
         },
         Recipes = {
            { ID = 6275, Type = L["Tailoring"], Skill = 115, Cost = 800, Spell = 7643, Item = 6264 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
            { ID = 10326, Type = L["Tailoring"], Skill = 250, Cost = 5000, Spell = 12093, Item = 10036 },
            { ID = 10323, Type = L["Tailoring"], Skill = 245, Cost = 4500, Spell = 12089, Item = 10035 },
            { ID = 10321, Type = L["Tailoring"], Skill = 240, Cost = 4500, Spell = 12085, Item = 10034 },
         },
      },
      {
         Name = L["Ronald Burch"],
         Team = "Horde",
         Coordinates = {
            { x = 0.631, y = 0.44 },
         },
         Recipes = {
            { ID = 6330, Type = L["Cooking"], Skill = 100, Cost = 1200, Spell = 7755, Item = 4593 },
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
      {
         Name = L["Thaddeus Webb"],
         Team = "Horde",
         Coordinates = {
            { x = 0.615, y = 0.61 },
         },
         Recipes = {
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300, Spell = 7443, Item = 0 },
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 20744 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
         },
      },
      {
         Name = L["Nardstrum Copperpinch"],
         Team = "Horde",
         Notes = L["Seasonal"],
         Coordinates = {
            { x = 0.686, y = 0.396 },
         },
         Recipes = {
            { ID = 17200, Type = L["Cooking"], Skill = 1, Cost = 25, Spell = 21143, Item = 17197 },
            { ID = 17201, Type = L["Cooking"], Skill = 35, Cost = 240, Spell = 21144, Item = 17198 },
         },
      },
   },
},

-- Silverpine Forest
[1421] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Silverpine-Forest",
   MapScale = 0.11931848806212,
   MapOffset = { x = 0.3565350229009, y = 0.24715695496522 },
   Vendors = {
      {
         Name = L["Andrew Hilbert"],
         Team = "Horde",
         Coordinates = {
            { x = 0.428, y = 0.402 },
         },
         Recipes = {
            { ID = 5786, Type = L["Leatherworking"], Skill = 90, Cost = 550, Spell = 6702, Item = 5780 },
            { ID = 5787, Type = L["Leatherworking"], Skill = 95, Cost = 600, Spell = 6703, Item = 5781 },
            { ID = 6272, Type = L["Tailoring"], Skill = 70, Cost = 300, Spell = 7633, Item = 6242 },
            { ID = 5771, Type = L["Tailoring"], Skill = 70, Cost = 200, Spell = 6686, Item = 5762 },
            { ID = 6892, Type = L["Cooking"], Skill = 40, Cost = 250, Spell = 8607, Item = 6890 },
         },
      },
      {
         Name = L["Killian Sanatha"],
         Team = "Horde",
         Coordinates = {
            { x = 0.33, y = 0.176 },
         },
         Recipes = {
            { ID = 6328, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7753, Item = 4592 },
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
         },
      },
      {
         Name = L["Leo Sarn"],
         Team = "Horde",
         Coordinates = {
            { x = 0.541, y = 0.821 },
         },
         Recipes = {
            { ID = 6349, Type = L["Enchanting"], Skill = 100, Cost = 500, Spell = 7793, Item = 0 },
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300, Spell = 7443, Item = 0 },
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 20744 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
         },
      },
      {
         Name = L["Lilly"],
         Team = "Horde",
         Coordinates = {
            { x = 0.428, y = 0.504 },
         },
         Recipes = {
            { ID = 6346, Type = L["Enchanting"], Skill = 80, Cost = 400, Spell = 7776, Item = 0 },
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300 , Spell = 7443, Item = 0},
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 25124 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
         },
      },
   },
},

-- Swamp of Sorrows
[1435] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Swamp-of-Sorrows",
   MapScale = 0.06516347991404,
   MapOffset = { x = 0.5176979527207, y = 0.72815974701615 },
   Vendors = {
      {
         Name = L["Banalash"],
         Team = "Horde",
         Coordinates = {
            { x = 0.447, y = 0.572 },
         },
         Recipes = {
            { ID = 11223, Type = L["Enchanting"], Skill = 235, Cost = 5800, Spell = 13931, Item = 0 },
            { ID = 12232, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 15863, Item = 12213 },
            { ID = 16111, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 15915, Item = 12216 },
         },
      },
      {
         Name = L["Gharash"],
         Team = "Horde",
         Coordinates = {
            { x = 0.457, y = 0.519 },
         },
         Recipes = {
            { ID = 7995, Type = L["Blacksmithing"], Skill = 215, Cost = 6000, Spell = 9937, Item = 7924 },
         },
      },
      {
         Name = L["Rartar"],
         Team = "Horde",
         Coordinates = {
            { x = 0.449, y = 0.572 },
         },
         Recipes = {
            { ID = 9300, Type = L["Alchemy"], Skill = 250, Cost = 10000, Spell = 11477, Item = 9224 },
         },
      },
      {
         Name = L["Masat T'andr"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.254, y = 0.314 },
         },
         Recipes = {
            { ID = 15726, Type = L["Leatherworking"], Skill = 260, Cost = 12000, Specialty = L["Dragonscale Leatherworking"], Spell = 19050, Item = 15045 },
         },
      },
   },
},

-- Orgrimmar
[1454] = {
   IsCity = true,
   Continent = 1414,
   MapFile = "Orgrimmar",
   MapScale = 0.03811449638057,
   MapOffset = { x = 0.56378554142668, y = 0.42905218646258 },
   Vendors = {
      {
         Name = L["Borya"],
         Team = "Horde",
         Coordinates = {
            { x = 0.629, y = 0.507 },
         },
         Recipes = {
            { ID = 6270, Type = L["Tailoring"], Skill = 55, Cost = 200, Spell = 7630, Item = 6240 },
            { ID = 6274, Type = L["Tailoring"], Skill = 100, Cost = 400, Spell = 7639, Item = 6263 },
            { ID = 10314, Type = L["Tailoring"], Skill = 230, Cost = 4000, Spell = 12075, Item = 10054 },
            { ID = 10317, Type = L["Tailoring"], Skill = 235, Cost = 4000, Spell = 12080, Item = 10055 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
      {
         Name = L["Hagrus"],
         Team = "Horde",
         Coordinates = {
            { x = 0.457, y = 0.457 },
         },
         Recipes = {
            { ID = 5643, Type = L["Alchemy"], Skill = 175, Cost = 2000, Spell = 6618, Item = 5633 },
            { ID = 5640, Type = L["Alchemy"], Skill = 60, Cost = 100, Spell = 6617, Item = 5631 },
         },
      },
      {
         Name = L["Kithas"],
         Team = "Horde",
         Coordinates = {
            { x = 0.533, y = 0.372 },
         },
         Recipes = {
            { ID = 6349, Type = L["Enchanting"], Skill = 100, Cost = 500, Spell = 7793, Item = 0 },
            { ID = 6346, Type = L["Enchanting"], Skill = 80, Cost = 400, Spell = 7776, Item = 0 },
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300, Spell = 7443, Item = 0 },
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 20744 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
         },
      },
      {
         Name = L["Kor'geld"],
         Team = "Horde",
         Coordinates = {
            { x = 0.563, y = 0.337 },
         },
         Recipes = {
            { ID = 13478, Type = L["Alchemy"], Skill = 265, Cost = 13000, Spell = 17554, Item = 13445 },
            { ID = 5642, Type = L["Alchemy"], Skill = 150, Cost = 1800, Spell = 6624, Item = 5634 },
         },
      },
      {
         Name = L["Penney Copperpinch"],
         Team = "Horde",
         Notes = L["Seasonal"],
         Coordinates = {
            { x = 0.529, y = 0.669 },
         },
         Recipes = {
            { ID = 17201, Type = L["Cooking"], Skill = 35, Cost = 240, Spell = 21144, Item = 17198 },
            { ID = 17200, Type = L["Cooking"], Skill = 1, Cost = 25, Spell = 21143, Item = 17197 },
         },
      },
      {
         Name = L["Shankys"],
         Team = "Horde",
         Coordinates = {
            { x = 0.689, y = 0.296 },
         },
         Recipes = {
            { ID = 17062, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 20916, Item = 8364 },
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
            { ID = 6369, Type = L["Cooking"], Skill = 175, Cost = 2200, Spell = 7828, Item = 4594 },
         },
      },
      {
         Name = L["Sovik"],
         Team = "Horde",
         Coordinates = {
            { x = 0.752, y = 0.246 },
         },
         Recipes = {
            { ID = 18647, Type = L["Engineering"], Skill = 150, Cost = 1800, Spell = 23066, Item = 9318 },
            { ID = 16041, Type = L["Engineering"], Skill = 260, Cost = 12000, Spell = 19790, Item = 15993 },
            { ID = 16042, Type = L["Engineering"], Skill = 260, Cost = 12000, Spell = 19791, Item = 15994 },
         },
      },
      {
         Name = L["Sumi"],
         Team = "Horde",
         Coordinates = {
            { x = 0.816, y = 0.226 },
         },
         Recipes = {
            { ID = 12162, Type = L["Blacksmithing"], Skill = 160, Cost = 3000, Spell = 3492, Item = 3849 },
         },
      },
      {
         Name = L["Tamar"],
         Team = "Horde",
         Coordinates = {
            { x = 0.627, y = 0.443 },
         },
         Recipes = {
            { ID = 18731, Type = L["Leatherworking"], Skill = 150, Cost = 2000, Spell = 23190, Item = 18662 },
         },
      },
      {
         Name = L["Xen'to"],
         Team = "Horde",
         Coordinates = {
            { x = 0.574, y = 0.531 },
         },
         Recipes = {
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
   },
},

-- Durotar
[1411] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Durotar",
   MapScale = 0.1436829497008,
   MapOffset = { x = 0.517097827091, y = 0.44802818134926 },
   Vendors = {
      {
         Name = L["Grimtak"],
         Team = "Horde",
         Coordinates = {
            { x = 0.512, y = 0.422 },
         },
         Recipes = {
            { ID = 5483, Type = L["Cooking"], Skill = 20, Cost = 140, Spell = 6413, Item = 5473 },
         },
      },
      {
         Name = L["Zansoa"],
         Team = "Horde",
         Coordinates = {
            { x = 0.566, y = 0.733 },
         },
         Recipes = {
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
            { ID = 6326, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7752, Item = 787},
         },
      },
   },
},

-- Mulgore
[1412] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Mulgore",
   MapScale = 0.13960673216274,
   MapOffset = { x = 0.40811854919226, y = 0.53286226907346 },
   Vendors = {
      {
         Name = L["Harn Longcast"],
         Team = "Horde",
         Coordinates = {
            { x = 0.475, y = 0.548 },
         },
         Recipes = {
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290 },
            { ID = 6328, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7753, Item = 4592 },
         },
      },
      {
         Name = L["Wunna Darkmane"],
         Team = "Horde",
         Coordinates = {
            { x = 0.459, y = 0.584 },
         },
         Recipes = {
            { ID = 5484, Type = L["Cooking"], Skill = 35, Cost = 240, Spell = 6414, Item = 5474 },
         },
      },
   },
},

-- The Barrens
[1413] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "The-Barrens",
   MapScale = 0.27539211944292,
   MapOffset = { x = 0.3924934733345, y = 0.45601063260257 },
   Vendors = {
      {
         Name = L["Hula'mahi"],
         Team = "Horde",
         Coordinates = {
            { x = 0.516, y = 0.296 },
         },
         Recipes = {
            { ID = 6053, Type = L["Alchemy"], Skill = 100, Cost = 800, Spell = 7255, Item = 6051 },
         },
      },
      {
         Name = L["Tari'qa"],
         Team = "Horde",
         Coordinates = {
            { x = 0.518, y = 0.305 },
         },
         Recipes = {
            { ID = 5488, Type = L["Cooking"], Skill = 100, Cost = 400, Spell = 6418, Item = 5479 },
            { ID = 5486, Type = L["Cooking"], Skill = 50, Cost = 440, Spell = 6416, Item = 5477 },
         },
      },
      {
         Name = L["Wrahk"],
         Team = "Horde",
         Coordinates = {
            { x = 0.525, y = 0.314 },
         },
         Recipes = {
            { ID = 6272, Type = L["Tailoring"], Skill = 70, Cost = 300, Spell = 7633, Item = 6242 },
            { ID = 6270, Type = L["Tailoring"], Skill = 55, Cost = 200, Spell = 7630, Item = 6240 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
      {
         Name = L["Yonada"],
         Team = "Horde",
         Coordinates = {
            { x = 0.453, y = 0.595 },
         },
         Recipes = {
            { ID = 6274, Type = L["Tailoring"], Skill = 100, Cost = 400, Spell = 7639, Item = 6263 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
      {
         Name = L["Zargh"],
         Team = "Horde",
         Coordinates = {
            { x = 0.525, y = 0.296 },
         },
         Recipes = {
            { ID = 3735, Type = L["Cooking"], Skill = 125, Cost = 1800, Spell = 3398, Item = 3727 },
         },
      },
      {
         Name = L["Gagsprocket"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.626, y = 0.363 },
         },
         Recipes = {
            { ID = 18648, Type = L["Engineering"], Skill = 150, Cost = 1800, Spell = 23068, Item = 9313 },
         },
      },
      {
         Name = L["Kiknikle"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.418, y = 0.384 },
         },
         Recipes = {
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
         },
      },
      {
         Name = L["Kilxx"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.628, y = 0.382 },
         },
         Recipes = {
            { ID = 6330, Type = L["Cooking"], Skill = 100, Cost = 1200, Spell = 7755, Item = 4593 },
            { ID = 6368, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7827, Item = 5095 },
         },
      },
      {
         Name = L["Ranik"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.619, y = 0.387 },
         },
         Recipes = {
            { ID = 5640, Type = L["Alchemy"], Skill = 60, Cost = 100, Spell = 6617, Item = 5631 },
            { ID = 6272, Type = L["Tailoring"], Skill = 70, Cost = 300, Spell = 7633, Item = 6242 },
            { ID = 6275, Type = L["Tailoring"], Skill = 115, Cost = 800, Spell = 7643, Item = 6264 },
         },
      },
      {
         Name = L["Tarban Hearthgrain"],
         Team = "Horde",
         Coordinates = {
            { x = 0.557, y = 0.317 },
         },
         Recipes = {
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
   },
},

-- Thousand Needles
[1441] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Thousand-Needles",
   MapScale = 0.1195658287792,
   MapOffset = { x = 0.47554411191734, y = 0.6834235638965 },
   Vendors = {
      {
         Name = L["Jandia"],
         Team = "Horde",
         Coordinates = {
            { x = 0.457, y = 0.51 },
         },
         Recipes = {
            { ID = 5973, Type = L["Leatherworking"], Skill = 170, Cost = 650, Spell = 7149, Item = 5963 },
         },
      },
      {
         Name = L["Montarr"],
         Team = "Horde",
         Coordinates = {
            { x = 0.451, y = 0.499 },
         },
         Recipes = {
            { ID = 6068, Type = L["Alchemy"], Skill = 165, Cost = 1500, Spell = 3449, Item = 3824 },
         },
      },
      {
         Name = L["Jinky Twizzlefixxit"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.77, y = 0.762 },
         },
         Recipes = {
            { ID = 7560, Type = L["Engineering"], Skill = 125, Cost = 1200, Spell = 9269, Item = 7506 },
            { ID = 13309, Type = L["Engineering"], Skill = 120, Cost = 1000, Spell = 3939, Item = 4372 },
         },
      },
   },
},

-- Stonetalon Mountains
[1442] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Stonetalon-Mountains",
   MapScale = 0.13272833611061,
   MapOffset = { x = 0.37556627748617, y = 0.40285135292988 },
   Vendors = {
      {
         Name = L["Jeeda"],
         Team = "Horde",
         Coordinates = {
            { x = 0.473, y = 0.616 },
         },
         Recipes = {
            { ID = 6055, Type = L["Alchemy"], Skill = 165, Cost = 1500, Spell = 7257, Item = 6049 },
         },
      },
      {
         Name = L["Kulwia"],
         Team = "Horde",
         Coordinates = {
            { x = 0.455, y = 0.595 },
         },
         Recipes = {
            { ID = 11101, Type = L["Enchanting"], Skill = 140, Cost = 2500, Spell = 13536, Item = 0 },
            { ID = 11039, Type = L["Enchanting"], Skill = 110, Cost = 800, Spell = 13419, Item = 0 },
         },
      },
      {
         Name = L["Veenix"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.582, y = 0.517 },
         },
         Recipes = {
            { ID = 7561, Type = L["Engineering"], Skill = 165, Cost = 2000, Spell = 9273, Item = 7148 },
         },
      },
   },
},

-- Thunder Bluff
[1456] = {
   IsCity = true,
   Continent = 1414,
   MapFile = "Thunder-Bluff",
   MapScale = 0.02836291430658,
   MapOffset = { x = 0.44972878210917, y = 0.55638479002362 },
   Vendors = {
      {
         Name = L["Mahu"],
         Team = "Horde",
         Coordinates = {
            { x = 0.441, y = 0.446 },
         },
         Recipes = {
            { ID = 10311, Type = L["Tailoring"], Skill = 220, Cost = 3000, Spell = 12064, Item = 10052 },
            { ID = 5771, Type = L["Tailoring"], Skill = 70, Cost = 200, Spell = 6686, Item = 5762 },
            { ID = 5772, Type = L["Tailoring"], Skill = 115, Cost = 500, Spell = 6688, Item = 5763 },
            { ID = 10325, Type = L["Tailoring"], Skill = 250, Cost = 10000, Spell = 12091, Item = 10040 },
         },
      },
      {
         Name = L["Naal Mistrunner"],
         Team = "Horde",
         Coordinates = {
            { x = 0.518, y = 0.519 },
         },
         Recipes = {
            { ID = 6330, Type = L["Cooking"], Skill = 100, Cost = 1200, Spell = 7755, Item = 4593 },
            { ID = 6328, Type = L["Cooking"], Skill = 50, Cost = 400, Spell = 7753, Item = 4592 },
            { ID = 21099, Type = L["Cooking"], Skill = 80, Cost = 500, Spell = 25704, Item = 21072 },
            { ID = 21219, Type = L["Cooking"], Skill = 175, Cost = 5000, Spell = 25954, Item = 21217 },
         },
      },
      {
         Name = L["Nata Dawnstrider"],
         Team = "Horde",
         Coordinates = {
            { x = 0.453, y = 0.399 },
         },
         Recipes = {
            { ID = 6349, Type = L["Enchanting"], Skill = 100, Cost = 500, Spell = 7793, Item = 0 },
            { ID = 6377, Type = L["Enchanting"], Skill = 125, Cost = 1000, Spell = 7867, Item = 0 },
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300, Spell = 7443, Item = 0 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 20744 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
         },
      },
      {
         Name = L["Sewa Mistrunner"],
         Team = "Horde",
         Coordinates = {
            { x = 0.561, y = 0.478 },
         },
         Recipes = {
            { ID = 6325, Type = L["Cooking"], Skill = 1, Cost = 40, Spell = 7751, Item = 6290 },
            { ID = 6330, Type = L["Cooking"], Skill = 100, Cost = 1200, Spell = 7755, Item = 4593 },
         },
      },
      {
         Name = L["Seersa Copperpinch"],
         Team = "Horde",
         Notes = L["Seasonal"],
         Coordinates = {
            { x = 0.438, y = 0.589 },
         },
         Recipes = {
            { ID = 17200, Type = L["Cooking"], Skill = 1, Cost = 25, Spell = 21143, Item = 17197 },
            { ID = 17201, Type = L["Cooking"], Skill = 35, Cost = 240, Spell = 21144, Item = 17198 },
         },
      },
   },
},

-- Silithus
[1451] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Silithus",
   MapScale = 0.09468465888932,
   MapOffset = { x = 0.39731975488374, y = 0.76460608512626 },
   Vendors = {
      {
         Name = L["Aendel Windspear"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.626, y = 0.498 },
         },
         Recipes = {
            { ID = 20382, Type = L["Leatherworking"], Skill = 300, Cost = 60000, Faction = BFAC["Cenarion Circle"], Level = 8, Specialty = L["Dragonscale Leatherworking"], Spell = 24703, Item = 20380 },
            { ID = 20506, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Cenarion Circle"], Level = 5, Spell = 24846, Item = 20481 },
            { ID = 20507, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Cenarion Circle"], Level = 6, Spell = 24847, Item = 20480 },
            { ID = 20508, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Cenarion Circle"], Level = 7, Spell = 24848, Item = 20479 },
            { ID = 20509, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Cenarion Circle"], Level = 5, Spell = 24849, Item = 20476 },
            { ID = 20510, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Cenarion Circle"], Level = 6, Spell = 24850, Item = 20477 },
            { ID = 20511, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Cenarion Circle"], Level = 7, Spell = 24851, Item = 20478 },
            { ID = 22769, Type = L["Leatherworking"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 5, Spell = 28474, Item = 22761 },
            { ID = 22770, Type = L["Leatherworking"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 6, Spell = 28473, Item = 22760 },
            { ID = 22771, Type = L["Leatherworking"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 7, Spell = 28472, Item = 22759 },
         },
      },
      {
         Name = L["Zannok Hidepiercer"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.82, y = 0.177 },
         },
         Recipes = {
            { ID = 15724, Type = L["Leatherworking"], Skill = 255, Cost = 12000, Spell = 19048, Item = 15077 },
            { ID = 15762, Type = L["Leatherworking"], Skill = 295, Cost = 25000, Spell = 19088, Item = 15080 },
         },
      },
      {
         Name = L["Kania"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.518, y = 0.396 },
         },
         Recipes = {
            { ID = 20732, Type = L["Enchanting"], Skill = 300, Cost = 100000, Faction = BFAC["Cenarion Circle"], Level = 5, Spell = 25081, Item = 0 },
            { ID = 20733, Type = L["Enchanting"], Skill = 300, Cost = 100000, Faction = BFAC["Cenarion Circle"], Level = 6, Spell = 25082, Item = 0 },
            { ID = 6342, Type = L["Enchanting"], Skill = 20, Cost = 300, Spell = 7443, Item = 0 },
            --{ ID = 20758, Type = L["Enchanting"], Skill = 45, Cost = 125, Spell = 25124, Item = 20744 },
            --{ ID = 20752, Type = L["Enchanting"], Skill = 150, Cost = 750, Spell = 25125, Item = 20745 },
            { ID = 20754, Type = L["Enchanting"], Skill = 250, Cost = 2500, Spell = 25127, Item = 20747 },
            { ID = 20755, Type = L["Enchanting"], Skill = 275, Cost = 5000, Spell = 25128, Item = 20750 },
            --{ ID = 20753, Type = L["Enchanting"], Skill = 200, Cost = 1000, Spell = 25126, Item = 20746 },
            { ID = 22307, Type = L["Tailoring"], Skill = 225, Cost = 6000, Spell = 27568, Item = 22246 },
            { ID = 22308, Type = L["Tailoring"], Skill = 275, Cost = 20000, Spell = 27569, Item = 22248 },
         },
      },
      {
         Name = L["Mishta"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.499, y = 0.363 },
         },
         Recipes = {
            { ID = 22312, Type = L["Tailoring"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 7, Spell = 27725, Item = 22252 },
            { ID = 22310, Type = L["Tailoring"], Skill = 275, Cost = 20000, Faction = BFAC["Cenarion Circle"], Level = 5, Spell = 27724, Item = 22251 },
            { ID = 22772, Type = L["Tailoring"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 5, Spell = 28482, Item = 22758 },
            { ID = 22773, Type = L["Tailoring"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 6, Spell = 28481, Item = 22757 },
            { ID = 22774, Type = L["Tailoring"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 7, Spell = 28480, Item = 22756 },
            { ID = 22683, Type = L["Tailoring"], Skill = 300, Cost = 90000, Faction = BFAC["Cenarion Circle"], Level = 7, Spell = 28210, Item = 22660 },
         },
      },
      {
         Name = L["Vargus"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.512, y = 0.389 },
         },
         Recipes = {
            { ID = 22209, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 5, Spell = 27585, Item = 22197 },
            { ID = 22214, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 6, Spell = 27588, Item = 22195 },
            { ID = 22766, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 7, Spell = 28461, Item = 22762 },
            { ID = 22767, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 6, Spell = 28462, Item = 22763 },
            { ID = 22768, Type = L["Blacksmithing"], Skill = 300, Cost = 50000, Faction = BFAC["Cenarion Circle"], Level = 5, Spell = 28463, Item = 22764 },
         },
      },
   },
},

-- Tanaris
[1446] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Tanaris",
   MapScale = 0.18750104661175,
   MapOffset = { x = 0.46971301480866, y = 0.76120931364891 },
   Vendors = {
      {
         Name = L["Alchemist Pestlezugg"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.509, y = 0.27 },
         },
         Recipes = {
            { ID = 6057, Type = L["Alchemy"], Skill = 190, Cost = 2000, Spell = 7259, Item = 6052 },
            { ID = 9303, Type = L["Alchemy"], Skill = 225, Cost = 8000, Spell = 11459, Item = 9149 },
            { ID = 12958, Type = L["Alchemy"], Skill = 275, Cost = 50000, Spell = 17187, Item = 12360 },
            { ID = 9304, Type = L["Alchemy"], Skill = 225, Cost = 8000, Spell = 11479, Item = 3577 },
            { ID = 9305, Type = L["Alchemy"], Skill = 225, Cost = 8000, Spell = 11480, Item = 6037 },
         },
      },
      {
         Name = L["Dirge Quikcleave"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.526, y = 0.281 },
         },
         Recipes = {
            { ID = 18046, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 22480, Item = 18045 },
         },
      },
      {
         Name = L["Gikkix"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.666, y = 0.22 },
         },
         Recipes = {
            { ID = 13942, Type = L["Cooking"], Skill = 240, Cost = 16000, Spell = 18240, Item = 13928 },
            { ID = 13945, Type = L["Cooking"], Skill = 250, Cost = 20000, Spell = 18243, Item = 13931 },
            { ID = 13946, Type = L["Cooking"], Skill = 250, Cost = 20000, Spell = 18244, Item = 13932 },
            { ID = 13939, Type = L["Cooking"], Skill = 225, Cost = 16000, Spell = 18238, Item = 6887 },
         },
      },
      {
         Name = L["Jabbey"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.67, y = 0.219 },
         },
         Recipes = {
            { ID = 16767, Type = L["Cooking"], Skill = 225, Cost = 3000, Spell = 20626, Item = 16766 },
         },
      },
      {
         Name = L["Krinkle Goodsteel"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.515, y = 0.288 },
         },
         Recipes = {
            { ID = 6047, Type = L["Blacksmithing"], Skill = 190, Cost = 4400, Spell = 3503, Item = 3837 },
         },
      },
      {
         Name = L["Vizzklick"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.51, y = 0.273 },
         },
         Recipes = {
            { ID = 7088, Type = L["Tailoring"], Skill = 205, Cost = 5000, Spell = 8802, Item = 7063 },
            { ID = 21358, Type = L["Tailoring"], Skill = 260, Cost = 12000, Spell = 26085, Item = 21340 },
         },
      },
      {
         Name = L["Blizrik Buckshot"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.518, y = 0.279 },
         },
         Recipes = {
            { ID = 18650, Type = L["Engineering"], Skill = 200, Cost = 5000, Spell = 23069, Item = 18588 },
         },
      },
   },
},

-- Alterac Mountains
[1416] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Alterac-Mountains",
   MapScale = 0.07954563533736,
   MapOffset = { x = 0.43229874660542, y = 0.25425926375262 },
   Vendors = {
      {
         Name = L["Bro'kin"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.382, y = 0.389 },
         },
         Recipes = {
            { ID = 14634, Type = L["Alchemy"], Skill = 200, Cost = 2500, Spell = 3454, Item = 3829 },
         },
      },
      {
         Name = L["Rizz Loosebolt"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.473, y = 0.352 },
         },
         Recipes = {
            { ID = 13308, Type = L["Engineering"], Skill = 155, Cost = 1800, Spell = 3957, Item = 4386 },
         },
      },
   },
},

-- Moonglade
[1450] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Moonglade",
   MapScale = 0.06292695969921,
   MapOffset = { x = 0.50130287793373, y = 0.17560823085517 },
   Vendors = {
      {
         Name = L["Darnall"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.515, y = 0.333 },
         },
         Recipes = {
            { ID = 14488, Type = L["Tailoring"], Skill = 280, Cost = 12000, Spell = 18423, Item = 13864 },
            { ID = 14472, Type = L["Tailoring"], Skill = 265, Cost = 12000, Spell = 18409, Item = 13860 },
            { ID = 14469, Type = L["Tailoring"], Skill = 260, Cost = 12000, Spell = 18406, Item = 13858 },
         },
      },
      {
         Name = L["Lorelae Wintersong"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.482, y = 0.401 },
         },
         Recipes = {
            { ID = 16224, Type = L["Enchanting"], Skill = 285, Cost = 20000, Spell = 20015, Item = 0 },
            { ID = 16243, Type = L["Enchanting"], Skill = 290, Cost = 22000, Spell = 20051, Item = 16207 },
            { ID = 14483, Type = L["Tailoring"], Skill = 275, Cost = 16000, Spell = 18419, Item = 14107 },
         },
      },
   },
},

-- Winterspring
[1452] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Winterspring",
   MapScale = 0.19293573573141,
   MapOffset = { x = 0.47237382938446, y = 0.17390990272233 },
   Vendors = {
      {
         Name = L["Evie Whirlbrew"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.608, y = 0.379 },
         },
         Recipes = {
            { ID = 13480, Type = L["Alchemy"], Skill = 275, Cost = 15000, Spell = 17556, Item = 13446 },
            { ID = 14526, Type = L["Tailoring"], Skill = 250, Cost = 20000, Spell = 18560, Item = 14342 },
         },
      },
      {
         Name = L["Himmik"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.613, y = 0.392 },
         },
         Recipes = {
            { ID = 16110, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 15933, Item = 12218 },
         },
      },
      {
         Name = L["Qia"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.612, y = 0.372 },
         },
         Recipes = {
            { ID = 16221, Type = L["Enchanting"], Skill = 275, Cost = 16000, Spell = 20026, Item = 0 },
            { ID = 15740, Type = L["Leatherworking"], Skill = 275, Cost = 16000, Specialty = L["Tribal Leatherworking"], Spell = 19066, Item = 15071 },
            { ID = 14526, Type = L["Tailoring"], Skill = 250, Cost = 20000, Spell = 18560, Item = 14342 },
            { ID = 14468, Type = L["Tailoring"], Skill = 260, Cost = 12000, Spell = 18405, Item = 14046 },
            { ID = 14481, Type = L["Tailoring"], Skill = 275, Cost = 16000, Spell = 18417, Item = 13863 },
            { ID = 16110, Type = L["Cooking"], Skill = 225, Cost = 12000, Spell = 15933, Item = 12218 },
         },
      },
      {
         Name = L["Xizzer Fizzbolt"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.608, y = 0.386 },
         },
         Recipes = {
            { ID = 16050, Type = L["Engineering"], Skill = 285, Cost = 20000, Spell = 19815, Item = 16006 },
            { ID = 18652, Type = L["Engineering"], Skill = 260, Cost = 12000, Spell = 23077, Item = 18634 },
            { ID = 16046, Type = L["Engineering"], Skill = 275, Cost = 16000, Spell = 19814, Item = 16023 },
            { ID = 18656, Type = L["Engineering"], Skill = 275, Cost = 16000, Spell = 23080, Item = 18594 },
            { ID = 16047, Type = L["Engineering"], Skill = 275, Cost = 16000, Spell = 19795, Item = 16000 },
         },
      },
   },
},

-- Eastern Plaguelands
[1423] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Eastern-Plaguelands",
   MapScale = 0.10996723642661,
   MapOffset = { x = 0.51663255550387, y = 0.15624753972085 },
   Vendors = {
      {
         Name = L["Jase Farlane"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.806, y = 0.576 },
         },
         Recipes = {
            { ID = 15756, Type = L["Leatherworking"], Skill = 290, Cost = 22000, Spell = 19082, Item = 15094 },
         },
      },
      {
         Name = L["Quartermaster Miranda Breechlock"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.816, y = 0.6 },
         },
         Recipes = {
            { ID = 13482, Type = L["Alchemy"], Skill = 275, Cost = 15000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 17559, Item = 7078 },
            { ID = 19203, Type = L["Blacksmithing"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23632, Item = 19051 },
            { ID = 19205, Type = L["Blacksmithing"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23633, Item = 19057 },
            { ID = 19447, Type = L["Enchanting"], Skill = 300, Cost = 60000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23802, Item = 0 },
            { ID = 19446, Type = L["Enchanting"], Skill = 290, Cost = 30000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23801, Item = 0 },
            { ID = 19328, Type = L["Leatherworking"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23705, Item = 19052 },
            { ID = 19329, Type = L["Leatherworking"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23706, Item = 19058 },
            { ID = 19216, Type = L["Tailoring"], Skill = 290, Cost = 22000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23664, Item = 19056 },
            { ID = 19217, Type = L["Tailoring"], Skill = 300, Cost = 40000, Faction = BFAC["Argent Dawn"], Level = 7, Spell = 23665, Item = 19059 },
            { ID = 19442, Type = L["First Aid"], Skill = 300, Cost = 100000, Faction = BFAC["Argent Dawn"], Level = 6, Spell = 23787, Item = 19440 },
         },
      },
   },
},

-- Badlands
[1418] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Badlands",
   MapScale = 0.07066771883566,
   MapOffset = { x = 0.51361415033147, y = 0.56915717993261 },
   Vendors = {
      {
         Name = L["Jazzrik"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.418, y = 0.531 },
         },
         Recipes = {
            { ID = 10858, Type = L["Blacksmithing"], Skill = 155, Cost = 3000, Spell = 3494, Item = 3851 },
         },
      },
   },
},

-- Wailing Caverns
[43] = {
   ZoneName = L["Wailing Caverns"],
   IsCity = false,
   Continent = 0,
   MapFile = "Wailing-Caverns",
   Vendors = {
      {
         Name = L["Kalldan Felmoon"],
         Team = "Neutral",
         Recipes = {
            { ID = 6474, Type = L["Leatherworking"], Skill = 90, Cost = 550, Spell = 7953, Item = 6466 },
            { ID = 6475, Type = L["Leatherworking"], Skill = 105, Cost = 1500, Spell = 7954, Item = 6467 },
         },
      },
   },
},

-- Blackrock Depths
[230] = {
   ZoneName = L["Blackrock Depths"],
   IsCity = false,
   Continent = 0,
   MapFile = "Blackrock-Depths",
   Vendors = {
      {
         Name = L["Lokhtos Darkbargainer"],
         Team = "Neutral",
         Recipes = {
            { ID = 19208, Type = L["Blacksmithing"], Skill = 300, Cost = 70000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Specialty = L["Weaponsmith"], Spell = 23638, Item = 19166 },
            { ID = 19209, Type = L["Blacksmithing"], Skill = 300, Cost = 70000, Faction = BFAC["Thorium Brotherhood"], Level = 8, Specialty = L["Weaponsmith"], Spell = 23639, Item = 19167 },
            { ID = 19211, Type = L["Blacksmithing"], Skill = 300, Cost = 120000, Faction = BFAC["Thorium Brotherhood"], Level = 8, Specialty = L["Master Swordsmith"], Spell = 23652, Item = 19168 },
            { ID = 17051, Type = L["Blacksmithing"], Skill = 295, Cost = 70000, Faction = BFAC["Thorium Brotherhood"], Level = 5, Specialty = L["Armorsmith"], Spell = 20874, Item = 17014 },
            { ID = 17060, Type = L["Blacksmithing"], Skill = 300, Cost = 220000, Faction = BFAC["Thorium Brotherhood"], Level = 8, Specialty = L["Master Axesmith"], Spell = 20897, Item = 17016 },
            { ID = 19207, Type = L["Blacksmithing"], Skill = 300, Cost = 80000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Specialty = L["Armorsmith"], Spell = 23637, Item = 19164 },
            { ID = 19206, Type = L["Blacksmithing"], Skill = 300, Cost = 60000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Specialty = L["Armorsmith"], Spell = 23636, Item = 19148 },
            { ID = 17052, Type = L["Blacksmithing"], Skill = 300, Cost = 180000, Faction = BFAC["Thorium Brotherhood"], Level = 8, Specialty = L["Armorsmith"], Spell = 20876, Item = 17013 },
            { ID = 17059, Type = L["Blacksmithing"], Skill = 300, Cost = 220000, Faction = BFAC["Thorium Brotherhood"], Level = 6, Specialty = L["Master Swordsmith"], Spell = 20890, Item = 17015 },
            { ID = 20040, Type = L["Blacksmithing"], Skill = 300, Cost = 80000, Faction = BFAC["Thorium Brotherhood"], Level = 8, Specialty = L["Armorsmith"], Spell = 24399, Item = 20039 },
            { ID = 19210, Type = L["Blacksmithing"], Skill = 300, Cost = 120000, Faction = BFAC["Thorium Brotherhood"], Level = 8, Specialty = L["Master Hammersmith"], Spell = 23650, Item = 19170 },
            { ID = 17049, Type = L["Blacksmithing"], Skill = 295, Cost = 90000, Faction = BFAC["Thorium Brotherhood"], Level = 6, Specialty = L["Armorsmith"], Spell = 20872, Item = 16989 },
            { ID = 17053, Type = L["Blacksmithing"], Skill = 300, Cost = 200000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Specialty = L["Armorsmith"], Spell = 20873, Item = 16988 },
            { ID = 19212, Type = L["Blacksmithing"], Skill = 300, Cost = 120000, Faction = BFAC["Thorium Brotherhood"], Level = 8, Specialty = L["Master Axesmith"], Spell = 23653, Item = 19169 },
            { ID = 19449, Type = L["Enchanting"], Skill = 300, Cost = 100000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Spell = 23804, Item = 0 },
            { ID = 19448, Type = L["Enchanting"], Skill = 300, Cost = 80000, Faction = BFAC["Thorium Brotherhood"], Level = 6, Spell = 23803, Item = 0 },
            { ID = 19444, Type = L["Enchanting"], Skill = 290, Cost = 30000, Faction = BFAC["Thorium Brotherhood"], Level = 5, Spell = 23799, Item = 0 },
            { ID = 17025, Type = L["Leatherworking"], Skill = 300, Cost = 160000, Faction = BFAC["Thorium Brotherhood"], Level = 6, Specialty = L["Dragonscale Leatherworking"], Spell = 20855, Item = 16984 },
            { ID = 19331, Type = L["Leatherworking"], Skill = 300, Cost = 90000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Specialty = L["Dragonscale Leatherworking"], Spell = 23708, Item = 19157 },
            { ID = 19332, Type = L["Leatherworking"], Skill = 300, Cost = 90000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Spell = 23709, Item = 19162 },
            { ID = 17022, Type = L["Leatherworking"], Skill = 295, Cost = 150000, Faction = BFAC["Thorium Brotherhood"], Level = 5, Specialty = L["Tribal Leatherworking"], Spell = 20853, Item = 16982 },
            { ID = 19330, Type = L["Leatherworking"], Skill = 300, Cost = 60000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Spell = 23707, Item = 19149 },
            { ID = 19333, Type = L["Leatherworking"], Skill = 300, Cost = 90000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Specialty = L["Elemental Leatherworking"], Spell = 23710, Item = 19163 },
            { ID = 17023, Type = L["Leatherworking"], Skill = 300, Cost = 160000, Faction = BFAC["Thorium Brotherhood"], Level = 5, Specialty = L["Elemental Leatherworking"], Spell = 20854, Item = 16983 },
            { ID = 17018, Type = L["Tailoring"], Skill = 300, Cost = 80000, Faction = BFAC["Thorium Brotherhood"], Level = 5, Spell = 20849, Item = 16979 },
            { ID = 19220, Type = L["Tailoring"], Skill = 300, Cost = 90000, Faction = BFAC["Thorium Brotherhood"], Level = 7, Spell = 23667, Item = 19165 },
            { ID = 17017, Type = L["Tailoring"], Skill = 300, Cost = 180000, Faction = BFAC["Thorium Brotherhood"], Level = 6, Spell = 20848, Item = 16980 },
            { ID = 19219, Type = L["Tailoring"], Skill = 300, Cost = 60000, Faction = BFAC["Thorium Brotherhood"], Level = 6, Spell = 23666, Item = 19156 },
            { ID = 20761, Type = L["Alchemy"], Skill = 300, Cost = 120000, Faction = BFAC["Thorium Brotherhood"], Level = 5, Spell = 25146, Item = 7068 },
         },
      },
      {
         Name = L["Plugger Spazzring"],
         Team = "Neutral",
         Recipes = {
            { ID = 13483, Type = L["Alchemy"], Skill = 275, Cost = 15000, Spell = 17560, Item = 7076 },
            { ID = 15759, Type = L["Leatherworking"], Skill = 290, Cost = 22000, Spell = 19058, Item = 15050 },
         },
      },
   },
},

-- Un'Goro Crater
[1449] = {
   IsCity = false,
   Continent = 1414,
   MapFile = "Un-Goro-Crater",
   MapScale = 0.10054401185671,
   MapOffset = { x = 0.4492759445152, y = 0.76494573629405 },
   Vendors = {
      {
         Name = L["Nergal"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.434, y = 0.082 },
         },
         Recipes = {
            { ID = 15758, Type = L["Leatherworking"], Skill = 290, Cost = 22000, Specialty = L["Tribal Leatherworking"], Spell = 19084, Item = 15063 },
         },
      },
   },
},

-- Dire Maul
[429] = {
   ZoneName = L["Dire Maul"],
   IsCity = false,
   Continent = 0,
   MapFile = "Dire-Maul",
   Vendors = {
      {
         Name = L["Shen'dralar Provisioner"],
         Team = "Neutral",
         Recipes = {
            { ID = 18487, Type = L["Tailoring"], Skill = 300, Cost = 40000, Spell = 22902, Item = 18486 },
         },
      },
   },
},

-- Burning Steppes
[1428] = {
   IsCity = false,
   Continent = 1415,
   MapFile = "Burning-Steppes",
   MapScale = 0.08321525646393,
   MapOffset = { x = 0.04621224670174, y = 0.61780780524905 },
   Vendors = {
      {
         Name = L["Yuka Screwspigot"],
         Team = "Neutral",
         Coordinates = {
            { x = 0.656, y = 0.226 },
         },
         Recipes = {
            { ID = 10602, Type = L["Engineering"], Skill = 210, Cost = 3000, Spell = 12597, Item = 10546 },
         },
      },
   },
},

-- Naxxramas, using WRATH ID
[533] = {
   ZoneName = L["Naxxramas"],
   IsCity = false,
   Continent = 0,
   MapFile = "Naxxramas",
   Vendors = {
      {
         Name = L["Master Craftsman Omarion"],
         Team = "Neutral",
         Recipes = {
            { ID = 22705, Type = L["Blacksmithing"], Skill = 300, Cost = 150000, Spell = 28244, Item = 22671 },
            { ID = 22704, Type = L["Blacksmithing"], Skill = 300, Cost = 150000, Spell = 28243, Item = 22670 },
            { ID = 22703, Type = L["Blacksmithing"], Skill = 300, Cost = 150000, Spell = 28242, Item = 22669 },
            { ID = 22695, Type = L["Leatherworking"], Skill = 300, Cost = 150000, Spell = 28221, Item = 22663 },
            { ID = 22694, Type = L["Leatherworking"], Skill = 300, Cost = 150000, Spell = 28220, Item = 22662 },
            { ID = 22692, Type = L["Leatherworking"], Skill = 300, Cost = 150000, Spell = 28219, Item = 22661 },
            { ID = 22698, Type = L["Leatherworking"], Skill = 300, Cost = 150000, Spell = 28224, Item = 22665},
            { ID = 22697, Type = L["Leatherworking"], Skill = 300, Cost = 150000, Spell = 28223, Item = 22666 },
            { ID = 22696, Type = L["Leatherworking"], Skill = 300, Cost = 150000, Spell = 28222, Item = 22664 },
            { ID = 22687, Type = L["Tailoring"], Skill = 300, Cost = 120000, Spell = 28209, Item = 22655 },
            { ID = 22684, Type = L["Tailoring"], Skill = 300, Cost = 120000, Spell = 28205, Item = 22654 },
            { ID = 22686, Type = L["Tailoring"], Skill = 300, Cost = 150000, Spell = 28207, Item = 22652 },
            { ID = 22685, Type = L["Tailoring"], Skill = 300, Cost = 120000, Spell = 28208, Item = 22658 },
         },
      },
   },
},

}

RecipeRadar_MaxVendorsByLocation = 20
RecipeRadar_MaxVendorCoordinates = 5

