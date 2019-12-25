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



if ( GetLocale() == "zhCN" ) then

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

AQOptionsCaptionTEXT = ""..YELLOW.."AtlasQuest 选项";
AQ_OK = "确定";

-- Autoshow
AQOptionsAutoshowTEXT = ""..WHITE.."伴随"..RED.."Atlas"..WHITE.."打开 AtlasQuest 面板。";
AQAtlasAutoON = "当你打开 Atlas 时，AtlasQuest 面板现在会自动显示"..GREEN.."（默认）"
AQAtlasAutoOFF = "当你打开 Atlas 时，AtlasQuest 面板"..RED.."不会"..WHITE.."自动显示"
 
-- Right/Left
AQOptionsLEFTTEXT = ""..WHITE.."AtlasQuest 面板显示位置在"..RED.."左"..WHITE..".";
AQOptionsRIGHTTEXT = ""..WHITE.."AtlasQuest 面板显示位置在"..RED.."右"..WHITE..".";
AQShowRight = "现在在"..RED.."右侧"..WHITE.."显示 AtlasQuest 面板";
AQShowLeft = "现在在"..RED.."左侧"..WHITE.."显示 AtlasQuest 面板"..GREEN.."（默认）";
 
-- Colour Check
AQOptionsCCTEXT = ""..WHITE.."根据任务等级显示任务颜色。"
AQCCON = "AtlasQuest 现在根据任务等级显示任务颜色。"
AQCCOFF = "AtlasQuest 现在不根据任务等级显示任务颜色。"

-- QuestLog Colour Check
AQQLColourChange = ""..WHITE.."将你任务日志里有的的任务染成"..BLUE.."蓝色。"

-- AutoQuery Quest Rewards
AQOptionsAutoQueryTEXT = ""..WHITE.."在服务器中自动搜索任务奖励中你未见过的物品。"

-- Suppress Server Query text
AQOptionsNoQuerySpamTEXT = ""..WHITE.."禁用服务器自动搜索。"

-- Use Comparison Tooltips
AQOptionsCompareTooltipTEXT = ""..WHITE.."将任务奖励物品与你自身装备物品进行比较。"

-- Quest Query text
AQQuestQueryButtonTEXT = ""..WHITE.."查询任务";
AQClearQuestAndQueryButtonTEXT = ""..WHITE.."重置查询";
AQQuestQueryTEXT = ""..WHITE.."从服务器查询完成的任务.";
AQClearQuestAndQueryTEXT = ""..WHITE.."重置已完成的任务和查询服务器以查找已完成任务的列表.";
AQQuestQueryStart = "AtlasQuest 正在从服务器查询完成的任务, 这需要几分钟";
AQQuestQueryDone = "AtlasQuest 已完成查询服务器, 现在已完成的任务会被标记.";


AQAbilities = BLUE .. "功能：" .. WHITE;
AQSERVERASKInformation = " 按右键察看物品窗口。"
AQSERVERASKAuto = " 尝试鼠标指向物品时搜寻。"
AQSERVERASK = "在服务器上搜寻："
AQERRORNOTSHOWN = "此物品不安全！"
AQERRORASKSERVER = "要按右键在服务器上查询吗？你可能会掉线。"
AQOptionB = "选项"
AQStoryB = "副本背景"
AQNoReward = ""..BLUE.." 没有奖励物品"
AQDiscription_OR = ""..GREY.." 或 "..WHITE..""
AQDiscription_AND = ""..GREY.." 和 "..WHITE..""
AQDiscription_REWARD = ""..BLUE.." 任务奖励："
AQDiscription_ATTAIN = "任务可接受等级："
AQDiscription_LEVEL = "任务等级："
AQDiscription_START = "开始地点：\n"
AQDiscription_AIM = "任务目标：\n"
AQDiscription_NOTE = "任务注释：\n"
AQDiscription_PREQUEST= "前导任务："
AQDiscription_FOLGEQUEST = "后续任务："
AQFinishedTEXT = "已完成的任务：";


------------------
--- ITEM TYPES ---
------------------

AQITEM_DAGGER = "匕首"
AQITEM_POLEARM = "长柄武器"
AQITEM_SWORD = "剑"
AQITEM_AXE = "斧"
AQITEM_WAND = "魔杖"
AQITEM_STAFF = "法杖"
AQITEM_MACE = "锤"
AQITEM_SHIELD = "盾"
AQITEM_GUN = "枪"
AQITEM_BOW = "弓"
AQITEM_CROSSBOW = "弩"
AQITEM_THROWN = "投掷武器"

AQITEM_WAIST = "腰带"
AQITEM_SHOULDER = "肩"
AQITEM_CHEST = "胸甲"
AQITEM_LEGS = "腿"
AQITEM_HANDS = "手"
AQITEM_FEET = "脚"
AQITEM_WRIST = "护腕"
AQITEM_HEAD = "头盔"
AQITEM_BACK = "背部"
AQITEM_TABARD = "衬衣"

AQITEM_CLOTH = " 布甲"
AQITEM_LEATHER = " 皮甲"
AQITEM_MAIL = " 锁甲"
AQITEM_PLATE = " 板甲"
AQITEM_COSMETIC = " Cosmetic"

AQITEM_OFFHAND = "副手"
AQITEM_MAINHAND = "主手,"
AQITEM_ONEHAND = "单手,"
AQITEM_TWOHAND = "双手,"


AQITEM_ITEM = "物品"
AQITEM_TRINKET = "饰品"
AQITEM_RELIC = "圣物"
AQITEM_POTION = "药水"
AQITEM_OFFHAND = "副手物品"
AQITEM_NECK = "颈部"
AQITEM_PATTERN = "图样"
AQITEM_BAG = "背包"
AQITEM_RING = "戒指"
AQITEM_KEY = "钥匙"
AQITEM_GEM = "宝石"
AQITEM_QUIVER = "箭袋"
AQITEM_AMMOPOUCH = "弹药包"
AQITEM_ENCHANT = "附魔"
AQITEM_TOY = "玩具"
AQITEM_PET = "宠物"


--------------- INST66 - No Instance ---------------

-- Just to display "No Quests" when the map is set to something AtlasQuest does not support.
Inst66Caption = "没有可用信息"
Inst66QAA = "没有任务"
Inst66QAH = "没有任务"


end


-- End of File
