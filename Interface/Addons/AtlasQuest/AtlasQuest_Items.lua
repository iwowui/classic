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


--**********************************************************
--* Here i store every information about the Questrewards  *
--* (expect the name).                                     *
--* Informations stored: Rewards(Yes/NO)                   *
--* Itemcolor(grey, white, green, blue, purple, red),      *
--* and a link(translation issue) to the Item description  *
--**********************************************************

--Color
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local RED = "|cffff0000";

-- Item Color
local Itemc1 = "|cff9d9d9d" --grey
local Itemc2 = "|cffFFFFFF" --white
local Itemc3 = "|cff1eff00" --green
local Itemc4 = "|cff0070dd" --blue
local Itemc5 = "|cffa335ee" --purple
local Itemc6 = "|cffFF8000" --orange
local Itemc7 = "|cffFF0000" --red
--
local Itemc8 = "|cffFFd200" --ingame yellow




----------------------------------------------
---------------- DUNGEONS --------------------
----------------------------------------------



--------------- INST1 - Blackrock Depths ---------------

--Quest 1 Alliance
Inst1Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst1Quest1ITC1 = Itemc2;
Inst1Quest1description1 = AQITEM_KEY
Inst1Quest1ID1 = "11000"

--Quest 2 Alliance
Inst1Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst1Quest2ITC1 = Itemc3;
Inst1Quest2description1 = AQITEM_FEET..AQITEM_CLOTH
Inst1Quest2ID1 = "11865"
--ITEM2
Inst1Quest2ITC2 = Itemc3;
Inst1Quest2description2 = AQITEM_SHOULDER..AQITEM_LEATHER
Inst1Quest2ID2 = "11963"
--ITEM3
Inst1Quest2ITC3 = Itemc3;
Inst1Quest2description3 = AQITEM_CHEST..AQITEM_MAIL
Inst1Quest2ID3 = "12049"

--Quest 3 Alliance
Inst1Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst1Quest3ITC1 = Itemc4;
Inst1Quest3description1 = AQITEM_WRIST..AQITEM_CLOTH
Inst1Quest3ID1 = "11962"
--ITEM2
Inst1Quest3ITC2 = Itemc4;
Inst1Quest3description2 = AQITEM_WAIST..AQITEM_LEATHER
Inst1Quest3ID2 = "11866"

--Quest 4 Alliance
Inst1Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1(x10)"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst1Quest4ITC1 = Itemc2;
Inst1Quest4description1 = AQITEM_POTION
Inst1Quest4ID1 = "12003"
--ITEM2
Inst1Quest4ITC2 = Itemc3;
Inst1Quest4description2 = AQITEM_MAINHAND..AQITEM_MACE
Inst1Quest4ID2 = "11964"
--ITEM3
Inst1Quest4ITC3 = Itemc3;
Inst1Quest4description3 = AQITEM_TWOHAND..AQITEM_AXE
Inst1Quest4ID3 = "12000"

--Quest 5 Alliance
Inst1Quest5Rewardtext = AQNoReward

--Quest 6 Alliance
Inst1Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst1Quest6ITC1 = Itemc3;
Inst1Quest6description1 = AQITEM_BACK
Inst1Quest6ID1 = "12113"
--ITEM2
Inst1Quest6ITC2 = Itemc3;
Inst1Quest6description2 = AQITEM_HANDS..AQITEM_LEATHER
Inst1Quest6ID2 = "12114"
--ITEM3
Inst1Quest6ITC3 = Itemc3;
Inst1Quest6description3 = AQITEM_WRIST..AQITEM_MAIL
Inst1Quest6ID3 = "12112"
--ITEM4
Inst1Quest6ITC4 = Itemc3;
Inst1Quest6description4 = AQITEM_WAIST..AQITEM_PLATE
Inst1Quest6ID4 = "12115"

--Quest 7 Alliance
Inst1Quest7Rewardtext = AQNoReward

--Quest 8 Alliance
Inst1Quest8Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst1Quest8ITC1 = Itemc2;
Inst1Quest8description1 = AQITEM_ITEM
Inst1Quest8ID1 = "11883"


--Quest 9 Alliance
Inst1Quest9Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst1Quest9ITC1 = Itemc3;
Inst1Quest9description1 = AQITEM_BACK
Inst1Quest9ID1 = "12066"
--ITEM2
Inst1Quest9ITC2 = Itemc3;
Inst1Quest9description2 = AQITEM_SHOULDER..AQITEM_LEATHER
Inst1Quest9ID2 = "12082"
--ITEM3
Inst1Quest9ITC3 = Itemc3;
Inst1Quest9description3 = AQITEM_WAIST..AQITEM_CLOTH
Inst1Quest9ID3 = "12083"

--Quest 10 Alliance
Inst1Quest10Rewardtext = AQNoReward

--Quest 11 Alliance
Inst1Quest11Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst1Quest11ITC1 = Itemc4;
Inst1Quest11description1 = AQITEM_RING
Inst1Quest11ID1 = "12548"
--ITEM2
Inst1Quest11ITC2 = Itemc4;
Inst1Quest11description2 = AQITEM_RING
Inst1Quest11ID2 = "12543"

--Quest 12 Alliance
Inst1Quest12Rewardtext = AQNoReward

--Quest 13 Alliance
Inst1Quest13Rewardtext = AQNoReward

--Quest 14 Alliance
Inst1Quest14Rewardtext = AQNoReward

--Quest 15 Alliance
Inst1Quest15Rewardtext = AQNoReward

--Quest 16 Alliance
Inst1Quest16Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst1Quest16ITC1 = Itemc3;
Inst1Quest16description1 = AQITEM_HEAD..AQITEM_MAIL
Inst1Quest16ID1 = "12018"
--ITEM2
Inst1Quest16ITC2 = Itemc3;
Inst1Quest16description2 = AQITEM_FEET..AQITEM_PLATE
Inst1Quest16ID2 = "12021"
--ITEM3
Inst1Quest16ITC3 = Itemc3;
Inst1Quest16description3 = AQITEM_LEGS..AQITEM_LEATHER
Inst1Quest16ID3 = "12041"

--Quest 17 Alliance
Inst1Quest17Rewardtext = AQNoReward

--Quest 18 Alliance
Inst1Quest18Rewardtext = AQNoReward

--Quest 19 Alliance
Inst1Quest19Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst1Quest19ITC1 = Itemc3;
Inst1Quest19description1 = AQITEM_TRINKET
Inst1Quest19ID1 = "12065"
--ITEM2
Inst1Quest19ITC2 = Itemc3;
Inst1Quest19description2 = AQITEM_ONEHAND..AQITEM_SWORD
Inst1Quest19ID2 = "12061"
--ITEM3
Inst1Quest19ITC3 = Itemc3;
Inst1Quest19description3 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst1Quest19ID3 = "12062"


--Quest 1 Horde
Inst1Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst1Quest1ITC1_HORDE = Itemc2;
Inst1Quest1description1_HORDE = AQITEM_KEY
Inst1Quest1ID1_HORDE = "11000"

--Quest 2 Horde
Inst1Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst1Quest2ITC1_HORDE = Itemc3;
Inst1Quest2description1_HORDE = AQITEM_FEET..AQITEM_CLOTH
Inst1Quest2ID1_HORDE = "11865"
--ITEM2
Inst1Quest2ITC2_HORDE = Itemc3;
Inst1Quest2description2_HORDE = AQITEM_SHOULDER..AQITEM_LEATHER
Inst1Quest2ID2_HORDE = "11963"
--ITEM3
Inst1Quest2ITC3_HORDE = Itemc3;
Inst1Quest2description3_HORDE = AQITEM_CHEST..AQITEM_MAIL
Inst1Quest2ID3_HORDE = "12049"

--Quest 3 Horde
Inst1Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst1Quest3ITC1_HORDE = Itemc4;
Inst1Quest3description1_HORDE = AQITEM_WRIST..AQITEM_CLOTH
Inst1Quest3ID1_HORDE = "11962"
--ITEM2
Inst1Quest3ITC2_HORDE = Itemc4;
Inst1Quest3description2_HORDE = AQITEM_WAIST..AQITEM_LEATHER
Inst1Quest3ID2_HORDE = "11866"

--Quest 4 Horde
Inst1Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1(x5)"..AQDiscription_AND..WHITE.."2(x5)"..AQDiscription_AND..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst1Quest4ITC1_HORDE = Itemc2;
Inst1Quest4description1_HORDE = AQITEM_POTION
Inst1Quest4ID1_HORDE = "3928"
--ITEM2
Inst1Quest4ITC2_HORDE = Itemc2;
Inst1Quest4description2_HORDE = AQITEM_POTION
Inst1Quest4ID2_HORDE = "6149"
--ITEM3
Inst1Quest4ITC3_HORDE = Itemc3;
Inst1Quest4description3_HORDE = AQITEM_MAINHAND..AQITEM_MACE
Inst1Quest4ID3_HORDE = "11964"
--ITEM4
Inst1Quest4ITC4_HORDE = Itemc3;
Inst1Quest4description4_HORDE = AQITEM_TWOHAND..AQITEM_AXE
Inst1Quest4ID4_HORDE = "12000"

--Quest 5 Horde
Inst1Quest5Rewardtext_HORDE = AQNoReward

--Quest 6 Horde
Inst1Quest6Rewardtext_HORDE = AQNoReward

--Quest 7 Horde
Inst1Quest7Rewardtext_HORDE = AQNoReward

--Quest 8 Horde
Inst1Quest8Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst1Quest8ITC1_HORDE = Itemc4;
Inst1Quest8description1_HORDE = AQITEM_NECK
Inst1Quest8ID1_HORDE = "12059"

--Quest 9 Horde
Inst1Quest9Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst1Quest9ITC1_HORDE = Itemc3;
Inst1Quest9description1_HORDE = AQITEM_BACK
Inst1Quest9ID1_HORDE = "12109"
--ITEM2
Inst1Quest9ITC2_HORDE = Itemc3;
Inst1Quest9description2_HORDE = AQITEM_BACK
Inst1Quest9ID2_HORDE = "12110"
--ITEM3
Inst1Quest9ITC3_HORDE = Itemc3;
Inst1Quest9description3_HORDE = AQITEM_CHEST..AQITEM_MAIL
Inst1Quest9ID3_HORDE = "12108"
--ITEM4
Inst1Quest9ITC4_HORDE = Itemc3;
Inst1Quest9description4_HORDE = AQITEM_HANDS..AQITEM_PLATE
Inst1Quest9ID4_HORDE = "12111"

--Quest 10 Horde
Inst1Quest10Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst1Quest10ITC1_HORDE = Itemc3;
Inst1Quest10description1_HORDE = AQITEM_BACK
Inst1Quest10ID1_HORDE = "12066"
--ITEM2
Inst1Quest10ITC2_HORDE = Itemc3;
Inst1Quest10description2_HORDE = AQITEM_SHOULDER..AQITEM_LEATHER
Inst1Quest10ID2_HORDE = "12082"
--ITEM3
Inst1Quest10ITC3_HORDE = Itemc3;
Inst1Quest10description3_HORDE = AQITEM_WAIST..AQITEM_CLOTH
Inst1Quest10ID3_HORDE = "12083"

--Quest 11 Horde
Inst1Quest11Rewardtext_HORDE = AQNoReward

--Quest 12 Horde
Inst1Quest12Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst1Quest12ITC1_HORDE = Itemc3;
Inst1Quest12description1_HORDE = AQITEM_BACK
Inst1Quest12ID1_HORDE = "12113"
--ITEM2
Inst1Quest12ITC2_HORDE = Itemc3;
Inst1Quest12description2_HORDE = AQITEM_HANDS..AQITEM_LEATHER
Inst1Quest12ID2_HORDE = "12114"
--ITEM3
Inst1Quest12ITC3_HORDE = Itemc3;
Inst1Quest12description3_HORDE = AQITEM_WRIST..AQITEM_MAIL
Inst1Quest12ID3_HORDE = "12112"
--ITEM4
Inst1Quest12ITC4_HORDE = Itemc3;
Inst1Quest12description4_HORDE = AQITEM_WAIST..AQITEM_PLATE
Inst1Quest12ID4_HORDE = "12115"

--Quest 13 Horde
Inst1Quest13Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst1Quest13ITC1_HORDE = Itemc3;
Inst1Quest13description1_HORDE = AQITEM_RING
Inst1Quest13ID1_HORDE = "12038"

--Quest 14 Horde
Inst1Quest14Rewardtext_HORDE = AQNoReward

--Quest 15 Horde
Inst1Quest15Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst1Quest15ITC1_HORDE = Itemc4;
Inst1Quest15description1_HORDE = AQITEM_RING
Inst1Quest15ID1_HORDE = "12544"
--ITEM2
Inst1Quest15ITC2_HORDE = Itemc4;
Inst1Quest15description2_HORDE = AQITEM_RING
Inst1Quest15ID2_HORDE = "12545"

--Quest 16 Horde
Inst1Quest16Rewardtext_HORDE = AQNoReward

--Quest 17 Horde
Inst1Quest17Rewardtext_HORDE = AQNoReward

--Quest 18 Horde
Inst1Quest18Rewardtext_HORDE = AQNoReward



--------------- INST2 - Blackwing Lair ---------------

--Quest 1 Alliance
Inst2Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst2Quest1ITC1 = Itemc5;
Inst2Quest1description1 = AQITEM_LEGS..AQITEM_MAIL
Inst2Quest1ID1 = "21530"
--ITEM2
Inst2Quest1ITC2 = Itemc5;
Inst2Quest1description2 = AQITEM_NECK
Inst2Quest1ID2 = "21529"

--Quest 2 Alliance
Inst2Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst2Quest2ITC1 = Itemc5;
Inst2Quest2description1 = AQITEM_NECK
Inst2Quest2ID1 = "19383"
--ITEM2
Inst2Quest2ITC2 = Itemc5;
Inst2Quest2description2 = AQITEM_OFFHAND
Inst2Quest2ID2 = "19366"
--ITEM1
Inst2Quest2ITC3 = Itemc5;
Inst2Quest2description3 = AQITEM_RING
Inst2Quest2ID3 = "19384"

--Quest 3 Alliance
Inst2Quest3Rewardtext = AQNoReward


--Quest 1 Horde
Inst2Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst2Quest1ITC1_HORDE = Itemc5;
Inst2Quest1description1_HORDE = AQITEM_LEGS..AQITEM_MAIL
Inst2Quest1ID1_HORDE = "21530"
--ITEM2
Inst2Quest1ITC2_HORDE = Itemc5;
Inst2Quest1description2_HORDE = AQITEM_NECK
Inst2Quest1ID2_HORDE = "21529"

--Quest 2 Horde
Inst2Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst2Quest2ITC1_HORDE = Itemc5;
Inst2Quest2description1_HORDE = AQITEM_NECK
Inst2Quest2ID1_HORDE = "19383"
--ITEM2
Inst2Quest2ITC2_HORDE = Itemc5;
Inst2Quest2description2_HORDE = AQITEM_OFFHAND
Inst2Quest2ID2_HORDE = "19366"
--ITEM1
Inst2Quest2ITC3_HORDE = Itemc5;
Inst2Quest2description3_HORDE = AQITEM_RING
Inst2Quest2ID3_HORDE = "19384"

--Quest 3 Horde
Inst2Quest3Rewardtext_HORDE = AQNoReward



--------------- INST3 - Lower Blackrock Spire ---------------

--Quest 1 Alliance
Inst3Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst3Quest1ITC1 = Itemc4;
Inst3Quest1description1 = AQITEM_BACK
Inst3Quest1ID1 = "20218"
--ITEM2
Inst3Quest1ITC2 = Itemc4;
Inst3Quest1description2 = AQITEM_BACK
Inst3Quest1ID2 = "20219"

--Quest 2 Alliance
Inst3Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest2ITC1 = Itemc2;
Inst3Quest2description1 = AQITEM_ITEM
Inst3Quest2ID1 = "12264"

--Quest 3 Alliance
Inst3Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest3ITC1 = Itemc2;
Inst3Quest3description1 = AQITEM_ITEM
Inst3Quest3ID1 = "12529"

--Quest 4 Alliance
Inst3Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest4ITC1 = Itemc4;
Inst3Quest4description1 = AQITEM_TRINKET
Inst3Quest4ID1 = "15873"

--Quest 5 Alliance
Inst3Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst3Quest5ITC1 = Itemc3;
Inst3Quest5description1 = AQITEM_CHEST .. AQITEM_CLOTH
Inst3Quest5ID1 = "15824"
--ITEM2
Inst3Quest5ITC2 = Itemc3;
Inst3Quest5description2 = AQITEM_CHEST .. AQITEM_LEATHER
Inst3Quest5ID2 = "15825"
--ITEM3
Inst3Quest5ITC3 = Itemc3;
Inst3Quest5description3 = AQITEM_CHEST .. AQITEM_MAIL
Inst3Quest5ID3 = "15827"

--Quest 6 Alliance
Inst3Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest6ITC1 = Itemc3;
Inst3Quest6description1 = AQITEM_TRINKET
Inst3Quest6ID1 = "15867"

--Quest 7 Alliance
Inst3Quest7Rewardtext = AQNoReward

--Quest 8 Alliance
Inst3Quest8Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"..AQDiscription_OR..WHITE.."5"
--ITEM1
Inst3Quest8ITC1 = Itemc4;
Inst3Quest8description1 = AQITEM_WRIST .. AQITEM_CLOTH
Inst3Quest8ID1 = "13958"
--ITEM2
Inst3Quest8ITC2 = Itemc4;
Inst3Quest8description2 = AQITEM_WAIST .. AQITEM_PLATE
Inst3Quest8ID2 = "13959"
--ITEM3
Inst3Quest8ITC3 = Itemc4;
Inst3Quest8description3 = AQITEM_SHOULDER .. AQITEM_LEATHER
Inst3Quest8ID3 = "13961"
--ITEM4
Inst3Quest8ITC4 = Itemc4;
Inst3Quest8description4 = AQITEM_WAIST .. AQITEM_LEATHER
Inst3Quest8ID4 = "13962"
--ITEM5
Inst3Quest8ITC5 = Itemc4;
Inst3Quest8description5 = AQITEM_HANDS .. AQITEM_MAIL
Inst3Quest8ID5 = "13963"

