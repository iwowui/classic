-- LibTourist Classic: Mining Nodes library

local addonName, nameSpace = ...
local GAME_LOCALE = GetLocale()

local function trace(msg)
--	DEFAULT_CHAT_FRAME:AddMessage(msg)
end

-- Pulled from GatherMate2 Classic
local translations = {
	koKR = {
		["Rich Thorium Vein"] = "풍부한 토륨 광맥",
		["Ooze Covered Gold Vein"] = "진흙으로 덮인 금 광맥",
		["Tin Vein"] = "주석 광맥",
		["Copper Vein"] = "구리 광맥",
		["Ooze Covered Rich Thorium Vein"] = "진흙으로 덮인 풍부한 토륨 광맥",
		["Truesilver Deposit"] = "진은 광맥",
		["Dark Iron Deposit"] = "검은무쇠 광맥",
		["Silver Vein"] = "은 광맥",
		["Iron Deposit"] = "철 광맥",
		["Ooze Covered Mithril Deposit"] = "진흙으로 덮인 미스릴 광맥",
		["Ooze Covered Silver Vein"] = "진흙으로 덮인 은 광맥",
		["Gold Vein"] = "금 광맥",
		["Ooze Covered Thorium Vein"] = "진흙으로 덮인 토륨 광맥",
		["Small Thorium Vein"] = "작은 토륨 광맥",
		["Mithril Deposit"] = "미스릴 광맥",
		["Copper Ore"] = "구리 광석",
		["Tin Ore"] = "주석 광석",
		["Silver Ore"] = "은 광석",
		["Iron Ore"] = "철광석",
		["Gold Ore"] = "금 광석",
		["Mithril Ore"] = "미스릴 광석",
		["Truesilver Ore"] = "진은 광석",
		["Dark Iron Ore"] = "검은 무쇠 광석",
		["Thorium Ore"] = "토륨 광석",
	},
	deDE = {
		["Rich Thorium Vein"] = "Reiches Thoriumvorkommen",
		["Ooze Covered Gold Vein"] = "Schlammbedecktes Goldvorkommen",
		["Tin Vein"] = "Zinnvorkommen",
		["Copper Vein"] = "Kupfervorkommen",
		["Ooze Covered Rich Thorium Vein"] = "Schlammbedecktes reiches Thoriumvorkommen",
		["Truesilver Deposit"] = "Echtsilbervorkommen",
		["Dark Iron Deposit"] = "Dunkeleisenablagerung",
		["Silver Vein"] = "Silbervorkommen",
		["Iron Deposit"] = "Eisenvorkommen",
		["Ooze Covered Mithril Deposit"] = "Schlammbedeckte Mithrilablagerung",
		["Ooze Covered Silver Vein"] = "Schlammbedecktes Silbervorkommen",
		["Gold Vein"] = "Goldvorkommen",
		["Ooze Covered Thorium Vein"] = "Schlammbedeckte Thoriumader",
		["Small Thorium Vein"] = "Kleines Thoriumvorkommen",
		["Mithril Deposit"] = "Mithrilablagerung",
		["Copper Ore"] = "Kupfererz",
		["Tin Ore"] = "Zinnerz",
		["Silver Ore"] = "Silbererz",
		["Iron Ore"] = "Eisenerz",
		["Gold Ore"] = "Golderz",
		["Mithril Ore"] = "Mithrilerz",
		["Truesilver Ore"] = "Echtsilbererz",
		["Dark Iron Ore"] = "Dunkeleisenerz",
		["Thorium Ore"] = "Thoriumerz",
	},
	frFR = {
		["Rich Thorium Vein"] = "Riche filon de thorium",
		["Ooze Covered Gold Vein"] = "Filon d'or couvert de limon",
		["Tin Vein"] = "Filon d'étain",
		["Copper Vein"] = "Filon de cuivre",
		["Ooze Covered Rich Thorium Vein"] = "Riche filon de thorium couvert de limon",
		["Truesilver Deposit"] = "Gisement de vrai-argent",
		["Dark Iron Deposit"] = "Gisement de sombrefer",
		["Silver Vein"] = "Filon d'argent",
		["Iron Deposit"] = "Gisement de fer",
		["Ooze Covered Mithril Deposit"] = "Gisement de mithril couvert de vase",
		["Ooze Covered Silver Vein"] = "Filon d'argent couvert de limon",
		["Gold Vein"] = "Filon d'or",
		["Ooze Covered Thorium Vein"] = "Filon de thorium couvert de limon",
		["Small Thorium Vein"] = "Petit filon de thorium",
		["Mithril Deposit"] = "Gisement de mithril",
		["Copper Ore"] = "Minerai de cuivre",
		["Tin Ore"] = "Minerai d'étain",
		["Silver Ore"] = "Minerai d'argent",
		["Iron Ore"] = "Minerai de fer",
		["Gold Ore"] = "Minerai d'or",
		["Mithril Ore"] = "Minerai de mithril",
		["Truesilver Ore"] = "Minerai de vrai-argent",
		["Dark Iron Ore"] = "Minerai de sombrefer",
		["Thorium Ore"] = "Minerai de thorium",
	},
	esES = {
		["Rich Thorium Vein"] = "Filón de torio enriquecido",
		["Ooze Covered Gold Vein"] = "Filón de oro cubierto de moco",
		["Tin Vein"] = "Filón de estaño",
		["Copper Vein"] = "Filón de cobre",
		["Ooze Covered Rich Thorium Vein"] = "Filón de torio enriquecido cubierto de moco",
		["Truesilver Deposit"] = "Depósito de veraplata",
		["Dark Iron Deposit"] = "Depósito de hierro negro",
		["Silver Vein"] = "Filón de plata",
		["Iron Deposit"] = "Depósito de hierro",
		["Ooze Covered Mithril Deposit"] = "Filón de mitril cubierto de moco",
		["Ooze Covered Silver Vein"] = "Filón de plata cubierto de moco",
		["Gold Vein"] = "Filón de oro",
		["Ooze Covered Thorium Vein"] = "Filón de torio cubierto de moco",
		["Small Thorium Vein"] = "Filón pequeño de torio",
		["Mithril Deposit"] = "Depósito de mitril",
		["Copper Ore"] = "Mineral de cobre",
		["Tin Ore"] = "Mineral de estaño",
		["Silver Ore"] = "Mineral de plata",
		["Iron Ore"] = "Mineral de hierro negro",
		["Gold Ore"] = "Mineral de oro",
		["Mithril Ore"] = "Mineral de mitril",
		["Truesilver Ore"] = "Mineral de veraplata",
		["Dark Iron Ore"] = "Mineral de hierro negro",
		["Thorium Ore"] = "Mineral de torio",
	},
	zhTW = {
		["Rich Thorium Vein"] = "富瑟銀礦脈",
		["Ooze Covered Gold Vein"] = "軟泥覆蓋的金礦脈",
		["Tin Vein"] = "錫礦脈",
		["Copper Vein"] = "銅礦脈",
		["Ooze Covered Rich Thorium Vein"] = "軟泥覆蓋的富瑟銀礦脈",
		["Truesilver Deposit"] = "真銀礦床",
		["Dark Iron Deposit"] = "黑鐵礦床",
		["Silver Vein"] = "銀礦脈",
		["Iron Deposit"] = "鐵礦床",
		["Ooze Covered Mithril Deposit"] = "軟泥覆蓋的秘銀礦床",
		["Ooze Covered Silver Vein"] = "軟泥覆蓋的銀礦脈",
		["Gold Vein"] = "金礦脈",
		["Ooze Covered Thorium Vein"] = "軟泥覆蓋的瑟銀礦脈",
		["Small Thorium Vein"] = "瑟銀礦脈",
		["Mithril Deposit"] = "秘銀礦床"	,
		["Copper Ore"] = "銅礦",
		["Tin Ore"] = "錫礦",
		["Silver Ore"] = "銀礦石",
		["Iron Ore"] = "鐵礦",
		["Gold Ore"] = "金礦",
		["Mithril Ore"] = "秘銀礦石",
		["Truesilver Ore"] = "真銀礦石",
		["Dark Iron Ore"] = "黑鐵礦",
		["Thorium Ore"] = "釷礦石",
	},
	zhCN = {
		["Rich Thorium Vein"] = "富瑟银矿",
		["Ooze Covered Gold Vein"] = "软泥覆盖的金矿脉",
		["Tin Vein"] = "锡矿",
		["Copper Vein"] = "铜矿",
		["Ooze Covered Rich Thorium Vein"] = "软泥覆盖的富瑟银矿脉",
		["Truesilver Deposit"] = "真银矿石",
		["Dark Iron Deposit"] = "黑铁矿脉",
		["Silver Vein"] = "银矿",
		["Iron Deposit"] = "铁矿石",
		["Ooze Covered Mithril Deposit"] = "软泥覆盖的秘银矿脉",
		["Ooze Covered Silver Vein"] = "软泥覆盖的银矿脉",
		["Gold Vein"] = "金矿石",
		["Ooze Covered Thorium Vein"] = "软泥覆盖的瑟银矿脉",
		["Small Thorium Vein"] = "瑟银矿脉",
		["Mithril Deposit"] = "秘银矿脉",
		["Copper Ore"] = "铜矿",
		["Tin Ore"] = "锡矿",
		["Silver Ore"] = "银矿",
		["Iron Ore"] = "铁矿",
		["Gold Ore"] = "金矿",
		["Mithril Ore"] = "秘银矿",
		["Truesilver Ore"] = "真银矿",
		["Dark Iron Ore"] = "黑铁矿",
		["Thorium Ore"] = "钍矿",
	},
	ruRU = {
		["Rich Thorium Vein"] = "Богатая ториевая жила",
		["Ooze Covered Gold Vein"] = "Покрытая слизью золотая жила",
		["Tin Vein"] = "Оловянная жила",
		["Copper Vein"] = "Медная жила",
		["Ooze Covered Rich Thorium Vein"] = "Покрытая слизью богатая ториевая жила",
		["Truesilver Deposit"] = "Залежи истинного серебра",
		["Dark Iron Deposit"] = "Залежи черного железа",
		["Silver Vein"] = "Серебряная жила",
		["Iron Deposit"] = "Залежи железа",
		["Ooze Covered Mithril Deposit"] = "Покрытые слизью мифриловые залежи",
		["Ooze Covered Silver Vein"] = "Покрытая слизью серебрянная жила",
		["Gold Vein"] = "Золотая жила",
		["Ooze Covered Thorium Vein"] = "Покрытая слизью ториевая жила",
		["Small Thorium Vein"] = "Малая ториевая жила",
		["Mithril Deposit"] = "Мифриловые залежи",
		["Copper Ore"] = "медная руда",
		["Tin Ore"] = "Оловянная руда",
		["Silver Ore"] = "серебряная руда",
		["Iron Ore"] = "железная руда",
		["Gold Ore"] = "Золотая руда",
		["Mithril Ore"] = "мифриловая руда",
		["Truesilver Ore"] = "истинно серебряная руда",
		["Dark Iron Ore"] = "темная железная руда",
		["Thorium Ore"] = "ториевая руда",
	},
}

