-- $Id: Atlas_Battlegrounds.lua 1565 2020-01-15 15:56:04Z arith $
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert at gmail dot com>
	Copyright 2010 - Lothaer <lothayer at gmail dot com>, Atlas Team
	Copyright 2011 ~ 2020 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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
local _G = getfenv(0)

-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local FOLDER_NAME, private = ...

private.addon_name = "Atlas_Battlegrounds"
private.category = "Battleground Maps"

local LibStub = _G.LibStub
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")

local BZ = Atlas_GetLocaleLibBabble("LibBabble-SubZone-3.0")
local BF = Atlas_GetLocaleLibBabble("LibBabble-Faction-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")

local WoWClassic = select(4, GetBuildInfo()) < 20000
local db = {}
private.db = db

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

db.category = L[private.category]

if (WoWClassic) then
	db.maps = {
		AlteracValleyNorth = {
			ZoneName = { BZ["Alterac Valley"]..ALC["L-Parenthesis"]..ALC["North"]..ALC["Comma"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			Location = { BZ["Alterac Mountains"] },
			LevelRange = "51-60",
			PlayerLimit = { 40 },
			Acronym = L["AV"],
			WorldMapID = 91,
			Faction = "Alliance",
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Stormpike Guard"] },
			{ BLUE.."A) "..ALC["Entrance"], 10001 },
			{ BLUE.."B) "..BZ["Dun Baldar"], 10002 },
			{ GREN..INDENT..L["Vanndar Stormpike <Stormpike General>"] },
			{ GREN..INDENT..L["Prospector Stonehewer"] },
			{ _RED.."1) "..L["Dun Baldar North Bunker"], 10003 },
			{ GREN..INDENT..L["Wing Commander Mulverick"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ _RED.."2) "..L["Dun Baldar South Bunker"], 10004 },
			{ GREN..INDENT..L["Gaelden Hammersmith <Stormpike Supply Officer>"] },
			{ _RED.."3) "..BZ["Icewing Cavern"], 10005 },
			{ GREN..INDENT..L["Stormpike Banner"] },
			{ _RED.."4) "..L["Stormpike Lumber Yard"], 10006 },
			{ GREN..INDENT..L["Wing Commander Jeztor"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ _RED.."5) "..BZ["Icewing Bunker"], 10007 },
			{ GREN..INDENT..L["Wing Commander Guse"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ _RED.."6) "..BZ["Stonehearth Outpost"], 10008 },
			{ GREN..INDENT..L["Captain Balinda Stonehearth <Stormpike Captain>"] },
			{ _RED.."7) "..BZ["Stonehearth Bunker"], 10009 },
			{ _RED.."8) "..L["Western Crater"], 10010 },
			{ GREN..INDENT..L["Vipore's Beacon"] },
			{ GREN..INDENT..L["Jeztor's Beacon"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ _RED.."9) "..L["Eastern Crater"], 10011 },
			{ GREN..INDENT..L["Slidore's Beacon"] },
			{ GREN..INDENT..L["Guse's Beacon"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ GREN.."1) "..BZ["Irondeep Mine"], 10012 },
			{ GREN.."1') "..L["Arch Druid Renferal"], 10013 },
			{ GREN.."2') "..L["Murgot Deepforge"], 10014 },
			{ GREN..INDENT..L["Lana Thunderbrew <Blacksmithing Supplies>"] },
			{ GREN.."3') "..L["Stormpike Stable Master <Stable Master>"], 10015 },
			{ GREN..INDENT..L["Stormpike Ram Rider Commander"] },
			{ GREN..INDENT..L["Svalbrad Farmountain <Trade Goods>"] },
			{ GREN..INDENT..L["Kurdrum Barleybeard <Reagents & Poison Supplies>"] },
			{ GREN.."4') "..L["Stormpike Quartermaster"], 10016 },
			{ GREN..INDENT..L["Jonivera Farmountain <General Goods>"] },
			{ GREN..INDENT..L["Brogus Thunderbrew <Food & Drink>"] },
			{ GREN.."5') "..L["Wing Commander Ichman"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"], 10017 },
			{ GREN..INDENT..L["Wing Commander Slidore"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"] },
			{ GREN..INDENT..L["Wing Commander Vipore"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"] },
			{ GREN.."6') "..L["Stormpike Ram Rider Commander"], 10018 },
			{ GREN.."7') "..L["Ivus the Forest Lord"]..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 10019 },
			{ ORNG.."1) "..L["Stormpike Aid Station"], 10020 },
			{ ORNG.."2) "..BZ["Stormpike Graveyard"], 10021 },
			{ ORNG.."3) "..BZ["Stonehearth Graveyard"], 10022 },
			{ ORNG.."4) "..BZ["Snowfall Graveyard"], 10023 },
			{ GREN..INDENT..L["Ichman's Beacon"] },
			{ GREN..INDENT..L["Mulverick's Beacon"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		},
		AlteracValleySouth = {
			ZoneName = { BZ["Alterac Valley"]..ALC["L-Parenthesis"]..ALC["South"]..ALC["Comma"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			Location = { BZ["Hillsbrad Foothills"] },
			LevelRange = "51-60",
			PlayerLimit = { 40 },
			Acronym = L["AV"],
			WorldMapID = 91,
			Faction = "Horde",
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Frostwolf Clan"] },
			{ BLUE.."A) "..ALC["Entrance"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..BZ["Frostwolf Keep"], 10002 },
			{ GREN..INDENT..L["Drek'Thar <Frostwolf General>"] },
			{ _RED.."1) "..BZ["Iceblood Garrison"], 10003 },
			{ GREN..INDENT..L["Captain Galvangar <Frostwolf Captain>"] },
			{ _RED.."2) "..L["Iceblood Tower"], 10004 },
			{ _RED.."3) "..L["Tower Point"], 10005 },
			{ GREN..INDENT..L["Wing Commander Slidore"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ _RED.."4) "..L["West Frostwolf Tower"], 10006 },
			{ GREN..INDENT..L["Wing Commander Ichman"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ _RED.."5) "..L["East Frostwolf Tower"], 10007 },
			{ _RED.."6) "..BZ["Wildpaw Cavern"], 10008 },
			{ GREN..INDENT..L["Frostwolf Banner"] },
			{ GREN.."1) "..BZ["Coldtooth Mine"], 10009 },
			{ GREN.."1') "..L["Lokholar the Ice Lord"]..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 10010 },
			{ GREN.."2') "..L["Wing Commander Vipore"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10011 },
			{ GREN..INDENT..L["Jotek"] },
			{ GREN..INDENT..L["Smith Regzar"] },
			{ GREN..INDENT..L["Primalist Thurloga"] },
			{ GREN.."3') "..L["Frostwolf Stable Master <Stable Master>"], 10012 },
			{ GREN..INDENT..L["Frostwolf Wolf Rider Commander"] },
			{ GREN.."4') "..L["Frostwolf Quartermaster"], 10013 },
			{ GREN.."5') "..L["Wing Commander Guse"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"], 10014 },
			{ GREN..INDENT..L["Wing Commander Jeztor"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"] },
			{ GREN..INDENT..L["Wing Commander Mulverick"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"] },
			{ ORNG.."1) "..BZ["Iceblood Graveyard"], 10015 },
			{ ORNG.."2) "..BZ["Frostwolf Graveyard"], 10016 },
			{ ORNG.."3) "..L["Frostwolf Relief Hut"], 10017 },
		},
		ArathiBasin = {
			ZoneName = { BZ["Arathi Basin"] },
			Location = { BZ["Arathi Highlands"] },
			LevelRange = "20-60",
			PlayerLimit = { 15 },
			Acronym = L["AB"],
			WorldMapID = 93,
			{ ORNG..REPUTATION..ALC["Colon"]..BF["The League of Arathor"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ ORNG..REPUTATION..ALC["Colon"]..BF["The Defilers"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ BLUE.."A) "..BZ["Trollbane Hall"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..BZ["Defiler's Den"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
			{ GREN.."1) "..BZ["Stables"], 10003 },
			{ GREN.."2) "..BZ["Gold Mine"], 10004 },
			{ GREN.."3) "..BZ["Blacksmith"], 10005 },
			{ GREN.."4) "..BZ["Lumber Mill"], 10006 },
			{ GREN.."5) "..BZ["Farm"], 10007 },
		},
		WarsongGulch = {
			ZoneName = { BZ["Warsong Gulch"] },
			Location = { BZ["Ashenvale"]..ALC["Slash"]..BZ["Northern Barrens"] },
			LevelRange = "10-60",
			PlayerLimit = { 10 },
			Acronym = L["WSG"],
			WorldMapID = 92,
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Silverwing Sentinels"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Warsong Outriders"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ BLUE.."A) "..BZ["Silverwing Hold"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..BZ["Warsong Lumber Mill"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
		},
	}
	db.coords = {
		AlteracValleyNorth = {
			{  "A", 10001, 368, 25 }, -- Entrance
			{  "B", 10002, 166, 65 }, -- Dun Baldar
			{  "1", 10003, 217, 69 }, -- Dun Baldar North Bunker
			{  "2", 10004, 197, 120 }, -- Dun Baldar South Bunker
			{  "3", 10005, 180, 229 }, -- Icewing Cavern
			{  "4", 10006, 371, 218 }, -- Stormpike Lumber Yard
			{  "5", 10007, 315, 268 }, -- Icewing Bunker
			{  "6", 10008, 282, 372 }, -- Stonehearth Outpost
			{  "7", 10009, 350, 427 }, -- Stonehearth Bunker
			{  "8", 10010, 268, 459 }, -- Western Crater
			{  "9", 10011, 294, 482 }, -- Eastern Crater
			{  "1", 10012, 297, 14 }, -- Irondeep Mine
			{ "1'", 10013, 194, 48 }, -- Arch Druid Renferal
			{ "2'", 10014, 186, 83 }, -- Murgot Deepforge
			{ "3'", 10015, 159, 102 }, -- Stormpike Stable Master <Stable Master>
			{ "4'", 10016, 178, 105 }, -- Stormpike Quartermaster
			{ "5'", 10017, 178, 120 }, -- Wing Commander Ichman
			{ "6'", 10018, 301, 353 }, -- Stormpike Ram Rider Commander
			{ "7'", 10019, 309, 445 }, -- Ivus the Forest Lord
			{  "1", 10020, 138, 82 }, -- Stormpike Aid Station
			{  "2", 10021, 318, 73 }, -- Stormpike Graveyard
			{  "3", 10022, 371, 328 }, -- Stonehearth Graveyard
			{  "4", 10023, 144, 428 }, -- Snowfall Graveyard
		},
		AlteracValleySouth = {
			{  "A", 10001, 355, 427 }, -- Entrance
			{  "B", 10002, 220, 426 }, -- Frostwolf Keep
			{  "1", 10003, 197, 65 }, -- Iceblood Garrison
			{  "2", 10004, 237, 81 }, -- Iceblood Tower
			{  "3", 10005, 281, 166 }, -- Tower Point
			{  "4", 10006, 241, 395 }, -- West Frostwolf Tower
			{  "5", 10007, 260, 395 }, -- East Frostwolf Tower
			{  "6", 10008, 323, 436 }, -- Wildpaw Cavern
			{  "1", 10009, 206, 244 }, -- Coldtooth Mine
			{ "1'", 10010, 168, 5 }, -- Lokholar the Ice Lord
			{ "2'", 10011, 276, 366 }, -- Wing Commander Vipore
			{ "3'", 10012, 402, 375 }, -- Frostwolf Stable Master <Stable Master>
			{ "4'", 10013, 204, 390 }, -- Frostwolf Quartermaster
			{ "5'", 10014, 268, 413 }, -- Wing Commander Guse
			{  "1", 10015, 299, 65 }, -- Iceblood Graveyard
			{  "2", 10016, 234, 303 }, -- Frostwolf Graveyard
			{  "3", 10017, 265, 476 }, -- Frostwolf Relief Hut
		},
		ArathiBasin = {
			{ "A", 10001, 95, 93 }, -- Trollbane Hall
			{ "B", 10002, 409, 400 }, -- Defiler's Den
			{ "1", 10003, 164, 156 }, -- Stables
			{ "2", 10004, 340, 157 }, -- Gold Mine
			{ "3", 10005, 255, 248 }, -- Blacksmith
			{ "4", 10006, 164, 336 }, -- Lumber Mill
			{ "5", 10007, 329, 334 }, -- Farm
		},
		WarsongGulch = {
			{ "A", 10001, 238, 96 }, -- Silverwing Hold
			{ "B", 10002, 256, 365 }, -- Warsong Lumber Mill
		},
	}
else
	db.maps = {
		AlteracValleyNorth = {
			ZoneName = { BZ["Alterac Valley"]..ALC["L-Parenthesis"]..ALC["North"]..ALC["Comma"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			Location = { BZ["Alterac Mountains"] },
			LevelRange = "20-160"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			MinLevel = "20",
			PlayerLimit = {40},
			Acronym = L["AV"],
			WorldMapID = 91,
			Faction = "Alliance",
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Stormpike Guard"] },
			{ BLUE.."A) "..ALC["Entrance"], 10001 },
			{ BLUE.."B) "..BZ["Dun Baldar"], 10002 },
			{ GREN..INDENT..L["Vanndar Stormpike <Stormpike General>"] },
			{ GREN..INDENT..L["Prospector Stonehewer"] },
			{ _RED.."1) "..L["Dun Baldar North Bunker"], 10003 },
			{ GREN..INDENT..L["Wing Commander Mulverick"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ _RED.."2) "..L["Dun Baldar South Bunker"], 10004 },
			{ GREN..INDENT..L["Gaelden Hammersmith <Stormpike Supply Officer>"] },
			{ _RED.."3) "..BZ["Icewing Cavern"], 10005 },
			{ GREN..INDENT..L["Stormpike Banner"] },
			{ _RED.."4) "..L["Stormpike Lumber Yard"], 10006 },
			{ GREN..INDENT..L["Wing Commander Jeztor"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ _RED.."5) "..BZ["Icewing Bunker"], 10007 },
			{ GREN..INDENT..L["Wing Commander Guse"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ _RED.."6) "..BZ["Stonehearth Outpost"], 10008 },
			{ GREN..INDENT..L["Captain Balinda Stonehearth <Stormpike Captain>"] },
			{ _RED.."7) "..BZ["Stonehearth Bunker"], 10009 },
			{ _RED.."8) "..L["Western Crater"], 10010 },
			{ GREN..INDENT..L["Vipore's Beacon"] },
			{ GREN..INDENT..L["Jeztor's Beacon"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ _RED.."9) "..L["Eastern Crater"], 10011 },
			{ GREN..INDENT..L["Slidore's Beacon"] },
			{ GREN..INDENT..L["Guse's Beacon"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ GREN.."1) "..BZ["Irondeep Mine"], 10012 },
			{ GREN.."1') "..L["Arch Druid Renferal"], 10013 },
			{ GREN.."2') "..L["Murgot Deepforge"], 10014 },
			{ GREN..INDENT..L["Lana Thunderbrew <Blacksmithing Supplies>"] },
			{ GREN.."3') "..L["Stormpike Stable Master <Stable Master>"], 10015 },
			{ GREN..INDENT..L["Stormpike Ram Rider Commander"] },
			{ GREN..INDENT..L["Svalbrad Farmountain <Trade Goods>"] },
			{ GREN..INDENT..L["Kurdrum Barleybeard <Reagents & Poison Supplies>"] },
			{ GREN.."4') "..L["Stormpike Quartermaster"], 10016 },
			{ GREN..INDENT..L["Jonivera Farmountain <General Goods>"] },
			{ GREN..INDENT..L["Brogus Thunderbrew <Food & Drink>"] },
			{ GREN.."5') "..L["Wing Commander Ichman"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"], 10017 },
			{ GREN..INDENT..L["Wing Commander Slidore"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"] },
			{ GREN..INDENT..L["Wing Commander Vipore"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"] },
			{ GREN.."6') "..L["Stormpike Ram Rider Commander"], 10018 },
			{ GREN.."7') "..L["Ivus the Forest Lord"]..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 10019 },
			{ ORNG.."1) "..L["Stormpike Aid Station"], 10020 },
			{ ORNG.."2) "..BZ["Stormpike Graveyard"], 10021 },
			{ ORNG.."3) "..BZ["Stonehearth Graveyard"], 10022 },
			{ ORNG.."4) "..BZ["Snowfall Graveyard"], 10023 },
			{ GREN..INDENT..L["Ichman's Beacon"] },
			{ GREN..INDENT..L["Mulverick's Beacon"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
		},
		AlteracValleySouth = {
			ZoneName = { BZ["Alterac Valley"]..ALC["L-Parenthesis"]..ALC["South"]..ALC["Comma"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			Location = { BZ["Hillsbrad Foothills"] },
			LevelRange = "20-160"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			MinLevel = "20",
			PlayerLimit = {40},
			Acronym = L["AV"],
			WorldMapID = 91,
			Faction = "Horde",
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Frostwolf Clan"] },
			{ BLUE.."A) "..ALC["Entrance"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..BZ["Frostwolf Keep"], 10002 },
			{ GREN..INDENT..L["Drek'Thar <Frostwolf General>"] },
			{ _RED.."1) "..BZ["Iceblood Garrison"], 10003 },
			{ GREN..INDENT..L["Captain Galvangar <Frostwolf Captain>"] },
			{ _RED.."2) "..L["Iceblood Tower"], 10004 },
			{ _RED.."3) "..L["Tower Point"], 10005 },
			{ GREN..INDENT..L["Wing Commander Slidore"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ _RED.."4) "..L["West Frostwolf Tower"], 10006 },
			{ GREN..INDENT..L["Wing Commander Ichman"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ _RED.."5) "..L["East Frostwolf Tower"], 10007 },
			{ _RED.."6) "..BZ["Wildpaw Cavern"], 10008 },
			{ GREN..INDENT..L["Frostwolf Banner"] },
			{ GREN.."1) "..BZ["Coldtooth Mine"], 10009 },
			{ GREN.."1') "..L["Lokholar the Ice Lord"]..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 10010 },
			{ GREN.."2') "..L["Wing Commander Vipore"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10011 },
			{ GREN..INDENT..L["Jotek"] },
			{ GREN..INDENT..L["Smith Regzar"] },
			{ GREN..INDENT..L["Primalist Thurloga"] },
			{ GREN.."3') "..L["Frostwolf Stable Master <Stable Master>"], 10012 },
			{ GREN..INDENT..L["Frostwolf Wolf Rider Commander"] },
			{ GREN.."4') "..L["Frostwolf Quartermaster"], 10013 },
			{ GREN.."5') "..L["Wing Commander Guse"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"], 10014 },
			{ GREN..INDENT..L["Wing Commander Jeztor"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"] },
			{ GREN..INDENT..L["Wing Commander Mulverick"]..ALC["L-Parenthesis"]..L["Rescued"]..ALC["R-Parenthesis"] },
			{ ORNG.."1) "..BZ["Iceblood Graveyard"], 10015 },
			{ ORNG.."2) "..BZ["Frostwolf Graveyard"], 10016 },
			{ ORNG.."3) "..L["Frostwolf Relief Hut"], 10017 },
		},
		ArathiBasin = {
			ZoneName = { BZ["Arathi Basin"] },
			Location = { BZ["Arathi Highlands"] },
			LevelRange = "10-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			MinLevel = "10",
			PlayerLimit = {15},
			Acronym = L["AB"],
			WorldMapID = 93,
			{ ORNG..REPUTATION..ALC["Colon"]..BF["The League of Arathor"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ ORNG..REPUTATION..ALC["Colon"]..BF["The Defilers"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ BLUE.."A) "..BZ["Trollbane Hall"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..BZ["Defiler's Den"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
			{ GREN.."1) "..BZ["Stables"], 10003 },
			{ GREN.."2) "..BZ["Gold Mine"], 10004 },
			{ GREN.."3) "..BZ["Blacksmith"], 10005 },
			{ GREN.."4) "..BZ["Lumber Mill"], 10006 },
			{ GREN.."5) "..BZ["Farm"], 10007 },
		},
		WarsongGulch = {
			ZoneName = { BZ["Warsong Gulch"] },
			Location = { BZ["Ashenvale"]..ALC["Slash"]..BZ["Northern Barrens"] },
			LevelRange = "10-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			MinLevel = "10",
			PlayerLimit = {10},
			Acronym = L["WSG"],
			WorldMapID = 92,
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Silverwing Sentinels"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Warsong Outriders"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ BLUE.."A) "..BZ["Silverwing Hold"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..BZ["Warsong Lumber Mill"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
		},
		SilithystMustFlow = {
			ZoneName = { BZ["Silithus"]..ALC["Hyphen"]..L["The Silithyst Must Flow"] },
			Location = { BZ["Silithus"] },
			LevelRange = "55-85",
			MinLevel = "55",
			WorldMapID = 81,
			{ ORNG..PVP..ALC["Colon"]..L["The Silithyst Must Flow"] },
			{ BLUE.."A) "..BZ["Cenarion Hold"], 10001 },
			{ BLUE.."B) "..L["Alliance's Camp"], 10002 },
			{ BLUE.."C) "..L["Horde's Camp"], 10003 },
		},
		EyeOfTheStorm = {
			ZoneName = { BZ["Eye of the Storm"] },
			Location = { BZ["Netherstorm"] },
			LevelRange = "15-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			PlayerLimit = {15},
			Acronym = L["EotS"],
			WorldMapID = 112,
			{ BLUE.."A) "..ALC["Entrance"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..ALC["Entrance"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
			{ _RED.."1) "..L["Flag"], 10003 },
			{ GREN.."1) "..BZ["Mage Tower"], 10004 },
			{ GREN.."2) "..BZ["Draenei Ruins"], 10005 },
			{ GREN.."3) "..BZ["Fel Reaver Ruins"], 10006 },
			{ GREN.."4) "..BZ["Blood Elf Tower"], 10007 },
			{ ORNG.."1) "..ALC["Graveyard"], 10008 },
		},
		HalaaPvP = {
			ZoneName = { BZ["Nagrand"]..ALC["Hyphen"]..BZ["Halaa"] },
			Location = { BZ["Nagrand"] },
			LevelRange = "64-85",
			MinLevel = "64",
			WorldMapID = 107,
			{ ORNG..PVP..ALC["Colon"]..BZ["Halaa"] },
			{ GREN.."1) "..BZ["Halaa"], 10001 },
			{ GREN..INDENT..FACTION_ALLIANCE },
			{ GREN..INDENT..BULLET..L["Quartermaster Davian Vaclav"] },
			{ GREN..INDENT..BULLET..L["Chief Researcher Kartos"] },
			{ GREN..INDENT..BULLET..L["Aldraan <Blade Merchant>"] },
			{ GREN..INDENT..BULLET..L["Cendrii <Food & Drink>"] },
			{ GREN..INDENT..FACTION_HORDE },
			{ GREN..INDENT..BULLET..L["Quartermaster Jaffrey Noreliqe"] },
			{ GREN..INDENT..BULLET..L["Chief Researcher Amereldine"] },
			{ GREN..INDENT..BULLET..L["Coreiel <Blade Merchant>"] },
			{ GREN..INDENT..BULLET..L["Embelar <Food & Drink>"] },
			{ GREN.."2) "..L["Wyvern Camp"], 10002 },
		},
		HellfirePeninsulaPvP = {
			ZoneName = { BZ["Hellfire Peninsula"]..ALC["Hyphen"]..L["Hellfire Fortifications"] },
			Location = { BZ["Hellfire Peninsula"] },
			LevelRange = "58-85",
			MinLevel = "58",
			WorldMapID = 100,
			{ ORNG..PVP..ALC["Colon"]..L["Hellfire Fortifications"] },
			{ GREN.."1) "..BZ["The Stadium"], 10001 },
			{ GREN.."2) "..BZ["The Overlook"], 10002 },
			{ GREN.."3) "..BZ["Broken Hill"], 10003 },
		},
		TerokkarForestPvP = {
			ZoneName = { BZ["Terokkar Forest"]..ALC["Hyphen"]..L["Spirit Towers"] },
			Location = { BZ["The Bone Wastes"]..ALC["Comma"]..BZ["Terokkar Forest"] },
			LevelRange = "62-85",
			MinLevel = "62",
			WorldMapID = 108,
			{ ORNG..PVP..ALC["Colon"]..BZ["Auchindoun"].." "..L["Spirit Towers"] },
			{ GREN.."1) "..L["Spirit Towers"], 10001 },
		},
		ZangarmarshPvP = {
			ZoneName = { BZ["Zangarmarsh"]..ALC["Hyphen"]..BZ["Twin Spire Ruins"] },
			Location = { BZ["Zangarmarsh"] },
			LevelRange = "60-85",
			MinLevel = "60",
			WorldMapID = 102,
			{ ORNG..PVP..ALC["Colon"]..BZ["Twin Spire Ruins"] },
			{ GREN.."1) "..L["West Beacon"], 10001 },
			{ GREN.."2) "..L["East Beacon"], 10002 },
			{ GREN.."1') "..L["Horde Field Scout"], 10003 },
			{ GREN.."2') "..L["Alliance Field Scout"], 10004 },
			{ ORNG.."1) "..L["Twinspire Graveyard"], 10005 },
		},
		IsleOfConquest = {
			ZoneName = { BZ["Isle of Conquest"] },
			Location = { BZ["Icecrown"] },
			LevelRange = "20-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			PlayerLimit = {40},
			Acronym = L["IoC"],
			WorldMapID = 169,
			{ BLUE.."A) "..ALC["Start"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10001 },
			{ GREN..INDENT..L["Overlord Agmar"] },
			{ BLUE.."B) "..ALC["Start"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10002 },
			{ GREN..INDENT..L["High Commander Halford Wyrmbane <7th Legion>"] },
			{ GREN.."1) "..L["The Refinery"], 10003 },
			{ GREN.."2) "..L["The Docks"], 10004 },
			{ GREN.."3) "..L["The Workshop"], 10005 },
			{ GREN.."4) "..L["The Hangar"], 10006 },
			{ GREN.."5) "..L["The Quarry"], 10007 },
			{ ORNG.."1) "..L["Contested Graveyards"], 10008 },
			{ ORNG.."2) "..L["Horde Graveyard"], 10009 },
			{ ORNG.."3) "..L["Alliance Graveyard"], 10010 },
			{ "" },
			{ _RED..L["Gates are marked with red bars."] },
		},
		StrandOfTheAncients = {
			ZoneName = { BZ["Strand of the Ancients"] },
			Location = { BZ["Dragonblight"] },
			LevelRange = "50-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			PlayerLimit = {15},
			Acronym = L["SotA"],
			WorldMapID = 128,
			{ ORNG..L["Gates are marked with their colors."] },
			{ BLUE.."A) "..ALC["Start"]..ALC["L-Parenthesis"]..L["Attacking Team"]..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..ALC["Start"]..ALC["L-Parenthesis"]..L["Defending Team"]..ALC["R-Parenthesis"], 10002 },
			{ _RED.."1) "..L["Massive Seaforium Charge"], 10003 },
			{ _RED.."2) "..L["Titan Relic"], 10004 },
			{ GREN.."1) "..L["Battleground Demolisher"], 10005 },
			{ GREN.."2) "..L["Graveyard Flag"], 10006 },
			{ ORNG.."1) "..L["Resurrection Point"], 10007 },
		},
		WintergraspPvP = {
			ZoneName = { BZ["Wintergrasp"] },
			Location = { BZ["Wintergrasp"] },
			LevelRange = "80-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			PlayerLimit = {40},
			WorldMapID = 123,
			LargeMap = "WintergraspPvP",
			{ ORNG..PVP..ALC["Colon"]..BZ["Wintergrasp"] },
			{ BLUE.."A) "..BZ["Wintergrasp Fortress"], 10001 },
			{ BLUE..INDENT..BZ["Vault of Archavon"] },
			{ BLUE.."B) "..BZ["Valiance Landing Camp"], 10002 },
			{ BLUE.."C) "..BZ["Warsong Camp"], 10003 },
			{ GREN.."1) "..BZ["Wintergrasp Fortress"], 10004 },
			{ GREN..INDENT..L["Fortress Vihecal Workshop (E)"] },
			{ GREN..INDENT..L["Fortress Vihecal Workshop (W)"] },
			{ GREN.."2) "..BZ["The Sunken Ring"], 10005 },
			{ GREN..INDENT..L["Sunken Ring Vihecal Workshop"] },
			{ GREN.."3) "..BZ["The Broken Temple"], 10006 },
			{ GREN..INDENT..L["Broken Temple Vihecal Workshop"] },
			{ GREN.."4) "..BZ["Eastspark Workshop"], 10007 },
			{ GREN..INDENT..L["Eastspark Vihecale Workshop"] },
			{ GREN.."5) "..BZ["Westspark Workshop"], 10008 },
			{ GREN..INDENT..L["Westspark Vihecale Workshop"] },
			{ _RED.."1) "..BZ["Flamewatch Tower"], 10009 },
			{ _RED.."2) "..BZ["Winter's Edge Tower"], 10010 },
			{ _RED.."3) "..BZ["Shadowsight Tower"], 10011 },
			{ ORNG.."1) "..L["Wintergrasp Graveyard"], 10012 },
			{ ORNG.."2) "..L["Sunken Ring Graveyard"], 10013 },
			{ ORNG.."3) "..L["Broken Temple Graveyard"], 10014 },
			{ ORNG.."4) "..L["Southeast Graveyard"], 10015 },
			{ ORNG.."5) "..L["Southwest Graveyard"], 10016 },
		},
		TheBattleForGilneas = {
			ZoneName = { BZ["Gilneas"]..ALC["Hyphen"]..BZ["The Battle for Gilneas"] },
			Location = { BZ["Gilneas"] },
			LevelRange = "25-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			PlayerLimit = {10},
			WorldMapID = 275,
			{ BLUE.."A) "..BZ["Gilnean Stronghold"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
			{ ORNG..INDENT..L["Alliance Graveyard"] },
			{ BLUE.."B) "..BZ["Horde Landing"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
			{ GREN.."1) "..BZ["Mines"], 10003 },
			{ GREN.."2) "..BZ["Lighthouse"], 10004 },
			{ GREN.."3) "..BZ["Waterworks"], 10005 },
			{ ORNG.."1) "..L["Horde Graveyard"], 10006 },
			{ ORNG.."2) "..L["Contested Graveyards"], 10007 },
		},
		TolBarad = {
			ZoneName = { BZ["Tol Barad"] },
			Location = { BZ["Tol Barad"] },
			LevelRange = "80-85",
			WorldMapID = 244,
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Baradin's Wardens"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Hellscream's Reach"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ BLUE.."A) "..L["Attackers"], 10001 },
			{ BLUE.."B) "..BZ["Baradin Hold"], 10002 },
			{ GREN..INDENT..FACTION_ALLIANCE },
			{ GREN..INDENT..BULLET..L["Sergeant Parker <Baradin's Wardens>"]},
			{ GREN..INDENT..BULLET..L["2nd Lieutenant Wansworth <Baradin's Wardens>"]},
			{ GREN..INDENT..BULLET..L["Commander Stevens <Baradin's Wardens>"]},
			{ GREN..INDENT..BULLET..L["Marshal Fallows <Baradin's Wardens>"]},
			{ GREN..INDENT..FACTION_HORDE },
			{ GREN..INDENT..BULLET..L["Commander Zanoth <Hellscream's Reach>"] },
			{ GREN..INDENT..BULLET..L["Drillmaster Razgoth <Hellscream's Reach>"] },
			{ GREN..INDENT..BULLET..L["Private Garnoth <Hellscream's Reach>"] },
			{ GREN..INDENT..BULLET..L["Staff Sergeant Lazgar <Hellscream's Reach>"] },
			{ GREN.."1) "..BZ["Ironclad Garrison"], 10003 },
			{ GREN.."2) "..BZ["Warden's Vigil"], 10004 },
			{ GREN.."3) "..BZ["Slagworks"], 10005 },
			{ GREN.."1') "..ALC["Meeting Stone"], 10006 },
			{ _RED.."1) "..BZ["West Spire"], 10007 },
			{ _RED.."2) "..BZ["East Spire"], 10008 },
			{ _RED.."3) "..BZ["South Spire"], 10009 },
			{ ORNG.."1) "..ALC["Graveyard"], 10010 },
			{ ORNG.."2) "..BZ["Cursed Depths"], 10011 },
			{ ORNG.."3) "..BZ["The Hole"], 10012 },
			{ ORNG.."4) "..BZ["D-Block"], 10013 },
		},
		TwinPeaks = {
			ZoneName = { BZ["Twin Peaks"] },
			Location = { BZ["Twilight Highlands"] },
			LevelRange = "30-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			WorldMapID = 206,
			PlayerLimit = {10},
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Wildhammer Clan"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"] },
			{ ORNG..REPUTATION..ALC["Colon"]..BF["Dragonmaw Clan"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"] },
			{ BLUE.."A) "..L["Wildhammer Longhouse"]..ALC["L-Parenthesis"]..FACTION_ALLIANCE..ALC["R-Parenthesis"], 10001 },
			{ BLUE.."B) "..L["Dragonmaw Clan Compound"]..ALC["L-Parenthesis"]..FACTION_HORDE..ALC["R-Parenthesis"], 10002 },
			{ ORNG.."1) "..L["Alliance Graveyard"], 10003 },
			{ ORNG.."2) "..L["Horde Graveyard"], 10004 },
		},
		SilvershardMines = {
			ZoneName = { BZ["Silvershard Mines"] },
			Location = { BZ["Stranglethorn Vale"]..ALC["Comma"]..BZ["Eastern Kingdoms"] },
			LevelRange = "110-120",
			MinLevel = "90",
			PlayerLimit = {10},
			WorldMapID = 423,
			{ BLUE.."A) "..ALC["Start"]..ALC["Hyphen"]..FACTION_ALLIANCE, 10001 },
			{ BLUE.."B) "..ALC["Start"]..ALC["Hyphen"]..FACTION_HORDE, 10002 },
			{ GREN.."1) "..L["Mine Cart Spawn Point"], 10003 },
			{ GREN.."2) "..L["Mine Cart Depot"], 10004 },
		},
		TempleofKotmogu = {
			ZoneName = { BZ["Temple of Kotmogu"] },
			Location = { BZ["Vale of Eternal Blossoms"]..ALC["Comma"]..BZ["Pandaria"] },
			LevelRange = "110-120",
			PlayerLimit = {10},
			WorldMapID = 417,
			{ BLUE.."A) "..ALC["Start"]..ALC["Hyphen"]..FACTION_ALLIANCE, 10001 },
			{ BLUE.."B) "..ALC["Start"]..ALC["Hyphen"]..FACTION_HORDE, 10002 },
			{ GREN.."1) "..L["Orb of Power"], 10003 },
			{ GREN.."2) "..L["Center Point (Maximum Points)"], 10004 },
		},
		DeepwindGorge = {
			ZoneName = { BZ["Deepwind Gorge"] },
			Location = { BZ["Valley of the Four Winds"]..ALC["Comma"]..BZ["Pandaria"] },
			LevelRange = "110-120",
			PlayerLimit = {15},
			WorldMapID = 519,
			{ BLUE.."A) "..ALC["Start"]..ALC["Hyphen"]..FACTION_HORDE, 10001 },
			{ BLUE.."B) "..ALC["Start"]..ALC["Hyphen"]..FACTION_ALLIANCE, 10002 },
			{ GREN.."1) "..BZ["Pandaren Mine"], 10003 },
			{ GREN.."2) "..L["Center Mine"], 10004 },
			{ GREN.."3) "..BZ["Goblin Mine"], 10005 },
		},
		Ashran = {
			ZoneName = { BZ["Ashran"] },
			Location = { BZ["Ashran"]..ALC["Comma"]..BZ["Draenor"] },
			LevelRange = "20-120"..ALC["L-Parenthesis"]..L["Span of 5"]..ALC["R-Parenthesis"]..ALC["Slash"].."120",
			PlayerLimit = {40},
			WorldMapID = 588,
			{ BLUE.."A) "..BZ["Warspear"]..ALC["Hyphen"]..FACTION_HORDE, 10001 },
			{ BLUE.."B) "..BZ["Stormshield"]..ALC["Hyphen"]..FACTION_ALLIANCE, 10002 },
			{ GREN.."1) "..BZ["Amphitheater of Annihilation"], 10003 },
			{ GREN.."2) "..BZ["Emberfall Tower"], 10004 },
			{ GREN.."3) "..BZ["Brute's Rise"], 10005 },
			{ GREN.."4) "..BZ["The Dark Woods"], 10006 },
			{ GREN.."5) "..BZ["Ring of Conquest"], 10007 },
			{ GREN.."6) "..BZ["Seat of Kor'lok"], 10008 },
			{ GREN.."7) "..BZ["Ashmaul Burial Grounds"], 10009 },
			{ GREN.."8) "..BZ["Molten Quarry"], 10010 },
		},
		SeethingShore = {
			ZoneName = { BZ["Seething Shore"] },
			Location = { BZ["Seething Shore"]..ALC["Comma"]..BZ["Feralas"] },
			LevelRange = "110-120",
			PlayerLimit = {15},
			WorldMapID = 907,
			{ WHIT.." 1) "..L["Shipwreck"], 10001 },
			{ WHIT.." 2) "..L["Bonfire"], 10002 },
			{ WHIT.." 3) "..L["Tide Pools"], 10003 },
			{ WHIT.." 4) "..L["Temple"], 10004 },
			{ WHIT.." 5) "..L["Tar Pits"], 10005 },
			{ WHIT.." 6) "..L["Plunge"], 10006 },
			{ WHIT.." 7) "..L["Ridge"], 10007 },
			{ WHIT.." 8) "..L["Overlook"], 10008 },
			{ WHIT.." 9) "..L["Crash Site"], 10009 },
			{ WHIT.." 10) "..L["Waterfall"], 10010 },
			{ WHIT.." 11) "..L["Ruins"], 10011 },
			{ WHIT.." 12) "..L["Tower"], 10012 },
		},
	}

	db.coords = {
		AlteracValleyNorth = {
			{  "A", 10001, 368, 25 }, -- Entrance
			{  "B", 10002, 166, 65 }, -- Dun Baldar
			{  "1", 10003, 217, 69 }, -- Dun Baldar North Bunker
			{  "2", 10004, 197, 120 }, -- Dun Baldar South Bunker
			{  "3", 10005, 180, 229 }, -- Icewing Cavern
			{  "4", 10006, 371, 218 }, -- Stormpike Lumber Yard
			{  "5", 10007, 315, 268 }, -- Icewing Bunker
			{  "6", 10008, 282, 372 }, -- Stonehearth Outpost
			{  "7", 10009, 350, 427 }, -- Stonehearth Bunker
			{  "8", 10010, 268, 459 }, -- Western Crater
			{  "9", 10011, 294, 482 }, -- Eastern Crater
			{  "1", 10012, 297, 14 }, -- Irondeep Mine
			{ "1'", 10013, 194, 48 }, -- Arch Druid Renferal
			{ "2'", 10014, 186, 83 }, -- Murgot Deepforge
			{ "3'", 10015, 159, 102 }, -- Stormpike Stable Master <Stable Master>
			{ "4'", 10016, 178, 105 }, -- Stormpike Quartermaster
			{ "5'", 10017, 178, 120 }, -- Wing Commander Ichman
			{ "6'", 10018, 301, 353 }, -- Stormpike Ram Rider Commander
			{ "7'", 10019, 309, 445 }, -- Ivus the Forest Lord
			{  "1", 10020, 138, 82 }, -- Stormpike Aid Station
			{  "2", 10021, 318, 73 }, -- Stormpike Graveyard
			{  "3", 10022, 371, 328 }, -- Stonehearth Graveyard
			{  "4", 10023, 144, 428 }, -- Snowfall Graveyard
		},
		AlteracValleySouth = {
			{  "A", 10001, 355, 427 }, -- Entrance
			{  "B", 10002, 220, 426 }, -- Frostwolf Keep
			{  "1", 10003, 197, 65 }, -- Iceblood Garrison
			{  "2", 10004, 237, 81 }, -- Iceblood Tower
			{  "3", 10005, 281, 166 }, -- Tower Point
			{  "4", 10006, 241, 395 }, -- West Frostwolf Tower
			{  "5", 10007, 260, 395 }, -- East Frostwolf Tower
			{  "6", 10008, 323, 436 }, -- Wildpaw Cavern
			{  "1", 10009, 206, 244 }, -- Coldtooth Mine
			{ "1'", 10010, 168, 5 }, -- Lokholar the Ice Lord
			{ "2'", 10011, 276, 366 }, -- Wing Commander Vipore
			{ "3'", 10012, 402, 375 }, -- Frostwolf Stable Master <Stable Master>
			{ "4'", 10013, 204, 390 }, -- Frostwolf Quartermaster
			{ "5'", 10014, 268, 413 }, -- Wing Commander Guse
			{  "1", 10015, 299, 65 }, -- Iceblood Graveyard
			{  "2", 10016, 234, 303 }, -- Frostwolf Graveyard
			{  "3", 10017, 265, 476 }, -- Frostwolf Relief Hut
		},
		ArathiBasin = {
			{ "A", 10001, 95, 93 }, -- Trollbane Hall
			{ "B", 10002, 409, 400 }, -- Defiler's Den
			{ "1", 10003, 164, 156 }, -- Stables
			{ "2", 10004, 340, 157 }, -- Gold Mine
			{ "3", 10005, 255, 248 }, -- Blacksmith
			{ "4", 10006, 164, 336 }, -- Lumber Mill
			{ "5", 10007, 329, 334 }, -- Farm
		},
		WarsongGulch = {
			{ "A", 10001, 238, 96 }, -- Silverwing Hold
			{ "B", 10002, 256, 365 }, -- Warsong Lumber Mill
		},
		SilithystMustFlow = {
			{ "A", 10001, 289, 173 }, -- Cenarion Hold
			{ "B", 10002, 153, 242 }, -- Alliance's Camp
			{ "C", 10003, 291, 329 }, -- Horde's Camp
		},
		EyeOfTheStorm = {
			{ "A", 10001, 238, 82 }, -- Entrance
			{ "B", 10002, 266, 408 }, -- Entrance
			{ "1", 10003, 251, 247 }, -- Flag
			{ "1", 10004, 163, 196 }, -- Mage Tower
			{ "2", 10005, 347, 204 }, -- Draenei Ruins
			{ "3", 10006, 165, 304 }, -- Fel Reaver Ruins
			{ "4", 10007, 341, 301 }, -- Blood Elf Tower
			{ "1", 10008, 200, 162 }, -- Graveyard
			{ "1", 10008, 304, 161 }, -- Graveyard
			{ "1", 10008, 201, 319 }, -- Graveyard
			{ "1", 10008, 299, 316 }, -- Graveyard
		},
		HalaaPvP = {
			{ "1", 10001, 252, 247 }, -- Halaa
			{ "2", 10002, 184, 207 }, -- Wyvern Camp
			{ "2", 10002, 215, 367 }, -- Wyvern Camp
			{ "2", 10002, 323, 164 }, -- Wyvern Camp
			{ "2", 10002, 358, 298 }, -- Wyvern Camp
		},
		HellfirePeninsulaPvP = {
			{ "1", 10001, 181, 228 }, -- The Stadium
			{ "2", 10002, 295, 183 }, -- The Overlook
			{ "3", 10003, 302, 312 }, -- Broken Hill
		},
		TerokkarForestPvP = {
			{ "1", 10001, 56, 104 }, -- Spirit Towers
			{ "1", 10001, 314, 42 }, -- Spirit Towers
			{ "1", 10001, 482, 148 }, -- Spirit Towers
			{ "1", 10001, 434, 355 }, -- Spirit Towers
			{ "1", 10001, 261, 453 }, -- Spirit Towers
		},
		ZangarmarshPvP = {
			{ "1", 10001, 184, 208 }, -- West Beacon
			{ "2", 10002, 321, 214 }, -- East Beacon
			{ "1'", 10003, 56, 233 }, -- Horde Field Scout
			{ "2'", 10004, 491, 199 }, -- Alliance Field Scout
			{ "1", 10005, 253, 245 }, -- Twinspire Graveyard
		},
		IsleOfConquest = {
			{ "A", 10001, 239, 90 }, -- Start
			{ "B", 10002, 260, 428 }, -- Start
			{ "1", 10003, 107, 93 }, -- The Refinery
			{ "2", 10004, 105, 265 }, -- The Docks
			{ "3", 10005, 254, 264 }, -- The Workshop
			{ "4", 10006, 305, 251 }, -- The Hangar
			{ "5", 10007, 365, 429 }, -- The Quarry
			{ "1", 10008, 82, 302 }, -- Contested Graveyards
			{ "1", 10008, 260, 89 }, -- Contested Graveyards
			{ "1", 10008, 281, 425 }, -- Contested Graveyards
			{ "1", 10008, 205, 261 }, -- Contested Graveyards
			{ "1", 10008, 352, 254 }, -- Contested Graveyards
			{ "2", 10009, 390, 141 }, -- Horde Graveyard
			{ "3", 10010, 94, 374 }, -- Alliance Graveyard
		},
		StrandOfTheAncients = {
			{ "A", 10001, 202, 44 }, -- Start
			{ "A", 10001, 264, 53 }, -- Start
			{ "B", 10002, 251, 264 }, -- Start
			{ "1", 10003, 186, 54 }, -- Massive Seaforium Charge
			{ "1", 10003, 282, 56 }, -- Massive Seaforium Charge
			{ "1", 10003, 119, 176 }, -- Massive Seaforium Charge
			{ "1", 10003, 363, 172 }, -- Massive Seaforium Charge
			{ "1", 10003, 210, 343 }, -- Massive Seaforium Charge
			{ "2", 10004, 269, 443 }, -- Titan Relic
			{ "1", 10005, 172, 68 }, -- Battleground Demolisher
			{ "1", 10005, 294, 66 }, -- Battleground Demolisher
			{ "1", 10005, 131, 183 }, -- Battleground Demolisher
			{ "1", 10005, 349, 176 }, -- Battleground Demolisher
			{ "2", 10006, 186, 191 }, -- Graveyard Flag
			{ "2", 10006, 290, 191 }, -- Graveyard Flag
			{ "2", 10006, 252, 244 }, -- Graveyard Flag
			{ "1", 10007, 245, 131 }, -- Resurrection Point
			{ "1", 10007, 132, 165 }, -- Resurrection Point
			{ "1", 10007, 354, 158 }, -- Resurrection Point
			{ "1", 10007, 197, 291 }, -- Resurrection Point
			{ "1", 10007, 315, 361 }, -- Resurrection Point
		},
		WintergraspPvP = {
			{ "A", 10001, 237, 101, 508, 98, "Blue" }, -- Wintergrasp Fortress
			{ "B", 10002, 414, 179, 794, 233, "Blue" }, -- Valiance Landing Camp
			{ "C", 10003,   9, 198, 148, 260, "Blue" }, -- Warsong Camp
			{ "1", 10004, 238, 130, 509, 148, "Green" }, -- Wintergrasp Fortress
			{ "2", 10005, 361, 224, 706, 298, "Green" }, -- The Sunken Ring
			{ "3", 10006,  90, 216, 275, 292, "Green" }, -- The Broken Temple
			{ "4", 10007, 366, 380, 725, 551, "Green" }, -- Eastspark Workshop
			{ "5", 10008, 111, 379, 307, 552, "Green" }, -- Westspark Workshop
			{ "1", 10009, 476, 352, 896, 508, "Red" }, -- Flamewatch Tower
			{ "2", 10010, 240, 368, 518, 535, "Red" }, -- Winter's Edge Tower
			{ "3", 10011,  27, 325, 170, 465, "Red" }, -- Shadowsight Tower
			{ "1", 10012, 223,  61, 486,  40, "Orange" }, -- Wintergrasp Graveyard
			{ "2", 10013, 378, 178, 732, 235, "Orange" }, -- Sunken Ring Graveyard
			{ "3", 10014,  75, 192, 243, 251, "Orange" }, -- Broken Temple Graveyard
			{ "4", 10015, 350, 385, 695, 557, "Orange" }, -- Southeast Graveyard
			{ "5", 10016, 131, 385, 323, 561, "Orange" }, -- Southwest Graveyard
		},
		TheBattleForGilneas = {
			{ "A", 10001, 200, 409 }, -- Gilnean Stronghold
			{ "B", 10002, 381, 131 }, -- Horde Landing
			{ "1", 10003, 414, 217 }, -- Mines
			{ "2", 10004, 228, 340 }, -- Lighthouse
			{ "3", 10005, 404, 362 }, -- Waterworks
			{ "1", 10006, 419, 154 }, -- Horde Graveyard
			{ "2", 10007, 446, 235 }, -- Contested Graveyards
			{ "2", 10007, 203, 333 }, -- Contested Graveyards
			{ "2", 10007, 375, 424 }, -- Contested Graveyards
		},
		TolBarad = {
			{  "A", 10001, 178, 117 }, -- Attackers
			{  "B", 10002, 251, 274 }, -- Baradin Hold
			{  "1", 10003, 252, 151 }, -- Ironclad Garrison
			{  "2", 10004, 129, 367 }, -- Warden's Vigil
			{  "3", 10005, 374, 361 }, -- Slagworks
			{ "1'", 10006, 214, 252 }, -- Meeting Stone
			{  "1", 10007, 79, 171 }, -- West Spire
			{  "2", 10008, 409, 196 }, -- East Spire
			{  "3", 10009, 261, 410 }, -- South Spire
			{  "1", 10010, 215, 182 }, -- Graveyard
			{  "1", 10010, 186, 385 }, -- Graveyard
			{  "1", 10010, 390, 311 }, -- Graveyard
			{  "2", 10011, 189, 221 }, -- Cursed Depths
			{  "3", 10012, 209, 362 }, -- The Hole
			{  "4", 10013, 320, 279 }, -- D-Block
		},
		TwinPeaks = {
			{ "A", 10001, 298, 118 }, -- Wildhammer Longhouse
			{ "B", 10002, 230, 366 }, -- Dragonmaw Clan Compound
			{ "1", 10003, 179, 221 }, -- Alliance Graveyard
			{ "2", 10004, 319, 252 }, -- Horde Graveyard
		},
		SilvershardMines = {
			{ "A", 10001, 365, 249 }, -- Start
			{ "B", 10002, 306, 387 }, -- Start
			{ "1", 10003, 329, 314 }, -- Mine Cart Spawn Point
			{ "2", 10004, 138, 288 }, -- Mine Cart Depot
			{ "2", 10004, 240, 425 }, -- Mine Cart Depot
			{ "2", 10004, 445, 201 }, -- Mine Cart Depot
			{ "2", 10004, 402, 392 }, -- Mine Cart Depot
		},
		TempleofKotmogu = {
			{ "A", 10001, 388, 248 }, -- Start
			{ "B", 10002, 99, 250 }, -- Start
			{ "1", 10003, 190, 206 }, -- Orb of Power
			{ "1", 10003, 297, 206 }, -- Orb of Power
			{ "1", 10003, 190, 292 }, -- Orb of Power
			{ "1", 10003, 297, 292 }, -- Orb of Power
			{ "2", 10004, 246, 248 }, -- Center Point (Maximum Points)
		},
		DeepwindGorge = {
			{ "A", 10001, 100, 209 }, -- Start
			{ "B", 10002, 408, 282 }, -- Start
			{ "1", 10003, 291, 135 }, -- Pandaren Mine
			{ "2", 10004, 254, 247 }, -- Center Mine
			{ "3", 10005, 220, 357 }, -- Goblin Mine
		},
		Ashran = {
			{ "A", 10001, 202, 54 }, -- Warspear
			{ "B", 10002, 176, 441 }, -- Stormshield
			{ "1", 10003, 148, 182 }, -- Amphitheater of Annihilation
			{ "2", 10004, 241, 189 }, -- Emberfall Tower
			{ "3", 10005, 323, 144 }, -- Brute's Rise
			{ "4", 10006, 308, 205 }, -- The Dark Woods
			{ "5", 10007, 124, 246 }, -- Ring of Conquest
			{ "6", 10008, 281, 246 }, -- Seat of Kor'lok
			{ "7", 10009, 154, 303 }, -- Ashmaul Burial Grounds
			{ "8", 10010, 298, 338 }, -- Molten Quarry
		},
	}
end

Atlas:RegisterPlugin(private.addon_name, private.db.category, private.db.maps, private.db.coords)