--Quest 9 Alliance
Inst3Quest9Rewardtext = AQNoReward

--Quest 11 Alliance
Inst3Quest11Rewardtext = AQNoReward

--Quest 12 Alliance
Inst3Quest12Rewardtext = AQNoReward

--Quest 13 Alliance
Inst3Quest13Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest13ITC1 = Itemc4;
Inst3Quest13description1 = AQITEM_PATTERN
Inst3Quest13ID1 = "12821"

--Quest 14 Alliance
Inst3Quest14Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst3Quest14ITC1 = Itemc4;
Inst3Quest14description1 = AQITEM_PATTERN
Inst3Quest14ID1 = "12699"
--ITEM2
Inst3Quest14ITC2 = Itemc4;
Inst3Quest14description2 = AQITEM_HANDS..AQITEM_PLATE
Inst3Quest14ID2 = "12631"


--Quest 1 Horde
Inst3Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst3Quest1ITC1_HORDE = Itemc4;
Inst3Quest1description1_HORDE = AQITEM_BACK
Inst3Quest1ID1_HORDE = "20218"
--ITEM2
Inst3Quest1ITC2_HORDE = Itemc4;
Inst3Quest1description2_HORDE = AQITEM_BACK
Inst3Quest1ID2_HORDE = "20219"

--Quest 2 Horde
Inst3Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest2ITC1_HORDE = Itemc2;
Inst3Quest2description1_HORDE = AQITEM_ITEM
Inst3Quest2ID1_HORDE = "12264"

--Quest 3 Horde
Inst3Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest3ITC1_HORDE = Itemc2;
Inst3Quest3description1_HORDE = AQITEM_ITEM
Inst3Quest3ID1_HORDE = "12529"

--Quest 4 Horde
Inst3Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest4ITC1_HORDE = Itemc4;
Inst3Quest4description1_HORDE = AQITEM_TRINKET
Inst3Quest4ID1_HORDE = "15873"

--Quest 5 Horde
Inst3Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst3Quest5ITC1_HORDE = Itemc3;
Inst3Quest5description1_HORDE = AQITEM_CHEST .. AQITEM_CLOTH
Inst3Quest5ID1_HORDE = "15824"
--ITEM2
Inst3Quest5ITC2_HORDE = Itemc3;
Inst3Quest5description2_HORDE = AQITEM_CHEST .. AQITEM_LEATHER
Inst3Quest5ID2_HORDE = "15825"
--ITEM3
Inst3Quest5ITC3_HORDE = Itemc3;
Inst3Quest5description3_HORDE = AQITEM_CHEST .. AQITEM_MAIL
Inst3Quest5ID3_HORDE = "15827"

--Quest 6 Horde
Inst3Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest6ITC1_HORDE = Itemc3;
Inst3Quest6description1_HORDE = AQITEM_TRINKET
Inst3Quest6ID1_HORDE = "15867"

--Quest 7 Horde
Inst3Quest7Rewardtext_HORDE = AQNoReward

--Quest 8 Horde
Inst3Quest8Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst3Quest8ITC1_HORDE = Itemc3;
Inst3Quest8description1_HORDE = AQITEM_HANDS .. AQITEM_CLOTH
Inst3Quest8ID1_HORDE = "15858"
--ITEM2
Inst3Quest8ITC2_HORDE = Itemc3;
Inst3Quest8description2_HORDE = AQITEM_WAIST .. AQITEM_MAIL
Inst3Quest8ID2_HORDE = "15859"

--Quest 9 Horde
Inst3Quest9Rewardtext_HORDE = AQNoReward

--Quest 10 Horde
Inst3Quest10Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"..AQDiscription_OR..WHITE.."5"
--ITEM1
Inst3Quest10ITC1_HORDE = Itemc4;
Inst3Quest10description1_HORDE = AQITEM_WRIST .. AQITEM_CLOTH
Inst3Quest10ID1_HORDE = "13958"
--ITEM2
Inst3Quest10ITC2_HORDE = Itemc4;
Inst3Quest10description2_HORDE = AQITEM_WAIST .. AQITEM_PLATE
Inst3Quest10ID2_HORDE = "13959"
--ITEM3
Inst3Quest10ITC3_HORDE = Itemc4;
Inst3Quest10description3_HORDE = AQITEM_SHOULDER .. AQITEM_LEATHER
Inst3Quest10ID3_HORDE = "13961"
--ITEM4
Inst3Quest10ITC4_HORDE = Itemc4;
Inst3Quest10description4_HORDE = AQITEM_WAIST .. AQITEM_LEATHER
Inst3Quest10ID4_HORDE = "13962"
--ITEM5
Inst3Quest10ITC5_HORDE = Itemc4;
Inst3Quest10description5_HORDE = AQITEM_HANDS .. AQITEM_MAIL
Inst3Quest10ID5_HORDE = "13963"

--Quest 11 Horde
Inst3Quest11Rewardtext_HORDE = AQNoReward

--Quest 12 Horde
Inst3Quest12Rewardtext_HORDE = AQNoReward

--Quest 13 Horde
Inst3Quest13Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst3Quest13ITC1_HORDE = Itemc4;
Inst3Quest13description1_HORDE = AQITEM_PATTERN
Inst3Quest13ID1_HORDE = "12821"

--Quest 14 Horde
Inst3Quest14Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst3Quest14ITC1_HORDE = Itemc4;
Inst3Quest14description1_HORDE = AQITEM_PATTERN
Inst3Quest14ID1_HORDE = "12699"
--ITEM2
Inst3Quest14ITC2_HORDE = Itemc4;
Inst3Quest14description2_HORDE = AQITEM_HANDS..AQITEM_PLATE
Inst3Quest14ID2_HORDE = "12631"



--------------- INST4 - Upper Blackrock Spire ---------------

--Quest 1 Alliance
Inst4Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst4Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst4Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst4Quest3ITC1 = Itemc2;
Inst4Quest3description1 = AQITEM_ITEM
Inst4Quest3ID1 = "12144"

--Quest 4 Alliance
Inst4Quest4Rewardtext = AQNoReward

--Quest 5 Alliance
Inst4Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst4Quest5ITC1 = Itemc4;
Inst4Quest5description1 = AQITEM_TRINKET
Inst4Quest5ID1 = "13966"
--ITEM2
Inst4Quest5ITC2 = Itemc4;
Inst4Quest5description2 = AQITEM_TRINKET
Inst4Quest5ID2 = "13968"
--ITEM3
Inst4Quest5ITC3 = Itemc4;
Inst4Quest5description3 = AQITEM_TRINKET
Inst4Quest5ID3 = "13965"

--Quest 6 Alliance
Inst4Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst4Quest6ITC1 = Itemc3;
Inst4Quest6description1 = AQITEM_FEET .. AQITEM_LEATHER
Inst4Quest6ID1 = "15861"
--ITEM2
Inst4Quest6ITC2 = Itemc3;
Inst4Quest6description2 = AQITEM_WRIST .. AQITEM_PLATE
Inst4Quest6ID2 = "15860"

--Quest 7 Alliance
Inst4Quest7Rewardtext = AQNoReward

--Quest 8 Alliance
Inst4Quest8Rewardtext = AQNoReward

--Quest 9 Alliance
Inst4Quest9Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst4Quest9ITC1 = Itemc2;
Inst4Quest9description1 = AQITEM_ITEM
Inst4Quest9ID1 = "22057"
--ITEM2
Inst4Quest9ITC2 = Itemc2;
Inst4Quest9description2 = AQITEM_ITEM
Inst4Quest9ID2 = "22344"

--Quest 10 Alliance
Inst4Quest10Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2 "..AQDiscription_AND..WHITE.."3 (x5)"
--ITEM1
Inst4Quest10ITC1 = Itemc4;
Inst4Quest10description1 = AQITEM_PATTERN
Inst4Quest10ID1 = "12696"
--ITEM2
Inst4Quest10ITC2 = Itemc3;
Inst4Quest10description2 = AQITEM_BAG
Inst4Quest10ID2 = "12849"
--ITEM3
Inst4Quest10ITC3 = Itemc2;
Inst4Quest10description3 = AQITEM_POTION
Inst4Quest10ID3 = "9224"

--Quest 11 Alliance
Inst4Quest11Rewardtext = AQNoReward

--Quest 12 Alliance
Inst4Quest12Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst4Quest12ITC1 = Itemc4;
Inst4Quest12description1 = AQITEM_NECK
Inst4Quest12ID1 = "16309"


--Quest 1 Horde
Inst4Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst4Quest2Rewardtext_HORDE = AQNoReward

--Quest 3 Horde
Inst4Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst4Quest3ITC1_HORDE = Itemc2;
Inst4Quest3description1_HORDE = AQITEM_ITEM
Inst4Quest3ID1_HORDE = "12144"

--Quest 4 Horde
Inst4Quest4Rewardtext_HORDE = AQNoReward

--Quest 5 Horde
Inst4Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst4Quest5ITC1_HORDE = Itemc3;
Inst4Quest5description1_HORDE = AQITEM_FEET .. AQITEM_LEATHER
Inst4Quest5ID1_HORDE = "15861"
--ITEM2
Inst4Quest5ITC2_HORDE = Itemc3;
Inst4Quest5description2_HORDE = AQITEM_WRIST .. AQITEM_PLATE
Inst4Quest5ID2_HORDE = "15860"

--Quest 6 Horde
Inst4Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst4Quest6ITC1_HORDE = Itemc4;
Inst4Quest6description1_HORDE = AQITEM_TRINKET
Inst4Quest6ID1_HORDE = "13966"
--ITEM2
Inst4Quest6ITC2_HORDE = Itemc4;
Inst4Quest6description2_HORDE = AQITEM_TRINKET
Inst4Quest6ID2_HORDE = "13968"
--ITEM3
Inst4Quest6ITC3_HORDE = Itemc4;
Inst4Quest6description3_HORDE = AQITEM_TRINKET
Inst4Quest6ID3_HORDE = "13965"

--Quest 7 Horde
Inst4Quest7Rewardtext_HORDE = AQNoReward

--Quest 8 Horde
Inst4Quest8Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst4Quest8ITC1_HORDE = Itemc4;
Inst4Quest8description1_HORDE = AQITEM_NECK
Inst4Quest8ID1_HORDE = "16309"

--Quest 9 Horde
Inst4Quest9Rewardtext_HORDE = AQNoReward

--Quest 10 Horde
Inst4Quest10Rewardtext_HORDE = AQNoReward

--Quest 11 Horde
Inst4Quest11Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst4Quest11ITC1_HORDE = Itemc2;
Inst4Quest11description1_HORDE = AQITEM_ITEM
Inst4Quest11ID1_HORDE = "22057"
--ITEM2
Inst4Quest11ITC2_HORDE = Itemc2;
Inst4Quest11description2_HORDE = AQITEM_ITEM
Inst4Quest11ID2_HORDE = "22344"

--Quest 12 Horde
Inst4Quest12Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2 "..AQDiscription_AND..WHITE.."3 (x5)"
--ITEM1
Inst4Quest12ITC1_HORDE = Itemc4;
Inst4Quest12description1_HORDE = AQITEM_PATTERN
Inst4Quest12ID1_HORDE = "12696"
--ITEM2
Inst4Quest12ITC2_HORDE = Itemc2;
Inst4Quest12description2_HORDE = AQITEM_BAG
Inst4Quest12ID2_HORDE = "12849"
--ITEM3
Inst4Quest12ITC3_HORDE = Itemc3;
Inst4Quest12description3_HORDE = AQITEM_POTION
Inst4Quest12ID3_HORDE = "9224"

--Quest 13 Horde
Inst4Quest13Rewardtext_HORDE = AQNoReward



--------------- INST5 - Deadmines ---------------

--Quest 1 Alliance
Inst5Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst5Quest1ITC1 = Itemc3;
Inst5Quest1description1 = AQITEM_ONEHAND..AQITEM_SWORD
Inst5Quest1ID1 = "2074"
--ITEM2
Inst5Quest1ITC2 = Itemc3;
Inst5Quest1description2 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst5Quest1ID2 = "2089"
--ITEM3
Inst5Quest1ITC3 = Itemc3;
Inst5Quest1description3 = AQITEM_TWOHAND..AQITEM_AXE
Inst5Quest1ID3 = "6094"

--Quest 2 Alliance
Inst5Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst5Quest2ITC1 = Itemc3;
Inst5Quest2description1 = AQITEM_FEET..AQITEM_MAIL
Inst5Quest2ID1 = "2037"
--ITEM2
Inst5Quest2ITC2 = Itemc3;
Inst5Quest2description2 = AQITEM_HANDS..AQITEM_LEATHER
Inst5Quest2ID2 = "2036"

--Quest 3 Alliance
Inst5Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst5Quest3ITC1 = Itemc3;
Inst5Quest3description1 = AQITEM_TWOHAND..AQITEM_AXE
Inst5Quest3ID1 = "1893"

--Quest 4 Alliance
Inst5Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst5Quest4ITC1 = Itemc3;
Inst5Quest4description1 = AQITEM_HANDS..AQITEM_MAIL
Inst5Quest4ID1 = "7606"
--ITEM2
Inst5Quest4ITC2 = Itemc3;
Inst5Quest4description2 = AQITEM_WAND
Inst5Quest4ID2 = "7607"

--Quest 5 Alliance
Inst5Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst5Quest5ITC1 = Itemc4;
Inst5Quest5description1 = AQITEM_LEGS..AQITEM_MAIL
Inst5Quest5ID1 = "6087"
--ITEM2
Inst5Quest5ITC2 = Itemc4;
Inst5Quest5description2 = AQITEM_CHEST..AQITEM_LEATHER
Inst5Quest5ID2 = "2041"
--ITEM3
Inst5Quest5ITC3 = Itemc4;
Inst5Quest5description3 = AQITEM_STAFF
Inst5Quest5ID3 = "2042"

--Quest 6 Alliance
Inst5Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst5Quest6ITC1 = Itemc4;
Inst5Quest6description1 = AQITEM_TWOHAND..AQITEM_MACE
Inst5Quest6ID1 = "6953"

--Quest 7 Alliance
Inst5Quest7Rewardtext = AQNoReward



--------------- INST6 - Gnomeregan ---------------

--Quest 1 Alliance
Inst6Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst6Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst6Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst6Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst6Quest4ITC1 = Itemc3;
Inst6Quest4description1 = AQITEM_OFFHAND..AQITEM_AXE
Inst6Quest4ID1 = "9608"
--ITEM2
Inst6Quest4ITC2 = Itemc3;
Inst6Quest4description2 = AQITEM_HANDS..AQITEM_CLOTH
Inst6Quest4ID2 = "9609"

--Quest 5 Alliance
Inst6Quest5Rewardtext = AQNoReward

--Quest 6 Alliance
Inst6Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst6Quest6ITC1 = Itemc3;
Inst6Quest6description1 = AQITEM_BACK
Inst6Quest6ID1 = "9605"
--ITEM2
Inst6Quest6ITC2 = Itemc3;
Inst6Quest6description2 = AQITEM_TWOHAND..AQITEM_MACE
Inst6Quest6ID2 = "9604"

--Quest 7 Alliance
Inst6Quest7Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst6Quest7ITC1 = Itemc3;
Inst6Quest7description1 = AQITEM_WRIST..AQITEM_MAIL
Inst6Quest7ID1 = "9535"
--ITEM2
Inst6Quest7ITC2 = Itemc3;
Inst6Quest7description2 = AQITEM_SHOULDER..AQITEM_CLOTH
Inst6Quest7ID2 = "9536"

--Quest 8 Alliance
Inst6Quest8Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst6Quest8ITC1 = Itemc4;
Inst6Quest8description1 = AQITEM_CHEST..AQITEM_CLOTH
Inst6Quest8ID1 = "9623"
--ITEM2
Inst6Quest8ITC2 = Itemc4;
Inst6Quest8description2 = AQITEM_LEGS..AQITEM_LEATHER
Inst6Quest8ID2 = "9624"
--ITEM3
Inst6Quest8ITC3 = Itemc4;
Inst6Quest8description3 = AQITEM_LEGS..AQITEM_MAIL
Inst6Quest8ID3 = "9625"

--Quest 9 Alliance
Inst6Quest9Rewardtext = AQNoReward

--Quest 10 Alliance
Inst6Quest10Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst6Quest10ITC1 = Itemc3;
Inst6Quest10description1 = AQITEM_RING
Inst6Quest10ID1 = "9362"

--Quest 11 Alliance
Inst6Quest11Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst6Quest11ITC1 = Itemc2;
Inst6Quest11description1 = AQITEM_ITEM
Inst6Quest11ID1 = "9363"


--Quest 1 Horde
Inst6Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst6Quest1ITC1_HORDE = Itemc2;
Inst6Quest1description1_HORDE = AQITEM_ITEM
Inst6Quest1ID1_HORDE = "9173"

--Quest 2 Horde
Inst6Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst6Quest2ITC1_HORDE = Itemc3;
Inst6Quest2description1_HORDE = AQITEM_WRIST..AQITEM_MAIL
Inst6Quest2ID1_HORDE = "9535"
--ITEM2
Inst6Quest2ITC2_HORDE = Itemc3;
Inst6Quest2description2_HORDE = AQITEM_SHOULDER..AQITEM_CLOTH
Inst6Quest2ID2_HORDE = "9536"

