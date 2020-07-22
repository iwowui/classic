local void, ConvertRatings = ...
local function localeFunc(L, key) return key end
local L = setmetatable({}, {__index = localeFunc})
ConvertRatings.L = L

local LOCALE = GetLocale()

if LOCALE == "enUS" then
	-- English translations go here
	L["DODGE"] = "Dodge"
	L["CRIT"] = "Crit"
	L["AP"] = "AP"
	L["BLOCK"] = "Block"
	L["SPELLCRIT"] = "Spell Crit"
	L["MANA"] = "Mana"
	L["HEALTH"] = "Health"
	L["MANAREGEN"] = "Mana Regen"
	L["MITIGATION"] = "Mitigation"
	L["ARMOR"] = "Physical Reduction"
return end

if LOCALE == "zhCN" then
	-- Simplified Chinese translations go here
	L["DODGE"] = "躲闪"
	L["CRIT"] = "爆击"
	L["AP"] = "攻强"
	L["BLOCK"] = "格挡"
	L["SPELLCRIT"] = "法术爆击"
	L["MANA"] = "法力值"
	L["HEALTH"] = "生命值"
	L["MANAREGEN"] = "法力恢复"
	L["MITIGATION"] = "减免"
	L["ARMOR"] = "物理减伤"
return end

if LOCALE == "zhTW" then
	-- Traditional Chinese translations go here
	L["DODGE"] = "閃躲"
	L["CRIT"] = "致命"
	L["AP"] = "攻強"
	L["BLOCK"] = "格擋"
	L["SPELLCRIT"] = "法術致命"
	L["MANA"] = "法力"
	L["HEALTH"] = "生命值"
	L["MANAREGEN"] = "法力恢復"
	L["MITIGATION"] = "減緩"
	L["ARMOR"] = "物理減傷"
return end