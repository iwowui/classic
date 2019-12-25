-- LibTourist Classic: Herbs library

local addonName, nameSpace = ...
local GAME_LOCALE = GetLocale()

local function trace(msg)
--	DEFAULT_CHAT_FRAME:AddMessage(msg)
end

-- Thanks to GatherMate2 Classic
local translations = {
	koKR = {
		["Peacebloom"] = "평온초",
		["Silverleaf"] = "은엽수 덤불",
		["Earthroot"] = "뱀뿌리",
		["Mageroyal"] = "마법초",
		["Briarthorn"] = "찔레가시",
		["Stranglekelp"] = "갈래물풀",
		["Bruiseweed"] = "생채기풀",
		["Wild Steelbloom"] = "야생 철쭉",
		["Grave Moss"] = "무덤이끼",
		["Kingsblood"] = "왕꽃잎풀",
		["Liferoot"] = "생명의 뿌리",
		["Fadeleaf"] = "미명초잎",
		["Goldthorn"] = "황금가시",
		["Khadgar's Whisker"] = "카드가의 수염",
		["Wintersbite"] = "겨울서리풀",
		["Firebloom"] = "화염초",
		["Purple Lotus"] = "보라 연꽃",
		["Arthas' Tears"] = "아서스의 눈물",
		["Sungrass"] = "태양풀",
		["Blindweed"] = "실명초",
		["Ghost Mushroom"] = "유령버섯",
		["Gromsblood"] = "그롬의 피",
		["Golden Sansam"] = "황금 산삼",
		["Dreamfoil"] = "꿈풀",
		["Mountain Silversage"] = "은초롱이",
		["Plaguebloom"] = "역병초",
		["Icecap"] = "얼음송이",
		["Black Lotus"] = "검은 연꽃",
	},
	deDE = {
		["Peacebloom"] = "Friedensblume",
		["Silverleaf"] = "Silberblatt",
		["Earthroot"] = "Erdwurzel",
		["Mageroyal"] = "Maguskönigskraut",
		["Briarthorn"] = "Wilddornrose",
		["Stranglekelp"] = "Würgetang",
		["Bruiseweed"] = "Beulengras",
		["Wild Steelbloom"] = "Wildstahlblume",
		["Grave Moss"] = "Grabmoos",
		["Kingsblood"] = "Königsblut",
		["Liferoot"] = "Lebenswurz",
		["Fadeleaf"] = "Blassblatt",
		["Goldthorn"] = "Golddorn",
		["Khadgar's Whisker"] = "Khadgars Schnurrbart",
		["Wintersbite"] = "Winterbiss",
		["Firebloom"] = "Feuerblüte",
		["Purple Lotus"] = "Lila Lotus",
		["Arthas' Tears"] = "Arthas’ Tränen",
		["Sungrass"] = "Sonnengras",
		["Blindweed"] = "Blindkraut",
		["Ghost Mushroom"] = "Geisterpilz",
		["Gromsblood"] = "Gromsblut",
		["Golden Sansam"] = "Goldener Sansam",
		["Dreamfoil"] = "Traumblatt",
		["Mountain Silversage"] = "Bergsilbersalbei",
		["Plaguebloom"] = "Pestblüte",
		["Icecap"] = "Eiskappe",
		["Black Lotus"] = "Schwarzer Lotus",
	},
	frFR = {
		["Peacebloom"] = "Pacifique",
		["Silverleaf"] = "Feuillargent",
		["Earthroot"] = "Terrestrine",
		["Mageroyal"] = "Mage royal",
		["Briarthorn"] = "Eglantine",
		["Stranglekelp"] = "Etouffante",
		["Bruiseweed"] = "Doulourante",
		["Wild Steelbloom"] = "Aciérite sauvage",
		["Grave Moss"] = "Tombeline",
		["Kingsblood"] = "Sang-royal",
		["Liferoot"] = "Vietérule",
		["Fadeleaf"] = "Pâlerette",
		["Goldthorn"] = "Dorépine",
		["Khadgar's Whisker"] = "Moustache de Khadgar",
		["Wintersbite"] = "Hivernale",
		["Firebloom"] = "Fleur de feu",
		["Purple Lotus"] = "Lotus pourpre",
		["Arthas' Tears"] = "Larmes d'Arthas",
		["Sungrass"] = "Soleillette",
		["Blindweed"] = "Aveuglette",
		["Ghost Mushroom"] = "Champignon fantôme",
		["Gromsblood"] = "Gromsang",
		["Golden Sansam"] = "Sansam doré",
		["Dreamfoil"] = "Feuillerêve",
		["Mountain Silversage"] = "Sauge-argent des montagnes",
		["Plaguebloom"] = "Chagrinelle",
		["Icecap"] = "Calot de glace",
		["Black Lotus"] = "Lotus noir",
	},
	esES = {
		["Peacebloom"] = "Flor de paz",
		["Silverleaf"] = "Hojaplata",
		["Earthroot"] = "Raíz de tierra",
		["Mageroyal"] = "Marregal",
		["Briarthorn"] = "Brezospina",
		["Stranglekelp"] = "Alga estranguladora",
		["Bruiseweed"] = "Hierba cardenal",
		["Wild Steelbloom"] = "Acérita salvaje",
		["Grave Moss"] = "Musgo de tumba",
		["Kingsblood"] = "Sangrerregia",
		["Liferoot"] = "Vidarraíz",
		["Fadeleaf"] = "Pálida",
		["Goldthorn"] = "Espina de oro",
		["Khadgar's Whisker"] = "Mostacho de Khadgar",
		["Wintersbite"] = "Ivernalia",
		["Firebloom"] = "Flor de fuego",
		["Purple Lotus"] = "Loto cárdeno",
		["Arthas' Tears"] = "Lágrimas de Arthas",
		["Sungrass"] = "Solea",
		["Blindweed"] = "Carolina",
		["Ghost Mushroom"] = "Champiñón fantasma",
		["Gromsblood"] = "Gromsanguina",
		["Golden Sansam"] = "Sansam dorado",
		["Dreamfoil"] = "Hojasueño",
		["Mountain Silversage"] = "Salviargenta de montaña",
		["Plaguebloom"] = "Flor de peste",
		["Icecap"] = "Setelo",
		["Black Lotus"] = "Loto negro",
	},
	zhTW = {
		["Peacebloom"] = "寧神花",
		["Silverleaf"] = "銀葉草",
		["Earthroot"] = "地根草",
		["Mageroyal"] = "魔皇草",
		["Briarthorn"] = "石南草",
		["Stranglekelp"] = "荊棘藻",
		["Bruiseweed"] = "跌打草",
		["Wild Steelbloom"] = "野鋼花",
		["Grave Moss"] = "墓地苔",
		["Kingsblood"] = "皇血草",
		["Liferoot"] = "活根草",
		["Fadeleaf"] = "枯葉草",
		["Goldthorn"] = "金棘草",
		["Khadgar's Whisker"] = "卡德加的鬍鬚",
		["Wintersbite"] = "冬刺草",
		["Firebloom"] = "火焰花",
		["Purple Lotus"] = "紫蓮花",
		["Arthas' Tears"] = "阿薩斯之淚",
		["Sungrass"] = "太陽草",
		["Blindweed"] = "盲目草",
		["Ghost Mushroom"] = "鬼魂菇",
		["Gromsblood"] = "格羅姆之血",
		["Golden Sansam"] = "黃金蔘",
		["Dreamfoil"] = "夢葉草",
		["Mountain Silversage"] = "山鼠草",
		["Plaguebloom"] = "瘟疫花",
		["Icecap"] = "冰蓋草",
		["Black Lotus"] = "黑蓮花",
	},
	zhCN = {
		["Peacebloom"] = "宁神花",
		["Silverleaf"] = "银叶草",
		["Earthroot"] = "地根草",
		["Mageroyal"] = "魔皇草",
		["Briarthorn"] = "石南草",
		["Stranglekelp"] = "荆棘藻",
		["Bruiseweed"] = "跌打草",
		["Wild Steelbloom"] = "野钢花",
		["Grave Moss"] = "墓地苔",
		["Kingsblood"] = "皇血草",
		["Liferoot"] = "活根草",
		["Fadeleaf"] = "枯叶草",
		["Goldthorn"] = "金棘草",
		["Khadgar's Whisker"] = "卡德加的胡须",
		["Wintersbite"] = "冬刺草",
		["Firebloom"] = "火焰花",
		["Purple Lotus"] = "紫莲花",
		["Arthas' Tears"] = "阿尔萨斯之泪",
		["Sungrass"] = "太阳草",
		["Blindweed"] = "盲目草",
		["Ghost Mushroom"] = "幽灵菇",
		["Gromsblood"] = "格罗姆之血",
		["Golden Sansam"] = "黄金参",
		["Dreamfoil"] = "梦叶草",
		["Mountain Silversage"] = "山鼠草",
		["Plaguebloom"] = "瘟疫花",
		["Icecap"] = "冰盖草",
		["Black Lotus"] = "黑莲花",
	},
	ruRU = {
		["Peacebloom"] = "Мироцвет",
		["Silverleaf"] = "Сребролист",
		["Earthroot"] = "Земляной корень",
		["Mageroyal"] = "Магороза",
		["Briarthorn"] = "Острошип",
		["Stranglekelp"] = "Удавник",
		["Bruiseweed"] = "Синячник",
		["Wild Steelbloom"] = "Дикий сталецвет",
		["Grave Moss"] = "Могильный мох",
		["Kingsblood"] = "Королевская кровь",
		["Liferoot"] = "Жизнекорень",
		["Fadeleaf"] = "Бледнолист",
		["Goldthorn"] = "Златошип",
		["Khadgar's Whisker"] = "Кадгаров ус",
		["Wintersbite"] = "Морозник",
		["Firebloom"] = "Огнецвет",
		["Purple Lotus"] = "Лиловый лотос",
		["Arthas' Tears"] = "Слезы Артаса",
		["Sungrass"] = "Солнечник",
		["Blindweed"] = "Пастушья сумка",
		["Ghost Mushroom"] = "Призрачная поганка",
		["Gromsblood"] = "Кровь Грома",
		["Golden Sansam"] = "Золотой сансам",
		["Dreamfoil"] = "Снолист",
		["Mountain Silversage"] = "Горный серебряный шалфей",
		["Plaguebloom"] = "Чумоцвет",
		["Icecap"] = "Ледяной зев",
		["Black Lotus"] = "Черный лотос",
	},
}