--Quest 3 Horde
Inst6Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst6Quest3ITC1_HORDE = Itemc4;
Inst6Quest3description1_HORDE = AQITEM_CHEST..AQITEM_CLOTH
Inst6Quest3ID1_HORDE = "9623"
--ITEM2
Inst6Quest3ITC2_HORDE = Itemc4;
Inst6Quest3description2_HORDE = AQITEM_LEGS..AQITEM_LEATHER
Inst6Quest3ID2_HORDE = "9624"
--ITEM3
Inst6Quest3ITC3_HORDE = Itemc4;
Inst6Quest3description3_HORDE = AQITEM_LEGS..AQITEM_MAIL
Inst6Quest3ID3_HORDE = "9625"

--Quest 4 Horde
Inst6Quest4Rewardtext_HORDE = AQNoReward

--Quest 5 Horde
Inst6Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst6Quest5ITC1_HORDE = Itemc3;
Inst6Quest5description1_HORDE = AQITEM_RING
Inst6Quest5ID1_HORDE = "9362"

--Quest 6 Horde
Inst6Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst6Quest6ITC1_HORDE = Itemc2;
Inst6Quest6description1_HORDE = AQITEM_ITEM
Inst6Quest6ID1_HORDE = "9363"



--------------- INST7 - Scarlet Monastery: Library ---------------

--Quest 1 Alliance
Inst7Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst7Quest1ITC1 = Itemc3;
Inst7Quest1description1 = AQITEM_NECK
Inst7Quest1ID1 = "7746"

--Quest 2 Alliance
Inst7Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst7Quest2ITC1 = Itemc4;
Inst7Quest2description1 = AQITEM_WAND
Inst7Quest2ID1 = "7514"
--ITEM2
Inst7Quest2ITC2 = Itemc4;
Inst7Quest2description2 = AQITEM_WAND
Inst7Quest2ID2 = "11263"
--ITEM3
Inst7Quest2ITC3 = Itemc4;
Inst7Quest2description3 = AQITEM_WAND
Inst7Quest2ID3 = "7513"

--Quest 3 Alliance
Inst7Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst7Quest3ITC1 = Itemc4;
Inst7Quest3description1 = AQITEM_ONEHAND..AQITEM_SWORD
Inst7Quest3ID1 = "6829"
--ITEM2
Inst7Quest3ITC2 = Itemc4;
Inst7Quest3description2 = AQITEM_TWOHAND..AQITEM_AXE
Inst7Quest3ID2 = "6830"
--ITEM3
Inst7Quest3ITC3 = Itemc4;
Inst7Quest3description3 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst7Quest3ID3 = "6831"
--ITEM4
Inst7Quest3ITC4 = Itemc4;
Inst7Quest3description4 = AQITEM_OFFHAND
Inst7Quest3ID4 = "11262"


--Quest 1 Horde
Inst7Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst7Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst7Quest2ITC1_HORDE = Itemc3;
Inst7Quest2description1_HORDE = AQITEM_ONEHAND..AQITEM_MACE
Inst7Quest2ID1_HORDE = "6804"
--ITEM2
Inst7Quest2ITC2_HORDE = Itemc3;
Inst7Quest2description2_HORDE = AQITEM_WAND
Inst7Quest2ID2_HORDE = "6806"

--Quest 3 Horde
Inst7Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst7Quest3ITC1_HORDE = Itemc3;
Inst7Quest3description1_HORDE = AQITEM_SHIELD
Inst7Quest3ID1_HORDE = "7747"
--ITEM2
Inst7Quest3ITC2_HORDE = Itemc3;
Inst7Quest3description2_HORDE = AQITEM_SHIELD
Inst7Quest3ID2_HORDE = "17508"
--ITEM3
Inst7Quest3ITC3_HORDE = Itemc3;
Inst7Quest3description3_HORDE = AQITEM_OFFHAND
Inst7Quest3ID3_HORDE = "7749"

--Quest 4 Horde
Inst7Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst7Quest4ITC1_HORDE = Itemc4;
Inst7Quest4description1_HORDE = AQITEM_WAND
Inst7Quest4ID1_HORDE = "7514"
--ITEM2
Inst7Quest4ITC2_HORDE = Itemc4;
Inst7Quest4description2_HORDE = AQITEM_WAND
Inst7Quest4ID2_HORDE = "11263"
--ITEM3
Inst7Quest4ITC3_HORDE = Itemc4;
Inst7Quest4description3_HORDE = AQITEM_WAND
Inst7Quest4ID3_HORDE = "7513"

--Quest 5 Horde
Inst7Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst7Quest5ITC1_HORDE = Itemc4;
Inst7Quest5description1_HORDE = AQITEM_ONEHAND..AQITEM_SWORD
Inst7Quest5ID1_HORDE = "6802"
--ITEM2
Inst7Quest5ITC2_HORDE = Itemc4;
Inst7Quest5description2_HORDE = AQITEM_OFFHAND
Inst7Quest5ID2_HORDE = "6803"
--ITEM3
Inst7Quest5ITC3_HORDE = Itemc4;
Inst7Quest5description3_HORDE = AQITEM_NECK
Inst7Quest5ID3_HORDE = "10711"



--------------- INST8 - Scarlet Monastery: Armory ---------------

--Quest 1 Alliance
Inst8Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst8Quest1ITC1 = Itemc4;
Inst8Quest1description1 = AQITEM_ONEHAND..AQITEM_SWORD
Inst8Quest1ID1 = "6829"
--ITEM2
Inst8Quest1ITC2 = Itemc4;
Inst8Quest1description2 = AQITEM_TWOHAND..AQITEM_AXE
Inst8Quest1ID2 = "6830"
--ITEM3
Inst8Quest1ITC3 = Itemc4;
Inst8Quest1description3 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst8Quest1ID3 = "6831"
--ITEM4
Inst8Quest1ITC4 = Itemc4;
Inst8Quest1description4 = AQITEM_OFFHAND
Inst8Quest1ID4 = "11262"


--Quest 1 Horde
Inst8Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst8Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst8Quest2ITC1_HORDE = Itemc4;
Inst8Quest2description1_HORDE = AQITEM_ONEHAND..AQITEM_SWORD
Inst8Quest2ID1_HORDE = "6802"
--ITEM2
Inst8Quest2ITC2_HORDE = Itemc4;
Inst8Quest2description2_HORDE = AQITEM_OFFHAND
Inst8Quest2ID2_HORDE = "6803"
--ITEM3
Inst8Quest2ITC3_HORDE = Itemc4;
Inst8Quest2description3_HORDE = AQITEM_NECK
Inst8Quest2ID3_HORDE = "10711"



--------------- INST9 - Scarlet Monastery: Cathedral ---------------

--Quest 1 Alliance
Inst9Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst9Quest1ITC1 = Itemc4;
Inst9Quest1description1 = AQITEM_ONEHAND..AQITEM_SWORD
Inst9Quest1ID1 = "6829"
--ITEM2
Inst9Quest1ITC2 = Itemc4;
Inst9Quest1description2 = AQITEM_TWOHAND..AQITEM_AXE
Inst9Quest1ID2 = "6830"
--ITEM3
Inst9Quest1ITC3 = Itemc4;
Inst9Quest1description3 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst9Quest1ID3 = "6831"
--ITEM4
Inst9Quest1ITC4 = Itemc4;
Inst9Quest1description4 = AQITEM_OFFHAND
Inst9Quest1ID4 = "11262"


--Quest 1 Horde
Inst9Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst9Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst9Quest2ITC1_HORDE = Itemc4;
Inst9Quest2description1_HORDE = AQITEM_ONEHAND..AQITEM_SWORD
Inst9Quest2ID1_HORDE = "6802"
--ITEM2
Inst9Quest2ITC2_HORDE = Itemc4;
Inst9Quest2description2_HORDE = AQITEM_OFFHAND
Inst9Quest2ID2_HORDE = "6803"
--ITEM3
Inst9Quest2ITC3_HORDE = Itemc4;
Inst9Quest2description3_HORDE = AQITEM_NECK
Inst9Quest2ID3_HORDE = "10711"



--------------- INST10 - Scarlet Monastery: Graveyard ---------------


--Quest 1 Horde
Inst10Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst10Quest1ITC1_HORDE = Itemc3;
Inst10Quest1description1_HORDE = AQITEM_FEET..AQITEM_LEATHER
Inst10Quest1ID1_HORDE = "7751"
--ITEM2
Inst10Quest1ITC2_HORDE = Itemc3;
Inst10Quest1description2_HORDE = AQITEM_SHOULDER..AQITEM_CLOTH
Inst10Quest1ID2_HORDE = "7750"
--ITEM3
Inst10Quest1ITC3_HORDE = Itemc3;
Inst10Quest1description3_HORDE = AQITEM_BACK
Inst10Quest1ID3_HORDE = "4643"

--Quest 2 Horde
Inst10Quest2Rewardtext_HORDE = AQNoReward



--------------- INST11 - Scholomance ---------------

--Quest 1 Alliance
Inst11Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst11Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst11Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst11Quest4Rewardtext = AQNoReward

--Quest 5 Alliance
Inst11Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst11Quest5ITC1 = Itemc3;
Inst11Quest5description1 = AQITEM_TRINKET
Inst11Quest5ID1 = "13544"
--ITEM2
Inst11Quest5ITC2 = Itemc4;
Inst11Quest5description2 = AQITEM_OFFHAND
Inst11Quest5ID2 = "15805"
--ITEM3
Inst11Quest5ITC3 = Itemc4;
Inst11Quest5description3 = AQITEM_ONEHAND..AQITEM_SWORD
Inst11Quest5ID3 = "15806"

--Quest 6 Alliance
Inst11Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst11Quest6ITC1 = Itemc4;
Inst11Quest6description1 = AQITEM_SHIELD
Inst11Quest6ID1 = "14002"
--ITEM2
Inst11Quest6ITC2 = Itemc4;
Inst11Quest6description2 = AQITEM_TWOHAND..AQITEM_SWORD
Inst11Quest6ID2 = "13982"
--ITEM3
Inst11Quest6ITC3 = Itemc4;
Inst11Quest6description3 = AQITEM_HEAD..AQITEM_CLOTH
Inst11Quest6ID3 = "13986"
--ITE4
Inst11Quest6ITC4 = Itemc4;
Inst11Quest6description4 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst11Quest6ID4 = "13984"

--Quest 7 Alliance
Inst11Quest7Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst11Quest7ITC1 = Itemc4;
Inst11Quest7description1 = AQITEM_TRINKET
Inst11Quest7ID1 = "14023"

--Quest 8 Alliance
Inst11Quest8Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst11Quest8ITC1 = Itemc4;
Inst11Quest8description1 = AQITEM_ONEHAND..AQITEM_AXE
Inst11Quest8ID1 = "15853"
--ITEM2
Inst11Quest8ITC2 = Itemc4;
Inst11Quest8description2 = AQITEM_STAFF
Inst11Quest8ID2 = "15854"

--Quest 9 Alliance
Inst11Quest9Rewardtext = AQNoReward

--Quest 10 Alliance
Inst11Quest10Rewardtext = AQNoReward

--Quest 11 Alliance
Inst11Quest11Rewardtext = AQNoReward

--Quest 12 Alliance
Inst11Quest12Rewardtext = AQNoReward


--Quest 1 Horde
Inst11Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst11Quest2Rewardtext_HORDE = AQNoReward

--Quest 3 Horde
Inst11Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst11Quest4Rewardtext_HORDE = AQNoReward

--Quest 5 Horde
Inst11Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst11Quest5ITC1_HORDE = Itemc3;
Inst11Quest5description1_HORDE = AQITEM_TRINKET
Inst11Quest5ID1_HORDE = "13544"
--ITEM2
Inst11Quest5ITC2_HORDE = Itemc4;
Inst11Quest5description2_HORDE = AQITEM_OFFHAND
Inst11Quest5ID2_HORDE = "15805"
--ITEM3
Inst11Quest5ITC3_HORDE = Itemc4;
Inst11Quest5description3_HORDE = AQITEM_ONEHAND..AQITEM_SWORD
Inst11Quest5ID3_HORDE = "15806"

--Quest 6 Horde
Inst11Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst11Quest6ITC1_HORDE = Itemc4;
Inst11Quest6description1_HORDE = AQITEM_SHIELD
Inst11Quest6ID1_HORDE = "14002"
--ITEM2
Inst11Quest6ITC2_HORDE = Itemc4;
Inst11Quest6description2_HORDE = AQITEM_TWOHAND..AQITEM_SWORD
Inst11Quest6ID2_HORDE = "13982"
--ITEM3
Inst11Quest6ITC3_HORDE = Itemc4;
Inst11Quest6description3_HORDE = AQITEM_HEAD..AQITEM_CLOTH
Inst11Quest6ID3_HORDE = "13986"
--ITE4
Inst11Quest6ITC4_HORDE = Itemc4;
Inst11Quest6description4_HORDE = AQITEM_ONEHAND..AQITEM_DAGGER
Inst11Quest6ID4_HORDE = "13984"

--Quest 7 Horde
Inst11Quest7Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst11Quest7ITC1_HORDE = Itemc4;
Inst11Quest7description1_HORDE = AQITEM_TRINKET
Inst11Quest7ID1_HORDE = "14023"

--Quest 8 Horde
Inst11Quest8Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst11Quest8ITC1_HORDE = Itemc4;
Inst11Quest8description1_HORDE = AQITEM_ONEHAND..AQITEM_AXE
Inst11Quest8ID1_HORDE = "15853"
--ITEM2
Inst11Quest8ITC2_HORDE = Itemc4;
Inst11Quest8description2_HORDE = AQITEM_STAFF
Inst11Quest8ID2_HORDE = "15854"

--Quest 9 Horde
Inst11Quest9Rewardtext_HORDE = AQNoReward

--Quest 10 Horde
Inst11Quest10Rewardtext_HORDE = AQNoReward

--Quest 11 Horde
Inst11Quest11Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst11Quest11ITC1_HORDE = Itemc5;
Inst11Quest11description1_HORDE = AQITEM_HEAD..AQITEM_MAIL
Inst11Quest11ID1_HORDE = "20134"

--Quest 12 Horde
Inst11Quest12Rewardtext_HORDE = AQNoReward



--------------- INST12 - Shadowfang Keep ---------------

--Quest 1 Alliance
Inst12Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst12Quest1ITC1 = Itemc4;
Inst12Quest1description1 = AQITEM_TWOHAND..AQITEM_MACE
Inst12Quest1ID1 = "6953"

--Quest 2 Alliance
Inst12Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst12Quest2ITC1 = Itemc3;
Inst12Quest2description1 = AQITEM_OFFHAND
Inst12Quest2ID1 = "6898"
--ITEM1
Inst12Quest2ITC2 = Itemc3;
Inst12Quest2description2 = AQITEM_STAFF
Inst12Quest2ID2 = "15109"



--Quest 1 Horde
Inst12Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst12Quest1ITC1_HORDE = Itemc3;
Inst12Quest1description1_HORDE = AQITEM_SHOULDER..AQITEM_CLOTH
Inst12Quest1ID1_HORDE = "3324"

--Quest 2 Horde
Inst12Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst12Quest2ITC1_HORDE = Itemc3;
Inst12Quest2description1_HORDE = AQITEM_FEET..AQITEM_LEATHER
Inst12Quest2ID1_HORDE = "6335"
--ITEM2
Inst12Quest2ITC2_HORDE = Itemc3;
Inst12Quest2description2_HORDE = AQITEM_WRIST..AQITEM_MAIL
Inst12Quest2ID2_HORDE = "4534"

--Quest 3 Horde
Inst12Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst12Quest3ITC1_HORDE = Itemc4;
Inst12Quest3description1_HORDE = AQITEM_RING
Inst12Quest3ID1_HORDE = "6414"

--Quest 4 Horde
Inst12Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst12Quest4ITC1_HORDE = Itemc3;
Inst12Quest4description1_HORDE = AQITEM_OFFHAND
Inst12Quest4ID1_HORDE = "6898"
--ITEM1
Inst12Quest4ITC2_HORDE = Itemc3;
Inst12Quest4description2_HORDE = AQITEM_STAFF
Inst12Quest4ID2_HORDE = "15109"



--------------- INST13 - The Stockade ---------------

--Quest 1 Alliance
Inst13Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst13Quest1ITC1 = Itemc3;
Inst13Quest1description1 = AQITEM_MAINHAND..AQITEM_SWORD
Inst13Quest1ID1 = "3400"
--ITEM2
Inst13Quest1ITC2 = Itemc3;
Inst13Quest1description2 = AQITEM_STAFF
Inst13Quest1ID2 = "1317"

--Quest 2 Alliance
Inst13Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst13Quest2ITC1 = Itemc3;
Inst13Quest2description1 = AQITEM_FEET..AQITEM_LEATHER
Inst13Quest2ID1 = "2033"
--ITEM2
Inst13Quest2ITC2 = Itemc3;
Inst13Quest2description2 = AQITEM_LEGS..AQITEM_MAIL
Inst13Quest2ID2 = "2906"

--Quest 3 Alliance
Inst13Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst13Quest4Rewardtext = AQNoReward

--Quest 5 Alliance
Inst13Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst13Quest5ITC1 = Itemc3;
Inst13Quest5description1 = AQITEM_WAIST..AQITEM_LEATHER
Inst13Quest5ID1 = "3562"
--ITEM2
Inst13Quest5ITC2 = Itemc3;
Inst13Quest5description2 = AQITEM_TWOHAND..AQITEM_MACE
Inst13Quest5ID2 = "1264"

--Quest 6 Alliance
Inst13Quest6Rewardtext = AQNoReward



--------------- INST14 - Stratholme ---------------

