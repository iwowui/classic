--[[

	AtlasQuest, a World of Warcraft addon.
	Email me at mystery8@gmail.com

	This file is part of AtlasQuest.

	AtlasQuest is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	AtlasQuest is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with AtlasQuest; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]


-----------------------------------------------------------------------------
-- This functions returns AQINSTANZ with a number
-- that tells which instance is shown atm for Atlas or AlphaMap
-----------------------------------------------------------------------------
function AtlasQuest_Instanzenchecken()
	AQATLASMAP = AtlasMap:GetTexture()


	-- Dungeons

	if (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\BlackrockDepths") then
		AQINSTANZ = 1;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\BlackwingLair") then
		AQINSTANZ = 2;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\BlackrockSpireLower") then
		AQINSTANZ = 3;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\BlackrockSpireUpper") then
		AQINSTANZ = 4;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\TheDeadmines") or (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\TheDeadminesEnt") then
		AQINSTANZ = 5;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\Gnomeregan") or (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\GnomereganEnt") then
		AQINSTANZ = 6;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\SMLibrary") then
		AQINSTANZ = 7;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\SMArmory") then
		AQINSTANZ = 8;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\SMCathedral") then
		AQINSTANZ = 9;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\SMGraveyard") then
		AQINSTANZ = 10;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\Scholomance") then
		AQINSTANZ = 11;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\ShadowfangKeep") then
		AQINSTANZ = 12;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\TheStockade") then
		AQINSTANZ = 13;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\Stratholme") then
		AQINSTANZ = 14;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\TheSunkenTemple") or (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\TheSunkenTempleEnt") then
		AQINSTANZ = 15;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\Uldaman") or (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\UldamanEnt") then
		AQINSTANZ = 16;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\BlackfathomDeeps") or (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\BlackfathomDeepsEnt") then
		AQINSTANZ = 17;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\DireMaulEast") then
		AQINSTANZ = 18;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\DireMaulNorth") then
		AQINSTANZ = 19;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\DireMaulWest") then
		AQINSTANZ = 20;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\Maraudon") or (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\MaraudonEnt") then
		AQINSTANZ = 21;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\RagefireChasm") then
		AQINSTANZ = 22;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\RazorfenDowns") then
		AQINSTANZ = 23;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\RazorfenKraul") then
		AQINSTANZ = 24;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\WailingCaverns") or (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\WailingCavernsEnt") then
		AQINSTANZ = 25;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\ZulFarrak") then
		AQINSTANZ = 26;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\MoltenCore") then
		AQINSTANZ = 27;



	-- Raids

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\OnyxiasLair") then
		AQINSTANZ = 28;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\ZulGurub") then
		AQINSTANZ = 29;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\TheRuinsofAhnQiraj") then
		AQINSTANZ = 30;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\TheTempleofAhnQiraj") then
		AQINSTANZ = 31;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_ClassicWoW\\Images\\Naxxramas") then
		AQINSTANZ = 32;

		
	
	-- Battlegrounds

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_Battlegrounds\\Images\\AlteracValleyNorth") then
		AQINSTANZ = 33;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_Battlegrounds\\Images\\AlteracValleySouth") then
		AQINSTANZ = 33;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_Battlegrounds\\Images\\ArathiBasin") then
		AQINSTANZ = 34;

	elseif (AQATLASMAP == "Interface\\AddOns\\Atlas_Battlegrounds\\Images\\WarsongGulch") then
		AQINSTANZ = 35;

		
	-- Outdoor Raids



	-- Default

	else 
		AQINSTANZ = 66;
	end
end



---------------------------
--- AQ Instance Numbers ---
---------------------------

-- These numbers have been re-organized from the Non-Classic version of AtlasQuest for sanity's sake.

-- 66  = default.  Nothing shown.

-- 1  = Blackrock Depths
-- 2  = Blackwing Lair
-- 3  = Lower Blackrock Spire
-- 4  = Upper Blackrock Spire
-- 5  = Deadmines
-- 6  = Gnomeregan
-- 7  = Scarlet Monastery: Library
-- 8  = Scarlet Monastery: Armory
-- 9  = Scarlet Monastery: Cathedral
-- 10 = Scarlet Monastery: Graveyard
-- 11 = Scholomance
-- 12 = Shadowfang Keep
-- 13 = The Stockade
-- 14 = Stratholme
-- 15 = Sunken Temple
-- 16 = Uldaman

-- 17 = Blackfathom Deeps
-- 18 = Dire Maul East
-- 19 = Dire Maul North
-- 20 = Dire Maul West
-- 21 = Maraudon
-- 22 = Ragefire Chasm
-- 23 = Razorfen Downs
-- 24 = Razorfen Kraul
-- 25 = Wailing Caverns
-- 26 = Zul'Farrak

-- 27 = Molten Core
-- 28 = Onyxia's Lair
-- 29 = Zul'Gurub
-- 30 = The Ruins of Ahn'Qiraj
-- 31 = The Temple of Ahn'Qiraj
-- 32 = Naxxramas (level 60)

-- 33 = Alterac Valley
-- 34 = Arathi Basin
-- 35 = Warsong Gulch

-- 36 = Four Dragons
-- 37 = Azuregos
-- 38 = Highlord Kruul