local function L(tag)
	if translations[GAME_LOCALE] then
		return translations[GAME_LOCALE][tag] or tag
	else
		return tag  -- Return English name
	end
end


local herbs = {
	[2447] = {
		name = L("Peacebloom"),
		itemID = 2447,
		minLevel = 1,
		zones = {
			[1439] = 29,		-- Darkshore
			[1426] = 79,		-- Dun Morogh
			[1411] = 90,		-- Durotar
			[1429] = 67,		-- Elwynn Forest
			[1432] = 39,		-- Loch Modan
			[1412] = 79,		-- Mulgore
			[1421] = 40,		-- Silverpine Forest
			[1438] = 96,		-- Teldrassil
			[1413] = 81,		-- The Barrens
			[1420] = 81,		-- Tirisfal Glades
			[1436] = 32,		-- Westfall
		},
	},
	[765] = {
		name = L("Silverleaf"),
		itemID = 765,
		minLevel = 1,
		zones = {
			[1439] = 39,		-- Darkshore
			[1426] = 77,		-- Dun Morogh
			[1411] = 79,		-- Durotar
			[1429] = 115,		-- Elwynn Forest
			[1432] = 49,		-- Loch Modan
			[1412] = 90,		-- Mulgore
			[1421] = 69,		-- Silverpine Forest
			[1438] = 108,		-- Teldrassil
			[1413] = 63,		-- The Barrens
			[1420] = 106,		-- Tirisfal Glades
			[1436] = 49,		-- Westfall
		},
	},
	[2449] = {
		name = L("Earthroot"),
		itemID = 2449,
		minLevel = 15,
		zones = {
			[1439] = 32,		-- Darkshore
			[1426] = 53,		-- Dun Morogh
			[1411] = 49,		-- Durotar
			[1429] = 44,		-- Elwynn Forest
			[1432] = 15,		-- Loch Modan
			[1412] = 42,		-- Mulgore
			[1433] = 39,		-- Redridge Mountains
			[1421] = 20,		-- Silverpine Forest
			[1438] = 64,		-- Teldrassil
			[1413] = 56,		-- The Barrens
			[1420] = 49,		-- Tirisfal Glades
			[1436] = 23,		-- Westfall
		},
	},
	[785] = {
		name = L("Mageroyal"),
		itemID = 785,
		minLevel = 50,
		zones = {
			[1440] = 28,		-- Ashenvale
			[1439] = 56,		-- Darkshore
			[1411] = 15,		-- Durotar
			[1431] = 26,		-- Duskwood
			[1424] = 15,		-- Hillsbrad Foothills
			[1432] = 44,		-- Loch Modan
			[1433] = 33,		-- Redridge Mountains
			[1421] = 48,		-- Silverpine Forest
			[1442] = 27,		-- Stonetalon Mountains
			[1438] = 21,		-- Teldrassil
			[1413] = 159,		-- The Barrens
			[1436] = 54,		-- Westfall
			[1437] = 35,		-- Wetlands
		},
	},
	[2450] = {
		name = L("Briarthorn"),
		itemID = 2450,
		minLevel = 70,
		zones = {
			[1440] = 47,		-- Ashenvale
			[1439] = 49,		-- Darkshore
			[1431] = 62,		-- Duskwood
			[1424] = 43,		-- Hillsbrad Foothills
			[1432] = 42,		-- Loch Modan
			[1433] = 46,		-- Redridge Mountains
			[1421] = 51,		-- Silverpine Forest
			[1442] = 44,		-- Stonetalon Mountains
			[1413] = 156,		-- The Barrens
			[1436] = 62,		-- Westfall
			[1437] = 46,		-- Wetlands
		},
	},
	[3820] = {
		name = L("Stranglekelp"),
		itemID = 3820,
		minLevel = 85,
		zones = {
			[1440] = 50,		-- Ashenvale
			[1439] = 32,		-- Darkshore
			[1443] = 49,		-- Desolace
			[1445] = 7,			-- Dustwallow Marsh
			[1444] = 16,		-- Feralas
			[1424] = 11,		-- Hillsbrad Foothills
			[1421] = 3,			-- Silverpine Forest
			[1434] = 57,		-- Stranglethorn Vale
			[1435] = 2,			-- Swamp of Sorrows
			[1446] = 5,			-- Tanaris
			[1413] = 34,		-- The Barrens
			[1425] = 3,			-- The Hinterlands
			[1436] = 33,		-- Westfall
			[1437] = 46,		-- Wetlands
		},
	},
	[2453] = {
		name = L("Bruiseweed"),
		itemID = 2453,
		minLevel = 100,
		zones = {
			[1416] = 10,		-- Alterac Mountains
			[1417] = 8,			-- Arathi Highlands
			[1440] = 51,		-- Ashenvale
			[1439] = 22,		-- Darkshore
			[1443] = 21,		-- Desolace
			[1431] = 41,		-- Duskwood
			[1424] = 44,		-- Hillsbrad Foothills
			[1432] = 13,		-- Loch Modan
			[1433] = 40,		-- Redridge Mountains
			[1421] = 15,		-- Silverpine Forest
			[1442] = 81,		-- Stonetalon Mountains
			[1413] = 65,		-- The Barrens
			[1441] = 35,		-- Thousand Needles
			[1436] = 40,		-- Westfall
			[1437] = 37,		-- Wetlands
		},
	},
	[3355] = {
		name = L("Wild Steelbloom"),
		itemID = 3355,
		minLevel = 115,
		zones = {
			[1417] = 51,		-- Arathi Highlands
			[1440] = 10,		-- Ashenvale
			[1418] = 15,		-- Badlands
			[1431] = 17,		-- Duskwood
			[1424] = 28,		-- Hillsbrad Foothills
			[1442] = 62,		-- Stonetalon Mountains
			[1434] = 62,		-- Stranglethorn Vale
			[1413] = 26,		-- The Barrens
			[1441] = 37,		-- Thousand Needles
			[1437] = 22,		-- Wetlands
		},
	},
	[3369] = {
		name = L("Grave Moss"),
		itemID = 3369,
		minLevel = 120,
		zones = {
			[1416] = 2,			-- Alterac Mountains
			[1417] = 3,			-- Arathi Highlands
			[1443] = 31,		-- Desolace
			[1431] = 27,		-- Duskwood
			[1423] = 4,			-- Eastern Plaguelands
			[1413] = 4,			-- The Barrens
			[1437] = 5,			-- Wetlands
		},
	},
	[3356] = {
		name = L("Kingsblood"),
		itemID = 3356,
		minLevel = 125,
		zones = {
			[1416] = 42,		-- Alterac Mountains
			[1417] = 45,		-- Arathi Highlands
			[1440] = 70,		-- Ashenvale
			[1418] = 34,		-- Badlands
			[1443] = 32,		-- Desolace
			[1431] = 41,		-- Duskwood
			[1445] = 26,		-- Dustwallow Marsh
			[1424] = 52,		-- Hillsbrad Foothills
			[1442] = 71,		-- Stonetalon Mountains
			[1434] = 96,		-- Stranglethorn Vale
			[1435] = 32,		-- Swamp of Sorrows
			[1413] = 39,		-- The Barrens
			[1441] = 40,		-- Thousand Needles
			[1437] = 66,		-- Wetlands
		},
	},
	[3357] = {
		name = L("Liferoot"),
		itemID = 3357,
		minLevel = 150,
		zones = {
			[1416] = 32,		-- Alterac Mountains
			[1417] = 27,		-- Arathi Highlands
			[1440] = 26,		-- Ashenvale
			[1443] = 33,		-- Desolace
			[1445] = 72,		-- Dustwallow Marsh
			[1444] = 14,		-- Feralas
			[1424] = 15,		-- Hillsbrad Foothills
			[1434] = 76,		-- Stranglethorn Vale
			[1435] = 61,		-- Swamp of Sorrows
			[1425] = 10,		-- The Hinterlands
			[1437] = 61,		-- Wetlands
		},
	},
	[3818] = {
		name = L("Fadeleaf"),
		itemID = 3818,
		minLevel = 160,
		zones = {
			[1416] = 24,		-- Alterac Mountains
			[1417] = 32,		-- Arathi Highlands
			[1418] = 16,		-- Badlands
			[1445] = 43,		-- Dustwallow Marsh
			[1434] = 37,		-- Stranglethorn Vale
			[1435] = 29,		-- Swamp of Sorrows
			[1425] = 13,		-- The Hinterlands
		},
	},
	[3821] = {
		name = L("Goldthorn"),
		itemID = 3821,
		minLevel = 170,
		zones = {
			[1416] = 34,		-- Alterac Mountains
			[1417] = 58,		-- Arathi Highlands
			[1447] = 7,			-- Azshara
			[1418] = 27,		-- Badlands
			[1445] = 45,		-- Dustwallow Marsh
			[1444] = 69,		-- Feralas
			[1434] = 101,		-- Stranglethorn Vale
			[1435] = 44,		-- Swamp of Sorrows
			[1425] = 35,		-- The Hinterlands
		},
	},
	[3358] = {
		name = L("Khadgar's Whisker"),
		itemID = 3358,
		minLevel = 185,
		zones = {
			[1416] = 29,		-- Alterac Mountains
			[1417] = 50,		-- Arathi Highlands
			[1447] = 20,		-- Azshara
			[1418] = 26,		-- Badlands
			[1445] = 44,		-- Dustwallow Marsh
			[1444] = 61,		-- Feralas
			[1434] = 94,		-- Stranglethorn Vale
			[1435] = 43,		-- Swamp of Sorrows
			[1425] = 13,		-- The Hinterlands
		},
	},
	[3819] = {
		name = L("Wintersbite"),
		itemID = 3819,
		minLevel = 195,
		zones = {
			[1416] = 37,		-- Alterac Mountains
		},
	},
	[4625] = {
		name = L("Firebloom"),
		itemID = 4625,
		minLevel = 205,
		zones = {
			[1418] = 21,		-- Badlands
			[1419] = 22,		-- Blasted Lands
			[1427] = 68,		-- Searing Gorge
			[1446] = 101,		-- Tanaris
		},
	},
	[8831] = {
		name = L("Purple Lotus"),
		itemID = 8831,
		minLevel = 210,
		zones = {
			[1440] = 2,			-- Ashenvale
			[1447] = 49,		-- Azshara
			[1418] = 5,			-- Badlands
			[1444] = 51,		-- Feralas
			[1434] = 31,		-- Stranglethorn Vale
			[1446] = 40,		-- Tanaris
			[1425] = 39,		-- The Hinterlands
		},
	},
	[8836] = {
		name = L("Arthas' Tears"),
		itemID = 8836,
		minLevel = 220,
		zones = {
			[1423] = 51,		-- Eastern Plaguelands
			[1448] = 25,		-- Felwood
			[1422] = 45,		-- Western Plaguelands
		},
	},
	[8838] = {
		name = L("Sungrass"),
		itemID = 8838,
		minLevel = 230,
		zones = {
			[1447] = 75,		-- Azshara
			[1419] = 22,		-- Blasted Lands
			[1428] = 15,		-- Burning Steppes
			[1423] = 30,		-- Eastern Plaguelands
			[1448] = 19,		-- Felwood
			[1444] = 98,		-- Feralas
			[1451] = 9,			-- Silithus
			[1425] = 78,		-- The Hinterlands
			[1449] = 46,		-- Un'Goro Crater
			[1422] = 36,		-- Western Plaguelands
		},
	},
	[8839] = {
		name = L("Blindweed"),
		itemID = 8839,
		minLevel = 235,
		zones = {
			[1435] = 129,		-- Swamp of Sorrows
			[1449] = 17,		-- Un'Goro Crater
		},
	},
	[8845] = {
		name = L("Ghost Mushroom"),
		itemID = 8845,
		minLevel = 245,
		zones = {
			[1443] = 7,			-- Desolace
			[1425] = 41,		-- The Hinterlands
		},
	},
	[8846] = {
		name = L("Gromsblood"),
		itemID = 8846,
		minLevel = 250,
		zones = {
			[1440] = 8,			-- Ashenvale
			[1419] = 40,		-- Blasted Lands
			[1443] = 18,		-- Desolace
			[1448] = 53,		-- Felwood
		},
	},
	[13464] = {
		name = L("Golden Sansam"),
		itemID = 13464,
		minLevel = 260,
		zones = {
			[1447] = 72,		-- Azshara
			[1428] = 19,		-- Burning Steppes
			[1423] = 22,		-- Eastern Plaguelands
			[1448] = 24,		-- Felwood
			[1444] = 16,		-- Feralas
			[1451] = 14,		-- Silithus
			[1425] = 18,		-- The Hinterlands
			[1449] = 59,		-- Un'Goro Crater
		},
	},
	[13463] = {
		name = L("Dreamfoil"),
		itemID = 13463,
		minLevel = 270,
		zones = {
			[1447] = 77,		-- Azshara
			[1428] = 31,		-- Burning Steppes
			[1423] = 66,		-- Eastern Plaguelands
			[1448] = 38,		-- Felwood
			[1451] = 28,		-- Silithus
			[1449] = 60,		-- Un'Goro Crater
			[1422] = 31,		-- Western Plaguelands
		},
	},
	[13465] = {
		name = L("Mountain Silversage"),
		itemID = 13465,
		minLevel = 280,
		zones = {
			[1447] = 52,		-- Azshara
			[1428] = 28,		-- Burning Steppes
			[1423] = 53,		-- Eastern Plaguelands
			[1448] = 31,		-- Felwood
			[1451] = 25,		-- Silithus
			[1449] = 49,		-- Un'Goro Crater
			[1422] = 18,		-- Western Plaguelands
			[1452] = 78,		-- Winterspring
		},
	},
	[13466] = {
		name = L("Plaguebloom"),
		itemID = 13466,
		minLevel = 285,
		zones = {
			[1423] = 133,		-- Eastern Plaguelands
			[1448] = 60,		-- Felwood
			[1422] = 58,		-- Western Plaguelands
		},
	},
	[13467] = {
		name = L("Icecap"),
		itemID = 13467,
		minLevel = 290,
		zones = {
			[1452] = 152,		-- Winterspring
		},
	},
	[13468] = {
		name = L("Black Lotus"),
		itemID = 13468,
		minLevel = 300,
		zones = {
			[1428] = 10,		-- Burning Steppes
			[1423] = 11,		-- Eastern Plaguelands
			[1451] = 7,			-- Silithus
			[1452] = 12,		-- Winterspring
		},
	},
}