local function L(tag)
	if translations[GAME_LOCALE] then
		return translations[GAME_LOCALE][tag] or tag
	else
		return tag
	end
end

-- Most node types are represented by multiple object IDs
-- This table maps these IDs to the most common ones
local miningNodeIDMapping = {
	[2055] = 1731,   -- Copper 
	[3763] = 1731,
	[103713] = 1731,
	[103714] = 1731,
	[2054] = 1732,    -- Tin 
	[3764] = 1732,
	[103709] = 1732,
	[105569] = 1733,  -- Silver
	[150080] = 1734,  -- Gold
	[181109] = 1734,
	[103710] = 1735,  -- Iron
	[103712] = 1735,
	[150079] = 2040,  -- Mithril
	[176645] = 2040,
	[150081] = 2047,  -- Truesilver
	[181108] = 2047,
	[150082] = 324,   -- Small Thorium
	[176643] = 324,
	[176644] = 175404,  -- Rich Thorium
}


local miningNodes = {
	[1731] = {
		nodeName = L("Copper Vein"),
		nodeObjectID = 1731,
		oreName = L("Copper Ore"),
		oreItemID = 2770,
		minLevel = 1,
		zones = {
			[1440] = 41,		-- Ashenvale
			[1439] = 107,		-- Darkshore
			[1443] = 12,		-- Desolace
			[1426] = 159,		-- Dun Morogh
			[1411] = 149,		-- Durotar
			[1431] = 42,		-- Duskwood
			[1429] = 149,		-- Elwynn Forest
			[1424] = 31,		-- Hillsbrad Foothills
			[1432] = 120,		-- Loch Modan
			[1412] = 76,		-- Mulgore
			[1433] = 88,		-- Redridge Mountains
			[1421] = 59,		-- Silverpine Forest
			[1442] = 48,		-- Stonetalon Mountains
			[1413] = 209,		-- The Barrens
			[1441] = 40,		-- Thousand Needles
			[1420] = 81,		-- Tirisfal Glades
			[1436] = 94,		-- Westfall
			[1437] = 28,		-- Wetlands
		},
	},
	[1732] = {
		nodeName = L("Tin Vein"),
		nodeObjectID = 1732,
		oreName = L("Tin Ore"),
		oreItemID = 2771,
		minLevel = 65,
		zones = {
			[1416] = 10,		-- Alterac Mountains
			[1417] = 39,		-- Arathi Highlands
			[1440] = 50,		-- Ashenvale
			[1439] = 47,		-- Darkshore
			[1443] = 45,		-- Desolace
			[1431] = 52,		-- Duskwood
			[1445] = 4,			-- Dustwallow Marsh
			[1424] = 88,		-- Hillsbrad Foothills
			[1432] = 53,		-- Loch Modan
			[1433] = 76,		-- Redridge Mountains
			[1421] = 26,		-- Silverpine Forest
			[1442] = 57,		-- Stonetalon Mountains
			[1434] = 15,		-- Stranglethorn Vale
			[1413] = 124,		-- The Barrens
			[1441] = 68,		-- Thousand Needles
			[1436] = 37,		-- Westfall
			[1437] = 53,		-- Wetlands
		},
	},
	[1733] = {
		nodeName = L("Silver Vein"),
		nodeObjectID = 1733,
		oreName = L("Silver Ore"),
		oreItemID = 2775,
		minLevel = 75,
		zones = {
			[1416] = 4,			-- Alterac Mountains
			[1417] = 18,		-- Arathi Highlands
			[1418] = 2,			-- Badlands
			[1439] = 1,			-- Darkshore
			[1443] = 3,			-- Desolace
			[1431] = 7,			-- Duskwood
			[1444] = 1,			-- Feralas
			[1424] = 17,		-- Hillsbrad Foothills
			[1432] = 3,			-- Loch Modan
			[1433] = 7,			-- Redridge Mountains
			[1421] = 2,			-- Silverpine Forest
			[1442] = 7,			-- Stonetalon Mountains
			[1434] = 5,			-- Stranglethorn Vale
			[1413] = 24,		-- The Barrens
			[1441] = 7,			-- Thousand Needles
			[1436] = 1,			-- Westfall
			[1437] = 7,			-- Wetlands
		},
	},
	[73940] = {
		nodeName = L("Ooze Covered Silver Vein"),
		nodeObjectID = 73940,
		oreName = L("Silver Ore"),
		oreItemID = 2775,
		minLevel = 75,
		zones = {
			[1441] = 4,			-- Thousand Needles
		},
	},
	[1735] = {
		nodeName = L("Iron Deposit"),
		nodeObjectID = 1735,
		oreName = L("Iron Ore"),
		oreItemID = 2772,
		minLevel = 125,
		zones = {
			[1416] = 73,		-- Alterac Mountains
			[1417] = 124,		-- Arathi Highlands
			[1440] = 21,		-- Ashenvale
			[1418] = 70,		-- Badlands
			[1443] = 92,		-- Desolace
			[1431] = 26,		-- Duskwood
			[1445] = 28,		-- Dustwallow Marsh
			[1444] = 16,		-- Feralas
			[1424] = 36,		-- Hillsbrad Foothills
			[1427] = 12,		-- Searing Gorge
			[1442] = 14,		-- Stonetalon Mountains
			[1434] = 97,		-- Stranglethorn Vale
			[1435] = 32,		-- Swamp of Sorrows
			[1446] = 32,		-- Tanaris
			[1425] = 12,		-- The Hinterlands
			[1441] = 102,		-- Thousand Needles
			[1437] = 14,		-- Wetlands
		},
	},
	[1734] = {
		nodeName = L("Gold Vein"),
		nodeObjectID = 1734,
		oreName = L("Gold Ore"),
		oreItemID = 2776,
		minLevel = 155,
		zones = {
			[1416] = 2,			-- Alterac Mountains
			[1417] = 4,			-- Arathi Highlands
			[1418] = 5,			-- Badlands
			[1419] = 1,			-- Blasted Lands
			[1443] = 3,			-- Desolace
			[1444] = 12,		-- Feralas
			[1424] = 1,			-- Hillsbrad Foothills
			[1434] = 3,			-- Stranglethorn Vale
			[1435] = 1,			-- Swamp of Sorrows
			[1446] = 2,			-- Tanaris
			[1425] = 2,			-- The Hinterlands
			[1441] = 1,			-- Thousand Needles
			[1452] = 1,			-- Winterspring
		},
	},
	[73941] = {
		nodeName = L("Ooze Covered Gold Vein"),
		nodeObjectID = 73941,
		oreName = L("Gold Ore"),
		oreItemID = 2776,
		minLevel = 155,
		zones = {
			[1444] = 10,		-- Feralas
			[1441] = 4,			-- Thousand Needles
		},
	},
	[2040] = {
		nodeName = L("Mithril Deposit"),
		nodeObjectID = 2040,
		oreName = L("Mithril Ore"),
		oreItemID = 3858,
		minLevel = 175,
		zones = {
			[1416] = 23,		-- Alterac Mountains
			[1417] = 38,		-- Arathi Highlands
			[1447] = 39,		-- Azshara
			[1418] = 62,		-- Badlands
			[1419] = 22,		-- Blasted Lands
			[1428] = 34,		-- Burning Steppes
			[1443] = 48,		-- Desolace
			[1445] = 21,		-- Dustwallow Marsh
			[1423] = 13,		-- Eastern Plaguelands
			[1448] = 44,		-- Felwood
			[1444] = 41,		-- Feralas
			[1424] = 6,			-- Hillsbrad Foothills
			[1427] = 46,		-- Searing Gorge
			[1451] = 21,		-- Silithus
			[1442] = 15,		-- Stonetalon Mountains
			[1434] = 48,		-- Stranglethorn Vale
			[1435] = 14,		-- Swamp of Sorrows
			[1446] = 73,		-- Tanaris
			[1425] = 85,		-- The Hinterlands
			[1441] = 5,			-- Thousand Needles
			[1449] = 20,		-- Un'Goro Crater
			[1422] = 32,		-- Western Plaguelands
			[1452] = 25,		-- Winterspring
		},
	},
	[123310] = {
		nodeName = L("Ooze Covered Mithril Deposit"),
		nodeObjectID = 123310,
		oreName = L("Mithril Ore"),
		oreItemID = 3858,
		minLevel = 175,
		zones = {
			[1444] = 13,		-- Feralas
			[1441] = 8,			-- Thousand Needles
		},
	},
	[2047] = {
		nodeName = L("Truesilver Deposit"),
		nodeObjectID = 2047,
		oreName = L("Truesilver Ore"),
		oreItemID = 7911,
		minLevel = 230,
		zones = {
			[1416] = 1,			-- Alterac Mountains
			[1418] = 1,			-- Badlands
			[1419] = 5,			-- Blasted Lands
			[1423] = 1,			-- Eastern Plaguelands
			[1448] = 22,		-- Felwood
			[1424] = 1,			-- Hillsbrad Foothills
			[1427] = 2,			-- Searing Gorge
			[1434] = 2,			-- Stranglethorn Vale
			[1446] = 5,			-- Tanaris
			[1425] = 11,		-- The Hinterlands
			[1449] = 2,			-- Un'Goro Crater
			[1422] = 1,			-- Western Plaguelands
			[1452] = 1,			-- Winterspring
		},
	},
	[165658] = {
		nodeName = L("Dark Iron Deposit"),
		nodeObjectID = 165658,
		oreName = L("Dark Iron Ore"),
		oreItemID = 11370,
		minLevel = 230,
		zones = {
			[1428] = 25,		-- Burning Steppes
			[1427] = 25,		-- Searing Gorge
		},
	},
	[324] = {
		nodeName = L("Small Thorium Vein"),
		nodeObjectID = 324,
		oreName = L("Thorium Ore"),
		oreItemID = 10620,
		minLevel = 245,
		zones = {
			[1419] = 39,		-- Blasted Lands
			[1428] = 35,		-- Burning Steppes
			[1423] = 28,		-- Eastern Plaguelands
			[1448] = 42,		-- Felwood
			[1444] = 6,			-- Feralas
			[1427] = 15,		-- Searing Gorge
			[1451] = 26,		-- Silithus
			[1446] = 14,		-- Tanaris
			[1425] = 10,		-- The Hinterlands
			[1449] = 50,		-- Un'Goro Crater
			[1422] = 26,		-- Western Plaguelands
			[1452] = 40,		-- Winterspring
		},
	},
	[123848] = {
		nodeName = L("Ooze Covered Thorium Vein"),
		nodeObjectID = 123848,
		oreName = L("Thorium Ore"),
		oreItemID = 10620,
		minLevel = 245,
		zones = {
			[1444] = 3,			-- Feralas
			[1449] = 13,		-- Un'Goro Crater
		},
	},
	[175404] = {
		nodeName = L("Rich Thorium Vein"),
		nodeObjectID = 175404,
		oreName = L("Thorium Ore"),
		oreItemID = 10620,
		minLevel = 275,
		zones = {
			[1447] = 34,		-- Azshara
			[1428] = 26,		-- Burning Steppes
			[1423] = 45,		-- Eastern Plaguelands
			[1449] = 20,		-- Un'Goro Crater
			[1422] = 11,		-- Western Plaguelands
			[1452] = 62,		-- Winterspring
		},
	},
	[177388] = {
		nodeName = L("Ooze Covered Rich Thorium Vein"),
		nodeObjectID = 177388,
		oreName = L("Thorium Ore"),
		oreItemID = 10620,
		minLevel = 275,
		zones = {
			[1451] = 71,		-- Silithus
		},
	},
}


