-- $Id: Atlas_Battlegrounds-enUS.lua 1564 2020-01-15 15:53:51Z arith $
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

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_Battlegrounds", "enUS", true);

if L then
	--Common
	L["Battleground Maps"] = "Battleground Maps";
	L["Rescued"] = "Rescued";
	L["Span of 5"] = "Span of 5"; -- Blizzard's span to put players with similar level range into a BG (10-14, 15-29)

	--Places
	L["AV"] = "AV"; -- Alterac Valley
	L["AB"] = "AB"; -- Arathi Basin
	L["EotS"] = "EotS";
	L["IoC"] = "IoC"; -- Isle of Conquest
	L["SotA"] = "SotA"; -- Strand of the Ancients
	L["WSG"] = "WSG"; -- Warsong Gulch

	--Alterac Valley (North)
	L["Vanndar Stormpike <Stormpike General>"] = "Vanndar Stormpike <Stormpike General>";
	L["Prospector Stonehewer"] = "Prospector Stonehewer";
	L["Dun Baldar North Bunker"] = "Dun Baldar North Bunker";
	L["Wing Commander Mulverick"] = "Wing Commander Mulverick";--omitted from AVS
	L["Dun Baldar South Bunker"] = "Dun Baldar South Bunker";
	L["Gaelden Hammersmith <Stormpike Supply Officer>"] = "Gaelden Hammersmith <Stormpike Supply Officer>";
	L["Stormpike Banner"] = "Stormpike Banner";
	L["Stormpike Lumber Yard"] = "Stormpike Lumber Yard";
	L["Wing Commander Jeztor"] = "Wing Commander Jeztor";--omitted from AVS
	L["Wing Commander Guse"] = "Wing Commander Guse";--omitted from AVS
	L["Captain Balinda Stonehearth <Stormpike Captain>"] = "Captain Balinda Stonehearth <Stormpike Captain>";
	L["Western Crater"] = "Western Crater";
	L["Vipore's Beacon"] = "Vipore's Beacon";
	L["Jeztor's Beacon"] = "Jeztor's Beacon";
	L["Eastern Crater"] = "Eastern Crater";
	L["Slidore's Beacon"] = "Slidore's Beacon";
	L["Guse's Beacon"] = "Guse's Beacon";
	L["Arch Druid Renferal"] = "Arch Druid Renferal";
	L["Murgot Deepforge"] = "Murgot Deepforge";
	L["Lana Thunderbrew <Blacksmithing Supplies>"] = "Lana Thunderbrew <Blacksmithing Supplies>";
	L["Stormpike Stable Master <Stable Master>"] = "Stormpike Stable Master <Stable Master>";
	L["Stormpike Ram Rider Commander"] = "Stormpike Ram Rider Commander";
	L["Svalbrad Farmountain <Trade Goods>"] = "Svalbrad Farmountain <Trade Goods>";
	L["Kurdrum Barleybeard <Reagents & Poison Supplies>"] = "Kurdrum Barleybeard <Reagents & Poison Supplies>";
	L["Stormpike Quartermaster"] = "Stormpike Quartermaster";
	L["Jonivera Farmountain <General Goods>"] = "Jonivera Farmountain <General Goods>";
	L["Brogus Thunderbrew <Food & Drink>"] = "Brogus Thunderbrew <Food & Drink>";
	L["Wing Commander Ichman"] = "Wing Commander Ichman";--omitted from AVS
	L["Wing Commander Slidore"] = "Wing Commander Slidore";--omitted from AVS
	L["Wing Commander Vipore"] = "Wing Commander Vipore";--omitted from AVS
	L["Stormpike Ram Rider Commander"] = "Stormpike Ram Rider Commander";
	L["Ivus the Forest Lord"] = "Ivus the Forest Lord";
	L["Stormpike Aid Station"] = "Stormpike Aid Station";
	L["Ichman's Beacon"] = "Ichman's Beacon";
	L["Mulverick's Beacon"] = "Mulverick's Beacon";

	--Alterac Valley (South)
	L["Drek'Thar <Frostwolf General>"] = "Drek'Thar <Frostwolf General>";
	L["Captain Galvangar <Frostwolf Captain>"] = "Captain Galvangar <Frostwolf Captain>";
	L["Iceblood Tower"] = "Iceblood Tower";
	L["Tower Point"] = "Tower Point";
	L["West Frostwolf Tower"] = "West Frostwolf Tower";
	L["East Frostwolf Tower"] = "East Frostwolf Tower";
	L["Frostwolf Banner"] = "Frostwolf Banner";
	L["Lokholar the Ice Lord"] = "Lokholar the Ice Lord";
	L["Jotek"] = "Jotek";
	L["Smith Regzar"] = "Smith Regzar";
	L["Primalist Thurloga"] = "Primalist Thurloga";
	L["Frostwolf Stable Master <Stable Master>"] = "Frostwolf Stable Master <Stable Master>";
	L["Frostwolf Wolf Rider Commander"] = "Frostwolf Wolf Rider Commander";
	L["Frostwolf Quartermaster"] = "Frostwolf Quartermaster";
	L["Frostwolf Relief Hut"] = "Frostwolf Relief Hut";

	--Arathi Basin

	--Warsong Gulch

	-- The Silithyst Must Flow
	L["The Silithyst Must Flow"] = "The Silithyst Must Flow";
	L["Alliance's Camp"] = "Alliance's Camp";
	L["Horde's Camp"] = "Horde's Camp";

	--Eye of the Storm
	L["Flag"] = "Flag";

	-- Halaa
	L["Quartermaster Davian Vaclav"] = "Quartermaster Davian Vaclav";
	L["Chief Researcher Kartos"] = "Chief Researcher Kartos";
	L["Aldraan <Blade Merchant>"] = "Aldraan <Blade Merchant>";
	L["Cendrii <Food & Drink>"] = "Cendrii <Food & Drink>";
	L["Quartermaster Jaffrey Noreliqe"] = "Quartermaster Jaffrey Noreliqe";
	L["Chief Researcher Amereldine"] = "Chief Researcher Amereldine";
	L["Coreiel <Blade Merchant>"] = "Coreiel <Blade Merchant>";
	L["Embelar <Food & Drink>"] = "Embelar <Food & Drink>";
	L["Wyvern Camp"] = "Wyvern Camp";

	-- Hellfire Peninsula PvP 
	L["Hellfire Fortifications"] = "Hellfire Fortifications";

	-- Terokkar Forest PvP
	L["Spirit Towers"] = "Spirit Towers";

	-- Zangarmarsh PvP
	L["West Beacon"] = "West Beacon";
	L["East Beacon"] = "East Beacon";
	L["Horde Field Scout"] = "Horde Field Scout";
	L["Alliance Field Scout"] = "Alliance Field Scout";
	L["Twinspire Graveyard"] = "Twinspire Graveyard";

	--Isle of Conquest
	L["Gates are marked with red bars."] = "Gates are marked with red bars.";
	L["Overlord Agmar"] = "Overlord Agmar";
	L["High Commander Halford Wyrmbane <7th Legion>"] = "High Commander Halford Wyrmbane <7th Legion>";
	L["The Refinery"] = "The Refinery";
	L["The Docks"] = "The Docks";
	L["The Workshop"] = "The Workshop";
	L["The Hangar"] = "The Hangar";
	L["The Quarry"] = "The Quarry";
	L["Contested Graveyards"] = "Contested Graveyards";--omitted from Gilneas
	L["Horde Graveyard"] = "Horde Graveyard";--omitted from Gilneas
	L["Alliance Graveyard"] = "Alliance Graveyard";

	--Strand of the Ancients
	L["Gates are marked with their colors."] = "Gates are marked with their colors.";
	L["Attacking Team"] = "Attacking Team";
	L["Defending Team"] = "Defending Team";
	L["Massive Seaforium Charge"] = "Massive Seaforium Charge";
	L["Titan Relic"] = "Titan Relic";
	L["Battleground Demolisher"] = "Battleground Demolisher";
	L["Graveyard Flag"] = "Graveyard Flag";
	L["Resurrection Point"] = "Resurrection Point";

	-- Wintergrasp
	L["Fortress Vihecal Workshop (E)"] = "Fortress Vihecal Workshop (E)";
	L["Fortress Vihecal Workshop (W)"] = "Fortress Vihecal Workshop (W)";
	L["Sunken Ring Vihecal Workshop"] = "Sunken Ring Vihecal Workshop";
	L["Broken Temple Vihecal Workshop"] = "Broken Temple Vihecal Workshop";
	L["Eastspark Vihecale Workshop"] = "Eastspark Vihecale Workshop";
	L["Westspark Vihecale Workshop"] = "Westspark Vihecale Workshop";
	L["Wintergrasp Graveyard"] = "Wintergrasp Graveyard";
	L["Sunken Ring Graveyard"] = "Sunken Ring Graveyard";
	L["Broken Temple Graveyard"] = "Broken Temple Graveyard";
	L["Southeast Graveyard"] = "Southeast Graveyard";
	L["Southwest Graveyard"] = "Southwest Graveyard";

	-- The Battle for Gilneas

	-- Tol Barad
	L["Attackers"] = "Attackers";
	L["Sergeant Parker <Baradin's Wardens>"] = "Sergeant Parker <Baradin's Wardens>";
	L["2nd Lieutenant Wansworth <Baradin's Wardens>"] = "2nd Lieutenant Wansworth <Baradin's Wardens>";
	L["Commander Stevens <Baradin's Wardens>"] = "Commander Stevens <Baradin's Wardens>";
	L["Marshal Fallows <Baradin's Wardens>"] = "Marshal Fallows <Baradin's Wardens>";
	L["Commander Zanoth <Hellscream's Reach>"] = "Commander Zanoth <Hellscream's Reach>";
	L["Drillmaster Razgoth <Hellscream's Reach>"] = "Drillmaster Razgoth <Hellscream's Reach>";
	L["Private Garnoth <Hellscream's Reach>"] = "Private Garnoth <Hellscream's Reach>";
	L["Staff Sergeant Lazgar <Hellscream's Reach>"] = "Staff Sergeant Lazgar <Hellscream's Reach>";

	-- Twin Peaks
	L["Wildhammer Longhouse"] = "Wildhammer Longhouse";
	L["Dragonmaw Clan Compound"] = "Dragonmaw Clan Compound";

	-- Silvershard Mines
	L["Mine Cart Spawn Point"] = "Mine Cart Spawn Point";
	L["Mine Cart Depot"] = "Mine Cart Depot";

	-- Temple of Kotmogu
	L["Orb of Power"] = "Orb of Power";
	L["Center Point (Maximum Points)"] = "Center Point (Maximum Points)";

	-- Deepwind Gorge
	L["Center Mine"] = "Center Mine";
	
	L["Shipwreck"] = "Shipwreck"
	L["Bonfire"] = "Bonfire"
	L["Tide Pools"] = "Tide Pools"
	L["Temple"] = "Temple"
	L["Tar Pits"] = "Tar Pits"
	L["Plunge"] = "Plunge"
	L["Ridge"] = "Ridge"
	L["Overlook"] = "Overlook"
	L["Crash Site"] = "Crash Site"
	L["Waterfall"] = "Waterfall"
	L["Ruins"] = "Ruins"
	L["Tower"] = "Tower"

end