local herbsByZone = {
	-- Alterac Mountains
	[1416] = {
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 10,
		},
		[3369] = {
			name = L("Grave Moss"),
			itemID = 3369,
			minLevel = 120,
			numNodes = 2,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 42,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 32,
		},
		[3818] = {
			name = L("Fadeleaf"),
			itemID = 3818,
			minLevel = 160,
			numNodes = 24,
		},
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 34,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 29,
		},
		[3819] = {
			name = L("Wintersbite"),
			itemID = 3819,
			minLevel = 195,
			numNodes = 37,
		},
	},
	-- Arathi Highlands
	[1417] = {
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 8,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 51,
		},
		[3369] = {
			name = L("Grave Moss"),
			itemID = 3369,
			minLevel = 120,
			numNodes = 3,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 45,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 27,
		},
		[3818] = {
			name = L("Fadeleaf"),
			itemID = 3818,
			minLevel = 160,
			numNodes = 32,
		},
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 58,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 50,
		},
	},
	-- Ashenvale
	[1440] = {
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 28,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 47,
		},
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 50,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 51,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 10,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 70,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 26,
		},
		[8831] = {
			name = L("Purple Lotus"),
			itemID = 8831,
			minLevel = 210,
			numNodes = 2,
		},
		[8846] = {
			name = L("Gromsblood"),
			itemID = 8846,
			minLevel = 250,
			numNodes = 8,
		},
	},
	-- Azshara
	[1447] = {
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 7,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 20,
		},
		[8831] = {
			name = L("Purple Lotus"),
			itemID = 8831,
			minLevel = 210,
			numNodes = 49,
		},
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 75,
		},
		[13464] = {
			name = L("Golden Sansam"),
			itemID = 13464,
			minLevel = 260,
			numNodes = 72,
		},
		[13463] = {
			name = L("Dreamfoil"),
			itemID = 13463,
			minLevel = 270,
			numNodes = 77,
		},
		[13465] = {
			name = L("Mountain Silversage"),
			itemID = 13465,
			minLevel = 280,
			numNodes = 52,
		},
	},
	-- Badlands
	[1418] = {
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 15,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 34,
		},
		[3818] = {
			name = L("Fadeleaf"),
			itemID = 3818,
			minLevel = 160,
			numNodes = 16,
		},
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 27,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 26,
		},
		[4625] = {
			name = L("Firebloom"),
			itemID = 4625,
			minLevel = 205,
			numNodes = 21,
		},
		[8831] = {
			name = L("Purple Lotus"),
			itemID = 8831,
			minLevel = 210,
			numNodes = 5,
		},
	},
	-- Blasted Lands
	[1419] = {
		[4625] = {
			name = L("Firebloom"),
			itemID = 4625,
			minLevel = 205,
			numNodes = 22,
		},
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 22,
		},
		[8846] = {
			name = L("Gromsblood"),
			itemID = 8846,
			minLevel = 250,
			numNodes = 40,
		},
	},
	-- Burning Steppes
	[1428] = {
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 15,
		},
		[13464] = {
			name = L("Golden Sansam"),
			itemID = 13464,
			minLevel = 260,
			numNodes = 19,
		},
		[13463] = {
			name = L("Dreamfoil"),
			itemID = 13463,
			minLevel = 270,
			numNodes = 31,
		},
		[13465] = {
			name = L("Mountain Silversage"),
			itemID = 13465,
			minLevel = 280,
			numNodes = 28,
		},
		[13468] = {
			name = L("Black Lotus"),
			itemID = 13468,
			minLevel = 300,
			numNodes = 10,
		},
	},
	-- Darkshore
	[1439] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 29,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 39,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 32,
		},
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 56,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 49,
		},
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 32,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 22,
		},
	},
	-- Desolace
	[1443] = {
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 49,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 21,
		},
		[3369] = {
			name = L("Grave Moss"),
			itemID = 3369,
			minLevel = 120,
			numNodes = 31,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 32,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 33,
		},
		[8845] = {
			name = L("Ghost Mushroom"),
			itemID = 8845,
			minLevel = 245,
			numNodes = 7,
		},
		[8846] = {
			name = L("Gromsblood"),
			itemID = 8846,
			minLevel = 250,
			numNodes = 18,
		},
	},
	-- Dun Morogh
	[1426] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 79,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 77,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 53,
		},
	},
	-- Durotar
	[1411] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 90,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 79,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 49,
		},
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 15,
		},
	},
	-- Duskwood
	[1431] = {
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 26,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 62,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 41,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 17,
		},
		[3369] = {
			name = L("Grave Moss"),
			itemID = 3369,
			minLevel = 120,
			numNodes = 27,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 41,
		},
	},
	-- Dustwallow Marsh
	[1445] = {
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 7,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 26,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 72,
		},
		[3818] = {
			name = L("Fadeleaf"),
			itemID = 3818,
			minLevel = 160,
			numNodes = 43,
		},
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 45,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 44,
		},
	},
	-- Eastern Plaguelands
	[1423] = {
		[3369] = {
			name = L("Grave Moss"),
			itemID = 3369,
			minLevel = 120,
			numNodes = 4,
		},
		[8836] = {
			name = L("Arthas' Tears"),
			itemID = 8836,
			minLevel = 220,
			numNodes = 51,
		},
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 30,
		},
		[13464] = {
			name = L("Golden Sansam"),
			itemID = 13464,
			minLevel = 260,
			numNodes = 22,
		},
		[13463] = {
			name = L("Dreamfoil"),
			itemID = 13463,
			minLevel = 270,
			numNodes = 66,
		},
		[13465] = {
			name = L("Mountain Silversage"),
			itemID = 13465,
			minLevel = 280,
			numNodes = 53,
		},
		[13466] = {
			name = L("Plaguebloom"),
			itemID = 13466,
			minLevel = 285,
			numNodes = 133,
		},
		[13468] = {
			name = L("Black Lotus"),
			itemID = 13468,
			minLevel = 300,
			numNodes = 11,
		},
	},
	-- Elwynn Forest
	[1429] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 67,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 115,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 44,
		},
	},
	-- Felwood
	[1448] = {
		[8836] = {
			name = L("Arthas' Tears"),
			itemID = 8836,
			minLevel = 220,
			numNodes = 25,
		},
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 19,
		},
		[8846] = {
			name = L("Gromsblood"),
			itemID = 8846,
			minLevel = 250,
			numNodes = 53,
		},
		[13464] = {
			name = L("Golden Sansam"),
			itemID = 13464,
			minLevel = 260,
			numNodes = 24,
		},
		[13463] = {
			name = L("Dreamfoil"),
			itemID = 13463,
			minLevel = 270,
			numNodes = 38,
		},
		[13465] = {
			name = L("Mountain Silversage"),
			itemID = 13465,
			minLevel = 280,
			numNodes = 31,
		},
		[13466] = {
			name = L("Plaguebloom"),
			itemID = 13466,
			minLevel = 285,
			numNodes = 60,
		},
	},
	-- Feralas
	[1444] = {
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 16,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 14,
		},
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 69,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 61,
		},
		[8831] = {
			name = L("Purple Lotus"),
			itemID = 8831,
			minLevel = 210,
			numNodes = 51,
		},
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 98,
		},
		[13464] = {
			name = L("Golden Sansam"),
			itemID = 13464,
			minLevel = 260,
			numNodes = 16,
		},
	},
	-- Hillsbrad Foothills
	[1424] = {
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 15,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 43,
		},
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 11,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 44,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 28,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 52,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 15,
		},
	},
	-- Loch Modan
	[1432] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 39,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 49,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 15,
		},
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 44,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 42,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 13,
		},
	},
	-- Mulgore
	[1412] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 79,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 90,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 42,
		},
	},
	-- Redridge Mountains
	[1433] = {
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 39,
		},
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 33,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 46,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 40,
		},
	},
	-- Searing Gorge
	[1427] = {
		[4625] = {
			name = L("Firebloom"),
			itemID = 4625,
			minLevel = 205,
			numNodes = 68,
		},
	},
	-- Silithus
	[1451] = {
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 9,
		},
		[13464] = {
			name = L("Golden Sansam"),
			itemID = 13464,
			minLevel = 260,
			numNodes = 14,
		},
		[13463] = {
			name = L("Dreamfoil"),
			itemID = 13463,
			minLevel = 270,
			numNodes = 28,
		},
		[13465] = {
			name = L("Mountain Silversage"),
			itemID = 13465,
			minLevel = 280,
			numNodes = 25,
		},
		[13468] = {
			name = L("Black Lotus"),
			itemID = 13468,
			minLevel = 300,
			numNodes = 7,
		},
	},
	-- Silverpine Forest
	[1421] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 40,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 69,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 20,
		},
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 48,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 51,
		},
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 3,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 15,
		},
	},
	-- Stonetalon Mountains
	[1442] = {
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 27,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 44,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 81,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 62,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 71,
		},
	},
	-- Stranglethorn Vale
	[1434] = {
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 57,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 62,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 96,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 76,
		},
		[3818] = {
			name = L("Fadeleaf"),
			itemID = 3818,
			minLevel = 160,
			numNodes = 37,
		},
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 101,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 94,
		},
		[8831] = {
			name = L("Purple Lotus"),
			itemID = 8831,
			minLevel = 210,
			numNodes = 31,
		},
	},
	-- Swamp of Sorrows
	[1435] = {
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 2,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 32,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 61,
		},
		[3818] = {
			name = L("Fadeleaf"),
			itemID = 3818,
			minLevel = 160,
			numNodes = 29,
		},
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 44,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 43,
		},
		[8839] = {
			name = L("Blindweed"),
			itemID = 8839,
			minLevel = 235,
			numNodes = 129,
		},
	},
	-- Tanaris
	[1446] = {
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 5,
		},
		[4625] = {
			name = L("Firebloom"),
			itemID = 4625,
			minLevel = 205,
			numNodes = 101,
		},
		[8831] = {
			name = L("Purple Lotus"),
			itemID = 8831,
			minLevel = 210,
			numNodes = 40,
		},
	},
	-- Teldrassil
	[1438] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 96,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 108,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 64,
		},
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 21,
		},
	},
	-- The Barrens
	[1413] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 81,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 63,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 56,
		},
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 159,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 156,
		},
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 34,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 65,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 26,
		},
		[3369] = {
			name = L("Grave Moss"),
			itemID = 3369,
			minLevel = 120,
			numNodes = 4,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 39,
		},
	},
	-- The Hinterlands
	[1425] = {
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 3,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 10,
		},
		[3818] = {
			name = L("Fadeleaf"),
			itemID = 3818,
			minLevel = 160,
			numNodes = 13,
		},
		[3821] = {
			name = L("Goldthorn"),
			itemID = 3821,
			minLevel = 170,
			numNodes = 35,
		},
		[3358] = {
			name = L("Khadgar's Whisker"),
			itemID = 3358,
			minLevel = 185,
			numNodes = 13,
		},
		[8831] = {
			name = L("Purple Lotus"),
			itemID = 8831,
			minLevel = 210,
			numNodes = 39,
		},
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 78,
		},
		[8845] = {
			name = L("Ghost Mushroom"),
			itemID = 8845,
			minLevel = 245,
			numNodes = 41,
		},
		[13464] = {
			name = L("Golden Sansam"),
			itemID = 13464,
			minLevel = 260,
			numNodes = 18,
		},
	},
	-- Thousand Needles
	[1441] = {
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 35,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 37,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 40,
		},
	},
	-- Tirisfal Glades
	[1420] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 81,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 106,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 49,
		},
	},
	-- Un'Goro Crater
	[1449] = {
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 46,
		},
		[8839] = {
			name = L("Blindweed"),
			itemID = 8839,
			minLevel = 235,
			numNodes = 17,
		},
		[13464] = {
			name = L("Golden Sansam"),
			itemID = 13464,
			minLevel = 260,
			numNodes = 59,
		},
		[13463] = {
			name = L("Dreamfoil"),
			itemID = 13463,
			minLevel = 270,
			numNodes = 60,
		},
		[13465] = {
			name = L("Mountain Silversage"),
			itemID = 13465,
			minLevel = 280,
			numNodes = 49,
		},
	},
	-- Western Plaguelands
	[1422] = {
		[8836] = {
			name = L("Arthas' Tears"),
			itemID = 8836,
			minLevel = 220,
			numNodes = 45,
		},
		[8838] = {
			name = L("Sungrass"),
			itemID = 8838,
			minLevel = 230,
			numNodes = 36,
		},
		[13463] = {
			name = L("Dreamfoil"),
			itemID = 13463,
			minLevel = 270,
			numNodes = 31,
		},
		[13465] = {
			name = L("Mountain Silversage"),
			itemID = 13465,
			minLevel = 280,
			numNodes = 18,
		},
		[13466] = {
			name = L("Plaguebloom"),
			itemID = 13466,
			minLevel = 285,
			numNodes = 58,
		},
	},
	-- Westfall
	[1436] = {
		[2447] = {
			name = L("Peacebloom"),
			itemID = 2447,
			minLevel = 1,
			numNodes = 32,
		},
		[765] = {
			name = L("Silverleaf"),
			itemID = 765,
			minLevel = 1,
			numNodes = 49,
		},
		[2449] = {
			name = L("Earthroot"),
			itemID = 2449,
			minLevel = 15,
			numNodes = 23,
		},
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 54,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 62,
		},
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 33,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 40,
		},
	},
	-- Wetlands
	[1437] = {
		[785] = {
			name = L("Mageroyal"),
			itemID = 785,
			minLevel = 50,
			numNodes = 35,
		},
		[2450] = {
			name = L("Briarthorn"),
			itemID = 2450,
			minLevel = 70,
			numNodes = 46,
		},
		[3820] = {
			name = L("Stranglekelp"),
			itemID = 3820,
			minLevel = 85,
			numNodes = 46,
		},
		[2453] = {
			name = L("Bruiseweed"),
			itemID = 2453,
			minLevel = 100,
			numNodes = 37,
		},
		[3355] = {
			name = L("Wild Steelbloom"),
			itemID = 3355,
			minLevel = 115,
			numNodes = 22,
		},
		[3369] = {
			name = L("Grave Moss"),
			itemID = 3369,
			minLevel = 120,
			numNodes = 5,
		},
		[3356] = {
			name = L("Kingsblood"),
			itemID = 3356,
			minLevel = 125,
			numNodes = 66,
		},
		[3357] = {
			name = L("Liferoot"),
			itemID = 3357,
			minLevel = 150,
			numNodes = 61,
		},
	},
	-- Winterspring
	[1452] = {
		[13465] = {
			name = L("Mountain Silversage"),
			itemID = 13465,
			minLevel = 280,
			numNodes = 78,
		},
		[13467] = {
			name = L("Icecap"),
			itemID = 13467,
			minLevel = 290,
			numNodes = 152,
		},
		[13468] = {
			name = L("Black Lotus"),
			itemID = 13468,
			minLevel = 300,
			numNodes = 12,
		},
	},
}




if not nameSpace.LibTouristClassic then
	nameSpace.LibTouristClassic = {}
end
nameSpace.LibTouristClassic.herbs = herbs
nameSpace.LibTouristClassic.herbsByZone = herbsByZone
trace("Tourist: Herbs library loaded by "..tostring(addonName))