--Quest 1 Alliance
Inst14Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst14Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst14Quest2ITC1 = Itemc4;
Inst14Quest2description1 = AQITEM_TRINKET
Inst14Quest2ID1 = "13209"
--ITEM2
Inst14Quest2ITC2 = Itemc4;
Inst14Quest2description2 = AQITEM_TRINKET
Inst14Quest2ID2 = "19812"

--Quest 3 Alliance
Inst14Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1 (x5)"..AQDiscription_AND..WHITE.."2 (x5)"..AQDiscription_AND..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst14Quest3ITC1 = Itemc2;
Inst14Quest3description1 = AQITEM_POTION
Inst14Quest3ID1 = "3928"
--ITEM2
Inst14Quest3ITC2 = Itemc2;
Inst14Quest3description2 = AQITEM_POTION
Inst14Quest3ID2 = "6149"
--ITEM3
Inst14Quest3ITC3 = Itemc3;
Inst14Quest3description3 = AQITEM_HEAD .. AQITEM_CLOTH
Inst14Quest3ID3 = "13216"
--ITEM4
Inst14Quest3ITC4 = Itemc3;
Inst14Quest3description4 = AQITEM_RING
Inst14Quest3ID4 = "13217"

--Quest 4 Alliance
Inst14Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest4ITC1 = Itemc3;
Inst14Quest4description1 = AQITEM_TRINKET
Inst14Quest4ID1 = "13171"

--Quest 5 Alliance
Inst14Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest5ITC1 = Itemc3;
Inst14Quest5description1 = AQITEM_OFFHAND
Inst14Quest5ID1 = "13315"

--Quest 6 Alliance
Inst14Quest6Rewardtext = AQNoReward

--Quest 7 Alliance
Inst14Quest7Rewardtext = AQNoReward

--Quest 8 Alliance
Inst14Quest8Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst14Quest8ITC1 = Itemc4;
Inst14Quest8description1 = AQITEM_NECK
Inst14Quest8ID1 = "17044"
--ITEM2
Inst14Quest8ITC2 = Itemc4;
Inst14Quest8description2 = AQITEM_RING
Inst14Quest8ID2 = "17045"

--Quest 9 Alliance
Inst14Quest9Rewardtext = AQNoReward

--Quest 10 Alliance
Inst14Quest10Rewardtext = AQNoReward

--Quest 11 Alliance
Inst14Quest11Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst14Quest11ITC1 = Itemc4;
Inst14Quest11description1 = AQITEM_SHIELD
Inst14Quest11ID1 = "13243"
--ITEM2
Inst14Quest11ITC2 = Itemc4;
Inst14Quest11description2 = AQITEM_STAFF
Inst14Quest11ID2 = "13249"
--ITEM3
Inst14Quest11ITC3 = Itemc4;
Inst14Quest11description3 = AQITEM_ONEHAND .. AQITEM_SWORD
Inst14Quest11ID3 = "13246"

--Quest 12 Alliance
Inst14Quest12Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest12ITC1 = Itemc2;
Inst14Quest12description1 = AQITEM_BAG
Inst14Quest12ID1 = "22137"

--Quest 13 Alliance
Inst14Quest13Rewardtext = AQNoReward

--Quest 14 Alliance
Inst14Quest14Rewardtext = AQNoReward

--Quest 15 Alliance
Inst14Quest15Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst14Quest15ITC1 = Itemc6;
Inst14Quest15description1 = AQITEM_STAFF
Inst14Quest15ID1 = "22589"
--ITEM2
Inst14Quest15ITC2 = Itemc6;
Inst14Quest15description2 = AQITEM_STAFF
Inst14Quest15ID2 = "22630"
--ITEM3
Inst14Quest15ITC3 = Itemc6;
Inst14Quest15description3 = AQITEM_STAFF
Inst14Quest15ID3 = "22631"
--ITEM4
Inst14Quest15ITC4 = Itemc6;
Inst14Quest15description4 = AQITEM_STAFF
Inst14Quest15ID4 = "22632"

--Quest 16 Alliance
Inst14Quest16Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest16ITC1 = Itemc3;
Inst14Quest16description1 = AQITEM_PATTERN
Inst14Quest16ID1 = "12825"

--Quest 17 Alliance
Inst14Quest17Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest17ITC1 = Itemc3;
Inst14Quest17description1 = AQITEM_PATTERN
Inst14Quest17ID1 = "12824"

--Quest 18 Alliance
Inst14Quest18Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest18ITC1 = Itemc5;
Inst14Quest18description1 = AQITEM_ITEM
Inst14Quest18ID1 = "18659"


--Quest 1 Horde
Inst14Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst14Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst14Quest2ITC1_HORDE = Itemc4;
Inst14Quest2description1_HORDE = AQITEM_TRINKET
Inst14Quest2ID1_HORDE = "13209"
--ITEM2
Inst14Quest2ITC2_HORDE = Itemc4;
Inst14Quest2description2_HORDE = AQITEM_TRINKET
Inst14Quest2ID2_HORDE = "19812"

--Quest 3 Horde
Inst14Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1 (x5)"..AQDiscription_AND..WHITE.."2 (x5)"..AQDiscription_AND..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst14Quest3ITC1_HORDE = Itemc2;
Inst14Quest3description1_HORDE = AQITEM_POTION
Inst14Quest3ID1_HORDE = "3928"
--ITEM2
Inst14Quest3ITC2_HORDE = Itemc2;
Inst14Quest3description2_HORDE = AQITEM_POTION
Inst14Quest3ID2_HORDE = "6149"
--ITEM3
Inst14Quest3ITC3_HORDE = Itemc3;
Inst14Quest3description3_HORDE = AQITEM_HEAD .. AQITEM_CLOTH
Inst14Quest3ID3_HORDE = "13216"
--ITEM4
Inst14Quest3ITC4_HORDE = Itemc3;
Inst14Quest3description4_HORDE = AQITEM_RING
Inst14Quest3ID4_HORDE = "13217"

--Quest 4 Horde
Inst14Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest4ITC1_HORDE = Itemc3;
Inst14Quest4description1_HORDE = AQITEM_TRINKET
Inst14Quest4ID1_HORDE = "13171"

--Quest 5 Horde
Inst14Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest5ITC1_HORDE = Itemc3;
Inst14Quest5description1_HORDE = AQITEM_OFFHAND
Inst14Quest5ID1_HORDE = "13315"

--Quest 6 Horde
Inst14Quest6Rewardtext_HORDE = AQNoReward

--Quest 7 Horde
Inst14Quest7Rewardtext_HORDE = AQNoReward

--Quest 8 Horde
Inst14Quest8Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst14Quest8ITC1_HORDE = Itemc4;
Inst14Quest8description1_HORDE = AQITEM_NECK
Inst14Quest8ID1_HORDE = "17044"
--ITEM2
Inst14Quest8ITC2_HORDE = Itemc4;
Inst14Quest8description2_HORDE = AQITEM_RING
Inst14Quest8ID2_HORDE = "17045"

--Quest 9 Horde
Inst14Quest9Rewardtext_HORDE = AQNoReward

--Quest 10 Horde
Inst14Quest10Rewardtext_HORDE = AQNoReward

--Quest 11 Horde
Inst14Quest11Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst14Quest11ITC1_HORDE = Itemc4;
Inst14Quest11description1_HORDE = AQITEM_SHIELD
Inst14Quest11ID1_HORDE = "13243"
--ITEM2
Inst14Quest11ITC2_HORDE = Itemc4;
Inst14Quest11description2_HORDE = AQITEM_STAFF
Inst14Quest11ID2_HORDE = "13249"
--ITEM3
Inst14Quest11ITC3_HORDE = Itemc4;
Inst14Quest11description3_HORDE = AQITEM_ONEHAND .. AQITEM_SWORD
Inst14Quest11ID3_HORDE = "13246"

--Quest 12 Horde
Inst14Quest12Rewardtext_HORDE = AQNoReward

--Quest 13 Horde
Inst14Quest13Rewardtext_HORDE = AQNoReward

--Quest 14 Horde
Inst14Quest14Rewardtext_HORDE = AQNoReward

--Quest 15 Horde
Inst14Quest15Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst14Quest15ITC1_HORDE = Itemc6;
Inst14Quest15description1_HORDE = AQITEM_STAFF
Inst14Quest15ID1_HORDE = "22589"
--ITEM2
Inst14Quest15ITC2_HORDE = Itemc6;
Inst14Quest15description2_HORDE = AQITEM_STAFF
Inst14Quest15ID2_HORDE = "22630"
--ITEM3
Inst14Quest15ITC3_HORDE = Itemc6;
Inst14Quest15description3_HORDE = AQITEM_STAFF
Inst14Quest15ID3_HORDE = "22631"
--ITEM4
Inst14Quest15ITC4_HORDE = Itemc6;
Inst14Quest15description4_HORDE = AQITEM_STAFF
Inst14Quest15ID4_HORDE = "22632"

--Quest 16 Horde
Inst14Quest16Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest16ITC1_HORDE = Itemc3;
Inst14Quest16description1_HORDE = AQITEM_PATTERN
Inst14Quest16ID1_HORDE = "12825"

--Quest 17 Horde
Inst14Quest17Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest17ITC1_HORDE = Itemc3;
Inst14Quest17description1_HORDE = AQITEM_PATTERN
Inst14Quest17ID1_HORDE = "12824"

--Quest 18 Horde
Inst14Quest18Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst14Quest18ITC1_HORDE = Itemc4;
Inst14Quest18description1_HORDE = AQITEM_RING
Inst14Quest18ID1_HORDE = "18022"
--ITEM2
Inst14Quest18ITC2_HORDE = Itemc3;
Inst14Quest18description2_HORDE = AQITEM_RING
Inst14Quest18ID2_HORDE = "17001"

--Quest 19 Horde
Inst14Quest19Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst14Quest19ITC1_HORDE = Itemc5;
Inst14Quest19description1_HORDE = AQITEM_ITEM
Inst14Quest19ID1_HORDE = "18659"



--------------- INST15 - Sunken Temple ---------------

--Quest 1 Alliance
Inst15Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst15Quest1ITC1 = Itemc3;
Inst15Quest1description1 = AQITEM_TRINKET
Inst15Quest1ID1 = "1490"

--Quest 2 Alliance
Inst15Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst15Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst15Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst15Quest4ITC1 = Itemc3;
Inst15Quest4description1 = AQITEM_ITEM
Inst15Quest4ID1 = "10773"

--Quest 5 Alliance
Inst15Quest5Rewardtext = AQNoReward

--Quest 6 Alliance
Inst15Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_AND..WHITE.."4"
--ITEM1
Inst15Quest6ITC1 = Itemc4;
Inst15Quest6description1 = AQITEM_HEAD..AQITEM_PLATE
Inst15Quest6ID1 = "10749"
--ITEM2
Inst15Quest6ITC2 = Itemc4;
Inst15Quest6description2 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst15Quest6ID2 = "10750"
--ITEM3
Inst15Quest6ITC3 = Itemc4;
Inst15Quest6description3 = AQITEM_HEAD..AQITEM_CLOTH
Inst15Quest6ID3 = "10751"
--ITEM4
Inst15Quest6ITC4 = Itemc2;
Inst15Quest6description4 = AQITEM_ITEM
Inst15Quest6ID4 = "10663"

--Quest 7 Alliance
Inst15Quest7Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst15Quest7ITC1 = Itemc4;
Inst15Quest7description1 = AQITEM_LEGS..AQITEM_CLOTH
Inst15Quest7ID1 = "11123"
--ITEM2
Inst15Quest7ITC2 = Itemc4;
Inst15Quest7description2 = AQITEM_HEAD..AQITEM_MAIL
Inst15Quest7ID2 = "11124"

--Quest 8 Alliance
Inst15Quest8Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst15Quest8ITC1 = Itemc3;
Inst15Quest8description1 = AQITEM_TRINKET
Inst15Quest8ID1 = "10455"

--Quest 9 Alliance
Inst15Quest9Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest9ITC1 = Itemc4;
Inst15Quest9description1 = AQITEM_STAFF
Inst15Quest9ID1 = "20536"
--ITEM2
Inst15Quest9ITC2 = Itemc4;
Inst15Quest9description2 = AQITEM_TRINKET
Inst15Quest9ID2 = "20534"
--ITEM3
Inst15Quest9ITC3 = Itemc4;
Inst15Quest9description3 = AQITEM_CHEST..AQITEM_CLOTH
Inst15Quest9ID3 = "20530"

--Quest 10 Alliance
Inst15Quest10Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest10ITC1 = Itemc4;
Inst15Quest10description1 = AQITEM_HEAD..AQITEM_PLATE
Inst15Quest10ID1 = "20521"
--ITEM2
Inst15Quest10ITC2 = Itemc4;
Inst15Quest10description2 = AQITEM_TRINKET
Inst15Quest10ID2 = "20130"
--ITEM3
Inst15Quest10ITC3 = Itemc4;
Inst15Quest10description3 = AQITEM_SHOULDER..AQITEM_PLATE
Inst15Quest10ID3 = "20517"

--Quest 11 Alliance
Inst15Quest11Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest11ITC1 = Itemc4;
Inst15Quest11description1 = AQITEM_CHEST..AQITEM_LEATHER
Inst15Quest11ID1 = "22274"
--ITEM2
Inst15Quest11ITC2 = Itemc4;
Inst15Quest11description2 = AQITEM_CHEST..AQITEM_LEATHER
Inst15Quest11ID2 = "22272"
--ITEM3
Inst15Quest11ITC3 = Itemc4;
Inst15Quest11description3 = AQITEM_STAFF
Inst15Quest11ID3 = "22458"

--Quest 12 Alliance
Inst15Quest12Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest12ITC1 = Itemc4;
Inst15Quest12description1 = AQITEM_POLEARM
Inst15Quest12ID1 = "20083"
--ITEM2
Inst15Quest12ITC2 = Itemc4;
Inst15Quest12description2 = AQITEM_TRINKET
Inst15Quest12ID2 = "19991"
--ITEM3
Inst15Quest12ITC3 = Itemc4;
Inst15Quest12description3 = AQITEM_TRINKET
Inst15Quest12ID3 = "19992"

--Quest 13 Alliance
Inst15Quest13Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest13ITC1 = Itemc4;
Inst15Quest13description1 = AQITEM_DAGGER
Inst15Quest13ID1 = "20035"
--ITEM2
Inst15Quest13ITC2 = Itemc4;
Inst15Quest13description2 = AQITEM_NECK
Inst15Quest13ID2 = "20037"
--ITEM3
Inst15Quest13ITC3 = Itemc4;
Inst15Quest13description3 = AQITEM_TRINKET
Inst15Quest13ID3 = "20036"

--Quest 14 Alliance
Inst15Quest14Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest14ITC1 = Itemc4;
Inst15Quest14description1 = AQITEM_TRINKET
Inst15Quest14ID1 = "19990"
--ITEM2
Inst15Quest14ITC2 = Itemc4;
Inst15Quest14description2 = AQITEM_WAND
Inst15Quest14ID2 = "20082"
--ITEM3
Inst15Quest14ITC3 = Itemc4;
Inst15Quest14description3 = AQITEM_RING
Inst15Quest14ID3 = "20006"

--Quest 15 Alliance
Inst15Quest15Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest15ITC1 = Itemc4;
Inst15Quest15description1 = AQITEM_HEAD..AQITEM_LEATHER
Inst15Quest15ID1 = "19984"
--ITEM2
Inst15Quest15ITC2 = Itemc4;
Inst15Quest15description2 = AQITEM_FEET..AQITEM_LEATHER
Inst15Quest15ID2 = "20255"
--ITEM3
Inst15Quest15ITC3 = Itemc4;
Inst15Quest15description3 = AQITEM_BACK
Inst15Quest15ID3 = "19982"

--Quest 16 Alliance
Inst15Quest16Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst15Quest16ITC1 = Itemc4;
Inst15Quest16description1 = AQITEM_ITEM
Inst15Quest16ID1 = "20620"
--ITEM2
Inst15Quest16ITC2 = Itemc4;
Inst15Quest16description2 = AQITEM_SWORD
Inst15Quest16ID2 = "20504"
--ITEM3
Inst15Quest16ITC3 = Itemc4;
Inst15Quest16description3 = AQITEM_TRINKET
Inst15Quest16ID3 = "20512"
--ITEM4
Inst15Quest16ITC4 = Itemc4;
Inst15Quest16description4 = AQITEM_RING
Inst15Quest16ID4 = "20505"


--Quest 1 Horde
Inst15Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst15Quest1ITC1_HORDE = Itemc3;
Inst15Quest1description1_HORDE = AQITEM_TRINKET
Inst15Quest1ID1_HORDE = "1490"

--Quest 2 Horde
Inst15Quest2Rewardtext_HORDE = AQNoReward

--Quest 3 Horde
Inst15Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst15Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst15Quest4ITC1_HORDE = Itemc3;
Inst15Quest4description1_HORDE = AQITEM_ITEM
Inst15Quest4ID1_HORDE = "10773"

--Quest 5 Horde
Inst15Quest5Rewardtext_HORDE = AQNoReward

--Quest 6 Horde
Inst15Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_AND..WHITE.."4"
--ITEM1
Inst15Quest6ITC1_HORDE = Itemc4;
Inst15Quest6description1_HORDE = AQITEM_HEAD..AQITEM_PLATE
Inst15Quest6ID1_HORDE = "10749"
--ITEM2
Inst15Quest6ITC2_HORDE = Itemc4;
Inst15Quest6description2_HORDE = AQITEM_ONEHAND..AQITEM_DAGGER
Inst15Quest6ID2_HORDE = "10750"
--ITEM3
Inst15Quest6ITC3_HORDE = Itemc4;
Inst15Quest6description3_HORDE = AQITEM_HEAD..AQITEM_CLOTH
Inst15Quest6ID3_HORDE = "10751"
--ITEM4
Inst15Quest6ITC4_HORDE = Itemc2;
Inst15Quest6description4_HORDE = AQITEM_ITEM
Inst15Quest6ID4_HORDE = "10663"

