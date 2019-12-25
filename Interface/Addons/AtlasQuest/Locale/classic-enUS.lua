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


------------  CLASSIC / VANILLA  ------------

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




--------------- INST1 - Blackrock Depths ---------------

Inst1Caption = "Blackrock Depths"
Inst1QAA = "19 Quests"
Inst1QAH = "18 Quests"

--Quest 1 Alliance
Inst1Quest1 = "1. Dark Iron Legacy"
Inst1Quest1_Aim = "Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright."
Inst1Quest1_Location = "Franclorn Forgewright (Blackrock Mountain; "..GREEN.."[1'] on Entrance map"..WHITE..")"
Inst1Quest1_Note = "Franclorn Forgewright is in the middle of the floating island in Blackrock Mountain, outside the dungeon near the Meeting Stone.  You have to be dead to see him.  He also gives you the prequest which just requires you listen to his story.\nFineous Darkvire is at "..YELLOW.."[9]"..WHITE..". The Shrine next to the arena at "..YELLOW.."[7]"..WHITE.."."
Inst1Quest1_Prequest = "Dark Iron Legacy"
Inst1Quest1_Folgequest = "None"
--
Inst1Quest1name1 = "Shadowforge Key"

--Quest 2 Alliance
Inst1Quest2 = "2. Ribbly Screwspigot"
Inst1Quest2_Aim = "Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes."
Inst1Quest2_Location = "Yuka Screwspigot (Burning Steppes - Flame Crest; "..YELLOW.."66.0, 22.0"..WHITE..")"
Inst1Quest2_Note = "You get the prequest from Yorba Screwspigot (Tanaris - Steamwheedle Port; "..YELLOW.."67.0, 24.0"..WHITE..").\nRibbly Screwspigot is at "..YELLOW.."[15]"..WHITE.."."
Inst1Quest2_Prequest = "Yuka Screwspigot"
Inst1Quest2_Folgequest = "None"
--
Inst1Quest2name1 = "Rancor Boots"
Inst1Quest2name2 = "Penance Spaulders"
Inst1Quest2name3 = "Splintsteel Armor"

--Quest 3 Alliance
Inst1Quest3 = "3. The Love Potion"
Inst1Quest3_Aim = "Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths."
Inst1Quest3_Location = "Mistress Nagmara (Blackrock Depths; "..YELLOW.."[15]"..WHITE..")"
Inst1Quest3_Note = "You get the Giant Silver Veins from Giants in Azshara.  Gromsblood can be acquired from either a herbalist or at the Auction House.  The vial is filled at (Un'Goro Crater - Golakka Hot Springs; "..YELLOW.."31.0, 50.0"..WHITE..").\nAfter completing the quest, you can use the backdoor instead of killing Phalanx."
Inst1Quest3_Prequest = "None"
Inst1Quest3_Folgequest = "None"
--
Inst1Quest3name1 = "Manacle Cuffs"
Inst1Quest3name2 = "Nagmara's Whipping Belt"

--Quest 4 Alliance
Inst1Quest4 = "4. Hurley Blackbreath"
Inst1Quest4_Aim = "Bring the Lost Thunderbrew Recipe to Ragnar Thunderbrew in Kharanos."
Inst1Quest4_Location = "Ragnar Thunderbrew  (Dun Morogh - Kharanos; "..YELLOW.."46.8, 52.4"..WHITE..")"
Inst1Quest4_Note = "The prequest starts at Enohar Thunderbrew (Blasted Lands - Nethergarde Keep; "..YELLOW.."63.6, 20.6"..WHITE..").\nYou get the recipe from one of the guards who appear if you destroy the ale barrel in the Grim Guzzler at "..YELLOW.."[15]"..WHITE.."."
Inst1Quest4_Prequest = "Ragnar Thunderbrew"
Inst1Quest4_Folgequest = "None"
--
Inst1Quest4name1 = "Dark Dwarven Lager"
Inst1Quest4name2 = "Swiftstrike Cudgel"
Inst1Quest4name3 = "Limb Cleaver"

--Quest 5 Alliance  
Inst1Quest5 = "5. Overmaster Pyron"
Inst1Quest5_Aim = "Slay Overmaster Pyron and return to Jalinda Sprig."
Inst1Quest5_Location = "Jalinda Sprig (Burning Steppes - Morgan's Vigil; "..YELLOW.."85.4, 70.0"..WHITE..")"
Inst1Quest5_Note = "Overmaster Pyron is a fire elemental outside the dungeon.  He patrols near the portal at "..YELLOW.."[24]"..WHITE.." on the Blackrock Depths map and at "..YELLOW.."[3]"..WHITE.." on the Blackrock Mountain entrance map."
Inst1Quest5_Prequest = "None"
Inst1Quest5_Folgequest = "Incendius!"
-- No Rewards for this quest

--Quest 6 Alliance
Inst1Quest6 = "6. Incendius!"
Inst1Quest6_Aim = "Find Lord Incendius in Blackrock Depths and destroy him!"
Inst1Quest6_Location = "Jalinda Sprig (Burning Steppes - Morgan's Vigil; "..YELLOW.."85.4, 70.0"..WHITE..")"
Inst1Quest6_Note = "The prequest comes from Jalinda Sprig too.  Lord Incendius can be found around The Black Anvil at "..YELLOW.."[10]"..WHITE.."."
Inst1Quest6_Prequest = "Overmaster Pyron"
Inst1Quest6_Folgequest = "None"
--
Inst1Quest6name1 = "Sunborne Cape"
Inst1Quest6name2 = "Nightfall Gloves"
Inst1Quest6name3 = "Crypt Demon Bracers"
Inst1Quest6name4 = "Stalwart Clutch"

--Quest 7 Alliance
Inst1Quest7 = "7. The Heart of the Mountain"
Inst1Quest7_Aim = "Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes."
Inst1Quest7_Location = "Maxwort Uberglint (Burning Steppes - Flame Crest; "..YELLOW.."65.2, 23.8"..WHITE..")"
Inst1Quest7_Note = "You can find the Heart of the Mountain at "..YELLOW.."[8]"..WHITE.." in a safe.  To acquire the key to that safe you must first open up all the smaller safes using Relic Coffer Keys that drop throughout the dungeon.  Once all small safes are open, Watchman Doomgrip and his friends will appear.  Defeat them to retrieve the key."
Inst1Quest7_Prequest = "None"
Inst1Quest7_Folgequest = "None"
-- No Rewards for this quest

--Quest 8 Alliance
Inst1Quest8 = "8. The Good Stuff"
Inst1Quest8_Aim = "Travel to Blackrock Depths and recover 20 Dark Iron Fanny Packs. Return to Oralius when you have completed this task. You assume that the Dark Iron dwarves inside Blackrock Depths carry these 'fanny pack' contraptions."
Inst1Quest8_Location = "Oralius (Burning Steppes - Morgan's Vigil; "..YELLOW.."84.6, 68.6"..WHITE..")"
Inst1Quest8_Note = "All dwarves can drop the packs."
Inst1Quest8_Prequest = "None"
Inst1Quest8_Folgequest = "None"
--
Inst1Quest8name1 = "A Dingy Fanny Pack"

--Quest 9 Alliance
Inst1Quest9 = "9. A Taste of Flame"
Inst1Quest9_Aim = "Travel to Blackrock Depths and slay Bael'Gar.  Return the Encased Fiery Essence to Cyrus Therepentous."
Inst1Quest9_Location = "Cyrus Therepentous (Burning Steppes - Slither Rock; "..YELLOW.."94.8, 31.6"..WHITE..")"
Inst1Quest9_Note = "The questline starts at Kalaran Windblade (Searing Gorge; "..YELLOW.."39.0, 38.8"..WHITE..").  I am not certain that it is required.\nBael'Gar is at "..YELLOW.."[11]"..WHITE..".  Use the 'Altered Black Dragonflight Molt' on him after he is defeated to complete the quest."
Inst1Quest9_Prequest = "The Flawless Flame -> A Taste of Flame"
Inst1Quest9_Folgequest = "None"
--
Inst1Quest9name1 = "Shaleskin Cape"
Inst1Quest9name2 = "Wyrmhide Spaulders"
Inst1Quest9name3 = "Valconian Sash"

--Quest 10 Alliance
Inst1Quest10 = "10. Kharan Mighthammer"
Inst1Quest10_Aim = "Travel to Blackrock Depths and find Kharan Mighthammer.\nThe King mentioned that Kharan was being held prisoner there - perhaps you should try looking for a prison."
Inst1Quest10_Location = "King Magni Bronzebeard (Ironforge; "..YELLOW.."39.4, 55.8"..WHITE..")"
Inst1Quest10_Note = "The prequest starts at Royal Historian Archesonus (Ironforge; "..YELLOW.."38.6, 55.4"..WHITE..").  Kharan Mighthammer is at "..YELLOW.."[2]"..WHITE.."."
Inst1Quest10_Prequest = "The Smoldering Ruins of Thaurissan"
Inst1Quest10_Folgequest = "The Bearer of Bad News"
-- No Rewards for this quest

--Quest 11 Alliance
Inst1Quest11 = "11. The Fate of the Kingdom"
Inst1Quest11_Aim = "Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan."
Inst1Quest11_Location = "King Magni Bronzebeard (Ironforge; "..YELLOW.."39.4, 55.8"..WHITE..")"
Inst1Quest11_Note = "Princess Moira Bronzebeard is at "..YELLOW.."[21]"..WHITE..".  You must defeat Emperor Dagran Thaurissan and leave the Princess alive to complete the quest.  If the Princess dies you will have to reset the entire dungeon and try again.  If successful, you can turn the quest into the Princess and she will send you back to King Magni Bronzebeard in Ironforge for your reward."
Inst1Quest11_Prequest = "The Bearer of Bad News"
Inst1Quest11_Folgequest = "The Princess's Surprise"
--
Inst1Quest11name1 = "Magni's Will"
Inst1Quest11name2 = "Songstone of Ironforge"

--Quest 12 Alliance
Inst1Quest12 = "12. Attunement to the Core"
Inst1Quest12_Aim = "Venture to the Molten Core entry portal in Blackrock Depths and recover a Core Fragment. Return to Lothos Riftwaker in Blackrock Mountain when you have recovered the Core Fragment."
Inst1Quest12_Location = "Lothos Riftwaker (Blackrock Mountain; "..YELLOW.."[E] on Entrance Map"..WHITE..")"
Inst1Quest12_Note = "Molten Core attunement quest.  After completing this quest, you will be able to enter the Molten Core by talking to Lothos Riftwalker or jumping through the window next to him.\nYou find the Core Fragment near "..YELLOW.."[23]"..WHITE..", very close to the Molten Core portal."
Inst1Quest12_Prequest = "None"
Inst1Quest12_Folgequest = "None"
-- No Rewards for this quest

--Quest 13 Alliance
Inst1Quest13 = "13. The Challenge"
Inst1Quest13_Aim = "Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet."
Inst1Quest13_Location = "Falrin Treeshaper (Dire Maul West; "..YELLOW.."[1] Library"..WHITE..")"
Inst1Quest13_Note = "Dungeon Set questline.  The Ring of Law is at "..YELLOW.."[6]"..WHITE.."."
Inst1Quest13_Prequest = "None"
Inst1Quest13_Folgequest = "Anthion's Parting Words"
-- No Rewards for this quest

--Quest 14 Alliance
Inst1Quest14 = "14. The Spectral Chalice"
Inst1Quest14_Aim = "Place the materials Gloom'Rel wants in the The Spectral Chalice."
Inst1Quest14_Location = "Gloom'Rel (Blackrock Depths; "..YELLOW.."[18]"..WHITE..")"
Inst1Quest14_Note = "This is a Miner quest and requires a mining skill of 230 or higher to learn how to Smelt Dark Iron.  You will need 2 Star Rubies, 20 Gold Bars and 10 Truesilver Bars.  Afterwards, if you have any Dark Iron Ore you can take it to The Black Forge at "..YELLOW.."[22]"..WHITE.." to Smelt it.  This is the only place in the game where it can be smelted."
Inst1Quest14_Prequest = "None"
Inst1Quest14_Folgequest = "None"
-- No Rewards for this quest

--Quest 15 Alliance
Inst1Quest15 = "15. Marshal Windsor"
Inst1Quest15_Aim = "Travel to Blackrock Mountain in the northwest and enter Blackrock Depths. Find out what became of Marshal Windsor."
Inst1Quest15_Location = "Marshal Maxwell (Burning Steppes - Morgan's Vigil; "..YELLOW.."84.6, 68.8"..WHITE..")"
Inst1Quest15_Note = "Onyxia attunement questline.  It starts at Helendis Riverhorn (Burning Steppes - Morgan's Vigil; "..YELLOW.."85.6, 68.8"..WHITE..").\nMarshal Windsor is at "..YELLOW.."[4]"..WHITE.."."
Inst1Quest15_Prequest = "Dragonkin Menace -> True Masters"
Inst1Quest15_Folgequest = "Abandoned Hope"
-- No Rewards for this quest

--Quest 16 Alliance
Inst1Quest16 = "16. Abandoned Hope"
Inst1Quest16_Aim = "Give Marshal Maxwell the bad news."
Inst1Quest16_Location = "Marshal Windsor (Blackrock Depths; "..YELLOW.."[4]"..WHITE..")"
Inst1Quest16_Note = "Onyxia attunement questline.  Marshal Maxwell is at (Burning Steppes - Morgan's Vigil; "..YELLOW.."84.6, 68.8"..WHITE..").  The next quest in the chain comes from a randomly dropped item in Blackrock Depths."
Inst1Quest16_Prequest = "Marshal Windsor"
Inst1Quest16_Folgequest = "None"
--
Inst1Quest16name1 = "Conservator Helm"
Inst1Quest16name2 = "Shieldplate Sabatons"
Inst1Quest16name3 = "Windshear Leggings"

--Quest 17 Alliance
Inst1Quest17 = "17. A Crumpled Up Note"
Inst1Quest17_Aim = "You may have just stumbled on to something that Marshal Windsor would be interested in seeing. There may be hope, after all."
Inst1Quest17_Location = "A Crumpled Up Note (random drop from Blackrock Depths)"
Inst1Quest17_Note = "Onyxia attunement questline.  Marshal Windsor is at "..YELLOW.."[4]"..WHITE..". Best chance for drops seems to be the Dark Iron mobs around the Quarry."
Inst1Quest17_Prequest = "Abandoned Hope"
Inst1Quest17_Folgequest = "A Shred of Hope"
-- No Rewards for this quest

--Quest 18 Alliance
Inst1Quest18 = "18. A Shred of Hope"
Inst1Quest18_Aim = "Return Marshal Windsor's Lost Information."
Inst1Quest18_Location = "Marshal Windsor (Blackrock Depths; "..YELLOW.."[4]"..WHITE..")"
Inst1Quest18_Note = "Onyxia attunement questline.  The Lost Information drops from Golem Lord Argelmach at "..YELLOW.."[14]"..WHITE.." and General Angerforge at "..YELLOW.."[13]"..WHITE.."."
Inst1Quest18_Prequest = "A Crumpled Up Note"
Inst1Quest18_Folgequest = "Jail Break!"
-- No Rewards for this quest

--Quest 19 Alliance
Inst1Quest19 = "19. Jail Break!"
Inst1Quest19_Aim = "Help Marshal Windsor get his gear back and free his friends. Return to Marshal Maxwell if you succeed."
Inst1Quest19_Location = "Marshal Windsor (Blackrock Depths; "..YELLOW.."[4]"..WHITE..")"
Inst1Quest19_Note = "Onyxia attunement questline.  This is an escort quest.  Be sure everyone is on the same stage before you start it.  The quest is easier if you clean the Ring of Law ("..YELLOW.."[6]"..WHITE..") and the path to the entrance before you start the event. You find Marshal Maxwell at Burning Steppes - Morgan's Vigil ("..YELLOW.."84.6, 68.8"..WHITE..")."
Inst1Quest19_Prequest = "A Shred of Hope"
Inst1Quest19_Folgequest = "Stormwind Rendezvous"
--
Inst1Quest19name1 = "Ward of the Elements"
Inst1Quest19name2 = "Blade of Reckoning"
Inst1Quest19name3 = "Skilled Fighting Blade"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst1Quest1_HORDE = Inst1Quest1
Inst1Quest1_HORDE_Aim = Inst1Quest1_Aim
Inst1Quest1_HORDE_Location = Inst1Quest1_Location
Inst1Quest1_HORDE_Note = Inst1Quest1_Note
Inst1Quest1_HORDE_Prequest = Inst1Quest1_Prequest
Inst1Quest1_HORDE_Folgequest = Inst1Quest1_Folgequest
--
Inst1Quest1name1_HORDE = Inst1Quest1name1

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst1Quest2_HORDE = Inst1Quest2
Inst1Quest2_HORDE_Aim = Inst1Quest2_Aim
Inst1Quest2_HORDE_Location = Inst1Quest2_Location
Inst1Quest2_HORDE_Note = Inst1Quest2_Note
Inst1Quest2_HORDE_Prequest = Inst1Quest2_Prequest
Inst1Quest2_HORDE_Folgequest = Inst1Quest2_Folgequest
--
Inst1Quest2name1_HORDE = Inst1Quest2name1
Inst1Quest2name2_HORDE = Inst1Quest2name2
Inst1Quest2name3_HORDE = Inst1Quest2name3

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst1Quest3_HORDE = Inst1Quest3
Inst1Quest3_HORDE_Aim = Inst1Quest3_Aim
Inst1Quest3_HORDE_Location = Inst1Quest3_Location
Inst1Quest3_HORDE_Note = Inst1Quest3_Note
Inst1Quest3_HORDE_Prequest = Inst1Quest3_Prequest
Inst1Quest3_HORDE_Folgequest = Inst1Quest3_Folgequest
--
Inst1Quest3name1_HORDE = Inst1Quest3name1
Inst1Quest3name2_HORDE = Inst1Quest3name2

--Quest 4 Horde
Inst1Quest4_HORDE = "4. Lost Thunderbrew Recipe"
Inst1Quest4_HORDE_Aim = "Bring the Lost Thunderbrew Recipe to Vivian Lagrave in Kargath."
Inst1Quest4_HORDE_Location = "Shadowmage Vivian Lagrave (Badlands - Kargath; "..YELLOW.."3.0, 47.6"..WHITE..")"
Inst1Quest4_HORDE_Note = "The prequest starts from from Apothecary Zinge in Undercity - The Apothecarium ("..YELLOW.."49.8 68.2"..WHITE..").\nYou get the recipe from one of the guards who appear if you destroy the ale barrel in the Grim Guzzler at "..YELLOW.."[15]"..WHITE.."."
Inst1Quest4_HORDE_Prequest = "Vivian Lagrave"
Inst1Quest4_HORDE_Folgequest = "None"
--
Inst1Quest4name1_HORDE = "Superior Healing Potion"
Inst1Quest4name2_HORDE = "Greater Mana Potion"
Inst1Quest4name3_HORDE = "Swiftstrike Cudgel"
Inst1Quest4name4_HORDE = "Limb Cleaver"

--Quest 5 Horde  (same as Quest 7 Alliance)
Inst1Quest5_HORDE = "5. The Heart of the Mountain"
Inst1Quest5_HORDE_Aim = Inst1Quest7_Aim
Inst1Quest5_HORDE_Location = Inst1Quest7_Location
Inst1Quest5_HORDE_Note = Inst1Quest7_Note
Inst1Quest5_HORDE_Prequest = Inst1Quest7_Prequest
Inst1Quest5_HORDE_Folgequest = Inst1Quest7_Folgequest
-- No Rewards for this quest

--Quest 6 Horde
Inst1Quest6_HORDE = "6. KILL ON SIGHT: Dark Iron Dwarves"
Inst1Quest6_HORDE_Aim = "Venture to Blackrock Depths and destroy the vile aggressors! Warlord Goretooth wants you to kill 15 Anvilrage Guardsmen, 10 Anvilrage Wardens and 5 Anvilrage Footmen. Return to him once your task is complete."
Inst1Quest6_HORDE_Location = "Sign Post (Badlands - Kargath; "..YELLOW.."3.8, 47.5"..WHITE..")"
Inst1Quest6_HORDE_Note = "You can find the dwarves in the first part of Blackrock Depths. \nTurn the quest in to Warlord Goretooth at (Badlands - Kargath, "..YELLOW.."5.8, 47.6"..WHITE..")."
Inst1Quest6_HORDE_Prequest = "None"
Inst1Quest6_HORDE_Folgequest = "KILL ON SIGHT: High Ranking Dark Iron Officials"
-- No Rewards for this quest

--Quest 7 Horde
Inst1Quest7_HORDE = "7. KILL ON SIGHT: High Ranking Dark Iron Officials"
Inst1Quest7_HORDE_Aim = "Venture to Blackrock Depths and destroy the vile aggressors! Warlord Goretooth wants you to kill 10 Anvilrage Medics, 10 Anvilrage Soldiers and 10 Anvilrage Officers. Return to him once your task is complete."
Inst1Quest7_HORDE_Location = "Sign Post (Badlands - Kargath; "..YELLOW.."3.8, 47.5"..WHITE..")"
Inst1Quest7_HORDE_Note = "The dwarves you need to kill are near Bael'Gar at "..YELLOW.."[11]"..WHITE..". \nTurn the quest in to Warlord Goretooth at (Badlands - Kargath, "..YELLOW.."5.8, 47.6"..WHITE..")."
Inst1Quest7_HORDE_Prequest = "KILL ON SIGHT: Dark Iron Dwarves"
Inst1Quest7_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 8 Horde
Inst1Quest8_HORDE = "8. Operation: Death to Angerforge"
Inst1Quest8_HORDE_Aim = "Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete."
Inst1Quest8_HORDE_Location = "Warlord Goretooth (Badlands - Kargath; "..YELLOW.."5.8, 47.6"..WHITE..")"
Inst1Quest8_HORDE_Note = "To obtain this quest you must complete both the previous KILL ON SIGHT quests and then start a quest called Grark Lorkrub from Lexlort (Badlands - Kargath; "..YELLOW.."5.8, 47.6"..WHITE.."). \nGeneral Angerforge is at "..YELLOW.."[13]"..WHITE.."."
Inst1Quest8_HORDE_Prequest = "Grark Lorkrub -> Precarious Predicament"
Inst1Quest8_HORDE_Folgequest = "None"
--
Inst1Quest8name1_HORDE = "Conqueror's Medallion"

--Quest 9 Horde
Inst1Quest9_HORDE = "9. The Rise of the Machines"
Inst1Quest9_HORDE_Aim = "Find and slay Golem Lord Argelmach. Return his head to Lotwil. You will also need to collect 10 Intact Elemental Cores from the Ragereaver Golems and Warbringer Constructs protecting Argelmach. You know this because you are psychic."
Inst1Quest9_HORDE_Location = "Lotwil Veriatus (Badlands; "..YELLOW.."26.0, 45.0"..WHITE..")"
Inst1Quest9_HORDE_Note = "You get the prequest from Hierophant Theodora Mulvadania (Badlands - Kargath; "..YELLOW.."3.0, 47.8"..WHITE..").\nGolem Lord Argelmach is at "..YELLOW.."[14]"..WHITE.."."
Inst1Quest9_HORDE_Prequest = "The Rise of the Machines"
Inst1Quest9_HORDE_Folgequest = "None"
--
Inst1Quest9name1_HORDE = "Azure Moon Amice"
Inst1Quest9name2_HORDE = "Raincaster Drape"
Inst1Quest9name3_HORDE = "Basaltscale Armor"
Inst1Quest9name4_HORDE = "Lavaplate Gauntlets"

--Quest 10 Horde  (same as Quest 9 Alliance)
Inst1Quest10_HORDE = "10. A Taste of Flame"
Inst1Quest10_HORDE_Aim = Inst1Quest9_Aim
Inst1Quest10_HORDE_Location = Inst1Quest9_Location
Inst1Quest10_HORDE_Note = Inst1Quest9_Note
Inst1Quest10_HORDE_Prequest = Inst1Quest9_Prequest
Inst1Quest10_HORDE_Folgequest = Inst1Quest9_Folgequest
--
Inst1Quest10name1_HORDE = Inst1Quest9name1
Inst1Quest10name2_HORDE = Inst1Quest9name2
Inst1Quest10name3_HORDE = Inst1Quest9name3

--Quest 11 Horde
Inst1Quest11_HORDE = "11. Disharmony of Flame"
Inst1Quest11_HORDE_Aim = "Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment."
Inst1Quest11_HORDE_Location = "Thunderheart (Badlands - Kargath; "..YELLOW.."3.4, 48.2"..WHITE..")"
Inst1Quest11_HORDE_Note = "Overmaster Pyron is a fire elemental outside the dungeon.  He patrols near the portal at "..YELLOW.."[24]"..WHITE.." on the Blackrock Depths map and at "..YELLOW.."[3]"..WHITE.." on the Blackrock Mountain entrance map."
Inst1Quest11_HORDE_Prequest = "None"
Inst1Quest11_HORDE_Folgequest = "Disharmony of Fire"
-- No Rewards for this quest

--Quest 12 Horde
Inst1Quest12_HORDE = "12. Disharmony of Fire"
Inst1Quest12_HORDE_Aim = "Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart."
Inst1Quest12_HORDE_Location = "Thunderheart (Badlands - Kargath; "..YELLOW.."3.4, 48.2"..WHITE..")"
Inst1Quest12_HORDE_Note = "You get the prequest from Thunderheart too.  Lord Incendius can be found around The Black Anvil at "..YELLOW.."[10]"..WHITE.."."
Inst1Quest12_HORDE_Prequest = "Disharmony of Flame"
Inst1Quest12_HORDE_Folgequest = "None"
--
Inst1Quest12name1_HORDE = "Sunborne Cape"
Inst1Quest12name2_HORDE = "Nightfall Gloves"
Inst1Quest12name3_HORDE = "Crypt Demon Bracers"
Inst1Quest12name4_HORDE = "Stalwart Clutch"

--Quest 13 Horde
Inst1Quest13_HORDE = "13. The Last Element"
Inst1Quest13_HORDE_Aim = "Travel to Blackrock Depths and recover 10 Essence of the Elements. Your first inclination is to search the golems and golem makers. You remember Vivian Lagrave also muttering something about elementals."
Inst1Quest13_HORDE_Location = "Shadowmage Vivian Lagrave (Badlands - Kargath; "..YELLOW.."3.0, 47.6"..WHITE..")"
Inst1Quest13_HORDE_Note = "You get the prequest from Thunderheart (Badlands - Kargath; "..YELLOW.."3.4, 48.2"..WHITE..").\n Every elemental can drop Essence of the Elements."
Inst1Quest13_HORDE_Prequest = "Disharmony of Flame"
Inst1Quest13_HORDE_Folgequest = "None"
--
Inst1Quest13name1_HORDE = "Lagrave's Seal"

--Quest 14 Horde
Inst1Quest14_HORDE = "14. Commander Gor'shak"
Inst1Quest14_HORDE_Aim = "Find Commander Gor'shak in Blackrock Depths.\nYou recall that the crudely drawn picture of the orc included bars drawn over the portrait. Perhaps you should search for a prison of some sort."
Inst1Quest14_HORDE_Location = "Galamav the Marksman (Badlands - Kargath; "..YELLOW.."5.8, 47.6"..WHITE..")"
Inst1Quest14_HORDE_Note = "You get the prequest from Thunderheart (Badlands - Kargath; "..YELLOW.."3.4, 48.2"..WHITE..").\nCommander Gor'shak is at "..YELLOW.."[3]"..WHITE..".  The key to open the prison drops from High Interrogator Gerstahn "..YELLOW.."[5]"..WHITE..".  Completing this quest will lead to you talking to Kharan Mighthammer, at "..YELLOW.."[2]"..WHITE.." and Warchief Thrall in Orgrimmar before picking up the next quest."
Inst1Quest14_HORDE_Prequest = "Disharmony of Flame"
Inst1Quest14_HORDE_Folgequest = "What Is Going On?"

--Quest 15 Horde
Inst1Quest15_HORDE = "15. The Royal Rescue"
Inst1Quest15_HORDE_Aim = "Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell."
Inst1Quest15_HORDE_Location = "Thrall (Orgrimmar - Valley of Wisdom; "..YELLOW.."32.0, 37.8"..WHITE..")"
Inst1Quest15_HORDE_Note = "You find Emperor Dagran Thaurissan at "..YELLOW.."[21]"..WHITE..".   You must defeat Emperor Dagran Thaurissan and leave the Princess alive to complete the quest.  If the Princess dies you will have to reset the entire dungeon and try again.  If successful, you can turn the quest into the Princess and she will send you back to Warchief Thrall in Orgrimmar for your reward."
Inst1Quest15_HORDE_Prequest = "Commander Gor'shak -> The Eastern Kingdoms"
Inst1Quest15_HORDE_Folgequest = "The Princess Saved?"
--
Inst1Quest15name1_HORDE = "Thrall's Resolve"
Inst1Quest15name2_HORDE = "Eye of Orgrimmar"

--Quest 16 Horde  (same as Quest 12 Alliance)
Inst1Quest16_HORDE = "16. Attunement to the Core"
Inst1Quest16_HORDE_Aim = Inst1Quest12_Aim
Inst1Quest16_HORDE_Location = Inst1Quest12_Location
Inst1Quest16_HORDE_Note = Inst1Quest12_Note
Inst1Quest16_HORDE_Prequest = Inst1Quest12_Prequest
Inst1Quest16_HORDE_Folgequest = Inst1Quest12_Folgequest
-- No Rewards for this quest

--Quest 17 Horde  (same as Quest 13 Alliance)
Inst1Quest17_HORDE = "17. The Challenge"
Inst1Quest17_HORDE_Aim = Inst1Quest13_Aim
Inst1Quest17_HORDE_Location = Inst1Quest13_Location
Inst1Quest17_HORDE_Note = Inst1Quest13_Note
Inst1Quest17_HORDE_Prequest = Inst1Quest13_Prequest
Inst1Quest17_HORDE_Folgequest = Inst1Quest13_Folgequest
-- No Rewards for this quest

--Quest 18 Horde  (same as Quest 14 Alliance)
Inst1Quest18_HORDE = "18. The Spectral Chalice"
Inst1Quest18_HORDE_Aim = Inst1Quest14_Aim
Inst1Quest18_HORDE_Location = Inst1Quest14_Location
Inst1Quest18_HORDE_Note = Inst1Quest14_Note
Inst1Quest18_HORDE_Prequest = Inst1Quest14_Prequest
Inst1Quest18_HORDE_Folgequest = Inst1Quest14_Folgequest
-- No Rewards for this quest



--------------- INST2 - Blackwing Lair ---------------

Inst2Caption = "Blackwing Lair"
Inst2QAA = "3 Quests"
Inst2QAH = "3 Quests"

--Quest 1 Alliance
Inst2Quest1 = "1. Nefarius's Corruption"
Inst2Quest1_Aim = "Slay Nefarian and recover the Red Scepter Shard. Return the Red Scepter Shard to Anachronos at the Caverns of Time in Tanaris. You have 5 hours to complete this task."
Inst2Quest1_Location = "Vaelastrasz the Corrupt (Blackwing Lair; "..YELLOW.."[2]"..WHITE..")"
Inst2Quest1_Note = "Only one person can loot the Shard.  Anachronos is at (Tanaris - Caverns of Time; "..YELLOW.."65, 49"..WHITE..")"
Inst2Quest1_Prequest = "None"
Inst2Quest1_Folgequest = "None"
--
Inst2Quest1name1 = "Onyx Embedded Leggings"
Inst2Quest1name2 = "Amulet of Shadow Shielding"

--Quest 2 Alliance
Inst2Quest2 = "2. The Lord of Blackrock"
Inst2Quest2_Aim = "Return the Head of Nefarian to Highlord Bolvar Fordragon in Stormwind."
Inst2Quest2_Location = "Head of Nefarian (drops from Nefarian; "..YELLOW.."[8]"..WHITE..")"
Inst2Quest2_Note = "Highlord Bolvar Fordragon is at (Stormwind City - Stormwind Keep; "..YELLOW.."78.0, 18.0"..WHITE.."). The follow up sends you to Field Marshal Afrasiabi (Stormwind - Valley of Heroes; "..YELLOW.."66.9, 72.38"..WHITE..") for the reward."
Inst2Quest2_Prequest = "None"
Inst2Quest2_Folgequest = "The Lord of Blackrock"
--
Inst2Quest2name1 = "Master Dragonslayer's Medallion"
Inst2Quest2name2 = "Master Dragonslayer's Orb"
Inst2Quest2name3 = "Master Dragonslayer's Ring"

--Quest 3 Alliance
Inst2Quest3 = "3. Only One May Rise"
Inst2Quest3_Aim = "Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus."
Inst2Quest3_Location = "Head of the Broodlord Lashlayer (drops from Broodlord Lashlayer; "..YELLOW.."[3]"..WHITE..")"
Inst2Quest3_Note = "Only one person can pick up the head."
Inst2Quest3_Prequest = "None"
Inst2Quest3_Folgequest = "The Path of the Righteous"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst2Quest1_HORDE = Inst2Quest1
Inst2Quest1_HORDE_Aim = Inst2Quest1_Aim
Inst2Quest1_HORDE_Location = Inst2Quest1_Location
Inst2Quest1_HORDE_Note = Inst2Quest1_Note
Inst2Quest1_HORDE_Prequest = Inst2Quest1_Prequest
Inst2Quest1_HORDE_Folgequest = Inst2Quest1_Folgequest
--
Inst2Quest1name1_HORDE = Inst2Quest1name1
Inst2Quest1name2_HORDE = Inst2Quest1name2

--Quest 2 Horde
Inst2Quest2_HORDE = "2. The Lord of Blackrock"
Inst2Quest2_HORDE_Aim = "Return the Head of Nefarian to Thrall in Orgrimmar."
Inst2Quest2_HORDE_Location = "Head of Nefarian (drops from Nefarian; "..YELLOW.."[8]"..WHITE..")"
Inst2Quest2_HORDE_Note = "The follow up sends you to High Overlord Saurfang (Orgrimmar - Valley of Strength; "..YELLOW.."51.6, 76.0"..WHITE..") for the reward."
Inst2Quest2_HORDE_Prequest = "None"
Inst2Quest2_HORDE_Folgequest = "The Lord of Blackrock"
--
Inst2Quest2name1_HORDE = "Master Dragonslayer's Medallion"
Inst2Quest2name2_HORDE = "Master Dragonslayer's Orb"
Inst2Quest2name3_HORDE = "Master Dragonslayer's Ring"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst2Quest3_HORDE = Inst2Quest3
Inst2Quest3_HORDE_Aim = Inst2Quest3_Aim
Inst2Quest3_HORDE_Location = Inst2Quest3_Location
Inst2Quest3_HORDE_Note = Inst2Quest3_Note
Inst2Quest3_HORDE_Prequest = Inst2Quest3_Prequest
Inst2Quest3_HORDE_Folgequest = Inst2Quest3_Folgequest
-- No Rewards for this quest



--------------- INST3 - Lower Blackrock Spire ---------------

Inst3Caption = "Blackrock Spire (Lower)"
Inst3QAA = "14 Quests"
Inst3QAH = "14 Quests"

--Quest 1 Alliance
Inst3Quest1 = "1. The Final Tablets"
Inst3Quest1_Aim = "Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris."
Inst3Quest1_Location = "Prospector Ironboot (Tanaris - Steamwheedle Port; "..YELLOW.."66.8, 24.0"..WHITE..")"
Inst3Quest1_Note = "You find the tablets near Shadow Hunter Vosh'gajin at "..YELLOW.."[7]"..WHITE.." and War Master Voone at "..YELLOW.."[8]"..WHITE..".\nThe rewards come from the follow up quest.  The quest line starts with Yeh'kinya at Tanaris ("..YELLOW.."67.0, 22.4"..WHITE..")."
Inst3Quest1_Prequest = "Screecher Spirits -> The Lost Tablets of Mosh'aru"
Inst3Quest1_Folgequest = "Confront Yeh'kinya"
--
Inst3Quest1name1 = "Faded Hakkari Cloak"
Inst3Quest1name2 = "Tattered Hakkari Cape"

--Quest 2 Alliance
Inst3Quest2 = "2. Kibler's Exotic Pets"
Inst3Quest2_Aim = "Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler."
Inst3Quest2_Location = "Kibler (Burning Steppes - Flame Crest; "..YELLOW.."65.8, 22.0"..WHITE..")"
Inst3Quest2_Note = "You find the Worg Pup near Halcyon at "..YELLOW.."[16]"..WHITE.."."
Inst3Quest2_Prequest = "None"
Inst3Quest2_Folgequest = "None"
--
Inst3Quest2name1 = "Worg Carrier"

--Quest 3 Alliance
Inst3Quest3 = "3. En-Ay-Es-Tee-Why"
Inst3Quest3_Aim = "Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler."
Inst3Quest3_Location = "Kibler (Burning Steppes - Flame Crest; "..YELLOW.."65.8, 22.0"..WHITE..")"
Inst3Quest3_Note = "You find the spider eggs near Mother Smolderweb at "..YELLOW.."[11]"..WHITE.."."
Inst3Quest3_Prequest = "None"
Inst3Quest3_Folgequest = "None"
--
Inst3Quest3name1 = "Smolderweb Carrier"

--Quest 4 Alliance
Inst3Quest4 = "4. Mother's Milk"
Inst3Quest4_Aim = "In the heart of Blackrock Spire you will find Mother Smolderweb. Engage her and get her to poison you. Chances are good that you will have to kill her as well. Return to Ragged John when you are poisoned so that he can 'milk' you."
Inst3Quest4_Location = "Ragged John (Burning Steppes - Flame Crest; "..YELLOW.."65.0, 23.6"..WHITE..")"
Inst3Quest4_Note = "Mother Smolderweb is at "..YELLOW.."[11]"..WHITE..". The poison effect snares nearby players as well. If it is removed or dispelled, you fail the quest."
Inst3Quest4_Prequest = "None"
Inst3Quest4_Folgequest = "None"
--
Inst3Quest4name1 = "Ragged John's Neverending Cup"

--Quest 5 Alliance
Inst3Quest5 = "5. Put Her Down"
Inst3Quest5_Aim = "Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg."
Inst3Quest5_Location = "Helendis Riverhorn (Burning Steppes - Morgan's Vigil; "..YELLOW.."85.6, 68.8"..WHITE..")"
Inst3Quest5_Note = "You find Halycon at "..YELLOW.."[16]"..WHITE.."."
Inst3Quest5_Prequest = "None"
Inst3Quest5_Folgequest = "None"
--
Inst3Quest5name1 = "Astoria Robes"
Inst3Quest5name2 = "Traphook Jerkin"
Inst3Quest5name3 = "Jadescale Breastplate"

--Quest 6 Alliance
Inst3Quest6 = "6. Urok Doomhowl"
Inst3Quest6_Aim = "Read Warosh's Scroll. Bring Warosh's Mojo to Warosh."
Inst3Quest6_Location = "Warosh (Blackrock Spire; "..YELLOW.."[2]"..WHITE..")"
Inst3Quest6_Note = "To get Warosh's Mojo you have to evoke and kill Urok Doomhowl "..YELLOW.."[13]"..WHITE..". For his Evocation you need a Spear and Highlord Omokk's Head "..YELLOW.."[6]"..WHITE..". The Spear is at "..YELLOW.."[4]"..WHITE..". During the Evocation a few waves of ogres appear before Urok Doomhowl attacks you. You can use the Spear during the fight to damage the ogres."
Inst3Quest6_Prequest = "None"
Inst3Quest6_Folgequest = "None"
--
Inst3Quest6name1 = "Prismcharm"

--Quest 7 Alliance
Inst3Quest7 = "7. Bijou's Belongings"
Inst3Quest7_Aim = "Find Bijou's Belongings and return them to her. Good luck!"
Inst3Quest7_Location = "Bijou (Blackrock Spire; "..YELLOW.."[3]"..WHITE..")"
Inst3Quest7_Note = "You find Bijou's Belongings on the way to Mother Smolderweb at "..YELLOW.."[11]"..WHITE..".\nThe followup goes to Marshal Maxwell at (Burning Steppes - Morgan's Vigil; "..YELLOW.."84.6, 68.8"..WHITE..")."
Inst3Quest7_Prequest = "None"
Inst3Quest7_Folgequest = "Message to Maxwell"
-- No Rewards for this quest

--Quest 8 Alliance
Inst3Quest8 = "8. Maxwell's Mission"
Inst3Quest8_Aim = "Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done."
Inst3Quest8_Location = "Marshal Maxwell (Burning Steppes - Morgan's Vigil; "..YELLOW.."84.6, 68.8"..WHITE..")"
Inst3Quest8_Note = "You find War Master Voone at "..YELLOW.."[8]"..WHITE..", Highlord Omokk at "..YELLOW.."[6]"..WHITE.." and Overlord Wyrmthalak at "..YELLOW.."[17]"..WHITE.."."
Inst3Quest8_Prequest = "Message to Maxwell"
Inst3Quest8_Folgequest = "None"
--
Inst3Quest8name1 = "Wyrmthalak's Shackles"
Inst3Quest8name2 = "Omokk's Girth Restrainer"
Inst3Quest8name3 = "Halycon's Muzzle"
Inst3Quest8name4 = "Vosh'gajin's Strand"
Inst3Quest8name5 = "Voone's Vice Grips"

--Quest 9 Alliance
Inst3Quest9 = "9. Seal of Ascension"
Inst3Quest9_Aim = "Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan."
Inst3Quest9_Location = "Vaelan (Blackrock Spire; "..YELLOW.."[1]"..WHITE..")"
Inst3Quest9_Note = "This is the quest for the key for Upper Blackrock Spire.  You get the Gemstone of Spirestone from Highlord Omokk at "..YELLOW.."[6]"..WHITE..", the Gemstone of Smolderthorn from War Master Voone at "..YELLOW.."[8]"..WHITE.." and the Gemstone of Bloodaxe from Overlord Wyrmthalak at "..YELLOW.."[17]"..WHITE..".  The Unadorned Seal of Ascension can drop from near all mobs in Lower Blackrock Spire or outside the dungeon."
Inst3Quest9_Prequest = "None"
Inst3Quest9_Folgequest = "Seal of Ascension"
-- No Rewards for this quest

--Quest 10 Alliance
Inst3Quest10 = "10. General Drakkisath's Command"
Inst3Quest10_Aim = "Take General Drakkisath's Command to Marshal Maxwell in Burning Steppes."
Inst3Quest10_Location = "General Drakkisath's Command (drops from Overlord Wyrmthalak; "..YELLOW.."[17]"..WHITE..")"
Inst3Quest10_Note = "Marshal Maxwell is in the Burning Steppes - Morgan's Vigil; ("..YELLOW.."84.6, 68.8"..WHITE..")."
Inst3Quest10_Prequest = "None"
Inst3Quest10_Folgequest = "General Drakkisath's Demise ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
-- No Rewards for this quest

--Quest 11 Alliance
Inst3Quest11 = "11. The Left Piece of Lord Valthalak's Amulet"
Inst3Quest11_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst3Quest11_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst3Quest11_Note = "Dungeon Armor set questline.  The Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nMor Grayhoof is summoned at "..YELLOW.."[8]"..WHITE.."."
Inst3Quest11_Prequest = "Components of Importance"
Inst3Quest11_Folgequest = "I See Alcaz Island In Your Future..."
-- No Rewards for this quest

--Quest 12 Alliance
Inst3Quest12 = "12. The Right Piece of Lord Valthalak's Amulet"
Inst3Quest12_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst3Quest12_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst3Quest12_Note = "Dungeon Armor set questline.  Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nMor Grayhoof is summoned at "..YELLOW.."[8]"..WHITE.."."
Inst3Quest12_Prequest = "More Components of Importance"
Inst3Quest12_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
-- No Rewards for this quest

--Quest 13 Alliance
Inst3Quest13 = "13. Snakestone of the Shadow Huntress"
Inst3Quest13_Aim = "Travel to Blackrock Spire and slay Shadow Hunter Vosh'gajin. Recover Vosh'gajin's Snakestone and return to Kilram."
Inst3Quest13_Location = "Kilram (Winterspring - Everlook; "..YELLOW.."61.2, 37.0"..WHITE..")"
Inst3Quest13_Note = "Blacksmith quest.  Shadow Hunter Vosh'gajin is at "..YELLOW.."[7]"..WHITE.."."
Inst3Quest13_Prequest = "None"
Inst3Quest13_Folgequest = "None"
--
Inst3Quest13name1 = "Plans: Dawn's Edge"

--Quest 14 Alliance
Inst3Quest14 = "14. Hot Fiery Death"
Inst3Quest14_Aim = "Someone in this world must know what to do with these gauntlets. Good luck!"
Inst3Quest14_Location = "Human Remains (Lower Blackrock Spire; "..YELLOW.."[9]"..WHITE..")"
Inst3Quest14_Note = "Blacksmith quest.  Be sure to pick up the Unfired Plate Gauntlets near the Human Remains at "..YELLOW.."[9]"..WHITE..". Turns in to Malyfous Darkhammer (Winterspring - Everlook; "..YELLOW.."61.0, 38.6"..WHITE..").  The rewards listed are for the followup quest."
Inst3Quest14_Prequest = "None"
Inst3Quest14_Folgequest = "Fiery Plate Gauntlets"
--
Inst3Quest14name1 = "Plans: Fiery Plate Gauntlets"
Inst3Quest14name2 = "Fiery Plate Gauntlets"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst3Quest1_HORDE = Inst3Quest1
Inst3Quest1_HORDE_Aim = Inst3Quest1_Aim
Inst3Quest1_HORDE_Location = Inst3Quest1_Location
Inst3Quest1_HORDE_Note = Inst3Quest1_Note
Inst3Quest1_HORDE_Prequest = Inst3Quest1_Prequest
Inst3Quest1_HORDE_Folgequest = Inst3Quest1_Folgequest
--
Inst3Quest1name1_HORDE = Inst3Quest1name1
Inst3Quest1name2_HORDE = Inst3Quest1name2

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst3Quest2_HORDE = Inst3Quest2
Inst3Quest2_HORDE_Aim = Inst3Quest2_Aim
Inst3Quest2_HORDE_Location = Inst3Quest2_Location
Inst3Quest2_HORDE_Note = Inst3Quest2_Note
Inst3Quest2_HORDE_Prequest = Inst3Quest2_Prequest
Inst3Quest2_HORDE_Folgequest = Inst3Quest2_Folgequest
--
Inst3Quest2name1_HORDE = Inst3Quest2name1

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst3Quest3_HORDE = Inst3Quest3
Inst3Quest3_HORDE_Aim = Inst3Quest3_Aim
Inst3Quest3_HORDE_Location = Inst3Quest3_Location
Inst3Quest3_HORDE_Note = Inst3Quest3_Note
Inst3Quest3_HORDE_Prequest = Inst3Quest3_Prequest
Inst3Quest3_HORDE_Folgequest = Inst3Quest3_Folgequest
--
Inst3Quest3name1_HORDE = Inst3Quest3name1

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst3Quest4_HORDE = Inst3Quest4
Inst3Quest4_HORDE_Aim = Inst3Quest4_Aim
Inst3Quest4_HORDE_Location = Inst3Quest4_Location
Inst3Quest4_HORDE_Note = Inst3Quest4_Note
Inst3Quest4_HORDE_Prequest = Inst3Quest4_Prequest
Inst3Quest4_HORDE_Folgequest = Inst3Quest4_Folgequest
--
Inst3Quest4name1_HORDE = Inst3Quest4name1

--Quest 5 Horde
Inst3Quest5_HORDE = "5. The Pack Mistress"
Inst3Quest5_HORDE_Aim = "Slay Halycon, pack mistress of the Bloodaxe worg."
Inst3Quest5_HORDE_Location = "Galamav the Marksman (Badlands - Kargath; "..YELLOW.."5.8, 47.6"..WHITE..")"
Inst3Quest5_HORDE_Note = "You find Halycon at "..YELLOW.."[15]"..WHITE.."."
Inst3Quest5_HORDE_Prequest = "None"
Inst3Quest5_HORDE_Folgequest = "None"
--
Inst3Quest5name1_HORDE = "Astoria Robes"
Inst3Quest5name2_HORDE = "Traphook Jerkin"
Inst3Quest5name3_HORDE = "Jadescale Breastplate"

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst3Quest6_HORDE = Inst3Quest6
Inst3Quest6_HORDE_Aim = Inst3Quest6_Aim
Inst3Quest6_HORDE_Location = Inst3Quest6_Location
Inst3Quest6_HORDE_Note = Inst3Quest6_Note
Inst3Quest6_HORDE_Prequest = Inst3Quest6_Prequest
Inst3Quest6_HORDE_Folgequest = Inst3Quest6_Folgequest
--
Inst3Quest6name1_HORDE = Inst3Quest6name1

--Quest 7 Horde
Inst3Quest7_HORDE = "7. Operative Bijou"
Inst3Quest7_HORDE_Aim = "Travel to Blackrock Spire and find out what happened to Bijou."
Inst3Quest7_HORDE_Location = "Lexlort (Badlands - Kargath; "..YELLOW.."5.8, 47.6"..WHITE..")"
Inst3Quest7_HORDE_Note = "You find Bijou at "..YELLOW.."[3]"..WHITE.."."
Inst3Quest7_HORDE_Prequest = "None"
Inst3Quest7_HORDE_Folgequest = "Bijou's Belongings"
-- No Rewards for this quest

--Quest 8 Horde
Inst3Quest8_HORDE = "8. Bijou's Belongings"
Inst3Quest8_HORDE_Aim = "Find Bijou's Belongings and return them to her. You recall her mentioning that she stashed them on the bottom floor of the city."
Inst3Quest8_HORDE_Location = "Bijou (Blackrock Spire; "..YELLOW.."[3]"..WHITE..")"
Inst3Quest8_HORDE_Note = "You find Bijou's Belongings on the way to Mother Smolderweb at "..YELLOW.."[11]"..WHITE..".\The rewards below are for the followup quest, which turns in back at Lexlort (Badlands - Kargath; "..YELLOW.."5.8, 47.6"..WHITE..")."
Inst3Quest8_HORDE_Prequest = "Operative Bijou"
Inst3Quest8_HORDE_Folgequest = "Bijou's Reconnaissance Report"
--
Inst3Quest8name1_HORDE = "Freewind Gloves"
Inst3Quest8name2_HORDE = "Seapost Girdle"

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst3Quest9_HORDE = Inst3Quest9
Inst3Quest9_HORDE_Aim = Inst3Quest9_Aim
Inst3Quest9_HORDE_Location = Inst3Quest9_Location
Inst3Quest9_HORDE_Note = Inst3Quest9_Note
Inst3Quest9_HORDE_Prequest = Inst3Quest9_Prequest
Inst3Quest9_HORDE_Folgequest = Inst3Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde
Inst3Quest10_HORDE = "10. Warlord's Command"
Inst3Quest10_HORDE_Aim = "Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished."
Inst3Quest10_HORDE_Location = "Warlord Goretooth (Badlands - Kargath; "..YELLOW.."65,22"..WHITE..")"
Inst3Quest10_HORDE_Note = "Onyxia attunement questline.  You find Highlord Omokk at "..YELLOW.."[6]"..WHITE..", War Master Voone at "..YELLOW.."[8]"..WHITE.." and Overlord Wyrmthalak at "..YELLOW.."[17]"..WHITE..".  The Blackrock Documents appear next to one of these 3 bosses."
Inst3Quest10_HORDE_Prequest = "None"
Inst3Quest10_HORDE_Folgequest = "Eitrigg's Wisdom -> For the Horde! ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
--
Inst3Quest10name1_HORDE = "Wyrmthalak's Shackles"
Inst3Quest10name2_HORDE = "Omokk's Girth Restrainer"
Inst3Quest10name3_HORDE = "Halycon's Muzzle"
Inst3Quest10name4_HORDE = "Vosh'gajin's Strand"
Inst3Quest10name5_HORDE = "Voone's Vice Grips"

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst3Quest11_HORDE = Inst3Quest11
Inst3Quest11_HORDE_Aim = Inst3Quest11_Aim
Inst3Quest11_HORDE_Location = Inst3Quest11_Location
Inst3Quest11_HORDE_Note = Inst3Quest11_Note
Inst3Quest11_HORDE_Prequest = Inst3Quest11_Prequest
Inst3Quest11_HORDE_Folgequest = Inst3Quest11_Folgequest
-- No Rewards for this quest

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst3Quest12_HORDE = Inst3Quest12
Inst3Quest12_HORDE_Aim = Inst3Quest12_Aim
Inst3Quest12_HORDE_Location = Inst3Quest12_Location
Inst3Quest12_HORDE_Note = Inst3Quest12_Note
Inst3Quest12_HORDE_Prequest = Inst3Quest12_Prequest
Inst3Quest12_HORDE_Folgequest = Inst3Quest12_Folgequest
-- No Rewards for this quest

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst3Quest13_HORDE = Inst3Quest13
Inst3Quest13_HORDE_Aim = Inst3Quest13_Aim
Inst3Quest13_HORDE_Location = Inst3Quest13_Location
Inst3Quest13_HORDE_Note = Inst3Quest13_Note
Inst3Quest13_HORDE_Prequest = Inst3Quest13_Prequest
Inst3Quest13_HORDE_Folgequest = Inst3Quest13_Folgequest
--
Inst3Quest13name1_HORDE = Inst3Quest13name1

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst3Quest14_HORDE = Inst3Quest14
Inst3Quest14_HORDE_Aim = Inst3Quest14_Aim
Inst3Quest14_HORDE_Location = Inst3Quest14_Location
Inst3Quest14_HORDE_Note = Inst3Quest14_Note
Inst3Quest14_HORDE_Prequest = Inst3Quest14_Prequest
Inst3Quest14_HORDE_Folgequest = Inst3Quest14_Folgequest
--
Inst3Quest14name1_HORDE = Inst3Quest14name1
Inst3Quest14name2_HORDE = Inst3Quest14name2



--------------- INST4 - Upper Blackrock Spire ---------------

Inst4Caption = "Blackrock Spire (Upper)"
Inst4QAA = "12 Quests"
Inst4QAH = "13 Quests"

--Quest 1 Alliance
Inst4Quest1 = "1. The Matron Protectorate"
Inst4Quest1_Aim = "Travel to Winterspring and find Haleh. Give her Awbee's scale."
Inst4Quest1_Location = "Awbee (Blackrock Spire; "..YELLOW.."[6]"..WHITE..")"
Inst4Quest1_Note = "You find Awbee in the room after the Arena at "..YELLOW.."[6]"..WHITE..". She stands on a jutty.\nHaleh is in Winterspring ("..YELLOW.."54.4, 51.2"..WHITE..").  There's a cave that starts at coordinates "..YELLOW.."57.0, 50.0"..WHITE..".  At the end of that cave is a portal that teleports you to Haleh."
Inst4Quest1_Prequest = "None"
Inst4Quest1_Folgequest = "Wrath of the Blue Flight"
-- No Rewards for this quest

--Quest 2 Alliance
Inst4Quest2 = "2. Finkle Einhorn, At Your Service!"
Inst4Quest2_Aim = "Talk to Malyfous Darkhammer in Everlook."
Inst4Quest2_Location = "Finkle Einhorn (Blackrock Spire; "..YELLOW.."[7]"..WHITE..")"
Inst4Quest2_Note = "Finkle Einhorn spawns after skinning The Beast. You find Malyfous Darkhammer at (Winterspring - Everlook; "..YELLOW.."61.0, 38.6"..WHITE..")."
Inst4Quest2_Prequest = "None"
Inst4Quest2_Folgequest = "Leggings of Arcana, Cap of the Scarlet Savant, Breastplate of Bloodthirst"
-- No Rewards for this quest

--Quest 3 Alliance
Inst4Quest3 = "3. Egg Freezing"
Inst4Quest3_Aim = "Use the Eggscilloscope Prototype on an egg in the Rookery."
Inst4Quest3_Location = "Tinkee Steamboil (Burning Steppes - Flame Crest; "..YELLOW.."65.2, 23.8"..WHITE..")"
Inst4Quest3_Note = "You can find the eggs in the room of Father Flame at "..YELLOW.."[2]"..WHITE.."."
Inst4Quest3_Prequest = "Broodling Essence -> Tinkee Steamboil"
Inst4Quest3_Folgequest = "Egg Collection"
--
Inst4Quest3name1 = "Eggscilloscope"

--Quest 4 Alliance
Inst4Quest4 = "4. Eye of the Emberseer"
Inst4Quest4_Aim = "Bring the Eye of the Emberseer to Duke Hydraxis in Azshara."
Inst4Quest4_Location = "Duke Hydraxis (Azshara; "..YELLOW.."79.2, 73.6"..WHITE..")"
Inst4Quest4_Note = "You can find Pyroguard Emberseer at "..YELLOW.."[1]"..WHITE..".  This quest will eventually give you the Eternal Quintessence, which is needed for the Molten Core raid."
Inst4Quest4_Prequest = "Poisoned Water"
Inst4Quest4_Folgequest = "The Molten Core"
-- No Rewards for this quest

--Quest 5 Alliance
Inst4Quest5 = "5. General Drakkisath's Demise"
Inst4Quest5_Aim = "Travel to Blackrock Spire and destroy General Drakkisath. Return to Marshal Maxwell when the job is done."
Inst4Quest5_Location = "Marshal Maxwell (Burning Steppes - Morgan's Vigil; "..YELLOW.."84.6, 68.8"..WHITE..")"
Inst4Quest5_Note = "You find General Drakkisath at "..YELLOW.."[8]"..WHITE.."."
Inst4Quest5_Prequest = "General Drakkisath's Command ("..YELLOW.."Lower Blackrock Spire"..WHITE..")"
Inst4Quest5_Folgequest = "None"
--
Inst4Quest5name1 = "Mark of Tyranny"
Inst4Quest5name2 = "Eye of the Beast"
Inst4Quest5name3 = "Blackhand's Breadth"

--Quest 6 Alliance
Inst4Quest6 = "6. Doomrigger's Clasp"
Inst4Quest6_Aim = "Bring Doomrigger's Clasp to Mayara Brightwing in the Burning Steppes."
Inst4Quest6_Location = "Mayara Brightwing (Burning Steppes - Morgan's Vigil; "..YELLOW.."84.8, 69.0"..WHITE..")"
Inst4Quest6_Note = "You get the prequest from Count Remington Ridgewell (Stormwind - Stormwind Keep; "..YELLOW.."74.0, 30.0"..WHITE..").\n\nDoomrigger's Clasp is at "..YELLOW.."[2]"..WHITE.." in a chest.  The rewards listed are for the followup quest."
Inst4Quest6_Prequest = "Mayara Brightwing"
Inst4Quest6_Folgequest = "Delivery to Ridgewell"
--
Inst4Quest6name1 = "Swiftfoot Treads"
Inst4Quest6name2 = "Blinkstrike Armguards"

--Quest 7 Alliance
Inst4Quest7 = "7. Blackhand's Command"
Inst4Quest7_Aim = "The letter indicates that General Drakkisath guards the brand. Perhaps you should investigate."
Inst4Quest7_Location = "Blackhand's Command (drops from Scarshield Quartermaster; "..YELLOW.."[1] on Entrance Map"..WHITE..")"
Inst4Quest7_Note = "Blackwing Lair attunement quest. Scarshield Quartermaster is found if you turn right before the LBRS/UBRS portal.\n\nGeneral Drakkisath is at "..YELLOW.."[8]"..WHITE..". The brand is behind him."
Inst4Quest7_Prequest = "None"
Inst4Quest7_Folgequest = "None"
-- No Rewards for this quest

--Quest 8 Alliance
Inst4Quest8 = "8. Final Preparations"
Inst4Quest8_Aim = "Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain."
Inst4Quest8_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst4Quest8_Note = "Dungeon Armor set questline.  Extra-Dimensional Ghost Revealer is needed to see Bodley.  You get it from the 'In Search of Anthion' quest.  Blackrock Bracers drop off mobs in Upper and Lower Blackrock Spire and outside the dungeon.  Mobs with 'Blackhand' in the name have a higher chance to drop the bracers.  The Flask of Supreme Power is made by an Alchemist.  The prequests has parts in Lower Blackrock Spire, Dire Maul, Stratholme and Scholomance."
Inst4Quest8_Prequest = "The Right Piece of Lord Valthalak's Amulet"
Inst4Quest8_Folgequest = "Mea Culpa, Lord Valthalak"
-- No Rewards for this quest

--Quest 9 Alliance
Inst4Quest9 = "9. Mea Culpa, Lord Valthalak"
Inst4Quest9_Aim = "Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak."
Inst4Quest9_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst4Quest9_Note = "Dungeon Armor set questline.  Extra-Dimensional Ghost Revealer is needed to see Bodley.  You get it from the 'In Search of Anthion' quest.  Lord Valthalak is summoned at "..YELLOW.."[7]"..WHITE..".  The rewards listed are for the follow up quest."
Inst4Quest9_Prequest = "Final Preparations"
Inst4Quest9_Folgequest = "Return to Bodley"
--
Inst4Quest9name1 = "Brazier of Invocation"
Inst4Quest9name2 = "Brazier of Invocation: User's Manual"

--Quest 10 Alliance
Inst4Quest10 = "10. The Demon Forge"
Inst4Quest10_Aim = "Travel to Blackrock Spire and find Goraluk Anvilcrack. Slay him and then use the Blood Stained Pike upon his corpse. After his soul has been siphoned, the pike will be Soul Stained. You must also find the Unforged Rune Covered Breastplate. Return both the Soul Stained Pike and the Unforged Rune Covered Breastplate to Lorax in Winterspring."
Inst4Quest10_Location = "Lorax (Winterspring; "..YELLOW.."63.8, 73.6"..WHITE..")"
Inst4Quest10_Note = "Blacksmith quest.  Goraluk Anvilcrack is at "..YELLOW.."[4]"..WHITE.."."
Inst4Quest10_Prequest = "Lorax's Tale"
Inst4Quest10_Folgequest = "None"
--
Inst4Quest10name1 = "Plans: Demon Forged Breastplate"
Inst4Quest10name2 = "Demon Kissed Sack"
Inst4Quest10name3 = "Elixir of Demonslaying"

--Quest 11 Alliance
Inst4Quest11 = "11. Egg Collection"
Inst4Quest11_Aim = "Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes."
Inst4Quest11_Location = "Tinkee Steamboil (Burning Steppes - Flame Crest; "..YELLOW.."65.2, 23.8"..WHITE..")"
Inst4Quest11_Note = "You find the eggs in the room of Father Flame at "..YELLOW.."[2]"..WHITE.."."
Inst4Quest11_Prequest = "Egg Freezing"
Inst4Quest11_Folgequest = "Leonid Barthalomew -> Dawn's Gambit ("..YELLOW.."Scholomance"..WHITE..")"
-- No Rewards for this quest

--Quest 12 Alliance
Inst4Quest12 = "12. Drakefire Amulet"
Inst4Quest12_Aim = "You must retrieve the Blood of the Black Dragon Champion from General Drakkisath. Drakkisath can be found in his throne room behind the Halls of Ascension in Blackrock Spire."
Inst4Quest12_Location = "Haleh (Winterspring; "..YELLOW.."54.4, 51.2"..WHITE..")"
Inst4Quest12_Note = "This the last quest for Onyxia attunement.  More information about how to start the quest line is in the Blackrock Depths quest 'Marshal Windsor'.  You find General Drakkisath at "..YELLOW.."[8]"..WHITE.."."
Inst4Quest12_Prequest = "The Great Masquerade -> The Dragon's Eye"
Inst4Quest12_Folgequest = "No"
--
Inst4Quest12name1 = "Drakefire Amulet"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst4Quest1_HORDE = Inst4Quest1
Inst4Quest1_HORDE_Aim = Inst4Quest1_Aim
Inst4Quest1_HORDE_Location = Inst4Quest1_Location
Inst4Quest1_HORDE_Note = Inst4Quest1_Note
Inst4Quest1_HORDE_Prequest = Inst4Quest1_Prequest
Inst4Quest1_HORDE_Folgequest = Inst4Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst4Quest2_HORDE = Inst4Quest2
Inst4Quest2_HORDE_Aim = Inst4Quest2_Aim
Inst4Quest2_HORDE_Location = Inst4Quest2_Location
Inst4Quest2_HORDE_Note = Inst4Quest2_Note
Inst4Quest2_HORDE_Prequest = Inst4Quest2_Prequest
Inst4Quest2_HORDE_Folgequest = Inst4Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst4Quest3_HORDE = Inst4Quest3
Inst4Quest3_HORDE_Aim = Inst4Quest3_Aim
Inst4Quest3_HORDE_Location = Inst4Quest3_Location
Inst4Quest3_HORDE_Note = Inst4Quest3_Note
Inst4Quest3_HORDE_Prequest = Inst4Quest3_Prequest
Inst4Quest3_HORDE_Folgequest = Inst4Quest3_Folgequest
--
Inst4Quest3name1_HORDE = Inst4Quest3name1

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst4Quest4_HORDE = Inst4Quest4
Inst4Quest4_HORDE_Aim = Inst4Quest4_Aim
Inst4Quest4_HORDE_Location = Inst4Quest4_Location
Inst4Quest4_HORDE_Note = Inst4Quest4_Note
Inst4Quest4_HORDE_Prequest = Inst4Quest4_Prequest
Inst4Quest4_HORDE_Folgequest = Inst4Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde
Inst4Quest5_HORDE = "5. The Darkstone Tablet"
Inst4Quest5_HORDE_Aim = "Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath.."
Inst4Quest5_HORDE_Location = "Vivian Lagrave (Badlands - Kargath; "..YELLOW.."3.0, 47.6"..WHITE..")"
Inst4Quest5_HORDE_Note = "You get the prequest from Apothecary Zinge in Undercity - The Apothecarium ("..YELLOW.."50.0, 68.6"..WHITE..").\n\nThe Darkstone Tablet is at "..YELLOW.."[3]"..WHITE.." in a chest."
Inst4Quest5_HORDE_Prequest = "Vivian Lagrave and the Darkstone Tablet"
Inst4Quest5_HORDE_Folgequest = "None"
--
Inst4Quest5name1_HORDE = "Swiftfoot Treads"
Inst4Quest5name2_HORDE = "Blinkstrike Armguards"

--Quest 6 Horde
Inst4Quest6_HORDE = "6. For The Horde!"
Inst4Quest6_HORDE_Aim = "Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar."
Inst4Quest6_HORDE_Location = "Thrall (Orgrimmar; "..YELLOW.."32, 37.8"..WHITE..")"
Inst4Quest6_HORDE_Note = "Onyxia attunement questline.  You find Warchief Rend Blackhand at "..YELLOW.."[5]"..WHITE.."."
Inst4Quest6_HORDE_Prequest = "Warlord's Command -> Eitrigg's Wisdom"
Inst4Quest6_HORDE_Folgequest = "What the Wind Carries"
--
Inst4Quest6name1_HORDE = "Mark of Tyranny"
Inst4Quest6name2_HORDE = "Eye of the Beast"
Inst4Quest6name3_HORDE = "Blackhand's Breadth"

--Quest 7 Horde
Inst4Quest7_HORDE = "7. Oculus Illusions"
Inst4Quest7_HORDE_Aim = "Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete."
Inst4Quest7_HORDE_Location = "Myranda the Hag (Western Plaguelands - Sorrow Hill; "..YELLOW.."50.8, 77.8"..WHITE..")"
Inst4Quest7_HORDE_Note = "Onyxia attunement questline.  The Black Dragonspawn Eyes will drop from Dragonkin mobs."
Inst4Quest7_HORDE_Prequest = "What the Wind Carries -> Mistress of Deception"
Inst4Quest7_HORDE_Folgequest = "Emberstrife"
-- No Rewards for this quest

--Quest 8 Horde
Inst4Quest8_HORDE = "8. Blood of the Black Dragon Champion"
Inst4Quest8_HORDE_Aim = "Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rokaro."
Inst4Quest8_HORDE_Location = "Rexxar (Roams from Stonetalon Mountains to Feralas)"
Inst4Quest8_HORDE_Note = "Last part of the Onyxia attunement questline.  Rexxar spawns at the border between Stonetalon Mountains and walks down through Desolace to Feralas.  The best way of finding him is starting in Feralas at around "..YELLOW.."48.2, 24.8"..WHITE.." and moving North to intercept him.   You find General Drakkisath at "..YELLOW.."[8]"..WHITE.."."
Inst4Quest8_HORDE_Prequest = "The Test of Skulls, Axtroz -> Ascension..."
Inst4Quest8_HORDE_Folgequest = "None"
--
Inst4Quest8name1_HORDE = "Drakefire Amulet"

--Quest 9 Horde  (same as Quest 7 Alliance)
Inst4Quest9_HORDE = "9. Blackhand's Command"
Inst4Quest9_HORDE_Aim = Inst4Quest7_Aim
Inst4Quest9_HORDE_Location = Inst4Quest7_Location
Inst4Quest9_HORDE_Note = Inst4Quest7_Note
Inst4Quest9_HORDE_Prequest = Inst4Quest7_Prequest
Inst4Quest9_HORDE_Folgequest = Inst4Quest7_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 8 Alliance)
Inst4Quest10_HORDE = "10. Final Preparations"
Inst4Quest10_HORDE_Aim = Inst4Quest8_Aim
Inst4Quest10_HORDE_Location = Inst4Quest8_Location
Inst4Quest10_HORDE_Note = Inst4Quest8_Note
Inst4Quest10_HORDE_Prequest = Inst4Quest8_Prequest
Inst4Quest10_HORDE_Folgequest = Inst4Quest8_Folgequest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 9 Alliance)
Inst4Quest11_HORDE = "11. Mea Culpa, Lord Valthalak"
Inst4Quest11_HORDE_Aim = Inst4Quest9_Aim
Inst4Quest11_HORDE_Location = Inst4Quest9_Location
Inst4Quest11_HORDE_Note = Inst4Quest9_Note
Inst4Quest11_HORDE_Prequest = Inst4Quest9_Prequest
Inst4Quest11_HORDE_Folgequest = Inst4Quest9_Folgequest
--
Inst4Quest11name1_HORDE = Inst4Quest9name1
Inst4Quest11name2_HORDE = Inst4Quest9name2

--Quest 12 Horde  (same as Quest 10 Alliance)
Inst4Quest12_HORDE = "12. The Demon Forge"
Inst4Quest12_HORDE_Aim = Inst4Quest10_Aim
Inst4Quest12_HORDE_Location = Inst4Quest10_Location
Inst4Quest12_HORDE_Note = Inst4Quest10_Note
Inst4Quest12_HORDE_Prequest = Inst4Quest10_Prequest
Inst4Quest12_HORDE_Folgequest = Inst4Quest10_Folgequest
--
Inst4Quest12name1_HORDE = Inst4Quest10name1
Inst4Quest12name2_HORDE = Inst4Quest10name2
Inst4Quest12name3_HORDE = Inst4Quest10name3

--Quest 13 Horde  (same as Quest 11 Alliance)
Inst4Quest13_HORDE = "13. Egg Collection"
Inst4Quest13_HORDE_Aim = Inst4Quest11_Aim
Inst4Quest13_HORDE_Location = Inst4Quest11_Location
Inst4Quest13_HORDE_Note = Inst4Quest11_Note
Inst4Quest13_HORDE_Prequest = Inst4Quest11_Prequest
Inst4Quest13_HORDE_Folgequest = Inst4Quest11_Folgequest
-- No Rewards for this quest



--------------- INST5 - Deadmines ---------------

Inst5Caption = "Deadmines"
Inst5QAA = "7 Quests" 
Inst5QAH = "No Quests" 

--Quest 1 Alliance
Inst5Quest1 = "1. Red Silk Bandanas"
Inst5Quest1_Aim = "Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas."
Inst5Quest1_Location = "Scout Riell (Westfall - Sentinel Hill; "..YELLOW.."56.6, 47.4"..WHITE..")"
Inst5Quest1_Note = "You can get the Red Silk Bandanas from miners in the Deadmines or the in the town where the dungeon is located.  The quest becomes available after you complete the The Defias Brotherhood questline up to the part where you have to kill Edwin VanCleef."
Inst5Quest1_Prequest = "The Defias Brotherhood"
Inst5Quest1_Folgequest = "None"
--
Inst5Quest1name1 = "Solid Shortblade"
Inst5Quest1name2 = "Scrimshaw Dagger"
Inst5Quest1name3 = "Piercing Axe"

--Quest 2 Alliance
Inst5Quest2 = "2. Collecting Memories"
Inst5Quest2_Aim = "Retrieve 4 Miners' Union Cards and return them to Wilder Thistlenettle in Stormwind."
Inst5Quest2_Location = "Wilder Thistlenettle (Stormwind - Dwarven District; "..YELLOW.."65.2, 21.2"..WHITE..")"
Inst5Quest2_Note = "The cards drop off undead mobs outside the dungeon in the area near "..YELLOW.."[3]"..WHITE.." on the Entrance map."
Inst5Quest2_Prequest = "None"
Inst5Quest2_Folgequest = "None"
--
Inst5Quest2name1 = "Tunneler's Boots"
Inst5Quest2name2 = "Dusty Mining Gloves"

--Quest 3 Alliance
Inst5Quest3 = "3. Oh Brother. . ."
Inst5Quest3_Aim = "Bring Foreman Thistlenettle's Explorers' League Badge to Wilder Thistlenettle in Stormwind."
Inst5Quest3_Location = "Wilder Thistlenettle (Stormwind - Dwarven District; "..YELLOW.."65.2, 21.2"..WHITE..")"
Inst5Quest3_Note = "Foreman Thistlenettle is found outside the dungeon in the undead area at "..YELLOW.."[3]"..WHITE.." on the Entrance map."
Inst5Quest3_Prequest = "None"
Inst5Quest3_Folgequest = "None"
--
Inst5Quest3name1 = "Miner's Revenge"

--Quest 4 Alliance
Inst5Quest4 = "4. Underground Assault"
Inst5Quest4_Aim = "Retrieve the Gnoam Sprecklesprocket from the Deadmines and return it to Shoni the Shilent in Stormwind."
Inst5Quest4_Location = "Shoni the Silent (Stormwind - Dwarven District; "..YELLOW.."62.6, 34.1"..WHITE..")"
Inst5Quest4_Note = "The optional prequest can be obtained from Gnoarn (Ironforge - Tinkertown; "..YELLOW.."69.4, 50.6"..WHITE..").\nSneed's Shredder drops the Gnoam Sprecklesprocket "..YELLOW.."[3]"..WHITE.."."
Inst5Quest4_Prequest = "Speak with Shoni"
Inst5Quest4_Folgequest = "None"
--
Inst5Quest4name1 = "Polar Gauntlets"
Inst5Quest4name2 = "Sable Wand"

--Quest 5 Alliance
Inst5Quest5 = "5. The Defias Brotherhood"
Inst5Quest5_Aim = "Kill Edwin VanCleef and bring his head to Gryan Stoutmantle."
Inst5Quest5_Location = "Gryan Stoutmantle (Westfall - Sentinel Hill; "..YELLOW.."56.2, 47.6"..WHITE..")"
Inst5Quest5_Note = "You start this questline at Gryan Stoutmantle.\nEdwin VanCleef is the last boss of The Deadmines. You can find him at the top of his ship "..YELLOW.."[6]"..WHITE.."."
Inst5Quest5_Prequest = "The Defias Brotherhood."
Inst5Quest5_Folgequest = "None"
--
Inst5Quest5name1 = "Chausses of Westfall"
Inst5Quest5name2 = "Tunic of Westfall"
Inst5Quest5name3 = "Staff of Westfall"

--Quest 6 Alliance
Inst5Quest6 = "6. The Test of Righteousness"
Inst5Quest6_Aim = "Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge."
Inst5Quest6_Location = "Jordan Stilwell (Dun Morogh - Ironforge Entrance; "..YELLOW.."52,36"..WHITE..")"
Inst5Quest6_Note = "Paladin quest.  You get the Whitestone Oak Lumber from Goblin Woodcarvers in near "..YELLOW.."[3]"..WHITE..".\n\nThe remaining items come from "..YELLOW.."[Shadowfang Keep]"..WHITE..", Loch Modan, Darkshore and Ashenvale.  Some require doing side quests.  I recommend looking it up on Wowhead for all the details."
Inst5Quest6_Prequest = "The Tome of Valor -> The Test of Righteousness"
Inst5Quest6_Folgequest = "The Test of Righteousness"
--
Inst5Quest6name1 = "Verigan's Fist"

--Quest 7 Alliance
Inst5Quest7 = "7. The Unsent Letter"
Inst5Quest7_Aim = "Deliver the Letter to the City Architect to Baros Alexston in Stormwind."
Inst5Quest7_Location = "An Unsent Letter (drops from Edwin VanCleef; "..YELLOW.."[6]"..WHITE..")"
Inst5Quest7_Note = "Baros Alexston is in Stormwind City, next to the Cathedral of Light at "..YELLOW.."49.0, 30.2"..WHITE.."."
Inst5Quest7_Prequest = "None"
Inst5Quest7_Folgequest = "Bazil Thredd"
-- No Rewards for this quest



--------------- INST6 - Gnomeregan ---------------

Inst6Caption = "Gnomeregan"
Inst6QAA = "11 Quests"
Inst6QAH = "6 Quests"

--Quest 1 Alliance
Inst6Quest1 = "1. Save Techbot's Brain!"
Inst6Quest1_Aim = "Bring Techbot's Memory Core to Tinkmaster Overspark in Ironforge."
Inst6Quest1_Location = "Tinkmaster Overspark (Ironforge - Tinkertown; "..YELLOW.."69.8, 50.4"..WHITE..")"
Inst6Quest1_Note = "You get the optional prequest from Brother Sarno (Stormwind - Cathedral Square; "..YELLOW.."40.6, 30.8"..WHITE..").\nTechbot is outside the dungeon near the alternate entrance for the dungeon, at "..YELLOW.."[C] on Entrance Map"..WHITE.."."
Inst6Quest1_Prequest = "Tinkmaster Overspark"
Inst6Quest1_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Alliance
Inst6Quest2 = "2. Gnogaine"
Inst6Quest2_Aim = "Use the Empty Leaden Collection Phial on Irradiated Invaders or Irradiated Pillagers to collect radioactive fallout. Once it is full, take it back to Ozzie Togglevolt in Kharanos."
Inst6Quest2_Location = "Ozzie Togglevolt (Dun Morogh - Kharanos; "..YELLOW.."45.8, 49.2"..WHITE..")"
Inst6Quest2_Note = "The prequest comes from Gnoarn (Ironforge - Tinkertown; "..YELLOW.."69.4, 50.6"..WHITE..").\nTo get fallout you must use the Phial on "..RED.."alive"..WHITE.." Irradiated Invaders or Irradiated Pillagers.  They are found near the beginning of the dungeon"
Inst6Quest2_Prequest = "The Day After"
Inst6Quest2_Folgequest = "The Only Cure is More Green Glow"
-- No Rewards for this quest

--Quest 3 Alliance
Inst6Quest3 = "3. The Only Cure is More Green Glow"
Inst6Quest3_Aim = "Travel to Gnomeregan and bring back High Potency Radioactive Fallout. Be warned, the fallout is unstable and will collapse rather quickly.\nOzzie will also require your Heavy Leaden Collection Phial when the task is complete."
Inst6Quest3_Location = "Ozzie Togglevolt (Dun Morogh - Kharanos; "..YELLOW.."45.8, 49.2"..WHITE..")"
Inst6Quest3_Note = "To get fallout you must use the Phial on "..RED.."alive"..WHITE.." Irradiated Slimes or Horrors.  They are found near the Viscous Fallout boss at "..YELLOW.."[4]"..WHITE.."."
Inst6Quest3_Prequest = "Gnogaine"
Inst6Quest3_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Alliance
Inst6Quest4 = "4. Gyrodrillmatic Excavationators"
Inst6Quest4_Aim = "Bring twenty-four Robo-mechanical Guts to Shoni in Stormwind."
Inst6Quest4_Location = "Shoni the Silent (Stormwind - Dwarven District; "..YELLOW.."55.4, 12.6"..WHITE..")"
Inst6Quest4_Note = "All robots can drop the Robo-mechanical Guts."
Inst6Quest4_Prequest = "None"
Inst6Quest4_Folgequest = "None"
--
Inst6Quest4name1 = "Shoni's Disarming Tool"
Inst6Quest4name2 = "Shilly Mitts"

--Quest 5 Alliance
Inst6Quest5 = "5. Essential Artificials"
Inst6Quest5_Aim = "Bring 12 Essential Artificials to Klockmort Spannerspan in Ironforge."
Inst6Quest5_Location = "Klockmort Spannerspan (Ironforge - Tinkertown; "..YELLOW.."68.0, 46.8"..WHITE..")"
Inst6Quest5_Note = "The optional prequest comes from Mathiel (Darnassus - Warrior's Terrace; "..YELLOW.."59.2, 45.2"..WHITE..").\nThe Essential Artificials come from machines scattered around the dungeon."
Inst6Quest5_Prequest = "Klockmort's Essentials"
Inst6Quest5_Folgequest = "None"
-- No Rewards for this quest

--Quest 6 Alliance
Inst6Quest6 = "6. Data Rescue"
Inst6Quest6_Aim = "Bring a Prismatic Punch Card to Master Mechanic Castpipe in Ironforge."
Inst6Quest6_Location = "Master Mechanic Castpipe (Ironforge - Tinkertown; "..YELLOW.."70.2, 48.4"..WHITE..")"
Inst6Quest6_Note = "The optional prequest comes from Gaxim Rustfizzle (Stonetalon Mountains; "..YELLOW.."59.6, 67.0"..WHITE..").\nThe white card is a random drop. You find the first terminal next to the back entrance before you enter the dungeon at "..YELLOW.."[C] on Entrance Map"..WHITE..". The 3005-B is at "..YELLOW.."[3]"..WHITE..", the 3005-C at "..YELLOW.."[5]"..WHITE.." and the 3005-D is at "..YELLOW.."[6]"..WHITE.."."
Inst6Quest6_Prequest = "Castpipe's Task"
Inst6Quest6_Folgequest = "None"
--
Inst6Quest6name1 = "Repairman's Cape"
Inst6Quest6name2 = "Mechanic's Pipehammer"

--Quest 7 Alliance
Inst6Quest7 = "7. A Fine Mess"
Inst6Quest7_Aim = "Escort Kernobee to the Clockwerk Run exit and then report to Scooty in Booty Bay."
Inst6Quest7_Location = "Kernobee (Gnomeregan; "..YELLOW.."[3]"..WHITE..")"
Inst6Quest7_Note = "Escort quest! You find Scooty in Stranglethorn Vale - Booty Bay ("..YELLOW.."27.6, 77.4"..WHITE..")."
Inst6Quest7_Prequest = "None"
Inst6Quest7_Folgequest = "None"
--
Inst6Quest7name1 = "Fire-welded Bracers"
Inst6Quest7name2 = "Fairywing Mantle"

--Quest 8 Alliance
Inst6Quest8 = "8. The Grand Betrayal"
Inst6Quest8_Aim = "Venture to Gnomeregan and kill Mekgineer Thermaplugg. Return to High Tinker Mekkatorque when the task is complete."
Inst6Quest8_Location = "High Tinker Mekkatorque (Ironforge - Tinkertown; "..YELLOW.."69.0, 49.0"..WHITE..")"
Inst6Quest8_Note = "You find Mekgineer Thermaplugg at "..YELLOW.."[8]"..WHITE..". He is the last boss in Gnomeregan.\nDuring the fight you have to disable the columns through pushing the button on the side."
Inst6Quest8_Prequest = "None"
Inst6Quest8_Folgequest = "None"
--
Inst6Quest8name1 = "Civinad Robes"
Inst6Quest8name2 = "Triprunner Dungarees"
Inst6Quest8name3 = "Dual Reinforced Leggings"

--Quest 9 Alliance
Inst6Quest9 = "9. Grime-Encrusted Ring"
Inst6Quest9_Aim = "Figure out a way to remove the grime from the Grime-Encrusted Ring."
Inst6Quest9_Location = "Grime-Encrusted Ring (random drop from Dark Iron Agents in Gnomeregan)"
Inst6Quest9_Note = "The Ring can be cleaned off at the Sparklematic 5200 in the Clean Room at "..YELLOW.."[2]"..WHITE.."."
Inst6Quest9_Prequest = "None"
Inst6Quest9_Folgequest = "Return of the Ring"
-- No Rewards for this quest

--Quest 10 Alliance
Inst6Quest10 = "10. Return of the Ring"
Inst6Quest10_Aim = "You may either keep the ring, or you may find the person responsible for the imprint and engravings on the inside of the band."
Inst6Quest10_Location = "Brilliant Gold Ring (obtained from Grime-Encrusted Ring quest)"
Inst6Quest10_Note = "Turns in to Talvash del Kissel (Ironforge - Mystic Ward; "..YELLOW.."36.0, 4.0"..WHITE.."). The followup to enhance the ring is optional."
Inst6Quest10_Prequest = "Grime-Encrusted Ring"
Inst6Quest10_Folgequest = "Gnome Improvement"
--
Inst6Quest10name1 = "Brilliant Gold Ring"

--Quest 11 Alliance
Inst6Quest11 = "11. The Sparklematic 5200!"
Inst6Quest11_Aim = "Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine."
Inst6Quest11_Location = "Sparklematic 5200 (Gnomeregan - The Clean Room; "..YELLOW.."[2]"..WHITE..")"
Inst6Quest11_Note = "You can repeat this quest for all the Grime-Encrusted Items you have."
Inst6Quest11_Prequest = "None"
Inst6Quest11_Folgequest = "None"
--
Inst6Quest11name1 = "Sparklematic-Wrapped Box"


--Quest 1 Horde
Inst6Quest1_HORDE = "1. Gnomer-gooooone!"
Inst6Quest1_HORDE_Aim = "Wait for Scooty to calibrate the Goblin Transponder."
Inst6Quest1_HORDE_Location = "Scooty (Stranglethorn Vale - Booty Bay; "..YELLOW.."27.6, 77.4"..WHITE..")"
Inst6Quest1_HORDE_Note = "You get the prequest from Sovik (Orgrimmar - Valley of Honor; "..YELLOW.."75.6, 25.2"..WHITE..").\nWhen you complete this quest you can use the transporter in Booty Bay to teleport to Gnomeregan."
Inst6Quest1_HORDE_Prequest = "Chief Engineer Scooty"
Inst6Quest1_HORDE_Folgequest = "None"
--
Inst6Quest1name1_HORDE = "Goblin Transponder"

--Quest 2 Horde  (same as Quest 7 Alliance)
Inst6Quest2_HORDE = "2. A Fine Mess"
Inst6Quest2_HORDE_Aim = Inst6Quest7_Aim
Inst6Quest2_HORDE_Location = Inst6Quest7_Location
Inst6Quest2_HORDE_Note = Inst6Quest7_Note
Inst6Quest2_HORDE_Prequest = Inst6Quest7_Prequest
Inst6Quest2_HORDE_Folgequest = Inst6Quest7_Folgequest
--
Inst6Quest2name1_HORDE = Inst6Quest7name1
Inst6Quest2name2_HORDE = Inst6Quest7name2

--Quest 3 Horde
Inst6Quest3_HORDE = "3. Rig Wars"
Inst6Quest3_HORDE_Aim = "Retrieve the Rig Blueprints and Thermaplugg's Safe Combination from Gnomeregan and bring them to Nogg in Orgrimmar."
Inst6Quest3_HORDE_Location = "Nogg (Orgrimmar - Valley of Honor; "..YELLOW.."75.8, 25.2"..WHITE..")"
Inst6Quest3_HORDE_Note = "You find Thermaplugg at "..YELLOW.."[8]"..WHITE..". He is the last boss in Gnomeregan.\nDuring the fight you have to disable the columns through pushing the button on the side."
Inst6Quest3_HORDE_Prequest = "None"
Inst6Quest3_HORDE_Folgequest = "None"
--
Inst6Quest3name1_HORDE = "Civinad Robes"
Inst6Quest3name2_HORDE = "Triprunner Dungarees"
Inst6Quest3name3_HORDE = "Dual Reinforced Leggings"

--Quest 4 Horde  (same as Quest 9 Alliance)
Inst6Quest4_HORDE = "4. Grime-Encrusted Ring"
Inst6Quest4_HORDE_Aim = Inst6Quest9_Aim
Inst6Quest4_HORDE_Location = Inst6Quest9_Location
Inst6Quest4_HORDE_Note = Inst6Quest9_Note
Inst6Quest4_HORDE_Prequest = Inst6Quest9_Prequest
Inst6Quest4_HORDE_Folgequest = Inst6Quest9_Folgequest
-- No Rewards for this quest

--Quest 5 Horde
Inst6Quest5_HORDE = "5. Return of the Ring"
Inst6Quest5_HORDE_Aim = "You may either keep the ring, or you may find the person responsible for the imprint and engravings on the inside of the band."
Inst6Quest5_HORDE_Location = "Brilliant Gold Ring (obtained from Grime-Encrusted Ring quest)"
Inst6Quest5_HORDE_Note = "Turns in to Nogg (Orgrimmar - The Valley of Honor; "..YELLOW.."75.8, 25.2"..WHITE.."). The followup to enhance the ring is optional."
Inst6Quest5_HORDE_Prequest = "Grime-Encrusted Ring"
Inst6Quest5_HORDE_Folgequest = "Nogg's Ring Redo"
--
Inst6Quest5name1_HORDE = "Brilliant Gold Ring"

--Quest 6 Horde
Inst6Quest6_HORDE = "6. The Sparklematic 5200!"
Inst6Quest6_HORDE_Aim = "Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine."
Inst6Quest6_HORDE_Location = "Sparklematic 5200 (Gnomeregan - The Clean Room; "..YELLOW.."[2]"..WHITE..")"
Inst6Quest6_HORDE_Note = "You can repeat this quest for all the Grime-Encrusted Items you have."
Inst6Quest6_HORDE_Prequest = "None"
Inst6Quest6_HORDE_Folgequest = "None"
--
Inst6Quest6name1_HORDE = "Sparklematic-Wrapped Box"



--------------- INST7 - Scarlet Monastery: Library ---------------

Inst7Caption = "SM: Library"
Inst7QAA = "3 Quests"
Inst7QAH = "5 Quests"

--Quest 1 Alliance
Inst7Quest1 = "1. Mythology of the Titans"
Inst7Quest1_Aim = "Retrieve Mythology of the Titans from the Monastery and bring it to Librarian Mae Paledust in Ironforge."
Inst7Quest1_Location = "Librarian Mae Paledust (Ironforge - Hall of Explorers; "..YELLOW.."74.6, 12.6"..WHITE..")"
Inst7Quest1_Note = "The book is on the floor on the left side of one of the corridors leading to Arcanist Doan ("..YELLOW.."[2]"..WHITE..").  After a player picks it up it will vanish.  It will respawn in a moment or two."
Inst7Quest1_Prequest = "None"
Inst7Quest1_Folgequest = "None"
--
Inst7Quest1name1 = "Explorers' League Commendation"

--Quest 2 Alliance
Inst7Quest2 = "2. Rituals of Power"
Inst7Quest2_Aim = "Bring the book Rituals of Power to Tabetha in Dustwallow Marsh."
Inst7Quest2_Location = "Magus Tirth (Thousand Needles - Shimmering Flats; "..YELLOW.."78.2, 75.8"..WHITE..")"
Inst7Quest2_Note = "Mage quest.  The prequest is given at the Mage trainers in major cities.  You can find the book in the last corridor leading to Arcanist Doan ("..YELLOW.."[2]"..WHITE..").  It is hanging off a shelf.\n\nTurn the quest into Tabetha (Dustwallow Marsh; "..YELLOW.."46.0, 57.0"..WHITE..").  The rewards listed are for the followup."
Inst7Quest2_Prequest = "Journey to the Marsh -> Get the Scoop"
Inst7Quest2_Folgequest = "Mage's Wand"
--
Inst7Quest2name1 = "Icefury Wand"
Inst7Quest2name2 = "Nether Force Wand"
Inst7Quest2name3 = "Ragefire Wand"

--Quest 3 Alliance
Inst7Quest3 = "3. In the Name of the Light"
Inst7Quest3_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore."
Inst7Quest3_Location = "Raleigh the Devout (Hillsbrad Foothills - Southshore; "..YELLOW.."51.4, 58.4"..WHITE..")"
Inst7Quest3_Note = "This quest line starts at Brother Crowley in Stormwind - Cathedral of Light ("..YELLOW.."42.4, 24.4"..WHITE..").\nYou can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst7Quest3_Prequest = "Brother Anton -> Down the Scarlet Path"
Inst7Quest3_Folgequest = "None"
--
Inst7Quest3name1 = "Sword of Serenity"
Inst7Quest3name2 = "Bonebiter"
Inst7Quest3name3 = "Black Menace"
Inst7Quest3name4 = "Orb of Lorica"


--Quest 1 Horde
Inst7Quest1_HORDE = "1. Hearts of Zeal"
Inst7Quest1_HORDE_Aim = "Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal."
Inst7Quest1_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48.6, 69.4"..WHITE..")"
Inst7Quest1_HORDE_Note = "All mobs inside the Scarlet Monastery can drop Hearts of Zeal.  This includes the mobs outside the dungeon near the portals."
Inst7Quest1_HORDE_Prequest = "Going, Going, Guano! ("..YELLOW.."[Razorfen Kraul]"..WHITE..")"
Inst7Quest1_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Horde
Inst7Quest2_HORDE = "2. Test of Lore"
Inst7Quest2_HORDE_Aim = "Find The Beginnings of the Undead Threat, and return it to Parqual Fintallas in Undercity."
Inst7Quest2_HORDE_Location = "Parqual Fintallas (Undercity - The Apothecarium; "..YELLOW.."57.8, 65.0"..WHITE..")"
Inst7Quest2_HORDE_Note = "The questline starts at Dorn Plainstalker (Thousand Needles; "..YELLOW.."53.8, 41.6"..WHITE..").  The book is on a table in a section of the library called the 'Gallery of Treasures'.  It is about halfway through the dungeon.\n\nThe rewards listed are for the followup."
Inst7Quest2_HORDE_Prequest = "Test of Faith -> Test of Lore"
Inst7Quest2_HORDE_Folgequest = "Test of Lore"
--
Inst7Quest2name1_HORDE = "Windstorm Hammer"
Inst7Quest2name2_HORDE = "Dancing Flame"

--Quest 3 Horde
Inst7Quest3_HORDE = "3. Compendium of the Fallen"
Inst7Quest3_HORDE_Aim = "Retrieve the Compendium of the Fallen from the Monastery in Tirisfal Glades and return to Sage Truthseeker in Thunder Bluff."
Inst7Quest3_HORDE_Location = "Sage Truthseeker (Thunderbluff; "..YELLOW.."34.6, 47.2"..WHITE..")"
Inst7Quest3_HORDE_Note = "The book is on a shelf in a section of the library called the 'Athenaeum'.   This quest is not available to Undead players."
Inst7Quest3_HORDE_Prequest = "None"
Inst7Quest3_HORDE_Folgequest = "None"
--
Inst7Quest3name1_HORDE = "Vile Protector"
Inst7Quest3name2_HORDE = "Forcestone Buckler"
Inst7Quest3name3_HORDE = "Omega Orb"

--Quest 4 Horde  (same as Quest 2 Alliance)
Inst7Quest4_HORDE = "4. Rituals of Power"
Inst7Quest4_HORDE_Aim = Inst7Quest2_Aim
Inst7Quest4_HORDE_Location = Inst7Quest2_Location
Inst7Quest4_HORDE_Note = Inst7Quest2_Note
Inst7Quest4_HORDE_Prequest = Inst7Quest2_Prequest
Inst7Quest4_HORDE_Folgequest = Inst7Quest2_Folgequest
--
Inst7Quest4name1_HORDE = Inst7Quest2name1
Inst7Quest4name2_HORDE = Inst7Quest2name2
Inst7Quest4name3_HORDE = Inst7Quest2name3

--Quest 5 Horde
Inst7Quest5_HORDE = "5. Into The Scarlet Monastery"
Inst7Quest5_HORDE_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity."
Inst7Quest5_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56.2, 92.6"..WHITE..")"
Inst7Quest5_HORDE_Note = "You can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst7Quest5_HORDE_Prequest = "None"
Inst7Quest5_HORDE_Folgequest = "None"
--
Inst7Quest5name1_HORDE = "Sword of Omen"
Inst7Quest5name2_HORDE = "Prophetic Cane"
Inst7Quest5name3_HORDE = "Dragon's Blood Necklace"



--------------- INST8 - Scarlet Monastery: Armory ---------------

Inst8Caption = "SM: Armory"
Inst8QAA = "1 Quest"
Inst8QAH = "2 Quests"

--Quest 1 Alliance  (same quest as SM Library Quest 3 Alliance)
Inst8Quest1 = "1. In the Name of the Light"
Inst8Quest1_Aim = Inst7Quest3_Aim
Inst8Quest1_Location = Inst7Quest3_Location
Inst8Quest1_Note = Inst7Quest3_Note
Inst8Quest1_Prequest = Inst7Quest3_Prequest
Inst8Quest1_Folgequest = Inst7Quest3_Folgequest
--
Inst8Quest1name1 = Inst7Quest3name1
Inst8Quest1name2 = Inst7Quest3name2
Inst8Quest1name3 = Inst7Quest3name3
Inst8Quest1name4 = Inst7Quest3name4


--Quest 1 Horde  (same quest as SM Library Quest 1 Horde)
Inst8Quest1_HORDE = Inst7Quest1_HORDE
Inst8Quest1_HORDE_Aim = Inst7Quest1_HORDE_Aim
Inst8Quest1_HORDE_Location = Inst7Quest1_HORDE_Location
Inst8Quest1_HORDE_Note = Inst7Quest1_HORDE_Note
Inst8Quest1_HORDE_Prequest = Inst7Quest1_HORDE_Prequest
Inst8Quest1_HORDE_Folgequest = Inst7Quest1_HORDE_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same quest as SM Library Quest 5 Horde)
Inst8Quest2_HORDE = "2. Into The Scarlet Monastery"
Inst8Quest2_HORDE_Aim = Inst7Quest5_HORDE_Aim
Inst8Quest2_HORDE_Location = Inst7Quest5_HORDE_Location
Inst8Quest2_HORDE_Note = Inst7Quest5_HORDE_Note
Inst8Quest2_HORDE_Prequest = Inst7Quest5_HORDE_Prequest
Inst8Quest2_HORDE_Folgequest = Inst7Quest5_HORDE_Folgequest
--
Inst8Quest2name1_HORDE = Inst7Quest5name1_HORDE
Inst8Quest2name2_HORDE = Inst7Quest5name2_HORDE
Inst8Quest2name3_HORDE = Inst7Quest5name3_HORDE



--------------- INST9 - Scarlet Monastery: Cathedral ---------------

Inst9Caption = "SM: Cathedral"
Inst9QAA = "1 Quest"
Inst9QAH = "2 Quests"

--Quest 1 Alliance  (same quest as SM Library Quest 3 Alliance)
Inst9Quest1 = "1. In the Name of the Light"
Inst9Quest1_Aim = Inst7Quest3_Aim
Inst9Quest1_Location = Inst7Quest3_Location
Inst9Quest1_Note = Inst7Quest3_Note
Inst9Quest1_Prequest = Inst7Quest3_Prequest
Inst9Quest1_Folgequest = Inst7Quest3_Folgequest
--
Inst9Quest1name1 = Inst7Quest3name1
Inst9Quest1name2 = Inst7Quest3name2
Inst9Quest1name3 = Inst7Quest3name3
Inst9Quest1name4 = Inst7Quest3name4


--Quest 1 Horde  (same quest as SM Library Quest 1 Horde)
Inst9Quest1_HORDE = Inst7Quest1_HORDE
Inst9Quest1_HORDE_Aim = Inst7Quest1_HORDE_Aim
Inst9Quest1_HORDE_Location = Inst7Quest1_HORDE_Location
Inst9Quest1_HORDE_Note = Inst7Quest1_HORDE_Note
Inst9Quest1_HORDE_Prequest = Inst7Quest1_HORDE_Prequest
Inst9Quest1_HORDE_Folgequest = Inst7Quest1_HORDE_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same quest as SM Library Quest 5 Horde)
Inst9Quest2_HORDE = "2. Into The Scarlet Monastery"
Inst9Quest2_HORDE_Aim = Inst7Quest5_HORDE_Aim
Inst9Quest2_HORDE_Location = Inst7Quest5_HORDE_Location
Inst9Quest2_HORDE_Note = Inst7Quest5_HORDE_Note
Inst9Quest2_HORDE_Prequest = Inst7Quest5_HORDE_Prequest
Inst9Quest2_HORDE_Folgequest = Inst7Quest5_HORDE_Folgequest
--
Inst9Quest2name1_HORDE = Inst7Quest5name1_HORDE
Inst9Quest2name2_HORDE = Inst7Quest5name2_HORDE
Inst9Quest2name3_HORDE = Inst7Quest5name3_HORDE



--------------- INST10 - Scarlet Monastery: Graveyard ---------------

Inst10Caption = "SM: Graveyard"
Inst10QAA = "No Quests"
Inst10QAH = "2 Quests"


--Quest 1 Horde
Inst10Quest1_HORDE = "1. Vorrel's Revenge"
Inst10Quest1_HORDE_Aim = "Return Vorrel Sengutz's wedding ring to Monika Sengutz in Tarren Mill."
Inst10Quest1_HORDE_Location = "Vorrel Sengutz (Scarlet Monastery - Graveyard; "..YELLOW.."[1]"..WHITE..")"
Inst10Quest1_HORDE_Note = "You can find Vorrel Sengutz at the beginning of the Graveyard section of the Scarlet Monastery.  Nancy Vishas, who drops the ring needed for this quest, can be found in a house in the Alterac Mountains near ("..YELLOW.."31, 32"..WHITE..").  The house she's in can vary each time.  The quest turns in to Monika Sengutz (Hillsbrad Foothills - Tarren Mill; "..YELLOW.."62.6, 19.0"..WHITE..")."
Inst10Quest1_HORDE_Prequest = "None"
Inst10Quest1_HORDE_Folgequest = "None"
--
Inst10Quest1name1_HORDE = "Vorrel's Boots"
Inst10Quest1name2_HORDE = "Mantle of Woe"
Inst10Quest1name3_HORDE = "Grimsteel Cape"

--Quest 2 Horde  (same quest as SM Library Quest 1 Horde)
Inst10Quest2_HORDE = "2. Hearts of Zeal"
Inst10Quest2_HORDE_Aim = Inst7Quest1_HORDE_Aim
Inst10Quest2_HORDE_Location = Inst7Quest1_HORDE_Location
Inst10Quest2_HORDE_Note = Inst7Quest1_HORDE_Note
Inst10Quest2_HORDE_Prequest = Inst7Quest1_HORDE_Prequest
Inst10Quest2_HORDE_Folgequest = Inst7Quest1_HORDE_Folgequest
-- No Rewards for this quest



--------------- INST11 - Scholomance ---------------

Inst11Caption = "Scholomance"
Inst11QAA = "12 Quests"
Inst11QAH = "12 Quests"

--Quest 1 Alliance
Inst11Quest1 = "1. Plagued Hatchlings"
Inst11Quest1_Aim = "Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel."
Inst11Quest1_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81.4, 59.6"..WHITE..")"
Inst11Quest1_Note = "The Plagued Hatchlings are on the way to Rattlegore in a large room."
Inst11Quest1_Prequest = "None"
Inst11Quest1_Folgequest = "Healthy Dragon Scale"
-- No Rewards for this quest

--Quest 2 Alliance
Inst11Quest2 = "2. Healthy Dragon Scale"
Inst11Quest2_Aim = "Bring the Healthy Dragon Scale to Betina Bigglezink at the Light's Hope Chapel in Eastern Plaguelands."
Inst11Quest2_Location = "Healthy Dragon Scale (random drop in Scholomance)"
Inst11Quest2_Note = "Plagued Hatchlings can drop the Healthy Dragon Scales.  You can find Betina Bigglezink at Eastern Plaguelands - Light's Hope Chapel ("..YELLOW.."81.4, 59.6"..WHITE..")."
Inst11Quest2_Prequest = "Plagued Hatchlings "
Inst11Quest2_Folgequest = "None"
-- No Rewards for this quest

--Quest 3 Alliance
Inst11Quest3 = "3. Doctor Theolen Krastinov, the Butcher"
Inst11Quest3_Aim = "Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete."
Inst11Quest3_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70.2, 73.8"..WHITE..")"
Inst11Quest3_Note = "You find Doctor Theolen Krastinov, the remains of Eva Sarkhoff and the remains of Lucien Sarkhoff at "..YELLOW.."[9]"..WHITE.."."
Inst11Quest3_Prequest = "None"
Inst11Quest3_Folgequest = "Krastinov's Bag of Horrors"
-- No Rewards for this quest

--Quest 4 Alliance
Inst11Quest4 = "4. Krastinov's Bag of Horrors"
Inst11Quest4_Aim = "Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff."
Inst11Quest4_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70.2, 73.8"..WHITE..")"
Inst11Quest4_Note = "You can find Jandice Barov at "..YELLOW.."[3]"..WHITE.."."
Inst11Quest4_Prequest = "Doctor Theolen Krastinov, the Butcher"
Inst11Quest4_Folgequest = "Kirtonos the Herald"
-- No Rewards for this quest

--Quest 5 Alliance
Inst11Quest5 = "5. Kirtonos the Herald"
Inst11Quest5_Aim = "Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul. Fight valiantly, do not give an inch! Destroy Kirtonos and return to Eva Sarkhoff."
Inst11Quest5_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70.2, 73.8"..WHITE..")"
Inst11Quest5_Note = "The porch is at "..YELLOW.."[2]"..WHITE.."."
Inst11Quest5_Prequest = "Krastinov's Bag of Horrors"
Inst11Quest5_Folgequest = "The Human, Ras Frostwhisper"
--
Inst11Quest5name1 = "Spectral Essence"
Inst11Quest5name2 = "Penelope's Rose"
Inst11Quest5name3 = "Mirah's Song"

--Quest 6 Alliance
Inst11Quest6 = "6. The Lich, Ras Frostwhisper"
Inst11Quest6_Aim = "Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke."
Inst11Quest6_Location = "Magistrate Marduke (Western Plaguelands - Caer Darrow; "..YELLOW.."70.4, 74.0"..WHITE..")"
Inst11Quest6_Note = "You can find Ras Frostwhisper at "..YELLOW.."[7]"..WHITE.."."
Inst11Quest6_Prequest = "The Human, Ras Frostwhisper -> Soulbound Keepsake"
Inst11Quest6_Folgequest = "None"
--
Inst11Quest6name1 = "Darrowshire Strongguard"
Inst11Quest6name2 = "Warblade of Caer Darrow"
Inst11Quest6name3 = "Crown of Caer Darrow"
Inst11Quest6name4 = "Darrowspike"

--Quest 7 Alliance
Inst11Quest7 = "7. Barov Family Fortune"
Inst11Quest7_Aim = "Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Weldon Barov when you have completed this task."
Inst11Quest7_Location = "Weldon Barov (Western Plaguelands - Chillwind Camp; "..YELLOW.."43.4, 83.8"..WHITE..")"
Inst11Quest7_Note = "You can find The Deed to Caer Darrow at "..YELLOW.."[12]"..WHITE..", The Deed to Brill at "..YELLOW.."[7]"..WHITE..", The Deed to Tarren Mill at "..YELLOW.."[4]"..WHITE.." and The Deed to Southshore at "..YELLOW.."[1]"..WHITE..".\nThe reward listed is for the followup."
Inst11Quest7_Prequest = "None"
Inst11Quest7_Folgequest = "The Last Barov"
--
Inst11Quest7name1 = "Barov Peasant Caller"

--Quest 8 Alliance
Inst11Quest8 = "8. Dawn's Gambit"
Inst11Quest8_Aim = "Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink."
Inst11Quest8_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81.4, 59.6"..WHITE..")"
Inst11Quest8_Note = "Broodling Essence begins at Tinkee Steamboil (Burning Steppes - Flame Crest; "..YELLOW.."65.2, 23.8"..WHITE.."). The Viewing Room is at "..YELLOW.."[6]"..WHITE.."."
Inst11Quest8_Prequest = "Broodling Essence -> Betina Bigglezink"
Inst11Quest8_Folgequest = "None"
--
Inst11Quest8name1 = "Windreaper"
Inst11Quest8name2 = "Dancing Sliver"

--Quest 9 Alliance
Inst11Quest9 = "9. Imp Delivery"
Inst11Quest9_Aim = "Bring the Imp in a Yesr to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes."
Inst11Quest9_Location = "Gorzeeki Wildeyes (Burning Steppes; "..YELLOW.."12.6, 31.6"..WHITE..")"
Inst11Quest9_Note = "Warlock Epic Mount questline.  You find the alchemy lab at "..YELLOW.."[7]"..WHITE.."."
Inst11Quest9_Prequest = "Mor'zul Bloodbringer -> Xorothian Stardust"
Inst11Quest9_Folgequest = "Dreadsteed of Xoroth ("..YELLOW.."Dire Maul West"..WHITE..")"
-- No Rewards for this quest

--Quest 10 Alliance
Inst11Quest10 = "10. The Left Piece of Lord Valthalak's Amulet"
Inst11Quest10_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst11Quest10_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst11Quest10_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nKormok is summoned at "..YELLOW.."[7]"..WHITE.."."
Inst11Quest10_Prequest = "Components of Importance"
Inst11Quest10_Folgequest = "I See Alcaz Island In Your Future..."
-- No Rewards for this quest

--Quest 11 Alliance
Inst11Quest11 = "11. The Right Piece of Lord Valthalak's Amulet"
Inst11Quest11_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst11Quest11_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst11Quest11_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nKormok is summoned at "..YELLOW.."[7]"..WHITE.."."
Inst11Quest11_Prequest = "More Components of Importance"
Inst11Quest11_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
-- No Rewards for this quest

--Quest 12 Alliance
Inst11Quest12 = "12. Judgment and Redemption"
Inst11Quest12_Aim = "Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth the spirits you must judge. Defeating these spirits will summon forth Death Knight Darkreaver. Defeat him and reclaim the lost soul of the fallen charger."
Inst11Quest12_Location = "Lord Grayson Shadowbreaker (Stormwind City - Cathedral; "..YELLOW.."37.6, 32.6"..WHITE..")"
Inst11Quest12_Note = "Paladin Epic Mount questline.  This questline is lengthy and has many steps.  There is an excellent guide on WoWhead.com that goes into great detail on how to complete it.  The Great Ossuary's basement is at "..YELLOW.."[5]"..WHITE.."."
Inst11Quest12_Prequest = "Lord Grayson Shadowbreaker -> The Divination Scryer"
Inst11Quest12_Folgequest = "Again Into the Great Ossuary"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst11Quest1_HORDE = Inst11Quest1
Inst11Quest1_HORDE_Aim = Inst11Quest1_Aim
Inst11Quest1_HORDE_Location = Inst11Quest1_Location
Inst11Quest1_HORDE_Note = Inst11Quest1_Note
Inst11Quest1_HORDE_Prequest = Inst11Quest1_Prequest
Inst11Quest1_HORDE_Folgequest = Inst11Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst11Quest2_HORDE = Inst11Quest2
Inst11Quest2_HORDE_Aim = Inst11Quest2_Aim
Inst11Quest2_HORDE_Location = Inst11Quest2_Location
Inst11Quest2_HORDE_Note = Inst11Quest2_Note
Inst11Quest2_HORDE_Prequest = Inst11Quest2_Prequest
Inst11Quest2_HORDE_Folgequest = Inst11Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst11Quest3_HORDE = Inst11Quest3
Inst11Quest3_HORDE_Aim = Inst11Quest3_Aim
Inst11Quest3_HORDE_Location = Inst11Quest3_Location
Inst11Quest3_HORDE_Note = Inst11Quest3_Note
Inst11Quest3_HORDE_Prequest = Inst11Quest3_Prequest
Inst11Quest3_HORDE_Folgequest = Inst11Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst11Quest4_HORDE = Inst11Quest4
Inst11Quest4_HORDE_Aim = Inst11Quest4_Aim
Inst11Quest4_HORDE_Location = Inst11Quest4_Location
Inst11Quest4_HORDE_Note = Inst11Quest4_Note
Inst11Quest4_HORDE_Prequest = Inst11Quest4_Prequest
Inst11Quest4_HORDE_Folgequest = Inst11Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst11Quest5_HORDE = Inst11Quest5
Inst11Quest5_HORDE_Aim = Inst11Quest5_Aim
Inst11Quest5_HORDE_Location = Inst11Quest5_Location
Inst11Quest5_HORDE_Note = Inst11Quest5_Note
Inst11Quest5_HORDE_Prequest = Inst11Quest5_Prequest
Inst11Quest5_HORDE_Folgequest = Inst11Quest5_Folgequest
--
Inst11Quest5name1_HORDE = Inst11Quest5name1
Inst11Quest5name2_HORDE = Inst11Quest5name2
Inst11Quest5name3_HORDE = Inst11Quest5name3

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst11Quest6_HORDE = Inst11Quest6
Inst11Quest6_HORDE_Aim = Inst11Quest6_Aim
Inst11Quest6_HORDE_Location = Inst11Quest6_Location
Inst11Quest6_HORDE_Note = Inst11Quest6_Note
Inst11Quest6_HORDE_Prequest = Inst11Quest6_Prequest
Inst11Quest6_HORDE_Folgequest = Inst11Quest6_Folgequest
--
Inst11Quest6name1_HORDE = Inst11Quest6name1
Inst11Quest6name2_HORDE = Inst11Quest6name2
Inst11Quest6name3_HORDE = Inst11Quest6name3
Inst11Quest6name4_HORDE = Inst11Quest6name4

--Quest 7 Horde
Inst11Quest7_HORDE = "7. Barov Family Fortune"
Inst11Quest7_HORDE_Aim = "Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Alexi Barov when you have completed this task."
Inst11Quest7_HORDE_Location = "Alexi Barov (Tirisfal Glades - The Bulwark; "..YELLOW.."83.0, 71.4"..WHITE..")"
Inst11Quest7_HORDE_Note = "You can find The Deed to Caer Darrow at "..YELLOW.."[12]"..WHITE..", The Deed to Brill at "..YELLOW.."[7]"..WHITE..", The Deed to Tarren Mill at "..YELLOW.."[4]"..WHITE.." and The Deed to Southshore at "..YELLOW.."[1]"..WHITE..".\nThe reward listed is for the followup."
Inst11Quest7_HORDE_Prequest = "None"
Inst11Quest7_HORDE_Folgequest = "The Last Barov"
--
Inst11Quest7name1_HORDE = "Barov Peasant Caller"

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst11Quest8_HORDE = Inst11Quest8
Inst11Quest8_HORDE_Aim = Inst11Quest8_Aim
Inst11Quest8_HORDE_Location = Inst11Quest8_Location
Inst11Quest8_HORDE_Note = Inst11Quest8_Note
Inst11Quest8_HORDE_Prequest = Inst11Quest8_Prequest
Inst11Quest8_HORDE_Folgequest = Inst11Quest8_Folgequest
--
Inst11Quest8name1_HORDE = Inst11Quest8name1
Inst11Quest8name2_HORDE = Inst11Quest8name2

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst11Quest9_HORDE = Inst11Quest9
Inst11Quest9_HORDE_Aim = Inst11Quest9_Aim
Inst11Quest9_HORDE_Location = Inst11Quest9_Location
Inst11Quest9_HORDE_Note = Inst11Quest9_Note
Inst11Quest9_HORDE_Prequest = Inst11Quest9_Prequest
Inst11Quest9_HORDE_Folgequest = Inst11Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst11Quest10_HORDE = Inst11Quest10
Inst11Quest10_HORDE_Aim = Inst11Quest10_Aim
Inst11Quest10_HORDE_Location = Inst11Quest10_Location
Inst11Quest10_HORDE_Note = Inst11Quest10_Note
Inst11Quest10_HORDE_Prequest = Inst11Quest10_Prequest
Inst11Quest10_HORDE_Folgequest = Inst11Quest10_Folgequest
-- No Rewards for this quest

--Quest 11 Horde
Inst11Quest11_HORDE = "11. The Darkreaver Menace"
Inst11Quest11_HORDE_Aim = "Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance.\n\nBring Darkreaver's Head to Sagorne Creststrider in the Valley of Wisdom, Orgrimmar."
Inst11Quest11_HORDE_Location = "Sagorne Creststrider (Orgrimmar - Valley of Wisdom; "..YELLOW.."38.6, 36.2"..WHITE..")"
Inst11Quest11_HORDE_Note = "Shaman quest.  The prequest is obtained from the same NPC.\n\nDeath Knight Darkreaver is summoned at "..YELLOW.."[5]"..WHITE.."."
Inst11Quest11_HORDE_Prequest = "Material Assistance"
Inst11Quest11_HORDE_Folgequest = "None"
--
Inst11Quest11name1_HORDE = "Skyfury Helm"

--Quest 12 Horde  (same as Quest 11 Alliance)
Inst11Quest12_HORDE = "12. The Right Piece of Lord Valthalak's Amulet"
Inst11Quest12_HORDE_Aim = Inst11Quest11_Aim
Inst11Quest12_HORDE_Location = Inst11Quest11_Location
Inst11Quest12_HORDE_Note = Inst11Quest11_Note
Inst11Quest12_HORDE_Prequest = Inst11Quest11_Prequest
Inst11Quest12_HORDE_Folgequest = Inst11Quest11_Folgequest
-- No Rewards for this quest



--------------- INST12 - Shadowfang Keep ---------------

Inst12Caption = "Shadowfang Keep"
Inst12QAA = "2 Quests"
Inst12QAH = "4 Quests"

--Quest 1 Alliance
Inst12Quest1 = "1. The Test of Righteousness"
Inst12Quest1_Aim = Inst5Quest6_Aim
Inst12Quest1_Location = Inst5Quest6_Location
Inst12Quest1_Note = "Paladin quest.  Jordan's Smithing Hammer is at  "..YELLOW.."[9]"..WHITE..".\n\nThe remaining items come from "..YELLOW.."[Deadmines]"..WHITE..", Loch Modan, Darkshore and Ashenvale.  Some require doing side quests.  I recommend looking it up on Wowhead for all the details."
Inst12Quest1_Prequest = Inst5Quest6_Prequest
Inst12Quest1_Folgequest = Inst5Quest6_Folgequest
--
Inst12Quest1name1 = Inst5Quest6name1

--Quest 2 Alliance
Inst12Quest2 = "2. The Orb of Soran'ruk"
Inst12Quest2_Aim = "Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens."
Inst12Quest2_Location = "Doan Karhan (The Barrens; "..YELLOW.."49.2, 57.2"..WHITE..")"
Inst12Quest2_Note = "Warlock quest.  You get the 3 Soran'ruk Fragments from Twilight Accolytes in "..YELLOW.."[Blackfathom Deeps]"..WHITE..". You get the Large Soran'ruk Fragment in "..YELLOW.."[Shadowfang Keep]"..WHITE.." from Shadowfang Darksouls."
Inst12Quest2_Prequest = "None"
Inst12Quest2_Folgequest = "None"
--
Inst12Quest2name1 = "Orb of Soran'ruk"
Inst12Quest2name2 = "Staff of Soran'ruk"



--Quest 1 Horde
Inst12Quest1_HORDE = "1. Deathstalkers in Shadowfang"
Inst12Quest1_HORDE_Aim = "Find the Deathstalker Adamant and Deathstalker Vincent."
Inst12Quest1_HORDE_Location = "High Executor Hadrec (Silverpine Forest - The Sepulcher; "..YELLOW.."43.4, 40.8"..WHITE..")"
Inst12Quest1_HORDE_Note = "You find Deathstalker Adamant at "..YELLOW.."[1]"..WHITE..". Deathstalker Vincent is on the right side when you go into the courtyard."
Inst12Quest1_HORDE_Prequest = "None"
Inst12Quest1_HORDE_Folgequest = "None"
--
Inst12Quest1name1_HORDE = "Ghostly Mantle"

--Quest 2 Horde
Inst12Quest2_HORDE = "2. The Book of Ur"
Inst12Quest2_HORDE_Aim = "Bring the Book of Ur to Keeper Bel'dugur at the Apothecarium in the Undercity."
Inst12Quest2_HORDE_Location = "Keeper Bel'dugur (Undercity - The Apothecarium; "..YELLOW.."53.6, 54.0"..WHITE..")"
Inst12Quest2_HORDE_Note = "You find the book at "..YELLOW.."[6]"..WHITE.." on the left side when you enter the room."
Inst12Quest2_HORDE_Prequest = "None"
Inst12Quest2_HORDE_Folgequest = "None"
--
Inst12Quest2name1_HORDE = "Grizzled Boots"
Inst12Quest2name2_HORDE = "Steel-clasped Bracers"

--Quest 3 Horde
Inst12Quest3_HORDE = "3. Arugal Must Die"
Inst12Quest3_HORDE_Aim = "Kill Arugal and bring his head to Dalar Dawnweaver at the Sepulcher."
Inst12Quest3_HORDE_Location = "Dalar Dawnweaver (Silverpine Forest - The Sepulcher; "..YELLOW.."44.2, 39.8"..WHITE..")"
Inst12Quest3_HORDE_Note = "You find Archmage Arugal at "..YELLOW.."[8]"..WHITE.."."
Inst12Quest3_HORDE_Prequest = "None"
Inst12Quest3_HORDE_Folgequest = "None"
--
Inst12Quest3name1_HORDE = "Seal of Sylvanas"

--Quest 4 Horde  (same as Quest 2 Alliance)
Inst12Quest4_HORDE = "4. The Orb of Soran'ruk"
Inst12Quest4_HORDE_Aim = Inst12Quest2_Aim
Inst12Quest4_HORDE_Location = Inst12Quest2_Location
Inst12Quest4_HORDE_Note = Inst12Quest2_Note
Inst12Quest4_HORDE_Prequest = Inst12Quest2_Prequest
Inst12Quest4_HORDE_Folgequest = Inst12Quest2_Folgequest
--
Inst12Quest4name1_HORDE = Inst12Quest2name1
Inst12Quest4name2_HORDE = Inst12Quest2name1



--------------- INST13 - The Stockade ---------------

Inst13Caption = "The Stockade"
Inst13QAA = "6 Quests"
Inst13QAH = "No Quests"

--Quest 1 Alliance
Inst13Quest1 = "1. What Comes Around..."
Inst13Quest1_Aim = "Bring the head of Targorr the Dread to Guard Berton in Lakeshire."
Inst13Quest1_Location = "Guard Berton (Redridge Mountains - Lakeshire; "..YELLOW.."26.4, 46.6"..WHITE..")"
Inst13Quest1_Note = "You can find Targorr at "..YELLOW.."[1]"..WHITE.."."
Inst13Quest1_Prequest = "None"
Inst13Quest1_Folgequest = "None"
--
Inst13Quest1name1 = "Lucine Longsword"
Inst13Quest1name2 = "Hardened Root Staff"

--Quest 2 Alliance
Inst13Quest2 = "2. Crime and Punishment"
Inst13Quest2_Aim = "Councilman Millstipe of Darkshire wants you to bring him the hand of Dextren Ward."
Inst13Quest2_Location = "Millstipe (Duskwood - Darkshire; "..YELLOW.."72.0, 47.8"..WHITE..")"
Inst13Quest2_Note = "You can find Dextren at "..YELLOW.."[5]"..WHITE.."."
Inst13Quest2_Prequest = "None"
Inst13Quest2_Folgequest = "None"
--
Inst13Quest2name1 = "Ambassador's Boots"
Inst13Quest2name2 = "Darkshire Mail Leggings"

--Quest 3 Alliance
Inst13Quest3 = "3. Quell The Uprising"
Inst13Quest3_Aim = "Warden Thelwater of Stormwind wants you to kill 10 Defias Prisoners, 8 Defias Convicts, and 8 Defias Insurgents in The Stockade."
Inst13Quest3_Location = "Warden Thelwater (Stormwind - The Stockade; "..YELLOW.."41.2, 58.0"..WHITE..")"
Inst13Quest3_Note = "Sometimes there are not enough mobs to complete the quest and you might have to wait for some to respawn."
Inst13Quest3_Prequest = "None"
Inst13Quest3_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Alliance
Inst13Quest4 = "4. The Color of Blood"
Inst13Quest4_Aim = "Nikova Raskol of Stormwind wants you to collect 10 Red Wool Bandanas."
Inst13Quest4_Location = "Nikova Raskol (Stormwind - Old Town; "..YELLOW.."66.8, 46.4"..WHITE..")"
Inst13Quest4_Note = "Nikova Raskol walks around Old Town. All mobs found inside the dungeon can drop the Red Wool Bandanas."
Inst13Quest4_Prequest = "None"
Inst13Quest4_Folgequest = "None"
-- No Rewards for this quest

--Quest 5 Alliance
Inst13Quest5 = "5. The Fury Runs Deep"
Inst13Quest5_Aim = "Motley Garmason wants Kam Deepfury's head brought to him at Dun Modr."
Inst13Quest5_Location = "Motley Garmason (Wetlands - Dun Modr; "..YELLOW.."49.6, 18.2"..WHITE..")"
Inst13Quest5_Note = "The preceding quest can be obtained from Motley Garmason too. You can find Kam Deepfury at "..YELLOW.."[2]"..WHITE.."."
Inst13Quest5_Prequest = "The Dark Iron War"
Inst13Quest5_Folgequest = "None"
--
Inst13Quest5name1 = "Belt of Vindication"
Inst13Quest5name2 = "Headbasher"

--Quest 6 Alliance
Inst13Quest6 = "6. The Stockade Riots"
Inst13Quest6_Aim = "Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade."
Inst13Quest6_Location = "Warden Thelwater (Stormwind - The Stockade; "..YELLOW.."41.2, 58.0"..WHITE..")"
Inst13Quest6_Note = "You can find Bazil Thredd at "..YELLOW.."[4]"..WHITE.."."
Inst13Quest6_Prequest = "The Defias Brotherhood -> Bazil Thredd"
Inst13Quest6_Folgequest = "The Curious Visitor"
-- No Rewards for this quest



--------------- INST14 - Stratholme ---------------

Inst14Caption = "Stratholme"
Inst14QAA = "18 Quests"
Inst14QAH = "19 Quests"

--Quest 1 Alliance
Inst14Quest1 = "1. The Flesh Does Not Lie"
Inst14Quest1_Aim = "Recover 20 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample."
Inst14Quest1_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81.4, 59.6"..WHITE..")"
Inst14Quest1_Note = "Most mobs in Stratholme can drop the Plagued Flesh Samples, but the drop rate seems low."
Inst14Quest1_Prequest = "None"
Inst14Quest1_Folgequest = "The Active Agent"
-- No Rewards for this quest

--Quest 2 Alliance
Inst14Quest2 = "2. The Active Agent"
Inst14Quest2_Aim = "Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink."
Inst14Quest2_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81.4, 59.6"..WHITE..")"
Inst14Quest2_Note = "The Scourge Data is in one of the 3 Towers, you find near "..YELLOW.."[15]"..WHITE..", "..YELLOW.."[16]"..WHITE.." and "..YELLOW.."[17]"..WHITE.."."
Inst14Quest2_Prequest = "The Flesh Does Not Lie"
Inst14Quest2_Folgequest = "None"
--
Inst14Quest2name1 = "Seal of the Dawn"
Inst14Quest2name2 = "Rune of the Dawn"

--Quest 3 Alliance
Inst14Quest3 = "3. Houses of the Holy"
Inst14Quest3_Aim = "Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid."
Inst14Quest3_Location = "Leonid Barthalomew the Revered (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81.6, 57.8"..WHITE..")"
Inst14Quest3_Note = "You can find the Holy Water in crates everywhere in Stratholme.  Some of the crates will spawn bugs that attack you."
Inst14Quest3_Prequest = "None"
Inst14Quest3_Folgequest = "None"
--
Inst14Quest3name1 = "Superior Healing Potion"
Inst14Quest3name2 = "Greater Mana Potion"
Inst14Quest3name3 = "Crown of the Penitent"
Inst14Quest3name4 = "Band of the Penitent"

--Quest 4 Alliance
Inst14Quest4 = "4. The Great Fras Siabi"
Inst14Quest4_Aim = "Find Fras Siabi's smoke shop in Stratholme and recover a box of Siabi's Premium Tobacco. Return to Smokey LaRue when the job is done."
Inst14Quest4_Location = "Smokey LaRue (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."80.6, 58.0"..WHITE..")"
Inst14Quest4_Note = "You find the smoke shop near "..YELLOW.."[1]"..WHITE..".  Fras Siabi spawns when you open box."
Inst14Quest4_Prequest = "None"
Inst14Quest4_Folgequest = "None"
--
Inst14Quest4name1 = "Smokey's Lighter"

--Quest 5 Alliance
Inst14Quest5 = "5. The Restless Souls"
Inst14Quest5_Aim = "Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!\nFree 15 Restless Souls and return to Egan."
Inst14Quest5_Location = "Egan (Eastern Plaguelands - Terrordale; "..YELLOW.."14.4, 33.6"..WHITE..")"
Inst14Quest5_Note = "You get the prequest from Caretaker Alen (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."79.4, 63.8"..WHITE..").  The Spectral Citizens walk through the streets of Stratholme."
Inst14Quest5_Prequest = "The Restless Souls"
Inst14Quest5_Folgequest = "None"
--
Inst14Quest5name1 = "Testament of Hope"

--Quest 6 Alliance
Inst14Quest6 = "6. Of Love and Family"
Inst14Quest6_Aim = "Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.\nReturn the painting to Tirion Fordring."
Inst14Quest6_Location = "Artist Renfray (Western Plaguelands - Caer Darrow; "..YELLOW.."65.6, 75.4"..WHITE..")"
Inst14Quest6_Note = "You get the prequest from Tirion Fordring (Western Plaguelands; "..YELLOW.."7.4, 43.6"..WHITE..").  You can find the picture near "..YELLOW.."[10]"..WHITE.."."
Inst14Quest6_Prequest = "Redemption -> Of Love and Family"
Inst14Quest6_Folgequest = "Find Myranda"
-- No Rewards for this quest

--Quest 7 Alliance
Inst14Quest7 = "7. Menethil's Gift"
Inst14Quest7_Aim = "Travel to Stratholme and find Menethil's Gift. Place the Keepsake of Remembrance upon the unholy ground."
Inst14Quest7_Location = "Leonid Barthalomew the Revered (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81.6, 57.8"..WHITE..")"
Inst14Quest7_Note = "You get the prequest from Magistrate Marduke (Western Plaguelands - Caer Darrow; "..YELLOW.."70.4, 74.0"..WHITE..").  The unholy ground is at "..YELLOW.."[19]"..WHITE.."."
Inst14Quest7_Prequest = "The Human, Ras Frostwhisper -> The Dying, Ras Frostwhisper"
Inst14Quest7_Folgequest = "Menethil's Gift"
-- No Rewards for this quest

--Quest 8 Alliance
Inst14Quest8 = "8. Aurius' Reckoning"
Inst14Quest8_Aim = "Kill the Baron."
Inst14Quest8_Location = "Aurius (Stratholme; "..YELLOW.."[13]"..WHITE..")"
Inst14Quest8_Note = "You get the Medallion from a chest (Malor's Strongbox "..YELLOW.."[7]"..WHITE..") in the first chamber of the bastion (before the ways split). It is not bound so you can trade it from another player or get it in a separate run.\n\nAfter giving Aurius the Medallion he'll help you when you fight Baron Rivendare "..YELLOW.."[19]"..WHITE..". After the Baron dies, Aurius will also die. Talk to his corpse to receive the reward."
Inst14Quest8_Prequest = "None"
Inst14Quest8_Folgequest = "None"
--
Inst14Quest8name1 = "Will of the Martyr"
Inst14Quest8name2 = "Blood of the Martyr"

--Quest 9 Alliance
Inst14Quest9 = "9. The Archivist"
Inst14Quest9_Aim = "Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive."
Inst14Quest9_Location = "Duke Nicholas Zverenhoff (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81.4, 59.8"..WHITE..")"
Inst14Quest9_Note = "You can find the Archive and the Achivist at "..YELLOW.."[10]"..WHITE.."."
Inst14Quest9_Prequest = "None"
Inst14Quest9_Folgequest = "The Truth Comes Crashing Down"
-- No Rewards for this quest

--Quest 10 Alliance
Inst14Quest10 = "10. The Truth Comes Crashing Down"
Inst14Quest10_Aim = "Take the Head of Balnazzar to Duke Nicholas Zverenhoff in the Eastern Plaguelands."
Inst14Quest10_Location = "Balnazzar (Stratholme; "..YELLOW.."[11]"..WHITE..")"
Inst14Quest10_Note = "You find Duke Nicholas Zverenhoff in the Eastern Plaguelands - Light's Hope Chapel ("..YELLOW.."81.4, 59.8"..WHITE..")."
Inst14Quest10_Prequest = "The Archivist"
Inst14Quest10_Folgequest = "Above and Beyond"
-- No Rewards for this quest

--Quest 11 Alliance
Inst14Quest11 = "11. Above and Beyond"
Inst14Quest11_Aim = "Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff."
Inst14Quest11_Location = "Duke Nicholas Zverenhoff (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81.4, 59.8"..WHITE..")"
Inst14Quest11_Note = "Baron Rivendare is at "..YELLOW.."[19]"..WHITE..".\n\nThe rewards listed are for the followup."
Inst14Quest11_Prequest = "The Truth Comes Crashing Down"
Inst14Quest11_Folgequest = "Lord Maxwell Tyrosus -> The Argent Hold"
--
Inst14Quest11name1 = "Argent Defender"
Inst14Quest11name2 = "Argent Crusader"
Inst14Quest11name3 = "Argent Avenger"

--Quest 12 Alliance
Inst14Quest12 = "12. Dead Man's Plea"
Inst14Quest12_Aim = "Go into Stratholme and rescue Ysida Harmon from Baron Rivendare."
Inst14Quest12_Location = "Anthion Harmon (Eastern Plaguelands - Stratholme)"
Inst14Quest12_Note = "Anthion stands just outside the Stratholme portal. You need the Extra-Dimensional Ghost Revealer to see him. It comes from the pre-quest. The questline starts with Just Compensation. Deliana in Ironforge ("..YELLOW.."43, 52"..WHITE..") for Alliance, Mokvar in Orgrimmar ("..YELLOW.."38, 37"..WHITE..") for Horde.\nThis is the infamous '45 minute' Baron run."
Inst14Quest12_Prequest = "In Search of Anthion"
Inst14Quest12_Folgequest = "Proof of Life"
--
Inst14Quest11name1 = "Ysida's Satchel"

--Quest 13 Alliance
Inst14Quest13 = "13. The Left Piece of Lord Valthalak's Amulet"
Inst14Quest13_Aim = "Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst14Quest13_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst14Quest13_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nJarien and Sothos are summoned at "..YELLOW.."[11]"..WHITE.."."
Inst14Quest13_Prequest = "Components of Importance"
Inst14Quest13_Folgequest = "I See Alcaz Island In Your Future..."
-- No Rewards for this quest

--Quest 14 Alliance
Inst14Quest14 = "14. The Right Piece of Lord Valthalak's Amulet"
Inst14Quest14_Aim = "Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst14Quest14_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst14Quest14_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nJarien and Sothos are summoned at "..YELLOW.."[11]"..WHITE.."."
Inst14Quest14_Prequest = "More Components of Importance"
Inst14Quest14_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
-- No Rewards for this quest

--Quest 15 Alliance
Inst14Quest15 = "15. Atiesh, Greatstaff of the Guardian"
Inst14Quest15_Aim = "Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him."
Inst14Quest15_Location = "Anachronos (Tanaris - Caverns of Time; "..YELLOW.."65, 49"..WHITE..")"
Inst14Quest15_Note = "Atiesh is summoned at "..YELLOW.."[2]"..WHITE..".\n\nAs of October 2019 this quest is not available in WoW Classic yet.  I'll update this when it is added."
Inst14Quest15_Prequest = "Yes"
Inst14Quest15_Folgequest = "None"
--
Inst14Quest15name1 = "Atiesh, Greatstaff of the Guardian"
Inst14Quest15name2 = "Atiesh, Greatstaff of the Guardian"
Inst14Quest15name3 = "Atiesh, Greatstaff of the Guardian"
Inst14Quest15name4 = "Atiesh, Greatstaff of the Guardian"

--Quest 16 Alliance
Inst14Quest16 = "16. Corruption"
Inst14Quest16_Aim = "Find the Black Guard Swordsmith in Stratholme and destroy him. Recover the Insignia of the Black Guard and return to Seril Scourgebane."
Inst14Quest16_Location = "Seril Scourgebane (Winterspring - Everlook; "..YELLOW.."61.2, 37.2"..WHITE..")"
Inst14Quest16_Note = "Blacksmith quest.  The Black Guard Swordsmith is summoned near "..YELLOW.."[15]"..WHITE.."."
Inst14Quest16_Prequest = "None"
Inst14Quest16_Folgequest = "None"
--
Inst14Quest16name1 = "Plans: Blazing Rapier"

--Quest 17 Alliance
Inst14Quest17 = "17. Sweet Serenity"
Inst14Quest17_Aim = "Travel to Stratholme and kill the Crimson Hammersmith. Recover the Crimson Hammersmith's Apron and return to Lilith."
Inst14Quest17_Location = "Lilith the Lithe (Winterspring - Everlook; "..YELLOW.."61.2, 37.2"..WHITE..")"
Inst14Quest17_Note = "Blacksmith quest.  The Crimson Hammersmith is summoned at "..YELLOW.."[8]"..WHITE.."."
Inst14Quest17_Prequest = "None"
Inst14Quest17_Folgequest = "None"
--
Inst14Quest17name1 = "Plans: Enchanted Battlehammer"

--Quest 18 Alliance
Inst14Quest18 = "18. The Balance of Light and Shadow"
Inst14Quest18_Aim = "Save 50 Peasants before 15 are slain. Speak with Eris Havenfire should you accomplish this task."
Inst14Quest18_Location = "Eris Havenfire (Eastern Plaguelands; "..YELLOW.."20.8, 18.2"..WHITE..")"
Inst14Quest18_Note = "Priest quest.  In order to see Eris Havenfire and get this quest and the prequest, you need the Eye of Divinity (comes from Cache of the Firelord in "..YELLOW.."[Molten Core]"..WHITE..").\n\nThis quest's reward, when combined with Eye of Divinity and The Eye of Shadow (drops from demons in Winterspring or Blasted Lands) form Benediction, an epic priest's staff."
Inst14Quest18_Prequest = "A Warning"
Inst14Quest18_Folgequest = "None"
--
Inst14Quest18name1 = "Splinter of Nordrassil"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst14Quest1_HORDE = Inst14Quest1
Inst14Quest1_HORDE_Aim = Inst14Quest1_Aim
Inst14Quest1_HORDE_Location = Inst14Quest1_Location
Inst14Quest1_HORDE_Note = Inst14Quest1_Note
Inst14Quest1_HORDE_Prequest = Inst14Quest1_Prequest
Inst14Quest1_HORDE_Folgequest = Inst14Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst14Quest2_HORDE = Inst14Quest2
Inst14Quest2_HORDE_Aim = Inst14Quest2_Aim
Inst14Quest2_HORDE_Location = Inst14Quest2_Location
Inst14Quest2_HORDE_Note = Inst14Quest2_Note
Inst14Quest2_HORDE_Prequest = Inst14Quest2_Prequest
Inst14Quest2_HORDE_Folgequest = Inst14Quest2_Folgequest
--
Inst14Quest2name1_HORDE = Inst14Quest2name1
Inst14Quest2name2_HORDE = Inst14Quest2name2

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst14Quest3_HORDE = Inst14Quest3
Inst14Quest3_HORDE_Aim = Inst14Quest3_Aim
Inst14Quest3_HORDE_Location = Inst14Quest3_Location
Inst14Quest3_HORDE_Note = Inst14Quest3_Note
Inst14Quest3_HORDE_Prequest = Inst14Quest3_Prequest
Inst14Quest3_HORDE_Folgequest = Inst14Quest3_Folgequest
--
Inst14Quest3name1_HORDE = Inst14Quest3name1
Inst14Quest3name2_HORDE = Inst14Quest3name2
Inst14Quest3name3_HORDE = Inst14Quest3name3
Inst14Quest3name4_HORDE = Inst14Quest3name4

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst14Quest4_HORDE = Inst14Quest4
Inst14Quest4_HORDE_Aim = Inst14Quest4_Aim
Inst14Quest4_HORDE_Location = Inst14Quest4_Location
Inst14Quest4_HORDE_Note = Inst14Quest4_Note
Inst14Quest4_HORDE_Prequest = Inst14Quest4_Prequest
Inst14Quest4_HORDE_Folgequest = Inst14Quest4_Folgequest
--
Inst14Quest4name1_HORDE = Inst14Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst14Quest5_HORDE = Inst14Quest5
Inst14Quest5_HORDE_Aim = Inst14Quest5_Aim
Inst14Quest5_HORDE_Location = Inst14Quest5_Location
Inst14Quest5_HORDE_Note = Inst14Quest5_Note
Inst14Quest5_HORDE_Prequest = Inst14Quest5_Prequest
Inst14Quest5_HORDE_Folgequest = Inst14Quest5_Folgequest
--
Inst14Quest5name1_HORDE = Inst14Quest5name1

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst14Quest6_HORDE = Inst14Quest6
Inst14Quest6_HORDE_Aim = Inst14Quest6_Aim
Inst14Quest6_HORDE_Location = Inst14Quest6_Location
Inst14Quest6_HORDE_Note = Inst14Quest6_Note
Inst14Quest6_HORDE_Prequest = Inst14Quest6_Prequest
Inst14Quest6_HORDE_Folgequest = Inst14Quest6_Folgequest
-- No Rewards for this quest

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst14Quest7_HORDE = Inst14Quest7
Inst14Quest7_HORDE_Aim = Inst14Quest7_Aim
Inst14Quest7_HORDE_Location = Inst14Quest7_Location
Inst14Quest7_HORDE_Note = Inst14Quest7_Note
Inst14Quest7_HORDE_Prequest = Inst14Quest7_Prequest
Inst14Quest7_HORDE_Folgequest = Inst14Quest7_Folgequest
-- No Rewards for this quest

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst14Quest8_HORDE = Inst14Quest8
Inst14Quest8_HORDE_Aim = Inst14Quest8_Aim
Inst14Quest8_HORDE_Location = Inst14Quest8_Location
Inst14Quest8_HORDE_Note = Inst14Quest8_Note
Inst14Quest8_HORDE_Prequest = Inst14Quest8_Prequest
Inst14Quest8_HORDE_Folgequest = Inst14Quest8_Folgequest
--
Inst14Quest8name1_HORDE = Inst14Quest8name1
Inst14Quest8name2_HORDE = Inst14Quest8name2

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst14Quest9_HORDE = Inst14Quest9
Inst14Quest9_HORDE_Aim = Inst14Quest9_Aim
Inst14Quest9_HORDE_Location = Inst14Quest9_Location
Inst14Quest9_HORDE_Note = Inst14Quest9_Note
Inst14Quest9_HORDE_Prequest = Inst14Quest9_Prequest
Inst14Quest9_HORDE_Folgequest = Inst14Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst14Quest10_HORDE = Inst14Quest10
Inst14Quest10_HORDE_Aim = Inst14Quest10_Aim
Inst14Quest10_HORDE_Location = Inst14Quest10_Location
Inst14Quest10_HORDE_Note = Inst14Quest10_Note
Inst14Quest10_HORDE_Prequest = Inst14Quest10_Prequest
Inst14Quest10_HORDE_Folgequest = Inst14Quest10_Folgequest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst14Quest11_HORDE = Inst14Quest11
Inst14Quest11_HORDE_Aim = Inst14Quest11_Aim
Inst14Quest11_HORDE_Location = Inst14Quest11_Location
Inst14Quest11_HORDE_Note = Inst14Quest11_Note
Inst14Quest11_HORDE_Prequest = Inst14Quest11_Prequest
Inst14Quest11_HORDE_Folgequest = Inst14Quest11_Folgequest
--
Inst14Quest11name1_HORDE = Inst14Quest11name1
Inst14Quest11name2_HORDE = Inst14Quest11name2
Inst14Quest11name3_HORDE = Inst14Quest11name3

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst14Quest12_HORDE = Inst14Quest12
Inst14Quest12_HORDE_Aim = Inst14Quest12_Aim
Inst14Quest12_HORDE_Location = Inst14Quest12_Location
Inst14Quest12_HORDE_Note = Inst14Quest12_Note
Inst14Quest12_HORDE_Prequest = Inst14Quest12_Prequest
Inst14Quest12_HORDE_Folgequest = Inst14Quest12_Folgequest
-- No Rewards for this quest

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst14Quest13_HORDE = Inst14Quest13
Inst14Quest13_HORDE_Aim = Inst14Quest13_Aim
Inst14Quest13_HORDE_Location = Inst14Quest13_Location
Inst14Quest13_HORDE_Note = Inst14Quest13_Note
Inst14Quest13_HORDE_Prequest = Inst14Quest13_Prequest
Inst14Quest13_HORDE_Folgequest = Inst14Quest13_Folgequest
-- No Rewards for this quest

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst14Quest14_HORDE = Inst14Quest14
Inst14Quest14_HORDE_Aim = Inst14Quest14_Aim
Inst14Quest14_HORDE_Location = Inst14Quest14_Location
Inst14Quest14_HORDE_Note = Inst14Quest14_Note
Inst14Quest14_HORDE_Prequest = Inst14Quest14_Prequest
Inst14Quest14_HORDE_Folgequest = Inst14Quest14_Folgequest
-- No Rewards for this quest

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst14Quest15_HORDE = Inst14Quest15
Inst14Quest15_HORDE_Aim = Inst14Quest15_Aim
Inst14Quest15_HORDE_Location = Inst14Quest15_Location
Inst14Quest15_HORDE_Note = Inst14Quest15_Note
Inst14Quest15_HORDE_Prequest = Inst14Quest15_Prequest
Inst14Quest15_HORDE_Folgequest = Inst14Quest15_Folgequest
--
Inst14Quest15name1_HORDE = Inst14Quest15name1
Inst14Quest15name2_HORDE = Inst14Quest15name2
Inst14Quest15name3_HORDE = Inst14Quest15name3
Inst14Quest15name4_HORDE = Inst14Quest15name4

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst14Quest16_HORDE = Inst14Quest16
Inst14Quest16_HORDE_Aim = Inst14Quest16_Aim
Inst14Quest16_HORDE_Location = Inst14Quest16_Location
Inst14Quest16_HORDE_Note = Inst14Quest16_Note
Inst14Quest16_HORDE_Prequest = Inst14Quest16_Prequest
Inst14Quest16_HORDE_Folgequest = Inst14Quest16_Folgequest
--
Inst14Quest16name1_HORDE = Inst14Quest16name1

--Quest 17 Horde  (same as Quest 17 Alliance)
Inst14Quest17_HORDE = Inst14Quest17
Inst14Quest17_HORDE_Aim = Inst14Quest17_Aim
Inst14Quest17_HORDE_Location = Inst14Quest17_Location
Inst14Quest17_HORDE_Note = Inst14Quest17_Note
Inst14Quest17_HORDE_Prequest = Inst14Quest17_Prequest
Inst14Quest17_HORDE_Folgequest = Inst14Quest17_Folgequest
--
Inst14Quest17name1_HORDE = Inst14Quest17name1

--Quest 18 Horde
Inst14Quest18_HORDE = "18. Ramstein"
Inst14Quest18_HORDE_Aim = "Travel to Stratholme and slay Ramstein the Gorger. Take his head as a souvenir for Nathanos."
Inst14Quest18_HORDE_Location = "Nathanos Blightcaller (Eastern Plaguelands; "..YELLOW.."26.6, 74.8"..WHITE..")"
Inst14Quest18_HORDE_Note = "You get the prequest from Nathanos Blightcaller, too.  You can find Ramstein the Gorger at "..YELLOW.."[18]"..WHITE.."."
Inst14Quest18_HORDE_Prequest = "The Ranger Lord's Behest -> Duskwing, Oh How I Hate Thee..."
Inst14Quest18_HORDE_Folgequest = "None"
--
Inst14Quest18name1_HORDE = "Royal Seal of Alexis"
Inst14Quest18name2_HORDE = "Elemental Circle"

--Quest 19 Horde  (same as Quest 18 Alliance)
Inst14Quest19_HORDE = "19. The Balance of Light and Shadow (Priest)"
Inst14Quest19_HORDE_Aim = Inst14Quest18_Aim
Inst14Quest19_HORDE_Location = Inst14Quest18_Location
Inst14Quest19_HORDE_Note = Inst14Quest18_Note
Inst14Quest19_HORDE_Prequest = Inst14Quest18_Prequest
Inst14Quest19_HORDE_Folgequest = Inst14Quest18_Folgequest
--
Inst14Quest19name1_HORDE = Inst14Quest18name1



--------------- INST15 - Sunken Temple ---------------

Inst15Caption = "The Sunken Temple"
Inst15QAA = "16 Quests"
Inst15QAH = "16 Quests"

--Quest 1 Alliance
Inst15Quest1 = "1. Into The Temple of Atal'Hakkar"
Inst15Quest1_Aim = "Gather 10 Atal'ai Tablets for Brohann Caskbelly in Stormwind."
Inst15Quest1_Location = "Brohann Caskbelly (Stormwind - Dwarven District; "..YELLOW.."64.2, 20.8"..WHITE..")"
Inst15Quest1_Note = "The prequest line comes from the same NPC and has quite a few steps.\n\nYou can find the Tablets everywhere in the Temple, both outside and inside the dungeon."
Inst15Quest1_Prequest = "In Search of The Temple -> Rhapsody's Tale"
Inst15Quest1_Folgequest = "None"
--
Inst15Quest1name1 = "Guardian Talisman"

--Quest 2 Alliance
Inst15Quest2 = "2. The Sunken Temple"
Inst15Quest2_Aim = "Find Marvon Rivetseeker in Tanaris."
Inst15Quest2_Location = "Angelas Moonbreeze (Feralas - Feathermoon Stronghold; "..YELLOW.."31.8, 45.6"..WHITE..")"
Inst15Quest2_Note = "You find Marvon Rivetseeker at "..YELLOW.."52.6, 45.8"..WHITE.."."
Inst15Quest2_Prequest = "None"
Inst15Quest2_Folgequest = "The Stone Circle"
-- No Rewards for this quest

--Quest 3 Alliance
Inst15Quest3 = "3. Into the Depths"
Inst15Quest3_Aim = "Find the Altar of Hakkar in the Sunken Temple in Swamp of Sorrows."
Inst15Quest3_Location = "Marvon Rivetseeker (Tanaris; "..YELLOW.."52.6, 45.8"..WHITE..")"
Inst15Quest3_Note = "The Altar is at "..YELLOW.."[1]"..WHITE.."."
Inst15Quest3_Prequest = "The Sunken Temple -> The Stone Circle"
Inst15Quest3_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Alliance
Inst15Quest4 = "4. Secret of the Circle"
Inst15Quest4_Aim = "Travel into the Sunken Temple and discover the secret hidden in the circle of statues."
Inst15Quest4_Location = "Marvon Rivetseeker (Tanaris; "..YELLOW.."52.6, 45.8"..WHITE..")"
Inst15Quest4_Note = "You find the statues at "..YELLOW.."[1]"..WHITE..". See map for order to activate them."
Inst15Quest4_Prequest = "The Sunken Temple -> The Stone Circle"
Inst15Quest4_Folgequest = "None"
--
Inst15Quest4name1 = "Hakkari Urn"

--Quest 5 Alliance
Inst15Quest5 = "5. Haze of Evil"
Inst15Quest5_Aim = "Collect 5 samples of Atal'ai Haze, then return to Muigin in Un'Goro Crater."
Inst15Quest5_Location = "Gregan Brewspewer (Feralas; "..YELLOW.."45.0, 25.4"..WHITE..")"
Inst15Quest5_Note = "The Prequest 'Muigin and Larion' starts at Muigin (Un'Goro Crater - Marshal's Refuge; "..YELLOW.."43.0, 9.6"..WHITE.."). You get the Haze from Deep Lurkers, Murk Worms or Oozes in the Temple."
Inst15Quest5_Prequest = "Muigin and Larion -> A Visit to Gregan "
Inst15Quest5_Folgequest = "None"
-- No Rewards for this quest

--Quest 6 Alliance
Inst15Quest6 = "6. The God Hakkar"
Inst15Quest6_Aim = "Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris."
Inst15Quest6_Location = "Yeh'kinya (Tanaris - Steamwheedle Port; "..YELLOW.."67.0, 22.4"..WHITE..")"
Inst15Quest6_Note = "The Questline starts with 'Screecher Spirits' at the same NPC (See "..YELLOW.."[Zul'Farrak]"..WHITE..").\nYou have to use the Egg at "..YELLOW.."[3]"..WHITE.." to start the Event.  Once it starts enemies spawn and attack you.  Some of them drop the blood of Hakkar.  With this blood you can put out the torch around the circle.  After this the Avatar of Hakkar spawns.  You kill him and loot the 'Essence of Hakkar' which you use to fill the egg."
Inst15Quest6_Prequest = "Screecher Spirits -> The Ancient Egg"
Inst15Quest6_Folgequest = "None"
--
Inst15Quest6name1 = "Avenguard Helm"
Inst15Quest6name2 = "Lifeforce Dirk"
Inst15Quest6name3 = "Gemburst Circlet"
Inst15Quest6name4 = "Essence of Hakkar"

--Quest 7 Alliance
Inst15Quest7 = "7. Jammal'an the Prophet"
Inst15Quest7_Aim = "The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an."
Inst15Quest7_Location = "The Atal'ai Exile (The Hinterlands; "..YELLOW.."33.6, 75.2"..WHITE..")"
Inst15Quest7_Note = "You find Jammal'an at "..YELLOW.."[4]"..WHITE.."."
Inst15Quest7_Prequest = "None"
Inst15Quest7_Folgequest = "None"
--
Inst15Quest7name1 = "Rainstrider Leggings"
Inst15Quest7name2 = "Helm of Exile"

--Quest 8 Alliance
Inst15Quest8 = "8. The Essence of Eranikus"
Inst15Quest8_Aim = "Place the Essence of Eranikus in the Essence Font located in this lair in the Sunken Temple."
Inst15Quest8_Location = "The Essence of Eranikus (drops from Shade of Eranikus; "..YELLOW.."[6]"..WHITE..")"
Inst15Quest8_Note = "You find the Essence Font next to where Shade of Eranikus is at "..YELLOW.."[6]"..WHITE.."."
Inst15Quest8_Prequest = "None"
Inst15Quest8_Folgequest = "The Essence of Eranikus"
--
Inst15Quest8name1 = "Chained Essence of Eranikus"

--Quest 9 Alliance
Inst15Quest9 = "9. Trolls of a Feather"
Inst15Quest9_Aim = "Bring a total of 6 Voodoo Feathers from the trolls in sunken temple."
Inst15Quest9_Location = "Impsy (Felwood; "..YELLOW.."41.6, 45.0"..WHITE..")"
Inst15Quest9_Note = "Warlock quest.  1 Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst15Quest9_Prequest = "An Imp's Request -> The Wrong Stuff"
Inst15Quest9_Folgequest = "None"
--
Inst15Quest9name1 = "Soul Harvester"
Inst15Quest9name2 = "Abyss Shard"
Inst15Quest9name3 = "Robes of Servitude"

--Quest 10 Alliance
Inst15Quest10 = "10. Voodoo Feathers"
Inst15Quest10_Aim = "Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde."
Inst15Quest10_Location = "Fallen Hero of the Horde (Swamp of Sorrows; "..YELLOW.."34.2, 66.0"..WHITE..")"
Inst15Quest10_Note = "Warrior quest.  1 Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst15Quest10_Prequest = "A Troubled Spirit -> War on the Shadowsworn"
Inst15Quest10_Folgequest = "None"
--
Inst15Quest10name1 = "Fury Visor"
Inst15Quest10name2 = "Diamond Flask"
Inst15Quest10name3 = "Razorsteel Shoulders"

--Quest 11 Alliance
Inst15Quest11 = "11. A Better Ingredient"
Inst15Quest11_Aim = "Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder."
Inst15Quest11_Location = "Torwa Pathfinder (Un'Goro Crater; "..YELLOW.."71.6, 76.0"..WHITE..")"
Inst15Quest11_Note = "Druid quest.  The Putrid Vine drops from Atal'alarion who is summoned at "..YELLOW.."[1]"..WHITE.." by activating the statues in the order listed on the map."
Inst15Quest11_Prequest = "Bloodpetal Poison -> Toxic Test"
Inst15Quest11_Folgequest = "None"
--
Inst15Quest11name1 = "Grizzled Pelt"
Inst15Quest11name2 = "Forest's Embrace"
Inst15Quest11name3 = "Moonshadow Stave"

--Quest 12 Alliance
Inst15Quest12 = "12. The Green Drake"
Inst15Quest12_Aim = "Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath."
Inst15Quest12_Location = "Ogtinc (Azshara; "..YELLOW.."42.2, 42.6"..WHITE..")"
Inst15Quest12_Note = "Hunter quest.  Morphaz is at "..YELLOW.."[5]"..WHITE.."."
Inst15Quest12_Prequest = "Courser Antlers -> Wavethrashing"
Inst15Quest12_Folgequest = "None"
--
Inst15Quest12name1 = "Hunting Spear"
Inst15Quest12name2 = "Devilsaur Eye"
Inst15Quest12name3 = "Devilsaur Tooth"

--Quest 13 Alliance
Inst15Quest13 = "13. Destroy Morphaz"
Inst15Quest13_Aim = "Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem."
Inst15Quest13_Location = "Archmage Xylem (Azshara; "..YELLOW.."29.6, 40.6"..WHITE..")"
Inst15Quest13_Note = "Mage quest.  Morphaz is at "..YELLOW.."[5]"..WHITE.."."
Inst15Quest13_Prequest = "Magic Dust -> The Siren's Coral"
Inst15Quest13_Folgequest = "None"
--
Inst15Quest13name1 = "Glacial Spike"
Inst15Quest13name2 = "Arcane Crystal Pendant"
Inst15Quest13name3 = "Fire Ruby"

--Quest 14 Alliance
Inst15Quest14 = "14. Blood of Morphaz"
Inst15Quest14_Aim = "Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows."
Inst15Quest14_Location = "Ogtinc (Azshara; "..YELLOW.."42.2, 42.6"..WHITE..")"
Inst15Quest14_Note = "Priest quest.  Morphaz is at "..YELLOW.."[5]"..WHITE..".  Greta Mosshoof is at (Felwood - Emerald Sanctuary; "..YELLOW.."51.2, 82.2"..WHITE..")."
Inst15Quest14_Prequest = "Of Coursers We Know -> The Ichor of Undeath"
Inst15Quest14_Folgequest = "None"
--
Inst15Quest14name1 = "Blessed Prayer Beads"
Inst15Quest14name2 = "Woestave"
Inst15Quest14name3 = "Circle of Hope"

--Quest 15 Alliance
Inst15Quest15 = "15. The Azure Key"
Inst15Quest15_Aim = "Return the Azure Key to Lord Jorach Ravenholdt."
Inst15Quest15_Location = "Archmage Xylem (Azshara; "..YELLOW.."29.6, 40.6"..WHITE..")"
Inst15Quest15_Note = "Rogue quest.  The Azure Key drops from Morphaz at "..YELLOW.."[5]"..WHITE..".  Lord Jorach Ravenholdt is at Alterac Mountains - Ravenholdt ("..YELLOW.."86.0, 79.0"..WHITE..")."
Inst15Quest15_Prequest = "Sealed Azure Bag -> Encoded Fragments"
Inst15Quest15_Folgequest = "None"
--
Inst15Quest15name1 = "Ebon Mask"
Inst15Quest15name2 = "Whisperwalk Boots"
Inst15Quest15name3 = "Duskbat Drape"

--Quest 16 Alliance
Inst15Quest16 = "16. Forging the Mightstone"
Inst15Quest16_Aim = "Bring the voodoo feathers to Ashlam Valorfist."
Inst15Quest16_Location = "Commander Ashlam Valorfist (Western Plaguelands - Chillwind Camp; "..YELLOW.."42.8, 84.0"..WHITE..")"
Inst15Quest16_Note = "Paladin quest.  1 Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst15Quest16_Prequest = "Dispelling Evil -> Inert Scourgestones"
Inst15Quest16_Folgequest = "None"
--
Inst15Quest16name1 = "Holy Mightstone"
Inst15Quest16name2 = "Lightforged Blade"
Inst15Quest16name3 = "Sanctified Orb"
Inst15Quest16name4 = "Chivalrous Signet"


--Quest 1 Horde
Inst15Quest1_HORDE = "1. The Temple of Atal'Hakkar"
Inst15Quest1_HORDE_Aim = "Collect 20 Fetishes of Hakkar and bring them to Fel'Zerul in Stonard."
Inst15Quest1_HORDE_Location = "Fel'Zerul (Swamp of Sorrows - Stonard; "..YELLOW.."48.0, 55.0"..WHITE..")"
Inst15Quest1_HORDE_Note = "All mobs in the Temple can drop the Fetishes."
Inst15Quest1_HORDE_Prequest = "Pool of Tears -> Return to Fel'Zerul"
Inst15Quest1_HORDE_Folgequest = "None"
--
Inst15Quest1name1_HORDE = "Guardian Talisman"

--Quest 2 Horde
Inst15Quest2_HORDE = "2. The Sunken Temple"
Inst15Quest2_HORDE_Aim = "Find Marvon Rivetseeker in Tanaris."
Inst15Quest2_HORDE_Location = "Witch Doctor Uzer'i (Feralas; "..YELLOW.."74.4, 43.4"..WHITE..")"
Inst15Quest2_HORDE_Note = "You find Marvon Rivetseeker at "..YELLOW.."52.6, 45.8"..WHITE.."."
Inst15Quest2_HORDE_Prequest = "None"
Inst15Quest2_HORDE_Folgequest = "The Stone Circle"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst15Quest3_HORDE = Inst15Quest3
Inst15Quest3_HORDE_Aim = Inst15Quest3_Aim
Inst15Quest3_HORDE_Location = Inst15Quest3_Location
Inst15Quest3_HORDE_Note = Inst15Quest3_Note
Inst15Quest3_HORDE_Prequest = Inst15Quest3_Prequest
Inst15Quest3_HORDE_Folgequest = Inst15Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst15Quest4_HORDE = Inst15Quest4
Inst15Quest4_HORDE_Aim = Inst15Quest4_Aim
Inst15Quest4_HORDE_Location = Inst15Quest4_Location
Inst15Quest4_HORDE_Note = Inst15Quest4_Note
Inst15Quest4_HORDE_Prequest = Inst15Quest4_Prequest
Inst15Quest4_HORDE_Folgequest = Inst15Quest4_Folgequest
--
Inst15Quest4name1_HORDE = Inst15Quest4name1

--Quest 5 Horde
Inst15Quest5_HORDE = "5. Zapper Fuel"
Inst15Quest5_HORDE_Aim = "Deliver the Unloaded Zapper and 5 samples of Atal'ai Haze to Larion in Marshal's Refuge."
Inst15Quest5_HORDE_Location = "Liv Rizzlefix (Barrens; "..YELLOW.."62.4, 38.6"..WHITE..")"
Inst15Quest5_HORDE_Note = "The prequest 'Larion and Muigin' starts at Larion (Un'Goro Crater; "..YELLOW.."45.6, 8.6"..WHITE..").  You get the Haze from Deep Lurkers, Murk Worms or Oozes in the Temple."
Inst15Quest5_HORDE_Prequest = "Larion and Muigin -> Marvon's Workshop"
Inst15Quest5_HORDE_Folgequest = "None"

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst15Quest6_HORDE = Inst15Quest6
Inst15Quest6_HORDE_Aim = Inst15Quest6_Aim
Inst15Quest6_HORDE_Location = Inst15Quest6_Location
Inst15Quest6_HORDE_Note = Inst15Quest6_Note
Inst15Quest6_HORDE_Prequest = Inst15Quest6_Prequest
Inst15Quest6_HORDE_Folgequest = Inst15Quest6_Folgequest
--
Inst15Quest6name1_HORDE = Inst15Quest6name1
Inst15Quest6name2_HORDE = Inst15Quest6name2
Inst15Quest6name3_HORDE = Inst15Quest6name3

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst15Quest7_HORDE = Inst15Quest7
Inst15Quest7_HORDE_Aim = Inst15Quest7_Aim
Inst15Quest7_HORDE_Location = Inst15Quest7_Location
Inst15Quest7_HORDE_Note = Inst15Quest7_Note
Inst15Quest7_HORDE_Prequest = Inst15Quest7_Prequest
Inst15Quest7_HORDE_Folgequest = Inst15Quest7_Folgequest
--
Inst15Quest7name1_HORDE = Inst15Quest7name1
Inst15Quest7name2_HORDE = Inst15Quest7name2

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst15Quest8_HORDE = Inst15Quest8
Inst15Quest8_HORDE_Aim = Inst15Quest8_Aim
Inst15Quest8_HORDE_Location = Inst15Quest8_Location
Inst15Quest8_HORDE_Note = Inst15Quest8_Note
Inst15Quest8_HORDE_Prequest = Inst15Quest8_Prequest
Inst15Quest8_HORDE_Folgequest = Inst15Quest8_Folgequest
--
Inst15Quest8name1_HORDE = Inst15Quest8name1

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst15Quest9_HORDE = Inst15Quest9
Inst15Quest9_HORDE_Aim = Inst15Quest9_Aim
Inst15Quest9_HORDE_Location = Inst15Quest9_Location
Inst15Quest9_HORDE_Note = Inst15Quest9_Note
Inst15Quest9_HORDE_Prequest = Inst15Quest9_Prequest
Inst15Quest9_HORDE_Folgequest = Inst15Quest9_Folgequest
--
Inst15Quest9name1_HORDE = Inst15Quest9name1
Inst15Quest9name2_HORDE = Inst15Quest9name2
Inst15Quest9name3_HORDE = Inst15Quest9name3

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst15Quest10_HORDE = Inst15Quest10
Inst15Quest10_HORDE_Aim = Inst15Quest10_Aim
Inst15Quest10_HORDE_Location = Inst15Quest10_Location
Inst15Quest10_HORDE_Note = Inst15Quest10_Note
Inst15Quest10_HORDE_Prequest = Inst15Quest10_Prequest
Inst15Quest10_HORDE_Folgequest = Inst15Quest10_Folgequest
--
Inst15Quest10name1_HORDE = Inst15Quest10name1
Inst15Quest10name2_HORDE = Inst15Quest10name2
Inst15Quest10name3_HORDE = Inst15Quest10name3

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst15Quest11_HORDE = Inst15Quest11
Inst15Quest11_HORDE_Aim = Inst15Quest11_Aim
Inst15Quest11_HORDE_Location = Inst15Quest11_Location
Inst15Quest11_HORDE_Note = Inst15Quest11_Note
Inst15Quest11_HORDE_Prequest = Inst15Quest11_Prequest
Inst15Quest11_HORDE_Folgequest = Inst15Quest11_Folgequest
--
Inst15Quest11name1_HORDE = Inst15Quest11name1
Inst15Quest11name2_HORDE = Inst15Quest11name2
Inst15Quest11name3_HORDE = Inst15Quest11name3

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst15Quest12_HORDE = Inst15Quest12
Inst15Quest12_HORDE_Aim = Inst15Quest12_Aim
Inst15Quest12_HORDE_Location = Inst15Quest12_Location
Inst15Quest12_HORDE_Note = Inst15Quest12_Note
Inst15Quest12_HORDE_Prequest = Inst15Quest12_Prequest
Inst15Quest12_HORDE_Folgequest = Inst15Quest12_Folgequest
--
Inst15Quest12name1_HORDE = Inst15Quest12name1
Inst15Quest12name2_HORDE = Inst15Quest12name2
Inst15Quest12name3_HORDE = Inst15Quest12name3

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst15Quest13_HORDE = Inst15Quest13
Inst15Quest13_HORDE_Aim = Inst15Quest13_Aim
Inst15Quest13_HORDE_Location = Inst15Quest13_Location
Inst15Quest13_HORDE_Note = Inst15Quest13_Note
Inst15Quest13_HORDE_Prequest = Inst15Quest13_Prequest
Inst15Quest13_HORDE_Folgequest = Inst15Quest13_Folgequest
--
Inst15Quest13name1_HORDE = Inst15Quest13name1
Inst15Quest13name2_HORDE = Inst15Quest13name2
Inst15Quest13name3_HORDE = Inst15Quest13name3

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst15Quest14_HORDE = Inst15Quest14
Inst15Quest14_HORDE_Aim = Inst15Quest14_Aim
Inst15Quest14_HORDE_Location = Inst15Quest14_Location
Inst15Quest14_HORDE_Note = Inst15Quest14_Note
Inst15Quest14_HORDE_Prequest = Inst15Quest14_Prequest
Inst15Quest14_HORDE_Folgequest = Inst15Quest14_Folgequest
--
Inst15Quest14name1_HORDE = Inst15Quest14name1
Inst15Quest14name2_HORDE = Inst15Quest14name2
Inst15Quest14name3_HORDE = Inst15Quest14name3

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst15Quest15_HORDE = Inst15Quest15
Inst15Quest15_HORDE_Aim = Inst15Quest15_Aim
Inst15Quest15_HORDE_Location = Inst15Quest15_Location
Inst15Quest15_HORDE_Note = Inst15Quest15_Note
Inst15Quest15_HORDE_Prequest = Inst15Quest15_Prequest
Inst15Quest15_HORDE_Folgequest = Inst15Quest15_Folgequest
--
Inst15Quest15name1_HORDE = Inst15Quest15name1
Inst15Quest15name2_HORDE = Inst15Quest15name2
Inst15Quest15name3_HORDE = Inst15Quest15name3

--Quest 16 Horde
Inst15Quest16_HORDE = "16. Da Voodoo"
Inst15Quest16_HORDE_Aim = "Bring the voodoo feathers to Bath'rah the Windwatcher."
Inst15Quest16_HORDE_Location = "Bath'rah the Windwatcher (Alterac Mountains; "..YELLOW.."80.4, 66.8"..WHITE..")"
Inst15Quest16_HORDE_Note = "Shaman quest.  1 Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst15Quest16_HORDE_Prequest = "Elemental Mastery -> Spirit Totem"
Inst15Quest16_HORDE_Folgequest = "No"
--
Inst15Quest16name1_HORDE = "Azurite Fists"
Inst15Quest16name2_HORDE = "Enamored Water Spirit"
Inst15Quest16name3_HORDE = "Wildstaff"



--------------- INST16 - Uldaman ---------------

Inst16Caption = "Uldaman"
Inst16QAA = "17 Quests"
Inst16QAH = "11 Quests"

--Quest 1 Alliance
Inst16Quest1 = "1. A Sign of Hope"
Inst16Quest1_Aim = "Find Hammertoe Grez in Uldaman."
Inst16Quest1_Location = "Prospector Ryedol (Badlands; "..YELLOW.."53.4, 43.2"..WHITE..")"
Inst16Quest1_Note = "The Prequest starts at the Crumpled Map (Badlands; "..YELLOW.."53.0, 34.1"..WHITE..").\nYou find Hammertoe Grez in the area before you enter the dungeon's main portal."
Inst16Quest1_Prequest = "A Sign of Hope"
Inst16Quest1_Folgequest = "Amulet of Secrets"
-- No Rewards for this quest

--Quest 2 Alliance
Inst16Quest2 = "2. Amulet of Secrets"
Inst16Quest2_Aim = "Find Hammertoe's Amulet and return it to him in Uldaman."
Inst16Quest2_Location = "Hammertoe Grez (Uldaman; "..YELLOW.."Entrance Area before Dungeon"..WHITE..")."
Inst16Quest2_Note = "The Amulet drops from Magregan Deepshadow who is in the area before you enter the dungeon's main portal."
Inst16Quest2_Prequest = "A Sign of Hope"
Inst16Quest2_Folgequest = "Prospect of Faith"
-- No Rewards for this quest

--Quest 3 Alliance
Inst16Quest3 = "3. The Lost Tablets of Will"
Inst16Quest3_Aim = "Find the Tablet of Will, and return them to Advisor Belgrum in Ironforge."
Inst16Quest3_Location = "Advisor Belgrum (Ironforge - Hall of Explorers; "..YELLOW.."77.2, 10.0"..WHITE..")"
Inst16Quest3_Note = "The tablet is at "..YELLOW.."[8]"..WHITE.."."
Inst16Quest3_Prequest = "Amulet of Secrets -> An Ambassador of Evil"
Inst16Quest3_Folgequest = "None"
--
Inst16Quest3name1 = "Medal of Courage"

--Quest 4 Alliance
Inst16Quest4 = "4. Power Stones"
Inst16Quest4_Aim = "Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands."
Inst16Quest4_Location = "Rigglefuzz (Badlands; "..YELLOW.."42.4, 52.8"..WHITE..")"
Inst16Quest4_Note = "The stones can be found on any Shadowforge enemies before and in the dungeon."
Inst16Quest4_Prequest = "None"
Inst16Quest4_Folgequest = "None"
--
Inst16Quest4name1 = "Energized Stone Circle"
Inst16Quest4name2 = "Duracin Bracers"
Inst16Quest4name3 = "Everlast Boots"

--Quest 5 Alliance
Inst16Quest5 = "5. Agmond's Fate"
Inst16Quest5_Aim = "Bring 4 Carved Stone Urns to Prospector Ironband in Loch Modan."
Inst16Quest5_Location = "Prospector Ironband (Loch Modan - Ironband's Excavation Site; "..YELLOW.."65.8, 65.6"..WHITE..")"
Inst16Quest5_Note = "The Prequest starts at Prospector Stormpike (Ironforge - Hall of Explorers; "..YELLOW.."74.4, 12.0"..WHITE..").\nThe Urns are scattered throughout the caves before the dungeon."
Inst16Quest5_Prequest = "Ironband Wants You! -> Murdaloc"
Inst16Quest5_Folgequest = "None"
--
Inst16Quest5name1 = "Prospector Gloves"

--Quest 6 Alliance
Inst16Quest6 = "6. Solution to Doom"
Inst16Quest6_Aim = "Bring the Tablet of Ryun'eh to Theldurin the Lost."
Inst16Quest6_Location = "Theldurin the Lost (Badlands; "..YELLOW.."51.4, 76.8"..WHITE..")"
Inst16Quest6_Note = "The tablet is north of the caves, at the east end of a tunnel, before the dungeon."
Inst16Quest6_Prequest = "None"
Inst16Quest6_Folgequest = "To Ironforge for Yagyin's Digest"
--
Inst16Quest6name1 = "Doomsayer's Robe"

--Quest 7 Alliance
Inst16Quest7 = "7. The Lost Dwarves"
Inst16Quest7_Aim = "Find Baelog in Uldaman."
Inst16Quest7_Location = "Prospector Stormpike (Ironforge - Hall of Explorers; "..YELLOW.."74.4, 12.0"..WHITE..")"
Inst16Quest7_Note = "Baelog is at "..YELLOW.."[1]"..WHITE.."."
Inst16Quest7_Prequest = "None"
Inst16Quest7_Folgequest = "The Hidden Chamber"
-- No Rewards for this quest

--Quest 8 Alliance
Inst16Quest8 = "8. The Hidden Chamber"
Inst16Quest8_Aim = "Read Baelog's Journal, explore the hidden chamber, then report to Prospector Stormpike."
Inst16Quest8_Location = "Baelog (Uldaman; "..YELLOW.."[1]"..WHITE..")"
Inst16Quest8_Note = "The Hidden Chamber is at "..YELLOW.."[4]"..WHITE..".  To open the Hidden Chamber you need The Shaft of Tsol from Revelosh "..YELLOW.."[3]"..WHITE.." and the Gni'kiv Medallion from Baelog's Chest "..YELLOW.."[1]"..WHITE..".  Combine these two items to form Staff of Prehistoria.  The Staff is used in the Map Room between "..YELLOW.."[3] and [4]"..WHITE.." to summon Ironaya.  After killing her, run inside the room she came from to get quest credit."
Inst16Quest8_Prequest = "The Lost Dwarves"
Inst16Quest8_Folgequest = "None"
--
Inst16Quest8name1 = "Dwarven Charge"
Inst16Quest8name2 = "Explorer's League Lodestar"

--Quest 9 Alliance
Inst16Quest9 = "9. The Shattered Necklace"
Inst16Quest9_Aim = "Search for the original creator of the shattered necklace to learn of its potential value."
Inst16Quest9_Location = "Shattered Necklace (random drop from Uldaman)"
Inst16Quest9_Note = "Bring the necklace to Talvash del Kissel (Ironforge - The Mystic Ward; "..YELLOW.."36.0, 4.0"..WHITE..")."
Inst16Quest9_Prequest = "None"
Inst16Quest9_Folgequest = "Lore for a Price"
-- No Rewards for this quest

--Quest 10 Alliance
Inst16Quest10 = "10. Back to Uldaman"
Inst16Quest10_Aim = "Search for clues as to the current disposition of Talvash's necklace within Uldaman.  The slain paladin he mentioned was the person who has it last."
Inst16Quest10_Location = "Talvash del Kissel (Ironforge - The Mystic Ward; "..YELLOW.."36.0, 4.0"..WHITE..")"
Inst16Quest10_Note = "The Paladin is at "..YELLOW.."[2]"..WHITE.."."
Inst16Quest10_Prequest = "Lore for a Price"
Inst16Quest10_Folgequest = "Find the Gems"
-- No Rewards for this quest

--Quest 11 Alliance
Inst16Quest11 = "11. Find the Gems"
Inst16Quest11_Aim = "Find the ruby, sapphire, and topaz that are scattered throughout Uldaman. Once acquired, contact Talvash del Kissel remotely by using the Phial of Scrying he previously gave you."
Inst16Quest11_Location = "Remains of a Paladin (Uldaman; "..YELLOW.."[2]"..WHITE..")"
Inst16Quest11_Note = "The gems are at "..YELLOW.."[1]"..WHITE.." in a Conspicous Urn, "..YELLOW.."[8]"..WHITE.." from the Shadowforge Cache, and "..YELLOW.."[9]"..WHITE.." off Grimlok.  Note that when openning the Shadowforge Cache, a few mobs will spawn an aggro you.  Use Talvash's Scrying Bowl to turn the quest in and get the followup."
Inst16Quest11_Prequest = "Back to Uldaman"
Inst16Quest11_Folgequest = "Restoring the Necklace"
-- No Rewards for this quest

--Quest 12 Alliance
Inst16Quest12 = "12. Restoring the Necklace"
Inst16Quest12_Aim = "Obtain a power source from the most powerful construct you can find in Uldaman, and deliver it to Talvash del Kissel in Ironforge."
Inst16Quest12_Location = "Talvash's Scrying Bowl"
Inst16Quest12_Note = "The Shattered Necklace Power Source drops from Archaedas "..YELLOW.."[10]"..WHITE..".  Talvash del Kissel is at (Ironforge - The Mystic Ward; "..YELLOW.."36.0, 4.0"..WHITE..")."
Inst16Quest12_Prequest = "Find the Gems."
Inst16Quest12_Folgequest = "None"
--
Inst16Quest12name1 = "Talvash's Enhancing Necklace"

--Quest 13 Alliance
Inst16Quest13 = "13. Uldaman Reagent Run"
Inst16Quest13_Aim = "Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar."
Inst16Quest13_Location = "Ghak Healtouch (Loch Modan - Thelsamar; "..YELLOW.."37.0, 49.2"..WHITE..")"
Inst16Quest13_Note = "The caps are scattered throughout the dungeon.  Herbalists can see them on their minimap if Track Herbs is on and they have the quest.  The prequest is obtained from the same NPC."
Inst16Quest13_Prequest = "Badlands Reagent Run"
Inst16Quest13_Folgequest = "None"
--
Inst16Quest13name1 = "Restorative Potion"

--Quest 14 Alliance
Inst16Quest14 = "14. Reclaimed Treasures"
Inst16Quest14_Aim = "Get Krom Stoutarm's treasured possession from his chest in the North Common Hall of Uldaman, and bring it to him in Ironforge."
Inst16Quest14_Location = "Krom Stoutarm (Ironforge - Hall of Explorers; "..YELLOW.."74.2, 9.8"..WHITE..")"
Inst16Quest14_Note = "You find the treasure before you enter the dungeon.  It is in the north of the caves, at the southeast end of the first tunnel."
Inst16Quest14_Prequest = "None"
Inst16Quest14_Folgequest = "None"
-- No Rewards for this quest

--Quest 15 Alliance
Inst16Quest15 = "15. The Platinum Discs"
Inst16Quest15_Aim = "Speak with stone watcher and learn what ancient lore it keeps. Once you have learned what lore it has to offer, activate the Discs of Norgannon. -> Take the miniature version of the Discs of Norgannon to the Explorers' League in Ironforge."
Inst16Quest15_Location = "The Discs of Norgannon (Uldaman; "..YELLOW.."[11]"..WHITE..")"
Inst16Quest15_Note = "After you receive the quest, speak to the stone watcher to the left of the discs.  Then use the platinum discs again to recieve miniature discs, which you'll have to take to High Explorer Magellas at (Ironforge - Hall of Explorers; "..YELLOW.."69.8, 18.4"..WHITE..").  The followup starts another NPC who is nearby."
Inst16Quest15_Prequest = "None"
Inst16Quest15_Folgequest = "Portents of Uldum"
--
Inst16Quest15name1 = "Thawpelt Sack"
Inst16Quest15name2 = "Superior Healing Potion"
Inst16Quest15name3 = "Greater Mana Potion"

--Quest 16 Alliance
Inst16Quest16 = "16. Power in Uldaman"
Inst16Quest16_Aim = "Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh."
Inst16Quest16_Location = "Tabetha (Dustwallow Marsh; "..YELLOW.."46.0, 57.0"..WHITE..")"
Inst16Quest16_Note = "Mage quest.  The Obsidian Power Source drops from the Obsidian Sentinel at "..YELLOW.."[5]"..WHITE.."."
Inst16Quest16_Prequest = "The Exorcism"
Inst16Quest16_Folgequest = "Mana Surges"
-- No Rewards for this quest

--Quest 17 Alliance
Inst16Quest17 = "17. Indurium Ore"
Inst16Quest17_Aim = "Bring 4 Indurium Ore to Pozzik in Thousand Needles."
Inst16Quest17_Location = "Pozzik (Thousand Needles - Mirage Raceway; "..YELLOW.."80.0, 75.8"..WHITE..")"
Inst16Quest17_Note = "This is a repeatable quest after the prequests are complete.  It gives no reputation or experience, just a small amount of money.  Indurium Ore can be mined inside Uldaman or purchased from other players."
Inst16Quest17_Prequest = "Keeping Pace -> Rizzle's Schematics"
Inst16Quest17_Folgequest = "None"
-- No Rewards for this quest



--Quest 1 Horde  (same as Quest 4 Alliance)
Inst16Quest1_HORDE = "1. Power Stones"
Inst16Quest1_HORDE_Aim = Inst16Quest4_Aim
Inst16Quest1_HORDE_Location = Inst16Quest4_Location
Inst16Quest1_HORDE_Note = Inst16Quest4_Note
Inst16Quest1_HORDE_Prequest = Inst16Quest4_Prequest
Inst16Quest1_HORDE_Folgequest = Inst16Quest4_Folgequest
--
Inst16Quest1name1_HORDE = Inst16Quest4name1
Inst16Quest1name2_HORDE = Inst16Quest4name2
Inst16Quest1name3_HORDE = Inst16Quest4name3

--Quest 2 Horde  (same as Quest 6 Alliance - different followup)
Inst16Quest2_HORDE = "2. Solution to Doom"
Inst16Quest2_HORDE_Aim = Inst16Quest6_Aim
Inst16Quest2_HORDE_Location = Inst16Quest6_Location
Inst16Quest2_HORDE_Note = Inst16Quest6_Note
Inst16Quest2_HORDE_Prequest = Inst16Quest6_Prequest
Inst16Quest2_HORDE_Folgequest = "To the Undercity for Yagyin's Digest"
--
Inst16Quest2name1_HORDE = Inst16Quest6name1

--Quest 3 Horde
Inst16Quest3_HORDE = "3. Necklace Recovery"
Inst16Quest3_HORDE_Aim = "Look for a valuable necklace within the Uldaman dig site and bring it back to Dran Droffers in Orgrimmar. The necklace may be damaged."
Inst16Quest3_HORDE_Location = "Dran Droffers (Orgrimmar - The Drag; "..YELLOW.."59.4, 36.8"..WHITE..")"
Inst16Quest3_HORDE_Note = "The necklace is a random drop in the dungeon."
Inst16Quest3_HORDE_Prequest = "None"
Inst16Quest3_HORDE_Folgequest = "Necklace Recovery, Take 2"
-- No Rewards for this quest

--Quest 4 Horde
Inst16Quest4_HORDE = "4. Necklace Recovery, Take 2"
Inst16Quest4_HORDE_Aim = "Find a clue as to the gems' whereabouts in the depths of Uldaman."
Inst16Quest4_HORDE_Location = "Dran Droffers (Orgrimmar - The Drag; "..YELLOW.."59.4, 36.8"..WHITE..")"
Inst16Quest4_HORDE_Note = "The Paladin is at "..YELLOW.."[2]"..WHITE.."."
Inst16Quest4_HORDE_Prequest = "Necklace Recovery"
Inst16Quest4_HORDE_Folgequest = "Translating the Journal"
-- No Rewards for this quest

--Quest 5 Horde
Inst16Quest5_HORDE = "5. Translating the Journal"
Inst16Quest5_HORDE_Aim = "Find someone who can translate the paladin's journal. The closest location that might have someone is Kargath, in the Badlands."
Inst16Quest5_HORDE_Location = "Remains of a Paladin (Uldaman; "..YELLOW.."[2]"..WHITE..")"
Inst16Quest5_HORDE_Note = "The translator Jarkal Mossmeld is at (Badlands - Kargath; "..YELLOW.."2.6, 46.0"..WHITE..")."
Inst16Quest5_HORDE_Prequest = "Necklace Recovery, Take 2"
Inst16Quest5_HORDE_Folgequest = "Find the Gems and Power Source"
-- No Rewards for this quest

--Quest 6 Horde
Inst16Quest6_HORDE = "6. Find the Gems and Power Source"
Inst16Quest6_HORDE_Aim = "Recover all three gems and a power source for the necklace from Uldaman, and then bring them to Jarkal Mossmeld in Kargath. Jarkal believes a power source might be found on the strongest construct present in Uldaman."
Inst16Quest6_HORDE_Location = "Jarkal Mossmeld (Badlands - Kargath; "..YELLOW.."2.6, 46.0"..WHITE..")"
Inst16Quest6_HORDE_Note = "The gems are at "..YELLOW.."[1]"..WHITE.." in a Conspicous Urn, "..YELLOW.."[8]"..WHITE.." from the Shadowforge Cache, and "..YELLOW.."[9]"..WHITE.." off Grimlok.  Note that when openning the Shadowforge Cache, a few mobs will spawn an aggro you.  The Shattered Necklace Power Source drops from Archaedas "..YELLOW.."[10]"..WHITE.."."
Inst16Quest6_HORDE_Prequest = "Translating the Journal"
Inst16Quest6_HORDE_Folgequest = "Deliver the Gems"
--
Inst16Quest6name1_HORDE = "Jarkal's Enhancing Necklace"

--Quest 7 Horde
Inst16Quest7_HORDE = "7. Uldaman Reagent Run"
Inst16Quest7_HORDE_Aim = "Bring 12 Magenta Fungus Caps to Jarkal Mossmeld in Kargath."
Inst16Quest7_HORDE_Location = "Jarkal Mossmeld (Badlands - Kargath; "..YELLOW.."2.6, 46.0"..WHITE..")"
Inst16Quest7_HORDE_Note = "You get the Prequest from Jarkal Mossmeld.\nThe caps are scattered throughout the dungeon.  Herbalists can see them on their minimap if Track Herbs is on and they have the quest.  The prequest is obtained from the same NPC."
Inst16Quest7_HORDE_Prequest = "Badlands Reagent Run"
Inst16Quest7_HORDE_Folgequest = "Badlands Reagent Run II"
--
Inst16Quest7name1_HORDE = "Restorative Potion"

--Quest 8 Horde
Inst16Quest8_HORDE = "8. Reclaimed Treasures"
Inst16Quest8_HORDE_Aim = "Get Patrick Garrett's family treasure from their family chest in the South Common Hall of Uldaman, and bring it to him in the Undercity."
Inst16Quest8_HORDE_Location = "Patrick Garrett (Undercity; "..YELLOW.."62.6, 48.4"..WHITE..")"
Inst16Quest8_HORDE_Note = "You find the treasure before you enter the dungeon. It is at the end of the south tunnel. On the entrance map, it's at "..YELLOW.."[5]"..WHITE.."."
Inst16Quest8_HORDE_Prequest = "None"
Inst16Quest8_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 9 Horde
Inst16Quest9_HORDE = "9. The Platinum Discs"
Inst16Quest9_HORDE_Aim = "Speak with stone watcher and learn what ancient lore it keeps. Once you have learned what lore it has to offer, activate the Discs of Norgannon. -> Take the miniature version of the Discs of Norgannon to the one of the sages in Thunder Bluff."
Inst16Quest9_HORDE_Location = "The Discs of Norgannon (Uldaman; "..YELLOW.."[11]"..WHITE..")"
Inst16Quest9_HORDE_Note = "After you receive the quest, speak to the stone watcher to the left of the discs.  Then use the platinum discs again to recieve miniature discs, which you'll have to take to Sage Truthseeker in Thunder Bluff ("..YELLOW.."34.8, 47.8"..WHITE..").  The followup starts another NPC who is nearby."
Inst16Quest9_HORDE_Prequest = "None"
Inst16Quest9_HORDE_Folgequest = "Portents of Uldum"
--
Inst16Quest9name1_HORDE = "Thawpelt Sack"
Inst16Quest9name2_HORDE = "Superior Healing Potion"
Inst16Quest9name3_HORDE = "Greater Mana Potion"

--Quest 10 Horde  (same as Quest 4 Alliance)
Inst16Quest10_HORDE = "10. Power in Uldaman"
Inst16Quest10_HORDE_Aim = Inst16Quest16_Aim
Inst16Quest10_HORDE_Location = Inst16Quest16_Location
Inst16Quest10_HORDE_Note = Inst16Quest16_Note
Inst16Quest10_HORDE_Prequest = Inst16Quest16_Prequest
Inst16Quest10_HORDE_Folgequest = Inst16Quest16_Folgequest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 17 Alliance)
Inst16Quest11_HORDE = "11. Indurium Ore"
Inst16Quest11_HORDE_Aim = Inst16Quest17_Aim
Inst16Quest11_HORDE_Location = Inst16Quest17_Location
Inst16Quest11_HORDE_Note = Inst16Quest17_Note
Inst16Quest11_HORDE_Prequest = Inst16Quest17_Prequest
Inst16Quest11_HORDE_Folgequest = Inst16Quest17_Folgequest
-- No Rewards for this quest



--------------- INST17 - Blackfathom Deeps ---------------

Inst17Caption = "Blackfathom Deeps"
Inst17QAA = "6 Quests"
Inst17QAH = "5 Quests"

--Quest 1 Alliance
Inst17Quest1 = "1. Knowledge in the Deeps"
Inst17Quest1_Aim = "Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge."
Inst17Quest1_Location = "Gerrig Bonegrip (Ironforge - The Forlorn Cavern; "..YELLOW.."50.4, 6.0"..WHITE..")"
Inst17Quest1_Note = "You find the Manuscript at "..YELLOW.."[2]"..WHITE.." in the water."
Inst17Quest1_Prequest = "None"
Inst17Quest1_Folgequest = "None"
--
Inst17Quest1name1 = "Sustaining Ring"

--Quest 2 Alliance
Inst17Quest2 = "2. Researching the Corruption"
Inst17Quest2_Aim = "Gershala Nightwhisper in Auberdine wants 8 Corrupt Brain stems."
Inst17Quest2_Location = "Gershala Nightwhisper (Darkshore - Auberdine; "..YELLOW.."38.4, 43.0"..WHITE..")"
Inst17Quest2_Note = "The prequest is optional.  You get it from Argos Nightwhisper at (Stormwind City - The Park; "..YELLOW.."21.4, 55.6"..WHITE..").  Nagas inside the dungeon and just outside the portal can drop the Corrupt Brain stems."
Inst17Quest2_Prequest = "The Corruption Abroad"
Inst17Quest2_Folgequest = "None"
--
Inst17Quest2name1 = "Beetle Clasps"
Inst17Quest2name2 = "Prelacy Cape"

--Quest 3 Alliance
Inst17Quest3 = "3. In Search of Thaelrid"
Inst17Quest3_Aim = "Seek out Argent Guard Thaelrid in Blackfathom Deeps."
Inst17Quest3_Location = "Dawnwatcher Shaedlass (Darnassus - Craftsmen's Terrace; "..YELLOW.."55.4, 24.6"..WHITE..")"
Inst17Quest3_Note = "You find Argent Guard Thaelrid at "..YELLOW.."[4]"..WHITE.."."
Inst17Quest3_Prequest = "None"
Inst17Quest3_Folgequest = "Blackfathom Villainy"
-- No Rewards for this quest

--Quest 4 Alliance
Inst17Quest4 = "4. Blackfathom Villainy"
Inst17Quest4_Aim = "Bring the head of Twilight Lord Kelris to Dawnwatcher Selgorm in Darnassus."
Inst17Quest4_Location = "Argent Guard Thaelrid (Blackfathom Deeps; "..YELLOW.."[4]"..WHITE..")"
Inst17Quest4_Note = "Twilight Lord Kelris is at "..YELLOW.."[8]"..WHITE..".  You find Dawnwatcher Selgorm in (Darnassus - Craftsmen's Terrace; "..YELLOW.."55.8, 24.2"..WHITE..")."
Inst17Quest4_Prequest = "In Search of Thaelrid"
Inst17Quest4_Folgequest = "None"
--
Inst17Quest4name1 = "Gravestone Scepter"
Inst17Quest4name2 = "Arctic Buckler"

--Quest 5 Alliance
Inst17Quest5 = "5. Twilight Falls"
Inst17Quest5_Aim = "Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus."
Inst17Quest5_Location = "Argent Guard Manados (Darnassus - Craftsmen's Terrace; "..YELLOW.."55.2, 23.6"..WHITE..")"
Inst17Quest5_Note = "All Twilight mobs throughout the dungeon can drop the Twilight Pendants."
Inst17Quest5_Prequest = "None"
Inst17Quest5_Folgequest = "None"
--
Inst17Quest5name1 = "Nimbus Boots"
Inst17Quest5name2 = "Heartwood Girdle"

--Quest 6 Alliance   (using data from Shadowfang Keep Alliance Quest 2 since its the same quest.)
Inst17Quest6 = "6. The Orb of Soran'ruk"
Inst17Quest6_Aim = Inst12Quest2_Aim
Inst17Quest6_Location = Inst12Quest2_Location
Inst17Quest6_Note = Inst12Quest2_Note
Inst17Quest6_Prequest = Inst12Quest2_Prequest
Inst17Quest6_Folgequest = Inst12Quest2_Folgequest
--
Inst17Quest6name1 = Inst12Quest2name1
Inst17Quest6name2 = Inst12Quest2name2


--Quest 1 Horde
Inst17Quest1_HORDE = "1. The Essence of Aku'Mai"
Inst17Quest1_HORDE_Aim = "Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale."
Inst17Quest1_HORDE_Location = "Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11.6, 34.2"..WHITE..")"
Inst17Quest1_HORDE_Note = "You get the prequest Trouble in the Deeps from Tsunaman (Stonetalon Mountains - Sun Rock Retreat; "..YELLOW.."47.2, 64.2"..WHITE..").  The crystals can be found in the tunnels before the dungeon."
Inst17Quest1_HORDE_Prequest = "Trouble in the Deeps"
Inst17Quest1_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Horde
Inst17Quest2_HORDE = "2. Allegiance to the Old Gods"
Inst17Quest2_HORDE_Aim = "Bring the Damp Note to Je'neu Sancrea in Ashenvale -> Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale."
Inst17Quest2_HORDE_Location = "Damp Note (drop - see note)"
Inst17Quest2_HORDE_Note = "You get the Damp Note from Blackfathom Tide Priestesses.  Then take it to Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11.6, 34.2"..WHITE..").  Lorgus Jett is at "..YELLOW.."[6]"..WHITE..".  The rewards listed are for the followup quest."
Inst17Quest2_HORDE_Prequest = "None"
Inst17Quest2_HORDE_Folgequest = "Allegiance to the Old Gods"
--
Inst17Quest2name1_HORDE = "Band of the Fist"
Inst17Quest2name2_HORDE = "Chestnut Mantle"

--Quest 3 Horde
Inst17Quest3_HORDE = "3. Amongst the Ruins"
Inst17Quest3_HORDE_Aim = "Bring the Fathom Core to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale."
Inst17Quest3_HORDE_Location = "Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11.6, 34.2"..WHITE..")"
Inst17Quest3_HORDE_Note = "You find the Fathom Core at "..YELLOW.."[7]"..WHITE.." in the water.  When you get the core Baron Aquanis appears and attacks you.  He drops a quest item which you have to take back to Je'neu Sancrea."
Inst17Quest3_HORDE_Prequest = "None"
Inst17Quest3_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Horde
Inst17Quest4_HORDE = "4. Blackfathom Villainy"
Inst17Quest4_HORDE_Aim = "Bring the head of Twilight Lord Kelris to Bashana Runetotem in Thunder Bluff."
Inst17Quest4_HORDE_Location = "Argent Guard Thaelrid (Blackfathom Deeps; "..YELLOW.."[4]"..WHITE..")"
Inst17Quest4_HORDE_Note = "Twilight Lord Kelris is at "..YELLOW.."[8]"..WHITE..". You find Bashana Runetotem at (Thunderbluff - The Elder Rise; "..YELLOW.."70.8, 33.8"..WHITE..")."
Inst17Quest4_HORDE_Prequest = "None"
Inst17Quest4_HORDE_Folgequest = "None"
--
Inst17Quest4name1_HORDE = "Gravestone Scepter"
Inst17Quest4name2_HORDE = "Arctic Buckler"

--Quest 5 Horde  (same as Quest 6 Alliance)
Inst17Quest5_HORDE = "5. The Orb of Soran'ruk"
Inst17Quest5_HORDE_Aim = Inst17Quest6_Aim
Inst17Quest5_HORDE_Location = Inst17Quest6_Location
Inst17Quest5_HORDE_Note = Inst17Quest6_Note
Inst17Quest5_HORDE_Prequest = Inst17Quest6_Prequest
Inst17Quest5_HORDE_Folgequest = Inst17Quest6_Folgequest
--
Inst17Quest5name1_HORDE = Inst17Quest6name1
Inst17Quest5name2_HORDE = Inst17Quest6name2



--------------- INST18 - Dire Maul East ---------------

Inst18Caption = "Dire Maul (East)"
Inst18QAA = "6 Quests"
Inst18QAH = "6 Quests"

--Quest 1 Alliance
Inst18Quest1 = "1. Pusillin and the Elder Azj'Tordin"
Inst18Quest1_Aim = "Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary. Return to Azj'Tordin at the Lariss Pavilion in Feralas should you recover the Book of Incantations."
Inst18Quest1_Location = "Azj'Tordin (Feralas - Lariss Pavillion; "..YELLOW.."76.8, 37.4"..WHITE..")"
Inst18Quest1_Note = "Pusillin is at "..YELLOW.."[1]"..WHITE..".  He runs when you talk to him, but stops and fights at "..YELLOW.."[2]"..WHITE..".  He'll drop the Crescent Key which is used for Dire Maul North and West."
Inst18Quest1_Prequest = "None"
Inst18Quest1_Folgequest = "None"
--
Inst18Quest1name1 = "Spry Boots"
Inst18Quest1name2 = "Sprinter's Sword"

--Quest 2 Alliance
Inst18Quest2 = "2. Lethtendris's Web"
Inst18Quest2_Aim = "Bring Lethtendris' Web to Latronicus Moonspear at the Feathermoon Stronghold in Feralas."
Inst18Quest2_Location = "Latronicus Moonspear (Feralas - Feathermoon Stronghold; "..YELLOW.."30.4, 46.0"..WHITE..")"
Inst18Quest2_Note = "Lethtendris is at "..YELLOW.."[3]"..WHITE..".  The prequest comes from Courier Hammerfall in Ironforge.  He roams the entire city."
Inst18Quest2_Prequest = "Feathermoon Stronghold"
Inst18Quest2_Folgequest = "None"
--
Inst18Quest2name1 = "Lorespinner"

--Quest 3 Alliance
Inst18Quest3 = "3. Shards of the Felvine"
Inst18Quest3_Aim = "Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade."
Inst18Quest3_Location = "Rabine Saturna (Moonglade - Nighthaven; "..YELLOW.."51.6, 44.8"..WHITE..")"
Inst18Quest3_Note = "You find Alliz the Wildshaper at "..YELLOW.."[5]"..WHITE..".  The prequest comes from Rabine Saturna as well and sends you to recover the Reliquary of Purity from (Silithus; "..YELLOW.."63.2, 55.2"..WHITE..")."
Inst18Quest3_Prequest = "A Reliquary of Purity"
Inst18Quest3_Folgequest = "None"
--
Inst18Quest3name1 = "Milli's Shield"
Inst18Quest3name2 = "Milli's Lexicon"

--Quest 4 Alliance
Inst18Quest4 = "4. The Left Piece of Lord Valthalak's Amulet"
Inst18Quest4_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst18Quest4_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst18Quest4_Note = "Dungeon Set questline.  The Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nIsalien is summoned at "..YELLOW.."[5]"..WHITE.."."
Inst18Quest4_Prequest = "Components of Importance"
Inst18Quest4_Folgequest = "I See Alcaz Island In Your Future..."
-- No Rewards for this quest

--Quest 5 Alliance
Inst18Quest5 = "5. The Right Piece of Lord Valthalak's Amulet"
Inst18Quest5_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst18Quest5_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst18Quest5_Note = "Dungeon Set questline.  The Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nIsalien is summoned at "..YELLOW.."[5]"..WHITE.."."
Inst18Quest5_Prequest = "More Components of Importance"
Inst18Quest5_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
-- No Rewards for this quest

--Quest 6 Alliance
Inst18Quest6 = "6. The Prison's Bindings"
Inst18Quest6_Aim = "Travel to Dire Maul in Feralas and recover 15 Satyr Blood from the Wildspawn Satyr that inhabit the Warpwood Quarter. Return to Daio in the Tainted Scar when this is done."
Inst18Quest6_Location = "Daio the Decrepit (Blasted Lands - The Tainted Scar; "..YELLOW.."34.2, 50.0"..WHITE..")"
Inst18Quest6_Note = "This along with another quest given by Daio the Decrepit are Warlock only quests for the Ritual of Doom spell.  If you have the Crescent Key, provided by the quest 'Pusillin and the Elder Azj'Tordin', then you can enter Dire Maul East through  back door at the Lariss Pavilion (Feralas; "..YELLOW.."77, 37"..WHITE..")."
Inst18Quest6_Prequest = "None"
Inst18Quest6_Folgequest = "None"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst18Quest1_HORDE = Inst18Quest1
Inst18Quest1_HORDE_Aim = Inst18Quest1_Aim
Inst18Quest1_HORDE_Location = Inst18Quest1_Location
Inst18Quest1_HORDE_Note = Inst18Quest1_Note
Inst18Quest1_HORDE_Prequest = Inst18Quest1_Prequest
Inst18Quest1_HORDE_Folgequest = Inst18Quest1_Folgequest
--
Inst18Quest1name1_HORDE = Inst18Quest1name1
Inst18Quest1name2_HORDE = Inst18Quest1name2

--Quest 2 Horde
Inst18Quest2_HORDE = "2. Lethtendris's Web"
Inst18Quest2_HORDE_Aim = "Bring Lethtendris's Web to Talo Thornhoof at Camp Mojache in Feralas."
Inst18Quest2_HORDE_Location = "Talo Thornhoof (Feralas - Camp Mojache; "..YELLOW.."76.0, 43.8"..WHITE..")"
Inst18Quest2_HORDE_Note = "Lethtendris is in Dire Maul "..YELLOW.."East"..WHITE.." at "..YELLOW.."[3]"..WHITE..".  The prequest comes from Warcaller Gorlach in Orgrimmar.  He roams the entire city."
Inst18Quest2_HORDE_Prequest = "Camp Mojache"
Inst18Quest2_HORDE_Folgequest = "None"
--
Inst18Quest2name1_HORDE = "Lorespinner"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst18Quest3_HORDE = Inst18Quest3
Inst18Quest3_HORDE_Aim = Inst18Quest3_Aim
Inst18Quest3_HORDE_Location = Inst18Quest3_Location
Inst18Quest3_HORDE_Note = Inst18Quest3_Note
Inst18Quest3_HORDE_Prequest = Inst18Quest3_Prequest
Inst18Quest3_HORDE_Folgequest = Inst18Quest3_Folgequest
--
Inst18Quest3name1_HORDE = Inst18Quest3name1
Inst18Quest3name2_HORDE = Inst18Quest3name2

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst18Quest4_HORDE = Inst18Quest4
Inst18Quest4_HORDE_Aim = Inst18Quest4_Aim
Inst18Quest4_HORDE_Location = Inst18Quest4_Location
Inst18Quest4_HORDE_Note = Inst18Quest4_Note
Inst18Quest4_HORDE_Prequest = Inst18Quest4_Prequest
Inst18Quest4_HORDE_Folgequest = Inst18Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst18Quest5_HORDE = Inst18Quest5
Inst18Quest5_HORDE_Aim = Inst18Quest5_Aim
Inst18Quest5_HORDE_Location = Inst18Quest5_Location
Inst18Quest5_HORDE_Note = Inst18Quest5_Note
Inst18Quest5_HORDE_Prequest = Inst18Quest5_Prequest
Inst18Quest5_HORDE_Folgequest = Inst18Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst18Quest6_HORDE = Inst18Quest6
Inst18Quest6_HORDE_Aim = Inst18Quest6_Aim
Inst18Quest6_HORDE_Location = Inst18Quest6_Location
Inst18Quest6_HORDE_Note = Inst18Quest6_Note
Inst18Quest6_HORDE_Prequest = Inst18Quest6_Prequest
Inst18Quest6_HORDE_Folgequest = Inst18Quest6_Folgequest
-- No Rewards for this quest



--------------- INST19 - Dire Maul North ---------------

Inst19Caption = "Dire Maul (North)"
Inst19QAA = "5 Quests"
Inst19QAH = "5 Quests"

--Quest 1 Alliance
Inst19Quest1 = "1. A Broken Trap"
Inst19Quest1_Aim = "Repair the trap."
Inst19Quest1_Location = "A Broken Trap (Dire Maul; "..YELLOW.."North"..WHITE..")"
Inst19Quest1_Note = "Repeatable quest. To repair the trap you have to use a [Thorium Widget] and a [Frost Oil]."
Inst19Quest1_Prequest = "None"
Inst19Quest1_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Alliance
Inst19Quest2 = "2. The Gordok Ogre Suit"
Inst19Quest2_Aim = "Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul."
Inst19Quest2_Location = "Knot Thimblejack (Dire Maul; "..YELLOW.."North, [4]"..WHITE..")"
Inst19Quest2_Note = "Repeatable quest.  You get the Ogre Tannin near "..YELLOW.."[4] (above)"..WHITE..".  The Bolts of Runecloth come from a Tailor, the Rugged Leather from a Leatherworker and the Rune Threads from a Tailoring Vendor."
Inst19Quest2_Prequest = "None"
Inst19Quest2_Folgequest = "None"
--
Inst19Quest2name1 = "Gordok Ogre Suit"

--Quest 3 Alliance
Inst19Quest3 = "3. Free Knot!"
Inst19Quest3_Aim = "Collect a Gordok Shackle Key for Knot Thimblejack."
Inst19Quest3_Location = "Knot Thimblejack (Dire Maul; "..YELLOW.."North, [4]"..WHITE..")"
Inst19Quest3_Note = "Repeatable quest.  Every warden can drop the key."
Inst19Quest3_Prequest = "None"
Inst19Quest3_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Alliance
Inst19Quest4 = "4. Unfinished Gordok Business"
Inst19Quest4_Aim = "Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.\nAccording to Kromcrush, the 'old timey story' says that Tortheldrin - a 'creepy' elf who called himself a prince - stole it from one of the Gordok kings."
Inst19Quest4_Location = "Captain Kromcrush (Dire Maul; "..YELLOW.."North, [5]"..WHITE..")"
Inst19Quest4_Note = "Tortheldrin is in Dire Maul "..YELLOW.."West"..WHITE.." at "..YELLOW.."[7]"..WHITE..".  The Gauntlet is near him in a chest.  You can only get this quest after a Tribute run and have the 'It's Good to be King!' buff."
Inst19Quest4_Prequest = "None"
Inst19Quest4_Folgequest = "None"
--
Inst19Quest4name1 = "Gordok's Handwraps"
Inst19Quest4name2 = "Gordok's Gloves"
Inst19Quest4name3 = "Gordok's Gauntlets"
Inst19Quest4name4 = "Gordok's Handguards"

--Quest 5 Alliance
Inst19Quest5 = "5. The Gordok Taste Test"
Inst19Quest5_Aim = "Free Booze."
Inst19Quest5_Location = "Stomper Kreeg (Dire Maul; "..YELLOW.."North, [2]"..WHITE..")"
Inst19Quest5_Note = "Just talk to the NPC to accept and complete the quest at the same time."
Inst19Quest5_Prequest = "No"
Inst19Quest5_Folgequest = "No"
--
Inst19Quest5name1 = "Gordok Green Grog"
Inst19Quest5name2 = "Kreeg's Stout Beatdown"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst19Quest1_HORDE = Inst19Quest1
Inst19Quest1_HORDE_Aim = Inst19Quest1_Aim
Inst19Quest1_HORDE_Location = Inst19Quest1_Location
Inst19Quest1_HORDE_Note = Inst19Quest1_Note
Inst19Quest1_HORDE_Prequest = Inst19Quest1_Prequest
Inst19Quest1_HORDE_Folgequest = Inst19Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst19Quest2_HORDE = Inst19Quest2
Inst19Quest2_HORDE_Aim = Inst19Quest2_Aim
Inst19Quest2_HORDE_Location = Inst19Quest2_Location
Inst19Quest2_HORDE_Note = Inst19Quest2_Note
Inst19Quest2_HORDE_Prequest = Inst19Quest2_Prequest
Inst19Quest2_HORDE_Folgequest = Inst19Quest2_Folgequest
--
Inst19Quest2name1_HORDE = Inst19Quest2name1

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst19Quest3_HORDE = Inst19Quest3
Inst19Quest3_HORDE_Aim = Inst19Quest3_Aim
Inst19Quest3_HORDE_Location = Inst19Quest3_Location
Inst19Quest3_HORDE_Note = Inst19Quest3_Note
Inst19Quest3_HORDE_Prequest = Inst19Quest3_Prequest
Inst19Quest3_HORDE_Folgequest = Inst19Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst19Quest4_HORDE = Inst19Quest4
Inst19Quest4_HORDE_Aim = Inst19Quest4_Aim
Inst19Quest4_HORDE_Location = Inst19Quest4_Location
Inst19Quest4_HORDE_Note = Inst19Quest4_Note
Inst19Quest4_HORDE_Prequest = Inst19Quest4_Prequest
Inst19Quest4_HORDE_Folgequest = Inst19Quest4_Folgequest
--
Inst19Quest4name1_HORDE = Inst19Quest4name1
Inst19Quest4name2_HORDE = Inst19Quest4name2
Inst19Quest4name3_HORDE = Inst19Quest4name3
Inst19Quest4name4_HORDE = Inst19Quest4name4

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst19Quest5_HORDE = Inst19Quest5
Inst19Quest5_HORDE_Aim = Inst19Quest5_Aim
Inst19Quest5_HORDE_Location = Inst19Quest5_Location
Inst19Quest5_HORDE_Note = Inst19Quest5_Note
Inst19Quest5_HORDE_Prequest = Inst19Quest5_Prequest
Inst19Quest5_HORDE_Folgequest = Inst19Quest5_Folgequest
--
Inst19Quest5name1_HORDE = Inst19Quest5name1
Inst19Quest5name2_HORDE = Inst19Quest5name2



--------------- INST20 - Dire Maul West ---------------

Inst20Caption = "Dire Maul (West)"
Inst20QAA = "16 Quests"
Inst20QAH = "16 Quests"

--Quest 1 Alliance
Inst20Quest1 = "1. Elven Legends"
Inst20Quest1_Aim = "Search Dire Maul for Kariel Winthalus. Report back to Scholar Runethorn at Feathermoon with whatever information that you may find."
Inst20Quest1_Location = "Scholar Runethorn (Feralas - Feathermoon Stronghold; "..YELLOW.."31.2, 43.4"..WHITE..")"
Inst20Quest1_Note = "You find Kariel Winthalus in the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest1_Prequest = "None"
Inst20Quest1_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Alliance
Inst20Quest2 = "2. The Madness Within"
Inst20Quest2_Aim = "You must destroy the guardians surrounding the 5 Pylons that power the Prison of Immol'thar. Once the Pylons have powered down, the force field surrounding Immol'thar will have dissipated.\nEnter the Prison of Immol'thar and eradicate the foul demon that stands at its heart. Finally, confront Prince Tortheldrin in Athenaeum."
Inst20Quest2_Location = "Shen'dralar Ancient (Dire Maul; "..YELLOW.."West, [1] (above)"..WHITE..")"
Inst20Quest2_Note = "The Pylons are marked as "..BLUE.."[B]"..WHITE..". Immol'thar is at "..YELLOW.."[6]"..WHITE..", Prince Tortheldrin at "..YELLOW.."[7]"..WHITE.."."
Inst20Quest2_Prequest = "None"
Inst20Quest2_Folgequest = "The Treasure of the Shen'dralar"
-- No Rewards for this quest

--Quest 3 Alliance
Inst20Quest3 = "3. The Treasure of the Shen'dralar"
Inst20Quest3_Aim = "Return to the Athenaeum and find the Treasure of the Shen'dralar. Claim your reward!"
Inst20Quest3_Location = "Shen'dralar Ancient (Dire Maul; "..YELLOW.."West, [1]"..WHITE..")"
Inst20Quest3_Note = "You can find the Treasure under the stairs near "..YELLOW.."[7]"..WHITE.."."
Inst20Quest3_Prequest = "The Madness Within"
Inst20Quest3_Folgequest = "None"
--
Inst20Quest3name1 = "Sedge Boots"
Inst20Quest3name2 = "Backwood Helm"
Inst20Quest3name3 = "Bonecrusher"

--Quest 4 Alliance
Inst20Quest4 = "4. Dreadsteed of Xoroth"
Inst20Quest4_Aim = "Read Mor'zul's Instructions. Summon a Xorothian Dreadsteed, defeat it, then bind its spirit to you."
Inst20Quest4_Location = "Mor'zul Bloodbringer (Burning Steppes; "..YELLOW.."12,31"..WHITE..")"
Inst20Quest4_Note = "Warlock quest.  Final Quest in the Warlock Epic mount questline.  First you must shut down all Pylons marked with "..BLUE.."[B]"..WHITE.." and then kill Immol'thar at "..YELLOW.."[6]"..WHITE..".  After that, you can begin the Summoning Ritual.  Be sure to have around 20 Soul Shards ready and have one Warlock specifically assigned to keeping the Bell, Candle and Wheel up.  The Doomguards that come can be enslaved.  After completion, talk to the Dreadsteed ghost to complete the quest."
Inst20Quest4_Prequest = "Imp Delivery ("..YELLOW.."Scholomance"..WHITE..")"
Inst20Quest4_Folgequest = "None"
-- No Rewards for this quest

--Quest 5 Alliance
Inst20Quest5 = "5. The Emerald Dream..."
Inst20Quest5_Aim = "Return the book to its rightful owners."
Inst20Quest5_Location = "The Emerald Dream (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest5_Note = "Druid quest.  You turn the book in to Lorekeeper Javon at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest5_Prequest = "None"
Inst20Quest5_Folgequest = "None"
--
Inst20Quest5name1 = "Royal Seal of Eldre'Thalas"

--Quest 6 Alliance
Inst20Quest6 = "6. The Greatest Race of Hunters"
Inst20Quest6_Aim = "Return the book to its rightful owners."
Inst20Quest6_Location = "The Greatest Race of Hunters (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest6_Note = "Hunter quest.  You turn the book in to Lorekeeper Mykos at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest6_Prequest = "None"
Inst20Quest6_Folgequest = "None"
--
Inst20Quest6name1 = "Royal Seal of Eldre'Thalas"

--Quest 7 Alliance
Inst20Quest7 = "7. The Arcanist's Cookbook"
Inst20Quest7_Aim = "Return the book to its rightful owners."
Inst20Quest7_Location = "The Arcanist's Cookbook (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest7_Note = "Mage quest.  You turn the book in to Lorekeeper Kildrath at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest7_Prequest = "None"
Inst20Quest7_Folgequest = "None"
--
Inst20Quest7name1 = "Royal Seal of Eldre'Thalas"

--Quest 8 Alliance
Inst20Quest8 = "8. The Light and How To Swing It"
Inst20Quest8_Aim = "Return the book to its rightful owners."
Inst20Quest8_Location = "The Light and How To Swing It (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest8_Note = "Paladin quest.  You turn the book in to Lorekeeper Mykos at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest8_Prequest = "None"
Inst20Quest8_Folgequest = "None"
--
Inst20Quest8name1 = "Royal Seal of Eldre'Thalas"

--Quest 9 Alliance
Inst20Quest9 = "9. Holy Bologna: What the Light Won't Tell You"
Inst20Quest9_Aim = "Return the book to its rightful owners."
Inst20Quest9_Location = "Holy Bologna: What the Light Won't Tell You (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest9_Note = "Priest quest.  You turn the book in to Lorekeeper Javon at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest9_Prequest = "None"
Inst20Quest9_Folgequest = "None"
--
Inst20Quest9name1 = "Royal Seal of Eldre'Thalas"

--Quest 10 Alliance
Inst20Quest10 = "10. Garona: A Study on Stealth and Treachery"
Inst20Quest10_Aim = "Return the book to its rightful owners."
Inst20Quest10_Location = "Garona: A Study on Stealth and Treachery (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest10_Note = "Rogue quest.  You turn the book in to Lorekeeper Kildrath at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest10_Prequest = "None"
Inst20Quest10_Folgequest = "None"
--
Inst20Quest10name1 = "Royal Seal of Eldre'Thalas"

--Quest 11 Alliance
Inst20Quest11 = "11. Harnessing Shadows"
Inst20Quest11_Aim = "Return the book to its rightful owners."
Inst20Quest11_Location = "Harnessing Shadows (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest11_Note = "Warlock quest.  You turn the book in to Lorekeeper Mykos at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest11_Prequest = "None"
Inst20Quest11_Folgequest = "None"
--
Inst20Quest11name1 = "Royal Seal of Eldre'Thalas"

--Quest 12 Alliance
Inst20Quest12 = "12. Codex of Defense"
Inst20Quest12_Aim = "Return the book to its rightful owners."
Inst20Quest12_Location = "Codex of Defense (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest12_Note = "Warrior quest.  You turn the book in to Lorekeeper Kildrath at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest12_Prequest = "None"
Inst20Quest12_Folgequest = "None"
--
Inst20Quest12name1 = "Royal Seal of Eldre'Thalas"

--Quest 13 Alliance
Inst20Quest13 = "13. Libram of Focus"
Inst20Quest13_Aim = "Bring a Libram of Focus, 1 Pristine Black Diamond, 4 Large Brilliant Shards, and 2 Skin of Shadow to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Focus."
Inst20Quest13_Location = "Lorekeeper Lydros (Dire Maul West; "..GREEN.."[1'] Library"..WHITE..")"
Inst20Quest13_Note = "It's not a prequest, but Elven Legends must be completed before this quest can be started.\n\nThe Libram is a random drop in Dire Maul and is tradeable, so it may be found on the Auction House.  Skin of Shadow is Soulbound and can drop off some bosses, Risen Constructs and Risen Bonewarder in "..YELLOW.."Scholomance"..WHITE.."."
Inst20Quest13_Prequest = "None"
Inst20Quest13_Folgequest = "None"
--
Inst20Quest13name1 = "Arcanum of Focus"

--Quest 14 Alliance
Inst20Quest14 = "14. Libram of Protection"
Inst20Quest14_Aim = "Bring a Libram of Protection, 1 Pristine Black Diamond, 2 Large Brilliant Shards, and 1 Frayed Abomination Stitching to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Protection."
Inst20Quest14_Location = "Lorekeeper Lydros (Dire Maul West; "..GREEN.."[1'] Library"..WHITE..")"
Inst20Quest14_Note = "It's not a prequest, but Elven Legends must be completed before this quest can be started.\n\nThe Libram is a random drop in Dire Maul and is tradeable, so it may be found on the Auction House.  Frayed Abomination Stitching is Soulbound and can drop off Ramstein the Gorger, Venom Belchers, Bile Spewer and Patchwork Horror in "..YELLOW.."Stratholme"..WHITE.."."
Inst20Quest14_Prequest = "None"
Inst20Quest14_Folgequest = "None"
--
Inst20Quest14name1 = "Arcanum of Protection"

--Quest 15 Alliance
Inst20Quest15 = "15. Libram of Rapidity"
Inst20Quest15_Aim = "Bring a Libram of Rapidity, 1 Pristine Black Diamond, 2 Large Brilliant Shards, and 2 Blood of Heroes to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Rapidity."
Inst20Quest15_Location = "Lorekeeper Lydros (Dire Maul West; "..GREEN.."[1'] Library"..WHITE..")"
Inst20Quest15_Note = "It's not a prequest, but Elven Legends must be completed before this quest can be started.\n\nThe Libram is a random drop in Dire Maul and is tradeable, so it may be found on the Auction House.  Blood of Heroes is Soulbound and can be found on the ground in random places in the Western and Eastern Plaguelands."
Inst20Quest15_Prequest = "None"
Inst20Quest15_Folgequest = "None"
--
Inst20Quest15name1 = "Arcanum of Rapidity"

--Quest 16 Alliance
Inst20Quest16 = "16. Foror's Compendium"
Inst20Quest16_Aim = "Return Foror's Compendium of Dragon Slaying to the Athenaeum."
Inst20Quest16_Location = "Foror's Compendium of Dragon Slaying (random boss drop in "..YELLOW.."Dire Maul"..WHITE..")"
Inst20Quest16_Note = "Warrior or Paladin quest.  It turns in to Lorekeeper Lydros at (Dire Maul West; "..GREEN.."[1'] Library"..WHITE..").  Turning this in allows you to start the quest for Quel'Serrar."
Inst20Quest16_Prequest = "None"
Inst20Quest16_Folgequest = "The Forging of Quel'Serrar"
-- No Rewards for this quest


--Quest 1 Horde
Inst20Quest1_HORDE = "1. Elven Legends"
Inst20Quest1_HORDE_Aim = "Search Dire Maul for Kariel Winthalus. Report back to Sage Korolusk at Camp Mojache with whatever information that you may find."
Inst20Quest1_HORDE_Location = "Sage Korolusk (Feralas - Camp Mojache; "..YELLOW.."75.0, 43.8"..WHITE..")"
Inst20Quest1_HORDE_Note = "You find Kariel Winthalus in the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest1_HORDE_Prequest = "None"
Inst20Quest1_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst20Quest2_HORDE = Inst20Quest2
Inst20Quest2_HORDE_Aim = Inst20Quest2_Aim
Inst20Quest2_HORDE_Location = Inst20Quest2_Location
Inst20Quest2_HORDE_Note = Inst20Quest2_Note
Inst20Quest2_HORDE_Prequest = Inst20Quest2_Prequest
Inst20Quest2_HORDE_Folgequest = Inst20Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst20Quest3_HORDE = Inst20Quest3
Inst20Quest3_HORDE_Aim = Inst20Quest3_Aim
Inst20Quest3_HORDE_Location = Inst20Quest3_Location
Inst20Quest3_HORDE_Note = Inst20Quest3_Note
Inst20Quest3_HORDE_Prequest = Inst20Quest3_Prequest
Inst20Quest3_HORDE_Folgequest = Inst20Quest3_Folgequest
--
Inst20Quest3name1_HORDE = Inst20Quest3name1
Inst20Quest3name2_HORDE = Inst20Quest3name2
Inst20Quest3name3_HORDE = Inst20Quest3name3

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst20Quest4_HORDE = Inst20Quest4
Inst20Quest4_HORDE_Aim = Inst20Quest4_Aim
Inst20Quest4_HORDE_Location = Inst20Quest4_Location
Inst20Quest4_HORDE_Note = Inst20Quest4_Note
Inst20Quest4_HORDE_Prequest = Inst20Quest4_Prequest
Inst20Quest4_HORDE_Folgequest = Inst20Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst20Quest5_HORDE = Inst20Quest5
Inst20Quest5_HORDE_Aim = Inst20Quest5_Aim
Inst20Quest5_HORDE_Location = Inst20Quest5_Location
Inst20Quest5_HORDE_Note = Inst20Quest5_Note
Inst20Quest5_HORDE_Prequest = Inst20Quest5_Prequest
Inst20Quest5_HORDE_Folgequest = Inst20Quest5_Folgequest
--
Inst20Quest5name1_HORDE = Inst20Quest5name1

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst20Quest6_HORDE = Inst20Quest6
Inst20Quest6_HORDE_Aim = Inst20Quest6_Aim
Inst20Quest6_HORDE_Location = Inst20Quest6_Location
Inst20Quest6_HORDE_Note = Inst20Quest6_Note
Inst20Quest6_HORDE_Prequest = Inst20Quest6_Prequest
Inst20Quest6_HORDE_Folgequest = Inst20Quest6_Folgequest
--
Inst20Quest6name1_HORDE = Inst20Quest6name1

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst20Quest7_HORDE = Inst20Quest7
Inst20Quest7_HORDE_Aim = Inst20Quest7_Aim
Inst20Quest7_HORDE_Location = Inst20Quest7_Location
Inst20Quest7_HORDE_Note = Inst20Quest7_Note
Inst20Quest7_HORDE_Prequest = Inst20Quest7_Prequest
Inst20Quest7_HORDE_Folgequest = Inst20Quest7_Folgequest
--
Inst20Quest7name1_HORDE = Inst20Quest7name1

--Quest 8 Horde
Inst20Quest8_HORDE = "8. Frost Shock and You (Shaman)"
Inst20Quest8_HORDE_Aim = "Return the book to its rightful owners."
Inst20Quest8_HORDE_Location = "Frost Shock and You (randomly drops off bosses in all Dire Maul wings)"
Inst20Quest8_HORDE_Note = "Shaman quest. You turn the book in to Lorekeeper Javon at the "..GREEN.."[1'] Library"..WHITE.."."
Inst20Quest8_HORDE_Prequest = "None"
Inst20Quest8_HORDE_Folgequest = "None"
--
Inst20Quest8name1_HORDE = "Royal Seal of Eldre'Thalas"

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst20Quest9_HORDE = Inst20Quest9
Inst20Quest9_HORDE_Aim = Inst20Quest9_Aim
Inst20Quest9_HORDE_Location = Inst20Quest9_Location
Inst20Quest9_HORDE_Note = Inst20Quest9_Note
Inst20Quest9_HORDE_Prequest = Inst20Quest9_Prequest
Inst20Quest9_HORDE_Folgequest = Inst20Quest9_Folgequest
--
Inst20Quest9name1_HORDE = Inst20Quest9name1

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst20Quest10_HORDE = Inst20Quest10
Inst20Quest10_HORDE_Aim = Inst20Quest10_Aim
Inst20Quest10_HORDE_Location = Inst20Quest10_Location
Inst20Quest10_HORDE_Note = Inst20Quest10_Note
Inst20Quest10_HORDE_Prequest = Inst20Quest10_Prequest
Inst20Quest10_HORDE_Folgequest = Inst20Quest10_Folgequest
--
Inst20Quest10name1_HORDE = Inst20Quest10name1

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst20Quest11_HORDE = Inst20Quest11
Inst20Quest11_HORDE_Aim = Inst20Quest11_Aim
Inst20Quest11_HORDE_Location = Inst20Quest11_Location
Inst20Quest11_HORDE_Note = Inst20Quest11_Note
Inst20Quest11_HORDE_Prequest = Inst20Quest11_Prequest
Inst20Quest11_HORDE_Folgequest = Inst20Quest11_Folgequest
--
Inst20Quest11name1_HORDE = Inst20Quest11name1

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst20Quest12_HORDE = Inst20Quest12
Inst20Quest12_HORDE_Aim = Inst20Quest12_Aim
Inst20Quest12_HORDE_Location = Inst20Quest12_Location
Inst20Quest12_HORDE_Note = Inst20Quest12_Note
Inst20Quest12_HORDE_Prequest = Inst20Quest12_Prequest
Inst20Quest12_HORDE_Folgequest = Inst20Quest12_Folgequest
--
Inst20Quest12name1_HORDE = Inst20Quest12name1

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst20Quest13_HORDE = Inst20Quest13
Inst20Quest13_HORDE_Aim = Inst20Quest13_Aim
Inst20Quest13_HORDE_Location = Inst20Quest13_Location
Inst20Quest13_HORDE_Note = Inst20Quest13_Note
Inst20Quest13_HORDE_Prequest = Inst20Quest13_Prequest
Inst20Quest13_HORDE_Folgequest = Inst20Quest13_Folgequest
--
Inst20Quest13name1_HORDE = Inst20Quest13name1

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst20Quest14_HORDE = Inst20Quest14
Inst20Quest14_HORDE_Aim = Inst20Quest14_Aim
Inst20Quest14_HORDE_Location = Inst20Quest14_Location
Inst20Quest14_HORDE_Note = Inst20Quest14_Note
Inst20Quest14_HORDE_Prequest = Inst20Quest14_Prequest
Inst20Quest14_HORDE_Folgequest = Inst20Quest14_Folgequest
--
Inst20Quest14name1_HORDE = Inst20Quest14name1

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst20Quest15_HORDE = Inst20Quest15
Inst20Quest15_HORDE_Aim = Inst20Quest15_Aim
Inst20Quest15_HORDE_Location = Inst20Quest15_Location
Inst20Quest15_HORDE_Note = Inst20Quest15_Note
Inst20Quest15_HORDE_Prequest = Inst20Quest15_Prequest
Inst20Quest15_HORDE_Folgequest = Inst20Quest15_Folgequest
--
Inst20Quest15name1_HORDE = Inst20Quest15name1

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst20Quest16_HORDE = Inst20Quest16
Inst20Quest16_HORDE_Aim = Inst20Quest16_Aim
Inst20Quest16_HORDE_Location = Inst20Quest16_Location
Inst20Quest16_HORDE_Note = Inst20Quest16_Note
Inst20Quest16_HORDE_Prequest = Inst20Quest16_Prequest
Inst20Quest16_HORDE_Folgequest = Inst20Quest16_Folgequest
--
Inst20Quest16name1_HORDE = Inst20Quest16name1



--------------- INST21 - Maraudon ---------------

Inst21Caption = "Maraudon"
Inst21QAA = "8 Quests"
Inst21QAH = "8 Quests"

--Quest 1 Alliance
Inst21Quest1 = "1. Shadowshard Fragments"
Inst21Quest1_Aim = "Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh."
Inst21Quest1_Location = "Archmage Tervosh (Dustwallow Marsh - Theramore Isle; "..YELLOW.."66.4, 49.2"..WHITE..")"
Inst21Quest1_Note = "You get the Shadowshard Fragments from 'Shadowshard Rumbler' or 'Shadowshard Smasher' outside the dungeon on the Purple side."
Inst21Quest1_Prequest = "None"
Inst21Quest1_Folgequest = "None"
--
Inst21Quest1name1 = "Zealous Shadowshard Pendant"
Inst21Quest1name2 = "Prodigious Shadowshard Pendant"

--Quest 2 Alliance
Inst21Quest2 = "2. Vyletongue Corruption"
Inst21Quest2_Aim = "Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.\nUse the Filled Cerulean Vial on the Vylestem Vines to force the corrupted Noxxious Scion to emerge.\nHeal 8 plants by killing these Noxxious Scion, then return to Talendria in Nijel's Point."
Inst21Quest2_Location = "Talendria (Desolace - Nijel's Point; "..YELLOW.."68.4, 8.8"..WHITE..")"
Inst21Quest2_Note = "You can fill the Vial at any pool outside the dungeon on the Orange side.  The plants are in the orange and purple areas inside the dungeon."
Inst21Quest2_Prequest = "None"
Inst21Quest2_Folgequest = "None"
--
Inst21Quest2name1 = "Woodseed Hoop"
Inst21Quest2name2 = "Sagebrush Girdle"
Inst21Quest2name3 = "Branchclaw Gauntlets"

--Quest 3 Alliance
Inst21Quest3 = "3. Twisted Evils"
Inst21Quest3_Aim = "Collect 25 Theradric Crystal Carvings for Willow in Desolace."
Inst21Quest3_Location = "Willow (Desolace; "..YELLOW.."62.2, 39.6"..WHITE..")"
Inst21Quest3_Note = "Most mobs in Maraudon drop the Carvings."
Inst21Quest3_Prequest = "None"
Inst21Quest3_Folgequest = "None"
--
Inst21Quest3name1 = "Acumen Robes"
Inst21Quest3name2 = "Sprightring Helm"
Inst21Quest3name3 = "Relentless Chain"
Inst21Quest3name4 = "Hulkstone Pauldrons"

--Quest 4 Alliance
Inst21Quest4 = "4. The Pariah's Instructions"
Inst21Quest4_Aim = "Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace."
Inst21Quest4_Location = "Centaur Pariah (Desolace;  Roams around "..YELLOW.."50.4, 86.6"..WHITE..")"
Inst21Quest4_Note = "Kill the The Nameless Prophet at ("..YELLOW.."[A] on Entrance Map"..WHITE..") and then kill the 5 Kahns.  The first is in the middle path near ("..YELLOW.."[D] on Entrance Map"..WHITE..").  The second is in the purple part of Maraudon but before you enter the dungeon ("..YELLOW.."[B] on Entrance Map"..WHITE..").  The third is in the orange part before you enter the dungeon ("..YELLOW.."[C] on Entrance Map"..WHITE..").  The fourth is near "..YELLOW.."[4]"..WHITE.." and the fifth is near  "..YELLOW.."[1]"..WHITE.."."
Inst21Quest4_Prequest = "None"
Inst21Quest4_Folgequest = "None"
--
Inst21Quest4name1 = "Mark of the Chosen"
Inst21Quest4name2 = "Amulet of Spirits"

--Quest 5 Alliance
Inst21Quest5 = "5. Legends of Maraudon"
Inst21Quest5_Aim = "Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.\nFind a way to speak with Celebras."
Inst21Quest5_Location = "Cavindra (Desolace - Maraudon; "..YELLOW.."[4] on Entrance Map"..WHITE..")"
Inst21Quest5_Note = "You find Cavindra at the beginning  of the orange part before you enter the dungeon.\nYou get the Celebrian Rod from Noxxion at "..YELLOW.."[2]"..WHITE..", the Celebrian Diamond from Lord Vyletongue at  "..YELLOW.."[5]"..WHITE..". Celebras is at "..YELLOW.."[7]"..WHITE..". You have to defeat him to be able to talk to him."
Inst21Quest5_Prequest = "None"
Inst21Quest5_Folgequest = "The Scepter of Celebras"
-- No Rewards for this quest

--Quest 6 Alliance
Inst21Quest6 = "6. The Scepter of Celebras"
Inst21Quest6_Aim = "Assist Celebras the Redeemed while he creates the Scepter of Celebras.\nSpeak with him when the ritual is complete."
Inst21Quest6_Location = "Celebras the Redeemed (Maraudon; "..YELLOW.."[7]"..WHITE..")"
Inst21Quest6_Note = "Celebras creates the Scepter. Speak with him after he is finished."
Inst21Quest6_Prequest = "Legends of Maraudon"
Inst21Quest6_Folgequest = "None"
--
Inst21Quest6name1 = "Scepter of Celebras"

--Quest 7 Alliance
Inst21Quest7 = "7. Corruption of Earth and Seed"
Inst21Quest7_Aim = "Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace."
Inst21Quest7_Location = "Keeper Marandis (Desolace - Nijel's Point; "..YELLOW.."63.8, 10.6"..WHITE..")"
Inst21Quest7_Note = "You find Princess Theradras at "..YELLOW.."[11]"..WHITE.."."
Inst21Quest7_Prequest = "None"
Inst21Quest7_Folgequest = "Seed of Life"
--
Inst21Quest7name1 = "Thrash Blade"
Inst21Quest7name2 = "Resurgence Rod"
Inst21Quest7name3 = "Verdant Keeper's Aim"

--Quest 8 Alliance
Inst21Quest8 = "8. Seed of Life"
Inst21Quest8_Aim = "Seek out Remulos in Moonglade and give him the Seed of Life."
Inst21Quest8_Location = "Zaetar's Spirit (Maraudon; "..YELLOW.."[11]"..WHITE..")"
Inst21Quest8_Note = "Zaetars Ghost appears after killing Princess Theradras "..YELLOW.."[11]"..WHITE..". You find Keeper Remulos at (Moonglade - Shrine of Remulos; "..YELLOW.."36.2, 41.8"..WHITE..")."
Inst21Quest8_Prequest = "Corruption of Earth and Seed"
Inst21Quest8_Folgequest = "None"
-- No Rewards for this quest


--Quest 1 Horde
Inst21Quest1_HORDE = "1. Shadowshard Fragments"
Inst21Quest1_HORDE_Aim = "Collect 10 Shadowshard Fragments from Maraudon and return them to Uthel'nay in Orgrimmar"
Inst21Quest1_HORDE_Location = "Uthel'nay (Orgrimmar - Valley of Spirits; "..YELLOW.."39.0, 86.0"..WHITE..")"
Inst21Quest1_HORDE_Note = "You get the Shadowshard Fragments from 'Shadowshard Rumbler' or 'Shadowshard Smasher' outside the dungeon on the Purple side."
Inst21Quest1_HORDE_Prequest = "None"
Inst21Quest1_HORDE_Folgequest = "None"
--
Inst21Quest1name1_HORDE = "Zealous Shadowshard Pendant"
Inst21Quest1name2_HORDE = "Prodigious Shadowshard Pendant"

--Quest 2 Horde
Inst21Quest2_HORDE = "2. Vyletongue Corruption"
Inst21Quest2_HORDE_Aim = "Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.\nUse the Filled Cerulean Vial on the Vylestem Vines to force the corrupted Noxxious Scion to emerge.\nHeal 8 plants by killing these Noxxious Scion, then return to Vark Battlescar in Shadowprey Village."
Inst21Quest2_HORDE_Location = "Vark Battlescar (Desolace - Shadowprey Village; "..YELLOW.."23.2, 70.2"..WHITE..")"
Inst21Quest2_HORDE_Note = "You can fill the Vial at any pool outside the dungeon on the Orange side. The plants are in the orange and purple areas inside the dungeon."
Inst21Quest2_HORDE_Prequest = "None"
Inst21Quest2_HORDE_Folgequest = "None"
--
Inst21Quest2name1_HORDE = "Woodseed Hoop"
Inst21Quest2name2_HORDE = "Sagebrush Girdle"
Inst21Quest2name3_HORDE = "Branchclaw Gauntlets"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst21Quest3_HORDE = Inst21Quest3
Inst21Quest3_HORDE_Aim = Inst21Quest3_Aim
Inst21Quest3_HORDE_Location = Inst21Quest3_Location
Inst21Quest3_HORDE_Note = Inst21Quest3_Note
Inst21Quest3_HORDE_Prequest = Inst21Quest3_Prequest
Inst21Quest3_HORDE_Folgequest = Inst21Quest3_Folgequest
--
Inst21Quest3name1_HORDE = Inst21Quest3name1
Inst21Quest3name2_HORDE = Inst21Quest3name2
Inst21Quest3name3_HORDE = Inst21Quest3name3
Inst21Quest3name4_HORDE = Inst21Quest3name4

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst21Quest4_HORDE = Inst21Quest4
Inst21Quest4_HORDE_Aim = Inst21Quest4_Aim
Inst21Quest4_HORDE_Location = Inst21Quest4_Location
Inst21Quest4_HORDE_Note = Inst21Quest4_Note
Inst21Quest4_HORDE_Prequest = Inst21Quest4_Prequest
Inst21Quest4_HORDE_Folgequest = Inst21Quest4_Folgequest
--
Inst21Quest4name1_HORDE = Inst21Quest4name1
Inst21Quest4name2_HORDE = Inst21Quest4name2

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst21Quest5_HORDE = Inst21Quest5
Inst21Quest5_HORDE_Aim = Inst21Quest5_Aim
Inst21Quest5_HORDE_Location = Inst21Quest5_Location
Inst21Quest5_HORDE_Note = Inst21Quest5_Note
Inst21Quest5_HORDE_Prequest = Inst21Quest5_Prequest
Inst21Quest5_HORDE_Folgequest = Inst21Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst21Quest6_HORDE = Inst21Quest6
Inst21Quest6_HORDE_Aim = Inst21Quest6_Aim
Inst21Quest6_HORDE_Location = Inst21Quest6_Location
Inst21Quest6_HORDE_Note = Inst21Quest6_Note
Inst21Quest6_HORDE_Prequest = Inst21Quest6_Prequest
Inst21Quest6_HORDE_Folgequest = Inst21Quest6_Folgequest
Inst21Quest6FQuest_HORDE = Inst21Quest6FQuest
--
Inst21Quest6name1_HORDE = Inst21Quest6name1

--Quest 7 Horde
Inst21Quest7_HORDE = "7. Corruption of Earth and Seed"
Inst21Quest7_HORDE_Aim = "Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace."
Inst21Quest7_HORDE_Location = "Selendra (Desolace; "..YELLOW.."26.8, 77.6"..WHITE..")"
Inst21Quest7_HORDE_Note = "You find Princess Theradras at "..YELLOW.."[11]"..WHITE.."."
Inst21Quest7_HORDE_Prequest = "None"
Inst21Quest7_HORDE_Folgequest = "Seed of Life"
--
Inst21Quest7name1_HORDE = "Thrash Blade"
Inst21Quest7name2_HORDE = "Resurgence Rod"
Inst21Quest7name3_HORDE = "Verdant Keeper's Aim"

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst21Quest8_HORDE = Inst21Quest8
Inst21Quest8_HORDE_Aim = Inst21Quest8_Aim
Inst21Quest8_HORDE_Location = Inst21Quest8_Location
Inst21Quest8_HORDE_Note = Inst21Quest8_Note
Inst21Quest8_HORDE_Prequest = Inst21Quest8_Prequest
Inst21Quest8_HORDE_Folgequest = Inst21Quest8_Folgequest
-- No Rewards for this quest



--------------- INST22 - Ragefire Chasm ---------------

Inst22Caption = "Ragefire Chasm"
Inst22QAA = "No Quests"
Inst22QAH = "5 Quests"

--Quest 1 Horde
Inst22Quest1_HORDE = "1. Testing an Enemy's Strength"
Inst22Quest1_HORDE_Aim = "Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff."
Inst22Quest1_HORDE_Location = "Rahauro (Thunder Bluff - Elder Rise; "..YELLOW.."70.4, 32.2"..WHITE..")"
Inst22Quest1_HORDE_Note = "You find the troggs at the beginning of the dungeon."
Inst22Quest1_HORDE_Prequest = "None"
Inst22Quest1_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Horde
Inst22Quest2_HORDE = "2. The Power to Destroy..."
Inst22Quest2_HORDE_Aim = "Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity."
Inst22Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56.2, 92.6"..WHITE..")"
Inst22Quest2_HORDE_Note = "The books can be dropped by Searing Blade Cultists and Searing Blade Warlocks."
Inst22Quest2_HORDE_Prequest = "None"
Inst22Quest2_HORDE_Folgequest = "None"
--
Inst22Quest2name1_HORDE = "Ghastly Trousers"
Inst22Quest2name2_HORDE = "Dredgemire Leggings"
Inst22Quest2name3_HORDE = "Gargoyle Leggings"

--Quest 3 Horde
Inst22Quest3_HORDE = "3. Searching for the Lost Satchel"
Inst22Quest3_HORDE_Aim = "Search Ragefire Chasm for Maur Grimtotem's corpse and search it for any items of interest."
Inst22Quest3_HORDE_Location = "Rahauro (Thunder Bluff - Elder Rise; "..YELLOW.."70.4, 32.2"..WHITE..")"
Inst22Quest3_HORDE_Note = "You find Maur Grimtotem at "..YELLOW.."[1]"..WHITE..".  After getting the satchel you must bring it back to Rahauro in Thunder Bluff.  The rewards are for the followup quest."
Inst22Quest3_HORDE_Prequest = "None"
Inst22Quest3_HORDE_Folgequest = "Returning the Lost Satchel"
--
Inst22Quest3name1_HORDE = "Featherbead Bracers"
Inst22Quest3name2_HORDE = "Savannah Bracers"

--Quest 4 Horde
Inst22Quest4_HORDE = "4. Hidden Enemies"
Inst22Quest4_HORDE_Aim = "Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar."
Inst22Quest4_HORDE_Location = "Thrall (Orgrimmar - Valley of Wisdom; "..YELLOW.."32.0, 37.8"..WHITE..")"
Inst22Quest4_HORDE_Note = "You find Bazzalan at  "..YELLOW.."[4]"..WHITE.." and Jergosh the Invoker at "..YELLOW.."[3]"..WHITE..".  The prequest starts at Thrall in Orgrimmar."
Inst22Quest4_HORDE_Prequest = "Hidden Enemies"
Inst22Quest4_HORDE_Folgequest = "Hidden Enemies"
--
Inst22Quest4name1_HORDE = "Kris of Orgrimmar"
Inst22Quest4name2_HORDE = "Hammer of Orgrimmar"
Inst22Quest4name3_HORDE = "Axe of Orgrimmar"
Inst22Quest4name4_HORDE = "Staff of Orgrimmar"

--Quest 5 Horde
Inst22Quest5_HORDE = "5. Slaying the Beast"
Inst22Quest5_HORDE_Aim = "Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar."
Inst22Quest5_HORDE_Location = "Neeru Fireblade (Orgrimmar - Cleft of Shadow; "..YELLOW.."49.6, 50.4"..WHITE..")"
Inst22Quest5_HORDE_Note = "You find Taragaman the Hungerer at "..YELLOW.."[2]"..WHITE.."."
Inst22Quest5_HORDE_Prequest = "None"
Inst22Quest5_HORDE_Folgequest = "None"
-- No Rewards for this quest



--------------- INST23 - Razorfen Downs ---------------

Inst23Caption = "Razorfen Downs"
Inst23QAA = "3 Quests"
Inst23QAH = "4 Quests"

--Quest 1 Alliance
Inst23Quest1 = "1. A Host of Evil"
Inst23Quest1_Aim = "Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs."
Inst23Quest1_Location = "Myriam Moonsinger (The Barrens; "..YELLOW.."49.0, 94.8"..WHITE..")"
Inst23Quest1_Note = "You can find the mobs and the quest giver in the area just before the dungeon entrance."
Inst23Quest1_Prequest = "None"
Inst23Quest1_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Alliance
Inst23Quest2 = "2. Extinguishing the Idol"
Inst23Quest2_Aim = "Escort Belnistrasz to the Quilboar's idol in Razorfen Downs. Protect Belnistrasz while he performs the ritual to shut down the idol."
Inst23Quest2_Location = "Belnistrasz (Razorfen Downs; "..YELLOW.."[2]"..WHITE..")"
Inst23Quest2_Note = "The prequest is just you agreeing to help him.  Several mobs spawn and attack Belnistrasz as he attempts to shut down the idol.  After completing the quest, you can turn the quest in at the brazier in front of the idol."
Inst23Quest2_Prequest = "Scourge of the Downs"
Inst23Quest2_Folgequest = "None"
--
Inst23Quest2name1 = "Dragonclaw Ring"

--Quest 3 Alliance
Inst23Quest3 = "3. Bring the Light"
Inst23Quest3_Aim = "Archbishop Benedictus wants you to slay Amnennar the Coldbringer in Razorfen Downs."
Inst23Quest3_Location = "Archbishop Benedictus (Stormwind - Cathedral of Light; "..YELLOW.."39.6, 27.4"..WHITE..")"
Inst23Quest3_Note = "Amnennar the Coldbringer is the last boss in Razorfen Downs. You can find him at "..YELLOW.."[6]"..WHITE.."."
Inst23Quest3_Prequest = "None"
Inst23Quest3_Folgequest = "None"
--
Inst23Quest3name1 = "Vanquisher's Sword"
Inst23Quest3name2 = "Amberglow Talisman"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst23Quest1_HORDE = Inst23Quest1
Inst23Quest1_HORDE_Aim = Inst23Quest1_Aim
Inst23Quest1_HORDE_Location = Inst23Quest1_Location
Inst23Quest1_HORDE_Note = Inst23Quest1_Note
Inst23Quest1_HORDE_Prequest = Inst23Quest1_Prequest
Inst23Quest1_HORDE_Folgequest = Inst23Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde
Inst23Quest2_HORDE = "2. An Unholy Alliance"
Inst23Quest2_HORDE_Aim = "Bring Ambassador Malcin's Head to Varimathras in the Undercity."
Inst23Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56.2, 92.6"..WHITE..")"
Inst23Quest2_HORDE_Note = "The preceding quest can be obtained from the last Boss in Razorfen Kraul.  You find Malcin outside the dungeon (The Barrens; "..YELLOW.."48.0, 92.4"..WHITE..")."
Inst23Quest2_HORDE_Prequest = "An Unholy Alliance"
Inst23Quest2_HORDE_Folgequest = "None"
--
Inst23Quest2name1_HORDE = "Skullbreaker"
Inst23Quest2name2_HORDE = "Nail Spitter"
Inst23Quest2name3_HORDE = "Zealot's Robe"

--Quest 3 Horde  (same as Quest 2 Alliance)
Inst23Quest3_HORDE = "3. Extinguishing the Idol"
Inst23Quest3_HORDE_Aim = Inst23Quest2_Aim
Inst23Quest3_HORDE_Location = Inst23Quest2_Location
Inst23Quest3_HORDE_Note = Inst23Quest2_Note
Inst23Quest3_HORDE_Prequest = Inst23Quest2_Prequest
Inst23Quest3_HORDE_Folgequest = Inst23Quest2_Folgequest
--
Inst23Quest3name1_HORDE = Inst23Quest2name1

--Quest 4 Horde
Inst23Quest4_HORDE = "4. Bring the End"
Inst23Quest4_HORDE_Aim = "Andrew Brownell wants you to kill Amnennar the Coldbringer and return his skull."
Inst23Quest4_HORDE_Location = "Andrew Brownell (Undercity - The Magic Quarter; "..YELLOW.."74.0, 32.8"..WHITE..")"
Inst23Quest4_HORDE_Note = "Amnennar the Coldbringer is the last Boss at Razorfen Downs.  You can find him at "..YELLOW.."[6]"..WHITE.."."
Inst23Quest4_HORDE_Prequest = "None"
Inst23Quest4_HORDE_Folgequest = "None"
--
Inst23Quest4name1_HORDE = "Vanquisher's Sword"
Inst23Quest4name2_HORDE = "Amberglow Talisman"



--------------- INST24 - Razorfen Kraul ---------------

Inst24Caption = "Razorfen Kraul"
Inst24QAA = "5 Quests"
Inst24QAH = "5 Quests"

--Quest 1 Alliance
Inst24Quest1 = "1. Blueleaf Tubers"
Inst24Quest1_Aim = "In Razorfen Kraul, use the Crate with Holes to summon a Snufflenose Gopher, and use the Command Stick on the gopher to make it search for Tubers. Bring 6 Blueleaf Tubers, the Snufflenose Command Stick and the Crate with Holes to Mebok Mizzyrix in Ratchet."
Inst24Quest1_Location = "Mebok Mizzyrix (The Barrens - Ratchet; "..YELLOW.."62.4, 37.6"..WHITE..")"
Inst24Quest1_Note = "The Crate, the Stick and the Manual can all be found near Mebok Mizzyrix."
Inst24Quest1_Prequest = "None"
Inst24Quest1_Folgequest = "None"
--
Inst24Quest1name1 = "A Small Container of Gems"

--Quest 2 Alliance
Inst24Quest2 = "2. Mortality Wanes"
Inst24Quest2_Aim = "Find and return Treshala's Pendant to Treshala Fallowbrook in Darnassus."
Inst24Quest2_Location = "Heraltha Fallowbrook (Razorfen Kraul; "..YELLOW.."[8]"..WHITE..")"
Inst24Quest2_Note = "The pendant is a random drop.  You must bring back the pendant to Treshala Fallowbrook (Darnassus - Tradesmen Terrace; "..YELLOW.."69.4, 67.4"..WHITE..")."
Inst24Quest2_Prequest = "None"
Inst24Quest2_Folgequest = "None"
--
Inst24Quest2name1 = "Mourning Shawl"
Inst24Quest2name2 = "Lancer Boots"

--Quest 3 Alliance
Inst24Quest3 = "3. Willix the Importer"
Inst24Quest3_Aim = "Escort Willix the Importer out of Razorfen Kraul."
Inst24Quest3_Location = "Willix the Importer (Razorfen Kraul; "..YELLOW.."[8]"..WHITE..")"
Inst24Quest3_Note = "Willix the Importer must be escorted to the entrance of the dungeon.  The quest is turned in to him when completed."
Inst24Quest3_Prequest = "None"
Inst24Quest3_Folgequest = "None"
--
Inst24Quest3name1 = "Monkey Ring"
Inst24Quest3name2 = "Snake Hoop"
Inst24Quest3name3 = "Tiger Band"

--Quest 4 Alliance
Inst24Quest4 = "4. The Crone of the Kraul"
Inst24Quest4_Aim = "Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar."
Inst24Quest4_Location = "Falfindel Waywarder (Feralas - Thalanaar; "..YELLOW.."89.6, 46.4"..WHITE..")"
Inst24Quest4_Note = "Charlga Razorflank "..YELLOW.."[7]"..WHITE.." drops the Medallion required for this quest."
Inst24Quest4_Prequest = "Lonebrow's Journal"
Inst24Quest4_Folgequest = "None"
--
Inst24Quest4name1 = "'Mage-Eye' Blunderbuss"
Inst24Quest4name2 = "Berylline Pads"
Inst24Quest4name3 = "Stonefist Girdle"
Inst24Quest4name4 = "Marbled Buckler"

--Quest 5 Alliance
Inst24Quest5 = "5. Fire Hardened Mail"
Inst24Quest5_Aim = "Gather the materials Furen Longbeard requires, and bring them to him in Stormwind."
Inst24Quest5_Location = "Furen Longbeard (Stormwind - Dwarven District; "..YELLOW.."58.0, 16.8"..WHITE..")"
Inst24Quest5_Note = "Warrior quest.  You get the Vial of Phlogiston from Roogug at "..YELLOW.."[1]"..WHITE..".\n\nThe followup quest is different for each race. Burning Blood for Humans, Iron Coral for Dwarves and Gnomes and Sunscorched Shells for Night Elves."
Inst24Quest5_Prequest = "The Shieldsmith"
Inst24Quest5_Folgequest = "(See Note)"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst24Quest1_HORDE = Inst24Quest1
Inst24Quest1_HORDE_Aim = Inst24Quest1_Aim
Inst24Quest1_HORDE_Location = Inst24Quest1_Location
Inst24Quest1_HORDE_Note = Inst24Quest1_Note
Inst24Quest1_HORDE_Prequest = Inst24Quest1_Prequest
Inst24Quest1_HORDE_Folgequest = Inst24Quest1_Folgequest
--
Inst24Quest1name1_HORDE = Inst24Quest1name1

--Quest 2 Horde  (same as Quest 3 Alliance)
Inst24Quest2_HORDE = "2. Willix the Importer"
Inst24Quest2_HORDE_Aim = Inst24Quest3_Aim
Inst24Quest2_HORDE_Location = Inst24Quest3_Location
Inst24Quest2_HORDE_Note = Inst24Quest3_Note
Inst24Quest2_HORDE_Prequest = Inst24Quest3_Prequest
Inst24Quest2_HORDE_Folgequest = Inst24Quest3_Folgequest
--
Inst24Quest2name1_HORDE = Inst24Quest3name1
Inst24Quest2name2_HORDE = Inst24Quest3name2
Inst24Quest2name3_HORDE = Inst24Quest3name3

-- Quest 3 Horde
Inst24Quest3_HORDE = "3. Going, Going, Guano!"
Inst24Quest3_HORDE_Aim = "Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity."
Inst24Quest3_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48.4, 69.4 "..WHITE..")"
Inst24Quest3_HORDE_Note = "Kraul Guano is dropped by any of the bats found within the dungeon."
Inst24Quest3_HORDE_Prequest = "None"
Inst24Quest3_HORDE_Folgequest = "Hearts of Zeal ("..YELLOW.."[Scarlet Monastery]"..WHITE..")"
-- No Rewards for this quest

--Quest 4 Horde
Inst24Quest4_HORDE = "4. A Vengeful Fate"
Inst24Quest4_HORDE_Aim = "Bring Razorflank's Heart to Auld Stonespire in Thunder Bluff."
Inst24Quest4_HORDE_Location = "Auld Stonespire (Thunderbluff; "..YELLOW.."36.2, 59.8"..WHITE..")"
Inst24Quest4_HORDE_Note = "You can find Charlga Razorflank at "..YELLOW.."[7]"..WHITE.."."
Inst24Quest4_HORDE_Prequest = "None"
Inst24Quest4_HORDE_Folgequest = "None"
--
Inst24Quest4name1_HORDE = "Berylline Pads"
Inst24Quest4name2_HORDE = "Stonefist Girdle"
Inst24Quest4name3_HORDE = "Marbled Buckler"

--Quest 5 Horde
Inst24Quest5_HORDE = "5. Brutal Armor"
Inst24Quest5_HORDE_Aim = "Bring to Thun'grim Firegaze 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars and a Vial of Phlogiston."
Inst24Quest5_HORDE_Location = "Thun'grim Firegaze (The Barrens; "..YELLOW.."57.2, 30.2"..WHITE..")"
Inst24Quest5_HORDE_Note = "Warrior quest.  You get the Vial of Phlogiston from Roogug at "..YELLOW.."[1]"..WHITE..".\n\nCompleting this quest allows you to start four new quests from the same NPC."
Inst24Quest5_HORDE_Prequest = "Speak with Thun'grim"
Inst24Quest5_HORDE_Folgequest = "(See Note)"
-- No Rewards for this quest



--------------- INST25 - Wailing Caverns ---------------

Inst25Caption = "Wailing Caverns"
Inst25QAA = "5 Quests"
Inst25QAH = "7 Quests"

--Quest 1 Alliance
Inst25Quest1 = "1. Deviate Hides"
Inst25Quest1_Aim = "Nalpak in the Wailing Caverns wants 20 Deviate Hides."
Inst25Quest1_Location = "Nalpak (Barrens - Wailing Caverns; "..YELLOW.."47, 36"..WHITE..")"
Inst25Quest1_Note = "All deviate mobs inside of and right before the entrance to the dungeon can drop hides.\nNalpak can be found in a hidden cave above the actual cave entrance.  The easiest way to him seems to be to run up the hill outside and behind the entrance and drop down the slight ledge above the cave entrance."
Inst25Quest1_Prequest = "None"
Inst25Quest1_Folgequest = "None"
--
Inst25Quest1name1 = "Slick Deviate Leggings"
Inst25Quest1name2 = "Deviate Hide Pack"

--Quest 2 Alliance
Inst25Quest2 = "2. Trouble at the Docks"
Inst25Quest2_Aim = "Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns."
Inst25Quest2_Location = "Crane Operator Bigglefuzz (Barrens - Ratchet; "..YELLOW.."63.0, 37.6"..WHITE..")"
Inst25Quest2_Note = "You get the bottle right before you go into the dungeon by killing Mad Magglish.  When you first enter the cave make an immediate right to find him at the end of the passage. He is stealthed by a wall."
Inst25Quest2_Prequest = "None"
Inst25Quest2_Folgequest = "None"
-- No Rewards for this quest

--Quest 3 Alliance
Inst25Quest3 = "3. Smart Drinks"
Inst25Quest3_Aim = "Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet."
Inst25Quest3_Location = "Mebok Mizzyrix (Barrens - Ratchet; "..YELLOW.."62.4, 37.6"..WHITE..")"
Inst25Quest3_Note = "The prequest can be obtained from Mebok Mizzyrix too.\nAll Ectoplasm enemies in and before the dungeon drop the Essence."
Inst25Quest3_Prequest = "Raptor Horns"
Inst25Quest3_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Alliance
Inst25Quest4 = "4. Deviate Eradication"
Inst25Quest4_Aim = "Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs."
Inst25Quest4_Location = "Ebru (Barrens - Wailing Caverns; "..YELLOW.."47, 36"..WHITE..")"
Inst25Quest4_Note = "Ebru is in a hidden cave above the cave entrance.  The easiest way to him seems to be to run up the hill outside and behind the entrance and drop down the slight ledge above the cave entrance."
Inst25Quest4_Prequest = "None"
Inst25Quest4_Folgequest = "None"
--
Inst25Quest4name1 = "Pattern: Deviate Scale Belt"
Inst25Quest4name2 = "Sizzle Stick"
Inst25Quest4name3 = "Dagmire Gauntlets"

--Quest 5 Alliance
Inst25Quest5 = "5. The Glowing Shard"
Inst25Quest5_Aim = "Travel to Ratchet to find the meaning behind the Nightmare Shard."
Inst25Quest5_Location = "The Glowing Shard (drops from Mutanus the Devourer; "..YELLOW.."[9]"..WHITE..")"
Inst25Quest5_Note = "Mutanus the Devourer will only appear if you kill the four leader druids of the fang and escort the tauren druid at the entrance.\nWhen you have the Shard, you must bring it to the Bank at Ratchet, and then back to the top of the hill over Wailing Caverns to Falla Sagewind (The Barrens; "..YELLOW.."48.2, 32.8"..WHITE..")."
Inst25Quest5_Prequest = "None"
Inst25Quest5_Folgequest = "In Nightmares"
--
Inst25Quest5name1 = "Talbar Mantle"
Inst25Quest5name2 = "Quagmire Galoshes"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst25Quest1_HORDE = Inst25Quest1
Inst25Quest1_HORDE_Aim = Inst25Quest1_Aim
Inst25Quest1_HORDE_Location = Inst25Quest1_Location
Inst25Quest1_HORDE_Note = Inst25Quest1_Note
Inst25Quest1_HORDE_Prequest = Inst25Quest1_Prequest
Inst25Quest1_HORDE_Folgequest = Inst25Quest1_Folgequest
--
Inst25Quest1name1_HORDE = Inst25Quest1name1
Inst25Quest1name2_HORDE = Inst25Quest1name2

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst25Quest2_HORDE = Inst25Quest2
Inst25Quest2_HORDE_Aim = Inst25Quest2_Aim
Inst25Quest2_HORDE_Location = Inst25Quest2_Location
Inst25Quest2_HORDE_Note = Inst25Quest2_Note
Inst25Quest2_HORDE_Prequest = Inst25Quest2_Prequest
Inst25Quest2_HORDE_Folgequest = Inst25Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde
Inst25Quest3_HORDE = "3. Serpentbloom"
Inst25Quest3_HORDE_Aim = "Apothecary Zamah in Thunder Bluff wants you to collect 10 Serpentbloom."
Inst25Quest3_HORDE_Location = "Apothecary Zamah (Thunder Bluff - Spirit Rise; "..YELLOW.."23.0, 21.0"..WHITE..")"
Inst25Quest3_HORDE_Note = "Apothecary Zamah is in a cave under the Spirit Rise.  You get the prequest from Apothecary Helbrim (Barrens - Crossroads; "..YELLOW.."51.4, 30.2"..WHITE..").\nYou get the Serpentbloom inside the cave in front of the dungeon and inside the dungeon.  Players with Herbalism can see the plants on their minimap."
Inst25Quest3_HORDE_Prequest = "Fungal Spores -> Apothecary Zamah"
Inst25Quest3_HORDE_Folgequest = "None"
--
Inst25Quest3name1_HORDE = "Apothecary Gloves"

--Quest 4 Horde  (same as Quest 3 Alliance)
Inst25Quest4_HORDE = "4. Smart Drinks"
Inst25Quest4_HORDE_Aim = Inst25Quest3_Aim
Inst25Quest4_HORDE_Location = Inst25Quest3_Location
Inst25Quest4_HORDE_Note = Inst25Quest3_Note
Inst25Quest4_HORDE_Prequest = Inst25Quest3_Prequest
Inst25Quest4_HORDE_Folgequest = Inst25Quest3_Folgequest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 4 Alliance)
Inst25Quest5_HORDE = "5. Deviate Eradication"
Inst25Quest5_HORDE_Aim = Inst25Quest4_Aim
Inst25Quest5_HORDE_Location = Inst25Quest4_Location
Inst25Quest5_HORDE_Note = Inst25Quest4_Note
Inst25Quest5_HORDE_Prequest = Inst25Quest4_Prequest
Inst25Quest5_HORDE_Folgequest = Inst25Quest4_Folgequest
--
Inst25Quest5name1_HORDE = Inst25Quest4name1
Inst25Quest5name2_HORDE = Inst25Quest4name2
Inst25Quest5name3_HORDE = Inst25Quest4name3

--Quest 6 Horde
Inst25Quest6_HORDE = "6. Leaders of the Fang"
Inst25Quest6_HORDE_Aim = "Bring the Gems of Cobrahn, Anacondra, Pythas and Serpentis to Nara Wildmane in Thunder Bluff."
Inst25Quest6_HORDE_Location = "Nara Wildmane (Thunder Bluff - Elder Rise; "..YELLOW.."75.6, 31.2"..WHITE..")"
Inst25Quest6_HORDE_Note = "The questline starts at Arch Druid Hamuul Runetotem (Thunderbluff - Elder Rise; "..YELLOW.."78.4, 28.4"..WHITE..")\nThe 4 druids bosses drop the gems - Lord Cobrahn "..YELLOW.."[2]"..WHITE..", Lady Anacondra "..YELLOW.."[3]"..WHITE..", Lord Pythas "..YELLOW.."[5]"..WHITE.." and Lord Serpentis "..YELLOW.."[7]"..WHITE.."."
Inst25Quest6_HORDE_Prequest = "The Barrens Oases -> Nara Wildmane"
Inst25Quest6_HORDE_Folgequest = "None"
--
Inst25Quest6name1_HORDE = "Crescent Staff"
Inst25Quest6name2_HORDE = "Wingblade"

--Quest 7 Horde  (same as Quest 5 Alliance)
Inst25Quest7_HORDE = "7. The Glowing Shard"
Inst25Quest7_HORDE_Aim = Inst25Quest5_Aim
Inst25Quest7_HORDE_Location = Inst25Quest5_Location
Inst25Quest7_HORDE_Note = Inst25Quest5_Note
Inst25Quest7_HORDE_Prequest = Inst25Quest5_Prequest
Inst25Quest7_HORDE_Folgequest = Inst25Quest5_Folgequest
--
Inst25Quest7name1_HORDE = Inst25Quest5name1
Inst25Quest7name2_HORDE = Inst25Quest5name2



--------------- INST26 - Zul'Farrak ---------------

Inst26Caption = "Zul'Farrak"
Inst26QAA = "7 Quests"
Inst26QAH = "7 Quests"

--Quest 1 Alliance
Inst26Quest1 = "1. Troll Temper"
Inst26Quest1_Aim = "Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan."
Inst26Quest1_Location = "Trenton Lighthammer (Tanaris - Gadgetzan; "..YELLOW.."51.4, 28.6"..WHITE..")"
Inst26Quest1_Note = "Every Troll can drop the Tempers."
Inst26Quest1_Prequest = "None"
Inst26Quest1_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Alliance
Inst26Quest2 = "2. Scarab Shells"
Inst26Quest2_Aim = "Bring 5 Uncracked Scarab Shells to Tran'rek in Gadgetzan."
Inst26Quest2_Location = "Tran'rek (Tanaris - Gadgetzan; "..YELLOW.."51.6, 26.8"..WHITE..")"
Inst26Quest2_Note = "The prequest starts at Krazek (Stranglethorn Vale - Booty Bay; "..YELLOW.."27.0, 77.2"..WHITE..").\nAll scarabs can drop the shells.  You can find many scarabs at "..YELLOW.."[2]"..WHITE.."."
Inst26Quest2_Prequest = "Tran'rek"
Inst26Quest2_Folgequest = "None"
-- No Rewards for this quest

--Quest 3 Alliance
Inst26Quest3 = "3. Tiara of the Deep"
Inst26Quest3_Aim = "Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh."
Inst26Quest3_Location = "Tabetha (Dustwallow Marsh; "..YELLOW.."46.0, 57.0"..WHITE..")"
Inst26Quest3_Note = "You get the prequest from Bink (Ironforge; "..YELLOW.."27.0, 8.2"..WHITE..").\nHydromancer Velratha drops the Tiara of the Deep at "..YELLOW.."[6]"..WHITE.."."
Inst26Quest3_Prequest = "Tabetha's Task"
Inst26Quest3_Folgequest = "None"
--
Inst26Quest3name1 = "Spellshifter Rod"
Inst26Quest3name2 = "Gemshale Pauldrons"

--Quest 4 Alliance
Inst26Quest4 = "4. Nekrum's Medallion"
Inst26Quest4_Aim = "Bring Nekrum's Medallion to Thadius Grimshade in the Blasted Lands."
Inst26Quest4_Location = "Thadius Grimshade (The Blasted Lands - Nethergarde Keep; "..YELLOW.."67.0, 19.4"..WHITE..")"
Inst26Quest4_Note = "The questline starts at Gryphon Master Talonaxe (The Hinterlands - Wildhammer Stronghold; "..YELLOW.."9.8, 44.4"..WHITE..").\nNekrum spawns at "..YELLOW.."[4]"..WHITE.." with the final crowd you fight for the Temple event."
Inst26Quest4_Prequest = "Witherbark Cages -> Thadius Grimshade"
Inst26Quest4_Folgequest = "The Divination"
-- No Rewards for this quest

--Quest 5 Alliance
Inst26Quest5 = "5. The Prophecy of Mosh'aru"
Inst26Quest5_Aim = "Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris."
Inst26Quest5_Location = "Yeh'kinya (Tanaris - Steamwheedle Port; "..YELLOW.."67.0, 22.4"..WHITE..")"
Inst26Quest5_Note = "You get the prequest from the same NPC.\nThe Tablets drop from Theka the Martyr at "..YELLOW.."[2]"..WHITE.." and Hydromancer Velratha at "..YELLOW.."[6]"..WHITE.."."
Inst26Quest5_Prequest = "Screecher Spirits"
Inst26Quest5_Folgequest = "The Ancient Egg"
-- No Rewards for this quest

--Quest 6 Alliance
Inst26Quest6 = "6. Divino-matic Rod"
Inst26Quest6_Aim = "Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan."
Inst26Quest6_Location = "Chief Engineer Bilgewhizzle (Tanaris - Gadgetzan; "..YELLOW.."52.4, 28.4"..WHITE..")"
Inst26Quest6_Note = "You get the Rod from Sergeant Bly.  You can find him at "..YELLOW.."[4]"..WHITE.." after the Temple event."
Inst26Quest6_Prequest = "None"
Inst26Quest6_Folgequest = "None"
--
Inst26Quest6name1 = "Masons Fraternity Ring"
Inst26Quest6name2 = "Engineer's Guild Headpiece"

--Quest 7 Alliance
Inst26Quest7 = "7. Gahz'rilla"
Inst26Quest7_Aim = "Bring Gahz'rilla's Electrified Scale to Wizzle Brassbolts in the Shimmering Flats."
Inst26Quest7_Location = "Wizzle Brassbolts (Thousands Needles - Mirage Raceway; "..YELLOW.."78.0, 77.0"..WHITE..")"
Inst26Quest7_Note = "You can start the optional prequest from Klockmort Spannerspan (Ironforge - Tinkertown; "..YELLOW.."68.2, 46.2"..WHITE..").\nGahz'rilla is summoned at at "..YELLOW.."[6]"..WHITE.." by banging the gong.  A party member must have the Mallet of Zul'Farrak."
Inst26Quest7_Prequest = "The Brassbolts Brothers"
Inst26Quest7_Folgequest = "None"
--
Inst26Quest7name1 = "Carrot on a Stick"


--Quest 1 Horde
Inst26Quest1_HORDE = "1. The Spider God"
Inst26Quest1_HORDE_Aim = "Read from the Tablet of Theka to learn the name of the Witherbark spider god, then return to Master Gadrin."
Inst26Quest1_HORDE_Location = "Meister Gadrin (Durotar - Sen'jin Village; "..YELLOW.."56.0, 74.6"..WHITE..")"
Inst26Quest1_HORDE_Note = "The Questline starts at a Venom Bottle, which is found on tables in Troll Villages in The Hinterlands.\nYou find the Tablet at "..YELLOW.."[2]"..WHITE.."."
Inst26Quest1_HORDE_Prequest = "Venom Bottles -> Consult Master Gadrin"
Inst26Quest1_HORDE_Folgequest = "Summoning Shadra"
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 1 Alliance)
Inst26Quest2_HORDE = "2. Troll Temper"
Inst26Quest2_HORDE_Aim = Inst26Quest1_Aim
Inst26Quest2_HORDE_Location = Inst26Quest1_Location
Inst26Quest2_HORDE_Note = Inst26Quest1_Note
Inst26Quest2_HORDE_Prequest = Inst26Quest1_Prequest
Inst26Quest2_HORDE_Folgequest = Inst26Quest1_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 2 Alliance)
Inst26Quest3_HORDE = "3. Scarab Shells"
Inst26Quest3_HORDE_Aim = Inst26Quest2_Aim
Inst26Quest3_HORDE_Location = Inst26Quest2_Location
Inst26Quest3_HORDE_Note = Inst26Quest2_Note
Inst26Quest3_HORDE_Prequest = Inst26Quest2_Prequest
Inst26Quest3_HORDE_Folgequest = Inst26Quest2_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 3 Alliance - no prequest)
Inst26Quest4_HORDE = "4. Tiara of the Deep"
Inst26Quest4_HORDE_Aim = Inst26Quest3_Aim
Inst26Quest4_HORDE_Location = Inst26Quest3_Location
Inst26Quest4_HORDE_Note = "Hydromancer Velratha drops the Tiara of the Deep at "..YELLOW.."[6]"..WHITE.."."
Inst26Quest4_HORDE_Prequest = "None"
Inst26Quest4_HORDE_Folgequest = Inst26Quest3_Folgequest
--
Inst26Quest4name1_HORDE = Inst26Quest3name1
Inst26Quest4name2_HORDE = Inst26Quest3name2

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst26Quest5_HORDE = Inst26Quest5
Inst26Quest5_HORDE_Aim = Inst26Quest5_Aim
Inst26Quest5_HORDE_Location = Inst26Quest5_Location
Inst26Quest5_HORDE_Note = Inst26Quest5_Note
Inst26Quest5_HORDE_Prequest = Inst26Quest5_Prequest
Inst26Quest5_HORDE_Folgequest = Inst26Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst26Quest6_HORDE = Inst26Quest6
Inst26Quest6_HORDE_Aim = Inst26Quest6_Aim
Inst26Quest6_HORDE_Location = Inst26Quest6_Location
Inst26Quest6_HORDE_Note = Inst26Quest6_Note
Inst26Quest6_HORDE_Prequest = Inst26Quest6_Prequest
Inst26Quest6_HORDE_Folgequest = Inst26Quest6_Folgequest
--
Inst26Quest6name1_HORDE = Inst26Quest6name1
Inst26Quest6name2_HORDE = Inst26Quest6name2

--Quest 7 Horde  (same as Quest 7 Alliance - no prequest)
Inst26Quest7_HORDE = Inst26Quest7
Inst26Quest7_HORDE_Aim = Inst26Quest7_Aim
Inst26Quest7_HORDE_Location = Inst26Quest7_Location
Inst26Quest7_HORDE_Note = "Gahz'rilla is summoned at at "..YELLOW.."[6]"..WHITE.." by banging the gong.  A party member must have the Mallet of Zul'Farrak."
Inst26Quest7_HORDE_Prequest = "None"
Inst26Quest7_HORDE_Folgequest = Inst26Quest7_Folgequest
--
Inst26Quest7name1_HORDE = Inst26Quest7name1



--------------- INST27 - Molten Core ---------------

Inst27Caption = "Molten Core"
Inst27QAA = "6 Quests"
Inst27QAH = "6 Quests"

--Quest 1 Alliance
Inst27Quest1 = "1. The Molten Core"
Inst27Quest1_Aim = "Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara."
Inst27Quest1_Location = "Duke Hydraxis (Azshara; "..YELLOW.."79.2, 73.6"..WHITE..")"
Inst27Quest1_Note = "These are non-bosses found inside Molten Core."
Inst27Quest1_Prequest = "Eye of the Emberseer ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
Inst27Quest1_Folgequest = "Agent of Hydraxis"
-- No Rewards for this quest

--Quest 2 Alliance
Inst27Quest2 = "2. Hands of the Enemy"
Inst27Quest2_Aim = "Bring the Hands of Lucifron, Sulfuron, Gehennas and Shazzrah to Duke Hydraxis in Azshara."
Inst27Quest2_Location = "Duke Hydraxis (Azshara; "..YELLOW.."79.2, 73.6"..WHITE..")"
Inst27Quest2_Note = "Lucifron is at "..YELLOW.."[1]"..WHITE..", Sulfuron is at "..YELLOW.."[8]"..WHITE..", Gehennas is at "..YELLOW.."[3]"..WHITE.." and Shazzrah is at "..YELLOW.."[5]"..WHITE..".  The rewards listed are given for the followup quest."
Inst27Quest2_Prequest = "Eye of the Emberseer -> Agent of Hydraxis"
Inst27Quest2_Folgequest = "A Hero's Reward"
--
Inst27Quest2name1 = "Ocean's Breeze"
Inst27Quest2name2 = "Tidal Loop"

--Quest 3 Alliance
Inst27Quest3 = "3. Thunderaan the Windseeker"
Inst27Quest3_Aim = "To free Thunderaan the Windseeker from his prison, you must present the right and left halves of the Bindings of the Windseeker, 10 bars of Elementium, and the Essence of the Firelord to Highlord Demitrian in Silithus."
Inst27Quest3_Location = "Highlord Demitrian (Silithus; "..YELLOW.."21.8, 8.6"..WHITE..")"
Inst27Quest3_Note = "Part of the Thunderfury, Blessed Blade of the Windseeker questline.  It starts after obtaining either the left or right Bindings of the Windseeker from Garr at "..YELLOW.."[4]"..WHITE.." or Baron Geddon at "..YELLOW.."[6]"..WHITE..".  Then talk to Highlord Demitrian to start the questline.  Essence of the Firelord drops from Ragnaros at "..YELLOW.."[10]"..WHITE..".  After turning this part in, Prince Thunderaan is summoned and you must kill him. He's a 40-man raid boss."
Inst27Quest3_Prequest = "Examine the Vessel"
Inst27Quest3_Folgequest = "Rise, Thunderfury!"
-- No Rewards for this quest

--Quest 4 Alliance
Inst27Quest4 = "4. A Binding Contract"
Inst27Quest4_Aim = "Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron."
Inst27Quest4_Location = "Lokhtos Darkbargainer (Blackrock Depths; "..YELLOW.."[15]"..WHITE..")"
Inst27Quest4_Note = "You need a Sulfuron Ingot to get the contract from Lokhtos. They drop from Golemagg the Incinerator in Molten Core at "..YELLOW.."[7]"..WHITE.."."
Inst27Quest4_Prequest = "None"
Inst27Quest4_Folgequest = "None"
--
Inst27Quest4name1 = "Plans: Sulfuron Hammer"

--Quest 5 Alliance
Inst27Quest5 = "5. The Ancient Leaf"
Inst27Quest5_Aim = "Find the owner of the Ancient Petrified Leaf."
Inst27Quest5_Location = "Ancient Petrified Leaf (drops from Cache of the Firelord; "..YELLOW.."[9]"..WHITE..")"
Inst27Quest5_Note = "Turns in to Vartrus the Ancient at (Felwood - Irontree Woods; "..YELLOW.."48.8, 24.2"..WHITE..")."
Inst27Quest5_Prequest = "None"
Inst27Quest5_Folgequest = "Ancient Sinew Wrapped Lamina ("..YELLOW.."Azuregos"..WHITE..")"
-- No Rewards for this quest

--Quest 6 Alliance
Inst27Quest6 = "6. Scrying Goggles? No Problem!"
Inst27Quest6_Aim = "Find Narain's Scrying Goggles and return them to Narain Soothfancy in Tanaris."
Inst27Quest6_Location = "Inconspicuous Crate (Silverpine Forest - Greymane Wall; "..YELLOW.."46.2, 86.6"..WHITE..")"
Inst27Quest6_Note = "The quest turns in to Narain Soothfancy (Tanaris; "..YELLOW.."65.2, 18.6"..WHITE.."), which is also where the pre-quest is obtained."
Inst27Quest6_Prequest = "Stewvul, Ex-B.F.F."
Inst27Quest6_Folgequest = "None"
--
Inst27Quest6name1 = "Major Rejuvenation Potion"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst27Quest1_HORDE = Inst27Quest1
Inst27Quest1_HORDE_Aim = Inst27Quest1_Aim
Inst27Quest1_HORDE_Location = Inst27Quest1_Location
Inst27Quest1_HORDE_Note = Inst27Quest1_Note
Inst27Quest1_HORDE_Prequest = Inst27Quest1_Prequest
Inst27Quest1_HORDE_Folgequest = Inst27Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst27Quest2_HORDE = Inst27Quest2
Inst27Quest2_HORDE_Aim = Inst27Quest2_Aim
Inst27Quest2_HORDE_Location = Inst27Quest2_Location
Inst27Quest2_HORDE_Note = Inst27Quest2_Note
Inst27Quest2_HORDE_Prequest = Inst27Quest2_Prequest
Inst27Quest2_HORDE_Folgequest = Inst27Quest2_Folgequest
--
Inst27Quest2name1_HORDE = Inst27Quest2name1
Inst27Quest2name2_HORDE = Inst27Quest2name2

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst27Quest3_HORDE = Inst27Quest3
Inst27Quest3_HORDE_Aim = Inst27Quest3_Aim
Inst27Quest3_HORDE_Location = Inst27Quest3_Location
Inst27Quest3_HORDE_Note = Inst27Quest3_Note
Inst27Quest3_HORDE_Prequest = Inst27Quest3_Prequest
Inst27Quest3_HORDE_Folgequest = Inst27Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst27Quest4_HORDE = Inst27Quest4
Inst27Quest4_HORDE_Aim = Inst27Quest4_Aim
Inst27Quest4_HORDE_Location = Inst27Quest4_Location
Inst27Quest4_HORDE_Note = Inst27Quest4_Note
Inst27Quest4_HORDE_Prequest = Inst27Quest4_Prequest
Inst27Quest4_HORDE_Folgequest = Inst27Quest4_Folgequest
--
Inst27Quest4name1_HORDE = Inst27Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst27Quest5_HORDE = Inst27Quest5
Inst27Quest5_HORDE_Aim = Inst27Quest5_Aim
Inst27Quest5_HORDE_Location = Inst27Quest5_Location
Inst27Quest5_HORDE_Note = Inst27Quest5_Note
Inst27Quest5_HORDE_Prequest = Inst27Quest5_Prequest
Inst27Quest5_HORDE_Folgequest = Inst27Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst27Quest6_HORDE = Inst27Quest6
Inst27Quest6_HORDE_Aim = Inst27Quest6_Aim
Inst27Quest6_HORDE_Location = Inst27Quest6_Location
Inst27Quest6_HORDE_Note = Inst27Quest6_Note
Inst27Quest6_HORDE_Prequest = Inst27Quest6_Prequest
Inst27Quest6_HORDE_Folgequest = Inst27Quest6_Folgequest
--
Inst27Quest6name1_HORDE = Inst27Quest6name1



--------------- INST28 - Onyxia's Lair ---------------

Inst28Caption = "Onyxias Lair"
Inst28QAA = "2 Quests"
Inst28QAH = "2 Quests"

--Quest 1 Alliance
Inst28Quest1 = "1. The Forging of Quel'Serrar"
Inst28Quest1_Aim = "You must get Onyxia to breathe fire on the Unfired Ancient Blade. Once this is done, pick up the now Heated Ancient Blade. Be warned, a Heated Ancient Blade will not remain heated forever - time is of the essence."
Inst28Quest1_Location = "Lorekeeper Lydros (Dire Maul West; "..YELLOW.."[1] Library"..WHITE..")"
Inst28Quest1_Note = "Drop the Sword in front of Onyxia when she's at 10% to 15% health. She'll have to breathe on and heat it. When Onyxia dies, pick the sword back up, click her corpse and use the sword. Then you're ready to turn in the quest."
Inst28Quest1_Prequest = "Foror's Compendium ("..YELLOW.."Dire Maul West"..WHITE..") -> The Forging of Quel'Serrar"
Inst28Quest1_Folgequest = "None"
--
Inst28Quest1name1 = "Quel'Serrar"

--Quest 2 Alliance
Inst28Quest2 = "2. Victory for the Alliance"
Inst28Quest2_Aim = "Take the Head of Onyxia to Highlord Bolvar Fordragon in Stormwind. ."
Inst28Quest2_Location = "Head of Onyxia (drops from Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst28Quest2_Note = "Highlord Bolvar Fordragon is at (Stormwind City - Stormwind Keep; "..YELLOW.."78.0, 18.0"..WHITE.."). Only one person in the raid can loot this item and the quest can be done once per character.\n\nRewards listed are for the followup."
Inst28Quest2_Prequest = "None"
Inst28Quest2_Folgequest = "Celebrating Good Times -> The Journey Has Just Begun"
--
Inst28Quest2name1 = "Onyxia Blood Talisman"
Inst28Quest2name2 = "Dragonslayer's Signet"
Inst28Quest2name3 = "Onyxia Tooth Pendant"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst28Quest1_HORDE = Inst28Quest1
Inst28Quest1_HORDE_Aim = Inst28Quest1_Aim
Inst28Quest1_HORDE_Location = Inst28Quest1_Location
Inst28Quest1_HORDE_Note = Inst28Quest1_Note
Inst28Quest1_HORDE_Prequest = Inst28Quest1_Prequest
Inst28Quest1_HORDE_Folgequest = Inst28Quest1_Folgequest
--
Inst28Quest1name1_HORDE = Inst28Quest1name1

--Quest 2 Horde
Inst28Quest2_HORDE = "2. Victory for the Horde"
Inst28Quest2_HORDE_Aim = "Take the Head of Onyxia to Thrall in Orgrimmar."
Inst28Quest2_HORDE_Location = "Head of Onyxia (drops from Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst28Quest2_HORDE_Note = "Thrall is at (Orgrimmar - Valley of Wisdom; "..YELLOW.."32.0, 37.8"..WHITE.."). Only one person in the raid can loot this item and the quest can be done once per character.\n\nRewards listed are for the followup."
Inst28Quest2_HORDE_Prequest = "None"
Inst28Quest2_HORDE_Folgequest = "For All To See -> The Journey Has Just Begun"
--
Inst28Quest2name1_HORDE = "Onyxia Blood Talisman"
Inst28Quest2name2_HORDE = "Dragonslayer's Signet"
Inst28Quest2name3_HORDE = "Onyxia Tooth Pendant"



--------------- INST29 - Zul'Gurub ---------------

Inst29Caption = "Zul'Gurub"
Inst29QAA = "4 Quests"
Inst29QAH = "4 Quests"

--Quest 1 Alliance
Inst29Quest1 = "1. A Collection of Heads"
Inst29Quest1_Aim = "String 5 Channeler's Heads, then return the Collection of Troll Heads to Exzhal on Yojamba Isle."
Inst29Quest1_Location = "Exzhal (Stranglethorn Vale - Yojamba Isle; "..YELLOW.."15.2, 15.4"..WHITE..")"
Inst29Quest1_Note = "Make sure you loot all the priests."
Inst29Quest1_Prequest = "None"
Inst29Quest1_Folgequest = "None"
--
Inst29Quest1name1 = "Belt of Shrunken Heads"
Inst29Quest1name2 = "Belt of Shriveled Heads"
Inst29Quest1name3 = "Belt of Preserved Heads"
Inst29Quest1name4 = "Belt of Tiny Heads"

--Quest 2 Alliance
Inst29Quest2 = "2. The Heart of Hakkar"
Inst29Quest2_Aim = "Bring the Heart of Hakkar to Molthor on Yojamba Isle."
Inst29Quest2_Location = "Heart of Hakkar (drops from Hakkar; "..YELLOW.."[11]"..WHITE..")"
Inst29Quest2_Note = "Molthor (Stranglethorn Vale - Yojamba Isle; "..YELLOW.."15, 15"..WHITE..")"
Inst29Quest2_Prequest = "None"
Inst29Quest2_Folgequest = "None"
--
Inst29Quest2name1 = "Zandalarian Hero Badge"
Inst29Quest2name2 = "Zandalarian Hero Charm"
Inst29Quest2name3 = "Zandalarian Hero Medallion"

--Quest 3 Alliance
Inst29Quest3 = "3. Nat's Measuring Tape"
Inst29Quest3_Aim = "Return Nat's Measuring Tape to Nat Pagle in Dustwallow Marsh."
Inst29Quest3_Location = "Battered Tackle Box (Zul'Gurub - Northeast by water from Hakkar's Island)"
Inst29Quest3_Note = "Nat Pagle is at Dustwallow Marsh ("..YELLOW.."59, 60"..WHITE.."). Turning the quest in allows you to buy Mudskunk Lures from Nat Pagle to summon Gahz'ranka in Zul'Gurub."
Inst29Quest3_Prequest = "None"
Inst29Quest3_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Alliance
Inst29Quest4 = "4. The Perfect Poison"
Inst29Quest4_Aim = "Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac."
Inst29Quest4_Location = "Dirk Thunderwood (Silithus - Cenarion Hold; "..YELLOW.."52, 39"..WHITE..")"
Inst29Quest4_Note = "Venoxis's Venom Sac drops from High priest Venoxis in "..YELLOW.."Zul'Gurub"..WHITE.." at "..YELLOW.."[2]"..WHITE..". Kurinnaxx's Venom Sac drops in the "..YELLOW.."Ruins of Ahn'Qiraj"..WHITE.." at "..YELLOW.."[1]"..WHITE.."."
Inst29Quest4_Prequest = "None"
Inst29Quest4_Folgequest = "None"
--
Inst29Quest4name1 = "Ravenholdt Slicer"
Inst29Quest4name2 = "Shivsprocket's Shiv"
Inst29Quest4name3 = "The Thunderwood Poker"
Inst29Quest4name4 = "Doomulus Prime"
Inst29Quest4name5 = "Fahrad's Reloading Repeater"
Inst29Quest4name6 = "Simone's Cultivating Hammer"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst29Quest1_HORDE = Inst29Quest1
Inst29Quest1_HORDE_Aim = Inst29Quest1_Aim
Inst29Quest1_HORDE_Location = Inst29Quest1_Location
Inst29Quest1_HORDE_Note = Inst29Quest1_Note
Inst29Quest1_HORDE_Prequest = Inst29Quest1_Prequest
Inst29Quest1_HORDE_Folgequest = Inst29Quest1_Folgequest
--
Inst29Quest1name1_HORDE = Inst29Quest1name1
Inst29Quest1name2_HORDE = Inst29Quest1name2
Inst29Quest1name3_HORDE = Inst29Quest1name3
Inst29Quest1name4_HORDE = Inst29Quest1name4

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst29Quest2_HORDE = Inst29Quest2
Inst29Quest2_HORDE_Aim = Inst29Quest2_Aim
Inst29Quest2_HORDE_Location = Inst29Quest2_Location
Inst29Quest2_HORDE_Note = Inst29Quest2_Note
Inst29Quest2_HORDE_Prequest = Inst29Quest2_Prequest
Inst29Quest2_HORDE_Folgequest = Inst29Quest2_Folgequest
--
Inst29Quest2name1_HORDE = Inst29Quest2name1
Inst29Quest2name2_HORDE = Inst29Quest2name2
Inst29Quest2name3_HORDE = Inst29Quest2name3

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst29Quest3_HORDE = Inst29Quest3
Inst29Quest3_HORDE_Aim = Inst29Quest3_Aim
Inst29Quest3_HORDE_Location = Inst29Quest3_Location
Inst29Quest3_HORDE_Note = Inst29Quest3_Note
Inst29Quest3_HORDE_Prequest = Inst29Quest3_Prequest
Inst29Quest3_HORDE_Folgequest = Inst29Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst29Quest4_HORDE = Inst29Quest4
Inst29Quest4_HORDE_Aim = Inst29Quest4_Aim
Inst29Quest4_HORDE_Location = Inst29Quest4_Location
Inst29Quest4_HORDE_Note = Inst29Quest4_Note
Inst29Quest4_HORDE_Prequest = Inst29Quest4_Prequest
Inst29Quest4_HORDE_Folgequest = Inst29Quest4_Folgequest
--
Inst29Quest4name1_HORDE = Inst29Quest4name1
Inst29Quest4name2_HORDE = Inst29Quest4name2
Inst29Quest4name3_HORDE = Inst29Quest4name3
Inst29Quest4name4_HORDE = Inst29Quest4name4
Inst29Quest4name5_HORDE = Inst29Quest4name5
Inst29Quest4name6_HORDE = Inst29Quest4name6



--------------- INST30 - The Ruins of Ahn'Qiraj (AQ20) ---------------

Inst30Caption = "Ruins of Ahn'Qiraj"
Inst30QAA = "2 Quests"
Inst30QAH = "2 Quests"

--Quest 1 Alliance
Inst30Quest1 = "1. The Fall of Ossirian"
Inst30Quest1_Aim = "Deliver the Head of Ossirian the Unscarred to Commander Mar'alith at Cenarion Hold in Silithus."
Inst30Quest1_Location = "Head of Ossirian the Unscarred (drops from Ossirian the Unscarred; "..YELLOW.."[6]"..WHITE..")"
Inst30Quest1_Note = "Commander Mar'alith (Silithus - Cenarion Hold; "..YELLOW.."49, 34"..WHITE..")"
Inst30Quest1_Prequest = "None"
Inst30Quest1_Folgequest = "None"
--
Inst30Quest1name1 = "Charm of the Shifting Sands"
Inst30Quest1name2 = "Amulet of the Shifting Sands"
Inst30Quest1name3 = "Choker of the Shifting Sands"
Inst30Quest1name4 = "Pendant of the Shifting Sands"

--Quest 2 Alliance
Inst30Quest2 = "2. The Perfect Poison"
Inst30Quest2_Aim = "Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac."
Inst30Quest2_Location = "Dirk Thunderwood (Silithus - Cenarion Hold; "..YELLOW.."52, 39"..WHITE..")"
Inst30Quest2_Note = "Venoxis's Venom Sac drops from High priest Venoxis in "..YELLOW.."Zul'Gurub"..WHITE..". Kurinnaxx's Venom Sac drops in the "..YELLOW.."Ruins of Ahn'Qiraj"..WHITE.." at "..YELLOW.."[1]"..WHITE.."."
Inst30Quest2_Prequest = "None"
Inst30Quest2_Folgequest = "None"
--
Inst30Quest2name1 = "Ravenholdt Slicer"
Inst30Quest2name2 = "Shivsprocket's Shiv"
Inst30Quest2name3 = "The Thunderwood Poker"
Inst30Quest2name4 = "Doomulus Prime"
Inst30Quest2name5 = "Fahrad's Reloading Repeater"
Inst30Quest2name6 = "Simone's Cultivating Hammer"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst30Quest1_HORDE = Inst30Quest1
Inst30Quest1_HORDE_Aim = Inst30Quest1_Aim
Inst30Quest1_HORDE_Location = Inst30Quest1_Location
Inst30Quest1_HORDE_Note = Inst30Quest1_Note
Inst30Quest1_HORDE_Prequest = Inst30Quest1_Prequest
Inst30Quest1_HORDE_Folgequest = Inst30Quest1_Folgequest
--
Inst30Quest1name1_HORDE = Inst30Quest1name1
Inst30Quest1name2_HORDE = Inst30Quest1name2
Inst30Quest1name3_HORDE = Inst30Quest1name3
Inst30Quest1name4_HORDE = Inst30Quest1name4

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst30Quest2_HORDE = Inst30Quest2
Inst30Quest2_HORDE_Aim = Inst30Quest2_Aim
Inst30Quest2_HORDE_Location = Inst30Quest2_Location
Inst30Quest2_HORDE_Note = Inst30Quest2_Note
Inst30Quest2_HORDE_Prequest = Inst30Quest2_Prequest
Inst30Quest2_HORDE_Folgequest = Inst30Quest2_Folgequest
--
Inst30Quest2name1_HORDE = Inst30Quest2name1
Inst30Quest2name2_HORDE = Inst30Quest2name2
Inst30Quest2name3_HORDE = Inst30Quest2name3
Inst30Quest2name4_HORDE = Inst30Quest2name4
Inst30Quest2name5_HORDE = Inst30Quest2name5
Inst30Quest2name6_HORDE = Inst30Quest2name6



--------------- INST31 - The Temple of Ahn'Qiraj (AQ40) ---------------

Inst31Caption = "Temple of Ahn'Qiraj"
Inst31QAA = "4 Quests"
Inst31QAH = "4 Quests"

--Quest 1 Alliance
Inst31Quest1 = "1. C'Thun's Legacy"
Inst31Quest1_Aim = "Take the Eye of C'Thun to Caelastrasz in the Temple of Ahn'Qiraj."
Inst31Quest1_Location = "Eye of C'Thun (drops from C'Thun; "..YELLOW.."[9]"..WHITE..")"
Inst31Quest1_Note = "Caelestrasz (Temple of Ahn'Qiraj; "..YELLOW.."2'"..WHITE..")"
Inst31Quest1_Prequest = "None"
Inst31Quest1_Folgequest = "The Savior of Kalimdor"
-- No Rewards for this quest

--Quest 2 Alliance
Inst31Quest2 = "2. The Savior of Kalimdor"
Inst31Quest2_Aim = "Take the Eye of C'Thun to Anachronos at the Caverns of Time."
Inst31Quest2_Location = "Eye of C'Thun (drops from C'Thun; "..YELLOW.."[9]"..WHITE..")"
Inst31Quest2_Note = "Anachronos (Tanaris - Caverns of Time; "..YELLOW.."65, 49"..WHITE..")"
Inst31Quest2_Prequest = "C'Thun's Legacy"
Inst31Quest2_Folgequest = "None"
--
Inst31Quest2name1 = "Amulet of the Fallen God"
Inst31Quest2name2 = "Cloak of the Fallen God"
Inst31Quest2name3 = "Ring of the Fallen God"

--Quest 3 Alliance
Inst31Quest3 = "3. Secrets of the Qiraji"
Inst31Quest3_Aim = "Take the Ancient Qiraji Artifact to the dragons hiding near the entrance of the temple."
Inst31Quest3_Location = "Ancient Qiraji Artifact (random drop in Temple of Ahn'Qiraj)"
Inst31Quest3_Note = "Turns in to Andorgos (Temple of Ahn'Qiraj; "..YELLOW.."1'"..WHITE..")."
Inst31Quest3_Prequest = "None"
Inst31Quest3_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Alliance
Inst31Quest4 = "4. Mortal Champions"
Inst31Quest4_Aim = "Turn in a Qiraji Lord's Insignia to Kandrostrasz in the Temple of Ahn'Qiraj."
Inst31Quest4_Location = "Kandrostrasz (Temple of Ahn'Qiraj; "..YELLOW.."[1']"..WHITE..")"
Inst31Quest4_Note = "This is a repeatable quest which yields Cenarion Circle reputation. The Qiraji Lord's Insignia drop from all bosses inside the dungeon. Kandrostrasz is found in the rooms behind the first boss."
Inst31Quest4_Prequest = "None"
Inst31Quest4_Folgequest = "None"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst31Quest1_HORDE = Inst31Quest1
Inst31Quest1_HORDE_Aim = Inst31Quest1_Aim
Inst31Quest1_HORDE_Location = Inst31Quest1_Location
Inst31Quest1_HORDE_Note = Inst31Quest1_Note
Inst31Quest1_HORDE_Prequest = Inst31Quest1_Prequest
Inst31Quest1_HORDE_Folgequest = Inst31Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst31Quest2_HORDE = Inst31Quest2
Inst31Quest2_HORDE_Aim = Inst31Quest2_Aim
Inst31Quest2_HORDE_Location = Inst31Quest2_Location
Inst31Quest2_HORDE_Note = Inst31Quest2_Note
Inst31Quest2_HORDE_Prequest = Inst31Quest2_Prequest
Inst31Quest2_HORDE_Folgequest = Inst31Quest2_Folgequest
Inst31Quest2FQuest_HORDE = Inst31Quest2FQuest
--
Inst31Quest2name1_HORDE = Inst31Quest2name1
Inst31Quest2name2_HORDE = Inst31Quest2name2
Inst31Quest2name3_HORDE = Inst31Quest2name3

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst31Quest3_HORDE = Inst31Quest3
Inst31Quest3_HORDE_Aim = Inst31Quest3_Aim
Inst31Quest3_HORDE_Location = Inst31Quest3_Location
Inst31Quest3_HORDE_Note = Inst31Quest3_Note
Inst31Quest3_HORDE_Prequest = Inst31Quest3_Prequest
Inst31Quest3_HORDE_Folgequest = Inst31Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst31Quest4_HORDE = Inst31Quest4
Inst31Quest4_HORDE_Aim = Inst31Quest4_Aim
Inst31Quest4_HORDE_Location = Inst31Quest4_Location
Inst31Quest4_HORDE_Note = Inst31Quest4_Note
Inst31Quest4_HORDE_Prequest = Inst31Quest4_Prequest
Inst31Quest4_HORDE_Folgequest = Inst31Quest4_Folgequest
-- No Rewards for this quest



--------------- INST32 - Naxxramas ---------------

Inst32Caption = "Naxxramas"
Inst32QAA = "No Quests"
Inst32QAH = "No Quests"




---------------------------------------------------
---------------- BATTLEGROUNDS --------------------
---------------------------------------------------



--------------- INST33 - Alterac Valley ---------------

Inst33Caption = "Alterac Valley"
Inst33QAA = "17 Quests"
Inst33QAH = "17 Quests"

--Quest 1 Alliance
Inst33Quest1 = "1. The Sovereign Imperative"
Inst33Quest1_Aim = "Travel to Alterac Valley in the Hillsbrad Foothills. Outside of the entrance tunnel, find and speak with Lieutenant Haggerdin."
Inst33Quest1_Location = "Lieutenant Rotimer (Ironforge - The Commons; "..YELLOW.."30,62"..WHITE..")"
Inst33Quest1_Note = "Lieutenant Haggerdin is at (Alterac Mountains; "..YELLOW.."39,81"..WHITE..")."
Inst33Quest1_Prequest = "None"
Inst33Quest1_Folgequest = "Proving Grounds"
-- No Rewards for this quest

--Quest 2 Alliance
Inst33Quest2 = "2. Proving Grounds"
Inst33Quest2_Aim = "Travel to the Icewing Caverns located southwest of Dun Baldar in Alterac Valley and recover the Stormpike Banner. Return the Stormpike Banner to Lieutenant Haggerdin in the Alterac Mountains."
Inst33Quest2_Location = "Lieutenant Haggerdin (Alterac Mountains; "..YELLOW.."39,81"..WHITE..")"
Inst33Quest2_Note = "The Stormpike Banner is in the Icewing Cavern at "..YELLOW.."[11]"..WHITE.." on the Alterac Valley - North map. Talk to the same NPC each time you gain a new Reputation level for an upgraded Insignia.\n\nThe prequest is not necessary to obtain this quest."
Inst33Quest2_Prequest = "The Sovereign Imperative"
Inst33Quest2_Folgequest = "None"
--
Inst33Quest2name1 = "Stormpike Insignia Rank 1"
Inst33Quest2name2 = "The Frostwolf Artichoke"

--Quest 3 Alliance
Inst33Quest3 = "3. The Battle of Alterac"
Inst33Quest3_Aim = "Enter Alterac Valley, defeat the Horde general Drek'thar, and then return to Prospector Stonehewer in the Alterac Mountains."
Inst33Quest3_Location = "Prospector Stonehewer (Alterac Mountains; "..YELLOW.."41,80"..WHITE..") and\n(Alterac Valley - North; "..YELLOW.."[B]"..WHITE..")"
Inst33Quest3_Note = "Drek'thar is at (Alterac Valley - South; "..YELLOW.."[B]"..WHITE.."). He does not actually need to be killed to complete the quest. The battleground just has to be won by your side in any manner.\nAfter turning this quest in, talk to the NPC again for the reward."
Inst33Quest3_Prequest = "None"
Inst33Quest3_Folgequest = "Hero of the Stormpike"
--
Inst33Quest3name1 = "Bloodseeker"
Inst33Quest3name2 = "Ice Barbed Spear"
Inst33Quest3name3 = "Wand of Biting Cold"
Inst33Quest3name4 = "Cold Forged Hammer"

--Quest 4 Alliance
Inst33Quest4 = "4. The Quartermaster"
Inst33Quest4_Aim = "Speak with the Stormpike Quartermaster."
Inst33Quest4_Location = "Mountaineer Boombellow (Alterac Valley - North; "..YELLOW.."Near [3] Before Bridge"..WHITE..")"
Inst33Quest4_Note = "The Stormpike Quartermaster is at (Alterac Valley - North; "..YELLOW.."[7]"..WHITE..") and provides more quests."
Inst33Quest4_Prequest = "None"
Inst33Quest4_Folgequest = "None"
-- No Rewards for this quest

--Quest 5 Alliance
Inst33Quest5 = "5. Coldtooth Supplies"
Inst33Quest5_Aim = "Bring 10 Coldtooth Supplies to the Alliance Quartermaster in Dun Baldar."
Inst33Quest5_Location = "Stormpike Quartermaster (Alterac Valley - North; "..YELLOW.."[7]"..WHITE..")"
Inst33Quest5_Note = "The supplies can be found in the Coldtooth Mine at (Alterac Valley - South; "..YELLOW.."[6]"..WHITE..")."
Inst33Quest5_Prequest = "None"
Inst33Quest5_Folgequest = "None"
-- No Rewards for this quest

--Quest 6 Alliance
Inst33Quest6 = "6. Irondeep Supplies"
Inst33Quest6_Aim = "Bring 10 Irondeep Supplies to the Alliance Quartermaster in Dun Baldar."
Inst33Quest6_Location = "Stormpike Quartermaster (Alterac Valley - North; "..YELLOW.."[7]"..WHITE..")"
Inst33Quest6_Note = "The supplies can be found in the Irondeep Mine at (Alterac Valley - North; "..YELLOW.."[1]"..WHITE..")."
Inst33Quest6_Prequest = "None"
Inst33Quest6_Folgequest = "None"
-- No Rewards for this quest

--Quest 7 Alliance
Inst33Quest7 = "7. Armor Scraps"
Inst33Quest7_Aim = "Bring 20 Armor Scraps to Murgot Deepforge in Dun Baldar."
Inst33Quest7_Location = "Murgot Deepforge (Alterac Valley - North; "..YELLOW.."[4]"..WHITE..")"
Inst33Quest7_Note = "Loot the corpse of enemy players for scraps. The followup is just the same, quest, but repeatable."
Inst33Quest7_Prequest = "None"
Inst33Quest7_Folgequest = "More Armor Scraps"
-- No Rewards for this quest

--Quest 8 Alliance
Inst33Quest8 = "8. Capture a Mine"
Inst33Quest8_Aim = "Capture a mine that the Stormpike does not control, then return to Sergeant Durgen Stormpike in the Alterac Mountains."
Inst33Quest8_Location = "Sergeant Durgen Stormpike (Alterac Mountains; "..YELLOW.."37,77"..WHITE..")"
Inst33Quest8_Note = "To complete the quest, you must kill either Morloch in the Irondeep Mine at (Alterac Valley - North; "..YELLOW.."[1]"..WHITE..") or Taskmaster Snivvle in the Coldtooth Mine at (Alterac Valley - South; "..YELLOW.."[6]"..WHITE..") while the Horde control it."
Inst33Quest8_Prequest = "None"
Inst33Quest8_Folgequest = "None"
-- No Rewards for this quest

--Quest 9 Alliance
Inst33Quest9 = "9. Towers and Bunkers"
Inst33Quest9_Aim = "Destroy the banner at an enemy tower or bunker, then return to Sergeant Durgen Stormpike in the Alterac Mountains."
Inst33Quest9_Location = "Sergeant Durgen Stormpike (Alterac Mountains; "..YELLOW.."37,77"..WHITE..")"
Inst33Quest9_Note = "Reportedly, the Tower or Bunker need not actually be destroyed to complete the quest, just assaulted."
Inst33Quest9_Prequest = "None"
Inst33Quest9_Folgequest = "None"
-- No Rewards for this quest

--Quest 10 Alliance
Inst33Quest10 = "10. Alterac Valley Graveyards"
Inst33Quest10_Aim = "Assault a graveyard, then return to Sergeant Durgen Stormpike in the Alterac Mountains."
Inst33Quest10_Location = "Sergeant Durgen Stormpike (Alterac Mountains; "..YELLOW.."37,77"..WHITE..")"
Inst33Quest10_Note = "Reportedly you do not need to do anything but be near a graveyard when the Alliance assaults it. It does not need to be captured, just assaulted."
Inst33Quest10_Prequest = "None"
Inst33Quest10_Folgequest = "None"
-- No Rewards for this quest

--Quest 11 Alliance
Inst33Quest11 = "11. Empty Stables"
Inst33Quest11_Aim = "Locate an Alterac Ram in Alterac Valley. Use the Stormpike Training Collar when you are near the Alterac Ram to 'tame' the beast. Once tamed, the Alterac Ram will follow you back to the Stable Master. Speak with the Stable Master to earn credit for the capture."
Inst33Quest11_Location = "Stormpike Stable Master (Alterac Valley - North; "..YELLOW.."[6]"..WHITE..")"
Inst33Quest11_Note = "You can find a Ram outside the base. The taming process is just like that of a Hunter taming a pet. The quest is repeatable up to a total of 25 times per battleground by the same player or players. After 25 Rams have been tamed, the Stormpike Cavalry will arrive to assist in the battle."
Inst33Quest11_Prequest = "None"
Inst33Quest11_Folgequest = "None"
-- No Rewards for this quest

--Quest 12 Alliance
Inst33Quest12 = "12. Ram Riding Harnesses"
Inst33Quest12_Aim = "You must strike at our enemy's base, slaying the frostwolves they use as mounts and taking their hides. Return their hides to me so that harnesses may be made for the cavalry. Go!"
Inst33Quest12_Location = "Stormpike Ram Rider Commander (Alterac Valley - North; "..YELLOW.."[6]"..WHITE..")"
Inst33Quest12_Note = "Frostwolves can be found in the southern area of Alterac Valley."
Inst33Quest12_Prequest = "None"
Inst33Quest12_Folgequest = "None"
-- No Rewards for this quest

--Quest 13 Alliance
Inst33Quest13 = "13. Crystal Cluster"
Inst33Quest13_Aim = "There are times which you may be entrenched in battle for days or weeks on end. During those longer periods of activity you may end up collecting large clusters of the Frostwolf's storm crystals.\n\nThe Circle accepts such offerings."
Inst33Quest13_Location = "Arch Druid Renferal (Alterac Valley - North; "..YELLOW.."[2]"..WHITE..")"
Inst33Quest13_Note = "After turning in 200 or so crystals, Arch Druid Renferal will begin walking towards (Alterac Valley - North; "..YELLOW.."[19]"..WHITE.."). Once there, she will begin a summoning ritual which will require 10 people to assist. If successful, Ivus the Forest Lord will be summoned to help the battle."
Inst33Quest13_Prequest = "None"
Inst33Quest13_Folgequest = "None"
-- No Rewards for this quest

--Quest 14 Alliance
Inst33Quest14 = "14. Ivus the Forest Lord"
Inst33Quest14_Aim = "The Frostwolf Clan is protected by a taint of elemental energy. Their shaman meddle in powers that will surely destroy us all if left unchecked.\n\nThe Frostwolf soldiers carry elemental charms called storm crystals. We can use the charms to conjure Ivus. Venture forth and claim the crystals."
Inst33Quest14_Location = "Arch Druid Renferal (Alterac Valley - North; "..YELLOW.."[2]"..WHITE..")"
Inst33Quest14_Note = "After turning in 200 or so crystals, Arch Druid Renferal will begin walking towards (Alterac Valley - North; "..YELLOW.."[19]"..WHITE.."). Once there, she will begin a summoning ritual which will require 10 people to assist. If successful, Ivus the Forest Lord will be summoned to help the battle."
Inst33Quest14_Prequest = "None"
Inst33Quest14_Folgequest = "None"
-- No Rewards for this quest

--Quest 15 Alliance
Inst33Quest15 = "15. Call of Air - Slidore's Fleet"
Inst33Quest15_Aim = "My gryphons are poised to strike at the front lines but cannot make the attack until the lines are thinned out.\n\nThe Frostwolf warriors charged with holding the front lines wear medals of service proudly upon their chests. Rip those medals off their rotten corpses and bring them back here.\n\nOnce the front line is sufficiently thinned out, I will make the call to air! Death from above!"
Inst33Quest15_Location = "Wing Commander Slidore (Alterac Valley - North; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest15_Note = "Kill Horde NPCs for the Frostwolf Soldier's Medal."
Inst33Quest15_Prequest = "None"
Inst33Quest15_Folgequest = "None"
-- No Rewards for this quest

--Quest 16 Alliance
Inst33Quest16 = "16. Call of Air - Vipore's Fleet"
Inst33Quest16_Aim = "The elite Frostwolf units that guard the lines must be dealt with, soldier! I'm tasking you with thinning out that herd of savages. Return to me with medals from their lieutenants and legionnaires. When I feel that enough of the riff-raff has been dealt with, I'll deploy the air strike."
Inst33Quest16_Location = "Wing Commander Vipore (Alterac Valley - North; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest16_Note = "Kill Horde NPCs for the Frostwolf Lieutenant's Medal."
Inst33Quest16_Prequest = "None"
Inst33Quest16_Folgequest = "None"
-- No Rewards for this quest

--Quest 17 Alliance
Inst33Quest17 = "17. Call of Air - Ichman's Fleet"
Inst33Quest17_Aim = "Return to the battlefield and strike at the heart of the Frostwolf's command. Take down their commanders and guardians. Return to me with as many of their medals as you can stuff in your pack! I promise you, when my gryphons see the bounty and smell the blood of our enemies, they will fly again! Go now!"
Inst33Quest17_Location = "Wing Commander Ichman (Alterac Valley - North; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest17_Note = "Kill Horde NPCs for the Frostwolf Commander's Medals. After turning in 50, Wing Commander Ichman will either send a gryphon to attack the Horde base or give you a beacon to plant in the Snowfall Graveyard. If the beacon is protected long enough a gryphon will come to defend it."
Inst33Quest17_Prequest = "None"
Inst33Quest17_Folgequest = "None"
-- No Rewards for this quest


--Quest 1 Horde
Inst33Quest1_HORDE = "1. In Defense of Frostwolf"
Inst33Quest1_HORDE_Aim = "Venture to Alterac Valley, located in the Alterac Mountains. Find and speak with Warmaster Laggrond - who stands outside the tunnel entrance - to begin your career as a soldier of Frostwolf. You will find Alterac Valley north of Tarren Mill at the base of the Alterac Mountains."
Inst33Quest1_HORDE_Location = "Frostwolf Ambassador Rokhstrom (Orgrimmar - Valley of Strength "..YELLOW.."50,71"..WHITE..")"
Inst33Quest1_HORDE_Note = "Warmaster Laggrond is at (Alterac Mountains; "..YELLOW.."62,59"..WHITE..")."
Inst33Quest1_HORDE_Prequest = "None"
Inst33Quest1_HORDE_Folgequest = "Proving Grounds"
-- No Rewards for this quest

--Quest 2 Horde
Inst33Quest2_HORDE = "2. Proving Grounds"
Inst33Quest2_HORDE_Aim = "Travel to the Wildpaw cavern located southeast of the main base in Alterac Valley and find the Frostwolf Banner. Return the Frostwolf Banner to Warmaster Laggrond."
Inst33Quest2_HORDE_Location = "Warmaster Laggrond (Alterac Mountains; "..YELLOW.."62,59"..WHITE..")"
Inst33Quest2_HORDE_Note = "The Frostwolf Banner is in the Wildpaw Cavern at (Alterac Valley - South; "..YELLOW.."[15]"..WHITE.."). Talk to the same NPC each time you gain a new Reputation level for an upgraded Insignia.\n\nThe prequest is not necessary to obtain this quest."
Inst33Quest2_HORDE_Prequest = "In Defense of Frostwolf"
Inst33Quest2_HORDE_Folgequest = "None"
--
Inst33Quest2name1_HORDE = "Frostwolf Insignia Rank 1"
Inst33Quest2name2_HORDE = "Peeling the Onion"

--Quest 3 Horde
Inst33Quest3_HORDE = "3. The Battle for Alterac"
Inst33Quest3_HORDE_Aim = "Enter Alterac Valley and defeat the dwarven general, Vanndar Stormpike. Then, return to Voggah Deathgrip in the Alterac Mountains."
Inst33Quest3_HORDE_Location = "Voggah Deathgrip (Alterac Mountains; "..YELLOW.."64,60"..WHITE..")"
Inst33Quest3_HORDE_Note = "Vanndar Stormpike is at (Alterac Valley - North; "..YELLOW.."[B]"..WHITE.."). He does not actually need to be killed to complete the quest. The battleground just has to be won by your side in any manner.\nAfter turning this quest in, talk to the NPC again for the reward."
Inst33Quest3_HORDE_Prequest = "None"
Inst33Quest3_HORDE_Folgequest = "Hero of the Frostwolf"
--
Inst33Quest3name1_HORDE = "Bloodseeker"
Inst33Quest3name2_HORDE = "Ice Barbed Spear"
Inst33Quest3name3_HORDE = "Wand of Biting Cold"
Inst33Quest3name4_HORDE = "Cold Forged Hammer"

--Quest 4 Horde
Inst33Quest4_HORDE = "4. Speak with our Quartermaster"
Inst33Quest4_HORDE_Aim = "Speak with the Frostwolf Quartermaster."
Inst33Quest4_HORDE_Location = "Jotek (Alterac Valley - South; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest4_HORDE_Note = "The Frostwolf Quartermaster is at "..YELLOW.."[10]"..WHITE.." and provides more quests."
Inst33Quest4_HORDE_Prequest = "None"
Inst33Quest4_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 5 Horde
Inst33Quest5_HORDE = "5. Coldtooth Supplies"
Inst33Quest5_HORDE_Aim = "Bring 10 Coldtooth Supplies to the Horde Quatermaster in Frostwolf Keep."
Inst33Quest5_HORDE_Location = "Frostwolf Quartermaster (Alterac Valley - South; "..YELLOW.."[10]"..WHITE..")"
Inst33Quest5_HORDE_Note = "The supplies can be found in the Coldtooth Mine at (Alterac Valley - South; "..YELLOW.."[6]"..WHITE..")."
Inst33Quest5_HORDE_Prequest = "None"
Inst33Quest5_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 6 Horde
Inst33Quest6_HORDE = "6. Irondeep Supplies"
Inst33Quest6_HORDE_Aim = "Bring 10 Irondeep Supplies to the Horde Quartermaster in Frostwolf Keep."
Inst33Quest6_HORDE_Location = "Frostwolf Quartermaster (Alterac Valley - South; "..YELLOW.."[10]"..WHITE..")"
Inst33Quest6_HORDE_Note = "The supplies can be found in the Irondeep Mine at (Alterac Valley - North; "..YELLOW.."[1]"..WHITE..")."
Inst33Quest6_HORDE_Prequest = "None"
Inst33Quest6_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 7 Horde
Inst33Quest7_HORDE = "7. Enemy Booty"
Inst33Quest7_HORDE_Aim = "Bring 20 Armor Scraps to Smith Regzar in Frostwolf Village."
Inst33Quest7_HORDE_Location = "Smith Regzar (Alterac Valley - South; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest7_HORDE_Note = "Loot the corpse of enemy players for scraps. The followup is just the same, quest, but repeatable."
Inst33Quest7_HORDE_Prequest = "None"
Inst33Quest7_HORDE_Folgequest = "More Booty!"
-- No Rewards for this quest

--Quest 8 Horde
Inst33Quest8_HORDE = "8. Capture a Mine"
Inst33Quest8_HORDE_Aim = "Capture a mine, then return to Corporal Teeka Bloodsnarl in the Alterac Mountains."
Inst33Quest8_HORDE_Location = "Corporal Teeka Bloodsnarl (Alterac Mountains; "..YELLOW.."66,55"..WHITE..")"
Inst33Quest8_HORDE_Note = "To complete the quest, you must kill either Morloch in the Irondeep Mine at (Alterac Valley - North; "..YELLOW.."[1]"..WHITE..") or Taskmaster Snivvle in the Coldtooth Mine at (Alterac Valley - South; "..YELLOW.."[6]"..WHITE..") while the Alliance control it."
Inst33Quest8_HORDE_Prequest = "None"
Inst33Quest8_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 9 Horde
Inst33Quest9_HORDE = "9. Towers and Bunkers"
Inst33Quest9_HORDE_Aim = "Capture an enemy tower, then return to Corporal Teeka Bloodsnarl in the Alterac Mountains."
Inst33Quest9_HORDE_Location = "Corporal Teeka Bloodsnarl (Alterac Mountains; "..YELLOW.."66,55"..WHITE..")"
Inst33Quest9_HORDE_Note = "Reportedly, the Tower or Bunker need not actually be destroyed to complete the quest, just assaulted."
Inst33Quest9_HORDE_Prequest = "None"
Inst33Quest9_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 10 Horde
Inst33Quest10_HORDE = "10. The Graveyards of Alterac"
Inst33Quest10_HORDE_Aim = "Assault a graveyard, then return to Corporal Teeka Bloodsnarl in the Alterac Mountains."
Inst33Quest10_HORDE_Location = "Corporal Teeka Bloodsnarl (Alterac Mountains; "..YELLOW.."66,55"..WHITE..")"
Inst33Quest10_HORDE_Note = "Reportedly you do not need to do anything but be near a graveyard when the Horde assaults it. It does not need to be captured, just assaulted."
Inst33Quest10_HORDE_Prequest = "None"
Inst33Quest10_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 11 Horde
Inst33Quest11_HORDE = "11. Empty Stables"
Inst33Quest11_HORDE_Aim = "Locate a Frostwolf in Alterac Valley. Use the Frostwolf Muzzle when you are near the Frostwolf to 'tame' the beast. Once tamed, the Frostwolf will follow you back to the Frostwolf Stable Master. Speak with the Frostwolf Stable Master to earn credit for the capture."
Inst33Quest11_HORDE_Location = "Frostwolf Stable Master (Alterac Valley - South; "..YELLOW.."[9]"..WHITE..")"
Inst33Quest11_HORDE_Note = "You can find a Frostwolf outside the base. The taming process is just like that of a Hunter taming a pet. The quest is repeatable up to a total of 25 times per battleground by the same player or players. After 25 Rams have been tamed, the Frostwolf Cavalry will arrive to assist in the battle."
Inst33Quest11_HORDE_Prequest = "None"
Inst33Quest11_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 12 Horde
Inst33Quest12_HORDE = "12. Ram Hide Harnesses"
Inst33Quest12_HORDE_Aim = "You must strike at the indigenous rams of the region. The very same rams that the Stormpike cavalry uses as mounts!\n\nSlay them and return to me with their hides. Once we have gathered enough hides, we will fashion harnesses for the riders. The Frostwolf Wolf Riders will ride once more!"
Inst33Quest12_HORDE_Location = "Frostwolf Wolf Rider Commander (Alterac Valley - South; "..YELLOW.."[9]"..WHITE..")"
Inst33Quest12_HORDE_Note = "The Rams can be found in the northern area of Alterac Valley."
Inst33Quest12_HORDE_Prequest = "None"
Inst33Quest12_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 13 Horde
Inst33Quest13_HORDE = "13. A Gallon of Blood"
Inst33Quest13_HORDE_Aim = "You have the option of offering larger quantities of the blood taken from our enemies. I will be glad to accept gallon sized offerings."
Inst33Quest13_HORDE_Location = "Primalist Thurloga (Alterac Valley - South; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest13_HORDE_Note = "After turning in 150 or so Blood, Primalist Thurloga will begin walking towards (Alterac Valley - South; "..YELLOW.."[1]"..WHITE.."). Once there, she will begin a summoning ritual which will require 10 people to assist. If successful, Lokholar the Ice Lord will be summoned to kill Alliance players."
Inst33Quest13_HORDE_Prequest = "None"
Inst33Quest13_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 14 Horde
Inst33Quest14_HORDE = "14. Lokholar the Ice Lord"
Inst33Quest14_HORDE_Aim = "You must strike down our enemies and bring to me their blood. Once enough blood has been gathered, the ritual of summoning may begin.\n\nVictory will be assured when the elemental lord is loosed upon the Stormpike army."
Inst33Quest14_HORDE_Location = "Primalist Thurloga (Alterac Valley - South; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest14_HORDE_Note = "After turning in 150 or so Blood, Primalist Thurloga will begin walking towards (Alterac Valley - South; "..YELLOW.."[1]"..WHITE.."). Once there, she will begin a summoning ritual which will require 10 people to assist. If successful, Lokholar the Ice Lord will be summoned to kill Alliance players."
Inst33Quest14_HORDE_Prequest = "None"
Inst33Quest14_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 15 Horde
Inst33Quest15_HORDE = "15. Call of Air - Guse's Fleet"
Inst33Quest15_HORDE_Aim = "My riders are set to make a strike on the central battlefield; but first, I must wet their appetites - preparing them for the assault.\n\nI need enough Stormpike Soldier Flesh to feed a fleet! Hundreds of pounds! Surely you can handle that, yes? Get going!"
Inst33Quest15_HORDE_Location = "Wing Commander Guse (Alterac Valley - South; "..YELLOW.."[13]"..WHITE..")"
Inst33Quest15_HORDE_Note = "Kill Horde NPCs for the Stormpike Soldier's Flesh. Reportedly 90 flesh are needed to make the Wing Commander do whatever she does."
Inst33Quest15_HORDE_Prequest = "None"
Inst33Quest15_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 16 Horde
Inst33Quest16_HORDE = "16. Call of Air - Jeztor's Fleet"
Inst33Quest16_HORDE_Aim = "My War Riders must taste in the flesh of their targets. This will ensure a surgical strike against our enemies!\n\nMy fleet is the second most powerful in our air command. Thusly, they will strike at the more powerful of our adversaries. For this, then, they need the flesh of the Stormpike Lieutenants."
Inst33Quest16_HORDE_Location = "Wing Commander Jeztor (Alterac Valley - South; "..YELLOW.."[13]"..WHITE..")"
Inst33Quest16_HORDE_Note = "Kill Alliance NPCs for the Stormpike Lieutenant's Flesh."
Inst33Quest16_HORDE_Prequest = "None"
Inst33Quest16_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 17 Horde
Inst33Quest17_HORDE = "17. Call of Air - Mulverick's Fleet"
Inst33Quest17_HORDE_Aim = "First, my war riders need targets to gun for - high priority targets. I'm going to need to feed them the flesh of Stormpike Commanders. Unfortunately, those little buggers are entrenched deep behind enemy lines! You've definitely got your work cut out for you."
Inst33Quest17_HORDE_Location = "Wing Commander Mulverick (Alterac Valley - South; "..YELLOW.."[13]"..WHITE..")"
Inst33Quest17_HORDE_Note = "Kill Alliance NPCs for the Stormpike Commander's Flesh."
Inst33Quest17_HORDE_Prequest = "None"
Inst33Quest17_HORDE_Folgequest = "None"
-- No Rewards for this quest



--------------- INST34 - Arathi Basin ---------------

Inst34Caption = "Arathi Basin"
Inst34QAA = "3 Quests"
Inst34QAH = "3 Quests"

--Quest 1 Alliance
Inst34Quest1 = "1. The Battle for Arathi Basin!"
Inst34Quest1_Aim = "Assault the mine, the lumber mill, the blacksmith and the farm, then return to Field Marshal Oslight in Refuge Pointe."
Inst34Quest1_Location = "Field Marshal Oslight (Arathi Highlands - Refuge Pointe; "..YELLOW.."46,45"..WHITE..")"
Inst34Quest1_Note = "The locations to be assaulted are marked on the map as 2 through 5."
Inst34Quest1_Prequest = "None"
Inst34Quest1_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Alliance
Inst34Quest2 = "2. Control Four Bases"
Inst34Quest2_Aim = "Enter Arathi Basin, capture and control four bases at the same time, and then return to Field Marshal Oslight at Refuge Pointe."
Inst34Quest2_Location = "Field Marshal Oslight (Arathi Highlands - Refuge Pointe; "..YELLOW.."46,45"..WHITE..")"
Inst34Quest2_Note = "You need to be Friendly with the League of Arathor to get this quest."
Inst34Quest2_Prequest = "None"
Inst34Quest2_Folgequest = "None"
-- No Rewards for this quest

--Quest 3 Alliance
Inst34Quest3 = "3. Control Five Bases"
Inst34Quest3_Aim = "Control 5 bases in Arathi Basin at the same time, then return to Field Marshal Oslight at Refuge Pointe."
Inst34Quest3_Location = "Field Marshal Oslight (Arathi Highlands - Refuge Pointe; "..YELLOW.."46,45"..WHITE..")"
Inst34Quest3_Note = "You need to be Exalted with the League of Arathor to get this quest."
Inst34Quest3_Prequest = "None"
Inst34Quest3_Folgequest = "None"
--
Inst34Quest3name1 = "Arathor Battle Tabard"


--Quest 1 Horde
Inst34Quest1_HORDE = "1. The Battle for Arathi Basin!"
Inst34Quest1_HORDE_Aim = "Assault the Arathi Basin mine, lumber mill, blacksmith and stable, and then return to Deathmaster Dwire in Hammerfall."
Inst34Quest1_HORDE_Location = "Deathmaster Dwire (Arathi Highlands - Hammerfall; "..YELLOW.."74,35"..WHITE..")"
Inst34Quest1_HORDE_Note = "The locations to be assaulted are marked on the map as 1 through 4."
Inst34Quest1_HORDE_Prequest = "None"
Inst34Quest1_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Horde
Inst34Quest2_HORDE = "2. Take Four Bases"
Inst34Quest2_HORDE_Aim = "Hold four bases at the same time in Arathi Basin, and then return to Deathmaster Dwire in Hammerfall."
Inst34Quest2_HORDE_Location = "Deathmaster Dwire (Arathi Highlands - Hammerfall; "..YELLOW.."74,35"..WHITE..")"
Inst34Quest2_HORDE_Note = "You need to be Friendly with The Defilers to get this quest."
Inst34Quest2_HORDE_Prequest = "None"
Inst34Quest2_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 3 Horde
Inst34Quest3_HORDE = "3. Take Five Bases"
Inst34Quest3_HORDE_Aim = "Hold five bases in Arathi Basin at the same time, then return to Deathmaster Dwire in Hammerfall."
Inst34Quest3_HORDE_Location = "Deathmaster Dwire (Arathi Highlands - Hammerfall; "..YELLOW.."74,35"..WHITE..")"
Inst34Quest3_HORDE_Note = "You need to be Exalted with The Defilers to get this quest."
Inst34Quest3_HORDE_Prequest = "None"
Inst34Quest3_HORDE_Folgequest = "None"
--
Inst34Quest3name1_HORDE = "Battle Tabard of the Defilers"



--------------- INST35 - Warsong Gulch ---------------

Inst35Caption = "Warsong Gulch"
Inst35QAA = "No Quests"
Inst35QAH = "No Quests"




---------------------------------------------------
---------------- OUTDOOR RAIDS --------------------
---------------------------------------------------



--------------- INST36 - Dragons of Nightmare ---------------

Inst36Caption = "Dragons of Nightmare"
Inst36QAA = "1 Quest"
Inst36QAH = "1 Quest"

--Quest 1 Alliance
Inst36Quest1 = "1. Shrouded in Nightmare"
Inst36Quest1_Aim = "Find someone capable of deciphering the meaning behind the Nightmare Engulfed Object.\n\nPerhaps a druid of great power could assist you."
Inst36Quest1_Location = "Nightmare Engulfed Object (drops from Emeriss, Taerar, Lethon or Ysondre)"
Inst36Quest1_Note = "Quest turns in to Keeper Remulos at (Moonglade - Shrine of Remulos; "..YELLOW.."36,41"..WHITE.."). Reward listed is for the followup."
Inst36Quest1_Prequest = "None"
Inst36Quest1_Folgequest = "Waking Legends"
--
Inst36Quest1name1 = "Malfurion's Signet Ring"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst36Quest1_HORDE = Inst36Quest1
Inst36Quest1_HORDE_Aim = Inst36Quest1_Aim
Inst36Quest1_HORDE_Location = Inst36Quest1_Location
Inst36Quest1_HORDE_Note = Inst36Quest1_Note
Inst36Quest1_HORDE_Prequest = Inst36Quest1_Prequest
Inst36Quest1_HORDE_Folgequest = Inst36Quest1_Folgequest
--
Inst36Quest1name1_HORDE = Inst36Quest1name1



--------------- INST37 - Azuregos ---------------

Inst37Caption = "Azuregos"
Inst37QAA = "1 Quest"
Inst37QAH = "1 Quest"

--Quest 1 Alliance
Inst37Quest1 = "1. Ancient Sinew Wrapped Lamina (Hunter)"
Inst37Quest1_Aim = "Hastat the Ancient has asked that you bring him a Mature Blue Dragon Sinew. Should you find this sinew, return it to Hastat in Felwood."
Inst37Quest1_Location = "Hastat the Ancient (Felwood - Irontree Woods; "..YELLOW.."48,24"..WHITE..")"
Inst37Quest1_Note = "Kill Azuregos to get the Mature Blue Dragon Sinew. He walks around the middle of the southern peninsula in Azshara near "..YELLOW.."[1]"..WHITE.."."
Inst37Quest1_Prequest = "The Ancient Leaf ("..YELLOW.."Molten Core"..WHITE..")"
Inst37Quest1_Folgequest = "None"
--
Inst37Quest1name1 = "Ancient Sinew Wrapped Lamina"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst37Quest1_HORDE = Inst37Quest1
Inst37Quest1_HORDE_Aim = Inst37Quest1_Aim
Inst37Quest1_HORDE_Location = Inst37Quest1_Location
Inst37Quest1_HORDE_Note = Inst37Quest1_Note
Inst37Quest1_HORDE_Prequest = Inst37Quest1_Prequest
Inst37Quest1_HORDE_Folgequest = Inst37Quest1_Folgequest
--
Inst37Quest1name1_HORDE = Inst37Quest1name1



--------------- INST38 - Highlord Kruul ---------------

Inst38Caption = "Highlord Kruul"
Inst38QAA = "No Quests"
Inst38QAH = "No Quests"



-- End of File
