local GLG_KEYWORD = "Name: ";
local GLG_QUEST	= "Quest";
local GLG_KEY = "Key";
local GLG_OneHandedAxes = "One-Handed Axes";
local GLG_TwoHandedAxes = "Two-Handed Axes";
local GLG_Bows = "Bows";
local GLG_Guns = "Guns";
local GLG_OneHandedMaces = "One-Handed Maces";
local GLG_TwoHandedMaces = "Two-Handed Maces";
local GLG_Polearms = "Polearms";
local GLG_OneHandedSwords = "One-Handed Swords";
local GLG_TwoHandedSwords = "Two-Handed Swords";
-- local GLG_Warglaives = "Warglaives";
local GLG_Staves = "Staves";
-- local GLG_BearClaws = "Bear Claws";
-- local GLG_CatClaws = "CatClaws";
local GLG_FistWeapons = "Fist Weapons";
local GLG_Daggers = "Daggers";
local GLG_Thrown = "Thrown";
local GLG_Spears = "Spears";
local GLG_Crossbows = "Crossbows";
local GLG_Wands = "Wands";
local GLG_FishingPoles = "Fishing Poles";
local GLG_Cloth = "Cloth";
local GLG_Leather = "Leather";
local GLG_Mail = "Mail";
local GLG_Plate = "Plate";
-- local GLG_Cosmetic = "Cosmetic";
local GLG_Shields = "Shields";
local GLG_Librams = "Librams";
local GLG_Idols = "Idols";
local GLG_Totems = "Totems";
-- local GLG_Sigils = "Sigils";
-- local GLG_Relic = "Relic";
local GLG_ARROW = "Arrow";
local GLG_AMMOPOUCH = "Ammo Pouch";
local GLG_SOULBAG = "Soul Bag";
local GLG_HERBALISMBAG = "Herb Bag";
local GLG_ENCHANTINGBAG = "Enchanting Bag";
local GLG_BOOK = "Book";
local GLG_ALCHEMY = "Alchemy"
local GLG_BLACKSMITHING = "Blacksmithing"
local GLG_ENCHANTING = "Enchanting"
local GLG_ENGINEERING = "Engineering"
local GLG_LEATHERWORKING = "Leatherworking"
local GLG_TAILORING = "Tailoring"
if GetLocale() == "zhCN" then
	GLG_KEYWORD	= "关键词：";
	GLG_QUEST	= "任务";
	GLG_KEY	= "钥匙";
	GLG_OneHandedAxes = "单手斧";
	GLG_TwoHandedAxes = "双手斧";
	GLG_Bows = "弓";
	GLG_Guns = "枪";
	GLG_OneHandedMaces = "单手锤";
	GLG_TwoHandedMaces = "双手锤";
	GLG_Polearms = "长柄武器";
	GLG_OneHandedSwords = "单手剑";
	GLG_TwoHandedSwords = "双手剑";
	-- GLG_Warglaives = "战刃";
	GLG_Staves = "法杖";
	-- GLG_BearClaws = "熊爪";
	-- GLG_CatClaws = "猫爪";
	GLG_FistWeapons = "拳套";
	GLG_Daggers = "匕首";
	GLG_Thrown = "投掷武器";
	GLG_Spears = "矛";
	GLG_Crossbows = "弩";
	GLG_Wands = "魔杖";
	GLG_FishingPoles = "鱼杆";
	GLG_Cloth = "布甲";
	GLG_Leather = "皮甲";
	GLG_Mail = "锁甲";
	GLG_Plate = "板甲";
	-- GLG_Cosmetic = "Cosmetic";
	GLG_Shields = "盾牌";
	GLG_Librams = "圣契";
	GLG_Idols = "神像";
	GLG_Totems = "图腾";
	-- GLG_Sigils = "Sigils";
	-- GLG_Relic = "Relic";
	GLG_ARROW = "箭";
	GLG_AMMOPOUCH = "弹药袋";
	GLG_SOULBAG = "灵魂袋";
	GLG_HERBALISMBAG = "草药袋";
	GLG_ENCHANTINGBAG = "附魔袋";
	GLG_BOOK = "书籍";
	GLG_ALCHEMY = "炼金术"
	GLG_BLACKSMITHING = "锻造"
	GLG_ENCHANTING = "附魔"
	GLG_ENGINEERING = "工程学"
	GLG_LEATHERWORKING = "制皮"
	GLG_TAILORING = "裁缝"