--Quest 7 Horde
Inst15Quest7Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst15Quest7ITC1_HORDE = Itemc4;
Inst15Quest7description1_HORDE = AQITEM_LEGS..AQITEM_CLOTH
Inst15Quest7ID1_HORDE = "11123"
--ITEM2
Inst15Quest7ITC2_HORDE = Itemc4;
Inst15Quest7description2_HORDE = AQITEM_HEAD..AQITEM_MAIL
Inst15Quest7ID2_HORDE = "11124"

--Quest 8 Horde
Inst15Quest8Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst15Quest8ITC1_HORDE = Itemc3;
Inst15Quest8description1_HORDE = AQITEM_TRINKET
Inst15Quest8ID1_HORDE = "10455"

--Quest 9 Horde
Inst15Quest9Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest9ITC1_HORDE = Itemc4;
Inst15Quest9description1_HORDE = AQITEM_STAFF
Inst15Quest9ID1_HORDE = "20536"
--ITEM2
Inst15Quest9ITC2_HORDE = Itemc4;
Inst15Quest9description2_HORDE = AQITEM_TRINKET
Inst15Quest9ID2_HORDE = "20534"
--ITEM3
Inst15Quest9ITC3_HORDE = Itemc4;
Inst15Quest9description3_HORDE = AQITEM_CHEST..AQITEM_CLOTH
Inst15Quest9ID3_HORDE = "20530"

--Quest 10 Horde
Inst15Quest10Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest10ITC1_HORDE = Itemc4;
Inst15Quest10description1_HORDE = AQITEM_HEAD..AQITEM_PLATE
Inst15Quest10ID1_HORDE = "20521"
--ITEM2
Inst15Quest10ITC2_HORDE = Itemc4;
Inst15Quest10description2_HORDE = AQITEM_TRINKET
Inst15Quest10ID2_HORDE = "20130"
--ITEM3
Inst15Quest10ITC3_HORDE = Itemc4;
Inst15Quest10description3_HORDE = AQITEM_SHOULDER..AQITEM_PLATE
Inst15Quest10ID3_HORDE = "20517"

--Quest 11 Horde
Inst15Quest11Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest11ITC1_HORDE = Itemc4;
Inst15Quest11description1_HORDE = AQITEM_CHEST..AQITEM_LEATHER
Inst15Quest11ID1_HORDE = "22274"
--ITEM2
Inst15Quest11ITC2_HORDE = Itemc4;
Inst15Quest11description2_HORDE = AQITEM_CHEST..AQITEM_LEATHER
Inst15Quest11ID2_HORDE = "22272"
--ITEM3
Inst15Quest11ITC3_HORDE = Itemc4;
Inst15Quest11description3_HORDE = AQITEM_STAFF
Inst15Quest11ID3_HORDE = "22458"

--Quest 12 Horde
Inst15Quest12Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest12ITC1_HORDE = Itemc4;
Inst15Quest12description1_HORDE = AQITEM_POLEARM
Inst15Quest12ID1_HORDE = "20083"
--ITEM2
Inst15Quest12ITC2_HORDE = Itemc4;
Inst15Quest12description2_HORDE = AQITEM_TRINKET
Inst15Quest12ID2_HORDE = "19991"
--ITEM3
Inst15Quest12ITC3_HORDE = Itemc4;
Inst15Quest12description3_HORDE = AQITEM_TRINKET
Inst15Quest12ID3_HORDE = "19992"

--Quest 13 Horde
Inst15Quest13Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest13ITC1_HORDE = Itemc4;
Inst15Quest13description1_HORDE = AQITEM_DAGGER
Inst15Quest13ID1_HORDE = "20035"
--ITEM2
Inst15Quest13ITC2_HORDE = Itemc4;
Inst15Quest13description2_HORDE = AQITEM_NECK
Inst15Quest13ID2_HORDE = "20037"
--ITEM3
Inst15Quest13ITC3_HORDE = Itemc4;
Inst15Quest13description3_HORDE = AQITEM_TRINKET
Inst15Quest13ID3_HORDE = "20036"

--Quest 14 Horde
Inst15Quest14Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest14ITC1_HORDE = Itemc4;
Inst15Quest14description1_HORDE = AQITEM_TRINKET
Inst15Quest14ID1_HORDE = "19990"
--ITEM2
Inst15Quest14ITC2_HORDE = Itemc4;
Inst15Quest14description2_HORDE = AQITEM_WAND
Inst15Quest14ID2_HORDE = "20082"
--ITEM3
Inst15Quest14ITC3_HORDE = Itemc4;
Inst15Quest14description3_HORDE = AQITEM_RING
Inst15Quest14ID3_HORDE = "20006"

--Quest 15 Horde
Inst15Quest15Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest15ITC1_HORDE = Itemc4;
Inst15Quest15description1_HORDE = AQITEM_HEAD..AQITEM_LEATHER
Inst15Quest15ID1_HORDE = "19984"
--ITEM2
Inst15Quest15ITC2_HORDE = Itemc4;
Inst15Quest15description2_HORDE = AQITEM_FEET..AQITEM_LEATHER
Inst15Quest15ID2_HORDE = "20255"
--ITEM3
Inst15Quest15ITC3_HORDE = Itemc4;
Inst15Quest15description3_HORDE = AQITEM_BACK
Inst15Quest15ID3_HORDE = "19982"

--Quest 16 Horde
Inst15Quest16Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst15Quest16ITC1_HORDE = Itemc4;
Inst15Quest16description1_HORDE = AQITEM_HANDS..AQITEM_MAIL
Inst15Quest16ID1_HORDE = "20369"
--ITEM2
Inst15Quest16ITC2_HORDE = Itemc4;
Inst15Quest16description2_HORDE = AQITEM_TRINKET
Inst15Quest16ID2_HORDE = "20503"
--ITEM3
Inst15Quest16ITC3_HORDE = Itemc4;
Inst15Quest16description3_HORDE = AQITEM_STAFF
Inst15Quest16ID3_HORDE = "20556"



--------------- INST16 - Uldaman ---------------

--Quest 1 Alliance
Inst16Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst16Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst16Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst16Quest3ITC1 = Itemc3;
Inst16Quest3description1 = AQITEM_NECK
Inst16Quest3ID1 = "6723"

--Quest 4 Alliance
Inst16Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst16Quest4ITC1 = Itemc3;
Inst16Quest4description1 = AQITEM_SHIELD
Inst16Quest4ID1 = "9522"
--ITEM2
Inst16Quest4ITC2 = Itemc3;
Inst16Quest4description2 = AQITEM_WRIST..AQITEM_MAIL
Inst16Quest4ID2 = "10358"
--ITEM3
Inst16Quest4ITC3 = Itemc3;
Inst16Quest4description3 = AQITEM_FEET..AQITEM_CLOTH
Inst16Quest4ID3 = "10359"

--Quest 5 Alliance
Inst16Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst16Quest5ITC1 = Itemc3;
Inst16Quest5description1 = AQITEM_HANDS..AQITEM_LEATHER
Inst16Quest5ID1 = "4980"

--Quest 6 Alliance
Inst16Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst16Quest6ITC1 = Itemc3;
Inst16Quest6description1 = AQITEM_CHEST..AQITEM_CLOTH
Inst16Quest6ID1 = "4746"

--Quest 7 Alliance
Inst16Quest7Rewardtext = AQNoReward

--Quest 8 Alliance
Inst16Quest8Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst16Quest8ITC1 = Itemc3;
Inst16Quest8description1 = AQITEM_TWOHAND..AQITEM_AXE
Inst16Quest8ID1 = "9626"
--ITEM2
Inst16Quest8ITC2 = Itemc3;
Inst16Quest8description2 = AQITEM_OFFHAND
Inst16Quest8ID2 = "9627"

--Quest 9 Alliance
Inst16Quest9Rewardtext = AQNoReward

--Quest 10 Alliance
Inst16Quest10Rewardtext = AQNoReward

--Quest 11 Alliance
Inst16Quest11Rewardtext = AQNoReward

--Quest 12 Alliance
Inst16Quest12Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst16Quest12ITC1 = Itemc4;
Inst16Quest12description1 = AQITEM_NECK
Inst16Quest12ID1 = "7673"

--Quest 13 Alliance
Inst16Quest13Rewardtext = AQDiscription_REWARD..WHITE.."1(x5)"
--ITEM1
Inst16Quest13ITC1 = Itemc2;
Inst16Quest13description1 = AQITEM_POTION
Inst16Quest13ID1 = "9030"

--Quest 14 Alliance
Inst16Quest14Rewardtext = AQNoReward

--Quest 15 Alliance
Inst16Quest15Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2(x5)"..AQDiscription_OR..WHITE.."3(x5)"
--ITEM1
Inst16Quest15ITC1 = Itemc2;
Inst16Quest15description1 = AQITEM_BAG
Inst16Quest15ID1 = "9587"
--ITEM2
Inst16Quest15ITC2 = Itemc2;
Inst16Quest15description2 = AQITEM_POTION
Inst16Quest15ID2 = "3928"
--ITEM3
Inst16Quest15ITC3 = Itemc2;
Inst16Quest15description3 = AQITEM_POTION
Inst16Quest15ID3 = "6149"

--Quest 16 Alliance
Inst16Quest16Rewardtext = AQNoReward

--Quest 17 Alliance
Inst16Quest17Rewardtext = AQNoReward


--Quest 1 Horde
Inst16Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst16Quest1ITC1_HORDE = Itemc3;
Inst16Quest1description1_HORDE = AQITEM_SHIELD
Inst16Quest1ID1_HORDE = "9522"
--ITEM2
Inst16Quest1ITC2_HORDE = Itemc3;
Inst16Quest1description2_HORDE = AQITEM_WRIST..AQITEM_MAIL
Inst16Quest1ID2_HORDE = "10358"
--ITEM3
Inst16Quest1ITC3_HORDE = Itemc3;
Inst16Quest1description3_HORDE = AQITEM_FEET..AQITEM_CLOTH
Inst16Quest1ID3_HORDE = "10359"

--Quest 2 Horde
Inst16Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst16Quest2ITC1_HORDE = Itemc3;
Inst16Quest2description1_HORDE = AQITEM_CHEST..AQITEM_CLOTH
Inst16Quest2ID1_HORDE = "4746"

--Quest 3 Horde
Inst16Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst16Quest4Rewardtext_HORDE = AQNoReward

--Quest 5 Horde
Inst16Quest5Rewardtext_HORDE = AQNoReward

--Quest 6 Horde
Inst16Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst16Quest6ITC1_HORDE = Itemc4;
Inst16Quest6description1_HORDE = AQITEM_NECK
Inst16Quest6ID1_HORDE = "7888"

--Quest 7 Horde
Inst16Quest7Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1(x5)"
--ITEM1
Inst16Quest7ITC1_HORDE = Itemc2;
Inst16Quest7description1_HORDE = AQITEM_POTION
Inst16Quest7ID1_HORDE = "9030"

--Quest 8 Horde
Inst16Quest8Rewardtext_HORDE = AQNoReward

--Quest 9 Horde
Inst16Quest9Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2(x5)"..AQDiscription_OR..WHITE.."3(x5)"
--ITEM1
Inst16Quest9ITC1_HORDE = Itemc2;
Inst16Quest9description1_HORDE = AQITEM_BAG
Inst16Quest9ID1_HORDE = "9587"
--ITEM2
Inst16Quest9ITC2_HORDE = Itemc2;
Inst16Quest9description2_HORDE = AQITEM_POTION
Inst16Quest9ID2_HORDE = "3928"
--ITEM3
Inst16Quest9ITC3_HORDE = Itemc2;
Inst16Quest9description3_HORDE = AQITEM_POTION
Inst16Quest9ID3_HORDE = "6149"

--Quest 10 Horde
Inst16Quest10Rewardtext_HORDE = AQNoReward

--Quest 11 Horde
Inst16Quest11Rewardtext_HORDE = AQNoReward



--------------- INST17 - Blackfathom Deeps ---------------

--Quest 1 Alliance
Inst17Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst17Quest1ITC1 = Itemc3;
Inst17Quest1description1 = AQITEM_RING
Inst17Quest1ID1 = "6743"

--Quest 2 Alliance
Inst17Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst17Quest2ITC1 = Itemc3;
Inst17Quest2description1 = AQITEM_WRIST..AQITEM_MAIL
Inst17Quest2ID1 = "7003"
--ITEM1
Inst17Quest2ITC2 = Itemc3;
Inst17Quest2description2 = AQITEM_BACK
Inst17Quest2ID2 = "7004"

--Quest 3 Alliance
Inst17Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst17Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst17Quest4ITC1 = Itemc4;
Inst17Quest4description1 = AQITEM_WAND
Inst17Quest4ID1 = "7001"
--ITEM1
Inst17Quest4ITC2 = Itemc4;
Inst17Quest4description2 = AQITEM_SHIELD
Inst17Quest4ID2 = "7002"

--Quest 5 Alliance
Inst17Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst17Quest5ITC1 = Itemc3;
Inst17Quest5description1 = AQITEM_FEET..AQITEM_CLOTH
Inst17Quest5ID1 = "6998"
--ITEM1
Inst17Quest5ITC2 = Itemc3;
Inst17Quest5description2 = AQITEM_WAIST..AQITEM_LEATHER
Inst17Quest5ID2 = "7000"

--Quest 6 Alliance
Inst17Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst17Quest6ITC1 = Itemc3;
Inst17Quest6description1 = AQITEM_OFFHAND
Inst17Quest6ID1 = "6898"
--ITEM1
Inst17Quest6ITC2 = Itemc3;
Inst17Quest6description2 = AQITEM_STAFF
Inst17Quest6ID2 = "15109"


--Quest 1 Horde
Inst17Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst17Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst17Quest2ITC1_HORDE = Itemc3;
Inst17Quest2description1_HORDE = AQITEM_RING
Inst17Quest2ID1_HORDE = "17694"
--ITEM1
Inst17Quest2ITC2_HORDE = Itemc3;
Inst17Quest2description2_HORDE = AQITEM_SHOULDER..AQITEM_CLOTH
Inst17Quest2ID2_HORDE = "17695"

--Quest 3 Horde
Inst17Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst17Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst17Quest4ITC1_HORDE = Itemc4;
Inst17Quest4description1_HORDE = AQITEM_WAND
Inst17Quest4ID1_HORDE = "7001"
--ITEM1
Inst17Quest4ITC2_HORDE = Itemc4;
Inst17Quest4description2_HORDE = AQITEM_SHIELD
Inst17Quest4ID2_HORDE = "7002"

--Quest 5 Horde
Inst17Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst17Quest5ITC1_HORDE = Itemc3;
Inst17Quest5description1_HORDE = AQITEM_OFFHAND
Inst17Quest5ID1_HORDE = "6898"
--ITEM1
Inst17Quest5ITC2_HORDE = Itemc3;
Inst17Quest5description2_HORDE = AQITEM_STAFF
Inst17Quest5ID2_HORDE = "15109"



--------------- INST18 - Dire Maul East ---------------

--Quest 1 Alliance
Inst18Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst18Quest1ITC1 = Itemc3;
Inst18Quest1description1 = AQITEM_FEET .. AQITEM_LEATHER
Inst18Quest1ID1 = "18411"
--ITEM2
Inst18Quest1ITC2 = Itemc3;
Inst18Quest1description2 = AQITEM_TWOHAND .. AQITEM_SWORD
Inst18Quest1ID2 = "18410"

--Quest 2 Alliance
Inst18Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst18Quest2ITC1 = Itemc4;
Inst18Quest2description1 = AQITEM_MAINHAND .. AQITEM_DAGGER
Inst18Quest2ID1 = "18491"

--Quest 3 Alliance
Inst18Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst18Quest3ITC1 = Itemc4;
Inst18Quest3description1 = AQITEM_SHIELD
Inst18Quest3ID1 = "18535"
--ITEM2
Inst18Quest3ITC2 = Itemc4;
Inst18Quest3description2 = AQITEM_OFFHAND
Inst18Quest3ID2 = "18536"

--Quest 4 Alliance
Inst18Quest4Rewardtext = AQNoReward

--Quest 5 Alliance
Inst18Quest5Rewardtext = AQNoReward

--Quest 6 Alliance
Inst18Quest6Rewardtext = AQNoReward


--Quest 1 Horde
Inst18Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst18Quest1ITC1_HORDE = Itemc3;
Inst18Quest1description1_HORDE = AQITEM_FEET .. AQITEM_LEATHER
Inst18Quest1ID1_HORDE = "18411"
--ITEM2
Inst18Quest1ITC2_HORDE = Itemc3;
Inst18Quest1description2_HORDE = AQITEM_TWOHAND .. AQITEM_SWORD
Inst18Quest1ID2_HORDE = "18410"

--Quest 2 Horde
Inst18Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst18Quest2ITC1_HORDE = Itemc4;
Inst18Quest2description1_HORDE = AQITEM_MAINHAND .. AQITEM_DAGGER
Inst18Quest2ID1_HORDE = "18491"

--Quest 3 Horde
Inst18Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst18Quest3ITC1_HORDE = Itemc4;
Inst18Quest3description1_HORDE = AQITEM_SHIELD
Inst18Quest3ID1_HORDE = "18535"
--ITEM2
Inst18Quest3ITC2_HORDE = Itemc4;
Inst18Quest3description2_HORDE = AQITEM_OFFHAND
Inst18Quest3ID2_HORDE = "18536"

