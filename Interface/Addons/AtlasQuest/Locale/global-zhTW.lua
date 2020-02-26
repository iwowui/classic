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
very well in the other localization files, such as Battlegrounds, Outdoor
Raids, etc.


--]]



if ( GetLocale() == "zhTW" ) then

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

AQOptionsCaptionTEXT = ""..YELLOW.."AtlasQuest 選項";
AQ_OK = "確定";

-- Autoshow
AQOptionsAutoshowTEXT = ""..WHITE.."伴隨"..RED.."Atlas"..WHITE.."打開 AtlasQuest 面板。";
AQAtlasAutoON = "當你打開 Atlas 時，AtlasQuest 面板現在會自動顯示"..GREEN.."（默認）"
AQAtlasAutoOFF = "當你打開 Atlas 時，AtlasQuest 面板"..RED.."不會"..WHITE.."自動顯示"
 
-- Right/Left
AQOptionsLEFTTEXT = ""..WHITE.."AtlasQuest 面板顯示位置在"..RED.."左"..WHITE..".";
AQOptionsRIGHTTEXT = ""..WHITE.."AtlasQuest 面板顯示位置在"..RED.."右"..WHITE..".";
AQShowRight = "現在在"..RED.."右側"..WHITE.."顯示 AtlasQuest 面板";
AQShowLeft = "現在在"..RED.."左側"..WHITE.."顯示 AtlasQuest 面板"..GREEN.."（默認）";
 
-- Colour Check
AQOptionsCCTEXT = ""..WHITE.."根據任務等級顯示任務顔色。"
AQCCON = "AtlasQuest 現在根據任務等級顯示任務顔色。"
AQCCOFF = "AtlasQuest 現在不根據任務等級顯示任務顔色。"

-- QuestLog Colour Check
AQQLColourChange = ""..WHITE.."將你任務日志裏有的的任務染成"..BLUE.."藍色。"

-- AutoQuery Quest Rewards
AQOptionsAutoQueryTEXT = ""..WHITE.."在服務器中自動搜索任務獎勵中你未見過的物品。"

-- Suppress Server Query text
AQOptionsNoQuerySpamTEXT = ""..WHITE.."禁用服務器自動搜索。"

-- Use Comparison Tooltips
AQOptionsCompareTooltipTEXT = ""..WHITE.."將任務獎勵物品與你自身裝備物品進行比較。"

-- Quest Query text
AQQuestQueryButtonTEXT = ""..WHITE.."查詢任務";
AQClearQuestAndQueryButtonTEXT = ""..WHITE.."重置查詢";
AQQuestQueryTEXT = ""..WHITE.."從服務器查詢完成的任務.";
AQClearQuestAndQueryTEXT = ""..WHITE.."重置已完成的任務和查詢服務器以查找已完成任務的列表.";
AQQuestQueryStart = "AtlasQuest 正在從服務器查詢完成的任務, 這需要幾分鍾";
AQQuestQueryDone = "AtlasQuest 已完成查詢服務器, 現在已完成的任務會被標記.";


AQAbilities = BLUE .. "功能：" .. WHITE;
AQSERVERASKInformation = " 按右鍵察看物品窗口。"
AQSERVERASKAuto = " 嘗試鼠標指向物品時搜尋。"
AQSERVERASK = "在服務器上搜尋："
AQERRORNOTSHOWN = "此物品不安全！"
AQERRORASKSERVER = "要按右鍵在服務器上查詢嗎？你可能會掉線。"
AQOptionB = "選項"
AQStoryB = "副本背景"
AQNoReward = ""..BLUE.." 沒有獎勵物品"
AQDiscription_OR = ""..GREY.." 或 "..WHITE..""
AQDiscription_AND = ""..GREY.." 和 "..WHITE..""
AQDiscription_REWARD = ""..BLUE.." 任務獎勵："
AQDiscription_ATTAIN = "任務可接受等級："
AQDiscription_LEVEL = "任務等級："
AQDiscription_START = "開始地點：\n"
AQDiscription_AIM = "任務目標：\n"
AQDiscription_NOTE = "任務注釋：\n"
AQDiscription_PREQUEST= "前導任務："
AQDiscription_FOLGEQUEST = "後續任務："
AQFinishedTEXT = "已完成的任務：";


------------------
--- ITEM TYPES ---
------------------

AQITEM_DAGGER = "匕首"
AQITEM_POLEARM = "長柄武器"
AQITEM_SWORD = "劍"
AQITEM_AXE = "斧"
AQITEM_WAND = "魔杖"
AQITEM_STAFF = "法杖"
AQITEM_MACE = "錘"
AQITEM_SHIELD = "盾"
AQITEM_GUN = "槍"
AQITEM_BOW = "弓"
AQITEM_CROSSBOW = "弩"
AQITEM_THROWN = "投擲武器"

AQITEM_WAIST = "腰帶"
AQITEM_SHOULDER = "肩"
AQITEM_CHEST = "胸甲"
AQITEM_LEGS = "腿"
AQITEM_HANDS = "手"
AQITEM_FEET = "腳"
AQITEM_WRIST = "護腕"
AQITEM_HEAD = "頭盔"
AQITEM_BACK = "背部"
AQITEM_TABARD = "襯衣"

AQITEM_CLOTH = " 布甲"
AQITEM_LEATHER = " 皮甲"
AQITEM_MAIL = " 鎖甲"
AQITEM_PLATE = " 板甲"
AQITEM_COSMETIC = " Cosmetic"

AQITEM_OFFHAND = "副手"
AQITEM_MAINHAND = "主手,"
AQITEM_ONEHAND = "單手,"
AQITEM_TWOHAND = "雙手,"


AQITEM_ITEM = "物品"
AQITEM_TRINKET = "飾品"
AQITEM_RELIC = "聖物"
AQITEM_POTION = "藥水"
AQITEM_OFFHAND = "副手物品"
AQITEM_NECK = "頸部"
AQITEM_PATTERN = "圖樣"
AQITEM_BAG = "背包"
AQITEM_RING = "戒指"
AQITEM_KEY = "鑰匙"
AQITEM_GEM = "寶石"
AQITEM_QUIVER = "箭袋"
AQITEM_AMMOPOUCH = "彈藥包"
AQITEM_ENCHANT = "附魔"
AQITEM_TOY = "玩具"
AQITEM_PET = "寵物"


--------------- INST66 - No Instance ---------------

-- Just to display "No Quests" when the map is set to something AtlasQuest does not support.
Inst66Caption = "沒有可用信息"
Inst66QAA = "沒有任務"
Inst66QAH = "沒有任務"


end


-- End of File
