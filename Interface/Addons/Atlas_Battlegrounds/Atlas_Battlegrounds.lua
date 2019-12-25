-- $Id: Atlas_Battlegrounds.lua 1561 2019-09-07 08:51:31Z arith $
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert at gmail dot com>
	Copyright 2010 - Lothaer <lothayer at gmail dot com>, Atlas Team
	Copyright 2011 ~ 2019 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]
local FOLDER_NAME, private = ...

local _G = getfenv(0)
local LibStub = _G.LibStub
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")

local BZ = Atlas_GetLocaleLibBabble("LibBabble-SubZone-3.0")
local BF = Atlas_GetLocaleLibBabble("LibBabble-Faction-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("Atlas_Battlegrounds")
local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")

local BLUE = "|cff6666ff"
local GREN = "|cff66cc33"
local LBLU = "|cff33cccc"
local _RED = "|cffcc3333"
local ORNG = "|cffcc9933"
local PINK = "|ccfcc33cc"
local PURP = "|cff9900ff"
local WHIT = "|cffffffff"
local YLOW = "|cffcccc33"
local INDENT = "      "
local BULLET = " - "

local myCategory = L["Battleground Maps"]

local myData = {
	AlteracValleyNorth = {
		ZoneName = { BZ["Alterac Valley"]..ALC["L-Parenthesis"]..ALC["North"]..ALC["Comma"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
		Location = { BZ["Alterac Mountains"] },
		LevelRange = "45-84"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."85",
		MinLevel = "45",
		PlayerLimit = "40",
		Acronym = L["AV"],
		WorldMapID = 91,
		Faction = "Alliance",
		{ ORNG..REPUTATION..ALC["Colon"]..BF["Stormpike Guard"] },
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B) "..BZ["Dun Baldar"], 10002 },
		{ _RED.." 1) "..L["Stormpike Aid Station"], 10020 },
		{ _RED.." 2) "..BZ["Stormpike Graveyard"], 10021 },
		{ _RED.." 3) "..BZ["Stonehearth Graveyard"], 10022 },
		{ _RED.." 4) "..BZ["Snowfall Graveyard"], 10023 },
		{ ORNG.." 5) "..L["Dun Baldar North Bunker"], 10003 },
		{ WHIT..INDENT..L["Wing Commander Mulverick"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		{ ORNG.." 6) "..L["Dun Baldar South Bunker"], 10004 },
		{ ORNG.." 7) "..BZ["Icewing Bunker"], 10007 },
		{ WHIT..INDENT..L["Wing Commander Guse"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		{ ORNG.." 8) "..BZ["Stonehearth Outpost"], 10008 },
		{ ORNG.." 9) "..BZ["Stonehearth Bunker"], 10009 },
		{ WHIT.."10) "..BZ["Irondeep Mine"], 10012 },
		{ WHIT.."11) "..BZ["Icewing Cavern"], 10005 },
		{ WHIT.."12) "..L["Steamsaw"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		{ WHIT.."13) "..L["Wing Commander Jeztor"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		{ WHIT.."14) "..L["Ivus the Forest Lord"]..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 10019 },
	},
	AlteracValleySouth = {
		ZoneName = { BZ["Alterac Valley"]..ALC["L-Parenthesis"]..ALC["South"]..ALC["Comma"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		Location = { BZ["Hillsbrad Foothills"] },
		LevelRange = "45-84"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."85",
		MinLevel = "45",
		PlayerLimit = "40",
		Acronym = L["AV"],
		WorldMapID = 91,
		Faction = "Horde",
		{ ORNG..REPUTATION..ALC["Colon"]..BF["Frostwolf Clan"] },
		{ BLUE.." A) "..ALC["Entrance"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10001 },
		{ BLUE.." B) "..BZ["Frostwolf Keep"], 10002 },
		{ _RED.." 1) "..L["Frostwolf Relief Hut"], 10017 },
		{ _RED.." 2) "..BZ["Frostwolf Graveyard"], 10016 },
		{ _RED.." 3) "..BZ["Iceblood Graveyard"], 10015 },
		{ ORNG.." 4) "..L["West Frostwolf Tower"], 10006 },
		{ ORNG.." 5) "..L["East Frostwolf Tower"], 10007 },
		{ WHIT..INDENT..L["Wing Commander Ichman"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
		{ ORNG.." 6) "..L["Tower Point"], 10005 },
		{ WHIT..INDENT..L["Wing Commander Slidore"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
		{ ORNG.." 7) "..L["Iceblood Tower"], 10004 },
		{ ORNG.." 8) "..BZ["Iceblood Garrison"], 10003 },
		{ WHIT.." 9) "..BZ["Wildpaw Cavern"], 10008 },
		{ WHIT.."10) "..L["Frostwolf Wolf Rider Commander"] },
		{ WHIT.."11) "..L["Wing Commander Vipore"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10011 },
		{ WHIT.."12) "..BZ["Coldtooth Mine"], 10009 },
		{ WHIT.."13) "..L["Steamsaw"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
		{ WHIT.."14) "..L["Lokholar the Ice Lord"]..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 10010 },
	},
	ArathiBasin = {
		ZoneName = { BZ["Arathi Basin"] },
		Location = { BZ["Arathi Highlands"] },
		LevelRange = "10-84"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."85",
		MinLevel = "10",
		PlayerLimit = "15",
		Acronym = L["AB"],
		WorldMapID = 93,
		{ ORNG..REPUTATION..ALC["Colon"]..BF["The League of Arathor"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
		{ ORNG..REPUTATION..ALC["Colon"]..BF["The Defilers"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		{ BLUE.."A) "..BZ["Trollbane Hall"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
		{ BLUE.."B) "..BZ["Defiler's Den"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
		{ WHIT.."1) "..BZ["Stables"], 10003 },
		{ WHIT.."2) "..BZ["Gold Mine"], 10004 },
		{ WHIT.."3) "..BZ["Blacksmith"], 10005 },
		{ WHIT.."4) "..BZ["Lumber Mill"], 10006 },
		{ WHIT.."5) "..BZ["Farm"], 10007 },
	},
	WarsongGulch = {
		ZoneName = { BZ["Warsong Gulch"] },
		Location = { BZ["Ashenvale"]..ALC["Slash"]..BZ["Northern Barrens"] },
		LevelRange = "10-84"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."85",
		MinLevel = "10",
		PlayerLimit = "10",
		Acronym = L["WSG"],
		WorldMapID = 92,
		{ ORNG..REPUTATION..ALC["Colon"]..BF["Silverwing Sentinels"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
		{ ORNG..REPUTATION..ALC["Colon"]..BF["Warsong Outriders"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		{ BLUE.."A) "..BZ["Silverwing Hold"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
		{ BLUE.."B) "..BZ["Warsong Lumber Mill"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
	},
}

local myDB = {
}

Atlas:RegisterPlugin("Atlas_Battlegrounds", myCategory, myData, myDB)