--Quest 4 Horde
Inst18Quest4Rewardtext_HORDE = AQNoReward

--Quest 5 Horde
Inst18Quest5Rewardtext_HORDE = AQNoReward

--Quest 6 Horde
Inst18Quest6Rewardtext_HORDE = AQNoReward



--------------- INST19 - Dire Maul North ---------------

--Quest 1 Alliance
Inst19Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst19Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst19Quest2ITC1 = Itemc3;
Inst19Quest2description1 = AQITEM_ITEM
Inst19Quest2ID1 = "18258"

--Quest 3 Alliance
Inst19Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst19Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst19Quest4ITC1 = Itemc4;
Inst19Quest4description1 = AQITEM_HANDS .. AQITEM_CLOTH
Inst19Quest4ID1 = "18369"
--ITEM2
Inst19Quest4ITC2 = Itemc4;
Inst19Quest4description2 = AQITEM_HANDS ..AQITEM_LEATHER
Inst19Quest4ID2 = "18368"
--ITEM3
Inst19Quest4ITC3 = Itemc4;
Inst19Quest4description3 = AQITEM_HANDS .. AQITEM_MAIL
Inst19Quest4ID3 = "18367"
--ITEM4
Inst19Quest4ITC4 = Itemc4;
Inst19Quest4description4 = AQITEM_HANDS .. AQITEM_PLATE
Inst19Quest4ID4 = "18366"

--Quest 5 Alliance
Inst19Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst19Quest5ITC1 = Itemc3;
Inst19Quest5description1 = AQITEM_ITEM
Inst19Quest5ID1 = "18269"
--ITEM2
Inst19Quest5ITC2 = Itemc3;
Inst19Quest5description2 = AQITEM_ITEM
Inst19Quest5ID2 = "18284"


--Quest 1 Horde
Inst19Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst19Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst19Quest2ITC1_HORDE = Itemc3;
Inst19Quest2description1_HORDE = AQITEM_ITEM
Inst19Quest2ID1_HORDE = "18258"

--Quest 3 Horde
Inst19Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst19Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst19Quest4ITC1_HORDE = Itemc4;
Inst19Quest4description1_HORDE = AQITEM_HANDS .. AQITEM_CLOTH
Inst19Quest4ID1_HORDE = "18369"
--ITEM2
Inst19Quest4ITC2_HORDE = Itemc4;
Inst19Quest4description2_HORDE = AQITEM_HANDS ..AQITEM_LEATHER
Inst19Quest4ID2_HORDE = "18368"
--ITEM3
Inst19Quest4ITC3_HORDE = Itemc4;
Inst19Quest4description3_HORDE = AQITEM_HANDS .. AQITEM_MAIL
Inst19Quest4ID3_HORDE = "18367"
--ITEM4
Inst19Quest4ITC4_HORDE = Itemc4;
Inst19Quest4description4_HORDE = AQITEM_HANDS .. AQITEM_PLATE
Inst19Quest4ID4_HORDE = "18366"

--Quest 5 Horde
Inst19Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst19Quest5ITC1_HORDE = Itemc3;
Inst19Quest5description1_HORDE = AQITEM_ITEM
Inst19Quest5ID1_HORDE = "18269"
--ITEM2
Inst19Quest5ITC2_HORDE = Itemc3;
Inst19Quest5description2_HORDE = AQITEM_ITEM
Inst19Quest5ID2_HORDE = "18284"



--------------- INST20 - Dire Maul West ---------------

--Quest 1 Alliance
Inst20Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst20Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst20Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst20Quest3ITC1 = Itemc4;
Inst20Quest3description1 = AQITEM_FEET .. AQITEM_LEATHER
Inst20Quest3ID1 = "18424"
--ITEM2
Inst20Quest3ITC2 = Itemc4;
Inst20Quest3description2 = AQITEM_HEAD ..AQITEM_MAIL
Inst20Quest3ID2 = "18421"
--ITEM3
Inst20Quest3ITC3 = Itemc4;
Inst20Quest3description3 = AQITEM_TWOHAND .. AQITEM_MACE
Inst20Quest3ID3 = "18420"

--Quest 4 Alliance
Inst20Quest4Rewardtext = AQNoReward

--Quest 5 Alliance
Inst20Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest5ITC1 = Itemc4;
Inst20Quest5description1 = AQITEM_TRINKET
Inst20Quest5ID1 = "18470"

--Quest 6 Alliance
Inst20Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest6ITC1 = Itemc4;
Inst20Quest6description1 = AQITEM_TRINKET
Inst20Quest6ID1 = "18473"

--Quest 7 Alliance
Inst20Quest7Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest7ITC1 = Itemc4;
Inst20Quest7description1 = AQITEM_TRINKET
Inst20Quest7ID1 = "18468"

--Quest 8 Alliance
Inst20Quest8Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest8ITC1 = Itemc4;
Inst20Quest8description1 = AQITEM_TRINKET
Inst20Quest8ID1 = "18472"

--Quest 9 Alliance
Inst20Quest9Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest9ITC1 = Itemc4;
Inst20Quest9description1 = AQITEM_TRINKET
Inst20Quest9ID1 = "18469"

--Quest 10 Alliance
Inst20Quest10Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest10ITC1 = Itemc4;
Inst20Quest10description1 = AQITEM_TRINKET
Inst20Quest10ID1 = "18465"

--Quest 11 Alliance
Inst20Quest11Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest11ITC1 = Itemc4;
Inst20Quest11description1 = AQITEM_TRINKET
Inst20Quest11ID1 = "18467"

--Quest 12 Alliance
Inst20Quest12Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest12ITC1 = Itemc4;
Inst20Quest12description1 = AQITEM_TRINKET
Inst20Quest12ID1 = "18466"

--Quest 13 Alliance
Inst20Quest13Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest13ITC1 = Itemc3;
Inst20Quest13description1 = AQITEM_ENCHANT
Inst20Quest13ID1 = "18330"

--Quest 14 Alliance
Inst20Quest14Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest14ITC1 = Itemc3;
Inst20Quest14description1 = AQITEM_ENCHANT
Inst20Quest14ID1 = "18331"

--Quest 15 Alliance
Inst20Quest15Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest15ITC1 = Itemc3;
Inst20Quest15description1 = AQITEM_ENCHANT
Inst20Quest15ID1 = "18329"

--Quest 16 Alliance
Inst20Quest16Rewardtext = AQNoReward


--Quest 1 Horde
Inst20Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst20Quest2Rewardtext_HORDE = AQNoReward

--Quest 3 Horde
Inst20Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst20Quest3ITC1_HORDE = Itemc4;
Inst20Quest3description1_HORDE = AQITEM_FEET .. AQITEM_LEATHER
Inst20Quest3ID1_HORDE = "18424"
--ITEM2
Inst20Quest3ITC2_HORDE = Itemc4;
Inst20Quest3description2_HORDE = AQITEM_HEAD ..AQITEM_MAIL
Inst20Quest3ID2_HORDE = "18421"
--ITEM3
Inst20Quest3ITC3_HORDE = Itemc4;
Inst20Quest3description3_HORDE = AQITEM_TWOHAND .. AQITEM_MACE
Inst20Quest3ID3_HORDE = "18420"

--Quest 4 Horde
Inst20Quest4Rewardtext_HORDE = AQNoReward

--Quest 5 Horde
Inst20Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest5ITC1_HORDE = Itemc4;
Inst20Quest5description1_HORDE = AQITEM_TRINKET
Inst20Quest5ID1_HORDE = "18470"

--Quest 6 Horde
Ins12Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest6ITC1_HORDE = Itemc4;
Inst20Quest6description1_HORDE = AQITEM_TRINKET
Inst20Quest6ID1_HORDE = "18473"

--Quest 7 Horde
Inst20Quest7Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest7ITC1_HORDE = Itemc4;
Inst20Quest7description1_HORDE = AQITEM_TRINKET
Inst20Quest7ID1_HORDE = "18468"

--Quest 8 Horde
Inst20Quest8Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest8ITC1_HORDE = Itemc4;
Inst20Quest8description1_HORDE = AQITEM_TRINKET
Inst20Quest8ID1_HORDE = "18471"

--Quest 9 Horde
Inst20Quest9Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest9ITC1_HORDE = Itemc4;
Inst20Quest9description1_HORDE = AQITEM_TRINKET
Inst20Quest9ID1_HORDE = "18469"

--Quest 10 Horde
Inst20Quest10Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest10ITC1_HORDE = Itemc4;
Inst20Quest10description1_HORDE = AQITEM_TRINKET
Inst20Quest10ID1_HORDE = "18465"

--Quest 11 Horde
Inst20Quest11Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest11ITC1_HORDE = Itemc4;
Inst20Quest11description1_HORDE = AQITEM_TRINKET
Inst20Quest11ID1_HORDE = "18467"

--Quest 12 Horde
Inst20Quest12Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest12ITC1_HORDE = Itemc4;
Inst20Quest12description1_HORDE = AQITEM_TRINKET
Inst20Quest12ID1_HORDE = "18466"

--Quest 13 Horde
Inst20Quest13Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest13ITC1_HORDE = Itemc3;
Inst20Quest13description1_HORDE = AQITEM_ENCHANT
Inst20Quest13ID1_HORDE = "18330"

--Quest 14 Horde
Inst20Quest14Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest14ITC1_HORDE = Itemc3;
Inst20Quest14description1_HORDE = AQITEM_ENCHANT
Inst20Quest14ID1_HORDE = "18331"

--Quest 15 Horde
Inst20Quest15Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst20Quest15ITC1_HORDE = Itemc3;
Inst20Quest15description1_HORDE = AQITEM_ENCHANT
Inst20Quest15ID1_HORDE = "18329"

--Quest 16 Horde
Inst20Quest16Rewardtext_HORDE = AQNoReward



--------------- INST21 - Maraudon ---------------

--Quest 1 Alliance
Inst21Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst21Quest1ITC1 = Itemc3;
Inst21Quest1description1 = AQITEM_NECK
Inst21Quest1ID1 = "17772"
--ITEM2
Inst21Quest1ITC2 = Itemc3;
Inst21Quest1description2 = AQITEM_NECK
Inst21Quest1ID2 = "17773"

--Quest 2 Alliance
Inst21Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst21Quest2ITC1 = Itemc3;
Inst21Quest2description1 = AQITEM_RING
Inst21Quest2ID1 = "17768"
--ITEM2
Inst21Quest2ITC2 = Itemc3;
Inst21Quest2description2 = AQITEM_WAIST..AQITEM_LEATHER
Inst21Quest2ID2 = "17778"
--ITEM3
Inst21Quest2ITC3 = Itemc3;
Inst21Quest2description3 = AQITEM_HANDS..AQITEM_PLATE
Inst21Quest2ID3 = "17770"

--Quest 3 Alliance
Inst21Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst21Quest3ITC1 = Itemc3;
Inst21Quest3description1 = AQITEM_CHEST..AQITEM_CLOTH
Inst21Quest3ID1 = "17775"
--ITEM2
Inst21Quest3ITC2 = Itemc3;
Inst21Quest3description2 = AQITEM_HEAD..AQITEM_LEATHER
Inst21Quest3ID2 = "17776"
--ITEM3
Inst21Quest3ITC3 = Itemc3;
Inst21Quest3description3 = AQITEM_CHEST..AQITEM_MAIL
Inst21Quest3ID3 = "17777"
--ITEM4
Inst21Quest3ITC4 = Itemc3;
Inst21Quest3description4 = AQITEM_SHOULDER..AQITEM_PLATE
Inst21Quest3ID4 = "17779"

--Quest 4 Alliance
Inst21Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst21Quest4ITC1 = Itemc3;
Inst21Quest4description1 = AQITEM_TRINKET
Inst21Quest4ID1 = "17774"
--ITEM2
Inst21Quest4ITC2 = Itemc2;
Inst21Quest4description2 = AQITEM_ITEM
Inst21Quest4ID2 = "17757"

--Quest 5 Alliance
Inst21Quest5Rewardtext = AQNoReward

--Quest 6 Alliance
Inst21Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst21Quest6ITC1 = Itemc4;
Inst21Quest6description1 = AQITEM_STAFF
Inst21Quest6ID1 = "17191"

--Quest 7 Alliance
Inst21Quest7Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst21Quest7ITC1 = Itemc4;
Inst21Quest7description1 = AQITEM_ONEHAND..AQITEM_SWORD
Inst21Quest7ID1 = "17705"
--ITEM2
Inst21Quest7ITC2 = Itemc4;
Inst21Quest7description2 = AQITEM_STAFF
Inst21Quest7ID2 = "17743"
--ITEM3
Inst21Quest7ITC3 = Itemc4;
Inst21Quest7description3 = AQITEM_BOW
Inst21Quest7ID3 = "17753"

--Quest 8 Alliance
Inst21Quest8Rewardtext = AQNoReward


--Quest 1 Horde
Inst21Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst21Quest1ITC1_HORDE = Itemc3;
Inst21Quest1description1_HORDE = AQITEM_NECK
Inst21Quest1ID1_HORDE = "17772"
--ITEM2
Inst21Quest1ITC2_HORDE = Itemc3;
Inst21Quest1description2_HORDE = AQITEM_NECK
Inst21Quest1ID2_HORDE = "17773"

--Quest 2 Horde
Inst21Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst21Quest2ITC1_HORDE = Itemc3;
Inst21Quest2description1_HORDE = AQITEM_RING
Inst21Quest2ID1_HORDE = "17768"
--ITEM2
Inst21Quest2ITC2_HORDE = Itemc3;
Inst21Quest2description2_HORDE = AQITEM_WAIST..AQITEM_LEATHER
Inst21Quest2ID2_HORDE = "17778"
--ITEM3
Inst21Quest2ITC3_HORDE = Itemc3;
Inst21Quest2description3_HORDE = AQITEM_HANDS..AQITEM_PLATE
Inst21Quest2ID3_HORDE = "17770"

--Quest 3 Horde
Inst21Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst21Quest3ITC1_HORDE = Itemc3;
Inst21Quest3description1_HORDE = AQITEM_CHEST..AQITEM_CLOTH
Inst21Quest3ID1_HORDE = "17775"
--ITEM2
Inst21Quest3ITC2_HORDE = Itemc3;
Inst21Quest3description2_HORDE = AQITEM_HEAD..AQITEM_LEATHER
Inst21Quest3ID2_HORDE = "17776"
--ITEM3
Inst21Quest3ITC3_HORDE = Itemc3;
Inst21Quest3description3_HORDE = AQITEM_CHEST..AQITEM_MAIL
Inst21Quest3ID3_HORDE = "17777"
--ITEM4
Inst21Quest3ITC4_HORDE = Itemc3;
Inst21Quest3description4_HORDE = AQITEM_SHOULDER..AQITEM_PLATE
Inst21Quest3ID4_HORDE = "17779"

--Quest 4 Horde
Inst21Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst21Quest4ITC1_HORDE = Itemc3;
Inst21Quest4description1_HORDE = AQITEM_TRINKET
Inst21Quest4ID1_HORDE = "17774"
--ITEM2
Inst21Quest4ITC2_HORDE = Itemc2;
Inst21Quest4description2_HORDE = AQITEM_ITEM
Inst21Quest4ID2_HORDE = "17757"

--Quest 5 Horde
Inst21Quest5Rewardtext_HORDE = AQNoReward

--Quest 6 Horde
Inst21Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst21Quest6ITC1_HORDE = Itemc4;
Inst21Quest6description1_HORDE = AQITEM_STAFF
Inst21Quest6ID1_HORDE = "17191"

--Quest 7 Horde
Inst21Quest7Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst21Quest7ITC1_HORDE = Itemc4;
Inst21Quest7description1_HORDE = AQITEM_ONEHAND..AQITEM_SWORD
Inst21Quest7ID1_HORDE = "17705"
--ITEM2
Inst21Quest7ITC2_HORDE = Itemc4;
Inst21Quest7description2_HORDE = AQITEM_STAFF
Inst21Quest7ID2_HORDE = "17743"
--ITEM3
Inst21Quest7ITC3_HORDE = Itemc4;
Inst21Quest7description3_HORDE = AQITEM_BOW
Inst21Quest7ID3_HORDE = "17753"

--Quest 8 Horde
Inst21Quest8Rewardtext_HORDE = AQNoReward



--------------- INST22 - Ragefire Chasm ---------------

--Quest 1 Horde
Inst22Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst22Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst22Quest2ITC1_HORDE = Itemc3;
Inst22Quest2description1_HORDE = AQITEM_LEGS..AQITEM_CLOTH
Inst22Quest2ID1_HORDE = "15449"
--ITEM2
Inst22Quest2ITC2_HORDE = Itemc3;
Inst22Quest2description2_HORDE = AQITEM_LEGS..AQITEM_LEATHER
Inst22Quest2ID2_HORDE = "15450"
--ITEM3
Inst22Quest2ITC3_HORDE = Itemc3;
Inst22Quest2description3_HORDE = AQITEM_LEGS..AQITEM_MAIL
Inst22Quest2ID3_HORDE = "15451"

--Quest 3 Horde
Inst22Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst22Quest3ITC1_HORDE = Itemc3;
Inst22Quest3description1_HORDE = AQITEM_WRIST..AQITEM_CLOTH
Inst22Quest3ID1_HORDE = "15452"
--ITEM2
Inst22Quest3ITC2_HORDE = Itemc3;
Inst22Quest3description2_HORDE = AQITEM_WRIST..AQITEM_LEATHER
Inst22Quest3ID2_HORDE = "15453"