local miningNodesByZone = {
	-- Alterac Mountains
	[1416] = {
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 10,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 4,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 73,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 2,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 23,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 1,
		},
	},
	-- Arathi Highlands
	[1417] = {
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 39,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 18,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 124,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 4,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 38,
		},
	},
	-- Ashenvale
	[1440] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 41,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 50,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 21,
		},
	},
	-- Azshara
	[1447] = {
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 39,
		},
		[175404] = {
			nodeName = L("Rich Thorium Vein"),
			nodeObjectID = 175404,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 275,
			numNodes = 34,
		},
	},
	-- Badlands
	[1418] = {
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 2,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 70,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 5,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 62,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 1,
		},
	},
	-- Blasted Lands
	[1419] = {
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 1,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 22,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 5,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 39,
		},
	},
	-- Burning Steppes
	[1428] = {
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 34,
		},
		[165658] = {
			nodeName = L("Dark Iron Deposit"),
			nodeObjectID = 165658,
			oreName = L("Dark Iron Ore"),
			oreItemID = 11370,
			minLevel = 230,
			numNodes = 25,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 35,
		},
		[175404] = {
			nodeName = L("Rich Thorium Vein"),
			nodeObjectID = 175404,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 275,
			numNodes = 26,
		},
	},
	-- Darkshore
	[1439] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 107,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 47,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 1,
		},
	},
	-- Desolace
	[1443] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 12,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 45,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 3,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 92,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 3,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 48,
		},
	},
	-- Dun Morogh
	[1426] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 159,
		},
	},
	-- Durotar
	[1411] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 149,
		},
	},
	-- Duskwood
	[1431] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 42,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 52,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 7,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 26,
		},
	},
	-- Dustwallow Marsh
	[1445] = {
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 4,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 28,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 21,
		},
	},
	-- Eastern Plaguelands
	[1423] = {
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 13,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 1,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 28,
		},
		[175404] = {
			nodeName = L("Rich Thorium Vein"),
			nodeObjectID = 175404,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 275,
			numNodes = 45,
		},
	},
	-- Elwynn Forest
	[1429] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 149,
		},
	},
	-- Felwood
	[1448] = {
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 44,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 22,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 42,
		},
	},
	-- Feralas
	[1444] = {
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 1,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 16,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 12,
		},
		[73941] = {
			nodeName = L("Ooze Covered Gold Vein"),
			nodeObjectID = 73941,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 10,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 41,
		},
		[123310] = {
			nodeName = L("Ooze Covered Mithril Deposit"),
			nodeObjectID = 123310,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 13,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 6,
		},
		[123848] = {
			nodeName = L("Ooze Covered Thorium Vein"),
			nodeObjectID = 123848,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 3,
		},
	},
	-- Hillsbrad Foothills
	[1424] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 31,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 88,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 17,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 36,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 1,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 6,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 1,
		},
	},
	-- Loch Modan
	[1432] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 120,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 53,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 3,
		},
	},
	-- Mulgore
	[1412] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 76,
		},
	},
	-- Redridge Mountains
	[1433] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 88,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 76,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 7,
		},
	},
	-- Searing Gorge
	[1427] = {
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 12,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 46,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 2,
		},
		[165658] = {
			nodeName = L("Dark Iron Deposit"),
			nodeObjectID = 165658,
			oreName = L("Dark Iron Ore"),
			oreItemID = 11370,
			minLevel = 230,
			numNodes = 25,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 15,
		},
	},
	-- Silithus
	[1451] = {
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 21,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 26,
		},
		[177388] = {
			nodeName = L("Ooze Covered Rich Thorium Vein"),
			nodeObjectID = 177388,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 275,
			numNodes = 71,
		},
	},
	-- Silverpine Forest
	[1421] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 59,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 26,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 2,
		},
	},
	-- Stonetalon Mountains
	[1442] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 48,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 57,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 7,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 14,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 15,
		},
	},
	-- Stranglethorn Vale
	[1434] = {
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 15,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 5,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 97,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 3,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 48,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 2,
		},
	},
	-- Swamp of Sorrows
	[1435] = {
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 32,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 1,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 14,
		},
	},
	-- Tanaris
	[1446] = {
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 32,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 2,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 73,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 5,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 14,
		},
	},
	-- The Barrens
	[1413] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 209,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 124,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 24,
		},
	},
	-- The Hinterlands
	[1425] = {
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 12,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 2,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 85,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 11,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 10,
		},
	},
	-- Thousand Needles
	[1441] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 40,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 68,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 7,
		},
		[73940] = {
			nodeName = L("Ooze Covered Silver Vein"),
			nodeObjectID = 73940,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 4,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 102,
		},
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 1,
		},
		[73941] = {
			nodeName = L("Ooze Covered Gold Vein"),
			nodeObjectID = 73941,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 4,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 5,
		},
		[123310] = {
			nodeName = L("Ooze Covered Mithril Deposit"),
			nodeObjectID = 123310,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 8,
		},
	},
	-- Tirisfal Glades
	[1420] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 81,
		},
	},
	-- Un'Goro Crater
	[1449] = {
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 20,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 2,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 50,
		},
		[123848] = {
			nodeName = L("Ooze Covered Thorium Vein"),
			nodeObjectID = 123848,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 13,
		},
		[175404] = {
			nodeName = L("Rich Thorium Vein"),
			nodeObjectID = 175404,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 275,
			numNodes = 20,
		},
	},
	-- Western Plaguelands
	[1422] = {
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 32,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 1,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 26,
		},
		[175404] = {
			nodeName = L("Rich Thorium Vein"),
			nodeObjectID = 175404,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 275,
			numNodes = 11,
		},
	},
	-- Westfall
	[1436] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 94,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 37,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 1,
		},
	},
	-- Wetlands
	[1437] = {
		[1731] = {
			nodeName = L("Copper Vein"),
			nodeObjectID = 1731,
			oreName = L("Copper Ore"),
			oreItemID = 2770,
			minLevel = 1,
			numNodes = 28,
		},
		[1732] = {
			nodeName = L("Tin Vein"),
			nodeObjectID = 1732,
			oreName = L("Tin Ore"),
			oreItemID = 2771,
			minLevel = 65,
			numNodes = 53,
		},
		[1733] = {
			nodeName = L("Silver Vein"),
			nodeObjectID = 1733,
			oreName = L("Silver Ore"),
			oreItemID = 2775,
			minLevel = 75,
			numNodes = 7,
		},
		[1735] = {
			nodeName = L("Iron Deposit"),
			nodeObjectID = 1735,
			oreName = L("Iron Ore"),
			oreItemID = 2772,
			minLevel = 125,
			numNodes = 14,
		},
	},
	-- Winterspring
	[1452] = {
		[1734] = {
			nodeName = L("Gold Vein"),
			nodeObjectID = 1734,
			oreName = L("Gold Ore"),
			oreItemID = 2776,
			minLevel = 155,
			numNodes = 1,
		},
		[2040] = {
			nodeName = L("Mithril Deposit"),
			nodeObjectID = 2040,
			oreName = L("Mithril Ore"),
			oreItemID = 3858,
			minLevel = 175,
			numNodes = 25,
		},
		[2047] = {
			nodeName = L("Truesilver Deposit"),
			nodeObjectID = 2047,
			oreName = L("Truesilver Ore"),
			oreItemID = 7911,
			minLevel = 230,
			numNodes = 1,
		},
		[324] = {
			nodeName = L("Small Thorium Vein"),
			nodeObjectID = 324,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 245,
			numNodes = 40,
		},
		[175404] = {
			nodeName = L("Rich Thorium Vein"),
			nodeObjectID = 175404,
			oreName = L("Thorium Ore"),
			oreItemID = 10620,
			minLevel = 275,
			numNodes = 62,
		},
	},
}






if not nameSpace.LibTouristClassic then
	nameSpace.LibTouristClassic = {}
end
nameSpace.LibTouristClassic.miningNodes = miningNodes
nameSpace.LibTouristClassic.miningNodesByZone = miningNodesByZone
nameSpace.LibTouristClassic.miningNodeIDMapping = miningNodeIDMapping
trace("Tourist: Mining library loaded by "..tostring(addonName))