elseif GetLocale() == "zhTW" then
	GLG_KEYWORD	= "關鍵字：";
	GLG_QUEST	= "任務";
	GLG_KEY	= "鑰匙";
	GLG_OneHandedAxes = "單手斧";
	GLG_TwoHandedAxes = "雙手斧";
	GLG_Bows = "弓";
	GLG_Guns = "槍";
	GLG_OneHandedMaces = "單手錘";
	GLG_TwoHandedMaces = "雙手錘";
	GLG_Polearms = "長柄武器";
	GLG_OneHandedSwords = "單手劍";
	GLG_TwoHandedSwords = "雙手劍";
	-- GLG_Warglaives = "戰刃";
	GLG_Staves = "法杖";
	-- GLG_BearClaws = "熊爪";
	-- GLG_CatClaws = "貓爪";
	GLG_FistWeapons = "拳套";
	GLG_Daggers = "匕首";
	GLG_Thrown = "投擲武器";
	GLG_Spears = "矛";
	GLG_Crossbows = "弩";
	GLG_Wands = "魔杖";
	GLG_FishingPoles = "魚杆";
	GLG_Cloth = "布甲";
	GLG_Leather = "皮甲";
	GLG_Mail = "鎖甲";
	GLG_Plate = "板甲";
	-- GLG_Cosmetic = "Cosmetic";
	GLG_Shields = "盾牌";
	GLG_Librams = "聖契";
	GLG_Idols = "神像";
	GLG_Totems = "圖騰";
	-- GLG_Sigils = "Sigils";
	-- GLG_Relic = "Relic";
	GLG_ARROW = "箭";
	GLG_AMMOPOUCH = "彈藥袋";
	GLG_SOULBAG = "靈魂袋";
	GLG_HERBALISMBAG = "草藥袋";
	GLG_ENCHANTINGBAG = "附魔袋";
	GLG_BOOK = "書籍";
	GLG_ALCHEMY = "煉金術"
	GLG_BLACKSMITHING = "鍛造"
	GLG_ENCHANTING = "附魔"
	GLG_ENGINEERING = "工程學"
	GLG_LEATHERWORKING = "制皮"
	GLG_TAILORING = "裁縫"
end