--Quest 4 Horde
Inst22Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst22Quest4ITC1_HORDE = Itemc3;
Inst22Quest4description1_HORDE = AQITEM_ONEHAND..AQITEM_DAGGER
Inst22Quest4ID1_HORDE = "15443"
--ITEM2
Inst22Quest4ITC2_HORDE = Itemc3;
Inst22Quest4description2_HORDE = AQITEM_MAINHAND..AQITEM_MACE
Inst22Quest4ID2_HORDE = "15445"
--ITEM3
Inst22Quest4ITC3_HORDE = Itemc3;
Inst22Quest4description3_HORDE = AQITEM_TWOHAND..AQITEM_AXE
Inst22Quest4ID3_HORDE = "15424"
--ITEM4
Inst22Quest4ITC4_HORDE = Itemc3;
Inst22Quest4description4_HORDE = AQITEM_STAFF
Inst22Quest4ID4_HORDE = "15444"

--Quest 5 Horde
Inst22Quest5Rewardtext_HORDE = AQNoReward



--------------- INST23 - Razorfen Downs ---------------

--Quest 1 Alliance
Inst23Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst23Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst23Quest2ITC1 = Itemc4;
Inst23Quest2description1 = AQITEM_RING
Inst23Quest2ID1 = "10710"

--Quest 3 Alliance
Inst23Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst23Quest3ITC1 = Itemc4;
Inst23Quest3description1 = AQITEM_ONEHAND..AQITEM_SWORD
Inst23Quest3ID1 = "10823"
--ITEM2
Inst23Quest3ITC2 = Itemc4;
Inst23Quest3description2 = AQITEM_NECK
Inst23Quest3ID2 = "10824"


--Quest 1 Horde
Inst23Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst23Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst23Quest2ITC1_HORDE = Itemc3;
Inst23Quest2description1_HORDE = AQITEM_MAINHAND..AQITEM_MACE
Inst23Quest2ID1_HORDE = "17039"
--ITEM2
Inst23Quest2ITC2_HORDE = Itemc3;
Inst23Quest2description2_HORDE = AQITEM_GUN
Inst23Quest2ID2_HORDE = "17042"
--ITEM3
Inst23Quest2ITC3_HORDE = Itemc3;
Inst23Quest2description3_HORDE = AQITEM_CHEST..AQITEM_CLOTH
Inst23Quest2ID3_HORDE = "17043"

--Quest 3 Horde
Inst23Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst23Quest3ITC1_HORDE = Itemc4;
Inst23Quest3description1_HORDE = AQITEM_RING
Inst23Quest3ID1_HORDE = "10710"

--Quest 4 Horde
Inst23Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst23Quest4ITC1_HORDE = Itemc4;
Inst23Quest4description1_HORDE = AQITEM_ONEHAND..AQITEM_SWORD
Inst23Quest4ID1_HORDE = "10823"
--ITEM2
Inst23Quest4ITC2_HORDE = Itemc4;
Inst23Quest4description2_HORDE = AQITEM_NECK
Inst23Quest4ID2_HORDE = "10824"



--------------- INST24 - Razorfen Kraul ---------------

--Quest 1 Alliance
Inst24Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst24Quest1ITC1 = Itemc2;
Inst24Quest1description1 = AQITEM_ITEM
Inst24Quest1ID1 = "6755"

--Quest 2 Alliance
Inst24Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst24Quest2ITC1 = Itemc3;
Inst24Quest2description1 = AQITEM_BACK
Inst24Quest2ID1 = "6751"
--ITEM2
Inst24Quest2ITC2 = Itemc3;
Inst24Quest2description2 = AQITEM_FEET..AQITEM_LEATHER
Inst24Quest2ID2 = "6752"

--Quest 3 Alliance
Inst24Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst24Quest3ITC1 = Itemc3;
Inst24Quest3description1 = AQITEM_RING
Inst24Quest3ID1 = "6748"
--ITEM2
Inst24Quest3ITC2 = Itemc3;
Inst24Quest3description2 = AQITEM_RING
Inst24Quest3ID2 = "6750"
--ITEM3
Inst24Quest3ITC3 = Itemc3;
Inst24Quest3description3 = AQITEM_RING
Inst24Quest3ID3 = "6749"

--Quest 4 Alliance
Inst24Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst24Quest4ITC1 = Itemc3;
Inst24Quest4description1 = AQITEM_GUN
Inst24Quest4ID1 = "3041"
--ITEM2
Inst24Quest4ITC2 = Itemc4;
Inst24Quest4description2 = AQITEM_SHOULDER..AQITEM_CLOTH
Inst24Quest4ID2 = "4197"
--ITEM3
Inst24Quest4ITC3 = Itemc4;
Inst24Quest4description3 = AQITEM_WAIST..AQITEM_MAIL
Inst24Quest4ID3 = "6742"
--ITEM4
Inst24Quest4ITC4 = Itemc4;
Inst24Quest4description4 = AQITEM_SHIELD
Inst24Quest4ID4 = "6725"

--Quest 5 Alliance
Inst24Quest5Rewardtext = AQNoReward


--Quest 1 Horde
Inst24Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst24Quest1ITC1_HORDE = Itemc2;
Inst24Quest1description1_HORDE = AQITEM_ITEM
Inst24Quest1ID1_HORDE = "6755"

--Quest 2 Horde
Inst24Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst24Quest2ITC1_HORDE = Itemc3;
Inst24Quest2description1_HORDE = AQITEM_RING
Inst24Quest2ID1_HORDE = "6748"
--ITEM2
Inst24Quest2ITC2_HORDE = Itemc3;
Inst24Quest2description2_HORDE = AQITEM_RING
Inst24Quest2ID2_HORDE = "6750"
--ITEM3
Inst24Quest2ITC3_HORDE = Itemc3;
Inst24Quest2description3_HORDE = AQITEM_RING
Inst24Quest2ID3_HORDE = "6749"

--Quest 3 Horde
Inst24Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst24Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst24Quest4ITC1_HORDE = Itemc4;
Inst24Quest4description1_HORDE = AQITEM_SHOULDER..AQITEM_CLOTH
Inst24Quest4ID1_HORDE = "4197"
--ITEM2
Inst24Quest4ITC2_HORDE = Itemc4;
Inst24Quest4description2_HORDE = AQITEM_WAIST..AQITEM_MAIL
Inst24Quest4ID2_HORDE = "6742"
--ITEM3
Inst24Quest4ITC3_HORDE = Itemc4;
Inst24Quest4description3_HORDE = AQITEM_SHIELD
Inst24Quest4ID3_HORDE = "6725"

--Quest 5 Horde
Inst24Quest5Rewardtext_HORDE = AQNoReward



--------------- INST25 - Wailing Caverns ---------------

--Quest 1 Alliance
Inst25Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst25Quest1ITC1 = Itemc3;
Inst25Quest1description1 = AQITEM_LEGS..AQITEM_LEATHER
Inst25Quest1ID1 = "6480"
--ITEM2
Inst25Quest1ITC2 = Itemc2;
Inst25Quest1description2 = AQITEM_BAG
Inst25Quest1ID2 = "918"

--Quest 2 Alliance
Inst25Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst25Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst25Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst25Quest4ITC1 = Itemc3;
Inst25Quest4description1 = AQITEM_PATTERN
Inst25Quest4ID1 = "6476"
--ITEM2
Inst25Quest4ITC2 = Itemc3;
Inst25Quest4description2 = AQITEM_WAND
Inst25Quest4ID2 = "8071"
--ITEM3
Inst25Quest4ITC3 = Itemc3;
Inst25Quest4description3 = AQITEM_HANDS..AQITEM_MAIL
Inst25Quest4ID3 = "6481"

--Quest 5 Alliance
Inst25Quest5Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst25Quest5ITC1 = Itemc3;
Inst25Quest5description1 = AQITEM_SHOULDER..AQITEM_CLOTH
Inst25Quest5ID1 = "10657"
--ITEM2
Inst25Quest5ITC2 = Itemc3;
Inst25Quest5description2 = AQITEM_FEET..AQITEM_MAIL
Inst25Quest5ID2 = "10658"


--Quest 1 Horde
Inst25Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst25Quest1ITC1_HORDE = Itemc3;
Inst25Quest1description1_HORDE = AQITEM_LEGS..AQITEM_LEATHER
Inst25Quest1ID1_HORDE = "6480"
--ITEM2
Inst25Quest1ITC2_HORDE = Itemc2;
Inst25Quest1description2_HORDE = AQITEM_BAG
Inst25Quest1ID2_HORDE = "918"

--Quest 2 Horde
Inst25Quest2Rewardtext_HORDE = AQNoReward

--Quest 3 Horde
Inst25Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst25Quest3ITC1_HORDE = Itemc3;
Inst25Quest3description1_HORDE = AQITEM_HANDS..AQITEM_CLOTH
Inst25Quest3ID1_HORDE = "10919"

--Quest 4 Horde
Inst25Quest4Rewardtext_HORDE = AQNoReward

--Quest 5 Horde
Inst25Quest5Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst25Quest5ITC1_HORDE = Itemc3;
Inst25Quest5description1_HORDE = AQITEM_PATTERN
Inst25Quest5ID1_HORDE = "6476"
--ITEM2
Inst25Quest5ITC2_HORDE = Itemc3;
Inst25Quest5description2_HORDE = AQITEM_WAND
Inst25Quest5ID2_HORDE = "8071"
--ITEM3
Inst25Quest5ITC3_HORDE = Itemc3;
Inst25Quest5description3_HORDE = AQITEM_HANDS..AQITEM_MAIL
Inst25Quest5ID3_HORDE = "6481"

--Quest 6 Horde
Inst25Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst25Quest6ITC1_HORDE = Itemc4;
Inst25Quest6description1_HORDE = AQITEM_STAFF
Inst25Quest6ID1_HORDE = "6505"
--ITEM2
Inst25Quest6ITC2_HORDE = Itemc4;
Inst25Quest6description2_HORDE = AQITEM_MAINHAND..AQITEM_SWORD
Inst25Quest6ID2_HORDE = "6504"

--Quest 7 Horde
Inst25Quest7Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst25Quest7ITC1_HORDE = Itemc3;
Inst25Quest7description1_HORDE = AQITEM_SHOULDER..AQITEM_CLOTH
Inst25Quest7ID1_HORDE = "10657"
--ITEM2
Inst25Quest7ITC2_HORDE = Itemc3;
Inst25Quest7description2_HORDE = AQITEM_FEET..AQITEM_MAIL
Inst25Quest7ID2_HORDE = "10658"



--------------- INST26 - Zul'Farrak ---------------

--Quest 1 Alliance
Inst26Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst26Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst26Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst26Quest3ITC1 = Itemc3;
Inst26Quest3description1 = AQITEM_STAFF
Inst26Quest3ID1 = "9527"
--ITEM2
Inst26Quest3ITC2 = Itemc3;
Inst26Quest3description2 = AQITEM_SHOULDER..AQITEM_PLATE
Inst26Quest3ID2 = "9531"

--Quest 4 Alliance
Inst26Quest4Rewardtext = AQNoReward

--Quest 5 Alliance
Inst26Quest5Rewardtext = AQNoReward

--Quest 6 Alliance
Inst26Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst26Quest6ITC1 = Itemc4;
Inst26Quest6description1 = AQITEM_RING
Inst26Quest6ID1 = "9533"
--ITEM2
Inst26Quest6ITC2 = Itemc4;
Inst26Quest6description2 = AQITEM_HEAD..AQITEM_LEATHER
Inst26Quest6ID2 = "9534"

--Quest 7 Alliance
Inst26Quest7Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst26Quest7ITC1 = Itemc3;
Inst26Quest7description1 = AQITEM_TRINKET
Inst26Quest7ID1 = "11122"


--Quest 1 Horde
Inst26Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst26Quest2Rewardtext_HORDE = AQNoReward

--Quest 3 Horde
Inst26Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst26Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_AND..WHITE.."2"
--ITEM1
Inst26Quest4ITC1_HORDE = Itemc3;
Inst26Quest4description1_HORDE = AQITEM_STAFF
Inst26Quest4ID1_HORDE = "9527"
--ITEM2
Inst26Quest4ITC2_HORDE = Itemc3;
Inst26Quest4description2_HORDE = AQITEM_SHOULDER..AQITEM_PLATE
Inst26Quest4ID2_HORDE = "9531"

--Quest 5 Horde
Inst26Quest5Rewardtext_HORDE = AQNoReward

--Quest 6 Horde
Inst26Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst26Quest6ITC1_HORDE = Itemc4;
Inst26Quest6description1_HORDE = AQITEM_RING
Inst26Quest6ID1_HORDE = "9533"
--ITEM2
Inst26Quest6ITC2_HORDE = Itemc4;
Inst26Quest6description2_HORDE = AQITEM_HEAD..AQITEM_LEATHER
Inst26Quest6ID2_HORDE = "9534"

--Quest 7 Horde
Inst26Quest7Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst26Quest7ITC1_HORDE = Itemc3;
Inst26Quest7description1_HORDE = AQITEM_TRINKET
Inst26Quest7ID1_HORDE = "11122"



--------------- INST27 - Molten Core ---------------

--Quest 1 Alliance
Inst27Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst27Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst27Quest2ITC1 = Itemc4;
Inst27Quest2description1 = AQITEM_RING
Inst27Quest2ID1 = "18399"
--ITEM2
Inst27Quest2ITC2 = Itemc4;
Inst27Quest2description2 = AQITEM_RING
Inst27Quest2ID2 = "18398"

--Quest 3 Alliance
Inst27Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst27Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst27Quest4ITC1 = Itemc5;
Inst27Quest4description1 = AQITEM_PATTERN
Inst27Quest4ID1 = "18592"

--Quest 5 Alliance
Inst27Quest5Rewardtext = AQNoReward

--Quest 6 Alliance
Inst27Quest6Rewardtext = AQDiscription_REWARD..WHITE.."1(x3)"
--ITEM1
Inst27Quest6ITC1 = Itemc2;
Inst27Quest6description1 = AQITEM_POTION
Inst27Quest6ID1 = "18253"


--Quest 1 Horde
Inst27Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst27Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst27Quest2ITC1_HORDE = Itemc4;
Inst27Quest2description1_HORDE = AQITEM_RING
Inst27Quest2ID1_HORDE = "18399"
--ITEM2
Inst27Quest2ITC2_HORDE = Itemc4;
Inst27Quest2description2_HORDE = AQITEM_RING
Inst27Quest2ID2_HORDE = "18398"

--Quest 3 Horde
Inst27Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst27Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst27Quest4ITC1_HORDE = Itemc5;
Inst27Quest4description1_HORDE = AQITEM_PATTERN
Inst27Quest4ID1_HORDE = "18592"

--Quest 5 Horde
Inst27Quest5Rewardtext_HORDE = AQNoReward

--Quest 6 Horde
Inst27Quest6Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1(x3)"
--ITEM1
Inst27Quest6ITC1_HORDE = Itemc2;
Inst27Quest6description1_HORDE = AQITEM_POTION
Inst27Quest6ID1_HORDE = "18253"



--------------- INST28 - Onyxia's Lair ---------------

--Quest 1 Alliance
Inst28Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst28Quest1ITC1 = Itemc5;
Inst28Quest1description1 = AQITEM_SWORD
Inst28Quest1ID1 = "18348"

--Quest 2 Alliance
Inst28Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst28Quest2ITC1 = Itemc5;
Inst28Quest2description1 = AQITEM_TRINKET
Inst28Quest2ID1 = "18406"
--ITEM2
Inst28Quest2ITC2 = Itemc5;
Inst28Quest2description2 = AQITEM_RING
Inst28Quest2ID2 = "18403"
--ITEM3
Inst28Quest2ITC3 = Itemc5;
Inst28Quest2description3 = AQITEM_NECK
Inst28Quest2ID3 = "18404"


--Quest 1 Horde
Inst28Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst28Quest1ITC1_HORDE = Itemc5;
Inst28Quest1description1_HORDE = AQITEM_SWORD
Inst28Quest1ID1_HORDE = "18348"

--Quest 2 Horde
Inst28Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst28Quest2ITC1_HORDE = Itemc5;
Inst28Quest2description1_HORDE = AQITEM_TRINKET
Inst28Quest2ID1_HORDE = "18406"
--ITEM2
Inst28Quest2ITC2_HORDE = Itemc5;
Inst28Quest2description2_HORDE = AQITEM_RING
Inst28Quest2ID2_HORDE = "18403"
--ITEM3
Inst28Quest2ITC3_HORDE = Itemc5;
Inst28Quest2description3_HORDE = AQITEM_NECK
Inst28Quest2ID3_HORDE = "18404"



--------------- INST29 - Zul'Gurub ---------------

--Quest 1 Alliance
Inst29Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst29Quest1ITC1 = Itemc4;
Inst29Quest1description1 = AQITEM_WAIST..AQITEM_PLATE
Inst29Quest1ID1 = "20213"
--ITEM2
Inst29Quest1ITC2 = Itemc4;
Inst29Quest1description2 = AQITEM_WAIST..AQITEM_MAIL
Inst29Quest1ID2 = "20215"
--ITEM3
Inst29Quest1ITC3 = Itemc4;
Inst29Quest1description3 = AQITEM_WAIST..AQITEM_LEATHER
Inst29Quest1ID3 = "20216"
--ITEM4
Inst29Quest1ITC4 = Itemc4;
Inst29Quest1description4 = AQITEM_WAIST..AQITEM_CLOTH
Inst29Quest1ID4 = "20217"

--Quest 2 Alliance
Inst29Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst29Quest2ITC1 = Itemc5;
Inst29Quest2description1 = AQITEM_TRINKET
Inst29Quest2ID1 = "19948"
--ITEM2
Inst29Quest2ITC2 = Itemc5;
Inst29Quest2description2 = AQITEM_TRINKET
Inst29Quest2ID2 = "19950"
--ITEM3
Inst29Quest2ITC3 = Itemc5;
Inst29Quest2description3 = AQITEM_TRINKET
Inst29Quest2ID3 = "19949"

