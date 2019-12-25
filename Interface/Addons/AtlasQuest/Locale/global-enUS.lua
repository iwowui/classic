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


------------  GLOBALS  ------------


This file is for storing global strings as well as some things that don't fit
very well in the other localization files.


--]]

---------------
--- COLOURS ---
---------------

local GREY = "|cff999999";
local RED = "|cffff0000";
local ATLAS_RED = "|cffcc3333";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff66cc33";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";
local DARKYELLOW = "|cffcc9933";  -- Atlas uses this color for some things.
local YELLOW = "|cffFFd200";   -- Ingame Yellow



---------------
--- OPTIONS ---
---------------

AQOptionsCaptionTEXT = ""..YELLOW.."AtlasQuest Options";
AQ_OK = "OK";

-- Autoshow
AQOptionsAutoshowTEXT = ""..WHITE.."Show AtlasQuest panel with "..RED.."Atlas"..WHITE..".";
AQAtlasAutoON = "The AtlasQuest panel will be automatically displayed when atlas is opened."..GREEN.."(default)";
AQAtlasAutoOFF = "The AtlasQuest panel "..RED.."will not"..WHITE.." be displayed when you open atlas.";

-- Right/Left
AQOptionsLEFTTEXT = ""..WHITE.."Show the AtlasQuest panel "..RED.."left"..WHITE..".";
AQOptionsRIGHTTEXT = ""..WHITE.."Show the AtlasQuest panel "..RED.."right"..WHITE..".";
AQShowRight = "Now shows the AtlasQuest Panel on the "..RED.."right"..WHITE.." side.";
AQShowLeft = "Now shows the AtlasQuest Panel on the "..RED.."left"..WHITE.." side "..GREEN.."(default)";

-- Colour Check
AQOptionsCCTEXT = ""..WHITE.."Recolour the quests depending on their levels.";
AQCCON = "AtlasQuest will now recolour quests depending on their levels.";
AQCCOFF = "AtlasQuest will not recolour quests."

-- QuestLog Colour Check
AQQLColourChange = ""..WHITE.."DISABLED Colours all quest, you have in your Questlog "..BLUE.."blue.";

-- Use Comparison Tooltips
AQOptionsCompareTooltipTEXT = ""..WHITE.."DISABLED Compare rewards to currently equipped items.";

-- Quest Query text
AQQuestQueryButtonTEXT = ""..WHITE.."Quest Query";
AQClearQuestAndQueryButtonTEXT = ""..WHITE.."Reset Quests";
AQQuestQueryTEXT = ""..WHITE.."Query Server for completed quests.";
AQClearQuestAndQueryTEXT = ""..WHITE.."Reset completed quests and query server for list of completed quests.";
AQQuestQueryStart = "AtlasQuest is now querying server for completed quests. This may take a minute";
AQQuestQueryDone = "AtlasQuest has finished querying the server. Completed quests should now be marked.";


AQAbilities = BLUE .. "Abilities:" .. WHITE;
AQSERVERASKInformation = " Please click right until you see the Item frame.";
AQSERVERASKAuto = " Try moving the cursor over the item in a second.";
AQSERVERASK = "AtlasQuest is querying the server for: ";
AQERRORNOTSHOWN = "This item is not safe!";
AQERRORASKSERVER = "Right-click to query the server for \nthis item. You may be disconnected.";
AQOptionB = "Options";
AQNoReward = ""..BLUE.." No Rewards";
AQDiscription_REWARD = ""..BLUE.." Reward: ";
AQDiscription_OR = ""..GREY.." or "..WHITE.."";
AQDiscription_AND = ""..GREY.." and "..WHITE.."";
AQDiscription_ATTAIN = "Attain: ";
AQDiscription_LEVEL = "Level: ";
AQDiscription_START = "Starts at: \n";
AQDiscription_AIM = "Objective: \n";
AQDiscription_NOTE = "Note: \n";
AQDiscription_PREQUEST= "Prequest: ";
AQDiscription_FOLGEQUEST = "Followup: ";
AQFinishedTEXT = "Finished: ";


------------------
--- ITEM TYPES ---
------------------

AQITEM_DAGGER = " Dagger"
AQITEM_POLEARM = " Polearm"
AQITEM_SWORD = " Sword"
AQITEM_AXE = " Axe"
AQITEM_WAND = "Wand"
AQITEM_STAFF = " Staff"
AQITEM_MACE = " Mace"
AQITEM_SHIELD = "Shield"
AQITEM_GUN = "Gun"
AQITEM_BOW = "Bow"
AQITEM_CROSSBOW = "Crossbow"
AQITEM_THROWN = "Thrown"

AQITEM_WAIST = "Waist,"
AQITEM_SHOULDER = "Shoulder,"
AQITEM_CHEST = "Chest,"
AQITEM_LEGS = "Legs,"
AQITEM_HANDS = "Hands,"
AQITEM_FEET = "Feet,"
AQITEM_WRIST = "Wrist,"
AQITEM_HEAD = "Head,"
AQITEM_BACK = "Back"
AQITEM_TABARD = "Tabard"

AQITEM_CLOTH = " Cloth"
AQITEM_LEATHER = " Leather"
AQITEM_MAIL = " Mail"
AQITEM_PLATE = " Plate"

AQITEM_OFFHAND = "Offhand"
AQITEM_MAINHAND = "Main Hand,"
AQITEM_ONEHAND = "One-Hand,"
AQITEM_TWOHAND = "Two-Hand,"

AQITEM_ITEM = "Item" -- Use this for those oddball rewards which aren't really anything else.
AQITEM_PET = "Pet"
AQITEM_TRINKET = "Trinket"
AQITEM_POTION = "Potion"
AQITEM_NECK = "Neck"
AQITEM_PATTERN = "Pattern"
AQITEM_BAG = "Bag"
AQITEM_RING = "Ring"
AQITEM_ENCHANT = "Enchant"
AQITEM_SPELL = "Spell"




--------------- INST66 - No Instance ---------------

-- Just to display "No Quests" when the map is set to something AtlasQuest does not support.
Inst66Caption = "No Information Available"
Inst66QAA = "No Quests"
Inst66QAH = "No Quests"



-- End of File