local GetLinkGuiMode_MenuList = {
	{ text = TYPE, hasArrow = true,
		menuList = {
			{ text = ALL, func = function() GLOptions["type"] = -1; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == -1; end },
			{ text = AUCTION_CATEGORY_WEAPONS, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 2; end, hasArrow = true,
				menuList = {
					{ text = ALL, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == -1; end },
					{ text = GLG_OneHandedAxes, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 0; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 0; end },
					{ text = GLG_TwoHandedAxes, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 1; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 1; end },
					{ text = GLG_OneHandedMaces, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 4; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 4; end },
					{ text = GLG_TwoHandedMaces, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 5; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 5; end },
					{ text = GLG_OneHandedSwords, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 7; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 7; end },
					{ text = GLG_TwoHandedSwords, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 8; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 8; end },
					{ text = GLG_Polearms, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 6; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 6; end },
					{ text = GLG_Daggers, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 15; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 15; end },
					{ text = GLG_FistWeapons, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 13; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 13; end },
					{ text = GLG_Staves, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 10; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 10; end },
					{ text = GLG_Wands, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 19; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 19; end },
					{ text = GLG_Bows, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 2; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 2; end },
					{ text = GLG_Guns, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 3; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 3; end },
					{ text = GLG_Crossbows, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 18; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 18; end },
					{ text = GLG_Spears, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 17; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 17; end },
					{ text = GLG_Thrown, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 16; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 16; end },
					{ text = GLG_FishingPoles, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 20; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 20; end },
					{ text = MISCELLANEOUS, func = function() GLOptions["type"] = 2; GLOptions["subtype"] = 14; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 14; end },
				}
			},
			{ text = AUCTION_CATEGORY_ARMOR, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = -1; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 4; end, hasArrow = true,
				menuList = {
					{ text = ALL, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = -1; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == -1; end },
					{ text = GLG_Cloth, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 1; end, hasArrow = true,
						menuList = {
							{ text = ALL, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "all"; end },
							{ text = HEADSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_HEAD"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HEAD"; end },
							{ text = SHOULDERSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_SHOULDER"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_SHOULDER"; end },
							{ text = BACKSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_CLOAK"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_CLOAK"; end },
							{ text = CHESTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_CHEST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_CHEST"; end },
							{ text = CHESTSLOT.."2", func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_ROBE"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_ROBE"; end },
							{ text = WAISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_WAIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WAIST"; end },
							{ text = HANDSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_HAND"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HAND"; end },
							{ text = WRISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_WRIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WRIST"; end },
							{ text = LEGSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_LEGS"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_LEGS"; end },
							{ text = FEETSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 1; GLOptions["loc"] = "INVTYPE_FEET"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_FEET"; end },
						}
					},
					{ text = GLG_Leather, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 2; end, hasArrow = true,
						menuList = {
							{ text = ALL, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "all"; end },
							{ text = HEADSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_HEAD"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HEAD"; end },
							{ text = SHOULDERSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_SHOULDER"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_SHOULDER"; end },
							{ text = CHESTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_CHEST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_CHEST"; end },
							{ text = CHESTSLOT.."2", func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_ROBE"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_ROBE"; end },
							{ text = WAISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_WAIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WAIST"; end },
							{ text = HANDSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_HAND"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HAND"; end },
							{ text = WRISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_WRIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WRIST"; end },
							{ text = LEGSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_LEGS"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_LEGS"; end },
							{ text = FEETSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 2; GLOptions["loc"] = "INVTYPE_FEET"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_FEET"; end },
						}
					},
					{ text = GLG_Mail, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 3; end, hasArrow = true,
						menuList = {
							{ text = ALL, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "all"; end },
							{ text = HEADSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_HEAD"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HEAD"; end },
							{ text = SHOULDERSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_SHOULDER"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_SHOULDER"; end },
							{ text = CHESTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_CHEST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_CHEST"; end },
							{ text = CHESTSLOT.."2", func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_ROBE"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_ROBE"; end },
							{ text = WAISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_WAIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WAIST"; end },
							{ text = HANDSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_HAND"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HAND"; end },
							{ text = WRISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_WRIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WRIST"; end },
							{ text = LEGSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_LEGS"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_LEGS"; end },
							{ text = FEETSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 3; GLOptions["loc"] = "INVTYPE_FEET"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_FEET"; end },
						}
					},
					{ text = GLG_Plate, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 4; end, hasArrow = true,
						menuList = {
							{ text = ALL, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "all"; end },
							{ text = HEADSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "INVTYPE_HEAD"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HEAD"; end },
							{ text = SHOULDERSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "INVTYPE_SHOULDER"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_SHOULDER"; end },
							{ text = CHESTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "INVTYPE_CHEST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_CHEST"; end },
							{ text = WAISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "INVTYPE_WAIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WAIST"; end },
							{ text = HANDSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "INVTYPE_HAND"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HAND"; end },
							{ text = WRISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "INVTYPE_WRIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WRIST"; end },
							{ text = LEGSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "INVTYPE_LEGS"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_LEGS"; end },
							{ text = FEETSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 4; GLOptions["loc"] = "INVTYPE_FEET"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_FEET"; end },
						}
					},
					{ text = GLG_Shields, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 6; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 6; end },
					{ text = GLG_Librams, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 7; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 7; end },
					{ text = GLG_Idols, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 8; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 8; end },
					{ text = GLG_Totems, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 9; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 9; end },
					{ text = MISCELLANEOUS, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 0; end, hasArrow = true,
						menuList = {
							{ text = ALL, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "all"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "all"; end },
							{ text = NECKSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_NECK"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_NECK"; end },
							{ text = TABARDSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_TABARD"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_TABARD"; end },
							{ text = FINGER1SLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_FINGER"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_FINGER"; end },
							{ text = TRINKET0SLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_TRINKET"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_TRINKET"; end },
							{ text = SECONDARYHANDSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_HOLDABLE"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HOLDABLE"; end },
							{ text = HEADSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_HEAD"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HEAD"; end },
							{ text = SHOULDERSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_SHOULDER"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_SHOULDER"; end },
							{ text = CHESTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_CHEST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_CHEST"; end },
							{ text = CHESTSLOT.."2", func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_BODY"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_BODY"; end },
							{ text = CHESTSLOT.."3", func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_ROBE"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_ROBE"; end },
							{ text = WAISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_WAIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WAIST"; end },
							{ text = HANDSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_HAND"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_HAND"; end },
							{ text = WRISTSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_WRIST"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_WRIST"; end },
							{ text = LEGSSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_LEGS"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_LEGS"; end },
							{ text = FEETSLOT, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = "INVTYPE_FEET"; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == "INVTYPE_FEET"; end },
							{ text = MISCELLANEOUS, func = function() GLOptions["type"] = 4; GLOptions["subtype"] = 0; GLOptions["loc"] = ""; CloseDropDownMenus(); end, checked = function() return GLOptions["loc"] == ""; end },
						}
					},
				}
			},
			{ text = AUCTION_CATEGORY_CONTAINERS, func = function() GLOptions["type"] = 1; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 1; end, hasArrow = true,
				menuList = {
					{ text = ALL, func = function() GLOptions["type"] = 1; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == -1; end },
					{ text = BAGSLOT, func = function() GLOptions["type"] = 1; GLOptions["subtype"] = 0; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 0; end },
					{ text = GLG_SOULBAG, func = function() GLOptions["type"] = 1; GLOptions["subtype"] = 1; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 1; end },
					{ text = GLG_HERBALISMBAG, func = function() GLOptions["type"] = 1; GLOptions["subtype"] = 2; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 2; end },
					{ text = GLG_ENCHANTINGBAG, func = function() GLOptions["type"] = 1; GLOptions["subtype"] = 3; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 3; end },
				}
			},
			{ text = AUCTION_CATEGORY_CONSUMABLES, func = function() GLOptions["type"] = 0; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 0; end },
			{ text = AUCTION_CATEGORY_REAGENT, func = function() GLOptions["type"] = 5; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 5; end },
			{ text = BAG_FILTER_TRADE_GOODS, func = function() GLOptions["type"] = 7; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 7; end },
			{ text = AUCTION_CATEGORY_RECIPES, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 9; end, hasArrow = true,
				menuList = {
					{ text = ALL, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == -1; end },
					{ text = GLG_BOOK, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 0; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 0; end },
					{ text = GLG_LEATHERWORKING, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 1; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 1; end },
					{ text = GLG_TAILORING, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 2; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 2; end },
					{ text = GLG_ENGINEERING, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 3; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 3; end },
					{ text = GLG_BLACKSMITHING, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 4; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 4; end },
					{ text = GLG_ALCHEMY, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 6; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 6; end },
					{ text = GLG_ENCHANTING, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 8; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 8; end },
					{ text = PROFESSIONS_COOKING, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 5; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 5; end },
					{ text = PROFESSIONS_FIRST_AID, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 7; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 7; end },
					{ text = PROFESSIONS_FISHING, func = function() GLOptions["type"] = 9; GLOptions["subtype"] = 9; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 9; end },
				}
			},
			{ text = GLG_QUEST, func = function() GLOptions["type"] = 12; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 12; end },
			{ text = GLG_KEY, func = function() GLOptions["type"] = 13; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 13; end },
			{ text = AUCTION_CATEGORY_PROJECTILE, func = function() GLOptions["type"] = 6; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 6; end, hasArrow = true,
				menuList = {
					{ text = ALL, func = function() GLOptions["type"] = 6; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == -1; end },
					{ text = GLG_ARROW, func = function() GLOptions["type"] = 6; GLOptions["subtype"] = 2; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 2; end },
					{ text = AUCTION_CATEGORY_PROJECTILE, func = function() GLOptions["type"] = 6; GLOptions["subtype"] = 3; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 3; end },
				}
			},
			{ text = AUCTION_CATEGORY_QUIVER, func = function() GLOptions["type"] = 11; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 11; end, hasArrow = true,
				menuList = {
					{ text = ALL, func = function() GLOptions["type"] = 11; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == -1; end },
					{ text = AUCTION_CATEGORY_QUIVER, func = function() GLOptions["type"] = 11; GLOptions["subtype"] = 2; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 2; end },
					{ text = GLG_AMMOPOUCH, func = function() GLOptions["type"] = 11; GLOptions["subtype"] = 3; CloseDropDownMenus(); end, checked = function() return GLOptions["subtype"] == 3; end },
				}
			},
			{ text = MISCELLANEOUS, func = function() GLOptions["type"] = 15; GLOptions["subtype"] = -1; CloseDropDownMenus(); end, checked = function() return GLOptions["type"] == 15; end },
		},
	},
	{ text = RARITY, hasArrow = true,
		menuList = {
			{ text = ITEM_QUALITY0_DESC, func = function() GLOptions["quality"] = 1; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 1; end },
			{ text = ITEM_QUALITY1_DESC, func = function() GLOptions["quality"] = 2; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 2; end },
			{ text = ITEM_QUALITY2_DESC, func = function() GLOptions["quality"] = 3; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 3; end },
			{ text = ITEM_QUALITY3_DESC, func = function() GLOptions["quality"] = 4; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 4; end },
			{ text = ITEM_QUALITY4_DESC, func = function() GLOptions["quality"] = 5; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 5; end },
			{ text = ITEM_QUALITY5_DESC, func = function() GLOptions["quality"] = 6; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 6; end },
			{ text = ITEM_QUALITY6_DESC, func = function() GLOptions["quality"] = 7; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 7; end },
			{ text = ITEM_QUALITY8_DESC, func = function() GLOptions["quality"] = 8; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 8; end },
		},
	},
	{ text = AH_EXACT_MATCH, hasArrow = true,
		menuList = {
			{ text = YES, func = function() GLOptions["extra"] = 1; CloseDropDownMenus(); end, checked = function() return GLOptions["extra"] == 1; end },
			{ text = NO, func = function() GLOptions["extra"] = 0; CloseDropDownMenus(); end, checked = function() return GLOptions["extra"] == 0; end },
		},
	},
	{ text = CANCEL },
}

local GetLinkGuiMode_Menu = CreateFrame("Frame", nil, glg, "UIDropDownMenuTemplate");

local function GetLinkGui_Mode()
	EasyMenu(GetLinkGuiMode_MenuList, GetLinkGuiMode_Menu, "cursor", 0 , 0, "MENU");
end

local glg = CreateFrame("Frame", "GetLinkGui", UIParent);
glg:SetSize(396, 230);
glg:ClearAllPoints();
glg:SetPoint("CENTER");
glg:SetClampedToScreen(true);
glg:EnableMouse(true);
glg:SetMovable(true);
glg:RegisterForDrag("LeftButton");
glg:SetScript("OnDragStart", function(self) self:StartMoving() end);
glg:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end);
tinsert(UISpecialFrames, glg:GetName());
glg:Hide();

glg.bg = glg:CreateTexture();
glg.bg:ClearAllPoints();
glg.bg:SetAllPoints(glg);
glg.bg:SetColorTexture(0, 0, 0, 0.5);

glg.tittlebg = glg:CreateTexture();
glg.tittlebg:ClearAllPoints();
glg.tittlebg:SetPoint("TOPLEFT", glg, "TOPLEFT", 0, 0);
glg.tittlebg:SetWidth(396);
glg.tittlebg:SetHeight(18);
glg.tittlebg:SetColorTexture(0, 0, 0, 0.5);

glg.tittletext = glg:CreateFontString(nil, nil, "GameFontNormalLarge");
glg.tittletext:ClearAllPoints();
glg.tittletext:SetPoint("LEFT", glg.tittlebg, "LEFT", 3, 0);
glg.tittletext:SetText("Get Link Classic");
glg.tittletext:SetTextColor(1, 1, 1);

glg.close = CreateFrame("Button", nil, glg, "UIPanelCloseButton");
glg.close:ClearAllPoints();
glg.close:SetPoint("RIGHT", glg.tittlebg, "RIGHT", 3, 0);
glg.close:SetSize(24, 24);

glg.setting = CreateFrame("Button", nil, glg);
glg.setting:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton");
glg.setting:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Round");
glg.setting:SetWidth(14);
glg.setting:SetHeight(14);
glg.setting:ClearAllPoints();
glg.setting:SetPoint("RIGHT", glg.close, "LEFT", -2, 0);
glg.setting:SetScript("OnClick", function()
    GetLinkGui_Mode();
end);

glg.keyword = glg:CreateFontString(nil, nil, "GameFontNormalLarge");
glg.keyword:ClearAllPoints();
glg.keyword:SetPoint("BOTTOM", glg, "BOTTOMLEFT", 40, 18);
-- glg.keyword:SetWidth(49);
glg.keyword:SetText(GLG_KEYWORD);
glg.keyword:SetTextColor(1, 1, 1);

local keywords = "";
glg.keywordtext = CreateFrame("EditBox", nil, glg, "InputBoxTemplate");
glg.keywordtext:ClearAllPoints();
glg.keywordtext:SetPoint("LEFT", glg.keyword, "CENTER", 34, 0);
glg.keywordtext:SetWidth(250);
glg.keywordtext:SetHeight(25);
glg.keywordtext:SetAutoFocus(false);
glg.keywordtext:ClearFocus();
glg.keywordtext:SetScript("OnEnterPressed", function(self)
	keywords = self:GetText();
	self:SetText(keywords);
	self:ClearFocus();
	GetLink_Command(keywords);
	glg.scrollbar:SetValue(glg.message.listLen);
end)
glg.keywordtext:SetScript("OnEscapePressed", function(self)
	keywords = self:GetText();
	self:SetText(keywords);
	self:ClearFocus();
end)
glg.keywordtext:SetScript("OnEditFocusLost", function(self)
	keywords = self:GetText();
	self:SetText(keywords);
	self:ClearFocus();
end)
glg.keywordtext:SetScript("OnShow", function(self)
	self:SetText(keywords);
end)

glg.search = CreateFrame("Button", nil, glg, "OptionsButtonTemplate");
glg.search:ClearAllPoints();
glg.search:SetPoint("LEFT", glg.keywordtext, "RIGHT", 4, 0);
glg.search:SetWidth(55);
glg.search:SetHeight(25);
glg.search:SetText(SEARCH);
glg.search:SetScript("OnClick", function(self)
	keywords = glg.keywordtext:GetText();
	glg.keywordtext:SetText(keywords);
	glg.keywordtext:ClearFocus();
	GetLink_Command(keywords);
	glg.scrollbar:SetValue(glg.message.listLen);
end)

glg.message = CreateFrame("ScrollingMessageFrame", nil, glg);
glg.message.listLen = 0;
glg.message:SetFrameLevel(glg:GetFrameLevel()+1);
glg.message:ClearAllPoints();
glg.message:SetPoint("CENTER", glg, "CENTER", -10, 7);
glg.message:SetSize(344, 150);
glg.message:SetResizable(true);
glg.message:SetFontObject(GameFontNormal);
glg.message:SetTextColor(1, 1, 1, 1);
glg.message:SetJustifyH("LEFT");
glg.message:SetFading(false);
glg.message:SetMaxLines(99999);
glg.message:SetHyperlinksEnabled(true);
glg.message:SetScript("OnHyperlinkClick", ChatFrame_OnHyperlinkShow);
glg.message:SetScript("OnMouseWheel", function(self, delta)
	local cur_val = math.floor(glg.scrollbar:GetValue());
	local min_val, max_val = 0, glg.message.listLen;

	if delta < 0 and cur_val < max_val then
		cur_val = math.min(max_val, cur_val + 1);
		glg.scrollbar:SetValue(cur_val);
	elseif delta > 0 and cur_val > min_val then
		cur_val = math.max(min_val, cur_val - 1);
		glg.scrollbar:SetValue(cur_val);
	end
end)

-- glg.messagebg = glg:CreateTexture();
-- glg.messagebg:ClearAllPoints();
-- glg.messagebg:SetAllPoints(glg.message);
-- glg.messagebg:SetColorTexture(0, 0, 0, 0.1);

glg.scrollbar = CreateFrame("Slider", nil, glg, "UIPanelScrollBarTemplate");
glg.scrollbar:ClearAllPoints();
glg.scrollbar:SetPoint("LEFT", glg.message, "RIGHT", 4, 1);
glg.scrollbar:SetSize(16, 117);
glg.scrollbar:SetMinMaxValues(0, 999);
glg.scrollbar:SetValueStep(1);
glg.scrollbar:SetScript("OnValueChanged", function(self, value)
	glg.message:SetScrollOffset(glg.message.listLen - math.floor(value));
end)
glg.scrollbar:SetValue(0);

function GLG_SlashHandler()
	if not glg:IsShown() then
		glg:Show();
	else
		glg:Hide();
	end
end

SlashCmdList["GLG"] = GLG_SlashHandler;
SLASH_GLG1 = "/glg";