--Quest 3 Alliance
Inst29Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst29Quest4Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"..AQDiscription_OR..WHITE.."5"..AQDiscription_OR..WHITE.."6"
--ITEM1
Inst29Quest4ITC1 = Itemc4;
Inst29Quest4description1 = AQITEM_ONEHAND..AQITEM_SWORD
Inst29Quest4ID1 = "22378"
--ITEM2
Inst29Quest4ITC2 = Itemc4;
Inst29Quest4description2 = AQITEM_MAINHAND..AQITEM_DAGGER
Inst29Quest4ID2 = "22379"
--ITEM3
Inst29Quest4ITC3 = Itemc4;
Inst29Quest4description3 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst29Quest4ID3 = "22377"
--ITEM4
Inst29Quest4ITC4 = Itemc4;
Inst29Quest4description4 = AQITEM_TWOHAND..AQITEM_MACE
Inst29Quest4ID4 = "22348"
--ITEM5
Inst29Quest4ITC5 = Itemc4;
Inst29Quest4description5 = AQITEM_CROSSBOW
Inst29Quest4ID5 = "22347"
--ITEM6
Inst29Quest4ITC6 = Itemc4;
Inst29Quest4description6 = AQITEM_MAINHAND..AQITEM_MACE
Inst29Quest4ID6 = "22380"


--Quest 1 Horde
Inst29Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst29Quest1ITC1_HORDE = Itemc4;
Inst29Quest1description1_HORDE = AQITEM_WAIST..AQITEM_PLATE
Inst29Quest1ID1_HORDE = "20213"
--ITEM2
Inst29Quest1ITC2_HORDE = Itemc4;
Inst29Quest1description2_HORDE = AQITEM_WAIST..AQITEM_MAIL
Inst29Quest1ID2_HORDE = "20215"
--ITEM3
Inst29Quest1ITC3_HORDE = Itemc4;
Inst29Quest1description3_HORDE = AQITEM_WAIST..AQITEM_LEATHER
Inst29Quest1ID3_HORDE = "20216"
--ITEM4
Inst29Quest1ITC4_HORDE = Itemc4;
Inst29Quest1description4_HORDE = AQITEM_WAIST..AQITEM_CLOTH
Inst29Quest1ID4_HORDE = "20217"

--Quest 2 Horde
Inst29Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst29Quest2ITC1_HORDE = Itemc5;
Inst29Quest2description1_HORDE = AQITEM_TRINKET
Inst29Quest2ID1_HORDE = "19948"
--ITEM2
Inst29Quest2ITC2_HORDE = Itemc5;
Inst29Quest2description2_HORDE = AQITEM_TRINKET
Inst29Quest2ID2_HORDE = "19950"
--ITEM3
Inst29Quest2ITC3_HORDE = Itemc5;
Inst29Quest2description3_HORDE = AQITEM_TRINKET
Inst29Quest2ID3_HORDE = "19949"

--Quest 3 Horde
Inst29Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst29Quest4Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"..AQDiscription_OR..WHITE.."5"..AQDiscription_OR..WHITE.."6"
--ITEM1
Inst29Quest4ITC1_HORDE = Itemc4;
Inst29Quest4description1_HORDE = AQITEM_ONEHAND..AQITEM_SWORD
Inst29Quest4ID1_HORDE = "22378"
--ITEM2
Inst29Quest4ITC2_HORDE = Itemc4;
Inst29Quest4description2_HORDE = AQITEM_MAINHAND..AQITEM_DAGGER
Inst29Quest4ID2_HORDE = "22379"
--ITEM3
Inst29Quest4ITC3_HORDE = Itemc4;
Inst29Quest4description3_HORDE = AQITEM_ONEHAND..AQITEM_DAGGER
Inst29Quest4ID3_HORDE = "22377"
--ITEM4
Inst29Quest4ITC4_HORDE = Itemc4;
Inst29Quest4description4_HORDE = AQITEM_TWOHAND..AQITEM_MACE
Inst29Quest4ID4_HORDE = "22348"
--ITEM5
Inst29Quest4ITC5_HORDE = Itemc4;
Inst29Quest4description5_HORDE = AQITEM_CROSSBOW
Inst29Quest4ID5_HORDE = "22347"
--ITEM6
Inst29Quest4ITC6_HORDE = Itemc4;
Inst29Quest4description6_HORDE = AQITEM_MAINHAND..AQITEM_MACE
Inst29Quest4ID6_HORDE = "22380"



--------------- INST30 - The Ruins of Ahn'Qiraj (AQ20) ---------------

--Quest 1 Alliance
Inst30Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst30Quest1ITC1 = Itemc5;
Inst30Quest1description1 = AQITEM_NECK
Inst30Quest1ID1 = "21504"
--ITEM2
Inst30Quest1ITC2 = Itemc5;
Inst30Quest1description2 = AQITEM_NECK
Inst30Quest1ID2 = "21507"
--ITEM3
Inst30Quest1ITC3 = Itemc5;
Inst30Quest1description3 = AQITEM_NECK
Inst30Quest1ID3 = "21505"
--ITEM1
Inst30Quest1ITC4 = Itemc5;
Inst30Quest1description4 = AQITEM_NECK
Inst30Quest1ID4 = "21506"

--Quest 2 Alliance
Inst30Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"..AQDiscription_OR..WHITE.."5"..AQDiscription_OR..WHITE.."6"
--ITEM1
Inst30Quest2ITC1 = Itemc4;
Inst30Quest2description1 = AQITEM_ONEHAND..AQITEM_SWORD
Inst30Quest2ID1 = "22378"
--ITEM2
Inst30Quest2ITC2 = Itemc4;
Inst30Quest2description2 = AQITEM_MAINHAND..AQITEM_DAGGER
Inst30Quest2ID2 = "22379"
--ITEM3
Inst30Quest2ITC3 = Itemc4;
Inst30Quest2description3 = AQITEM_ONEHAND..AQITEM_DAGGER
Inst30Quest2ID3 = "22377"
--ITEM4
Inst30Quest2ITC4 = Itemc4;
Inst30Quest2description4 = AQITEM_TWOHAND..AQITEM_MACE
Inst30Quest2ID4 = "22348"
--ITEM5
Inst30Quest2ITC5 = Itemc4;
Inst30Quest2description5 = AQITEM_CROSSBOW
Inst30Quest2ID5 = "22347"
--ITEM6
Inst30Quest2ITC6 = Itemc4;
Inst30Quest2description6 = AQITEM_MAINHAND..AQITEM_MACE
Inst30Quest2ID6 = "22380"


--Quest 1 Horde
Inst30Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst30Quest1ITC1_HORDE = Itemc5;
Inst30Quest1description1_HORDE = AQITEM_NECK
Inst30Quest1ID1_HORDE = "21504"
--ITEM2
Inst30Quest1ITC2_HORDE = Itemc5;
Inst30Quest1description2_HORDE = AQITEM_NECK
Inst30Quest1ID2_HORDE = "21507"
--ITEM3
Inst30Quest1ITC3_HORDE = Itemc5;
Inst30Quest1description3_HORDE = AQITEM_NECK
Inst30Quest1ID3_HORDE = "21505"
--ITEM1
Inst30Quest1ITC4_HORDE = Itemc5;
Inst30Quest1description4_HORDE = AQITEM_NECK
Inst30Quest1ID4_HORDE = "21506"

--Quest 2 Horde
Inst30Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"..AQDiscription_OR..WHITE.."5"..AQDiscription_OR..WHITE.."6"
--ITEM1
Inst30Quest2ITC1_HORDE = Itemc4;
Inst30Quest2description1_HORDE = AQITEM_ONEHAND..AQITEM_SWORD
Inst30Quest2ID1_HORDE = "22378"
--ITEM2
Inst30Quest2ITC2_HORDE = Itemc4;
Inst30Quest2description2_HORDE = AQITEM_MAINHAND..AQITEM_DAGGER
Inst30Quest2ID2_HORDE = "22379"
--ITEM3
Inst30Quest2ITC3_HORDE = Itemc4;
Inst30Quest2description3_HORDE = AQITEM_ONEHAND..AQITEM_DAGGER
Inst30Quest2ID3_HORDE = "22377"
--ITEM4
Inst30Quest2ITC4_HORDE = Itemc4;
Inst30Quest2description4_HORDE = AQITEM_TWOHAND..AQITEM_MACE
Inst30Quest2ID4_HORDE = "22348"
--ITEM5
Inst30Quest2ITC5_HORDE = Itemc4;
Inst30Quest2description5_HORDE = AQITEM_CROSSBOW
Inst30Quest2ID5_HORDE = "22347"
--ITEM6
Inst30Quest2ITC6_HORDE = Itemc4;
Inst30Quest2description6_HORDE = AQITEM_MAINHAND..AQITEM_MACE
Inst30Quest2ID6_HORDE = "22380"



--------------- INST31 - The Temple of Ahn'Qiraj (AQ40) ---------------

--Quest 1 Alliance
Inst31Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst31Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst31Quest2ITC1 = Itemc5;
Inst31Quest2description1 = AQITEM_NECK
Inst31Quest2ID1 = "21712"
--ITEM2
Inst31Quest2ITC2 = Itemc5;
Inst31Quest2description2 = AQITEM_BACK
Inst31Quest2ID2 = "21710"
--ITEM3
Inst31Quest2ITC3 = Itemc5;
Inst31Quest2description3 = AQITEM_RING
Inst31Quest2ID3 = "21709"

--Quest 3 Alliance
Inst31Quest3Rewardtext = AQNoReward

--Quest 4 Alliance
Inst31Quest4Rewardtext = AQNoReward


--Quest 1 Horde
Inst31Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst31Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"
--ITEM1
Inst31Quest2ITC1_HORDE = Itemc5;
Inst31Quest2description1_HORDE = AQITEM_NECK
Inst31Quest2ID1_HORDE = "21712"
--ITEM2
Inst31Quest2ITC2_HORDE = Itemc5;
Inst31Quest2description2_HORDE = AQITEM_BACK
Inst31Quest2ID2_HORDE = "21710"
--ITEM3
Inst31Quest2ITC3_HORDE = Itemc5;
Inst31Quest2description3_HORDE = AQITEM_RING
Inst31Quest2ID3_HORDE = "21709"

--Quest 3 Horde
Inst31Quest3Rewardtext_HORDE = AQNoReward

--Quest 4 Horde
Inst31Quest4Rewardtext_HORDE = AQNoReward



--------------- INST32 - Naxxramas ---------------




---------------------------------------------------
---------------- BATTLEGROUNDS --------------------
---------------------------------------------------




--------------- INST33 - Alterac Valley ---------------

--Quest 1 Alliance
Inst33Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst33Quest2Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst33Quest2ITC1 = Itemc3;
Inst33Quest2description1 = AQITEM_TRINKET
Inst33Quest2ID1 = "17691"
--ITEM2
Inst33Quest2ITC2 = Itemc2;
Inst33Quest2description2 = AQITEM_ITEM
Inst33Quest2ID2 = "19484"

--Quest 3 Alliance
Inst33Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst33Quest3ITC1 = Itemc4;
Inst33Quest3description1 = AQITEM_CROSSBOW
Inst33Quest3ID1 = "19107"
--ITEM2
Inst33Quest3ITC2 = Itemc4;
Inst33Quest3description2 = AQITEM_POLEARM
Inst33Quest3ID2 = "19106"
--ITEM3
Inst33Quest3ITC3 = Itemc4;
Inst33Quest3description3 = AQITEM_WAND
Inst33Quest3ID3 = "19108"
--ITEM4
Inst33Quest3ITC4 = Itemc4;
Inst33Quest3description4 = AQITEM_MAINHAND..AQITEM_MACE
Inst33Quest3ID4 = "20648"

--Quest 4 Alliance
Inst33Quest4Rewardtext = AQNoReward

--Quest 5 Alliance
Inst33Quest5Rewardtext = AQNoReward

--Quest 6 Alliance
Inst33Quest6Rewardtext = AQNoReward

--Quest 7 Alliance
Inst33Quest7Rewardtext = AQNoReward

--Quest 8 Alliance
Inst33Quest8Rewardtext = AQNoReward

--Quest 9 Alliance
Inst33Quest9Rewardtext = AQNoReward

--Quest 10 Alliance
Inst33Quest10Rewardtext = AQNoReward

--Quest 11 Alliance
Inst33Quest11Rewardtext = AQNoReward

--Quest 12 Alliance
Inst33Quest12Rewardtext = AQNoReward

--Quest 13 Alliance
Inst33Quest13Rewardtext = AQNoReward

--Quest 14 Alliance
Inst33Quest14Rewardtext = AQNoReward

--Quest 15 Alliance
Inst33Quest15Rewardtext = AQNoReward

--Quest 16 Alliance
Inst33Quest16Rewardtext = AQNoReward

--Quest 17 Alliance
Inst33Quest17Rewardtext = AQNoReward


--Quest 1 Horde
Inst33Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst33Quest2Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"
--ITEM1
Inst33Quest2ITC1_HORDE = Itemc3;
Inst33Quest2description1_HORDE = AQITEM_TRINKET
Inst33Quest2ID1_HORDE = "17690"
--ITEM2
Inst33Quest2ITC2_HORDE = Itemc2;
Inst33Quest2description2_HORDE = AQITEM_ITEM
Inst33Quest2ID2_HORDE = "19483"

--Quest 3 Horde
Inst33Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"..AQDiscription_OR..WHITE.."2"..AQDiscription_OR..WHITE.."3"..AQDiscription_OR..WHITE.."4"
--ITEM1
Inst33Quest3ITC1_HORDE = Itemc4;
Inst33Quest3description1_HORDE = AQITEM_CROSSBOW
Inst33Quest3ID1_HORDE = "19107"
--ITEM2
Inst33Quest3ITC2_HORDE = Itemc4;
Inst33Quest3description2_HORDE = AQITEM_POLEARM
Inst33Quest3ID2_HORDE = "19106"
--ITEM3
Inst33Quest3ITC3_HORDE = Itemc4;
Inst33Quest3description3_HORDE = AQITEM_WAND
Inst33Quest3ID3_HORDE = "19108"
--ITEM4
Inst33Quest3ITC4_HORDE = Itemc4;
Inst33Quest3description4_HORDE = AQITEM_MAINHAND..AQITEM_MACE
Inst33Quest3ID4_HORDE = "20648"

--Quest 4 Horde
Inst33Quest4Rewardtext_HORDE = AQNoReward

--Quest 5 Horde
Inst33Quest5Rewardtext_HORDE = AQNoReward

--Quest 6 Horde
Inst33Quest6Rewardtext_HORDE = AQNoReward

--Quest 7 Horde
Inst33Quest7Rewardtext_HORDE = AQNoReward

--Quest 8 Horde
Inst33Quest8Rewardtext_HORDE = AQNoReward

--Quest 9 Horde
Inst33Quest9Rewardtext_HORDE = AQNoReward

--Quest 10 Horde
Inst33Quest10Rewardtext_HORDE = AQNoReward

--Quest 11 Horde
Inst33Quest11Rewardtext_HORDE = AQNoReward

--Quest 12 Horde
Inst33Quest12Rewardtext_HORDE = AQNoReward

--Quest 13 Horde
Inst33Quest13Rewardtext_HORDE = AQNoReward

--Quest 14 Horde
Inst33Quest14Rewardtext_HORDE = AQNoReward

--Quest 15 Horde
Inst33Quest15Rewardtext_HORDE = AQNoReward

--Quest 16 Horde
Inst33Quest16Rewardtext_HORDE = AQNoReward

--Quest 17 Horde
Inst33Quest17Rewardtext_HORDE = AQNoReward



--------------- INST34 - Arathi Basin ---------------

--Quest 1 Alliance
Inst34Quest1Rewardtext = AQNoReward

--Quest 2 Alliance
Inst34Quest2Rewardtext = AQNoReward

--Quest 3 Alliance
Inst34Quest3Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst34Quest3ITC1 = Itemc2;
Inst34Quest3description1 = AQITEM_TABARD
Inst34Quest3ID1 = "20132"


--Quest 1 Horde
Inst34Quest1Rewardtext_HORDE = AQNoReward

--Quest 2 Horde
Inst34Quest2Rewardtext_HORDE = AQNoReward

--Quest 3 Horde
Inst34Quest3Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst34Quest3ITC1_HORDE = Itemc2;
Inst34Quest3description1_HORDE = AQITEM_TABARD
Inst34Quest4ID1_HORDE = "20131"



--------------- INST35 - Warsong Gulch ---------------

-- No quests.




---------------------------------------------------
---------------- OUTDOOR RAIDS --------------------
---------------------------------------------------




--------------- INST36 - Dragons of Nightmare ---------------

--Quest 1 Alliance
Inst36Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst36Quest1ITC1 = Itemc5;
Inst36Quest1description1 = AQITEM_RING
Inst36Quest1ID1 = "20600"


--Quest 1 Horde
Inst36Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst36Quest1ITC1_HORDE = Itemc5;
Inst36Quest1description1_HORDE = AQITEM_RING
Inst36Quest1ID1_HORDE = "20600"



--------------- INST37 - Azuregos ---------------

--Quest 1 Alliance
Inst37Quest1Rewardtext = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst37Quest1ITC1 = Itemc5;
Inst37Quest1description1 = AQITEM_QUIVER
Inst37Quest1ID1 = "18714"


--Quest 1 Horde
Inst37Quest1Rewardtext_HORDE = AQDiscription_REWARD..WHITE.."1"
--ITEM1
Inst37Quest1ITC1_HORDE = Itemc5;
Inst37Quest1description1_HORDE = AQITEM_QUIVER
Inst37Quest1ID1_HORDE = "18714"



--------------- INST38 - Highlord Kruul ---------------

-- No quests.




-- This is the end, my friend.