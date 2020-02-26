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



--------------- INST1 - Blackrock Depths (BRD) ---------------

Inst1Story = "黑石深淵曾經是黑鐵矮人的偉大都城，這個火山中的迷宮現在成為拉格納羅斯火焰領主的王座所在地。拉格納羅斯找到了使用石頭和設計圖來創造一支無敵石頭人均對來幫助它征服黑石深淵。即使是需要打敗奈法利安和他的龍子龍孫，拉格納羅斯會不惜一切代價來達到最後的勝利。"
Inst1Caption = "黑石深淵（BRD）"
Inst1QAA = "16 個任務"
Inst1QAH = "20 個任務"

--Quest 1 Alliance
Inst1Quest1 = "1. 黑鐵的遺産"
Inst1Quest1_Level = "52"
Inst1Quest1_Attain = "48"
Inst1Quest1_Aim = "殺掉弗諾斯·達克維爾並拿回戰錘鐵膽。把鐵膽之錘拿到索瑞森神殿去，將其放在弗蘭克羅恩·鑄鐵的雕像上。"
Inst1Quest1_Location = "弗蘭克羅恩·鑄鐵（黑石山; "..YELLOW.."副本入口地圖[3]"..WHITE.."）"
Inst1Quest1_Note = "弗蘭克羅恩在黑石的中心，在他的墓上方。你必須死亡後才能見到他！和他交談2次，激活任務。\n弗諾斯·達克維爾在 "..YELLOW.."[9]"..WHITE.."。你會在 "..YELLOW.."[7]"..WHITE.." 找到神殿。"
Inst1Quest1_Prequest = "黑鐵的遺産"
Inst1Quest1_Folgequest = "無"
--
Inst1Quest1name1 = "暗爐鑰匙"

--Quest 2 Alliance
Inst1Quest2 = "2. 雷布裏·斯庫比格特"
Inst1Quest2_Level = "53"
Inst1Quest2_Attain = "48"
Inst1Quest2_Aim = "把雷布裏的頭顱交給燃燒平原的尤卡·斯庫比格特。"
Inst1Quest2_Location = "尤卡·斯庫比格特（燃燒平原 - 烈焰峰; "..YELLOW.."65,22"..WHITE.."）"
Inst1Quest2_Note = "可以直接接到任務，也可以接到前置任務從尤卡·斯庫比格特（塔納利斯 - 熱砂港; "..YELLOW.."67,23"..WHITE.."）那兒得到。\n雷布裏位于 "..YELLOW.."[15]"..WHITE.."。"
Inst1Quest2_Prequest = "尤卡·斯庫比格特"
Inst1Quest2_Folgequest = "無"
Inst1Quest2PreQuest = "true"
--
Inst1Quest2name1 = "怨恨之靴"
Inst1Quest2name2 = "忏悔肩铠"
Inst1Quest2name3 = "鋼條護甲"

--Quest 3 Alliance
Inst1Quest3 = "3. 愛情藥水"
Inst1Quest3_Level = "54"
Inst1Quest3_Attain = "50"
Inst1Quest3_Aim = "將4份格羅姆之血、10塊巨型銀礦和裝滿水的娜瑪拉之瓶交給黑石深淵的娜瑪拉小姐。"
Inst1Quest3_Location = "娜瑪拉小姐（黑石深淵; "..YELLOW.."[15]"..WHITE.."）"
Inst1Quest3_Note = "巨型銀礦可從艾薩拉的巨人們那裏得到。格羅姆之血可以請學習了草藥學的玩家幫助尋找。你可以在（安戈洛環形山 - 葛拉卡溫泉; "..YELLOW.."31,50"..WHITE.."）為瓶子裝滿水。\n完成任務後，你可以使用後門而不必殺死法拉克斯。"
Inst1Quest3_Prequest = "無"
Inst1Quest3_Folgequest = "無"
--
Inst1Quest3name1 = "鐐铐護腕"
Inst1Quest3name2 = "娜瑪拉的腰帶"

--Quest 4 Alliance
Inst1Quest4 = "4. 霍爾雷·黑須"
Inst1Quest4_Level = "55"
Inst1Quest4_Attain = "50"
Inst1Quest4_Aim = "把遺失的雷酒秘方帶給卡拉諾斯的拉格納·雷酒。"
Inst1Quest4_Location = "拉格納·雷酒（丹莫羅 - 卡拉諾斯; "..YELLOW.."46,52"..WHITE.."）"
Inst1Quest4_Note = "前置任務從恩諾哈爾·雷酒（詛咒之地 - 守望堡; "..YELLOW.."61,18"..WHITE.."）處獲得。\n如果你在 "..YELLOW.."[15]"..WHITE.." 摧毀裝有雷霆啤酒的桶，守衛就會出現。秘方就在這其中一個守衛身上。"
Inst1Quest4_Prequest = "拉格納·雷酒"
Inst1Quest4_Folgequest = "無"
Inst1Quest4PreQuest = "true"
--
Inst1Quest4name1 = "矮人黑啤酒"
Inst1Quest4name2 = "迅捷木槌"
Inst1Quest4name3 = "叉刃巨斧"

--Quest 5 Alliance  
Inst1Quest5 = "5. 征服者派隆"
Inst1Quest5_Level = "52"
Inst1Quest5_Attain = "48"
Inst1Quest5_Aim = "殺掉征服者派隆，然後向加琳達複命。"
Inst1Quest5_Location = "加琳達（燃燒平原 - 摩根的崗哨; "..YELLOW.."85,69"..WHITE.."）"
Inst1Quest5_Note = "征服者派隆是副本門口外面的一個火元素精英。在黑石深淵地圖的 "..YELLOW.."[24]"..WHITE.."，黑石深淵副本入口地圖的 "..YELLOW.."[1]"..WHITE.."。"
Inst1Quest5_Prequest = "無"
Inst1Quest5_Folgequest = "伊森迪奧斯！"
-- No Rewards for this quest

--Quest 6 Alliance
Inst1Quest6 = "6. 伊森迪奧斯！"
Inst1Quest6_Level = "56"
Inst1Quest6_Attain = "48"
Inst1Quest6_Aim = "在黑石深淵裏找到伊森迪奧斯，然後把他幹掉！"
Inst1Quest6_Location = "加琳達（燃燒平原 - 摩根的崗哨; "..YELLOW.."85,69"..WHITE.."）"
Inst1Quest6_Note = "在加琳達處獲得前置任務。伊森迪奧斯在 "..YELLOW.."[10]"..WHITE.."。"
Inst1Quest6_Prequest = "征服者派隆"
Inst1Quest6_Folgequest = "無"
Inst1Quest6FQuest = "true"
--
Inst1Quest6name1 = "陽焰鬥篷"
Inst1Quest6name2 = "夜暮手套"
Inst1Quest6name3 = "地穴惡魔護腕"
Inst1Quest6name4 = "堅定手套"

--Quest 7 Alliance
Inst1Quest7 = "7. 山脈之心"
Inst1Quest7_Level = "55"
Inst1Quest7_Attain = "50"
Inst1Quest7_Aim = "把山脈之心交給燃燒平原的麥克斯沃特·尤博格林。"
Inst1Quest7_Location = "麥克斯沃特·尤博格林（燃燒平原 - 烈焰峰; "..YELLOW.."65,23"..WHITE.."）"
Inst1Quest7_Note = "你可以從 "..YELLOW.."[8]"..WHITE.." 的寶箱裏找到山脈之心。你必須打開黑色寶庫所有的小寶箱出來 Boss 之後才能拿到鑰匙。"
Inst1Quest7_Prequest = "無"
Inst1Quest7_Folgequest = "無"
-- No Rewards for this quest

--Quest 8 Alliance
Inst1Quest8 = "8. 好東西"
Inst1Quest8_Level = "56"
Inst1Quest8_Attain = "50"
Inst1Quest8_Aim = "到黑石深淵去找到20個黑鐵挎包。當你完成任務之後，回到奧拉留斯那裏複命。你認為黑石深淵裏的黑鐵矮人應該會有這些黑鐵挎包。"
Inst1Quest8_Location = "奧拉留斯（燃燒平原 - 摩根的崗哨; "..YELLOW.."84,68"..WHITE.."）"
Inst1Quest8_Note = "所有矮人都可能掉落挎包。"
Inst1Quest8_Prequest = "無"
Inst1Quest8_Folgequest = "無"
--
Inst1Quest8name1 = "肮髒的背包"

--Quest 9 Alliance
Inst1Quest9 = "9. 烈焰精華"
Inst1Quest9_Level = "58"
Inst1Quest9_Attain = "52"
Inst1Quest9_Aim = "到黑石深淵去殺掉貝爾加。\n你只知道這個巨型怪物住在黑石深淵的最深處。記住你要使用特殊的黑龍皮從貝爾加的屍體上采集烈焰精華。\n將你采集到的烈焰精華交給塞勒斯·薩雷芬圖斯。"
Inst1Quest9_Location = "塞勒斯·薩雷芬圖斯（燃燒平原; "..YELLOW.."95,31"..WHITE.."）"
Inst1Quest9_Note = "此系列任務始于卡拉然·溫布雷（灼熱峽谷; "..YELLOW.."39,38"..WHITE.."）。\n 貝爾加在 "..YELLOW.."[11]"..WHITE.."。"
Inst1Quest9_Prequest = "無瑕之焰 -> 烈焰精華"
Inst1Quest9_Folgequest = "無"
Inst1Quest9PreQuest = "true"
--
Inst1Quest9name1 = "頁岩鬥篷"
Inst1Quest9name2 = "龍皮肩铠"
Inst1Quest9name3 = "火山腰帶"

--Quest 10 Alliance
Inst1Quest10 = "10. 卡蘭·巨錘"
Inst1Quest10_Level = "59"
Inst1Quest10_Attain = "50"
Inst1Quest10_Aim = "去黑石深淵找到卡蘭·巨錘。\n國王提到卡蘭在那裏負責看守囚犯——也許你應該在監獄附近尋找他。"
Inst1Quest10_Location = "國王麥格尼·銅須（鐵爐堡; "..YELLOW.."39,55"..WHITE.."）"
Inst1Quest10_Note = "前置任務始于皇家曆史學家阿克瑟努斯（鐵爐堡; "..YELLOW.."38,55"..WHITE.."）。卡蘭·巨錘位于 "..YELLOW.."[2]"..WHITE.."。"
Inst1Quest10_Prequest =  "索瑞森廢墟"
Inst1Quest10_Folgequest = "糟糕的消息"
Inst1Quest10PreQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst1Quest11 = "11. 王國的命運"
Inst1Quest11_Level = "59"
Inst1Quest11_Attain = "51"
Inst1Quest11_Aim = "回到黑石深淵，從達格蘭·索瑞森大帝的魔掌中救出鐵爐堡公主茉艾拉·銅須。"
Inst1Quest11_Location = "國王麥格尼·銅須（鐵爐堡; "..YELLOW.."39,55"..WHITE.."）"
Inst1Quest11_Note = "公主茉艾拉·銅須位于 "..YELLOW.."[21]"..WHITE.."。戰鬥中她可能會治療達格蘭。試著盡可能打斷她。但是一定不能讓她死掉，否則你的任務將會失敗！與她交談過後，你還要回到麥格尼·銅須那兒去。"
Inst1Quest11_Prequest = "糟糕的消息"
Inst1Quest11_Folgequest = "語出驚人的公主"
Inst1Quest11FQuest = "true"
--
Inst1Quest11name1 = "麥格尼的意志"
Inst1Quest11name2 = "鐵爐堡歌唱石"

--Quest 12 Alliance
Inst1Quest12 = "12. 熔火之心的傳送門"
Inst1Quest12_Level = "60"
Inst1Quest12_Attain = "55"
Inst1Quest12_Aim = "進入黑石深淵，在通往熔火之心的傳送門附近找到一塊熔火碎片，然後回到黑石山脈的洛索斯·天痕那裏。"
Inst1Quest12_Location = "洛索斯·天痕（黑石山; "..YELLOW.."副本入口地圖[2]"..WHITE.."）"
Inst1Quest12_Note = "完成這個任務之後你就可以從洛索斯·天痕旁邊的傳送石進入熔火之心。\n熔火碎片在 "..YELLOW.."[23]"..WHITE.."。"
Inst1Quest12_Prequest = "無"
Inst1Quest12_Folgequest = "無"
-- No Rewards for this quest

--Quest 13 Alliance
Inst1Quest13 = "13. 挑戰（T0.5升級任務）"
Inst1Quest13_Level = "60"
Inst1Quest13_Attain = "60"
Inst1Quest13_Aim = "前往黑石深淵競技場並在你被裁決者格裏斯通宣判時將挑釁旗幟放在它的中央。殺死瑟爾倫和他的戰士們，再帶著第一塊瓦薩拉克護符回到東瘟疫之地的安希恩·哈莫那裏。"
Inst1Quest13_Location = "法爾林·樹影（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1]"..WHITE.."）"
Inst1Quest13_Note = "對于不同的職業後續任務是不同的。"
Inst1Quest13_Prequest = "無"
Inst1Quest13_Folgequest = "各個職業的職業任務（T0.5升級任務）"
-- No Rewards for this quest

--Quest 14 Alliance
Inst1Quest14 = "14. 鬼魂之杯"
Inst1Quest14_Level = "55"
Inst1Quest14_Attain = "55"
Inst1Quest14_Aim = "鬼魂之杯的塞娜尼·雷心要你找到他想要的材料。"
Inst1Quest14_Location = "塞娜尼·雷心（黑石深淵; "..YELLOW.."[18]"..WHITE.."）"
Inst1Quest14_Note = "只有采礦技能大于230才能接到此任務，這個任務會是你學會如何熔煉黑鐵礦石。材料如下：2個[紅寶石]，20個[金錠]，10個[真銀錠]。完成之後，如果你有[黑鐵礦石]你可以在黑熔爐"..YELLOW.."[22]"..WHITE.."熔煉黑鐵。"
Inst1Quest14_Prequest = "無"
Inst1Quest14_Folgequest = "無"
-- No Rewards for this quest

--Quest 15 Alliance
Inst1Quest15 = "15. 科林的烈酒"
Inst1Quest15_Level = "80"
Inst1Quest15_Attain = "75"
Inst1Quest15_Aim = "將科林的烈酒交給鐵爐堡附近美酒節營地的埃菲庫格·鐵桶。"
Inst1Quest15_Location = "科林的烈酒（掉落自科林·烈酒 "..YELLOW.."[15]"..WHITE.."）"
Inst1Quest15_Note = "這個任務只能在美酒節期間可以接到。任務物品每個角色只可獲取一次。\n\n埃菲庫格·鐵桶在美酒節營地（丹莫羅; "..YELLOW.."47,39"..WHITE.."）。"
Inst1Quest15_Prequest = "無"
Inst1Quest15_Folgequest = "無"
--
Inst1Quest15name1 = "美酒節獎幣"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst1Quest1_HORDE = Inst1Quest1
Inst1Quest1_HORDE_Level = Inst1Quest1_Level
Inst1Quest1_HORDE_Attain = Inst1Quest1_Attain
Inst1Quest1_HORDE_Aim = Inst1Quest1_Aim
Inst1Quest1_HORDE_Location = Inst1Quest1_Location
Inst1Quest1_HORDE_Note = Inst1Quest1_Note
Inst1Quest1_HORDE_Prequest = Inst1Quest1_Prequest
Inst1Quest1_HORDE_Folgequest = Inst1Quest1_Folgequest
--
Inst1Quest1name1_HORDE = Inst1Quest1name1

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst1Quest2_HORDE = Inst1Quest2
Inst1Quest2_HORDE_Level = Inst1Quest2_Level
Inst1Quest2_HORDE_Attain = Inst1Quest2_Attain
Inst1Quest2_HORDE_Aim = Inst1Quest2_Aim
Inst1Quest2_HORDE_Location = Inst1Quest2_Location
Inst1Quest2_HORDE_Note = Inst1Quest2_Note
Inst1Quest2_HORDE_Prequest = Inst1Quest2_Prequest
Inst1Quest2_HORDE_Folgequest = Inst1Quest2_Folgequest
Inst1Quest2PreQuest_HORDE = Inst1Quest2PreQuest
--
Inst1Quest2name1_HORDE = Inst1Quest2name1
Inst1Quest2name2_HORDE = Inst1Quest2name2
Inst1Quest2name3_HORDE = Inst1Quest2name3

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst1Quest3_HORDE = Inst1Quest3
Inst1Quest3_HORDE_Level = Inst1Quest3_Level
Inst1Quest3_HORDE_Attain = Inst1Quest3_Attain
Inst1Quest3_HORDE_Aim = Inst1Quest3_Aim
Inst1Quest3_HORDE_Location = Inst1Quest3_Location
Inst1Quest3_HORDE_Note = Inst1Quest3_Note
Inst1Quest3_HORDE_Prequest = Inst1Quest3_Prequest
Inst1Quest3_HORDE_Folgequest = Inst1Quest3_Folgequest
--
Inst1Quest3name1_HORDE = Inst1Quest3name1
Inst1Quest3name2_HORDE = Inst1Quest3name2

--Quest 4 Horde
Inst1Quest4_HORDE = "4. 遺失的雷酒秘方"
Inst1Quest4_HORDE_Level = "55"
Inst1Quest4_HORDE_Attain = "50"
Inst1Quest4_HORDE_Aim = "把遺失的雷酒秘方交給卡加斯的薇薇安·拉格雷。"
Inst1Quest4_HORDE_Location = "暗法師薇薇安·拉格雷（荒蕪之地 - 卡加斯; "..YELLOW.."2,47"..WHITE.."）"
Inst1Quest4_HORDE_Note = "前置任務由藥劑師金格（幽暗城 - 煉金房; "..YELLOW.."50,68"..WHITE.."）給予。\n秘方在某個守衛身上，只要你破壞 "..YELLOW.."[15]"..WHITE.."的酒桶這些守衛就會出現。"
Inst1Quest4_HORDE_Prequest = "薇薇安·拉格雷"
Inst1Quest4_HORDE_Folgequest = "無"
Inst1Quest4PreQuest_HORDE = "true"
--
Inst1Quest4name1_HORDE = "超強治療藥水"
Inst1Quest4name2_HORDE = "強效法力藥水"
Inst1Quest4name3_HORDE = "迅捷木槌"
Inst1Quest4name4_HORDE = "叉刃巨斧"

--Quest 5 Horde  (same as Quest 7 Alliance)
Inst1Quest5_HORDE = "5. 山脈之心"
Inst1Quest5_HORDE_Level = Inst1Quest7_Level
Inst1Quest5_HORDE_Attain = Inst1Quest7_Attain
Inst1Quest5_HORDE_Aim = Inst1Quest7_Aim
Inst1Quest5_HORDE_Location = Inst1Quest7_Location
Inst1Quest5_HORDE_Note = Inst1Quest7_Note
Inst1Quest5_HORDE_Prequest = Inst1Quest7_Prequest
Inst1Quest5_HORDE_Folgequest = Inst1Quest7_Folgequest
-- No Rewards for this quest

--Quest 6 Horde
Inst1Quest6_HORDE = "6. 格殺勿論：黑鐵矮人"
Inst1Quest6_HORDE_Level = "52"
Inst1Quest6_HORDE_Attain = "48"
Inst1Quest6_HORDE_Aim = "到黑石深淵去消滅那些邪惡的侵略者！軍官高圖斯要你去殺死15個鐵怒衛士、10個鐵怒獄卒和5個鐵怒步兵。完成任務之後回去向他複命。"
Inst1Quest6_HORDE_Location = "通緝（荒蕪之地 - 卡加斯; "..YELLOW.."3,47"..WHITE.."）"
Inst1Quest6_HORDE_Note = "矮人可在黑石深淵第一部分找到。\n卡加斯的高圖斯在瞭望塔頂（荒蕪之地; "..YELLOW.."5,47"..WHITE.."）。"
Inst1Quest6_HORDE_Prequest = "無"
Inst1Quest6_HORDE_Folgequest = "格殺勿論：高階黑鐵軍官"
-- No Rewards for this quest

--Quest 7 Horde
Inst1Quest7_HORDE = "7. 格殺勿論：高階黑鐵軍官"
Inst1Quest7_HORDE_Level = "54"
Inst1Quest7_HORDE_Attain = "49"
Inst1Quest7_HORDE_Aim = "到黑石深淵去消滅那些邪惡的侵略者！高圖斯軍閥要你殺死10個鐵怒醫師、10個鐵怒士兵和10個鐵怒軍官。完成任務之後回去向他複命。"
Inst1Quest7_HORDE_Location = "通緝（荒蕪之地 - 卡加斯; "..YELLOW.."3,47"..WHITE.."）"
Inst1Quest7_HORDE_Note = "矮人可以在"..YELLOW.."[11]"..WHITE.."貝爾加附近被找到。卡加斯的高圖斯在瞭望塔頂（荒蕪之地; "..YELLOW.."5,47"..WHITE.."）。\n任務開始于雷克斯洛特（荒蕪之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）。格拉克·洛克魯布位置在燃燒平原（"..YELLOW.."38,35"..WHITE.."）。要綁定他並開始護送任務（精英），他的生命需要減少到低于50%。"
Inst1Quest7_HORDE_Prequest = "格殺勿論：黑鐵矮人"
Inst1Quest7_HORDE_Folgequest = "格拉克·洛克魯布 -> 押送囚徒（護送任務）"
Inst1Quest7FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 8 Horde
Inst1Quest8_HORDE = "8. 行動：殺死安格弗將軍"
Inst1Quest8_HORDE_Level = "58"
Inst1Quest8_HORDE_Attain = "54"
Inst1Quest8_HORDE_Aim = "到黑石深淵去殺掉安格弗將軍！當任務完成之後向軍官高圖斯複命。"
Inst1Quest8_HORDE_Location = "軍官高圖斯（荒蕪之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）"
Inst1Quest8_HORDE_Note = "安格弗將軍位置在 "..YELLOW.."[13]"..WHITE.."。注意：當他生命低于30%時，他會召喚幫手！"
Inst1Quest8_HORDE_Prequest = "押送囚徒"
Inst1Quest8_HORDE_Folgequest = "無"
Inst1Quest8FQuest_HORDE = "true"
--
Inst1Quest8name1_HORDE = "征服者勳章"

--Quest 9 Horde
Inst1Quest9_HORDE = "9. 機器的崛起"
Inst1Quest9_HORDE_Level = "58"
Inst1Quest9_HORDE_Attain = "52"
Inst1Quest9_HORDE_Aim = "找到並殺掉傀儡統帥阿格曼奇，將他的頭交給魯特維爾。你還需要從守衛著阿格曼奇的狂怒傀儡和戰鬥傀儡身上收集10塊完整的元素核心。"
Inst1Quest9_HORDE_Location = "魯特維爾·沃拉圖斯（荒蕪之地; "..YELLOW.."25,44"..WHITE.."）"
Inst1Quest9_HORDE_Note = "前置任務來自聖者塞朵拉·穆瓦丹尼（荒蕪之地 - 卡加斯; "..YELLOW.."3,47"..WHITE.."）。\n你可以在 "..YELLOW.."[14]"..WHITE.." 發現阿格曼奇。"
Inst1Quest9_HORDE_Prequest = "機器的崛起"
Inst1Quest9_HORDE_Folgequest = "無"
Inst1Quest9PreQuest_HORDE = "true"
--
Inst1Quest9name1_HORDE = "藍月披肩"
Inst1Quest9name2_HORDE = "雨法師鬥篷"
Inst1Quest9name3_HORDE = "黑陶鱗片護甲"
Inst1Quest9name4_HORDE = "熔岩護手"

--Quest 10 Horde  (same as Quest 9 Alliance)
Inst1Quest10_HORDE = "10. 烈焰精華"
Inst1Quest10_HORDE_Level = Inst1Quest9_Level
Inst1Quest10_HORDE_Attain = Inst1Quest9_Attain
Inst1Quest10_HORDE_Aim = Inst1Quest9_Aim
Inst1Quest10_HORDE_Location = Inst1Quest9_Location
Inst1Quest10_HORDE_Note = Inst1Quest9_Note
Inst1Quest10_HORDE_Prequest = Inst1Quest9_Prequest
Inst1Quest10_HORDE_Folgequest = Inst1Quest9_Folgequest
Inst1Quest10PreQuest_HORDE = Inst1Quest9PreQuest
--
Inst1Quest10name1_HORDE = Inst1Quest9name1
Inst1Quest10name2_HORDE = Inst1Quest9name2
Inst1Quest10name3_HORDE = Inst1Quest9name3

--Quest 11 Horde
Inst1Quest11_HORDE = "11. 不和諧的烈焰"
Inst1Quest11_HORDE_Level = "52"
Inst1Quest11_HORDE_Attain = "48"
Inst1Quest11_HORDE_Aim = "到黑石山脈的采石場去幹掉征服者派隆，然後向桑德哈特回報。"
Inst1Quest11_HORDE_Location = "桑德哈特（荒蕪之地 - 卡加斯; "..YELLOW.."3,48"..WHITE.."）"
Inst1Quest11_HORDE_Note = "征服者派隆是副本門口外面的一個火元素精英。在黑石深淵 "..YELLOW.."副本入口地圖[1]"..WHITE.."。"
Inst1Quest11_HORDE_Prequest = "無"
Inst1Quest11_HORDE_Folgequest = "不和諧的火焰"
-- No Rewards for this quest

--Quest 12 Horde
Inst1Quest12_HORDE = "12. 不和諧的火焰"
Inst1Quest12_HORDE_Level = "56"
Inst1Quest12_HORDE_Attain = "48"
Inst1Quest12_HORDE_Aim = "進入黑石深淵並找到伊森迪奧斯。殺掉它，然後把你找到的信息彙報給桑德哈特。"
Inst1Quest12_HORDE_Location = "桑德哈特（荒蕪之地 - 卡加斯; "..YELLOW.."3,48"..WHITE.."）"
Inst1Quest12_HORDE_Note = "前置任務從塞娜尼·雷心獲得，伊森迪奧斯在 "..YELLOW.."[10]"..WHITE.."。"
Inst1Quest12_HORDE_Prequest = "不和諧的烈焰"
Inst1Quest12_HORDE_Folgequest = "無"
Inst1Quest12FQuest_HORDE = "true"
--
Inst1Quest12name1_HORDE = "陽焰鬥篷"
Inst1Quest12name2_HORDE = "夜暮手套"
Inst1Quest12name3_HORDE = "地穴惡魔護腕"
Inst1Quest12name4_HORDE = "堅定手套"

--Quest 13 Horde
Inst1Quest13_HORDE = "13. 最後的元素"
Inst1Quest13_HORDE_Level = "54"
Inst1Quest13_HORDE_Attain = "48"
Inst1Quest13_HORDE_Aim = "到黑石深淵去取得10份元素精華。你應該在那些作戰傀儡和傀儡制造者身上找找，另外，薇薇安·拉格雷也提到了一些有關元素生物的話題……"
Inst1Quest13_HORDE_Location = "暗法師薇薇安·拉格雷（荒蕪之地 - 卡加斯; "..YELLOW.."2,47"..WHITE.."）"
Inst1Quest13_HORDE_Note = "前置任務來自桑德哈特（荒蕪之地 - 卡加斯; "..YELLOW.."3,48"..WHITE.."）。派隆就在副本入口處前。\n 每個元素生物都可能會掉落精華。"
Inst1Quest13_HORDE_Prequest = "不和諧的烈焰"
Inst1Quest13_HORDE_Folgequest = "無"
Inst1Quest13PreQuest_HORDE = "true"
--
Inst1Quest13name1_HORDE = "拉格雷的徽記之戒"

--Quest 14 Horde
Inst1Quest14_HORDE = "14. 指揮官哥沙克"
Inst1Quest14_HORDE_Level = "52"
Inst1Quest14_HORDE_Attain = "48"
Inst1Quest14_HORDE_Aim = "在黑石深淵裏找到指揮官哥沙克。\n在那幅草圖上畫著的是一個鐵欄後面的獸人，也許你應該到某個類似監獄的地方去找找看。"
Inst1Quest14_HORDE_Location = "神射手賈拉瑪弗（荒蕪之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）"
Inst1Quest14_HORDE_Note = "前置任務來自桑德哈特（荒蕪之地 - 卡加斯; "..YELLOW.."3,48"..WHITE.."）。派隆就在副本入口處前。\n你能在 "..YELLOW.."[3]"..WHITE.." 找到指揮官哥沙克。位于 "..YELLOW.."[5]"..WHITE.." 的審訊官格斯塔恩掉落打開監獄的鑰匙。如果你跟他交談並開始下一個任務，敵人便會出現。"
Inst1Quest14_HORDE_Prequest = "不和諧的烈焰"
Inst1Quest14_HORDE_Folgequest = "出了什麽事？"
Inst1Quest14PreQuest_HORDE = "true"

--Quest 15 Horde
Inst1Quest15_HORDE = "15. 拯救公主"
Inst1Quest15_HORDE_Level = "59"
Inst1Quest15_HORDE_Attain = "50"
Inst1Quest15_HORDE_Aim = "殺掉達格蘭·索瑞森大帝，然後將鐵爐堡公主茉艾拉·銅須從他的邪惡詛咒中拯救出來。"
Inst1Quest15_HORDE_Location = "薩爾（奧格瑞瑪; "..YELLOW.."31,37"..WHITE.."）"
Inst1Quest15_HORDE_Note = "與卡蘭·巨錘和薩爾交談後，你將得到這個任務。\n達格蘭·索瑞森大帝在 "..YELLOW.."[21]"..WHITE.."。雖然公主會治療達格蘭，但是如果想完成任務，就一定不要殺死公主。切記，切記！！！嘗試打斷公主的治療施法。"
Inst1Quest15_HORDE_Prequest = "指揮官哥沙克"
Inst1Quest15_HORDE_Folgequest = "拯救公主？"
Inst1Quest15FQuest_HORDE = "true"
--
Inst1Quest15name1_HORDE = "薩爾的決心"
Inst1Quest15name2_HORDE = "奧格瑞瑪之眼"

--Quest 16 Horde  (same as Quest 12 Alliance)
Inst1Quest16_HORDE = "16. 熔火之心的傳送門"
Inst1Quest16_HORDE_Level = Inst1Quest12_Level
Inst1Quest16_HORDE_Attain = Inst1Quest12_Attain
Inst1Quest16_HORDE_Aim = Inst1Quest12_Aim
Inst1Quest16_HORDE_Location = Inst1Quest12_Location
Inst1Quest16_HORDE_Note = Inst1Quest12_Note
Inst1Quest16_HORDE_Prequest = Inst1Quest12_Prequest
Inst1Quest16_HORDE_Folgequest = Inst1Quest12_Folgequest
-- No Rewards for this quest

--Quest 17 Horde  (same as Quest 13 Alliance)
Inst1Quest17_HORDE = "17. 挑戰（T0.5升級任務）"
Inst1Quest17_HORDE_Level = Inst1Quest13_Level
Inst1Quest17_HORDE_Attain = Inst1Quest13_Attain
Inst1Quest17_HORDE_Aim = Inst1Quest13_Aim
Inst1Quest17_HORDE_Location = Inst1Quest13_Location
Inst1Quest17_HORDE_Note = Inst1Quest13_Note
Inst1Quest17_HORDE_Prequest = Inst1Quest13_Prequest
Inst1Quest17_HORDE_Folgequest = Inst1Quest13_Folgequest
-- No Rewards for this quest

--Quest 18 Horde  (same as Quest 14 Alliance)
Inst1Quest18_HORDE = "18. 鬼魂之杯"
Inst1Quest18_HORDE_Level = Inst1Quest14_Level
Inst1Quest18_HORDE_Attain = Inst1Quest14_Attain
Inst1Quest18_HORDE_Aim = Inst1Quest14_Aim
Inst1Quest18_HORDE_Location = Inst1Quest14_Location
Inst1Quest18_HORDE_Note = Inst1Quest14_Note
Inst1Quest18_HORDE_Prequest = Inst1Quest14_Prequest
Inst1Quest18_HORDE_Folgequest = Inst1Quest14_Folgequest
-- No Rewards for this quest


--------------- INST2 - Blackwing Lair (BWL) ---------------

Inst2Story = {
  ["Page1"] = "黑翼之巢，它位于黑石塔的最頂端。奈法利安就在那裏進行著他的秘密計劃的最後步驟，並准備摧毀拉格納羅斯的勢力，最終統治整個艾澤拉斯。",
  ["Page2"] = "座落在黑石山脈中的巨型要塞是由矮人建築大師弗蘭克羅恩·鑄鐵設計的，作為力量和實力的象征，這座要塞被邪惡的黑鐵矮人占據了數個世紀之久。但是，黑龍死亡之翼的兒子奈法利安對這座要塞有著別的打算。他和他的黑龍軍團占據了黑石塔的上層區域，並與黑石深淵中的那些侍奉火焰之王拉格納羅斯的黑鐵矮人不斷交戰。拉格納羅斯找到了為岩石賦予生命的方法，並准備制造一支無堅不摧的傀儡大軍，以此來幫助他實施征服整個黑石山的計劃。",
  ["Page3"] = "而奈法利安則發誓要毀滅拉格納羅斯，因此他近期以來加速了擴張軍隊的步伐，就像他的父親死亡之翼曾經嘗試過的那樣。雖然死亡之翼最終失敗了，但看起來奈法利安很有希望獲得成功。他對于權力的瘋狂渴求甚至引起了紅龍軍團的警覺——他們一直是黑龍最強大的敵人。不過，即便奈法利安的目標非常明顯，他所采用的手段卻不為人知。但是據信他正在嘗試雜交各種顔色的龍以制造出最強大的戰士。\n \n奈法利安的藏身之所被稱為黑翼之巢，它位于黑石塔的最頂端。奈法利安就在那裏進行著他的秘密計劃的最後步驟，並准備摧毀拉格納羅斯的勢力，最終統治整個艾澤拉斯。",
  ["MaxPages"] = "3",
};
Inst2Caption = "黑翼之巢（BWL）"
Inst2Caption2 = "黑翼之巢（故事背景 第1部分）"
Inst2Caption3 = "黑翼之巢（故事背景 第2部分）"

Inst2QAA = "3 個任務"
Inst2QAH = "3 個任務"

--Quest 1 Alliance
Inst2Quest1 = "1. 奈法裏奧斯的腐蝕"
Inst2Quest1_Level = "60"
Inst2Quest1_Attain = "60"
Inst2Quest1_Aim = "幹掉奈法利安並拿到紅色節杖碎片。把紅色節杖碎片帶給塔納利斯時光之穴門口的阿納克洛斯。你必須在5小時之內完成這個任務。"
Inst2Quest1_Location = "墮落的瓦拉斯塔茲（黑翼之巢; "..YELLOW.."[2]"..WHITE.."）"
Inst2Quest1_Note = "只有一人能拾取碎片。阿納克洛斯（塔納利斯 - 時光之穴; "..YELLOW.."65,49"..WHITE.."）"
Inst2Quest1_Prequest = "無"
Inst2Quest1_Folgequest = "無"
--
Inst2Quest1name1 = "瑪瑙鑲飾護腿"
Inst2Quest1name2 = "暗影屏蔽護符"

--Quest 2 Alliance
Inst2Quest2 = "2. 黑石之王"
Inst2Quest2_Level = "60"
Inst2Quest2_Attain = "60"
Inst2Quest2_Aim = "將奈法利安的頭顱交給暴風城的瓦裏安·烏瑞恩國王。"
Inst2Quest2_Location = "奈法利安的頭顱掉落自（奈法利安; "..YELLOW.."[10]"..WHITE.."）"
Inst2Quest2_Note = "瓦裏安·烏瑞恩國王（暴風城 - 暴風要塞; "..YELLOW.."80,38"..WHITE.."）。接下來前往艾法希比元帥（暴風城 - 英雄谷; "..YELLOW.."71,80"..WHITE.."）領取獎勵。"
Inst2Quest2_Prequest = "無"
Inst2Quest2_Folgequest = "黑石之王"
--
Inst2Quest2name1 = "屠龍大師勳章"
Inst2Quest2name2 = "屠龍大師寶珠"
Inst2Quest2name3 = "屠龍大師之戒"

--Quest 3 Alliance
Inst2Quest3 = "3. 唯一的領袖"
Inst2Quest3_Level = "60"
Inst2Quest3_Attain = "60"
Inst2Quest3_Aim = "將勒什雷爾的頭顱交給希利蘇斯塞納裏奧要塞的流沙守望者巴裏斯托爾斯。"
Inst2Quest3_Location = "勒什雷爾的頭顱掉落自（勒什雷爾; "..YELLOW.."[3]"..WHITE.."）"
Inst2Quest3_Note = "只有一人能拾取頭顱。（現版本不再限一人）"
Inst2Quest3_Prequest = "無"
Inst2Quest3_Folgequest = "正義之路"
-- No Rewards for this quest


--Quest 1 Horde(same as Quest 1 Alliance)
Inst2Quest1_HORDE = Inst2Quest1
Inst2Quest1_HORDE_Level = Inst2Quest1_Level
Inst2Quest1_HORDE_Attain = Inst2Quest1_Attain
Inst2Quest1_HORDE_Aim = Inst2Quest1_Aim
Inst2Quest1_HORDE_Location = Inst2Quest1_Location
Inst2Quest1_HORDE_Note = Inst2Quest1_Note
Inst2Quest1_HORDE_Prequest = Inst2Quest1_Prequest
Inst2Quest1_HORDE_Folgequest = Inst2Quest1_Folgequest
--
Inst2Quest1name1_HORDE = Inst2Quest1name1
Inst2Quest1name2_HORDE = Inst2Quest1name2

--Quest 2 Horde
Inst2Quest2_HORDE = "2. 黑石之王"
Inst2Quest2_HORDE_Level = "60"
Inst2Quest2_HORDE_Attain = "60"
Inst2Quest2_HORDE_Aim = "將奈法利安的頭顱交給奧格瑞瑪的薩爾。"
Inst2Quest2_HORDE_Location = "奈法利安的頭顱掉落自（奈法利安; "..YELLOW.."[9]"..WHITE.."）"
Inst2Quest2_HORDE_Note = "下一步前往薩魯法爾大王（奧格瑞瑪 - 力量谷; "..YELLOW.."51,76"..WHITE.."）領取獎勵。"
Inst2Quest2_HORDE_Prequest = "無"
Inst2Quest2_HORDE_Folgequest = "黑石之王"
--
Inst2Quest2name1_HORDE = "屠龍大師勳章"
Inst2Quest2name2_HORDE = "屠龍大師寶珠"
Inst2Quest2name3_HORDE = "屠龍大師之戒"

--Quest 3 Horde(same as Quest 3 Alliance)
Inst2Quest3_HORDE = Inst2Quest3
Inst2Quest3_HORDE_Level = Inst2Quest3_Level
Inst2Quest3_HORDE_Attain = Inst2Quest3_Attain
Inst2Quest3_HORDE_Aim = Inst2Quest3_Aim
Inst2Quest3_HORDE_Location = Inst2Quest3_Location
Inst2Quest3_HORDE_Note = Inst2Quest3_Note
Inst2Quest3_HORDE_Prequest = Inst2Quest3_Prequest
Inst2Quest3_HORDE_Folgequest = Inst2Quest3_Folgequest
-- No Rewards for this quest


--------------- INST3 - Lower Blackrock Spire (LBRS) ---------------

Inst3Story = "黑石深淵深處的巨大堡壘是由矮人建築大師弗蘭克羅恩·鑄鐵所設計的。這個堡壘是矮人力量的象征並被邪惡的黑鐵矮人占據了數個世紀。然而，奈法利安——死亡之翼狡猾的兒子——對這個巨大的堡壘別有意圖。他和他的黑龍軍團占據了上層黑石塔並向占據著黑石深淵的黑鐵矮人宣戰。奈法利安知道矮人是由強大的火元素拉格納羅斯所領導的，所以他立志要摧毀他的敵人並將黑石深淵全都占為己有。"
Inst3Caption = "下層黑石塔（LBRS）"
Inst3QAA = "14 個任務"
Inst3QAH = "14 個任務"

--Quest 1 Alliance
Inst3Quest1 = "1. 最後的石板"
Inst3Quest1_Level = "58"
Inst3Quest1_Attain = "40"
Inst3Quest1_Aim = "將第五塊和第六塊摩沙魯石板交給塔納利斯的勘查員詹斯·鐵靴。"
Inst3Quest1_Location = "勘查員詹斯·鐵靴（塔納利斯 - 熱砂港; "..YELLOW.."66,23"..WHITE.."）"
Inst3Quest1_Note = "你可以在 "..YELLOW.."[7]"..WHITE.." 和 "..YELLOW.."[9]"..WHITE.." 附近找到石板。\n任務獎勵來自《面對葉基亞》。你可以在勘查員詹斯·鐵靴旁邊找到葉基亞。"
Inst3Quest1_Prequest = "失落的摩沙魯石板"
Inst3Quest1_Folgequest = "面對葉基亞"
Inst3Quest1PreQuest = "true"
--
Inst3Quest1name1 = "褪色的哈卡萊披風"
Inst3Quest1name2 = "破碎的哈卡萊披風"

--Quest 2 Alliance
Inst3Quest2 = "2. 基布雷爾的特殊寵物"
Inst3Quest2_Level = "59"
Inst3Quest2_Attain = "55"
Inst3Quest2_Aim = "到黑石塔去找到血斧座狼幼崽。使用籠子來捕捉這些凶猛的小野獸，然後把籠中的座狼幼崽交給基布雷爾。"
Inst3Quest2_Location = "基布雷爾（燃燒平原 - 烈焰峰; "..YELLOW.."65,22"..WHITE.."）"
Inst3Quest2_Note = "你可以在 "..YELLOW.."[17]"..WHITE.." 找到座狼幼崽。"
Inst3Quest2_Prequest = "無"
Inst3Quest2_Folgequest = "無"
--
Inst3Quest2name1 = "座狼籠"

--Quest 3 Alliance
Inst3Quest3 = "3. 蜘蛛卵"
Inst3Quest3_Level = "59"
Inst3Quest3_Attain = "55"
Inst3Quest3_Aim = "到黑石塔去為基布雷爾收集15枚尖塔蜘蛛卵。"
Inst3Quest3_Location = "基布雷爾（燃燒平原 - 烈焰峰; "..YELLOW.."65,22"..WHITE.."）"
Inst3Quest3_Note = "你可以在 "..YELLOW.."[13]"..WHITE.." 附近找到蜘蛛卵。"
Inst3Quest3_Prequest = "無"
Inst3Quest3_Folgequest = "無"
--
Inst3Quest3name1 = "煙網蜘蛛籠"

--Quest 4 Alliance
Inst3Quest4 = "4. 蛛後的乳汁"
Inst3Quest4_Level = "60"
Inst3Quest4_Attain = "55"
Inst3Quest4_Aim = "你可以在黑石塔的中心地帶找到煙網蛛後。與她戰鬥，讓她在你體內注入毒汁。如果你有能力的話，就殺死她吧。當你中毒之後，回到狼狽不堪的約翰那兒，他會從你的身體裏抽取這些‘蛛後的乳汁’。"
Inst3Quest4_Location = "狼狽不堪的約翰（燃燒平原 - 烈焰峰; "..YELLOW.."65,23"..WHITE.."）"
Inst3Quest4_Note = "煙網蛛後在 "..YELLOW.."[13]"..WHITE.."。如果中毒後解除，那麽任務就會失敗。"
Inst3Quest4_Prequest = "無"
Inst3Quest4_Folgequest = "無"
--
Inst3Quest4name1 = "約翰的無盡之杯"

--Quest 5 Alliance
Inst3Quest5 = "5. 座狼之源"
Inst3Quest5_Level = "59"
Inst3Quest5_Attain = "55"
Inst3Quest5_Aim = "到黑石塔去摧毀那裏的座狼源頭。當你離開的時候，赫林迪斯喊出了一個名字：哈雷肯。這個詞就是獸人語中‘座狼’的意思。"
Inst3Quest5_Location = "赫林迪斯·河角（燃燒平原 - 摩根的崗哨; "..YELLOW.."5,47"..WHITE.."）"
Inst3Quest5_Note = "哈雷肯在"..YELLOW.."[17]"..WHITE.."。"
Inst3Quest5_Prequest = "無"
Inst3Quest5_Folgequest = "無"
--
Inst3Quest5name1 = "阿斯托裏長袍"
Inst3Quest5name2 = "吊鈎外套"
Inst3Quest5name3 = "碧鱗胸甲"

--Quest 6 Alliance
Inst3Quest6 = "6. 烏洛克"
Inst3Quest6_Level = "60"
Inst3Quest6_Attain = "55"
Inst3Quest6_Aim = "閱讀瓦羅什的卷軸。將瓦羅什的蟑螂交給他。"
Inst3Quest6_Location = "瓦羅什（下層黑石塔; "..YELLOW.."[2]"..WHITE.."）"
Inst3Quest6_Note = "要得到瓦羅什的蟑螂，你必須首先殺死烏洛克 "..YELLOW.."[15]"..WHITE.."。要完成召喚，你需要長矛和歐莫克大王的頭顱 "..YELLOW.."[5]"..WHITE.."。長矛在 "..YELLOW.."[3]"..WHITE.."。在召喚出烏洛克之前，會出現幾群食人魔，你可以用長矛來傷害它們。"
Inst3Quest6_Prequest = "無"
Inst3Quest6_Folgequest = "無"
--
Inst3Quest6name1 = "棱石護符"

--Quest 7 Alliance
Inst3Quest7 = "7. 比修的裝置"
Inst3Quest7_Level = "59"
Inst3Quest7_Attain = "55"
Inst3Quest7_Aim = "找到比修的裝置並把它們還給她。祝你好運！"
Inst3Quest7_Location = "比修（下層黑石塔; "..YELLOW.."[3]"..WHITE.."）"
Inst3Quest7_Note = "你可以在前往煙網蛛後的路上找到比修的裝置 "..YELLOW.."[13]"..WHITE.."。\n麥克斯韋元帥（燃燒平原 - 摩根的崗哨; "..YELLOW.."84,58"..WHITE.."）。"
Inst3Quest7_Prequest = "無"
Inst3Quest7_Folgequest = "給麥克斯韋爾的消息"
-- No Rewards for this quest

--Quest 8 Alliance
Inst3Quest8 = "8. 麥克斯韋爾的任務"
Inst3Quest8_Level = "60"
Inst3Quest8_Attain = "55"
Inst3Quest8_Aim = "到黑石塔去消滅指揮官沃恩、歐莫克大王和維姆薩拉克。完成任務之後回到麥克斯韋爾元帥處複命。"
Inst3Quest8_Location = "麥克斯韋爾（燃燒平原 - 摩根的崗哨; "..YELLOW.."84,58"..WHITE.."）"
Inst3Quest8_Note = "指揮官沃恩在 "..YELLOW.."[9]"..WHITE.."，歐莫克大王在 "..YELLOW.."[5]"..WHITE.."，維姆薩拉克在 "..YELLOW.."[19]"..WHITE.."。"
Inst3Quest8_Prequest = "給麥克斯韋爾的消息"
Inst3Quest8_Folgequest = "無"
Inst3Quest8FQuest = "true"
--
Inst3Quest8name1 = "維姆薩拉克的鐐铐"
Inst3Quest8name2 = "歐莫克的瘦身腰帶"
Inst3Quest8name3 = "哈雷肯的籠口"
Inst3Quest8name4 = "沃什加斯的繩索"
Inst3Quest8name5 = "沃恩的邪惡之握"

--Quest 9 Alliance
Inst3Quest9 = "9. 晉升印章"
Inst3Quest9_Level = "60"
Inst3Quest9_Attain = "57"
Inst3Quest9_Aim = "找到三塊命令寶石：燃棘寶鑽、尖石寶鑽和血斧寶鑽。把它們和原始晉升印章一起交給維埃蘭。"
Inst3Quest9_Location = "維埃蘭（下層黑石塔; "..YELLOW.."[1]"..WHITE.."）"
Inst3Quest9_Note = "燃棘寶鑽從歐莫克大王 "..YELLOW.."[5]"..WHITE.."，尖石寶鑽從指揮官沃恩 "..YELLOW.."[9]"..WHITE.."，血斧寶鑽從維姆薩拉克 "..YELLOW.."[19]"..WHITE.."獲得。原始晉升印章是黑石塔所有小怪掉落，完成這個之後你就能得到上層黑石塔的鑰匙。"
Inst3Quest9_Prequest = "無"
Inst3Quest9_Folgequest = "晉升印章"
-- No Rewards for this quest

--Quest 10 Alliance
Inst3Quest10 = "10. 達基薩斯將軍的命令"
Inst3Quest10_Level = "60"
Inst3Quest10_Attain = "55"
Inst3Quest10_Aim = "把達基薩斯將軍的命令交給燃燒平原的麥克斯韋爾元帥。"
Inst3Quest10_Location = "達基薩斯將軍的命令掉落自（維姆薩拉克; "..YELLOW.."[19]"..WHITE.."）"
Inst3Quest10_Note = "麥克斯韋爾元帥（燃燒平原 - 摩根的崗哨; "..YELLOW.."84,58"..WHITE.."）"
Inst3Quest10_Prequest = "無"
Inst3Quest10_Folgequest = "達基薩斯將軍之死（"..YELLOW.."上層黑石塔"..WHITE.."）"
-- No Rewards for this quest

--Quest 11 Alliance
Inst3Quest11 = "11. 瓦塔拉克飾品的左瓣"
Inst3Quest11_Level = "60"
Inst3Quest11_Attain = "58"
Inst3Quest11_Aim = "使用召喚火盆召喚出莫爾·灰蹄的靈魂，然後殺掉他。完成之後，將召喚火盆與瓦塔拉克飾品的左瓣還給黑石山的伯德雷。"
Inst3Quest11_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖[D]"..WHITE.."）"
Inst3Quest11_Note = "你需要超維度幽靈顯形器才能看到伯德雷，你可以從《尋找安泰恩》任務得到它。\n\n莫爾·灰蹄在 "..YELLOW.."[9]"..WHITE.." 召喚。"
Inst3Quest11_Prequest = "重要的材料"
Inst3Quest11_Folgequest = "奧卡茲島在你前方……"
Inst3Quest11PreQuest = "true"
-- No Rewards for this quest

--Quest 12 Alliance
Inst3Quest12 = "12. 瓦塔拉克飾品的右瓣"
Inst3Quest12_Level = "60"
Inst3Quest12_Attain = "58"
Inst3Quest12_Aim = "在比斯巨獸的房間裏使用召喚火盆，召喚瓦塔拉克公爵。殺死他，對屍體使用瓦塔拉克的飾品。然後將瓦塔拉克的飾品還給瓦塔拉克公爵之魂。"
Inst3Quest12_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖[D]"..WHITE.."）"
Inst3Quest12_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。\n\n莫爾·灰蹄在 "..YELLOW.."[9]"..WHITE.." 召喚。"
Inst3Quest12_Prequest = "更多重要的材料"
Inst3Quest12_Folgequest = "最後的准備（"..YELLOW.."上層黑石塔"..WHITE.."）"
Inst3Quest12PreQuest = "true"
-- No Rewards for this quest

--Quest 13 Alliance
Inst3Quest13 = "13. 沃什加斯的蛇石"
Inst3Quest13_Level = "60"
Inst3Quest13_Attain = "50"
Inst3Quest13_Aim = "到黑石塔去殺死暗影獵手沃什加斯，將沃什加斯的蛇石交給基爾拉姆。"
Inst3Quest13_Location = "基爾拉姆（冬泉谷 - 永望鎮; "..YELLOW.."61,37"..WHITE.."）"
Inst3Quest13_Note = "暗影獵手沃什加斯在 "..YELLOW.."[7]"..WHITE.."。"
Inst3Quest13_Prequest = "無"
Inst3Quest13_Folgequest = "無"
--
Inst3Quest13name1 = "設計圖：黎明之刃"

--Quest 14 Alliance
Inst3Quest14 = "14. 火熱的死亡"
Inst3Quest14_Level = "60"
Inst3Quest14_Attain = "56"
Inst3Quest14_Aim = "世界上一定有人知道關于這副手套的事情，祝你好運！"
Inst3Quest14_Location = "人類的殘骸（下層黑石塔; "..YELLOW.."[9]"..WHITE.."）"
Inst3Quest14_Note = "煅造任務。確保從人類殘骸 "..YELLOW.."[11]"..WHITE.." 附近拿到這個板甲手套，交給瑪雷弗斯·暗錘（冬泉谷 - 永望鎮; "..YELLOW.."61,39"..WHITE.."）。"
Inst3Quest14_Prequest = "無"
Inst3Quest14_Folgequest = "熾熱板甲護手"
--
Inst3Quest14name1 = "設計圖：熾熱板甲護手 "
Inst3Quest14name2 = "熾熱板甲護手"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst3Quest1_HORDE = Inst3Quest1
Inst3Quest1_HORDE_Level = Inst3Quest1_Level
Inst3Quest1_HORDE_Attain = Inst3Quest1_Attain
Inst3Quest1_HORDE_Aim = Inst3Quest1_Aim
Inst3Quest1_HORDE_Location = Inst3Quest1_Location
Inst3Quest1_HORDE_Note = Inst3Quest1_Note
Inst3Quest1_HORDE_Prequest = Inst3Quest1_Prequest
Inst3Quest1_HORDE_Folgequest = Inst3Quest1_Folgequest
Inst3Quest1PreQuest_HORDE = Inst3Quest1PreQuest
--
Inst3Quest1name1_HORDE = Inst3Quest1name1
Inst3Quest1name2_HORDE = Inst3Quest1name2

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst3Quest2_HORDE = Inst3Quest2
Inst3Quest2_HORDE_Level = Inst3Quest2_Level
Inst3Quest2_HORDE_Attain = Inst3Quest2_Attain
Inst3Quest2_HORDE_Aim = Inst3Quest2_Aim
Inst3Quest2_HORDE_Location = Inst3Quest2_Location
Inst3Quest2_HORDE_Note = Inst3Quest2_Note
Inst3Quest2_HORDE_Prequest = Inst3Quest2_Prequest
Inst3Quest2_HORDE_Folgequest = Inst3Quest2_Folgequest
--
Inst3Quest2name1_HORDE = Inst3Quest2name1

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst3Quest3_HORDE = Inst3Quest3
Inst3Quest3_HORDE_Level = Inst3Quest3_Level
Inst3Quest3_HORDE_Attain = Inst3Quest3_Attain
Inst3Quest3_HORDE_Aim = Inst3Quest3_Aim
Inst3Quest3_HORDE_Location = Inst3Quest3_Location
Inst3Quest3_HORDE_Note = Inst3Quest3_Note
Inst3Quest3_HORDE_Prequest = Inst3Quest3_Prequest
Inst3Quest3_HORDE_Folgequest = Inst3Quest3_Folgequest
--
Inst3Quest3name1_HORDE = Inst3Quest3name1

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst3Quest4_HORDE = Inst3Quest4
Inst3Quest4_HORDE_Level = Inst3Quest4_Level
Inst3Quest4_HORDE_Attain = Inst3Quest4_Attain
Inst3Quest4_HORDE_Aim = Inst3Quest4_Aim
Inst3Quest4_HORDE_Location = Inst3Quest4_Location
Inst3Quest4_HORDE_Note = Inst3Quest4_Note
Inst3Quest4_HORDE_Prequest = Inst3Quest4_Prequest
Inst3Quest4_HORDE_Folgequest = Inst3Quest4_Folgequest
--
Inst3Quest4name1_HORDE = Inst3Quest4name1

--Quest 5 Horde
Inst3Quest5_HORDE = "5. 座狼的首領"
Inst3Quest5_HORDE_Level = "59"
Inst3Quest5_HORDE_Attain = "55"
Inst3Quest5_HORDE_Aim = "殺死血斧座狼的領袖，哈雷肯。"
Inst3Quest5_HORDE_Location = "神射手賈拉瑪弗（荒蕪之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）"
Inst3Quest5_HORDE_Note = "哈雷肯在 "..YELLOW.."[17]"..WHITE.."。"
Inst3Quest5_HORDE_Prequest = "無"
Inst3Quest5_HORDE_Folgequest = "無"
--
Inst3Quest5name1_HORDE = "阿斯托裏長袍"
Inst3Quest5name2_HORDE = "吊鈎外套"
Inst3Quest5name3_HORDE = "碧鱗胸甲"

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst3Quest6_HORDE = Inst3Quest6
Inst3Quest6_HORDE_Level = Inst3Quest6_Level
Inst3Quest6_HORDE_Attain = Inst3Quest6_Attain
Inst3Quest6_HORDE_Aim = Inst3Quest6_Aim
Inst3Quest6_HORDE_Location = Inst3Quest6_Location
Inst3Quest6_HORDE_Note = Inst3Quest6_Note
Inst3Quest6_HORDE_Prequest = Inst3Quest6_Prequest
Inst3Quest6_HORDE_Folgequest = Inst3Quest6_Folgequest
--
Inst3Quest6name1_HORDE = Inst3Quest6name1

--Quest 7 Horde
Inst3Quest7_HORDE = "7. 狡猾的比修"
Inst3Quest7_HORDE_Level = "59"
Inst3Quest7_HORDE_Attain = "55"
Inst3Quest7_HORDE_Aim = "到黑石塔去查明比修的下落。"
Inst3Quest7_HORDE_Location = "雷克斯洛特（荒蕪之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）"
Inst3Quest7_HORDE_Note = "比修在 "..YELLOW.."[8]"..WHITE.."。"
Inst3Quest7_HORDE_Prequest = "無"
Inst3Quest7_HORDE_Folgequest = "比修的裝置"
-- No Rewards for this quest

--Quest 8 Horde
Inst3Quest8_HORDE = "8. 比修的裝置"
Inst3Quest8_HORDE_Level = "59"
Inst3Quest8_HORDE_Attain = "55"
Inst3Quest8_HORDE_Aim = "找到比修的裝置並把它們還給她。你記得她說過她把裝置藏在城市的最底層。"
Inst3Quest8_HORDE_Location = "比修（下層黑石塔; "..YELLOW.."[3]"..WHITE.."）"
Inst3Quest8_HORDE_Note = "你可以在在通往煙網蛛後的路上找到比修的裝置 "..YELLOW.."[13]"..WHITE.."。"
Inst3Quest8_HORDE_Prequest = "狡猾的比修"
Inst3Quest8_HORDE_Folgequest = "比修的偵查報告"
Inst3Quest8FQuest_HORDE = "true"
--
Inst3Quest8name1_HORDE = "亂風手套"
Inst3Quest8name2_HORDE = "海港束帶"

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst3Quest9_HORDE = Inst3Quest9
Inst3Quest9_HORDE_Level = Inst3Quest9_Level
Inst3Quest9_HORDE_Attain = Inst3Quest9_Attain
Inst3Quest9_HORDE_Aim = Inst3Quest9_Aim
Inst3Quest9_HORDE_Location = Inst3Quest9_Location
Inst3Quest9_HORDE_Note = Inst3Quest9_Note
Inst3Quest9_HORDE_Prequest = Inst3Quest9_Prequest
Inst3Quest9_HORDE_Folgequest = Inst3Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde
Inst3Quest10_HORDE = "10. 高圖斯的命令"
Inst3Quest10_HORDE_Level = "60"
Inst3Quest10_HORDE_Attain = "55"
Inst3Quest10_HORDE_Aim = "殺死歐莫克大王、指揮官沃恩和維姆薩拉克。找到重要的黑石文件，然後向卡加斯的軍官高圖斯彙報。"
Inst3Quest10_HORDE_Location = "高圖斯（荒蕪之地 - 卡加斯; "..YELLOW.."65,22"..WHITE.."）"
Inst3Quest10_HORDE_Note = "歐莫克大王在 "..YELLOW.."[5]"..WHITE.."，指揮官沃恩在 "..YELLOW.."[9]"..WHITE.."，維姆薩拉克在 "..YELLOW.."[19]"..WHITE.."。黑石文件在3個 Boss 的其中一個邊上。"
Inst3Quest10_HORDE_Prequest = "無"
Inst3Quest10_HORDE_Folgequest = "伊崔格的智慧 -> 為部落而戰（"..YELLOW.."上層黑石塔"..WHITE.."）"
--
Inst3Quest10name1_HORDE = "維姆薩拉克的鐐铐"
Inst3Quest10name2_HORDE = "歐莫克的瘦身腰帶"
Inst3Quest10name3_HORDE = "哈雷肯的籠口"
Inst3Quest10name4_HORDE = "沃什加斯的繩索"
Inst3Quest10name5_HORDE = "沃恩的邪惡之握"

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst3Quest11_HORDE = Inst3Quest11
Inst3Quest11_HORDE_Level = Inst3Quest11_Level
Inst3Quest11_HORDE_Attain = Inst3Quest11_Attain
Inst3Quest11_HORDE_Aim = Inst3Quest11_Aim
Inst3Quest11_HORDE_Location = Inst3Quest11_Location
Inst3Quest11_HORDE_Note = Inst3Quest11_Note
Inst3Quest11_HORDE_Prequest = Inst3Quest11_Prequest
Inst3Quest11_HORDE_Folgequest = Inst3Quest11_Folgequest
Inst3Quest11PreQuest_HORDE = Inst3Quest11PreQuest
-- No Rewards for this quest

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst3Quest12_HORDE = Inst3Quest12
Inst3Quest12_HORDE_Level = Inst3Quest12_Level
Inst3Quest12_HORDE_Attain = Inst3Quest12_Attain
Inst3Quest12_HORDE_Aim = Inst3Quest12_Aim
Inst3Quest12_HORDE_Location = Inst3Quest12_Location
Inst3Quest12_HORDE_Note = Inst3Quest12_Note
Inst3Quest12_HORDE_Prequest = Inst3Quest12_Prequest
Inst3Quest12_HORDE_Folgequest = Inst3Quest12_Folgequest
Inst3Quest12PreQuest_HORDE = Inst3Quest12PreQuest
-- No Rewards for this quest

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst3Quest13_HORDE = Inst3Quest13
Inst3Quest13_HORDE_Level = Inst3Quest13_Level
Inst3Quest13_HORDE_Attain = Inst3Quest13_Attain
Inst3Quest13_HORDE_Aim = Inst3Quest13_Aim
Inst3Quest13_HORDE_Location = Inst3Quest13_Location
Inst3Quest13_HORDE_Note = Inst3Quest13_Note
Inst3Quest13_HORDE_Prequest = Inst3Quest13_Prequest
Inst3Quest13_HORDE_Folgequest = Inst3Quest13_Folgequest
--
Inst3Quest13name1_HORDE = Inst3Quest13name1

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst3Quest14_HORDE = Inst3Quest14
Inst3Quest14_HORDE_Level = Inst3Quest14_Level
Inst3Quest14_HORDE_Attain = Inst3Quest14_Attain
Inst3Quest14_HORDE_Aim = Inst3Quest14_Aim
Inst3Quest14_HORDE_Location = Inst3Quest14_Location
Inst3Quest14_HORDE_Note = Inst3Quest14_Note
Inst3Quest14_HORDE_Prequest = Inst3Quest14_Prequest
Inst3Quest14_HORDE_Folgequest = Inst3Quest14_Folgequest
--
Inst3Quest14name1_HORDE = Inst3Quest14name1
Inst3Quest14name2_HORDE = Inst3Quest14name2



--------------- INST4 - Upper Blackrock Spire (UBRS) ---------------

Inst4Story = "黑石深淵深處的巨大堡壘是由矮人建築大師弗蘭克羅恩·鑄鐵所設計的。這個堡壘是矮人力量的象征並被邪惡的黑鐵矮人占據了數個世紀。然而，奈法利安——死亡之翼狡猾的兒子——對這個巨大的堡壘別有意圖。他和他的黑龍軍團占據了上層黑石塔並向占據著黑石深淵的黑鐵矮人宣戰。奈法利安知道矮人是由強大的火元素拉格納羅斯所領導的，所以他立志要摧毀他的敵人並將黑石深淵全都占為己有。"
Inst4Caption = "上層黑石塔（UBRS）"
Inst4QAA = "11 個任務"
Inst4QAH = "13 個任務"

--Quest 1 Alliance
Inst4Quest1 = "1. 監護者"
Inst4Quest1_Level = "60"
Inst4Quest1_Attain = "57"
Inst4Quest1_Aim = "到冬泉谷去找到哈爾琳，把奧比的鱗片交給她。"
Inst4Quest1_Location = "奧比（上層黑石塔; "..YELLOW.."[7]"..WHITE.."）"
Inst4Quest1_Note = "你可以在競技場邊上的房間找到奧比 "..YELLOW.."[7]"..WHITE.."。它呆在一個突出物上面。\n哈爾琳在冬泉谷（"..YELLOW.."54,51"..WHITE.."）。在冬泉谷的洞裏的最裏面通過站在傳送符文上從而到她身邊。"
Inst4Quest1_Prequest = "無"
Inst4Quest1_Folgequest = "藍龍之怒"
-- No Rewards for this quest

--Quest 2 Alliance
Inst4Quest2 = "2. 芬克·恩霍爾，為您效勞！"
Inst4Quest2_Level = "60"
Inst4Quest2_Attain = "57"
Inst4Quest2_Aim = "與永望鎮的瑪雷弗斯·暗錘談一談。"
Inst4Quest2_Location = "芬克·恩霍爾（上層黑石塔; "..YELLOW.."[8]"..WHITE.."）"
Inst4Quest2_Note = "芬克·恩霍爾會在撥完比斯巨獸的皮後出現。瑪雷弗斯·暗錘（冬泉谷 - 永望鎮; "..YELLOW.."61,38"..WHITE.."）。"
Inst4Quest2_Prequest = "無"
Inst4Quest2_Folgequest = "阿卡納護腿，血色學者之帽，嗜血胸甲"
-- No Rewards for this quest

--Quest 3 Alliance
Inst4Quest3 = "3. 冷凍龍蛋"
Inst4Quest3_Level = "60"
Inst4Quest3_Attain = "57"
Inst4Quest3_Aim = "在孵化間對著某顆龍蛋使用龍蛋冷凍器初號機。"
Inst4Quest3_Location = "丁奇·斯迪波爾（燃燒平原 - 烈焰峰; "..YELLOW.."65,24"..WHITE.."）"
Inst4Quest3_Note = "你可以在烈焰之父的房間找到龍蛋 "..YELLOW.."[2]"..WHITE.."。"
Inst4Quest3_Prequest = "雛龍精華 -> 丁奇·斯迪波爾"
Inst4Quest3_Folgequest = "收集龍蛋"
Inst4Quest3PreQuest = "true"
--
Inst4Quest3name1 = "龍蛋冷凍器"

--Quest 4 Alliance
Inst4Quest4 = "4. 艾博希爾之眼"
Inst4Quest4_Level = "60"
Inst4Quest4_Attain = "55"
Inst4Quest4_Aim = "將艾博希爾之眼交給艾薩拉的海達克西斯公爵。"
Inst4Quest4_Location = "海達克西斯公爵（艾薩拉; "..YELLOW.."79,73"..WHITE.."）"
Inst4Quest4_Note = "你可以找到艾博希爾在 "..YELLOW.."[1]"..WHITE.."。\n\n補丁3.0.8之後，將不能開始這個任務線。如果你已經有了這個任務，依然可以完成。"
Inst4Quest4_Prequest = "被囚禁的水元素"
Inst4Quest4_Folgequest = "熔火之心"
Inst4Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst4Quest5 = "5. 達基薩斯將軍之死"
Inst4Quest5_Level = "60"
Inst4Quest5_Attain = "55"
Inst4Quest5_Aim = "到黑石塔去殺掉達基薩斯將軍，完成任務之後就回到麥克斯韋爾元帥那裏複命。"
Inst4Quest5_Location = "麥克斯韋爾元帥（燃燒平原 - 摩根的崗哨; "..YELLOW.."82,68"..WHITE.."）"
Inst4Quest5_Note = "達基薩斯將軍在 "..YELLOW.."[9]"..WHITE.."。"
Inst4Quest5_Prequest = "達基薩斯將軍的命令（"..YELLOW.."下層黑石塔"..WHITE.."）"
Inst4Quest5_Folgequest = "無"
Inst4Quest5PreQuest = "true"
--
Inst4Quest5name1 = "暴君印記"
Inst4Quest5name2 = "比斯巨獸之眼"
Inst4Quest5name3 = "黑手飾物"

--Quest 6 Alliance
Inst4Quest6 = "6. 末日扣環"
Inst4Quest6_Level = "60"
Inst4Quest6_Attain = "57"
Inst4Quest6_Aim = "將末日扣環交給燃燒平原的瑪亞拉·布萊特文。"
Inst4Quest6_Location = "瑪亞拉·布萊特文（燃燒平原 - 摩根的崗哨; "..YELLOW.."84,69"..WHITE.."）"
Inst4Quest6_Note = "你可以接到這個任務的前置任務，從雷明頓·瑞治維爾伯爵（暴風城 - 暴風要塞; "..YELLOW.."77,47"..WHITE.."）。末日扣環在烈焰之父的房間 "..YELLOW.."[3]"..WHITE.." 的一個箱子裏。"
Inst4Quest6_Prequest = "瑪亞拉·布萊特文"
Inst4Quest6_Folgequest = "瑞治維爾的箱子"
Inst4Quest6PreQuest = "true"
--
Inst4Quest6name1 = "迅捷皮靴"
Inst4Quest6name2 = "瞬擊護臂"

--Quest 7 Alliance
Inst4Quest7 = "7. 黑手的命令"
Inst4Quest7_Level = "60"
Inst4Quest7_Attain = "55"
Inst4Quest7_Aim = "真是個愚蠢的獸人。看來你需要找到那枚烙印並獲得達基薩斯徽記才可以使用命令寶珠。"
Inst4Quest7_Location = "黑手的命令掉落自（"..YELLOW.."副本入口地圖[7]"..WHITE.."）裂盾軍需官。"
Inst4Quest7_Note = "黑翼之巢的進門任務。你可以在黑石塔副本的門口右側附近找到裂盾軍需官，寶珠就在達基薩斯將軍 "..YELLOW.."[9]"..WHITE.." 身後。"
Inst4Quest7_Prequest = "無"
Inst4Quest7_Folgequest = "無"
-- No Rewards for this quest

--Quest 8 Alliance
Inst4Quest8 = "8. 最後的准備"
Inst4Quest8_Level = "60"
Inst4Quest8_Attain = "58"
Inst4Quest8_Aim = "從黑石塔的獸人那兒收集40副黑石護腕，把它們和一瓶超級能量合劑一起交給黑石山的伯德雷。"
Inst4Quest8_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖[D]"..WHITE.."）"
Inst4Quest8_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。黑石塔的獸人掉落黑石護腕。超級能量合劑是煉金制造。"
Inst4Quest8_Prequest = "瓦塔拉克護符的右瓣（"..YELLOW.."下層黑石塔"..WHITE.."）"
Inst4Quest8_Folgequest = "瓦塔拉克公爵"
Inst4Quest8PreQuest = "true"
-- No Rewards for this quest

--Quest 9 Alliance
Inst4Quest9 = "9. 瓦塔拉克公爵"
Inst4Quest9_Level = "60"
Inst4Quest9_Attain = "58"
Inst4Quest9_Aim = "在比斯巨獸的房間裏使用召喚火盆，召喚瓦塔拉克公爵。殺死他，對屍體使用瓦塔拉克的飾品。然後將瓦塔拉克的飾品還給瓦塔拉克公爵之魂。"
Inst4Quest9_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖[D]"..WHITE.."）"
Inst4Quest9_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。召喚瓦塔拉克公爵在 "..YELLOW.."[8]"..WHITE.."。向伯德雷回複領取獎勵。"
Inst4Quest9_Prequest = "最後的准備"
Inst4Quest9_Folgequest = "向伯德雷回複 "
Inst4Quest9FQuest = "true"
--
Inst4Quest9name1 = "符咒火盆"
Inst4Quest9name2 = "符咒火盆用戶手冊"

--Quest 10 Alliance
Inst4Quest10 = "10. 惡魔熔爐（煅造-鑄甲大師任務）"
Inst4Quest10_Level = "60"
Inst4Quest10_Attain = "55"
Inst4Quest10_Aim = "到黑石塔去找到古拉魯克。殺死他，然後用血汙長矛刺入他的屍體。當他的靈魂被吸幹後，這支矛就會成為穿魂長矛。你還必須找到未鑄造的符文覆飾胸甲。將穿魂長矛和未鑄造的符文覆飾胸甲都交給冬泉谷的羅拉克斯。"
Inst4Quest10_Location = "羅拉克斯（冬泉谷; "..YELLOW.."64,74"..WHITE.."）"
Inst4Quest10_Note = "煅造任務。古拉魯克在 "..YELLOW.."[5]"..WHITE.."。"
Inst4Quest10_Prequest = "無"
Inst4Quest10_Folgequest = "無"
--
Inst4Quest10name1 = "設計圖-魔鑄胸甲"
Inst4Quest10name2 = "屠魔藥劑"
Inst4Quest10name3 = "魔吻背包"

--Quest 11 Alliance
Inst4Quest11 = "11. 收集龍蛋"
Inst4Quest11_Level = "60"
Inst4Quest11_Attain = "57"
Inst4Quest11_Aim = "將電動采集模塊和8顆收集到的龍蛋交給燃燒平原烈焰峰的丁奇·斯迪波爾。"
Inst4Quest11_Location = "丁奇·斯迪波爾（燃燒平原 - 烈焰峰; "..YELLOW.."65,24"..WHITE.."）"
Inst4Quest11_Note = "這些龍蛋就在烈焰之父"..YELLOW.."[2]"..WHITE.."的房間裏。"
Inst4Quest11_Prequest = "冷凍龍蛋"
Inst4Quest11_Folgequest = "萊尼德·巴薩羅梅 -> 黎明先鋒（"..YELLOW.."通靈學院"..WHITE.."）"
Inst4Quest11PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst4Quest1_HORDE = Inst4Quest1
Inst4Quest1_HORDE_Level = Inst4Quest1_Level
Inst4Quest1_HORDE_Attain = Inst4Quest1_Attain
Inst4Quest1_HORDE_Aim = Inst4Quest1_Aim
Inst4Quest1_HORDE_Location = Inst4Quest1_Location
Inst4Quest1_HORDE_Note = Inst4Quest1_Note
Inst4Quest1_HORDE_Prequest = Inst4Quest1_Prequest
Inst4Quest1_HORDE_Folgequest = Inst4Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst4Quest2_HORDE = Inst4Quest2
Inst4Quest2_HORDE_Level = Inst4Quest2_Level
Inst4Quest2_HORDE_Attain = Inst4Quest2_Attain
Inst4Quest2_HORDE_Aim = Inst4Quest2_Aim
Inst4Quest2_HORDE_Location = Inst4Quest2_Location
Inst4Quest2_HORDE_Note = Inst4Quest2_Note
Inst4Quest2_HORDE_Prequest = Inst4Quest2_Prequest
Inst4Quest2_HORDE_Folgequest = Inst4Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst4Quest3_HORDE = Inst4Quest3
Inst4Quest3_HORDE_Level = Inst4Quest3_Level
Inst4Quest3_HORDE_Attain = Inst4Quest3_Attain
Inst4Quest3_HORDE_Aim = Inst4Quest3_Aim
Inst4Quest3_HORDE_Location = Inst4Quest3_Location
Inst4Quest3_HORDE_Note = Inst4Quest3_Note
Inst4Quest3_HORDE_Prequest = Inst4Quest3_Prequest
Inst4Quest3_HORDE_Folgequest = Inst4Quest3_Folgequest
Inst4Quest3PreQuest_HORDE = Inst4Quest3PreQuest
--
Inst4Quest3name1_HORDE = Inst4Quest3name1

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst4Quest4_HORDE = Inst4Quest4
Inst4Quest4_HORDE_Level = Inst4Quest4_Level
Inst4Quest4_HORDE_Attain = Inst4Quest4_Attain
Inst4Quest4_HORDE_Aim = Inst4Quest4_Aim
Inst4Quest4_HORDE_Location = Inst4Quest4_Location
Inst4Quest4_HORDE_Note = Inst4Quest4_Note
Inst4Quest4_HORDE_Prequest = Inst4Quest4_Prequest
Inst4Quest4_HORDE_Folgequest = Inst4Quest4_Folgequest
Inst4Quest4PreQuest_HORDE = Inst4Quest4PreQuest
-- No Rewards for this quest

--Quest 5 Horde
Inst4Quest5_HORDE = "5. 黑暗石板"
Inst4Quest5_HORDE_Level = "60"
Inst4Quest5_HORDE_Attain = "57"
Inst4Quest5_HORDE_Aim = "將黑暗石板交給卡加斯的暗法師薇薇安·拉格雷。"
Inst4Quest5_HORDE_Location = "薇薇安·拉格雷（荒蕪之地 - 卡加斯; "..YELLOW.."2,47"..WHITE.."）"
Inst4Quest5_HORDE_Note = "你可以接到前置任務從藥劑師金格（幽暗城 - 煉金房; "..YELLOW.."50,68"..WHITE.."）。黑暗石板在烈焰之父的房間（"..YELLOW.."[3]"..WHITE.."）。"
Inst4Quest5_HORDE_Prequest = "薇薇安·拉格雷和黑暗石板"
Inst4Quest5_HORDE_Folgequest = "無"
Inst4Quest5PreQuest_HORDE = "true"
--
Inst4Quest5name1_HORDE = "迅捷皮靴"
Inst4Quest5name2_HORDE = "瞬擊護臂"

--Quest 6 Horde
Inst4Quest6_HORDE = "6. 為部落而戰！"
Inst4Quest6_HORDE_Level = "60"
Inst4Quest6_HORDE_Attain = "55"
Inst4Quest6_HORDE_Aim = "去黑石塔殺死大酋長雷德·黑手，帶著他的頭顱返回奧格瑞瑪。"
Inst4Quest6_HORDE_Location = "薩爾（奧格瑞瑪; "..YELLOW.."31,38"..WHITE.."）"
Inst4Quest6_HORDE_Note = "大酋長雷德·黑手在 "..YELLOW.."[6]"..WHITE.."。"
Inst4Quest6_HORDE_Prequest = "高圖斯的命令 -> 伊崔格的智慧"
Inst4Quest6_HORDE_Folgequest = "部落的勇士"
Inst4Quest6PreQuest_HORDE = "true"
--
Inst4Quest6name1_HORDE = "暴君印記"
Inst4Quest6name2_HORDE = "比斯巨獸之眼"
Inst4Quest6name3_HORDE = "黑手飾物"

--Quest 7 Horde
Inst4Quest7_HORDE = "7. 黑龍幻像"
Inst4Quest7_HORDE_Level = "60"
Inst4Quest7_HORDE_Attain = "55"
Inst4Quest7_HORDE_Aim = "到黑石塔去收集20顆黑色龍人的眼球，完成任務之後回到巫女麥蘭達那裏。"
Inst4Quest7_HORDE_Location = "巫女麥蘭達（西瘟疫之地; "..YELLOW.."50,77"..WHITE.."）"
Inst4Quest7_HORDE_Note = "黑色的龍會掉落眼球。"
Inst4Quest7_HORDE_Prequest = "風吹來的消息 -> 幻術的欺詐"
Inst4Quest7_HORDE_Folgequest = "埃博斯塔夫"
Inst4Quest7FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 8 Horde
Inst4Quest8_HORDE = "8. 黑龍勇士之血"
Inst4Quest8_HORDE_Level = "60"
Inst4Quest8_HORDE_Attain = "55"
Inst4Quest8_HORDE_Aim = "到黑石塔去殺掉達基薩斯將軍，把它的血交給羅卡魯。"
Inst4Quest8_HORDE_Location = "羅卡魯（淒涼之地 - 葬影村; "..YELLOW.."25,71"..WHITE.."）"
Inst4Quest8_HORDE_Note = "奧妮克西亞前置任務最後一步。達基薩斯將軍在 "..YELLOW.."[9]"..WHITE.."。"
Inst4Quest8_HORDE_Prequest = "埃博斯塔夫 -> 晉升……"
Inst4Quest8_HORDE_Folgequest = "無"
Inst4Quest8FQuest_HORDE = "true"
--
Inst4Quest8name1_HORDE = "龍火護符"

--Quest 9 Horde  (same as Quest 7 Alliance)
Inst4Quest9_HORDE = "9. 黑手的命令"
Inst4Quest9_HORDE_Level = Inst4Quest7_Level
Inst4Quest9_HORDE_Attain = Inst4Quest7_Attain
Inst4Quest9_HORDE_Aim = Inst4Quest7_Aim
Inst4Quest9_HORDE_Location = Inst4Quest7_Location
Inst4Quest9_HORDE_Note = Inst4Quest7_Note
Inst4Quest9_HORDE_Prequest = Inst4Quest7_Prequest
Inst4Quest9_HORDE_Folgequest = Inst4Quest7_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 8 Alliance)
Inst4Quest10_HORDE = "10. 最後的准備"
Inst4Quest10_HORDE_Level = Inst4Quest8_Level
Inst4Quest10_HORDE_Attain = Inst4Quest8_Attain
Inst4Quest10_HORDE_Aim = Inst4Quest8_Aim
Inst4Quest10_HORDE_Location = Inst4Quest8_Location
Inst4Quest10_HORDE_Note = Inst4Quest8_Note
Inst4Quest10_HORDE_Prequest = Inst4Quest8_Prequest
Inst4Quest10_HORDE_Folgequest = Inst4Quest8_Folgequest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 9 Alliance)
Inst4Quest11_HORDE = "11. 瓦塔拉克公爵"
Inst4Quest11_HORDE_Level = Inst4Quest9_Level
Inst4Quest11_HORDE_Attain = Inst4Quest9_Attain
Inst4Quest11_HORDE_Aim = Inst4Quest9_Aim
Inst4Quest11_HORDE_Location = Inst4Quest9_Location
Inst4Quest11_HORDE_Note = Inst4Quest9_Note
Inst4Quest11_HORDE_Prequest = Inst4Quest9_Prequest
Inst4Quest11_HORDE_Folgequest = Inst4Quest9_Folgequest
--
Inst4Quest11name1_HORDE = Inst4Quest9name1
Inst4Quest11name2_HORDE = Inst4Quest9name2

--Quest 12 Horde  (same as Quest 10 Alliance)
Inst4Quest12_HORDE = "12. 惡魔熔爐"
Inst4Quest12_HORDE_Level = Inst4Quest10_Level
Inst4Quest12_HORDE_Attain = Inst4Quest10_Attain
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
Inst4Quest13_HORDE = "13. 收集龍蛋"
Inst4Quest13_HORDE_Level = Inst4Quest11_Level
Inst4Quest13_HORDE_Attain = Inst4Quest11_Attain
Inst4Quest13_HORDE_Aim = Inst4Quest11_Aim
Inst4Quest13_HORDE_Location = Inst4Quest11_Location
Inst4Quest13_HORDE_Note = Inst4Quest11_Note
Inst4Quest13_HORDE_Prequest = Inst4Quest11_Prequest
Inst4Quest13_HORDE_Folgequest = Inst4Quest11_Folgequest
Inst4Quest13PreQuest_HORDE = Inst4Quest11PreQuest
-- No Rewards for this quest


--------------- INST5 - Deadmines (VC) ---------------

Inst5Story = "這裏曾經是人類最主要的産金地，希望礦井在部落第一次大戰期間席卷暴風城的時候被廢棄。現在迪菲亞兄弟會的人占據了那裏並將這個黑暗的通道轉變成他們的避難所。據說那些盜賊已經勸說了聰明的地精幫助他們在礦井的深處建造一些可怕的東西——但是沒有人知道這是真的還是假的。有傳言說，死亡礦井的入口在安甯的月溪鎮中。"
Inst5Caption = "死亡礦井（VC）"
Inst5QAA = "7 個任務" -- how many quests for alliance
Inst5QAH = "無任務" -- for horde

--Quest 1 Alliance
Inst5Quest1 = "1. 紅色絲質面罩"
Inst5Quest1_Level = "17"
Inst5Quest1_Attain = "14"
Inst5Quest1_Aim = "給哨兵嶺哨塔的哨兵瑞爾帶回10條紅色絲質面罩。"
Inst5Quest1_Location = "哨兵瑞爾（西部荒野 - 哨兵嶺; "..YELLOW.."56, 47"..WHITE.."）"
Inst5Quest1_Note = "你可以在副本內外的礦工身上找到紅色絲質面罩。當你完成護送迪菲亞叛徒任務後才能接到這個任務。"
Inst5Quest1_Prequest = "有（請見注釋）"
Inst5Quest1_Folgequest = "無"
Inst5Quest1PreQuest = "true"
--
Inst5Quest1name1 = "結實的短劍"
Inst5Quest1name2 = "貝雕匕首"
Inst5Quest1name3 = "破甲之斧"

--Quest 2 Alliance
Inst5Quest2 = "2. 收集記憶"
Inst5Quest2_Level = "18"
Inst5Quest2_Attain = "14"
Inst5Quest2_Aim = "給暴風城的維爾德·薊草帶回4張礦業工會會員卡。"
Inst5Quest2_Location = "維爾德·薊草（暴風城 - 矮人區; "..YELLOW.."70,41"..WHITE.."）"
Inst5Quest2_Note = "就在你剛要進入副本之前的亡靈 "..YELLOW.."副本入口地圖[3]"..WHITE.." 掉落礦工工會會員卡。"
Inst5Quest2_Prequest = "無"
Inst5Quest2_Folgequest = "無"
--
Inst5Quest2name1 = "掘地工之靴"
Inst5Quest2name2 = "陳舊的礦工手套"

--Quest 3 Alliance
Inst5Quest3 = "3. 我的兄弟……"
Inst5Quest3_Level = "20"
Inst5Quest3_Attain = "15"
Inst5Quest3_Aim = "將工頭希斯耐特的探險者協會徽章交給暴風城的維爾德·薊草。"
Inst5Quest3_Location = "維爾德·薊草（暴風城 - 矮人區; "..YELLOW.."70,41"..WHITE.."）"
Inst5Quest3_Note = "就在你剛要進入副本之前的工頭希斯奈特 "..YELLOW.."副本入口地圖[3]"..WHITE.." 掉落礦探險者協會徽章。"
Inst5Quest3_Prequest = "無"
Inst5Quest3_Folgequest = "無"
--
Inst5Quest3name1 = "礦工的報複"

--Quest 4 Alliance
Inst5Quest4 = "4. 地底突襲"
Inst5Quest4_Level = "20"
Inst5Quest4_Attain = "15"
Inst5Quest4_Aim = "從死亡礦井中帶回小型高能發動機，將其帶給暴風城矮人區中的沈默的舒尼。"
Inst5Quest4_Location = "沈默的舒尼（暴風城 - 矮人區; "..YELLOW.."62,34"..WHITE.."）"
Inst5Quest4_Note = "你可以直接接到這個任務，你也可以從諾恩那裏接到此任務的引導任務（鐵爐堡 - 侏儒區; "..YELLOW.."69,50"..WHITE.."）。\n斯尼德的伐木機掉落小型高能發動機，位置在 "..YELLOW.."[3]"..WHITE.."。"
Inst5Quest4_Prequest = "沈默的舒尼"
Inst5Quest4_Folgequest = "無"
Inst5Quest4PreQuest = "true"
--
Inst5Quest4name1 = "極地護手"
Inst5Quest4name2 = "紫貂魔杖"

--Quest 5 Alliance
Inst5Quest5 = "5. 迪菲亞兄弟會"
Inst5Quest5_Level = "22"
Inst5Quest5_Attain = "14"
Inst5Quest5_Aim = "殺死艾德溫·範克裏夫，把他的頭交給格裏安·斯托曼。"
Inst5Quest5_Location = "格裏安·斯托曼（西部荒野 - 哨兵嶺 "..YELLOW.."56,47 "..WHITE.."）"
Inst5Quest5_Note = "此系列任務開始于格裏安·斯托曼（西部荒野 - 哨兵嶺; "..YELLOW.."56,47"..WHITE.."）。\n艾德溫·範克裏夫是死亡礦井的最後一個 Boss。你可以在他的船的最上層找到他，位置在 "..YELLOW.."[6]"..WHITE.."。"
Inst5Quest5_Prequest = "迪菲亞兄弟會"
Inst5Quest5_Folgequest = "無"
Inst5Quest5PreQuest = "true"
--
Inst5Quest5name1 = "西部荒野馬褲"
Inst5Quest5name2 = "西部荒野外套"
Inst5Quest5name3 = "西部荒野法杖"

--Quest 6 Alliance
Inst5Quest6 = "6. 正義試煉（聖騎士任務）"
Inst5Quest6_Level = "22"
Inst5Quest6_Attain = "20"
Inst5Quest6_Aim = "按照喬丹的武器材料單上的說明去尋找一些白石橡木、精煉礦石、喬丹的鐵錘和一塊科爾寶石，然後回到鐵爐堡去見喬丹·斯迪威爾。"
Inst5Quest6_Location = "喬丹·斯迪威爾（丹莫羅 - 鐵爐堡 "..YELLOW.."52,36 "..WHITE.."）"
Inst5Quest6_Note = "點擊 "..YELLOW.."[喬丹的武器材料單]"..WHITE.." 查看喬丹的武器材料單。"
Inst5Quest6_Page = {2, "只有聖騎士們才能接到這個任務！\n\n1. 你可以從 "..YELLOW.."[死亡礦井]"..WHITE.."地精木匠"..YELLOW.."[3]"..WHITE.." 那兒得到白石橡木。\n\n2. 要得到精煉礦石，你必須先與白洛爾·石手交談（洛克莫丹 - 塞爾薩瑪; "..YELLOW.."35,44"..WHITE.."）。他會給你《白洛爾的礦石》任務。你在一棵樹後面找到喬丹的礦石 "..YELLOW.."71,21"..WHITE.."。\n\n3. 你可以在 "..YELLOW.."[影牙城堡]"..WHITE.."緊靠"..YELLOW.."[5]"..WHITE.." 的地方找到喬丹的鐵錘（安全地點）。\n\n4. 要得到科爾寶石，你必須去找桑迪斯·織風（黑海岸 - 奧伯丁; "..YELLOW.."37,40"..WHITE.."）並且做完《尋找科爾寶石》任務。為了完成這個任務，你必須殺掉 "..YELLOW.."[黑暗深淵]"..WHITE.." 前的黑暗深淵智者或者黑暗深淵海潮祭司。他們會掉落被汙染的科爾寶石。桑迪斯·織風會為你清潔它的。", };
Inst5Quest6_Prequest = "勇氣之書 -> 正義試煉"
Inst5Quest6_Folgequest = "正義試煉"
Inst5Quest6PreQuest = "true"
--
Inst5Quest6name1 = "維裏甘之拳 "

--Quest 7 Alliance
Inst5Quest7 = "7. 未寄出的信"
Inst5Quest7_Level = "22"
Inst5Quest7_Attain = "16"
Inst5Quest7_Aim = "搜查艾德溫·範克裏夫的屍體時，你從一堆雜亂的物品中找到了一封還未來得及發出的信。地址一欄上寫著巴隆斯·阿曆克斯頓，暴風城石工協會，城市大廳，教堂廣場。"
Inst5Quest7_Location = "未寄出的信掉落自（艾德溫·範克裏夫; "..YELLOW.."[6]"..WHITE.."）"
Inst5Quest7_Note = "巴隆斯·阿曆克斯頓在暴風城光明大教堂旁邊 "..YELLOW.."58,49"..WHITE.."。"
Inst5Quest7_Prequest = "無"
Inst5Quest7_Folgequest = "巴基爾·斯瑞德"
-- No Rewards for this quest


--------------- INST6 - Gnomeregan (Gnomer) ---------------

Inst6Story = "位于丹莫洛的科技奇迹城市諾莫瑞根世代以來都是侏儒的主城。最近，一群邪惡的變異食鄂怪侵入了包括侏儒主城在內的多處丹莫洛地區。為了做出殊死一搏來幹掉入侵的食腭怪，大工匠梅卡托克命令打開城市中的緊急輻射水箱。侏儒在等待那些食腭怪死亡或者逃跑的同時也在尋找躲避輻射的方法。不幸的是，雖然食腭怪在經過輻射之後感染了毒性——但是它們的攻擊沒有停止，也沒有絲毫的減弱。那些沒有被輻射殺死的侏儒被迫逃離，他們在附近的矮人城市鐵爐堡找到了安身之處。大工匠梅卡托克組建了一個智囊團來商議重新奪回他們摯愛的城市的計劃。傳說大工匠梅卡托克曾經最信任的顧問，麥克尼爾·瑟瑪普拉格被判了他的人民並縱容了這次入侵的發生。現在，他的心智，麥克尼爾·瑟瑪普拉格還留在諾莫瑞根中——他在繼續籌劃著自己黑暗的計劃並成為這座城市新的科技領主。"
Inst6Caption = "諾莫瑞根"
Inst6QAA = "11 個任務"
Inst6QAH = "6 個任務"

--Quest 1 Alliance
Inst6Quest1 = "1. 拯救尖端機器人！"
Inst6Quest1_Level = "26"
Inst6Quest1_Attain = "20"
Inst6Quest1_Aim = "將尖端機器人的存儲器核心交給鐵爐堡的工匠大師歐沃斯巴克。"
Inst6Quest1_Location = "工匠大師歐沃斯巴克（鐵爐堡 - 侏儒區; "..YELLOW.."69,50 "..WHITE.."）"
Inst6Quest1_Note = "你可以在薩爾努修士（暴風城 - 教堂廣場; "..YELLOW.."51,48"..WHITE.."）那兒接到此任務的前置任務。\n在你進入副本之前，後門附近 "..YELLOW.."副本入口地圖[4]"..WHITE.."，可以找到尖端機器人。"
Inst6Quest1_Prequest = "工匠大師歐沃斯巴克"
Inst6Quest1_Folgequest = "無"
Inst6Quest1PreQuest = "true"
-- No Rewards for this quest

--Quest 2 Alliance
Inst6Quest2 = "2. 諾恩"
Inst6Quest2_Level = "27"
Inst6Quest2_Attain = "20"
Inst6Quest2_Aim = "用空鉛瓶對著輻射入侵者或者輻射搶劫者，從它們身上收集放射塵。瓶子裝滿之後，把它交給卡拉諾斯的奧齊·電環。"
Inst6Quest2_Location = "奧齊·電環（丹莫羅 - 卡拉諾斯; "..YELLOW.."45,49 "..WHITE.."）"
Inst6Quest2_Note = "你可以在諾恩（鐵爐堡 - 侏儒區; "..YELLOW.."69,50"..WHITE.."）那兒得到此任務的前置任務。\n要得到輻射塵，你必須對 "..RED.."活的"..WHITE.." 輻射入侵者或者輻射搶劫者使用空鉛瓶。"
Inst6Quest2_Prequest = "災難之後"
Inst6Quest2_Folgequest = "更多的輻射塵"
Inst6Quest2PreQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst6Quest3 = "3. 更多的輻射塵！"
Inst6Quest3_Level = "30"
Inst6Quest3_Attain = "20"
Inst6Quest3_Aim = "到諾莫瑞根去收集高強度輻射塵。要多加小心，這種輻射塵非常不穩定，很快就會分解。奧齊要求你把沈重的鉛瓶也交給他。"
Inst6Quest3_Location = "奧齊·電環（丹莫羅 - 卡拉諾斯; "..YELLOW.."45,49 "..WHITE.."）"
Inst6Quest3_Note = "要得到輻射塵，你必須對 "..RED.."活的"..WHITE.." 輻射泥漿怪，輻射潛伏者，輻射水元素使用沈重的鉛瓶。"
Inst6Quest3_Prequest = "諾恩"
Inst6Quest3_Folgequest = "無"
Inst6Quest3FQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst6Quest4 = "4. 陀螺式挖掘機"
Inst6Quest4_Level = "30"
Inst6Quest4_Attain = "20"
Inst6Quest4_Aim = "收集24副機械內膽，把它們交給暴風城的舒尼。"
Inst6Quest4_Location = "沈默的舒尼（暴風城 - 矮人區; "..YELLOW.."63,34"..WHITE.."）"
Inst6Quest4_Note = "每個機器人都掉落內膽。"
Inst6Quest4_Prequest = "無"
Inst6Quest4_Folgequest = "無"
--
Inst6Quest4name1 = "舒尼的扳手"
Inst6Quest4name2 = "欺詐手套"

--Quest 5 Alliance
Inst6Quest5 = "5. 基礎模組"
Inst6Quest5_Level = "30"
Inst6Quest5_Attain = "24"
Inst6Quest5_Aim = "收集12個基礎模組，把它們交給鐵爐堡的科勞莫特·鋼尺。"
Inst6Quest5_Location = "科勞莫特·鋼尺（鐵爐堡 - 侏儒區; "..YELLOW.."68,46 "..WHITE.."）"
Inst6Quest5_Note = "你可以在瑪希爾（達納蘇斯 - 戰士區; "..YELLOW.."59,45"..WHITE.."）那兒得到此任務的前置任務。\n每個諾莫瑞根的敵人都可能掉落基礎模組。"
Inst6Quest5_Prequest = "幫助科勞莫特"
Inst6Quest5_Folgequest = "無"
Inst6Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst6Quest6 = "6. 搶救數據"
Inst6Quest6_Level = "30"
Inst6Quest6_Attain = "25"
Inst6Quest6_Aim = "將彩色穿孔卡片交給鐵爐堡的大機械師卡斯派普。"
Inst6Quest6_Location = "大機械師卡斯派普（鐵爐堡 - 侏儒區; "..YELLOW.."69,48 "..WHITE.."）"
Inst6Quest6_Note = "你可以在加克希姆·塵鏈（石爪山脈; "..YELLOW.."59,67"..WHITE.."）那兒得到此任務的前置任務。但這不是一個必要的任務。\n白色卡片隨機掉落。你可以在進入副本之前緊靠後門入口處 "..YELLOW.."副本入口地圖[3]"..WHITE.." 找到第一終端。第二個在 "..YELLOW.."[3]"..WHITE.."，第三個在 "..YELLOW.."[5]"..WHITE.."，而第四個在 "..YELLOW.."[6]"..WHITE.."。"
Inst6Quest6_Prequest = "卡斯派普的任務"
Inst6Quest6_Folgequest = "無"
Inst6Quest6PreQuest = "true"
--
Inst6Quest6name1 = "修理工的鬥篷"
Inst6Quest6name2 = "蒸汽錘"

--Quest 7 Alliance
Inst6Quest7 = "7. 一團混亂"
Inst6Quest7_Level = "30"
Inst6Quest7_Attain = "20"
Inst6Quest7_Aim = "將克努比護送到出口，然後向藏寶海灣的斯庫提彙報。"
Inst6Quest7_Location = "克努比（諾莫瑞根 "..YELLOW.."[3]"..WHITE.."）"
Inst6Quest7_Note = "護送任務！你可以在（荊棘谷 - 藏寶海灣; "..YELLOW.."27,77"..WHITE.."）找到斯庫提。"
Inst6Quest7_Prequest = "無"
Inst6Quest7_Folgequest = "無"
--
Inst6Quest7name1 = "焊接護腕"
Inst6Quest7name2 = "精靈之翼"

--Quest 8 Alliance
Inst6Quest8 = "8. 大叛徒"
Inst6Quest8_Level = "35"
Inst6Quest8_Attain = "25"
Inst6Quest8_Aim = "到諾莫瑞根去殺掉麥克尼爾·瑟瑪普拉格。完成任務之後向大工匠梅卡托克報告。"
Inst6Quest8_Location = "大工匠梅卡托克（鐵爐堡 - 侏儒區; "..YELLOW.."68,48"..WHITE.."）"
Inst6Quest8_Note = "你可以在 "..YELLOW.."[8]"..WHITE.." 找到麥克尼爾·瑟瑪普拉格。他是諾莫瑞根最後一個 Boss。\n在戰鬥中你必須按下它旁邊的按鈕阻止他放炸彈。"
Inst6Quest8_Prequest = "無"
Inst6Quest8_Folgequest = "無"
--
Inst6Quest8name1 = "公民長袍"
Inst6Quest8name2 = "旅行皮褲"
Inst6Quest8name3 = "雙鏈護腿 "

--Quest 9 Alliance
Inst6Quest9 = "9. 髒兮兮的戒指"
Inst6Quest9_Level = "34"
Inst6Quest9_Attain = "28"
Inst6Quest9_Aim = "想方法把髒兮兮的戒指弄幹淨。"
Inst6Quest9_Location = "髒兮兮的戒指（諾莫瑞根隨機掉落）"
Inst6Quest9_Note = "這個戒指可以在清潔器5200型中清潔，位置在 "..YELLOW.."[2]"..WHITE.."。"
Inst6Quest9_Prequest = "無"
Inst6Quest9_Folgequest = "戒指歸來"
-- No Rewards for this quest

--Quest 10 Alliance
Inst6Quest10 = "10. 戒指歸來"
Inst6Quest10_Level = "34"
Inst6Quest10_Attain = "28"
Inst6Quest10_Aim = "你要麽自己留著這枚戒指，要麽就按照戒指內側刻著的名字找到它的主人。"
Inst6Quest10_Location = "閃亮的金戒指（從髒兮兮的戒指清潔後獲得）"
Inst6Quest10_Note = "把它交給塔瓦斯德·基瑟爾（鐵爐堡 - 秘法區; "..YELLOW.."36,3"..WHITE.."）。獎勵的戒指為隨機屬性。"
Inst6Quest10_Prequest = "髒兮兮的戒指"
Inst6Quest10_Folgequest = "侏儒的手藝"
Inst6Quest10FQuest = "true"
--
Inst6Quest10name1 = "閃亮的金戒指"

--Quest 11 Alliance
Inst6Quest11 = "11. 超級清潔器5200型！"
Inst6Quest11_Level = "30"
Inst6Quest11_Attain = "25"
Inst6Quest11_Aim = "將髒兮兮的東西放入超級清潔器5200型，記得要用三枚銀幣來啓動機器。"
Inst6Quest11_Location = "超級清潔器5200型 （諾莫瑞根 - 清潔區; "..YELLOW.."[2]"..WHITE.."）"
Inst6Quest11_Note = "所有髒兮兮的東西可以重複此任務。"
Inst6Quest11_Prequest = "無"
Inst6Quest11_Folgequest = "無"
--
Inst6Quest11name1 = "被清潔器包裝過的盒子"


--Quest 1 Horde
Inst6Quest1_HORDE = "1. 出發！諾莫瑞根！"
Inst6Quest1_HORDE_Level = "35"
Inst6Quest1_HORDE_Attain = "20"
Inst6Quest1_HORDE_Aim = "等斯庫提調整好地精傳送器。"
Inst6Quest1_HORDE_Location = "斯庫提（荊棘谷 - 藏寶海灣; "..YELLOW.."27,77 "..WHITE.."）"
Inst6Quest1_HORDE_Note = "你可以在索維克（奧格瑞瑪 - 榮譽谷; "..YELLOW.."75,25"..WHITE.."）那兒得到此任務的前置任務。\n當你完成這個任務，你可以使用藏寶海灣的傳送器。"
Inst6Quest1_HORDE_Prequest = "主工程師斯庫提"
Inst6Quest1_HORDE_Folgequest = "無"
Inst6Quest1PreQuest_HORDE = "true"
--
Inst6Quest1name1_HORDE = "地精傳送器"

--Quest 2 Horde  (same as Quest 7 Alliance)
Inst6Quest2_HORDE = "2. 一團混亂"
Inst6Quest2_HORDE_Level = Inst6Quest7_Level
Inst6Quest2_HORDE_Attain = Inst6Quest7_Attain
Inst6Quest2_HORDE_Aim = Inst6Quest7_Aim
Inst6Quest2_HORDE_Location = Inst6Quest7_Location
Inst6Quest2_HORDE_Note = Inst6Quest7_Note
Inst6Quest2_HORDE_Prequest = Inst6Quest7_Prequest
Inst6Quest2_HORDE_Folgequest = Inst6Quest7_Folgequest
--
Inst6Quest2name1_HORDE = Inst6Quest7name1
Inst6Quest2name2_HORDE = Inst6Quest7name2

--Quest 3 Horde
Inst6Quest3_HORDE = "3. 設備之戰"
Inst6Quest3_HORDE_Level = "35"
Inst6Quest3_HORDE_Attain = "25"
Inst6Quest3_HORDE_Aim = "從諾莫瑞根拿到鑽探設備藍圖和麥克尼爾的保險箱密碼，把它們交給奧格瑞瑪的諾格。"
Inst6Quest3_HORDE_Location = "諾格（奧格瑞瑪 - 榮譽谷; "..YELLOW.."75,25 "..WHITE.."）"
Inst6Quest3_HORDE_Note = "你可以在 "..YELLOW.."[8]"..WHITE.." 發現麥克尼爾·瑟瑪普拉格。他是諾莫瑞根最後一個 Boss。\n在戰鬥中你必須按下它旁邊的按鈕阻止他放炸彈。"
Inst6Quest3_HORDE_Prequest = "無"
Inst6Quest3_HORDE_Folgequest = "無"
--
Inst6Quest3name1_HORDE = "公民長袍"
Inst6Quest3name2_HORDE = "旅行皮褲"
Inst6Quest3name3_HORDE = "雙鏈護腿"

--Quest 4 Horde  (same as Quest 9 Alliance)
Inst6Quest4_HORDE = "4. 髒兮兮的戒指"
Inst6Quest4_HORDE_Level = Inst6Quest9_Level
Inst6Quest4_HORDE_Attain = Inst6Quest9_Attain
Inst6Quest4_HORDE_Aim = Inst6Quest9_Aim
Inst6Quest4_HORDE_Location = Inst6Quest9_Location
Inst6Quest4_HORDE_Note = Inst6Quest9_Note
Inst6Quest4_HORDE_Prequest = Inst6Quest9_Prequest
Inst6Quest4_HORDE_Folgequest = Inst6Quest9_Folgequest
-- No Rewards for this quest

--Quest 5 Horde
Inst6Quest5_HORDE = "5. 戒指歸來"
Inst6Quest5_HORDE_Level = "34"
Inst6Quest5_HORDE_Attain = "28"
Inst6Quest5_HORDE_Aim = "你要麽自己留著這枚戒指，要麽就按照戒指內側刻著的名字找到它的主人。"
Inst6Quest5_HORDE_Location = "閃亮的金戒指（從髒兮兮的戒指清潔後獲得）"
Inst6Quest5_HORDE_Note = "把戒指交給諾格（奧格瑞瑪 - 榮譽谷; "..YELLOW.."75,25"..WHITE.."）。獎勵的戒指為隨機屬性。"
Inst6Quest5_HORDE_Prequest = "髒兮兮的戒指"
Inst6Quest5_HORDE_Folgequest = "無"
Inst6Quest5FQuest = "true"
--
Inst6Quest5name1_HORDE = "閃亮的金戒指"

--Quest 6 Horde
Inst6Quest6_HORDE = "6. 超級清潔器5200型！"
Inst6Quest6_HORDE_Level = "30"
Inst6Quest6_HORDE_Attain = "25"
Inst6Quest6_HORDE_Aim = "將髒兮兮的東西放入超級清潔器5200型，記得要用三枚銀幣來啓動機器。"
Inst6Quest6_HORDE_Location = "超級清潔器5200型 （諾莫瑞根 - 清潔區; "..YELLOW.."[2]"..WHITE.."）"
Inst6Quest6_HORDE_Note = "所有髒兮兮的東西可以重複此任務。"
Inst6Quest6_HORDE_Prequest = "無"
Inst6Quest6_HORDE_Folgequest = "無"
--
Inst6Quest6name1_HORDE = "被清潔器包裝過的盒子"



--------------- INST7 - Scarlet Monastery: Library (SM Lib) ---------------

Inst7Story = "血色修道院曾經是洛丹倫王國牧師的榮耀之地——那裏是學習聖光只是和膜拜的中心。隨著在第三次大戰中亡靈天災的崛起，甯靜的修道院成為了瘋狂的血色十字軍的要塞。十字軍對于所有非人類都有著偏激的態度，無論他們是自己的盟友還是對手。他們相信所有任何外來者都帶著亡靈的瘟疫——他們必須被摧毀。有報告說所有進入修道院的冒險者都要面對血色十字軍指揮官莫格萊尼——他控制了一群狂熱的十字軍戰士。然而，修道院的真正主人是大檢察官懷特邁恩——一個瘋狂的牧師，她具有複活死去的戰士來為其效勞的能力。"
Inst7Caption = "血色修道院（圖書館）（Lib）"
Inst7QAA = "3 個任務"
Inst7QAH = "5 個任務"

--Quest 1 Alliance
Inst7Quest1 = "1. 泰坦神話"
Inst7Quest1_Level = "38"
Inst7Quest1_Attain = "28"
Inst7Quest1_Aim = "從修道院拿回《泰坦神話》，把它交給鐵爐堡的圖書館員麥伊·蒼塵。"
Inst7Quest1_Location = "圖書館員麥伊·蒼塵（鐵爐堡 - 探險者大廳; "..YELLOW.."74,12 "..WHITE.."）"
Inst7Quest1_Note = "你可以在血色修道院的圖書館奧法師杜安之前左側一個走廊的地板上（"..YELLOW.."[2]"..WHITE.."）找到這本書。"
Inst7Quest1_Prequest = "無"
Inst7Quest1_Folgequest = "無"
--
Inst7Quest1name1 = "探險者協會的獎狀"

--Quest 2 Alliance
Inst7Quest2 = "2. 能量儀祭（法師任務）"
Inst7Quest2_Level = "40"
Inst7Quest2_Attain = "30"
Inst7Quest2_Aim = "將《能量儀祭》交給塵泥沼澤的塔貝薩。"
Inst7Quest2_Location = "塔貝薩（塵泥沼澤; "..YELLOW.."43,57"..WHITE.."）"
Inst7Quest2_Note = "法師職業任務，你可以在血色修道院的圖書館奧法師杜安之前左側一個走廊的地板上（"..YELLOW.."[2]"..WHITE.."）找到這本書。"
Inst7Quest2_Prequest = "解封咒語"
Inst7Quest2_Folgequest = "法師的魔杖"
Inst7Quest2PreQuest = "true"
--
Inst7Quest2name1 = "冰怒魔杖"
Inst7Quest2name2 = "虛空靈力魔杖"
Inst7Quest2name3 = "怒火魔杖"

--Quest 3 Alliance
Inst7Quest3 = "3. 以聖光之名"
Inst7Quest3_Level = "40"
Inst7Quest3_Attain = "34"
Inst7Quest3_Aim = "殺死大檢察官懷特邁恩，血色十字軍指揮官莫格萊尼，十字軍的勇士赫洛德和馴犬者洛克希並向南海鎮的萊雷恩複命。"
Inst7Quest3_Location =  "虔誠的萊雷恩（希爾斯布萊德丘陵 - 南海鎮; "..YELLOW.."51,58 "..WHITE.."）"
Inst7Quest3_Note ="此系列任務始于克羅雷修士（暴風城 - 光明大教堂; "..YELLOW.."52,43"..WHITE.."）。當然，你也可以直接從淒涼之地尼耶爾前哨站的血色十字軍使者直接獲得任務。\n大檢察官懷特邁恩和血色十字軍指揮官莫格萊尼在血色修道院 "..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院 "..YELLOW.."軍械庫[1]"..WHITE.."，馴犬者洛克希在血色修道院 "..YELLOW.."圖書館[1]"..WHITE.."。"
Inst7Quest3_Prequest = "安東修士 -> 血色之路"
Inst7Quest3_Folgequest = "有"
Inst7Quest3PreQuest = "true"
--
Inst7Quest3name1 = "平靜之劍"
Inst7Quest3name2 = "咬骨之斧"
Inst7Quest3name3 = "黑暗威脅"
Inst7Quest3name4 = "洛瑞卡寶珠"


--Quest 1 Horde
Inst7Quest1_HORDE = "1. 狂熱之心"
Inst7Quest1_HORDE_Level = "33"
Inst7Quest1_HORDE_Attain = "30"
Inst7Quest1_HORDE_Aim = "幽暗城的大藥劑師法拉尼爾需要20顆狂熱之心。"
Inst7Quest1_HORDE_Location = "大藥劑師法拉尼爾（幽暗城 - 煉金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst7Quest1_HORDE_Note = "血色所有的怪物均會掉落。"
Inst7Quest1_HORDE_Prequest = "蝙蝠的糞便（"..YELLOW.."[剃刀沼澤]"..WHITE.."）"
Inst7Quest1_HORDE_Folgequest = "無"
Inst7Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst7Quest2_HORDE = "2. 知識試煉"
Inst7Quest2_HORDE_Level = "36"
Inst7Quest2_HORDE_Attain = "25"
Inst7Quest2_HORDE_Aim = "找到《亡靈的起源》，把它交給幽暗城的帕科瓦·芬塔拉斯。"
Inst7Quest2_HORDE_Location = "帕科瓦·芬塔拉斯（幽暗城 - 煉金房; "..YELLOW.."57,65 "..WHITE.."）"
Inst7Quest2_HORDE_Note = "此系列任務始于多恩·平原行者（千針石林; "..YELLOW.."53,41"..WHITE.."）。\n書在血色修道院圖書館裏。"
Inst7Quest2_HORDE_Prequest = "信仰的試煉 -> 知識試煉"
Inst7Quest2_HORDE_Folgequest = "知識試煉"
Inst7Quest2PreQuest_HORDE = "true"
--
Inst7Quest2name1_HORDE = "風雷之錘"
Inst7Quest2name2_HORDE = "跳動之火"

--Quest 3 Horde
Inst7Quest3_HORDE = "3. 墮落者綱要"
Inst7Quest3_HORDE_Level = "38"
Inst7Quest3_HORDE_Attain = "28"
Inst7Quest3_HORDE_Aim = "從提瑞斯法林地血色修道院裏找到《墮落者綱要》，把它交給雷霆崖的聖者圖希克。"
Inst7Quest3_HORDE_Location = "聖者圖希克（雷霆崖; "..YELLOW.."34,47"..WHITE.."）"
Inst7Quest3_HORDE_Note = "你可以在血色圖書館裏找到這這本書。被遺忘者因劇情不能接這個任務。"
Inst7Quest3_HORDE_Prequest = "無"
Inst7Quest3_HORDE_Folgequest = "無"
--
Inst7Quest3name1_HORDE = "邪惡防護者"
Inst7Quest3name2_HORDE = "力石圓盾"
Inst7Quest3name3_HORDE = "終結寶珠"

--Quest 4 Horde  (same as Quest 2 Alliance)
Inst7Quest4_HORDE = "4. 能量儀祭（法師任務）"
Inst7Quest4_HORDE_Level = Inst7Quest2_Level
Inst7Quest4_HORDE_Attain = Inst7Quest2_Attain
Inst7Quest4_HORDE_Aim = Inst7Quest2_Aim
Inst7Quest4_HORDE_Location = Inst7Quest2_Location
Inst7Quest4_HORDE_Note = Inst7Quest2_Note
Inst7Quest4_HORDE_Prequest = Inst7Quest2_Prequest
Inst7Quest4_HORDE_Folgequest = Inst7Quest2_Folgequest
Inst7Quest4PreQuest_HORDE = Inst7Quest2_PreQuest
--
Inst7Quest4name1_HORDE = Inst7Quest2name1
Inst7Quest4name2_HORDE = Inst7Quest2name2
Inst7Quest4name3_HORDE = Inst7Quest2name3

--Quest 5 Horde
Inst7Quest5_HORDE = "5. 深入血色修道院"
Inst7Quest5_HORDE_Level = "42"
Inst7Quest5_HORDE_Attain = "33"
Inst7Quest5_HORDE_Aim = "殺掉大檢察官懷特邁恩、血色十字軍指揮官莫格萊尼、血色十字軍勇士赫洛德和馴犬者洛克希，然後向幽暗城的瓦裏瑪薩斯回報。"
Inst7Quest5_HORDE_Location = "瓦裏瑪薩斯（幽暗城 - 皇家區; "..YELLOW.."56,92 "..WHITE.."）"
Inst7Quest5_HORDE_Note = "大檢察官懷特邁恩和血色十字軍指揮官莫格萊尼在血色修道院 "..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院 "..YELLOW.."軍械庫[1]"..WHITE.."，馴犬者洛克希在血色修道院 "..YELLOW.."圖書館[1]"..WHITE.."。"
Inst7Quest5_HORDE_Prequest = "無"
Inst7Quest5_HORDE_Folgequest = "無"
--
Inst7Quest5name1_HORDE = "預兆之劍"
Inst7Quest5name2_HORDE = "預言藤杖"
Inst7Quest5name3_HORDE = "龍血項鏈"


--------------- INST8 - Scarlet Monastery: Armory (SM Arm) ---------------

Inst8Story = "血色修道院曾經是洛丹倫王國牧師的榮耀之地——那裏是學習聖光只是和膜拜的中心。隨著在第三次大戰中亡靈天災的崛起，甯靜的修道院成為了瘋狂的血色十字軍的要塞。十字軍對于所有非人類都有著偏激的態度，無論他們是自己的盟友還是對手。他們相信所有任何外來者都帶著亡靈的瘟疫——他們必須被摧毀。有報告說所有進入修道院的冒險者都要面對血色十字軍指揮官莫格萊尼——他控制了一群狂熱的十字軍戰士。然而，修道院的真正主人是大檢察官懷特邁恩——一個瘋狂的牧師，她具有複活死去的戰士來為其效勞的能力。"
Inst8Caption = "血色修道院：軍械庫（Arm）"
Inst8QAA = "1 個任務"
Inst8QAH = "2 個任務"

--Quest 1 Alliance
Inst8Quest1 = "1. 以聖光之名"
Inst8Quest1_Level = "40"
Inst8Quest1_Attain = "34"
Inst8Quest1_Aim = "殺死大檢察官懷特邁恩，血色十字軍指揮官莫格萊尼，十字軍的勇士赫洛德和馴犬者洛克希並向南海鎮的萊雷恩複命。"
Inst8Quest1_Location = "虔誠的萊雷恩（希爾斯布萊德丘陵 - 南海鎮; "..YELLOW.."51,58 "..WHITE.."）"
Inst8Quest1_Note = "此系列任務始于克羅雷修士（暴風城 - 光明大教堂; "..YELLOW.."52,43"..WHITE.."），當然，你也可以直接從淒涼之地尼耶爾前哨站的血色十字軍使者直接獲得任務。\n大檢察官懷特邁恩和血色十字軍指揮官莫格萊尼在血色修道院 "..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院 "..YELLOW.."軍械庫[1]"..WHITE.."，馴犬者洛克希在血色修道院 "..YELLOW.."圖書館[1]"..WHITE.."。"
Inst8Quest1_Prequest ="安東修士 -> 血色之路"
Inst8Quest1_Folgequest = "無"
Inst8Quest1PreQuest = "true"
--
Inst8Quest1name1 = "平靜之劍"
Inst8Quest1name2 = "咬骨之斧"
Inst8Quest1name3 = "黑暗威脅"
Inst8Quest1name4 = "洛瑞卡寶珠"


--Quest 1 Horde
Inst8Quest1_HORDE = "1. 狂熱之心"
Inst8Quest1_HORDE_Level = "33"
Inst8Quest1_HORDE_Attain = "30"
Inst8Quest1_HORDE_Aim = "幽暗城的大藥劑師法拉尼爾需要20顆狂熱之心。"
Inst8Quest1_HORDE_Location = "大藥劑師法拉尼爾（幽暗城 - 煉金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst8Quest1_HORDE_Note = "血色所有的怪均掉落。"
Inst8Quest1_HORDE_Prequest = "蝙蝠的糞便（"..YELLOW.."[剃刀沼澤]"..WHITE.."）"
Inst8Quest1_HORDE_Folgequest = "無"
Inst8Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst8Quest2_HORDE = "2. 深入血色修道院"
Inst8Quest2_HORDE_Level = "42"
Inst8Quest2_HORDE_Attain = "33"
Inst8Quest2_HORDE_Aim = "殺掉大檢察官懷特邁恩、血色十字軍指揮官莫格萊尼、血色十字軍勇士赫洛德和馴犬者洛克希，然後向幽暗城的瓦裏瑪薩斯回報。"
Inst8Quest2_HORDE_Location = "瓦裏瑪薩斯（幽暗城 - 皇家區; "..YELLOW.."56,92 "..WHITE.."）"
Inst8Quest2_HORDE_Note = "大檢察官懷特邁恩和血色十字軍指揮官莫格萊尼在血色修道院 "..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院 "..YELLOW.."軍械庫[1]"..WHITE.."，馴犬者洛克希在血色修道院 "..YELLOW.."圖書館[1]"..WHITE.."。"
Inst8Quest2_HORDE_Prequest = "無"
Inst8Quest2_HORDE_Folgequest = "無"
--
Inst8Quest2name1_HORDE = "預兆之劍"
Inst8Quest2name2_HORDE = "預言藤杖"
Inst8Quest2name3_HORDE = "龍血項鏈"


--------------- INST9 - Scarlet Monastery: Cathedral (SM Cath) ---------------

Inst9Story = "血色修道院曾經是洛丹倫王國牧師的榮耀之地——那裏是學習聖光只是和膜拜的中心。隨著在第三次大戰中亡靈天災的崛起，甯靜的修道院成為了瘋狂的血色十字軍的要塞。十字軍對于所有非人類都有著偏激的態度，無論他們是自己的盟友還是對手。他們相信所有任何外來者都帶著亡靈的瘟疫——他們必須被摧毀。有報告說所有進入修道院的冒險者都要面對血色十字軍指揮官莫格萊尼——他控制了一群狂熱的十字軍戰士。然而，修道院的真正主人是大檢察官懷特邁恩——一個瘋狂的牧師，她具有複活死去的戰士來為其效勞的能力。"
Inst9Caption = "血色修道院：教堂（Cath）"
Inst9QAA = "1 個任務"
Inst9QAH = "2 個任務"

--Quest 1 Alliance
Inst9Quest1 = "1. 以聖光之名"
Inst9Quest1_Level = "40"
Inst9Quest1_Attain = "34"
Inst9Quest1_Aim =  "殺死大檢察官懷特邁恩，血色十字軍指揮官莫格萊尼，十字軍的勇士赫洛德和馴犬者洛克希並向南海鎮的萊雷恩複命。"
Inst9Quest1_Location = "虔誠的萊雷恩（希爾斯布萊德丘陵 - 南海鎮; "..YELLOW.."51,58 "..WHITE.."）"
Inst9Quest1_Note = "此系列任務始于克羅雷修士（暴風城 - 光明大教堂; "..YELLOW.."52,43"..WHITE.."），當然，你也可以直接從淒涼之地尼耶爾前哨站的血色十字軍使者直接獲得任務。\n大檢察官懷特邁恩和血色十字軍指揮官莫格萊尼在血色修道院 "..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院 "..YELLOW.."軍械庫[1]"..WHITE.."，馴犬者洛克希在血色修道院 "..YELLOW.."圖書館[1]"..WHITE.."。"
Inst9Quest1_Prequest = "安東修士 -> 血色之路"
Inst9Quest1_Folgequest = "無"
Inst9Quest1PreQuest = "true"
--
Inst9Quest1name1 = "平靜之劍"
Inst9Quest1name2 = "咬骨手斧"
Inst9Quest1name3 = "黑暗威脅"
Inst9Quest1name4 = "洛瑞卡寶珠"


--Quest 1 Horde
Inst9Quest1_HORDE = "1. 狂熱之心"
Inst9Quest1_HORDE_Level = "33"
Inst9Quest1_HORDE_Attain = "30"
Inst9Quest1_HORDE_Aim = "幽暗城的大藥劑師法拉尼爾需要20顆狂熱之心。"
Inst9Quest1_HORDE_Location = "大藥劑師法拉尼爾（幽暗城 - 煉金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst9Quest1_HORDE_Note = "血色所有的怪均掉落。"
Inst9Quest1_HORDE_Prequest = "蝙蝠的糞便（"..YELLOW.."[剃刀沼澤]"..WHITE.."）"
Inst9Quest1_HORDE_Folgequest = "無"
Inst9Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst9Quest2_HORDE = "2. 深入血色修道院"
Inst9Quest2_HORDE_Level = "42"
Inst9Quest2_HORDE_Attain = "33"
Inst9Quest2_HORDE_Aim = "殺掉大檢察官懷特邁恩、血色十字軍指揮官莫格萊尼、血色十字軍勇士赫洛德和馴犬者洛克希，然後向幽暗城的瓦裏瑪薩斯回報。"
Inst9Quest2_HORDE_Location = "瓦裏瑪薩斯（幽暗城 - 皇家區; "..YELLOW.."56,92 "..WHITE.."）"
Inst9Quest2_HORDE_Note = "大檢察官懷特邁恩和血色十字軍指揮官莫格萊尼在血色修道院 "..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院 "..YELLOW.."軍械庫[1]"..WHITE.."，馴犬者洛克希在血色修道院 "..YELLOW.."圖書館[1]"..WHITE.."。"
Inst9Quest2_HORDE_Prequest = "無"
Inst9Quest2_HORDE_Folgequest = "無"
--
Inst9Quest2name1_HORDE = "預兆之劍"
Inst9Quest2name2_HORDE = "預言藤杖"
Inst9Quest2name3_HORDE = "龍血項鏈"



--------------- INST10 - Scarlet Monastery: Graveyard (SM GY) ---------------

Inst10Story = "血色修道院曾經是洛丹倫王國牧師的榮耀之地——那裏是學習聖光只是和膜拜的中心。隨著在第三次大戰中亡靈天災的崛起，甯靜的修道院成為了瘋狂的血色十字軍的要塞。十字軍對于所有非人類都有著偏激的態度，無論他們是自己的盟友還是對手。他們相信所有任何外來者都帶著亡靈的瘟疫——他們必須被摧毀。有報告說所有進入修道院的冒險者都要面對血色十字軍指揮官莫格萊尼——他控制了一群狂熱的十字軍戰士。然而，修道院的真正主人是大檢察官懷特邁恩——一個瘋狂的牧師，她具有複活死去的戰士來為其效勞的能力。"
Inst10Caption = "血色修道院：墓地（GY）"
Inst10QAA = "1 個任務"
Inst10QAH = "3 個任務"

--Quest 1 Alliance
Inst10Quest1 = "1. 召喚無頭騎士（日常 - 季節性）"
Inst10Quest1_Level = "70"
Inst10Quest1_Attain = "65"
Inst10Quest1_Aim = "將一根悲傷蠟燭插入翻過的泥土。"
Inst10Quest1_Location = "南瓜神龛（血色修道院 - 墓地; "..YELLOW.."[2]"..WHITE.."）"
Inst10Quest1_Note = "南瓜神龛旁邊就是翻過的泥土。這是一個只有在萬聖節期間的季節性日常任務。\n\n召喚出來的無頭騎士是70級別 Boss。"
Inst10Quest1_Prequest = "無"
Inst10Quest1_Folgequest = "無"
-- No Rewards for this quest


--Quest 1 Horde
Inst10Quest1_HORDE = "1. 沃瑞爾的複仇"
Inst10Quest1_HORDE_Level = "33"
Inst10Quest1_HORDE_Attain = "25"
Inst10Quest1_HORDE_Aim = "把沃瑞爾·森加斯的結婚戒指還給塔倫米爾的莫尼卡·森古特斯。"
Inst10Quest1_HORDE_Location =  "沃瑞爾·森加斯（血色修道院 - 墓地; "..YELLOW.."[1]"..WHITE.."）"
Inst10Quest1_HORDE_Note = "沃瑞爾·森加斯位于血色修道院墓地前部。南茜（奧特蘭克山脈; "..YELLOW.."31,32"..WHITE..")。她有任務需要的戒指。"
Inst10Quest1_HORDE_Prequest = "無"
Inst10Quest1_HORDE_Folgequest = "無"
--
Inst10Quest1name1_HORDE = "沃瑞爾的靴子"
Inst10Quest1name2_HORDE = "悲哀襯肩"
Inst10Quest1name3_HORDE = "十字軍鬥篷"

--Quest 2 Horde
Inst10Quest2_HORDE = "2. 狂熱之心"
Inst10Quest2_HORDE_Level = "33"
Inst10Quest2_HORDE_Attain = "30"
Inst10Quest2_HORDE_Aim = "幽暗城的大藥劑師法拉尼爾需要20顆狂熱之心。"
Inst10Quest2_HORDE_Location = "大藥劑師法拉尼爾（幽暗城 - 煉金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst10Quest2_HORDE_Note =  "血色所有的怪均掉落。"
Inst10Quest2_HORDE_Prequest = "蝙蝠的糞便（"..YELLOW.."[剃刀沼澤]"..WHITE.."）"
Inst10Quest2_HORDE_Folgequest = "無"
Inst10Quest2PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 1 Alliance)
Inst10Quest3_HORDE = "3. 召喚無頭騎士（日常 - 季節性）"
Inst10Quest3_HORDE_Level = Inst10Quest1_Level
Inst10Quest3_HORDE_Attain = Inst10Quest1_Attain
Inst10Quest3_HORDE_Aim = Inst10Quest1_Aim
Inst10Quest3_HORDE_Location = Inst10Quest1_Location
Inst10Quest3_HORDE_Note = Inst10Quest1_Note
Inst10Quest3_HORDE_Prequest = Inst10Quest1_Prequest
Inst10Quest3_HORDE_Folgequest = Inst10Quest1_Folgequest
-- No Rewards for this quest



--------------- INST11 - Scholomance (Scholo) ---------------

Inst11Story = "通靈學院位于凱爾達隆廢棄的城堡中的地下室中。那裏曾經是高貴的巴羅夫家族的，但是在第二次大戰中凱爾達隆變成了一塊廢墟。法師克爾蘇加德經常向他的詛咒神教信徒承諾可以用對于巫妖王的效忠來換取永恒的生命。巴羅克家族受到克爾蘇加德的魅惑而將城堡和其地下室獻給了亡靈天災。那些信徒然後將巴羅夫家族的人殺死並把地下室變成了通靈學院。雖然克爾蘇加德不再住在這個地下室中，但是狂熱的信徒和講師都還留在那裏。強大的巫妖，萊斯·霜語以亡靈天災的名義控制了這裏——而凡人亡靈巫師黑暗院長加丁則是這個學校邪惡的校長。"
Inst11Caption = "通靈學院（Scholo）"
Inst11QAA = "11 個任務"
Inst11QAH = "12 個任務"

--Quest 1 Alliance
Inst11Quest1 = "1. 瘟疫之龍"
Inst11Quest1_Level = "58"
Inst11Quest1_Attain = "55"
Inst11Quest1_Aim = "殺掉20只瘟疫龍崽，然後向聖光之願禮拜堂的貝蒂娜·比格辛克複命。"
Inst11Quest1_Location = "貝蒂娜·比格辛克（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."76,54"..WHITE.."）"
Inst11Quest1_Note = "瘟疫之龍在屍骨儲藏所，去往血骨傀儡的大房間。"
Inst11Quest1_Prequest = "無"
Inst11Quest1_Folgequest = "健康的龍鱗"
-- No Rewards for this quest

--Quest 2 Alliance
Inst11Quest2 = "2. 健康的龍鱗"
Inst11Quest2_Level = "58"
Inst11Quest2_Attain = "55"
Inst11Quest2_Aim = "把健康的龍鱗交給東瘟疫之地聖光之願禮拜堂中的貝蒂娜·比格辛克。"
Inst11Quest2_Location = "健康的龍鱗（通靈學院瘟疫龍崽隨機掉落）"
Inst11Quest2_Note = "瘟疫龍崽掉落健康的龍鱗（8%掉率）。貝蒂娜·比格辛克（東瘟疫之地 - 聖光之願禮拜堂;"..YELLOW.."76,54"..WHITE.."）。"
Inst11Quest2_Prequest = "瘟疫之龍"
Inst11Quest2_Folgequest = "無"
Inst11Quest2FQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst11Quest3 = "3. 瑟爾林·卡斯迪諾夫教授"
Inst11Quest3_Level = "60"
Inst11Quest3_Attain = "55"
Inst11Quest3_Aim = "在通靈學院中找到瑟爾林·卡斯迪諾夫教授。殺死他，並燒毀艾瓦·薩克霍夫和盧森·薩克霍夫的遺體。任務完成後就回到艾瓦·薩克霍夫那兒。"
Inst11Quest3_Location = "艾瓦·薩克霍夫（西瘟疫之地 - 凱爾達隆; "..YELLOW.."70,73"..WHITE.."）"
Inst11Quest3_Note = "你可以在 "..YELLOW.."[9]"..WHITE.." 找到瑟爾林·卡斯迪諾夫教授。"
Inst11Quest3_Prequest = "無"
Inst11Quest3_Folgequest = "卡斯迪諾夫的恐懼之袋"
-- No Rewards for this quest

--Quest 4 Alliance
Inst11Quest4 = "4. 卡斯迪諾夫的恐懼之袋"
Inst11Quest4_Level = "60"
Inst11Quest4_Attain = "55"
Inst11Quest4_Aim = "在通靈學院找到詹迪斯·巴羅夫並打敗她。從她的屍體上找到卡斯迪諾夫的恐懼之袋，然後將其交給艾瓦·薩克霍夫。"
Inst11Quest4_Location = "艾瓦·薩克霍夫（西瘟疫之地 - 凱爾達隆; "..YELLOW.."70,73"..WHITE.."）"
Inst11Quest4_Note = "你可以在 "..YELLOW.."[3]"..WHITE.." 詹迪斯·巴羅夫。"
Inst11Quest4_Prequest = "瑟爾林·卡斯迪諾夫教授"
Inst11Quest4_Folgequest = "傳令官基爾圖諾斯"
Inst11Quest4FQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst11Quest5 = "5. 傳令官基爾圖諾斯"
Inst11Quest5_Level = "60"
Inst11Quest5_Attain = "55"
Inst11Quest5_Aim = "帶著無辜者之血回到通靈學院，將它放在門廊的火盆下面，基爾圖諾斯會前來吞噬你的靈魂。勇敢地戰鬥吧，不要退縮！殺死基爾圖諾斯，然後回到艾瓦·薩克霍夫那兒。"
Inst11Quest5_Location = "艾瓦·薩克霍夫（西瘟疫之地 - 凱爾達隆; "..YELLOW.."70,73"..WHITE.."）"
Inst11Quest5_Note = "門廊就在 "..YELLOW.."[2]"..WHITE.."。"
Inst11Quest5_Prequest = "卡斯迪諾夫的恐懼之袋"
Inst11Quest5_Folgequest = "萊斯·霜語"
Inst11Quest5FQuest = "true"
--
Inst11Quest5name1 = "鬼靈精華"
Inst11Quest5name2 = "波尼的玫瑰"
Inst11Quest5name3 = "米拉之歌"

--Quest 6 Alliance
Inst11Quest6 = "6. 巫妖萊斯·霜語"
Inst11Quest6_Level = "60"
Inst11Quest6_Attain = "57"
Inst11Quest6_Aim = "在通靈學院裏找到萊斯·霜語。當你找到他之後，使用禁锢靈魂的遺物破除其亡靈的外殼。如果你成功地破除了他的不死之身，就殺掉他並拿到萊斯·霜語的頭顱。把那個頭顱交給馬杜克鎮長。"
Inst11Quest6_Location = "馬杜克鎮長（西瘟疫之地 - 凱爾達隆; "..YELLOW.."70,73"..WHITE.."）"
Inst11Quest6_Note = "你可以在 "..YELLOW.."[7]"..WHITE.." 找到萊斯·霜語。"
Inst11Quest6_Prequest = "萊斯·霜語 -> 禁锢靈魂的遺物"
Inst11Quest6_Folgequest = "無"
Inst11Quest6PreQuest = "true"
--
Inst11Quest6name1 = "達隆郡之盾"
Inst11Quest6name2 = "凱爾達隆戰劍"
Inst11Quest6name3 = "凱爾達隆之冠"
Inst11Quest6name4 = "達隆郡之刺"

--Quest 7 Alliance
Inst11Quest7 = "7. 巴羅夫家族的寶藏"
Inst11Quest7_Level = "60"
Inst11Quest7_Attain = "52"
Inst11Quest7_Aim = "到通靈學院中去取得巴羅夫家族的寶藏。這份寶藏包括四份地契：凱爾達隆地契、布瑞爾地契、塔倫米爾地契，還有南海鎮地契。完成任務之後就回到維爾頓·巴羅夫那兒去。"
Inst11Quest7_Location = "維爾頓·巴羅夫（西瘟疫之地 - 寒風營地; "..YELLOW.."43,83"..WHITE.."）"
Inst11Quest7_Note = "你可以在 "..YELLOW.."[12]"..WHITE.." 找到凱爾達隆地契，在 "..YELLOW.."[7]"..WHITE.." 找到布瑞爾地契，在 "..YELLOW.."[4]"..WHITE.." 找到塔倫米爾地契，在 "..YELLOW.."[1]"..WHITE.." 找到南海鎮地契。"
Inst11Quest7_Prequest = "無"
Inst11Quest7_Folgequest = "巴羅夫的繼承人"
--
Inst11Quest7name1 = "巴羅夫管家鈴"

--Quest 8 Alliance
Inst11Quest8 = "8. 黎明先鋒"
Inst11Quest8_Level = "60"
Inst11Quest8_Attain = "57"
Inst11Quest8_Aim = "將黎明先鋒放在通靈學院的觀察室裏。打敗維克圖斯,然後回到貝蒂娜·比格辛克那裏去。"
Inst11Quest8_Location = "貝蒂娜·比格辛克（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."77,54"..WHITE.."）"
Inst11Quest8_Note = "雛龍精華開始于丁奇·斯迪波爾（燃燒平原 - 烈焰峰; "..YELLOW.."65,23"..WHITE.."）。觀察室在 "..YELLOW.."[6]"..WHITE.."。"
Inst11Quest8_Prequest = "雛龍精華 -> 貝蒂娜·比格辛克"
Inst11Quest8_Folgequest = "無"
Inst11Quest8PreQuest = "true"
--
Inst11Quest8name1 = "斷風者"
Inst11Quest8name2 = "舞動之藤"

--Quest 9 Alliance
Inst11Quest9 = "9. 瓶中的小鬼（術士任務）"
Inst11Quest9_Level = "60"
Inst11Quest9_Attain = "60"
Inst11Quest9_Aim = "把瓶中的小鬼帶到通靈學院的煉金實驗室中。在小鬼制造出羊皮紙之後，把瓶子還給戈瑟奇·邪眼。"
Inst11Quest9_Location = "戈瑟奇·邪眼（燃燒平原; "..YELLOW.."12,31"..WHITE.."）"
Inst11Quest9_Note = "只有術士才能得到這個任務！你可以在 "..YELLOW.."[7]"..WHITE.." 找到煉金實驗室。"
Inst11Quest9_Prequest = "莫蘇爾·召血者 -> 克索諾斯星塵"
Inst11Quest9_Folgequest = "克索諾斯恐懼戰馬"
Inst11Quest9PreQuest = "true"
-- No Rewards for this quest

--Quest 10 Alliance
Inst11Quest10 = "10. 瓦塔拉克飾品的左瓣"
Inst11Quest10_Level = "60"
Inst11Quest10_Attain = "58"
Inst11Quest10_Aim = "使用召喚火盆召喚出庫爾莫克的靈魂，然後殺掉他。完成之後，將召喚火盆與瓦塔拉克飾品的左瓣還給黑石山的伯德雷。"
Inst11Quest10_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖[D] "..WHITE.."）"
Inst11Quest10_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。\n\n庫爾莫克在 "..YELLOW.."[7]"..WHITE.."。"
Inst11Quest10_Prequest = "重要的材料"
Inst11Quest10_Folgequest = "奧卡茲島在你前方……"
Inst11Quest10PreQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst11Quest11 = "11. 瓦塔拉克飾品的右瓣"
Inst11Quest11_Level = "60"
Inst11Quest11_Attain = "58"
Inst11Quest11_Aim = "使用召喚火盆召喚出庫爾莫克的靈魂，然後殺掉他。完成之後，將召喚火盆與瓦塔拉克公爵的飾品還給黑石山的伯德雷。"
Inst11Quest11_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖[D] "..WHITE.."）"
Inst11Quest11_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。\n\n庫爾莫克在 "..YELLOW.."[7]"..WHITE.."。"
Inst11Quest11_Prequest = "更多重要的材料"
Inst11Quest11_Folgequest = "最後的准備（"..YELLOW.."上層黑石塔"..WHITE.."）"
Inst11Quest11PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst11Quest1_HORDE = Inst11Quest1
Inst11Quest1_HORDE_Level = Inst11Quest1_Level
Inst11Quest1_HORDE_Attain = Inst11Quest1_Attain
Inst11Quest1_HORDE_Aim = Inst11Quest1_Aim
Inst11Quest1_HORDE_Location = Inst11Quest1_Location
Inst11Quest1_HORDE_Note = Inst11Quest1_Note
Inst11Quest1_HORDE_Prequest = Inst11Quest1_Prequest
Inst11Quest1_HORDE_Folgequest = Inst11Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst11Quest2_HORDE = Inst11Quest2
Inst11Quest2_HORDE_Level = Inst11Quest2_Level
Inst11Quest2_HORDE_Attain = Inst11Quest2_Attain
Inst11Quest2_HORDE_Aim = Inst11Quest2_Aim
Inst11Quest2_HORDE_Location = Inst11Quest2_Location
Inst11Quest2_HORDE_Note = Inst11Quest2_Note
Inst11Quest2_HORDE_Prequest = Inst11Quest2_Prequest
Inst11Quest2_HORDE_Folgequest = Inst11Quest2_Folgequest
Inst11Quest2FQuest_HORDE = Inst11Quest2FQuest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst11Quest3_HORDE = Inst11Quest3
Inst11Quest3_HORDE_Level = Inst11Quest3_Level
Inst11Quest3_HORDE_Attain = Inst11Quest3_Attain
Inst11Quest3_HORDE_Aim = Inst11Quest3_Aim
Inst11Quest3_HORDE_Location = Inst11Quest3_Location
Inst11Quest3_HORDE_Note = Inst11Quest3_Note
Inst11Quest3_HORDE_Prequest = Inst11Quest3_Prequest
Inst11Quest3_HORDE_Folgequest = Inst11Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst11Quest4_HORDE = Inst11Quest4
Inst11Quest4_HORDE_Level = Inst11Quest4_Level
Inst11Quest4_HORDE_Attain = Inst11Quest4_Attain
Inst11Quest4_HORDE_Aim = Inst11Quest4_Aim
Inst11Quest4_HORDE_Location = Inst11Quest4_Location
Inst11Quest4_HORDE_Note = Inst11Quest4_Note
Inst11Quest4_HORDE_Prequest = Inst11Quest4_Prequest
Inst11Quest4_HORDE_Folgequest = Inst11Quest4_Folgequest
Inst11Quest4FQuest_HORDE = Inst11Quest4FQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst11Quest5_HORDE = Inst11Quest5
Inst11Quest5_HORDE_Level = Inst11Quest5_Level
Inst11Quest5_HORDE_Attain = Inst11Quest5_Attain
Inst11Quest5_HORDE_Aim = Inst11Quest5_Aim
Inst11Quest5_HORDE_Location = Inst11Quest5_Location
Inst11Quest5_HORDE_Note = Inst11Quest5_Note
Inst11Quest5_HORDE_Prequest = Inst11Quest5_Prequest
Inst11Quest5_HORDE_Folgequest = Inst11Quest5_Folgequest
Inst11Quest5FQuest_HORDE = Inst11Quest5FQuest
--
Inst11Quest5name1_HORDE = Inst11Quest5name1
Inst11Quest5name2_HORDE = Inst11Quest5name2
Inst11Quest5name3_HORDE = Inst11Quest5name3

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst11Quest6_HORDE = Inst11Quest6
Inst11Quest6_HORDE_Level = Inst11Quest6_Level
Inst11Quest6_HORDE_Attain = Inst11Quest6_Attain
Inst11Quest6_HORDE_Aim = Inst11Quest6_Aim
Inst11Quest6_HORDE_Location = Inst11Quest6_Location
Inst11Quest6_HORDE_Note = Inst11Quest6_Note
Inst11Quest6_HORDE_Prequest = Inst11Quest6_Prequest
Inst11Quest6_HORDE_Folgequest = Inst11Quest6_Folgequest
Inst11Quest6PreQuest_HORDE = Inst11Quest6PreQuest
--
Inst11Quest6name1_HORDE = Inst11Quest6name1
Inst11Quest6name2_HORDE = Inst11Quest6name2
Inst11Quest6name3_HORDE = Inst11Quest6name3
Inst11Quest6name4_HORDE = Inst11Quest6name4

--Quest 7 Horde
Inst11Quest7_HORDE = "7. 巴羅夫家族的寶藏"
Inst11Quest7_HORDE_Level = "60"
Inst11Quest7_HORDE_Attain = "52"
Inst11Quest7_HORDE_Aim = "到通靈學院中去取得巴羅夫家族的寶藏。這份寶藏包括四份地契：凱爾達隆地契、布瑞爾地契、塔倫米爾地契，還有南海鎮地契。當你拿到這四份地契之後就回到阿萊克斯·巴羅夫那兒去。"
Inst11Quest7_HORDE_Location = "阿萊克斯·巴羅夫（提瑞斯法林地 - 亡靈壁壘; "..YELLOW.."80,73"..WHITE.."）"
Inst11Quest7_HORDE_Note = "你可以在 "..YELLOW.."[12]"..WHITE.." 找到凱爾達隆地契，在 "..YELLOW.."[7]"..WHITE.." 找到布瑞爾地契，在 "..YELLOW.."[4]"..WHITE.." 找到塔倫米爾地契，在 "..YELLOW.."[1]"..WHITE.." 找到南海鎮地契。"
Inst11Quest7_HORDE_Prequest = "無"
Inst11Quest7_HORDE_Folgequest = "巴羅夫的繼承人"
--
Inst11Quest7name1_HORDE = "巴羅夫管家鈴"

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst11Quest8_HORDE = Inst11Quest8
Inst11Quest8_HORDE_Level = Inst11Quest8_Level
Inst11Quest8_HORDE_Attain = Inst11Quest8_Attain
Inst11Quest8_HORDE_Aim = Inst11Quest8_Aim
Inst11Quest8_HORDE_Location = Inst11Quest8_Location
Inst11Quest8_HORDE_Note = Inst11Quest8_Note
Inst11Quest8_HORDE_Prequest = Inst11Quest8_Prequest
Inst11Quest8_HORDE_Folgequest = Inst11Quest8_Folgequest
Inst11Quest8PreQuest_HORDE = Inst11Quest8PreQuest
--
Inst11Quest8name1_HORDE = Inst11Quest8name1
Inst11Quest8name2_HORDE = Inst11Quest8name2

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst11Quest9_HORDE = Inst11Quest9
Inst11Quest9_HORDE_Level = Inst11Quest9_Level
Inst11Quest9_HORDE_Attain = Inst11Quest9_Attain
Inst11Quest9_HORDE_Aim = Inst11Quest9_Aim
Inst11Quest9_HORDE_Location = Inst11Quest9_Location
Inst11Quest9_HORDE_Note = Inst11Quest9_Note
Inst11Quest9_HORDE_Prequest = Inst11Quest9_Prequest
Inst11Quest9_HORDE_Folgequest = Inst11Quest9_Folgequest
Inst11Quest9PreQuest_HORDE = Inst11Quest9PreQuest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst11Quest10_HORDE = Inst11Quest10
Inst11Quest10_HORDE_Level = Inst11Quest10_Level
Inst11Quest10_HORDE_Attain = Inst11Quest10_Attain
Inst11Quest10_HORDE_Aim = Inst11Quest10_Aim
Inst11Quest10_HORDE_Location = Inst11Quest10_Location
Inst11Quest10_HORDE_Note = Inst11Quest10_Note
Inst11Quest10_HORDE_Prequest = Inst11Quest10_Prequest
Inst11Quest10_HORDE_Folgequest = Inst11Quest10_Folgequest
Inst11Quest10PreQuest_HORDE = Inst11Quest10PreQuest
-- No Rewards for this quest

--Quest 11 Horde
Inst11Quest11_HORDE = "11. 達克雷爾的威脅（薩滿祭司任務）"
Inst11Quest11_HORDE_Level = "60"
Inst11Quest11_HORDE_Attain = "58"
Inst11Quest11_HORDE_Aim = "在通靈學院地下室的屍骨儲藏所的中心使用預言水晶球，然後與被召喚出來的幽靈作戰。擊敗這些幽靈之後，死亡騎士達克雷爾才會出現，你的任務就是擊敗他。\n\n把死亡騎士達克雷爾的頭顱交給奧格瑞瑪智慧谷的薩格尼。"
Inst11Quest11_HORDE_Location = "薩格尼（奧格瑞瑪 - 智慧谷; "..YELLOW.."38.6, 36.2"..WHITE.."）"
Inst11Quest11_HORDE_Note = "薩滿祭司專屬任務。前置任務接自同一 NPC。\n\n死亡騎士達克雷爾可以在 "..YELLOW.."[5]"..WHITE.." 召喚。"
Inst11Quest11_HORDE_Prequest = "收集材料"
Inst11Quest11_HORDE_Folgequest = "無"
Inst11Quest11PreQuest_HORDE = "true"
--
Inst11Quest11name1_HORDE = "天怒頭盔"

--Quest 12 Horde  (same as Quest 11 Alliance)
Inst11Quest12_HORDE = "12. 瓦塔拉克飾品的右瓣"
Inst11Quest12_HORDE_Level = Inst11Quest11_Level
Inst11Quest12_HORDE_Attain = Inst11Quest11_Attain
Inst11Quest12_HORDE_Aim = Inst11Quest11_Aim
Inst11Quest12_HORDE_Location = Inst11Quest11_Location
Inst11Quest12_HORDE_Note = Inst11Quest11_Note
Inst11Quest12_HORDE_Prequest = Inst11Quest11_Prequest
Inst11Quest12_HORDE_Folgequest = Inst11Quest11_Folgequest
Inst11Quest12PreQuest_HORDE = Inst11Quest11PreQuest
-- No Rewards for this quest



--------------- INST12 - Shadowfang Keep (SFK) ---------------

Inst12Story = "在第三次大戰中，奇靈托的法師和亡靈天災進行了殊死的戰鬥。當達拉然的法師最終在戰鬥中戰死之後，他們的意志轉移到了複蘇的亡靈天災身上，然後重生了。由于對于緩慢的進展感到失望（並且對他的手下的建議不予理會）大法師阿魯高選擇召喚異次沅空間的生物來壯大達拉然日漸消失的力量。阿魯高的召喚將貪婪的狼人帶到了艾澤拉斯大陸。這些狂暴的狼型生物不僅屠殺了亡靈天災的人，而且迅速將目標轉向那些法師。那些狼人開始圍攻席瓦萊恩男爵的城堡。這座位于焚木村的城堡不久之後變成了黑暗勢力的聚集地並從此荒廢。因為對于自己罪過的愧疚，阿魯高將那些狼人當作自己的孩子並隱居在“影牙城堡”中。據說他還住在那裏，被他巨大的寵物芬魯斯所保護著，另外，在城堡中還徘徊著瓦萊恩男爵的那些複仇的幽靈。"
Inst12Caption = "影牙城堡（SFK）"
Inst12QAA = "3 個任務"
Inst12QAH = "5 個任務"

--Quest 1 Alliance
Inst12Quest1 = "1. 正義試煉（聖騎士任務）"
Inst12Quest1_Level = "22"
Inst12Quest1_Attain = "20"
Inst12Quest1_Aim = "按照喬丹的武器材料單上的說明去尋找一些白石橡木、精煉礦石、喬丹的鐵錘和一塊科爾寶石，然後回到鐵爐堡去見喬丹·斯迪威爾。"
Inst12Quest1_Location = "喬丹·斯迪威爾（丹莫羅 - 鐵爐堡 "..YELLOW.."52,36 "..WHITE.."）"
Inst12Quest1_Note = "點擊 "..YELLOW.."[喬丹的武器材料單]"..WHITE.." 查看喬丹的武器材料單。"
Inst12Quest1_Page = {2, "只有聖騎士們才能接到這個任務！\n\n1. 你可以從 "..YELLOW.."[死亡礦井]"..WHITE.."地精木匠"..YELLOW.."[3]"..WHITE.." 那兒得到白石橡木。\n\n2. 要得到精煉礦石，你必須先與白洛爾·石手交談（洛克莫丹 - 塞爾薩瑪; "..YELLOW.."35,44"..WHITE.."）。他會給你《白洛爾的礦石》任務。你在一棵樹後面找到喬丹的礦石 "..YELLOW.."71,21"..WHITE.."。\n\n3. 你可以在 "..YELLOW.."[影牙城堡]"..WHITE.."緊靠"..YELLOW.."[5]"..WHITE.." 的地方找到喬丹的鐵錘（安全地點）。\n\n4. 要得到科爾寶石，你必須去找桑迪斯·織風（黑海岸 - 奧伯丁; "..YELLOW.."37,40"..WHITE.."）並且做完《尋找科爾寶石》任務。為了完成這個任務，你必須殺掉 "..YELLOW.."[黑暗深淵]"..WHITE.." 前的黑暗深淵智者或者黑暗深淵海潮祭司。他們會掉落被汙染的科爾寶石。桑迪斯·織風會為你清潔它的。", };
Inst12Quest1_Prequest = "勇氣之書 -> 正義試煉"
Inst12Quest1_Folgequest = "正義試煉"
Inst12Quest1PreQuest = "true"
--
Inst12Quest1name1 = "維裏甘之拳"

--Quest 2 Alliance
Inst12Quest2 = "2. 索蘭魯克寶珠（術士任務）"
Inst12Quest2_Level = "25"
Inst12Quest2_Attain = "20"
Inst12Quest2_Aim = "找到3塊索蘭魯克寶珠的碎片和1塊索蘭魯克寶珠的大碎片，把它們交給貧瘠之地的杜安·卡漢。"
Inst12Quest2_Location = "杜安·卡漢（貧瘠之地; "..YELLOW.."49,57"..WHITE.."）"
Inst12Quest2_Note = "只有術士才能得到這個任務！3塊索蘭魯克寶珠的碎片，你可以從 "..YELLOW.."[黑暗深淵]"..WHITE.." 的暮光侍僧那裏得到。那塊索蘭魯克寶珠的大碎片，你要去 "..YELLOW.."[影牙城堡]"..WHITE.." 找影牙魔魂狼人。"
Inst12Quest2_Prequest = "無"
Inst12Quest2_Folgequest = "無"
--
Inst12Quest2name1 = "索蘭魯克寶珠"
Inst12Quest2name2 = "索拉魯克法杖"

--Quest 3 Alliance
Inst12Quest3 = "3. 微妙的氣氛（肯定不是愛）"
Inst12Quest3_Level = "80"
Inst12Quest3_Attain = "75"
Inst12Quest3_Aim = "將褪色的情人節卡片交給暴風城的探員斯尼普·滑栓。"
Inst12Quest3_Location = "由影牙城堡藥劑師漢摩爾掉落，每個角色只可獲得一次。"
Inst12Quest3_Note = "此任務是情人節季節性任務。\n\n探員斯尼普·滑栓在 （暴風城 - 貿易區; "..YELLOW.."61.7, 75.5"..WHITE.."）。"
Inst12Quest3_Prequest = "無"
Inst12Quest3_Folgequest = "無"
-- No Rewards for this quest



--Quest 1 Horde
Inst12Quest1_HORDE = "1. 影牙城堡裏的亡靈哨兵"
Inst12Quest1_HORDE_Level = "25"
Inst12Quest1_HORDE_Attain = "18"
Inst12Quest1_HORDE_Aim = "找到亡靈哨兵阿達曼特和亡靈哨兵文森特。"
Inst12Quest1_HORDE_Location = "高級執行官哈德瑞克（銀松森林 - 瑟伯切爾; "..YELLOW.."43,40"..WHITE.."）"
Inst12Quest1_HORDE_Note = "阿達曼特位于 "..YELLOW.."[1]"..WHITE.."，文森特在你一進庭院的右側 "..YELLOW.."[3]"..WHITE.."。"
Inst12Quest1_HORDE_Prequest = "無"
Inst12Quest1_HORDE_Folgequest = "無"
--
Inst12Quest1name1_HORDE = "鬼魂襯肩"

--Quest 2 Horde
Inst12Quest2_HORDE = "2. 烏爾之書"
Inst12Quest2_HORDE_Level = "26"
Inst12Quest2_HORDE_Attain = "16"
Inst12Quest2_HORDE_Aim = "把烏爾之書帶給幽暗城煉金區裏的看守者貝爾杜加。"
Inst12Quest2_HORDE_Location = "看守者貝爾杜加（幽暗城 - 煉金房; "..YELLOW.."53,54"..WHITE.."）"
Inst12Quest2_HORDE_Note = "你可以找到書在進門的左邊 "..YELLOW.."[11]"..WHITE.."。"
Inst12Quest2_HORDE_Prequest = "無"
Inst12Quest2_HORDE_Folgequest = "無"
--
Inst12Quest2name1_HORDE = "灰色長靴"
Inst12Quest2name2_HORDE = "鋼釘護腕"

--Quest 3 Horde
Inst12Quest3_HORDE = "3. 除掉阿魯高"
Inst12Quest3_HORDE_Level = "27"
Inst12Quest3_HORDE_Attain = "18"
Inst12Quest3_HORDE_Aim = "殺死阿魯高，把他的頭帶給瑟伯切爾的達拉爾·道恩維沃爾。"
Inst12Quest3_HORDE_Location = "達拉爾·道恩維沃爾（銀松森林 - 瑟伯切爾; "..YELLOW.."44,39"..WHITE.."）"
Inst12Quest3_HORDE_Note = "你可以在 "..YELLOW.."[13]"..WHITE.." 找到阿魯高。"
Inst12Quest3_HORDE_Prequest = "無"
Inst12Quest3_HORDE_Folgequest = "無"
--
Inst12Quest3name1_HORDE = "希爾瓦娜斯的圖章"

--Quest 4 Horde  (same as Quest 2 Alliance)
Inst12Quest4_HORDE = "4. 索蘭魯克寶珠（術士任務）"
Inst12Quest4_HORDE_Level = Inst12Quest2_Level
Inst12Quest4_HORDE_Attain = Inst12Quest2_Attain
Inst12Quest4_HORDE_Aim = Inst12Quest2_Aim
Inst12Quest4_HORDE_Location = Inst12Quest2_Location
Inst12Quest4_HORDE_Note = Inst12Quest2_Note
Inst12Quest4_HORDE_Prequest = Inst12Quest2_Prequest
Inst12Quest4_HORDE_Folgequest = Inst12Quest2_Folgequest
--
Inst12Quest4name1_HORDE = Inst12Quest2name1
Inst12Quest4name2_HORDE = Inst12Quest2name2

--Quest 5 Horde
Inst12Quest5_HORDE = "5. 微妙的氣氛（肯定不是愛）"
Inst12Quest5_HORDE_Level = "80"
Inst12Quest5_HORDE_Attain = "75"
Inst12Quest5_HORDE_Aim = "將褪色的情人節卡片交給奧格瑞瑪的偵探斯奈普·滑栓。"
Inst12Quest5_HORDE_Location = "由影牙城堡藥劑師漢摩爾掉落，每個角色只可獲得一次。"
Inst12Quest5_HORDE_Note = "此任務是情人節季節性任務。\n\n探員斯尼普·滑栓在 （奧格瑞瑪 - 力量谷; "..YELLOW.."50.8, 65.6"..WHITE.."）。"
Inst12Quest5_HORDE_Prequest = "無"
Inst12Quest5_HORDE_Folgequest = "無"
-- No Rewards for this quest



--------------- INST13 - The Stockade (Stocks) ---------------

Inst13Story = "監獄是位于暴風城運河區戒備森原的牢房。那裏由典獄官塞爾沃特看守著，監獄是那些小偷，政治犯，謀殺者和許多最危險的罪犯的家園。最近，異常暴動導致了監獄的混亂——所有的守衛都被趕了出來，裏面的罪犯可以自由的活動。典獄官塞爾沃特試圖控制局面並召集勇敢的冒險者進入監獄殺死暴動的主腦——那個狡猾的巴吉爾·特雷德。"
Inst13Caption = "監獄"
Inst13QAA = "6 個任務"
Inst13QAH = "無任務"

--Quest 1 Alliance
Inst13Quest1 = "1. 伸張正義"
Inst13Quest1_Level = "25"
Inst13Quest1_Attain = "22"
Inst13Quest1_Aim = "把塔格爾的頭顱帶給湖畔鎮的衛兵伯爾頓。"
Inst13Quest1_Location = "衛兵伯爾頓（赤脊山 - 湖畔鎮; "..YELLOW.."26,46 "..WHITE.."）"
Inst13Quest1_Note = "你可以在 "..YELLOW.."[1]"..WHITE.." 找到塔格爾。"
Inst13Quest1_Prequest = "無"
Inst13Quest1_Folgequest = "無"
--
Inst13Quest1name1 = "磷鋁長劍"
Inst13Quest1name2 = "硬根法杖"

--Quest 2 Alliance
Inst13Quest2 = "2. 罪與罰"
Inst13Quest2_Level = "26"
Inst13Quest2_Attain = "22"
Inst13Quest2_Aim = "夜色鎮的米爾斯迪普議員要你殺死迪克斯特·瓦德，並把他的手帶回來作為證明。"
Inst13Quest2_Location = "米爾斯迪普議員（暮色森林 - 夜色鎮; "..YELLOW.."72,47 "..WHITE.."）"
Inst13Quest2_Note = "你可以在 "..YELLOW.."[5]"..WHITE.." 找到迪克斯特·瓦德."
Inst13Quest2_Prequest = "無"
Inst13Quest2_Folgequest = "無"
--
Inst13Quest2name1 = "大使之靴"
Inst13Quest2name2 = "夜色郡鎖甲護腿"

--Quest 3 Alliance
Inst13Quest3 = "3. 鎮壓暴動"
Inst13Quest3_Level = "26"
Inst13Quest3_Attain = "22"
Inst13Quest3_Aim = "暴風城的典獄官塞爾沃特要求你殺死監獄中的10名迪菲亞囚徒、8名迪菲亞罪犯和8名迪菲亞叛軍。"
Inst13Quest3_Location = "典獄官塞爾沃特（暴風城 - 監獄; "..YELLOW.."51,69 "..WHITE.."）"
Inst13Quest3_Note = "副本外的典獄官會給你這個任務。"
Inst13Quest3_Prequest = "無"
Inst13Quest3_Folgequest = "無"
-- No Rewards for this quest

--Quest 4 Alliance
Inst13Quest4 = "4. 鮮血的顔色"
Inst13Quest4_Level = "26"
Inst13Quest4_Attain = "22"
Inst13Quest4_Aim = "暴風城的尼科瓦·拉斯克要你取得10條紅色毛紡面罩。"
Inst13Quest4_Location = "尼科瓦·拉斯克（暴風城 - 舊城區; "..YELLOW.."75,63"..WHITE.."）"
Inst13Quest4_Note = "尼科瓦·拉斯克在舊城區遊走，副本裏每個敵人都可能掉落面罩。"
Inst13Quest4_Prequest = "無"
Inst13Quest4_Folgequest = "無"
-- No Rewards for this quest

--Quest 5 Alliance
Inst13Quest5 = "5. 卡姆·深怒"
Inst13Quest5_Level = "27"
Inst13Quest5_Attain = "22"
Inst13Quest5_Aim = "丹莫德的莫特雷·加瑪森要求你把卡姆·深怒的頭顱交給他。"
Inst13Quest5_Location = "莫特雷·加瑪森（濕地 - 丹莫德; "..YELLOW.."49,18 "..WHITE.."）"
Inst13Quest5_Note = "前置任務也從莫特雷·加瑪森處得到。你可以在 "..YELLOW.."[2]"..WHITE.." 找到卡姆·深怒。"
Inst13Quest5_Prequest = "黑鐵戰爭"
Inst13Quest5_Folgequest = "無"
Inst13Quest5PreQuest = "true"
--
Inst13Quest5name1 = "辯護腰帶"
Inst13Quest5name2 = "碎頭者"

--Quest 6 Alliance
Inst13Quest6 = "6. 監獄暴動"
Inst13Quest6_Level = "29"
Inst13Quest6_Attain = "16"
Inst13Quest6_Aim = "殺死巴基爾·斯瑞德，把他的頭帶給監獄的典獄官塞爾沃特。"
Inst13Quest6_Location = "典獄官塞爾沃特（暴風城 - 監獄; "..YELLOW.."51,69"..WHITE.."）"
Inst13Quest6_Note = "前置任務詳情請參見 "..YELLOW.."[死亡礦井][迪菲亞兄弟會]"..WHITE.."。\n巴基爾·斯瑞德在 "..YELLOW.."[4]"..WHITE.."。"
Inst13Quest6_Prequest = "迪菲亞兄弟會 -> 巴吉爾·特雷德"
Inst13Quest6_Folgequest = "好奇的訪客"
Inst13Quest6PreQuest = "true"
-- No Rewards for this quest


--------------- INST14 - Stratholme (Strat) ---------------

Inst14Story = "斯坦索姆曾經是洛丹倫北部一顆璀璨的明珠，但是就是在這座城市阿爾薩斯王子背叛了他的導師烏瑟爾，並屠殺了數百個被認為感染了可怕瘟疫的臣民。阿爾薩斯不久之後就向巫妖王臣服。這個破碎的城市也被巫妖克爾蘇拉德領導的亡靈天災所占據。而一直由大十字軍戰士達索漢領導的血色十字軍分遣隊也占據了這個城市的一部分。這兩方力量在城市中進行著激烈的戰鬥。而那些勇敢（亦或是愚蠢的）的冒險者在進入斯坦索姆之後將不得不面對兩方的力量。據說整座城市由三座大型的通靈塔以及無數強大的亡靈巫師，女妖和憎惡所守衛著。據報告，邪惡的死亡騎士乘坐在一匹骷髅戰馬——他會將怒火傾瀉在任何膽敢進入亡靈天災領域的人。"
Inst14Caption = "斯坦索姆"
Inst14QAA = "18 個任務"
Inst14QAH = "19 個任務"

--Quest 1 Alliance
Inst14Quest1 = "1. 血肉不會撒謊"
Inst14Quest1_Level = "60"
Inst14Quest1_Attain = "55"
Inst14Quest1_Aim = "從斯坦索姆找回20個瘟疫肉塊，並把它們交給貝蒂娜·比格辛克。你覺得斯坦索姆中的生靈都不大可能長著肉……"
Inst14Quest1_Location = "貝蒂娜·比格辛克（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."76,54"..WHITE.."）"
Inst14Quest1_Note = "斯坦索姆裏多數敵人都會掉落瘟疫肉塊，但是掉落率很低。"
Inst14Quest1_Prequest = "無"
Inst14Quest1_Folgequest = "活躍的探子"
-- No Rewards for this quest

--Quest 2 Alliance
Inst14Quest2 = "2. 活躍的探子"
Inst14Quest2_Level = "60"
Inst14Quest2_Attain = "55"
Inst14Quest2_Aim = "到斯坦索姆去探索那裏的通靈塔。找到新的天災軍團檔案，把它交給貝蒂娜·比格辛克。"
Inst14Quest2_Location = "貝蒂娜·比格辛克（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."76,54"..WHITE.."）"
Inst14Quest2_Note = "天災軍團檔案在三個塔中的一個裏，這三個塔在 "..YELLOW.."[15]"..WHITE.."，"..YELLOW.."[16]"..WHITE.." 和 "..YELLOW.."[17]"..WHITE.."。"
Inst14Quest2_Prequest = "血肉不會撒謊"
Inst14Quest2_Folgequest = "無"
Inst14Quest2FQuest = "true"
--
Inst14Quest2name1 = "黎明之印"
Inst14Quest2name2 = "黎明符文"

--Quest 3 Alliance
Inst14Quest3 = "3. 神聖之屋"
Inst14Quest3_Level = "60"
Inst14Quest3_Attain = "55"
Inst14Quest3_Aim = "到北方的斯坦索姆去，尋找散落在城市中的補給箱，並收集5瓶斯坦索姆聖水。當你找到足夠的聖水之後就回去向萊尼德·巴薩羅梅複命。"
Inst14Quest3_Location = "萊尼德·巴薩羅梅（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."76,52"..WHITE.."）"
Inst14Quest3_Note = "在斯坦索姆各處的箱子裏你可以找到聖水。但是，某些箱子是假的，打開會重現一堆蟲子攻擊你。"
Inst14Quest3_Prequest = "無"
Inst14Quest3_Folgequest = "無"
--
Inst14Quest3name1 = "超強治療藥水"
Inst14Quest3name2 = "強效法力藥水"
Inst14Quest3name3 = "忏悔之冠"
Inst14Quest3name4 = "忏悔者指環"

--Quest 4 Alliance
Inst14Quest4 = "4. 弗拉斯·希亞比"
Inst14Quest4_Level = "60"
Inst14Quest4_Attain = "55"
Inst14Quest4_Aim = "找到弗拉斯·希亞比在斯坦索姆的煙草店，並從中找回一盒希亞比的煙草，把它交給煙鬼拉魯恩。"
Inst14Quest4_Location = "煙鬼拉魯恩（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."75,52"..WHITE.."）"
Inst14Quest4_Note = "煙草店在 "..YELLOW.."[1]"..WHITE.." 附近。當你打開盒子，弗拉斯·希亞比會突然出現。"
Inst14Quest4_Prequest = "無"
Inst14Quest4_Folgequest = "無"
--
Inst14Quest4name1 = "煙鬼的打火器"

--Quest 5 Alliance
Inst14Quest5 = "5. 永不安息的靈魂"
Inst14Quest5_Level = "60"
Inst14Quest5_Attain = "55"
Inst14Quest5_Aim = "對斯坦索姆裏已成為鬼魂的居民們使用埃根的沖擊器。當永不安息的靈魂從他們的鬼魂外殼解放出來後，再次使用沖擊器 - 他們就會徹底自由了！\n釋放15個永不安息的靈魂，然後回到埃根那裏。"
Inst14Quest5_Location = "埃根（東瘟疫之地; "..YELLOW.."11,29"..WHITE.."）"
Inst14Quest5_Note = "前置任務從護理者奧林處獲得（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."74,58"..WHITE.."）\n鬼魂居民在斯坦索姆到處走動。"
Inst14Quest5_Prequest = "永不安息的靈魂"
Inst14Quest5_Folgequest = "無"
Inst14Quest5PreQuest = "true"
--
Inst14Quest5name1 = "希望的證明"

--Quest 6 Alliance
Inst14Quest6 = "6. 愛與家庭"
Inst14Quest6_Level = "60"
Inst14Quest6_Attain = "52"
Inst14Quest6_Aim = "到瘟疫之地北部的斯坦索姆去。你可以在血色十字軍堡壘中找到“愛與家庭”這幅畫，它被隱藏在另一幅描繪兩個月亮的畫之後。\n把這幅畫還給提裏奧·弗丁。"
Inst14Quest6_Location = "畫家瑞弗蕾（西瘟疫之地 - 凱爾達隆; "..YELLOW.."65,75"..WHITE.."）"
Inst14Quest6_Note = "前置任務從提裏奧·弗丁處獲得（西瘟疫之地; "..YELLOW.."7,43"..WHITE.."）。\n畫在 "..YELLOW.."[10]"..WHITE.."。"
Inst14Quest6_Prequest = "救贖 -> 愛與家庭"
Inst14Quest6_Folgequest = "尋找麥蘭達"
Inst14Quest6PreQuest = "true"
-- No Rewards for this quest

--Quest 7 Alliance
Inst14Quest7 = "7. 米奈希爾的禮物"
Inst14Quest7_Level = "60"
Inst14Quest7_Attain = "57"
Inst14Quest7_Aim = "到斯坦索姆城裏去找到米奈希爾的禮物，把巫妖生前的遺物放在那塊邪惡的土地上。"
Inst14Quest7_Location = "萊尼德·巴薩羅梅（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."75,52"..WHITE.."）"
Inst14Quest7_Note = "前置任務從馬杜克鎮長（西瘟疫之地 - 凱爾達隆; "..YELLOW.."70,73"..WHITE.."）處獲得。\n你可以在 "..YELLOW.."[19]"..WHITE.." 附近找到標志。也可以參見：通靈學院裏的 "..YELLOW.."[巫妖萊斯·霜語]"..WHITE.."。"
Inst14Quest7_Prequest = "萊斯·霜語 -> 亡靈萊斯·霜語"
Inst14Quest7_Folgequest = "米奈希爾的禮物"
Inst14Quest7PreQuest = "true"
-- No Rewards for this quest

--Quest 8 Alliance
Inst14Quest8 = "8. 奧裏克斯的清算"
Inst14Quest8_Level = "60"
Inst14Quest8_Attain = "56"
Inst14Quest8_Aim = "殺掉瑞文戴爾男爵。"
Inst14Quest8_Location = "奧裏克斯（斯坦索姆; "..YELLOW.."[13]"..WHITE.."）"
Inst14Quest8_Note = "要開始這個任務你需要給奧裏克斯[信仰獎章]。你可以從瑪洛爾的保險箱拿到這個獎章，箱子就在 "..YELLOW.."[7]"..WHITE.." 附近。將獎章給了奧裏克斯之後，他會在對抗男爵 "..YELLOW.."[19]"..WHITE.." 的戰鬥中支持你。但是可憐的人還是會倒下，殺死男爵後，跟他屍體對話完成任務。"
Inst14Quest8_Prequest = "無"
Inst14Quest8_Folgequest = "無"
--
Inst14Quest8name1 = "殉難者的意志"
Inst14Quest8name2 = "殉難者之血"

--Quest 9 Alliance
Inst14Quest9 = "9. 檔案管理員"
Inst14Quest9_Level = "60"
Inst14Quest9_Attain = "55"
Inst14Quest9_Aim = "在斯坦索姆城中找到血色十字軍的檔案管理員加爾福特，殺掉他，然後燒毀血色十字軍檔案。"
Inst14Quest9_Location = "尼古拉斯·瑟倫霍夫公爵（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."76,52"..WHITE.."）"
Inst14Quest9_Note = "檔案和檔案管理員在 "..YELLOW.."[10]"..WHITE.."。"
Inst14Quest9_Prequest = "無"
Inst14Quest9_Folgequest = "可怕的真相"
-- No Rewards for this quest

--Quest 10 Alliance
Inst14Quest10 = "10. 可怕的真相"
Inst14Quest10_Level = "60"
Inst14Quest10_Attain = "55"
Inst14Quest10_Aim = "將巴納紮爾的頭顱交給東瘟疫之地的尼古拉斯·瑟倫霍夫公爵。"
Inst14Quest10_Location = "巴納紮爾（斯坦索姆; "..YELLOW.."[11]"..WHITE.."）"
Inst14Quest10_Note = "尼古拉斯·瑟倫霍夫公爵（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."76,52"..WHITE.."）。"
Inst14Quest10_Prequest = "檔案管理員"
Inst14Quest10_Folgequest = "超越"
Inst14Quest10FQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst14Quest11 = "11. 超越"
Inst14Quest11_Level = "60"
Inst14Quest11_Attain = "55"
Inst14Quest11_Aim = "到斯坦索姆去殺掉瑞文戴爾男爵，把他的頭顱交給尼古拉斯·瑟倫霍夫公爵。"
Inst14Quest11_Location = "尼古拉斯·瑟倫霍夫公爵（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."76,52"..WHITE.."）"
Inst14Quest11_Note = "瑞文戴爾男爵在 "..YELLOW.."[19]"..WHITE.."。\n\n後續任務獎勵物品。"
Inst14Quest11_Prequest = "可怕的真相"
Inst14Quest11_Folgequest = "瑪克斯韋爾·泰羅索斯男爵 -> 銀色黎明寶箱"
Inst14Quest11FQuest = "true"
--
Inst14Quest11name1 = "黎明守護者"
Inst14Quest11name2 = "銀色十字軍"
Inst14Quest11name3 = "銀色複仇者"

--Quest 12 Alliance
Inst14Quest12 = "12. 死人的請求"
Inst14Quest12_Level = "60"
Inst14Quest12_Attain = "58"
Inst14Quest12_Aim = "進入斯坦索姆，從瑞文戴爾男爵手中救出伊思達。"
Inst14Quest12_Location = "伊思達·哈爾蒙（東瘟疫之地 - 斯坦索姆）"
Inst14Quest12_Note = "伊思達·哈爾蒙就站在斯坦索姆副本門口。你需要超維度幽靈顯形器才能看到伊思達·哈爾蒙。聯盟這個任務的前置任務接自德莉亞娜（鐵爐堡 "..YELLOW.."43,52"..WHITE.."），部落的接自莫克瓦爾（奧格瑞瑪 "..YELLOW.."38,37"..WHITE.."）。\n這個同時也是著名的45分鍾殺瑞文戴爾男爵任務。"
Inst14Quest12_Prequest = "尋找安泰恩"
Inst14Quest12_Folgequest = "生命的證據"
Inst14Quest12PreQuest = "true"
-- No Rewards for this quest

--Quest 13 Alliance
Inst14Quest13 = "13. 瓦塔拉克飾品的左瓣"
Inst14Quest13_Level = "60"
Inst14Quest13_Attain = "58"
Inst14Quest13_Aim = "使用召喚火盆召喚出亞雷恩和索托斯的靈魂，然後殺掉他們。完成之後，將召喚火盆與瓦塔拉克飾品的左瓣還給黑石山的伯德雷。"
Inst14Quest13_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖中的[D]"..WHITE.."）"
Inst14Quest13_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。\n\n召喚亞雷恩和索托斯在 "..YELLOW.."[11]"..WHITE.."。"
Inst14Quest13_Prequest = "重要的材料"
Inst14Quest13_Folgequest = "奧卡茲島在你前方……"
Inst14Quest13PreQuest = "true"
-- No Rewards for this quest

--Quest 14 Alliance
Inst14Quest14 = "14. 瓦塔拉克飾品的右瓣"
Inst14Quest14_Level = "60"
Inst14Quest14_Attain = "58"
Inst14Quest14_Aim = "使用召喚火盆召喚出亞雷恩和索托斯的靈魂，然後殺掉他。完成之後，將召喚火盆與瓦塔拉克公爵的飾品還給黑石山的伯德雷。"
Inst14Quest14_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖中的[D]"..WHITE.."）"
Inst14Quest14_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。\n\n召喚亞雷恩和索托斯在 "..YELLOW.."[11]"..WHITE.."。"
Inst14Quest14_Prequest = "更多重要的材料"
Inst14Quest14_Folgequest = "最後的准備（"..YELLOW.."上層黑石塔"..WHITE.."）"
Inst14Quest14PreQuest = "true"
-- No Rewards for this quest

--Quest 15 Alliance
Inst14Quest15 = "15. 埃提耶什，守護者的傳說之杖"
Inst14Quest15_Level = "60"
Inst14Quest15_Attain = "60"
Inst14Quest15_Aim = "塔納利斯時光之穴的阿納克洛斯要你前往斯坦索姆，在神聖之地上使用埃提耶什，守護者的傳說之杖。擊敗被驅趕出法杖的生物，然後回到阿納克洛斯那裏去。"
Inst14Quest15_Location = "阿納克洛斯（塔納利斯 - 時光之穴; "..YELLOW.."65,49"..WHITE.."）"
Inst14Quest15_Note = "召喚位置在 "..YELLOW.."[2]"..WHITE.."。\n\n在巫妖王之怒資料片中，不能再獲得這個任務。只有能召喚出埃提耶什這一步任務可以被完成。"
Inst14Quest15_Prequest = "有"
Inst14Quest15_Folgequest = "無"
Inst14Quest15PreQuest = "true"
--
Inst14Quest15name1 = "埃提耶什，守護者的傳說之杖"
Inst14Quest15name2 = "埃提耶什，守護者的傳說之杖"
Inst14Quest15name3 = "埃提耶什，守護者的傳說之杖"
Inst14Quest15name4 = "埃提耶什，守護者的傳說之杖"

--Quest 16 Alliance
Inst14Quest16 = "16. 腐蝕（鑄劍大師任務）"
Inst14Quest16_Level = "60"
Inst14Quest16_Attain = "50"
Inst14Quest16_Aim = "在斯坦索姆找到黑衣守衛鑄劍師，然後殺死他。將黑色衛士徽記交給亡靈殺手瑟裏爾。"
Inst14Quest16_Location = "亡靈殺手瑟裏爾（冬泉谷 - 永望鎮; "..YELLOW.."61,37"..WHITE.."）"
Inst14Quest16_Note = "召喚黑衣守衛鑄劍師在 "..YELLOW.."[15]"..WHITE.."。"
Inst14Quest16_Prequest = "無"
Inst14Quest16_Folgequest = "無"
--
Inst14Quest16name1 = "設計圖：閃耀輕劍"

--Quest 17 Alliance
Inst14Quest17 = "17. 甜美的平靜（鑄錘大師任務）"
Inst14Quest17_Level = "60"
Inst14Quest17_Attain = "50"
Inst14Quest17_Aim = "到斯坦索姆去殺死紅衣鑄錘師。將紅衣鑄錘師的圍裙交給莉莉絲。"
Inst14Quest17_Location = "輕盈的莉莉絲（冬泉谷 - 永望鎮; "..YELLOW.."61,37"..WHITE.."）"
Inst14Quest17_Note = "召喚紅衣鑄錘師在 "..YELLOW.."[8]"..WHITE.."。"
Inst14Quest17_Prequest = "無"
Inst14Quest17_Folgequest = "無"
--
Inst14Quest17name1 = "設計圖：魔法戰錘"

--Quest 18 Alliance
Inst14Quest18 = "18. 光與影的平衡（牧師任務）"
Inst14Quest18_Level = "60"
Inst14Quest18_Attain = "60"
Inst14Quest18_Aim = "在總計有15個農夫被殺死之前拯救50個農夫。完成任務之後與艾瑞斯·哈文法談談。\n你可以通過浏覽死亡布告來了解自己拯救了多少農夫。"
Inst14Quest18_Location = "艾瑞斯·哈文法（東瘟疫之地; "..YELLOW.."17,14"..WHITE.."）"
Inst14Quest18_Note = "如果要看到艾瑞斯·哈文法和接到任務，你需要神聖之眼（火焰之王的寶箱在 "..YELLOW.."[熔火之心]"..WHITE.."）。\n\n完成後，將神聖之眼、諾達希爾碎片和暗影之眼（詛咒之地或冬泉谷隨機惡魔掉落）組合，將得到牧師史詩法杖——祈福。"
Inst14Quest18_Prequest = "警示"
Inst14Quest18_Folgequest = "無"
Inst14Quest18PreQuest = "true"
--
Inst14Quest18name1 = "諾達希爾碎片"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst14Quest1_HORDE = Inst14Quest1
Inst14Quest1_HORDE_Level = Inst14Quest1_Level
Inst14Quest1_HORDE_Attain = Inst14Quest1_Attain
Inst14Quest1_HORDE_Aim = Inst14Quest1_Aim
Inst14Quest1_HORDE_Location = Inst14Quest1_Location
Inst14Quest1_HORDE_Note = Inst14Quest1_Note
Inst14Quest1_HORDE_Prequest = Inst14Quest1_Prequest
Inst14Quest1_HORDE_Folgequest = Inst14Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst14Quest2_HORDE = Inst14Quest2
Inst14Quest2_HORDE_Level = Inst14Quest2_Level
Inst14Quest2_HORDE_Attain = Inst14Quest2_Attain
Inst14Quest2_HORDE_Aim = Inst14Quest2_Aim
Inst14Quest2_HORDE_Location = Inst14Quest2_Location
Inst14Quest2_HORDE_Note = Inst14Quest2_Note
Inst14Quest2_HORDE_Prequest = Inst14Quest2_Prequest
Inst14Quest2_HORDE_Folgequest = Inst14Quest2_Folgequest
Inst14Quest2FQuest_HORDE = Inst14Quest2FQuest
--
Inst14Quest2name1_HORDE = Inst14Quest2name1
Inst14Quest2name2_HORDE = Inst14Quest2name2

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst14Quest3_HORDE = Inst14Quest3
Inst14Quest3_HORDE_Level = Inst14Quest3_Level
Inst14Quest3_HORDE_Attain = Inst14Quest3_Attain
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
Inst14Quest4_HORDE_Level = Inst14Quest4_Level
Inst14Quest4_HORDE_Attain = Inst14Quest4_Attain
Inst14Quest4_HORDE_Aim = Inst14Quest4_Aim
Inst14Quest4_HORDE_Location = Inst14Quest4_Location
Inst14Quest4_HORDE_Note = Inst14Quest4_Note
Inst14Quest4_HORDE_Prequest = Inst14Quest4_Prequest
Inst14Quest4_HORDE_Folgequest = Inst14Quest4_Folgequest
--
Inst14Quest4name1_HORDE = Inst14Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst14Quest5_HORDE = Inst14Quest5
Inst14Quest5_HORDE_Level = Inst14Quest5_Level
Inst14Quest5_HORDE_Attain = Inst14Quest5_Attain
Inst14Quest5_HORDE_Aim = Inst14Quest5_Aim
Inst14Quest5_HORDE_Location = Inst14Quest5_Location
Inst14Quest5_HORDE_Note = Inst14Quest5_Note
Inst14Quest5_HORDE_Prequest = Inst14Quest5_Prequest
Inst14Quest5_HORDE_Folgequest = Inst14Quest5_Folgequest
Inst14Quest5PreQuest_HORDE = Inst14Quest5PreQuest
--
Inst14Quest5name1_HORDE = Inst14Quest5name1

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst14Quest6_HORDE = Inst14Quest6
Inst14Quest6_HORDE_Level = Inst14Quest6_Level
Inst14Quest6_HORDE_Attain = Inst14Quest6_Attain
Inst14Quest6_HORDE_Aim = Inst14Quest6_Aim
Inst14Quest6_HORDE_Location = Inst14Quest6_Location
Inst14Quest6_HORDE_Note = Inst14Quest6_Note
Inst14Quest6_HORDE_Prequest = Inst14Quest6_Prequest
Inst14Quest6_HORDE_Folgequest = Inst14Quest6_Folgequest
Inst14Quest6PreQuest_HORDE = Inst14Quest6PreQuest
-- No Rewards for this quest

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst14Quest7_HORDE = Inst14Quest7
Inst14Quest7_HORDE_Level = Inst14Quest7_Level
Inst14Quest7_HORDE_Attain = Inst14Quest7_Attain
Inst14Quest7_HORDE_Aim = Inst14Quest7_Aim
Inst14Quest7_HORDE_Location = Inst14Quest7_Location
Inst14Quest7_HORDE_Note = Inst14Quest7_Note
Inst14Quest7_HORDE_Prequest = Inst14Quest7_Prequest
Inst14Quest7_HORDE_Folgequest = Inst14Quest7_Folgequest
Inst14Quest7PreQuest_HORDE = Inst14Quest7PreQuest
-- No Rewards for this quest

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst14Quest8_HORDE = Inst14Quest8
Inst14Quest8_HORDE_Level = Inst14Quest8_Level
Inst14Quest8_HORDE_Attain = Inst14Quest8_Attain
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
Inst14Quest9_HORDE_Level = Inst14Quest9_Level
Inst14Quest9_HORDE_Attain = Inst14Quest9_Attain
Inst14Quest9_HORDE_Aim = Inst14Quest9_Aim
Inst14Quest9_HORDE_Location = Inst14Quest9_Location
Inst14Quest9_HORDE_Note = Inst14Quest9_Note
Inst14Quest9_HORDE_Prequest = Inst14Quest9_Prequest
Inst14Quest9_HORDE_Folgequest = Inst14Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst14Quest10_HORDE = Inst14Quest10
Inst14Quest10_HORDE_Level = Inst14Quest10_Level
Inst14Quest10_HORDE_Attain = Inst14Quest10_Attain
Inst14Quest10_HORDE_Aim = Inst14Quest10_Aim
Inst14Quest10_HORDE_Location = Inst14Quest10_Location
Inst14Quest10_HORDE_Note = Inst14Quest10_Note
Inst14Quest10_HORDE_Prequest = Inst14Quest10_Prequest
Inst14Quest10_HORDE_Folgequest = Inst14Quest10_Folgequest
Inst14Quest10FQuest_HORDE = Inst14Quest10FQuest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst14Quest11_HORDE = Inst14Quest11
Inst14Quest11_HORDE_Level = Inst14Quest11_Level
Inst14Quest11_HORDE_Attain = Inst14Quest11_Attain
Inst14Quest11_HORDE_Aim = Inst14Quest11_Aim
Inst14Quest11_HORDE_Location = Inst14Quest11_Location
Inst14Quest11_HORDE_Note = Inst14Quest11_Note
Inst14Quest11_HORDE_Prequest = Inst14Quest11_Prequest
Inst14Quest11_HORDE_Folgequest = Inst14Quest11_Folgequest
Inst14Quest11FQuest_HORDE = Inst14Quest11FQuest
--
Inst14Quest11name1_HORDE = Inst14Quest11name1
Inst14Quest11name2_HORDE = Inst14Quest11name2
Inst14Quest11name3_HORDE = Inst14Quest11name3

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst14Quest12_HORDE = Inst14Quest12
Inst14Quest12_HORDE_Level = Inst14Quest12_Level
Inst14Quest12_HORDE_Attain = Inst14Quest12_Attain
Inst14Quest12_HORDE_Aim = Inst14Quest12_Aim
Inst14Quest12_HORDE_Location = Inst14Quest12_Location
Inst14Quest12_HORDE_Note = Inst14Quest12_Note
Inst14Quest12_HORDE_Prequest = Inst14Quest12_Prequest
Inst14Quest12_HORDE_Folgequest = Inst14Quest12_Folgequest
Inst14Quest12PreQuest_HORDE = Inst14Quest12PreQuest
-- No Rewards for this quest

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst14Quest13_HORDE = Inst14Quest13
Inst14Quest13_HORDE_Level = Inst14Quest13_Level
Inst14Quest13_HORDE_Attain = Inst14Quest13_Attain
Inst14Quest13_HORDE_Aim = Inst14Quest13_Aim
Inst14Quest13_HORDE_Location = Inst14Quest13_Location
Inst14Quest13_HORDE_Note = Inst14Quest13_Note
Inst14Quest13_HORDE_Prequest = Inst14Quest13_Prequest
Inst14Quest13_HORDE_Folgequest = Inst14Quest13_Folgequest
Inst14Quest13PreQuest_HORDE = Inst14Quest13PreQuest
-- No Rewards for this quest

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst14Quest14_HORDE = Inst14Quest14
Inst14Quest14_HORDE_Level = Inst14Quest14_Level
Inst14Quest14_HORDE_Attain = Inst14Quest14_Attain
Inst14Quest14_HORDE_Aim = Inst14Quest14_Aim
Inst14Quest14_HORDE_Location = Inst14Quest14_Location
Inst14Quest14_HORDE_Note = Inst14Quest14_Note
Inst14Quest14_HORDE_Prequest = Inst14Quest14_Prequest
Inst14Quest14_HORDE_Folgequest = Inst14Quest14_Folgequest
Inst14Quest14PreQuest_HORDE = Inst14Quest14PreQuest
-- No Rewards for this quest

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst14Quest15_HORDE = Inst14Quest15
Inst14Quest15_HORDE_Level = Inst14Quest15_Level
Inst14Quest15_HORDE_Attain = Inst14Quest15_Attain
Inst14Quest15_HORDE_Aim = Inst14Quest15_Aim
Inst14Quest15_HORDE_Location = Inst14Quest15_Location
Inst14Quest15_HORDE_Note = Inst14Quest15_Note
Inst14Quest15_HORDE_Prequest = Inst14Quest15_Prequest
Inst14Quest15_HORDE_Folgequest = Inst14Quest15_Folgequest
Inst14Quest15PreQuest_HORDE = Inst14Quest15PreQuest
--
Inst14Quest15name1_HORDE = Inst14Quest15name1
Inst14Quest15name2_HORDE = Inst14Quest15name2
Inst14Quest15name3_HORDE = Inst14Quest15name3
Inst14Quest15name4_HORDE = Inst14Quest15name4

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst14Quest16_HORDE = Inst14Quest16
Inst14Quest16_HORDE_Level = Inst14Quest16_Level
Inst14Quest16_HORDE_Attain = Inst14Quest16_Attain
Inst14Quest16_HORDE_Aim = Inst14Quest16_Aim
Inst14Quest16_HORDE_Location = Inst14Quest16_Location
Inst14Quest16_HORDE_Note = Inst14Quest16_Note
Inst14Quest16_HORDE_Prequest = Inst14Quest16_Prequest
Inst14Quest16_HORDE_Folgequest = Inst14Quest16_Folgequest
--
Inst14Quest16name1_HORDE = Inst14Quest16name1

--Quest 17 Horde  (same as Quest 17 Alliance)
Inst14Quest17_HORDE = Inst14Quest17
Inst14Quest17_HORDE_Level = Inst14Quest17_Level
Inst14Quest17_HORDE_Attain = Inst14Quest17_Attain
Inst14Quest17_HORDE_Aim = Inst14Quest17_Aim
Inst14Quest17_HORDE_Location = Inst14Quest17_Location
Inst14Quest17_HORDE_Note = Inst14Quest17_Note
Inst14Quest17_HORDE_Prequest = Inst14Quest17_Prequest
Inst14Quest17_HORDE_Folgequest = Inst14Quest17_Folgequest
--
Inst14Quest17name1_HORDE = Inst14Quest17name1

--Quest 18 Horde
Inst14Quest18_HORDE = "18. 吞咽者拉姆斯登"
Inst14Quest18_HORDE_Level = "60"
Inst14Quest18_HORDE_Attain = "56"
Inst14Quest18_HORDE_Aim = "到斯坦索姆去，殺掉吞咽者拉姆斯登。把他的頭顱交給納薩諾斯。"
Inst14Quest18_HORDE_Location = "納薩諾斯·凋零者（東瘟疫之地; "..YELLOW.."22,68"..WHITE.."）"
Inst14Quest18_HORDE_Note = "前置任務也是從他這裏接。拉姆斯登在 "..YELLOW.."[18]"..WHITE.."。"
Inst14Quest18_HORDE_Prequest = "遊俠之王的命令 -> 暗翼蝠"
Inst14Quest18_HORDE_Folgequest = "無"
Inst14Quest18PreQuest_HORDE = "true"
--
Inst14Quest18name1_HORDE = "阿萊克希斯皇家戒指"
Inst14Quest18name2_HORDE = "元素之環"

--Quest 19 Horde  (same as Quest 18 Alliance)
Inst14Quest19_HORDE = "19. 光與影的平衡（牧師任務）"
Inst14Quest19_HORDE_Level = Inst14Quest18_Level
Inst14Quest19_HORDE_Attain = Inst14Quest18_Attain
Inst14Quest19_HORDE_Aim = Inst14Quest18_Aim
Inst14Quest19_HORDE_Location = Inst14Quest18_Location
Inst14Quest19_HORDE_Note = Inst14Quest18_Note
Inst14Quest19_HORDE_Prequest = Inst14Quest18_Prequest
Inst14Quest19_HORDE_Folgequest = Inst14Quest18_Folgequest
Inst14Quest19PreQuest_HORDE = Inst14Quest18PreQuest
--
Inst14Quest19name1_HORDE = Inst14Quest18name1


--------------- INST15 - Sunken Temple (ST) ---------------

Inst15Story = "在一千年之前，強大的古拉巴什王國被一次大型內部戰爭所毀滅。一部份被稱為阿塔萊的巨魔牧師試圖將古代血神哈卡靈魂掠奪者帶回這個世界。雖然這些牧師被擊敗並最終被流放，這個偉大的王國變得四分五裂。流放的牧師逃到了北面，來到了悲傷沼澤。他們為哈卡建立了一座偉大的神廟——在那裏他們期望能夠把哈卡重新帶回世間。偉大的守護神龍伊瑟拉了解了阿塔萊的計劃並將神廟摧毀沈入沼澤之中。在今天，神廟沈沒的遺迹被綠龍所守衛並阻止任何人進入或者出去。然而，有些阿塔萊巨魔從伊瑟拉的怒火中幸存下來並再此獎自己奉獻與複活哈卡的事業中。"
Inst15Caption = "沈沒的神廟（ST）"
Inst15QAA = "16 個任務"
Inst15QAH = "16 個任務"

--Quest 1 Alliance
Inst15Quest1 = "1. 進入阿塔哈卡神廟"
Inst15Quest1_Level = "50"
Inst15Quest1_Attain = "38"
Inst15Quest1_Aim = "為暴風城的布羅哈恩·鐵桶收集10塊阿塔萊石板。"
Inst15Quest1_Location = "布羅哈恩·鐵桶（暴風城 - 矮人區; "..YELLOW.."69,40"..WHITE.."）"
Inst15Quest1_Note = "前置任務在此領取。\n\n石板你在神廟內外裏到處都能見到。"
Inst15Quest1_Prequest = "調查神廟 -> 拉普索迪的故事"
Inst15Quest1_Folgequest = "無"
Inst15Quest1PreQuest = "true"
--
Inst15Quest1name1 = "守護之符"

--Quest 2 Alliance
Inst15Quest2 = "2. 沈沒的神廟"
Inst15Quest2_Level = "51"
Inst15Quest2_Attain = "46"
Inst15Quest2_Aim = "到塔納利斯找到瑪爾馮·瑞文斯克。"
Inst15Quest2_Location = "安吉拉斯·月風（菲拉斯 - 羽月要塞; "..YELLOW.."31,45"..WHITE.."）"
Inst15Quest2_Note = "你可以在 "..YELLOW.."52,45"..WHITE.." 處找到瑪爾馮·瑞文斯克。"
Inst15Quest2_Prequest = "無"
Inst15Quest2_Folgequest = "石環"
-- No Rewards for this quest

--Quest 3 Alliance
Inst15Quest3 = "3. 深入神廟"
Inst15Quest3_Level = "51"
Inst15Quest3_Attain = "46"
Inst15Quest3_Aim = "在悲傷沼澤沈沒的神廟中找到哈卡祭壇。"
Inst15Quest3_Location = "瑪爾馮·瑞文斯克（塔納利斯; "..YELLOW.."52,45"..WHITE.."）"
Inst15Quest3_Note = "祭壇就在圖中 "..YELLOW.."[1]"..WHITE.." 的位置。"
Inst15Quest3_Prequest = "石環"
Inst15Quest3_Folgequest = "無"
Inst15Quest3PreQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst15Quest4 = "4. 雕像群的秘密"
Inst15Quest4_Level = "51"
Inst15Quest4_Attain = "46"
Inst15Quest4_Aim = "到沈沒的神廟去，揭開雕像群中隱藏的秘密。"
Inst15Quest4_Location = "瑪爾馮·瑞文斯克（塔納利斯; "..YELLOW.."52,45"..WHITE.."）"
Inst15Quest4_Note = "雕像群就在圖中 "..YELLOW.."[1]"..WHITE.." 所示位置，按照地圖指示的順序打開他們。"
Inst15Quest4_Prequest = "深入神廟"
Inst15Quest4_Folgequest = "無"
Inst15Quest4PreQuest = "true"
--
Inst15Quest4name1 = "哈卡萊骨灰"

--Quest 5 Alliance
Inst15Quest5 = "5. 邪惡之霧"
Inst15Quest5_Level = "52"
Inst15Quest5_Attain = "47"
Inst15Quest5_Aim = "收集5份阿塔萊之霧的樣本，然後向安戈洛環形山的穆爾金複命。"
Inst15Quest5_Location = "格雷甘·山酒（菲拉斯; "..YELLOW.."45,25"..WHITE.."）"
Inst15Quest5_Note = "前置任務《穆爾金和拉瑞安》開始于穆爾金（安戈洛環形山 - 馬紹爾營地; "..YELLOW.."42,9"..WHITE.."）。你可以從阿塔哈卡神廟裏的神廟深淵潛伏者、黑暗蟲或者融合軟泥怪那裏得到阿塔萊之霧。"
Inst15Quest5_Prequest = "穆爾金和拉瑞安 -> 造訪格雷甘"
Inst15Quest5_Folgequest = "無"
Inst15Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst15Quest6 = "6. 神靈哈卡"
Inst15Quest6_Level = "53"
Inst15Quest6_Attain = "40"
Inst15Quest6_Aim = "將裝滿的哈卡之卵交給塔納利斯的葉基亞。"
Inst15Quest6_Location = "葉基亞（塔納利斯 - 熱砂港; "..YELLOW.."66,22"..WHITE.."）"
Inst15Quest6_Note = "此系列任務始于《尖嘯者的靈魂》（同樣在此領取，見 "..YELLOW.."[祖爾法拉克]"..WHITE.."）。\n你必須在 "..YELLOW.."[3]"..WHITE.." 使用哈卡之卵，觸發事件。一旦事件開始，敵人會像潮水般湧出來攻擊你。其中一些敵人掉落哈卡萊之血。用這些血液熄滅包含哈卡靈魂能量的不滅火焰。當你熄滅所有的火焰時，哈卡的化身就可以進入我們的世界了。"
Inst15Quest6_Prequest = "尖嘯者的靈魂 -> 遠古之卵"
Inst15Quest6_Folgequest = "無"
Inst15Quest6PreQuest = "true"
--
Inst15Quest6name1 = "灰岩頭盔"
Inst15Quest6name2 = "生命之力短劍"
Inst15Quest6name3 = "珠光頭飾"

--Quest 7 Alliance
Inst15Quest7 = "7. 預言者迦瑪蘭"
Inst15Quest7_Level = "53"
Inst15Quest7_Attain = "38"
Inst15Quest7_Aim = "辛特蘭的阿塔萊流放者要你給他帶回迦瑪蘭的頭。"
Inst15Quest7_Location = "阿塔萊流放者（辛特蘭; "..YELLOW.."33,75"..WHITE.."）"
Inst15Quest7_Note = "你可以在 "..YELLOW.."[4]"..WHITE.." 找到迦瑪蘭。"
Inst15Quest7_Prequest = "無"
Inst15Quest7_Folgequest = "無"
--
Inst15Quest7name1 = "雨行護腿"
Inst15Quest7name2 = "流放者頭盔"

--Quest 8 Alliance
Inst15Quest8 = "8. 伊蘭尼庫斯精華"
Inst15Quest8_Level = "55"
Inst15Quest8_Attain = "48"
Inst15Quest8_Aim = "把伊蘭尼庫斯精華放在精華之泉裏，精華之泉就在沈沒的神廟中，伊蘭尼庫斯的巢穴裏。"
Inst15Quest8_Location = "伊蘭尼庫斯精華掉落自（伊蘭尼庫斯的陰影; "..YELLOW.."[6]"..WHITE.."）"
Inst15Quest8_Note = "伊蘭尼庫斯精華要打伊蘭尼庫斯的陰影才能掉落。你可以在 "..YELLOW.."[6]"..WHITE.." 找到他，精華之泉就在他旁邊。"
Inst15Quest8_Prequest = "無"
Inst15Quest8_Folgequest = "無"
--
Inst15Quest8name1 = "被禁锢的伊蘭尼庫斯精華"

--Quest 9 Alliance
Inst15Quest9 = "9. 巨魔的羽毛（術士任務）"
Inst15Quest9_Level = "52"
Inst15Quest9_Attain = "50"
Inst15Quest9_Aim = "到沈沒的神廟去，從巨魔們身上獲得6支巫毒羽毛。"
Inst15Quest9_Location = "伊普斯（費伍德森林; "..YELLOW.."42,45"..WHITE.."）"
Inst15Quest9_Note = "術士職業任務。6小巨魔每只掉一個羽毛。"
Inst15Quest9_Prequest = "小鬼的要求 -> 奇怪的材料"
Inst15Quest9_Folgequest = "無"
Inst15Quest9PreQuest = "true"
--
Inst15Quest9name1 = "靈魂收割者"
Inst15Quest9name2 = "深淵碎片"
Inst15Quest9name3 = "束縛長袍"

--Quest 10 Alliance
Inst15Quest10 = "10. 巫毒羽毛（戰士任務）"
Inst15Quest10_Level = "52"
Inst15Quest10_Attain = "50"
Inst15Quest10_Aim = "將你從沈沒的神廟的巨魔身上得到的巫毒羽毛交給部落英雄的靈魂。"
Inst15Quest10_Location = "部落英雄的靈魂（塵泥沼澤; "..YELLOW.."34,66"..WHITE.."）"
Inst15Quest10_Note = "戰士職業任務。6小巨魔每只掉一個羽毛。"
Inst15Quest10_Prequest = "困擾的靈魂 -> 魔誓者之戰"
Inst15Quest10_Folgequest = "無"
Inst15Quest10PreQuest = "true"
--
Inst15Quest10name1 = "怒火面甲"
Inst15Quest10name2 = "鑽石水瓶"
Inst15Quest10name3 = "刺鋼護肩"

--Quest 11 Alliance
Inst15Quest11 = "11. 更好的材料（德魯伊任務）"
Inst15Quest11_Level = "52"
Inst15Quest11_Attain = "50"
Inst15Quest11_Aim = "從沈沒的神廟底部的守衛身上得到一些腐爛藤蔓，把它們交給托爾瓦·尋路者。"
Inst15Quest11_Location = "托爾瓦·尋路者（安戈洛環形山; "..YELLOW.."72,76"..WHITE.."）"
Inst15Quest11_Note = "德魯伊職業任務。腐爛藤蔓掉落自召喚的阿塔拉利恩 "..YELLOW.."[1]"..WHITE.."，必須正確的破解雕像群的秘密。"
Inst15Quest11_Prequest = "托爾瓦·尋路者 -> 毒性測試"
Inst15Quest11_Folgequest = "無"
Inst15Quest11PreQuest = "true"
--
Inst15Quest11name1 = "斑白毛皮"
Inst15Quest11name2 = " 森林的擁抱"
Inst15Quest11name3 = "月影手杖"

--Quest 12 Alliance
Inst15Quest12 = "12. 神廟中的綠龍（獵人任務）"
Inst15Quest12_Level = "52"
Inst15Quest12_Attain = "50"
Inst15Quest12_Aim = "將摩弗拉斯的牙齒交給艾薩拉的奧汀克。他住在埃達拉斯廢墟東北部懸崖的頂端。"
Inst15Quest12_Location = "奧汀克（艾薩拉; "..YELLOW.."42,43"..WHITE.."）"
Inst15Quest12_Note = "獵人職業任務。摩弗拉斯在 "..YELLOW.."[5]"..WHITE.."。"
Inst15Quest12_Prequest = "獵人的護符 -> 碎浪多頭怪"
Inst15Quest12_Folgequest = "無"
Inst15Quest12PreQuest = "true"
--
Inst15Quest12name1 = "狩獵長矛"
Inst15Quest12name2 = "魔暴龍眼"
Inst15Quest12name3 = "魔暴龍牙"

--Quest 13 Alliance
Inst15Quest13 = "13. 毀滅摩弗拉斯（法師任務）"
Inst15Quest13_Level = "52"
Inst15Quest13_Attain = "50"
Inst15Quest13_Aim = "從摩弗拉斯身上取回奧術碎片，然後返回大法師克希雷姆那兒。"
Inst15Quest13_Location = "大法師克希雷姆，摩弗拉斯（艾薩拉; "..YELLOW.."29,40"..WHITE.."）"
Inst15Quest13_Note = "法師職業任務。摩弗拉斯在 "..YELLOW.."[5]"..WHITE.."。"
Inst15Quest13_Prequest = "法師的會見 -> 納迦的珊瑚"
Inst15Quest13_Folgequest = "無"
Inst15Quest13PreQuest = "true"
--
Inst15Quest13name1 = "冰川之矛"
Inst15Quest13name2 = "奧術水晶墜飾"
Inst15Quest13name3 = "火焰寶石"

--Quest 14 Alliance
Inst15Quest14 = "14. 摩弗拉斯之血（牧師任務）"
Inst15Quest14_Level = "52"
Inst15Quest14_Attain = "50"
Inst15Quest14_Aim = "前往沈沒的阿塔哈卡神廟，殺死綠龍摩弗拉斯，將他的血液交給費伍德森林中的格雷塔·苔蹄。沈沒的神廟的入口就在悲傷沼澤中。"
Inst15Quest14_Location = "奧汀克（艾薩拉; "..YELLOW.."42,43"..WHITE.."）"
Inst15Quest14_Note = "牧師職業任務。摩弗拉斯在"..YELLOW.."[5]"..WHITE.."。格雷塔·苔蹄（費伍德森林 - 翡翠聖地; "..YELLOW.."51,82"..WHITE.."）。"
Inst15Quest14_Prequest = "塞納裏奧議會的求助 -> 亡靈的腐液"
Inst15Quest14_Folgequest = "無"
Inst15Quest14PreQuest = "true"
--
Inst15Quest14name1 = "祝福珠串"
Inst15Quest14name2 = "悲哀之杖"
Inst15Quest14name3 = "希望之環"

--Quest 15 Alliance
Inst15Quest15 = "15. 碧藍鑰匙（盜賊任務）"
Inst15Quest15_Level = "52"
Inst15Quest15_Attain = "50"
Inst15Quest15_Aim = "將碧藍鑰匙交給喬拉齊·拉文霍德公爵。"
Inst15Quest15_Location = " 大法師克希雷姆（艾薩拉; "..YELLOW.."29,40"..WHITE.."）"
Inst15Quest15_Note = "盜賊職業任務。摩弗拉斯 "..YELLOW.."[5]"..WHITE.." 掉落鑰匙。喬拉齊·拉文霍德公爵（奧特蘭克山谷 - 拉文霍德; "..YELLOW.."86,79"..WHITE.."）。"
Inst15Quest15_Prequest = "簡單的要求 -> 密文碎片"
Inst15Quest15_Folgequest = "無"
Inst15Quest15PreQuest = "true"
--
Inst15Quest15name1 = "烏黑面具"
Inst15Quest15name2 = "耳語長靴"
Inst15Quest15name3 = "暗色蝠鬥篷"

--Quest 16 Alliance
Inst15Quest16 = "16. 鑄造力量之石（聖騎士任務）"
Inst15Quest16_Level = "52"
Inst15Quest16_Attain = "50"
Inst15Quest16_Aim = "將巫毒羽毛帶給阿什拉姆·瓦羅菲斯特。"
Inst15Quest16_Location = "阿什拉姆·瓦羅菲斯特（西瘟疫之地 - 寒風營地; "..YELLOW.."43,85"..WHITE.."）"
Inst15Quest16_Note = "聖騎士職業任務。6小巨魔一只掉一個。"
Inst15Quest16_Prequest = "墮落者的天災石"
Inst15Quest16_Folgequest = "無"
Inst15Quest16PreQuest = "true"
--
Inst15Quest16name1 = "神聖力量之石"
Inst15Quest16name2 = "光鑄利刃"
Inst15Quest16name3 = "神聖寶珠"
Inst15Quest16name4 = "禮節徽記"


--Quest 1 Horde
Inst15Quest1_HORDE = "1. 阿塔哈卡神廟"
Inst15Quest1_HORDE_Level = "50"
Inst15Quest1_HORDE_Attain = "38"
Inst15Quest1_HORDE_Aim = "收集20個哈卡神像，把它們帶給斯通納德的費澤魯爾。"
Inst15Quest1_HORDE_Location = "費澤魯爾（悲傷沼澤 - 斯通納德; "..YELLOW.."47,54"..WHITE.."）"
Inst15Quest1_HORDE_Note = "神廟裏的所有敵人都掉落哈卡神像。"
Inst15Quest1_HORDE_Prequest = "淚水之池 -> 向費澤魯爾複命"
Inst15Quest1_HORDE_Folgequest = "無"
Inst15Quest1PreQuest_HORDE = "true"
--
Inst15Quest1name1_HORDE = "守護之符"

--Quest 2 Horde
Inst15Quest2_HORDE = "2. 沈沒的神廟"
Inst15Quest2_HORDE_Level = "51"
Inst15Quest2_HORDE_Attain = "46"
Inst15Quest2_HORDE_Aim = "到塔納利斯找到瑪爾馮·瑞文斯克。"
Inst15Quest2_HORDE_Location = "巫醫尤克裏（菲拉斯; "..YELLOW.."74,43"..WHITE.."）"
Inst15Quest2_HORDE_Note = "瑪爾馮·瑞文斯克的位置在 "..YELLOW.."52,45"..WHITE.."。"
Inst15Quest2_HORDE_Prequest = "無"
Inst15Quest2_HORDE_Folgequest = "石環"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst15Quest3_HORDE = Inst15Quest3
Inst15Quest3_HORDE_Level = Inst15Quest3_Level
Inst15Quest3_HORDE_Attain = Inst15Quest3_Attain
Inst15Quest3_HORDE_Aim = Inst15Quest3_Aim
Inst15Quest3_HORDE_Location = Inst15Quest3_Location
Inst15Quest3_HORDE_Note = Inst15Quest3_Note
Inst15Quest3_HORDE_Prequest = Inst15Quest3_Prequest
Inst15Quest3_HORDE_Folgequest = Inst15Quest3_Folgequest
Inst15Quest3PreQuest_HORDE = Inst15Quest3PreQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst15Quest4_HORDE = Inst15Quest4
Inst15Quest4_HORDE_Level = Inst15Quest4_Level
Inst15Quest4_HORDE_Attain = Inst15Quest4_Attain
Inst15Quest4_HORDE_Aim = Inst15Quest4_Aim
Inst15Quest4_HORDE_Location = Inst15Quest4_Location
Inst15Quest4_HORDE_Note = Inst15Quest4_Note
Inst15Quest4_HORDE_Prequest = Inst15Quest4_Prequest
Inst15Quest4_HORDE_Folgequest = Inst15Quest4_Folgequest
Inst15Quest4PreQuest_HORDE = Inst15Quest4PreQuest
--
Inst15Quest4name1_HORDE = Inst15Quest4name1

--Quest 5 Horde
Inst15Quest5_HORDE = "5. 除草器的燃料"
Inst15Quest5_HORDE_Level = "52"
Inst15Quest5_HORDE_Attain = "47"
Inst15Quest5_HORDE_Aim = "收集5份阿塔萊之霧的樣本，然後將它們送到馬紹爾營地的拉瑞安那裏。"
Inst15Quest5_HORDE_Location = "莉芙·雷茲菲克斯（貧瘠之地; "..YELLOW.."62,38"..WHITE.."）"
Inst15Quest5_HORDE_Note = "前置任務《拉瑞安和穆爾金》開始于拉瑞安（安戈洛環形山; "..YELLOW.."45,8"..WHITE.."）。沈沒的神廟裏的神廟深淵潛伏者、黑暗蟲和軟泥怪身上都有阿塔萊之霧。"
Inst15Quest5_HORDE_Prequest = "拉瑞安和穆爾金 > 瑪爾馮的車間"
Inst15Quest5_HORDE_Folgequest = "無"
Inst15Quest5PreQuest_HORDE = "true"

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst15Quest6_HORDE = Inst15Quest6
Inst15Quest6_HORDE_Level = Inst15Quest6_Level
Inst15Quest6_HORDE_Attain = Inst15Quest6_Attain
Inst15Quest6_HORDE_Aim = Inst15Quest6_Aim
Inst15Quest6_HORDE_Location = Inst15Quest6_Location
Inst15Quest6_HORDE_Note = Inst15Quest6_Note
Inst15Quest6_HORDE_Prequest = Inst15Quest6_Prequest
Inst15Quest6_HORDE_Folgequest = Inst15Quest6_Folgequest
Inst15Quest6PreQuest_HORDE = Inst15Quest6PreQuest
--
Inst15Quest6name1_HORDE = Inst15Quest6name1
Inst15Quest6name2_HORDE = Inst15Quest6name2
Inst15Quest6name3_HORDE = Inst15Quest6name3

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst15Quest7_HORDE = Inst15Quest7
Inst15Quest7_HORDE_Level = Inst15Quest7_Level
Inst15Quest7_HORDE_Attain = Inst15Quest7_Attain
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
Inst15Quest8_HORDE_Level = Inst15Quest8_Level
Inst15Quest8_HORDE_Attain = Inst15Quest8_Attain
Inst15Quest8_HORDE_Aim = Inst15Quest8_Aim
Inst15Quest8_HORDE_Location = Inst15Quest8_Location
Inst15Quest8_HORDE_Note = Inst15Quest8_Note
Inst15Quest8_HORDE_Prequest = Inst15Quest8_Prequest
Inst15Quest8_HORDE_Folgequest = Inst15Quest8_Folgequest
--
Inst15Quest8name1_HORDE = Inst15Quest8name1

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst15Quest9_HORDE = Inst15Quest9
Inst15Quest9_HORDE_Level = Inst15Quest9_Level
Inst15Quest9_HORDE_Attain = Inst15Quest9_Attain
Inst15Quest9_HORDE_Aim = Inst15Quest9_Aim
Inst15Quest9_HORDE_Location = Inst15Quest9_Location
Inst15Quest9_HORDE_Note = Inst15Quest9_Note
Inst15Quest9_HORDE_Prequest = Inst15Quest9_Prequest
Inst15Quest9_HORDE_Folgequest = Inst15Quest9_Folgequest
Inst15Quest9PreQuest_HORDE = Inst15Quest9PreQuest
--
Inst15Quest9name1_HORDE = Inst15Quest9name1
Inst15Quest9name2_HORDE = Inst15Quest9name2
Inst15Quest9name3_HORDE = Inst15Quest9name3

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst15Quest10_HORDE = Inst15Quest10
Inst15Quest10_HORDE_Level = Inst15Quest10_Level
Inst15Quest10_HORDE_Attain = Inst15Quest10_Attain
Inst15Quest10_HORDE_Aim = Inst15Quest10_Aim
Inst15Quest10_HORDE_Location = Inst15Quest10_Location
Inst15Quest10_HORDE_Note = Inst15Quest10_Note
Inst15Quest10_HORDE_Prequest = Inst15Quest10_Prequest
Inst15Quest10_HORDE_Folgequest = Inst15Quest10_Folgequest
Inst15Quest10PreQuest_HORDE = Inst15Quest10PreQuest
--
Inst15Quest10name1_HORDE = Inst15Quest10name1
Inst15Quest10name2_HORDE = Inst15Quest10name2
Inst15Quest10name3_HORDE = Inst15Quest10name3

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst15Quest11_HORDE = Inst15Quest11
Inst15Quest11_HORDE_Level = Inst15Quest11_Level
Inst15Quest11_HORDE_Attain = Inst15Quest11_Attain
Inst15Quest11_HORDE_Aim = Inst15Quest11_Aim
Inst15Quest11_HORDE_Location = Inst15Quest11_Location
Inst15Quest11_HORDE_Note = Inst15Quest11_Note
Inst15Quest11_HORDE_Prequest = Inst15Quest11_Prequest
Inst15Quest11_HORDE_Folgequest = Inst15Quest11_Folgequest
Inst15Quest11PreQuest_HORDE = Inst15Quest11PreQuest
--
Inst15Quest11name1_HORDE = Inst15Quest11name1
Inst15Quest11name2_HORDE = Inst15Quest11name2
Inst15Quest11name3_HORDE = Inst15Quest11name3

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst15Quest12_HORDE = Inst15Quest12
Inst15Quest12_HORDE_Level = Inst15Quest12_Level
Inst15Quest12_HORDE_Attain = Inst15Quest12_Attain
Inst15Quest12_HORDE_Aim = Inst15Quest12_Aim
Inst15Quest12_HORDE_Location = Inst15Quest12_Location
Inst15Quest12_HORDE_Note = Inst15Quest12_Note
Inst15Quest12_HORDE_Prequest = Inst15Quest12_Prequest
Inst15Quest12_HORDE_Folgequest = Inst15Quest12_Folgequest
Inst15Quest12PreQuest_HORDE = Inst15Quest12PreQuest
--
Inst15Quest12name1_HORDE = Inst15Quest12name1
Inst15Quest12name2_HORDE = Inst15Quest12name2
Inst15Quest12name3_HORDE = Inst15Quest12name3

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst15Quest13_HORDE = Inst15Quest13
Inst15Quest13_HORDE_Level = Inst15Quest13_Level
Inst15Quest13_HORDE_Attain = Inst15Quest13_Attain
Inst15Quest13_HORDE_Aim = Inst15Quest13_Aim
Inst15Quest13_HORDE_Location = Inst15Quest13_Location
Inst15Quest13_HORDE_Note = Inst15Quest13_Note
Inst15Quest13_HORDE_Prequest = Inst15Quest13_Prequest
Inst15Quest13_HORDE_Folgequest = Inst15Quest13_Folgequest
Inst15Quest13PreQuest_HORDE = Inst15Quest13PreQuest
--
Inst15Quest13name1_HORDE = Inst15Quest13name1
Inst15Quest13name2_HORDE = Inst15Quest13name2
Inst15Quest13name3_HORDE = Inst15Quest13name3

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst15Quest14_HORDE = Inst15Quest14
Inst15Quest14_HORDE_Level = Inst15Quest14_Level
Inst15Quest14_HORDE_Attain = Inst15Quest14_Attain
Inst15Quest14_HORDE_Aim = Inst15Quest14_Aim
Inst15Quest14_HORDE_Location = Inst15Quest14_Location
Inst15Quest14_HORDE_Note = Inst15Quest14_Note
Inst15Quest14_HORDE_Prequest = Inst15Quest14_Prequest
Inst15Quest14_HORDE_Folgequest = Inst15Quest14_Folgequest
Inst15Quest14PreQuest_HORDE = Inst15Quest14PreQuest
--
Inst15Quest14name1_HORDE = Inst15Quest14name1
Inst15Quest14name2_HORDE = Inst15Quest14name2
Inst15Quest14name3_HORDE = Inst15Quest14name3

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst15Quest15_HORDE = Inst15Quest15
Inst15Quest15_HORDE_Level = Inst15Quest15_Level
Inst15Quest15_HORDE_Attain = Inst15Quest15_Attain
Inst15Quest15_HORDE_Aim = Inst15Quest15_Aim
Inst15Quest15_HORDE_Location = Inst15Quest15_Location
Inst15Quest15_HORDE_Note = Inst15Quest15_Note
Inst15Quest15_HORDE_Prequest = Inst15Quest15_Prequest
Inst15Quest15_HORDE_Folgequest = Inst15Quest15_Folgequest
Inst15Quest15PreQuest_HORDE = Inst15Quest15PreQuest
--
Inst15Quest15name1_HORDE = Inst15Quest15name1
Inst15Quest15name2_HORDE = Inst15Quest15name2
Inst15Quest15name3_HORDE = Inst15Quest15name3

--Quest 16 Horde
Inst15Quest16_HORDE = "16. 巫毒羽毛（薩滿任務）"
Inst15Quest16_HORDE_Level = "52"
Inst15Quest16_HORDE_Attain = "50"
Inst15Quest16_HORDE_Aim = "將巫毒羽毛交給捕風者巴斯拉。"
Inst15Quest16_HORDE_Location = "捕風者巴斯拉（奧特蘭克山脈; "..YELLOW.."80,67"..WHITE.."）"
Inst15Quest16_HORDE_Note = "薩滿職業任務。6小巨魔每只掉一個羽毛。"
Inst15Quest16_HORDE_Prequest = "有，靈魂圖騰"
Inst15Quest16_HORDE_Folgequest = "無"
Inst15Quest16PreQuest_HORDE = "true"
--
Inst15Quest16name1_HORDE = "藍銅之拳"
Inst15Quest16name2_HORDE = "被迷惑的水之魂"
Inst15Quest16name3_HORDE = "荒野之杖"

--------------- INST16 - Uldaman (Ulda) ---------------

Inst16Story = "奧達曼是古代泰坦創世之時所留下的深埋于地下的城市。矮人探險隊最近發覺到了這塊被遺忘的城市，將泰坦一款失敗的創造物：食腭怪喚醒了。傳說說泰坦是從石頭中創造了食腭怪。當實施證明這次試驗很失敗的時候，泰坦把食腭怪鎖了起來並進行了第二次的嘗試——最終創造了矮人這個種族。矮人創造的秘密被記錄在精密的白金圓盤中——那是位于古代城市最底部的大型泰坦遺迹。最近，黑鐵矮人在奧達曼進行了一系列的侵入活動，希望為他們的火焰之主拉格納羅斯獲得圓盤。然而，在這個地下城市中，有一些巨大的石頭守衛會攻擊任何入侵者。而白金圓盤是由一名巨大的石頭守衛阿紮達斯。有傳言說矮人的一些石頭皮膚的祖先，土靈還居住在城市的隱蔽之處。"
Inst16Caption = "奧達曼（Ulda）"
Inst16QAA = "17 個任務"
Inst16QAH = "11 個任務"

--Quest 1 Alliance
Inst16Quest1 = "1. 一線希望"
Inst16Quest1_Level = "35"
Inst16Quest1_Attain = "35"
Inst16Quest1_Aim = "在奧達曼找到鐵趾格雷茲。"
Inst16Quest1_Location = "勘察員雷杜爾（荒蕪之地; "..YELLOW.."53,43 "..WHITE.."）"
Inst16Quest1_Note = "前置任務始于弄皺的地圖（荒蕪之地; "..YELLOW.."53,33"..WHITE.."）。\n你可以在進入 "..YELLOW.."副本入口地圖[1]"..WHITE.." 找到鐵趾格雷茲。"
Inst16Quest1_Prequest = "一線希望"
Inst16Quest1_Folgequest = "鐵趾的護符"
Inst16Quest1PreQuest = "true"
-- No Rewards for this quest

--Quest 2 Alliance
Inst16Quest2 = "2. 鐵趾的護符"
Inst16Quest2_Level = "40"
Inst16Quest2_Attain = "35"
Inst16Quest2_Aim = "找到鐵趾的護符，把它交給奧達曼的鐵趾。"
Inst16Quest2_Location = "鐵趾格雷茲（奧達曼; "..YELLOW.."副本入口地圖[1]"..WHITE.."）。"
Inst16Quest2_Note = "馬格雷甘·深影掉落鐵趾的護符 "..YELLOW.."副本入口地圖[2]"..WHITE.."。"
Inst16Quest2_Prequest = "一線希望"
Inst16Quest2_Folgequest = "鐵趾的遺願"
Inst16Quest2FQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst16Quest3 = "3. 意志石板"
Inst16Quest3_Level = "45"
Inst16Quest3_Attain = "35"
Inst16Quest3_Aim = "找到意志石板，把它們交給鐵爐堡的顧問貝爾格拉姆。"
Inst16Quest3_Location = "顧問貝爾格拉姆（鐵爐堡 - 探險者大廳; "..YELLOW.."77,10 "..WHITE.."）"
Inst16Quest3_Note = "石板位置在 "..YELLOW.."[8]"..WHITE.."。"
Inst16Quest3_Prequest = "鐵趾的護符 -> 邪惡的使者"
Inst16Quest3_Folgequest = "無"
Inst16Quest3FQuest = "true"
--
Inst16Quest3name1 = "勇氣勳章"

--Quest 4 Alliance
Inst16Quest4 = "4. 能量石"
Inst16Quest4_Level = "36"
Inst16Quest4_Attain = "30"
Inst16Quest4_Aim = "給荒蕪之地的裏格弗茲帶去8塊德提亞姆能量石和8塊安納洛姆能量石。"
Inst16Quest4_Location = "裏格弗茲（荒蕪之地; "..YELLOW.."42,52 "..WHITE.."）"
Inst16Quest4_Note = "能量石可以在副本內外的暗爐敵人身上找到。"
Inst16Quest4_Prequest = "無"
Inst16Quest4_Folgequest = "無"
--
Inst16Quest4name1 = "能量石環"
Inst16Quest4name2 = "杜拉辛護腕"
Inst16Quest4name3 = "持久長靴"

--Quest 5 Alliance
Inst16Quest5 = "5. 阿戈莫德的命運"
Inst16Quest5_Level = "38"
Inst16Quest5_Attain = "30"
Inst16Quest5_Aim = "收集4個雕紋石罐，把它們交給洛克莫丹的勘察員基恩薩·鐵環。"
Inst16Quest5_Location = "勘察員基恩薩·鐵環（洛克莫丹 - 鐵環挖掘場; "..YELLOW.."65,65 "..WHITE.."）"
Inst16Quest5_Note = "前置任務始于勘察員塔伯斯·雷矛（鐵爐堡 - 探險者大廳; "..YELLOW.."74,12"..WHITE.."）。\n雕紋石罐散布于副本前的山洞裏。"
Inst16Quest5_Prequest = "鐵環挖掘場需要你！ -> 莫達洛克"
Inst16Quest5_Folgequest = "無"
Inst16Quest5PreQuest = "true"
--
Inst16Quest5name1 = "勘察者手套"

--Quest 6 Alliance
Inst16Quest6 = "6. 化解災難"
Inst16Quest6_Level = "40"
Inst16Quest6_Attain = "30"
Inst16Quest6_Aim = "把雷烏納石板帶給迷失者塞爾杜林。"
Inst16Quest6_Location = "迷失者塞爾杜林（荒蕪之地; "..YELLOW.."51,76 "..WHITE.."）"
Inst16Quest6_Note = "石板在洞穴北部，通道的東部盡頭 "..YELLOW.."副本入口地圖[3]"..WHITE.."。"
Inst16Quest6_Prequest = "無"
Inst16Quest6_Folgequest = "遠赴鐵爐堡"
--
Inst16Quest6name1 = "末日預言者長袍"

--Quest 7 Alliance
Inst16Quest7 = "7. 失蹤的矮人"
Inst16Quest7_Level = "40"
Inst16Quest7_Attain = "35"
Inst16Quest7_Aim = "在奧達曼找到巴爾洛戈。"
Inst16Quest7_Location = "勘察員塔伯斯·雷矛（鐵爐堡 - 探險者大廳; "..YELLOW.."75,12 "..WHITE.."）"
Inst16Quest7_Note = "巴爾洛戈在 "..YELLOW.."[1]"..WHITE.."。"
Inst16Quest7_Prequest = "無"
Inst16Quest7_Folgequest = "密室"
-- No Rewards for this quest

--Quest 8 Alliance
Inst16Quest8 = "8. 密室"
Inst16Quest8_Level = "40"
Inst16Quest8_Attain = "35"
Inst16Quest8_Aim = "閱讀巴爾洛戈的日記，探索密室，然後向鐵爐堡的勘察員塔伯斯·雷矛彙報。"
Inst16Quest8_Location = "巴爾洛戈（奧達曼; "..YELLOW.."[1]"..WHITE.."）"
Inst16Quest8_Note = "密室在 "..YELLOW.."[4]"..WHITE.."。打開密室需要從魯維羅什 "..YELLOW.."[3]"..WHITE.." 得到索爾之杖，和從巴爾洛戈的箱子 "..YELLOW.."[1]"..WHITE.." 得到尼基夫徽章，兩者結合得到史前法杖。使用法杖在地圖室在 "..YELLOW.."[3] 和 [4]"..WHITE.." 之間召喚艾隆納亞。殺死她後，進入密室得到任務獎勵。"
Inst16Quest8_Prequest = "失蹤的矮人"
Inst16Quest8_Folgequest = "無"
Inst16Quest8FQuest = "true"
--
Inst16Quest8name1 = "矮人沖鋒斧"
Inst16Quest8name2 = "探險者聯盟徽章"

--Quest 9 Alliance
Inst16Quest9 = "9. 破碎的項鏈"
Inst16Quest9_Level = "41"
Inst16Quest9_Attain = "37"
Inst16Quest9_Aim = "找到破碎的項鏈的來源，從而了解其潛在的價值。"
Inst16Quest9_Location = "破碎的項鏈（奧達曼內隨機掉落）"
Inst16Quest9_Note = "把項鏈帶給鐵爐堡的塔瓦斯德·基瑟爾（鐵爐堡 - 秘法區; "..YELLOW.."36,3"..WHITE.."）。"
Inst16Quest9_Prequest = "無"
Inst16Quest9_Folgequest = "昂貴的知識"
-- No Rewards for this quest

--Quest 10 Alliance
Inst16Quest10 = "10. 回到奧達曼"
Inst16Quest10_Level = "42"
Inst16Quest10_Attain = "37"
Inst16Quest10_Aim = "去奧達曼尋找塔瓦斯的魔法項鏈，被殺的聖騎士是最後一個拿著它的人。"
Inst16Quest10_Location = "塔瓦斯德·基瑟爾（鐵爐堡 - 秘法區; "..YELLOW.."36,3 "..WHITE.."）"
Inst16Quest10_Note = "聖騎士在 "..YELLOW.."[2]"..WHITE.."。"
Inst16Quest10_Prequest = "昂貴的知識"
Inst16Quest10_Folgequest = "尋找寶石"
Inst16Quest10FQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst16Quest11 = "11. 尋找寶石"
Inst16Quest11_Level = "43"
Inst16Quest11_Attain = "37"
Inst16Quest11_Aim = "在奧達曼尋找紅寶石、藍寶石和黃寶石的下落。找到它們之後，通過塔瓦斯德給你的占蔔之瓶和他進行聯系。"
Inst16Quest11_Location = "聖騎士的遺體（奧達曼; "..YELLOW.."[2]"..WHITE.."）"
Inst16Quest11_Note = "寶石在 "..YELLOW.."[1]"..WHITE.." 顯眼的石罐內，"..YELLOW.."[8]"..WHITE.." 暗影熔爐地窖內和 "..YELLOW.."[9]"..WHITE.." 的格瑞姆洛克掉落。注意：打開暗影熔爐地窖會出現一些怪物。使用塔瓦斯德的占蔔之碗完成和進行後續任務。"
Inst16Quest11_Prequest = "回到奧達曼"
Inst16Quest11_Folgequest = "修複項鏈"
Inst16Quest11FQuest = "true"
-- No Rewards for this quest

--Quest 12 Alliance
Inst16Quest12 = "12. 修複項鏈"
Inst16Quest12_Level = "44"
Inst16Quest12_Attain = "37"
Inst16Quest12_Aim = "從奧達曼最強大的石人身上獲得能量源，然後將其交給鐵爐堡的塔瓦斯德。"
Inst16Quest12_Location = "塔瓦斯德的占蔔之碗"
Inst16Quest12_Note = "破碎項鏈的能量源在阿紮達斯掉落 "..YELLOW.."[10]"..WHITE.."。"
Inst16Quest12_Prequest = "尋找寶石"
Inst16Quest12_Folgequest = "無"
--
Inst16Quest12name1 = "塔瓦斯德的魔法項鏈"
Inst16Quest12FQuest = "true"

--Quest 13 Alliance
Inst16Quest13 = "13. 奧達曼的蘑菇"
Inst16Quest13_Level = "42"
Inst16Quest13_Attain = "38"
Inst16Quest13_Aim = "收集12顆紫色蘑菇，把它們交給塞爾薩瑪的加克。"
Inst16Quest13_Location = "加克（洛克莫丹 - 塞爾薩瑪; "..YELLOW.."37,49 "..WHITE.."）"
Inst16Quest13_Note = "蘑菇散布于副本各處，如果你開追蹤草藥的話能很容易的在小地圖上看見，前置任務接自同一個 NPC。"
Inst16Quest13_Prequest = "荒蕪之地的材料"
Inst16Quest13_Folgequest = "無"
Inst16Quest13PreQuest = "true"
--
Inst16Quest13name1 = "滋補藥劑"

--Quest 14 Alliance
Inst16Quest14 = "14. 失而複得"
Inst16Quest14_Level = "43"
Inst16Quest14_Attain = "33"
Inst16Quest14_Aim = "到奧達曼的北部大廳去找到克羅姆·粗臂的箱子，從裏面拿出他的寶貴財産，然後回到鐵爐堡把東西交給他。"
Inst16Quest14_Location = "克羅姆·粗臂（鐵爐堡 - 探險者大廳; "..YELLOW.."74,9 "..WHITE.."）"
Inst16Quest14_Note = "你在進入副本前就找到克羅姆·粗臂的財産。它就在洞穴的北部，第一個通道的東南角盡頭 "..YELLOW.."副本入口地圖[4]"..WHITE.."。"
Inst16Quest14_Prequest = "無"
Inst16Quest14_Folgequest = "無"
-- No Rewards for this quest

--Quest 15 Alliance
Inst16Quest15 = "15. 白金圓盤"
Inst16Quest15_Level = "47"
Inst16Quest15_Attain = "40"
Inst16Quest15_Aim = "和石頭守護者交談，從他那裏了解更多古代的知識。一旦你了解到了所有的內容之後就激活諾甘農圓盤。-> 把迷你版的諾甘農圓盤帶到鐵爐堡的探險者協會去。"
Inst16Quest15_Location = "諾甘農圓盤（奧達曼; "..YELLOW.."[11]"..WHITE.."）"
Inst16Quest15_Note = "接到任務後，和石頭守護者交談左邊的盤子。然後再次使用白金圓盤，取得縮小版的圓盤，並把縮小版的白金圓盤帶給資深探險家麥格拉斯（鐵爐堡 - 探險者大廳; "..YELLOW.."69,18"..WHITE.."）。後續任務可以從旁邊的 NPC 那裏接到。"
Inst16Quest15_Prequest = "無"
Inst16Quest15_Folgequest = "奧丹姆的線索"
--
Inst16Quest15name1 = "軟皮袋"
Inst16Quest15name2 = "超強治療藥水"
Inst16Quest15name3 = "強效法力藥水"

--Quest 16 Alliance
Inst16Quest16 = "16. 奧達曼的能量源（法師任務）"
Inst16Quest16_Level = "40"
Inst16Quest16_Attain = "35"
Inst16Quest16_Aim = "找到一個黑曜石能量源，將其交給塵泥沼澤的塔貝薩。"
Inst16Quest16_Location = "塔貝薩（塵泥沼澤; "..YELLOW.."46,57 "..WHITE.."）"
Inst16Quest16_Note = "這個任務只能法師做！\n黑曜石哨兵 "..YELLOW.."[5]"..WHITE.." 掉落黑曜石能量源。"
Inst16Quest16_Prequest = "驅除魔鬼"
Inst16Quest16_Folgequest = "法力怒靈"
Inst16Quest16PreQuest = "true"
-- No Rewards for this quest

--Quest 17 Alliance
Inst16Quest17 = "17. 精鐵礦石"
Inst16Quest17_Level = "42"
Inst16Quest17_Attain = "29"
Inst16Quest17_Aim = "為千針石林的普茲克帶回4塊精鐵礦石。"
Inst16Quest17_Location = "普茲克（千針石林 - 沙漠賽道; "..YELLOW.."80.1, 75.9"..WHITE.."）"
Inst16Quest17_Note = "這是一個前置任務完成後的一個重複任務。這並不會給你聲望或經驗獎勵，只有少量的金錢。精鐵礦石可以在奧達曼內采礦或者從其他玩家那裏購買。"
Inst16Quest17_Prequest = "跟上節奏 -> 瑞茲爾的圖表"
Inst16Quest17_Folgequest = "無"
Inst16Quest17PreQuest = "true"
-- No Rewards for this quest



--Quest 1 Horde  (same as Quest 4 Alliance)
Inst16Quest1_HORDE = "1. 能量石"
Inst16Quest1_HORDE_Level = Inst16Quest4_Level
Inst16Quest1_HORDE_Attain = Inst16Quest4_Attain
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
Inst16Quest2_HORDE = "2. 化解災難"
Inst16Quest2_HORDE_Level = Inst16Quest6_Level
Inst16Quest2_HORDE_Attain = Inst16Quest6_Attain
Inst16Quest2_HORDE_Aim = Inst16Quest6_Aim
Inst16Quest2_HORDE_Location = Inst16Quest6_Location
Inst16Quest2_HORDE_Note = Inst16Quest6_Note
Inst16Quest2_HORDE_Prequest = Inst16Quest6_Prequest
Inst16Quest2_HORDE_Folgequest = "遠赴幽暗城"
--
Inst16Quest2name1_HORDE = Inst16Quest6name1

--Quest 3 Horde
Inst16Quest3_HORDE = "3. 搜尋項鏈"
Inst16Quest3_HORDE_Level = "41"
Inst16Quest3_HORDE_Attain = "37"
Inst16Quest3_HORDE_Aim = "在奧達曼挖掘場中尋找一條珍貴的項鏈，然後將其交給奧格瑞瑪的德蘭·杜佛斯。項鏈有可能已經損壞。"
Inst16Quest3_HORDE_Location = "德蘭·杜佛斯（奧格瑞瑪 - 暗巷區; "..YELLOW.."59,36 "..WHITE.."）"
Inst16Quest3_HORDE_Note = "項鏈在副本裏是隨機掉落的。"
Inst16Quest3_HORDE_Prequest = "無"
Inst16Quest3_HORDE_Folgequest = "搜尋項鏈，再來一次"
-- No Rewards for this quest

--Quest 4 Horde
Inst16Quest4_HORDE = "4. 搜尋項鏈，再來一次"
Inst16Quest4_HORDE_Level = "41"
Inst16Quest4_HORDE_Attain = "37"
Inst16Quest4_HORDE_Aim = "在奧達曼裏找尋寶石的線索。"
Inst16Quest4_HORDE_Location = "德蘭·杜佛斯（奧格瑞瑪 - 暗巷區; "..YELLOW.."59,36 "..WHITE.."）"
Inst16Quest4_HORDE_Note = "聖騎士在 "..YELLOW.."[2]"..WHITE.."。"
Inst16Quest4_HORDE_Prequest = "搜尋項鏈"
Inst16Quest4_HORDE_Folgequest = "翻譯日記"
Inst16Quest4FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 5 Horde
Inst16Quest5_HORDE = "5. 翻譯日記"
Inst16Quest5_HORDE_Level = "42"
Inst16Quest5_HORDE_Attain = "37"
Inst16Quest5_HORDE_Aim = "在荒蕪之地的卡加斯哨所裏尋找一個可以幫你翻譯聖騎士日記的人。"
Inst16Quest5_HORDE_Location = "聖騎士的遺體（奧達曼; "..YELLOW.."[2]"..WHITE.."）"
Inst16Quest5_HORDE_Note = "翻譯聖騎士日記的人加卡爾（荒蕪之地 - 卡加斯; "..YELLOW.."2,46"..WHITE.."） -> 將項鏈借給加卡爾，他幫你翻譯日記。"
Inst16Quest5_HORDE_Prequest = "搜尋項鏈，再來一次"
Inst16Quest5_HORDE_Folgequest = "尋找寶貝"
Inst16Quest5FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 6 Horde
Inst16Quest6_HORDE = "6. 尋找寶貝"
Inst16Quest6_HORDE_Level = "44"
Inst16Quest6_HORDE_Attain = "37"
Inst16Quest6_HORDE_Aim = "從奧達曼找回項鏈上的所有三塊寶石和能量源，然後把它們交給卡加斯的加卡爾。\n紅寶石被藏在暗影矮人層層設防的地區。\n黃寶石藏在石腭怪活動地區的一個甕中。\n藍寶石在格瑞姆洛克手中，他是石腭怪的領袖。\n能量源可能在奧達曼的某個最強生物的手中。"
Inst16Quest6_HORDE_Location = "加卡爾（荒蕪之地 - 卡加斯; "..YELLOW.."2,46 "..WHITE.."）"
Inst16Quest6_HORDE_Note = "寶石在 "..YELLOW.."[1]"..WHITE.." 顯眼的石罐內，"..YELLOW.."[8]"..WHITE.." 暗影熔爐地窖內和 "..YELLOW.."[9]"..WHITE.." 的格瑞姆洛克掉落。注意：打開暗影熔爐地窖會出現一些怪物。使用塔瓦斯德的占蔔之碗完成和進行下一步任務。"
Inst16Quest6_HORDE_Prequest = "翻譯日記"
Inst16Quest6_HORDE_Folgequest = "交付寶石"
Inst16Quest6FQuest_HORDE = "true"
--
Inst16Quest6name1_HORDE = "加卡爾的強化項鏈"

--Quest 7 Horde
Inst16Quest7_HORDE = "7. 奧達曼的蘑菇"
Inst16Quest7_HORDE_Level = "42"
Inst16Quest7_HORDE_Attain = "36"
Inst16Quest7_HORDE_Aim = "收集12顆紫色蘑菇，把它們交給卡加斯的加卡爾。"
Inst16Quest7_HORDE_Location = "加卡爾（荒蕪之地 - 卡加斯; "..YELLOW.."2,69 "..WHITE.."）"
Inst16Quest7_HORDE_Note = "前置任務也是在加卡爾這兒領取。\n蘑菇散布于副本各處，如果你開追蹤草藥的話能很容易的在小地圖上看見，前置任務接自同一個 NPC。"
Inst16Quest7_HORDE_Prequest = "荒蕪之地的材料"
Inst16Quest7_HORDE_Folgequest = "荒蕪之地的材料 II"
Inst16Quest7PreQuest_HORDE = "true"
--
Inst16Quest7name1_HORDE = "滋補藥劑"

--Quest 8 Horde
Inst16Quest8_HORDE = "8. 尋找寶藏"
Inst16Quest8_HORDE_Level = "43"
Inst16Quest8_HORDE_Attain = "33"
Inst16Quest8_HORDE_Aim = "從奧達曼南部大廳的箱子中找到加勒特的家族寶藏，然後把它交給幽暗城的帕特裏克·加瑞特。"
Inst16Quest8_HORDE_Location = "帕特裏克·加瑞特（幽暗城; "..YELLOW.."72,48 "..WHITE.."）"
Inst16Quest8_HORDE_Note = "你在進入副本之前就會找到加勒特的家族寶藏。它就在南部通道的盡頭 "..YELLOW.."副本入口地圖[5]"..WHITE.."。"
Inst16Quest8_HORDE_Prequest = "無"
Inst16Quest8_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 9 Horde
Inst16Quest9_HORDE = "9. 白金圓盤"
Inst16Quest9_HORDE_Level = "47"
Inst16Quest9_HORDE_Attain = "40"
Inst16Quest9_HORDE_Aim = "和石頭守護者交談，從他那裏了解更多古代的知識。一旦你了解到了所有的內容之後就激活諾甘農圓盤。-> 把迷你版的諾甘農圓盤帶到雷霆崖的賢者（聖者圖希克）那裏。"
Inst16Quest9_HORDE_Location = "諾甘農圓盤（奧達曼; "..YELLOW.."[11]"..WHITE.."）"
Inst16Quest9_HORDE_Note = "接到任務後，和石頭守護者交談左邊的盤子。然後再次使用白金圓盤，取得縮小版的圓盤，並把縮小版的白金圓盤帶給聖者圖希克（雷霆崖; "..YELLOW.."34,46"..WHITE.."）。後續任務可以從旁邊的 NPC 那裏接到。"
Inst16Quest9_HORDE_Prequest = "無"
Inst16Quest9_HORDE_Folgequest = "奧丹姆的線索"
--
Inst16Quest9name1_HORDE = "軟皮袋"
Inst16Quest9name2_HORDE = "超強治療藥水"
Inst16Quest9name3_HORDE = "強效法力藥水"

--Quest 10 Horde  (same as Quest 4 Alliance)
Inst16Quest10_HORDE = "10. 奧達曼的能量源（法師任務）"
Inst16Quest10_HORDE_Level = Inst16Quest16_Level
Inst16Quest10_HORDE_Attain = Inst16Quest16_Attain
Inst16Quest10_HORDE_Aim = Inst16Quest16_Aim
Inst16Quest10_HORDE_Location = Inst16Quest16_Location
Inst16Quest10_HORDE_Note = Inst16Quest16_Note
Inst16Quest10_HORDE_Prequest = Inst16Quest16_Prequest
Inst16Quest10_HORDE_Folgequest = Inst16Quest16_Folgequest
Inst16Quest10PreQuest_HORDE = Inst16Quest16PreQuest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 17 Alliance)
Inst16Quest11_HORDE = "11. 精鐵礦石"
Inst16Quest11_HORDE_Level = Inst16Quest17_Level
Inst16Quest11_HORDE_Attain = Inst16Quest17_Attain
Inst16Quest11_HORDE_Aim = Inst16Quest17_Aim
Inst16Quest11_HORDE_Location = Inst16Quest17_Location
Inst16Quest11_HORDE_Note = Inst16Quest17_Note
Inst16Quest11_HORDE_Prequest = Inst16Quest17_Prequest
Inst16Quest11_HORDE_Folgequest = Inst16Quest17_Folgequest
Inst16Quest11PreQuest_HORDE = Inst16Quest17PreQuest
-- No Rewards for this quest


--------------- INST17 - Blackfathom Deeps (BFD) ---------------

Inst17Story = "位于灰谷佐拉姆海岸的黑暗深淵曾經是為供奉暗夜精靈月神艾露尼爾建造的。然而，在大爆炸中，神廟受到極大的沖擊然後沈入了海中。它一直保持著原樣——直到，其蘊含的古老的力量吸引來了納迦和薩特。傳說，古代怪獸阿庫麥爾就居住在神廟遺迹中。作為古代之神最喜歡的寵物之一，阿庫麥爾就一直生活在這個地區進行捕食。在阿庫麥爾的吸引下，一群被稱作幕光之錘的教徒也聚集在這裏從事邪惡的勾當。"
Inst17Caption = "黑暗深淵（BFD）"
Inst17QAA = "6 個任務"
Inst17QAH = "5 個任務"

--Quest 1 Alliance
Inst17Quest1 = "1. 深淵中的知識"
Inst17Quest1_Level = "23"
Inst17Quest1_Attain = "19"
Inst17Quest1_Aim = "把洛迦裏斯手稿帶給鐵爐堡的葛利·硬骨。"
Inst17Quest1_Location = "葛利·硬骨（鐵爐堡 - 荒棄的洞穴; "..YELLOW.."50,5"..WHITE.."）"
Inst17Quest1_Note = "你可以在靠近 "..YELLOW.."[2]"..WHITE.." 的水中找到手稿。"
Inst17Quest1_Prequest = "無"
Inst17Quest1_Folgequest = "無"
--
Inst17Quest1name1 = "鼓勵之戒"

--Quest 2 Alliance
Inst17Quest2 = "2. 研究墮落"
Inst17Quest2_Level = "24"
Inst17Quest2_Attain = "18"
Inst17Quest2_Aim = "奧伯丁的戈沙拉·夜語需要8塊墮落者的腦幹。"
Inst17Quest2_Location = "戈沙拉·夜語（黑海岸 - 奧伯丁; "..YELLOW.."38,43"..WHITE.."）"
Inst17Quest2_Note = "前置任務可以從阿古斯·夜語（暴風城 - 花園; "..YELLOW.."36,67"..WHITE.."）處得到。\n\n黑暗深淵副本裏面和門前的所有納迦都可能掉落腦幹。"
Inst17Quest2_Prequest = "遙遠的旅途"
Inst17Quest2_Folgequest = "無"
Inst17Quest2PreQuest = "true"
--
Inst17Quest2name1 = "蟲殼護腕"
Inst17Quest2name2 = "教士鬥篷"

--Quest 3 Alliance
Inst17Quest3 = "3. 尋找塞爾瑞德"
Inst17Quest3_Level = "24"
Inst17Quest3_Attain = "18"
Inst17Quest3_Aim = "到黑色深淵去找到銀月守衛塞爾瑞德。"
Inst17Quest3_Location = "哨兵山德拉斯（達納蘇斯 - 工匠區; "..YELLOW.."55,24"..WHITE.."）"
Inst17Quest3_Note = "你可以在 "..YELLOW.."[4]"..WHITE.." 找到銀月守衛塞爾瑞德。"
Inst17Quest3_Prequest = "無"
Inst17Quest3_Folgequest = "黑暗深淵中的惡魔"
-- No Rewards for this quest

--Quest 4 Alliance
Inst17Quest4 = "4. 黑暗深淵中的惡魔"
Inst17Quest4_Level = "27"
Inst17Quest4_Attain = "18"
Inst17Quest4_Aim = "把夢遊者克爾裏斯的頭顱交給達納蘇斯的哨兵塞爾高姆。"
Inst17Quest4_Location = "哨兵塞爾瑞德（黑暗深淵; "..YELLOW.."[4]"..WHITE.."）"
Inst17Quest4_Note = "克爾裏斯在 "..YELLOW.."[8]"..WHITE.."。你可以哨兵找到塞爾高姆（達納蘇斯 - 工匠區; "..YELLOW.."55,24"..WHITE.."）。注意！如果你點燃了克爾裏斯旁邊的火焰，敵人會出現並攻擊你。"
Inst17Quest4_Prequest = "尋找塞爾瑞德"
Inst17Quest4_Folgequest = "無"
Inst17Quest4FQuest = "true"
--
Inst17Quest4name1 = "墓碑節杖"
Inst17Quest4name2 = "極光圓盾"

--Quest 5 Alliance
Inst17Quest5 = "5. 暮光之錘的末日"
Inst17Quest5_Level = "25"
Inst17Quest5_Attain = "20"
Inst17Quest5_Aim = "收集10個暮光墜飾，把它們交給達納蘇斯的銀月守衛瑪納杜斯。"
Inst17Quest5_Location = "銀月守衛瑪納杜斯（達納蘇斯 - 工匠區; "..YELLOW.."55,23"..WHITE.."）"
Inst17Quest5_Note = "每個暮光敵人都會掉落墜飾。"
Inst17Quest5_Prequest = "無"
Inst17Quest5_Folgequest = "無"
--
Inst17Quest5name1 = "雲光長靴"
Inst17Quest5name2 = "赤木束帶"

--Quest 6 Alliance
Inst17Quest6 = "6. 索蘭魯克寶珠（術士任務）"
Inst17Quest6_Level = "25"
Inst17Quest6_Attain = "20"
Inst17Quest6_Aim = "找到3塊索蘭魯克寶珠的碎片和1塊索蘭魯克寶珠的大碎片，把它們交給貧瘠之地的杜安·卡漢。"
Inst17Quest6_Location = "杜安·卡漢（貧瘠之地; "..YELLOW.."49,57"..WHITE.."）"
Inst17Quest6_Note = "只有術士才能得到這個任務！3塊索蘭魯克寶珠的碎片，你可以從 "..YELLOW.."[黑暗深淵]"..WHITE.." 的暮光侍僧那裏得到。那塊索蘭魯克寶珠的大碎片，你要去 "..YELLOW.."[影牙城堡]"..WHITE.." 找影牙魔魂狼人。"
Inst17Quest6_Prequest = "無"
Inst17Quest6_Folgequest = "無"
--
Inst17Quest6name1 = "索蘭魯克寶珠"
Inst17Quest6name2 = "索拉魯克法杖"


--Quest 1 Horde
Inst17Quest1_HORDE = "1. 阿庫麥爾水晶"
Inst17Quest1_HORDE_Level = "22"
Inst17Quest1_HORDE_Attain = "17"
Inst17Quest1_HORDE_Aim = "收集20顆阿庫麥爾藍寶石，把它們交給灰谷的耶努薩克雷。"
Inst17Quest1_HORDE_Location = "耶努薩克雷（灰谷 - 佐拉姆加前哨站; "..YELLOW.."11,33"..WHITE.."）"
Inst17Quest1_HORDE_Note = "前置任務《幫助耶努薩克雷》可以在蘇納曼（石爪山脈 - 烈日石居; "..YELLOW.."47,64"..WHITE.."）接到。藍寶石多生長在通往黑暗深淵入口的那條通道的洞穴牆壁上。"
Inst17Quest1_HORDE_Prequest = "幫助耶努薩克雷"
Inst17Quest1_HORDE_Folgequest = "無"
Inst17Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst17Quest2_HORDE = "2. 上古之神的仆從"
Inst17Quest2_HORDE_Level = "22"
Inst17Quest2_HORDE_Attain = "17"
Inst17Quest2_HORDE_Aim = "把潮濕的便箋交給灰谷的耶努薩克雷。-> 殺掉黑暗深淵裏的洛古斯·傑特，然後向灰谷的耶努薩克雷複命。"
Inst17Quest2_HORDE_Location = "潮濕的便箋（掉落 - 見注釋）"
Inst17Quest2_HORDE_Note = "潮濕的便箋可從黑暗深淵海潮祭司處得到（5% 掉落幾率）。然後去耶努薩克雷（灰谷 - 佐拉姆加前哨站; "..YELLOW.."11,33"..WHITE.."）。洛古斯·傑特在 "..YELLOW.."[6]"..WHITE.."。"
Inst17Quest2_HORDE_Prequest = "無"
Inst17Quest2_HORDE_Folgequest = "無"
--
Inst17Quest2name1_HORDE = "巨拳指環"
Inst17Quest2name2_HORDE = "栗殼襯肩"

--Quest 3 Horde
Inst17Quest3_HORDE = "3. 廢墟之間"
Inst17Quest3_HORDE_Level = "27"
Inst17Quest3_HORDE_Attain = "21"
Inst17Quest3_HORDE_Aim = "把深淵之核交給灰谷佐拉姆加前哨站裏的耶努薩克雷。"
Inst17Quest3_HORDE_Location = "耶努薩克雷（灰谷 - 佐拉姆加前哨站; "..YELLOW.."11,33"..WHITE.."）"
Inst17Quest3_HORDE_Note = "深淵之核在 "..YELLOW.."[7]"..WHITE.." 區水域裏。當你得到深遠之核後，阿奎尼斯男爵會出現並攻擊你。他會掉落一件任務物品，你要把它帶給耶努薩克雷。"
Inst17Quest3_HORDE_Prequest = "無"
Inst17Quest3_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 4 Horde
Inst17Quest4_HORDE = "4. 黑暗深淵中的惡魔"
Inst17Quest4_HORDE_Level = "27"
Inst17Quest4_HORDE_Attain = "18"
Inst17Quest4_HORDE_Aim = "把夢遊者克爾裏斯的頭顱帶回雷霆崖交給巴珊娜·符文圖騰 。"
Inst17Quest4_HORDE_Location = "銀月守衛塞爾瑞德（黑暗深淵; "..YELLOW.."[4]"..WHITE.."）"
Inst17Quest4_HORDE_Note = "克爾裏斯在 "..YELLOW.."[8]"..WHITE.."。巴珊娜·符文圖騰可以在（雷霆崖 - 長者高地 "..YELLOW.."70,33"..WHITE.."）處找到。注意！如果你點燃了克爾裏斯身旁的火焰，會出現敵人攻擊你。"
Inst17Quest4_HORDE_Prequest = "無"
Inst17Quest4_HORDE_Folgequest = "無"
--
Inst17Quest4name1_HORDE = "墓碑節杖"
Inst17Quest4name2_HORDE = "極光圓盾"

--Quest 5 Horde  (same as Quest 6 Alliance)
Inst17Quest5_HORDE = "5. 索蘭魯克寶珠（術士任務）"
Inst17Quest5_HORDE_Level = Inst17Quest6_Level
Inst17Quest5_HORDE_Attain = Inst17Quest6_Attain
Inst17Quest5_HORDE_Aim = Inst17Quest6_Aim
Inst17Quest5_HORDE_Location = Inst17Quest6_Location
Inst17Quest5_HORDE_Note = Inst17Quest6_Note
Inst17Quest5_HORDE_Prequest = Inst17Quest6_Prequest
Inst17Quest5_HORDE_Folgequest = Inst17Quest6_Folgequest
--
Inst17Quest5name1_HORDE = Inst17Quest6name1
Inst17Quest5name2_HORDE = Inst17Quest6name2


--------------- INST18 - Dire Maul East (DM) ---------------

Inst18Story = "埃雷薩拉斯古城是在一萬二千年前由當時的一批暗夜精靈法師秘密地建造的，它被用于保護艾莎拉皇後最寶貴的奧法秘密。雖然受到了世界大震動的影響，這座偉大的城市基本屹立在那裏，現在其被稱為厄運之槌。這座遺迹城市分為三個部分，分別被不同的生物所占據——包括幽靈般的高等精靈，邪惡的薩特和魯莽的食人魔。只有最勇敢的冒險隊伍才敢進入這個破碎的城市並面對遠古大廳中邪惡力量。"
Inst18Caption = "厄運之槌（DM）（東）"
Inst18QAA = "6 個任務"
Inst18QAH = "6 個任務"

--Quest 1 Alliance
Inst18Quest1 = "1. 普希林和埃斯托爾迪"
Inst18Quest1_Level = "58"
Inst18Quest1_Attain = "54"
Inst18Quest1_Aim = "到厄運之槌去找到小鬼普希林。你可以使用任何手段從小鬼那裏得到埃斯托爾迪的咒術之書。"
Inst18Quest1_Location = "埃斯托爾迪（菲拉斯 - 拉瑞斯小亭; "..YELLOW.."76,37"..WHITE.."）"
Inst18Quest1_Note = "普希林在厄運之槌 "..YELLOW.."東"..WHITE.." 的 "..YELLOW.."[1]"..WHITE.."。你一和它說話它就跑，但是最後會停下並可以被攻擊在 "..YELLOW.."[2]"..WHITE.."。它還會掉落月牙鑰匙，也就是厄運之槌北和西的鑰匙。"
Inst18Quest1_Prequest = "無"
Inst18Quest1_Folgequest = "無"
--
Inst18Quest1name1 = "活躍之靴"
Inst18Quest1name2 = "奔行者之劍"

--Quest 2 Alliance
Inst18Quest2 = "2. 蕾瑟塔蒂絲的網"
Inst18Quest2_Level = "57"
Inst18Quest2_Attain = "54"
Inst18Quest2_Aim = "把蕾瑟塔蒂絲的網交給菲拉斯羽月要塞的拉托尼庫斯·月矛。"
Inst18Quest2_Location = "拉托尼庫斯·月矛（菲拉斯 - 羽月要塞; "..YELLOW.."30,46"..WHITE.."）"
Inst18Quest2_Note = "蕾瑟塔蒂絲在厄運之槌 "..YELLOW.."東"..WHITE.." 的 "..YELLOW.."[3]"..WHITE.."。前置任務可以從鐵爐堡的信使考雷·落錘接到。"
Inst18Quest2_Prequest = "羽月要塞"
Inst18Quest2_Folgequest = "無"
Inst18Quest2PreQuest = "true"
--
Inst18Quest2name1 = "學識匕首"

--Quest 3 Alliance
Inst18Quest3 = "3. 魔藤碎片"
Inst18Quest3_Level = "60"
Inst18Quest3_Attain = "56"
Inst18Quest3_Aim = "在厄運之槌中找到魔藤，然後從它上面采集一塊碎片。只有幹掉了奧茲恩之後，你才能進行采集工作。使用淨化之匣安全地封印碎片，然後將其交給月光林地永夜港的拉比恩·薩圖納。"
Inst18Quest3_Location = "拉比恩·薩圖納（月光林地; "..YELLOW.."51,44"..WHITE.."）"
Inst18Quest3_Note = "奧茲恩在厄運之槌 "..YELLOW.."東"..WHITE.." 的 "..YELLOW.."[5]"..WHITE.."。淨化之匣在希利蘇斯 "..YELLOW.."62,54"..WHITE.."。前置任務同樣來自拉比恩·薩圖納。"
Inst18Quest3_Prequest = "淨化之匣"
Inst18Quest3_Folgequest = "無"
Inst18Quest3PreQuest = "true"
--
Inst18Quest3name1 = "米利的盾牌"
Inst18Quest3name2 = "米利的詞典"

--Quest 4 Alliance
Inst18Quest4 = "4. 瓦塔拉克飾品的左瓣"
Inst18Quest4_Level = "60"
Inst18Quest4_Attain = "58"
Inst18Quest4_Aim = "使用召喚火盆召喚出伊薩利恩的靈魂，然後殺掉她。完成之後，將召喚火盆與瓦塔拉克飾品的左瓣還給伯德雷。"
Inst18Quest4_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖[D]"..WHITE.."）"
Inst18Quest4_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。\n\n召喚伊薩利恩在 "..YELLOW.."[5]"..WHITE.."。"
Inst18Quest4_Prequest = "重要的材料"
Inst18Quest4_Folgequest = "奧卡茲島在你前方……"
Inst18Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst18Quest5 = "5. 瓦塔拉克飾品的右瓣"
Inst18Quest5_Level = "60"
Inst18Quest5_Attain = "58"
Inst18Quest5_Aim = "使用召喚火盆召喚出伊薩莉恩的靈魂，然後殺掉他。完成之後，將召喚火盆與瓦塔拉克公爵的飾品還給伯德雷。"
Inst18Quest5_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地圖[D]"..WHITE.."）"
Inst18Quest5_Note = "你需要超維度幽靈顯形器才能看到伯德雷。你可以從《尋找安泰恩》任務得到它。\n\n召喚伊薩利恩在 "..YELLOW.."[5]"..WHITE.."。"
Inst18Quest5_Prequest = "更多重要的材料"
Inst18Quest5_Folgequest = "最後的准備（"..YELLOW.."上層黑石塔"..WHITE.."）"
Inst18Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst18Quest6 = "6. 監牢之鏈（術士任務）"
Inst18Quest6_Level = "60"
Inst18Quest6_Attain = "60"
Inst18Quest6_Aim = "到菲拉斯的厄運之槌去，從扭木廣場的荒野薩特身上找到15份薩特之血，然後把它們交給腐爛之痕的戴奧。"
Inst18Quest6_Location = "衰老的戴奧（詛咒之地 - 腐爛之痕; "..YELLOW.."34,50"..WHITE.."）"
Inst18Quest6_Note = "術士召喚末日守衛任務，你可以從衰老的戴奧那裏接到相關的其他任務。最容易找到荒野薩特是從厄運之槌東的“後門”進入（菲拉斯 - 拉瑞斯小亭; "..YELLOW.."77,37"..WHITE.."）。你需要有月牙鑰匙才能開門。"
Inst18Quest6_Prequest = "無"
Inst18Quest6_Folgequest = "無"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst18Quest1_HORDE = Inst18Quest1
Inst18Quest1_HORDE_Level = Inst18Quest1_Level
Inst18Quest1_HORDE_Attain = Inst18Quest1_Attain
Inst18Quest1_HORDE_Aim = Inst18Quest1_Aim
Inst18Quest1_HORDE_Location = Inst18Quest1_Location
Inst18Quest1_HORDE_Note = Inst18Quest1_Note
Inst18Quest1_HORDE_Prequest = Inst18Quest1_Prequest
Inst18Quest1_HORDE_Folgequest = Inst18Quest1_Folgequest
--
Inst18Quest1name1_HORDE = Inst18Quest1name1
Inst18Quest1name2_HORDE = Inst18Quest1name2

--Quest 2 Horde
Inst18Quest2_HORDE = "2. 蕾瑟塔蒂絲的網"
Inst18Quest2_HORDE_Level = "57"
Inst18Quest2_HORDE_Attain = "54"
Inst18Quest2_HORDE_Aim = "把蕾瑟塔蒂絲的網交給非拉斯莫沙徹營地的塔羅·刺蹄。"
Inst18Quest2_HORDE_Location = "塔羅·刺蹄（菲拉斯 - 莫沙徹營地; "..YELLOW.."76,43"..WHITE.."）"
Inst18Quest2_HORDE_Note = "蕾瑟塔蒂絲在厄運之槌 "..YELLOW.."東"..WHITE.." 的 "..YELLOW.."[3]"..WHITE.."。前置任務接自奧格瑞瑪的公告員高拉克。"
Inst18Quest2_HORDE_Prequest = "莫沙徹營地"
Inst18Quest2_HORDE_Folgequest = "無"
Inst18Quest2PreQuest_HORDE = "true"
--
Inst18Quest2name1_HORDE = "學識匕首"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst18Quest3_HORDE = Inst18Quest3
Inst18Quest3_HORDE_Level = Inst18Quest3_Level
Inst18Quest3_HORDE_Attain = Inst18Quest3_Attain
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
Inst18Quest4_HORDE_Level = Inst18Quest4_Level
Inst18Quest4_HORDE_Attain = Inst18Quest4_Attain
Inst18Quest4_HORDE_Aim = Inst18Quest4_Aim
Inst18Quest4_HORDE_Location = Inst18Quest4_Location
Inst18Quest4_HORDE_Note = Inst18Quest4_Note
Inst18Quest4_HORDE_Prequest = Inst18Quest4_Prequest
Inst18Quest4_HORDE_Folgequest = Inst18Quest4_Folgequest
Inst18Quest4PreQuest_HORDE = Inst18Quest4PreQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst18Quest5_HORDE = Inst18Quest5
Inst18Quest5_HORDE_Level = Inst18Quest5_Level
Inst18Quest5_HORDE_Attain = Inst18Quest5_Attain
Inst18Quest5_HORDE_Aim = Inst18Quest5_Aim
Inst18Quest5_HORDE_Location = Inst18Quest5_Location
Inst18Quest5_HORDE_Note = Inst18Quest5_Note
Inst18Quest5_HORDE_Prequest = Inst18Quest5_Prequest
Inst18Quest5_HORDE_Folgequest = Inst18Quest5_Folgequest
Inst18Quest5PreQuest_HORDE = Inst18Quest5PreQuest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst18Quest6_HORDE = Inst18Quest6
Inst18Quest6_HORDE_Level = Inst18Quest6_Level
Inst18Quest6_HORDE_Attain = Inst18Quest6_Attain
Inst18Quest6_HORDE_Aim = Inst18Quest6_Aim
Inst18Quest6_HORDE_Location = Inst18Quest6_Location
Inst18Quest6_HORDE_Note = Inst18Quest6_Note
Inst18Quest6_HORDE_Prequest = Inst18Quest6_Prequest
Inst18Quest6_HORDE_Folgequest = Inst18Quest6_Folgequest
-- No Rewards for this quest



--------------- INST19 - Dire Maul North (DM) ---------------

Inst19Story = "埃雷薩拉斯古城是在一萬二千年前由當時的一批暗夜精靈法師秘密地建造的，它被用于保護艾莎拉皇後最寶貴的奧法秘密。雖然受到了世界大震動的影響，這座偉大的城市基本屹立在那裏，現在其被稱為厄運之槌。這座遺迹城市分為三個部分，分別被不同的生物所占據——包括幽靈般的高等精靈，邪惡的薩特和魯莽的食人魔。只有最勇敢的冒險隊伍才敢進入這個破碎的城市並面對遠古大廳中邪惡力量。"
Inst19Caption = "厄運之槌（DM）（北）"
Inst19QAA = "5 個任務"
Inst19QAH = "5 個任務"

--Quest 1 Alliance
Inst19Quest1 = "1. 破碎的陷阱 "
Inst19Quest1_Level = "60"
Inst19Quest1_Attain = "56"
Inst19Quest1_Aim = "修複這個陷阱。"
Inst19Quest1_Location = "破碎的陷阱（厄運之槌; "..YELLOW.."北"..WHITE.."）"
Inst19Quest1_Note = "可重複任務。修好陷阱你必須有[瑟銀零件]和一瓶[冰霜之油]。"
Inst19Quest1_Prequest = "無"
Inst19Quest1_Folgequest = "無"
-- No Rewards for this quest

--Quest 2 Alliance
Inst19Quest2 = "2. 戈多克食人魔裝"
Inst19Quest2_Level = "60"
Inst19Quest2_Attain = "56"
Inst19Quest2_Aim = "把4份符文布卷、8塊硬甲皮、2卷符文線和一份食人魔鞣酸交給諾特·希姆加克。他現在被拴在厄運之槌的戈多克食人魔那邊。"
Inst19Quest2_Location = "諾特·希姆加克（厄運之槌; "..YELLOW.."北，[4]"..WHITE.."）"
Inst19Quest2_Note = "可重複任務，食人魔鞣酸可以從 "..YELLOW.."（上層）[4]"..WHITE.." 附近得到。"
Inst19Quest2_Prequest = "無"
Inst19Quest2_Folgequest = "無"
--
Inst19Quest2name1 = "戈多克食人魔裝"

--Quest 3 Alliance
Inst19Quest3 = "3. 救諾特出去！"
Inst19Quest3_Level = "60"
Inst19Quest3_Attain = "60"
Inst19Quest3_Aim = "為諾特找到食人魔鐐铐鑰匙。"
Inst19Quest3_Location = "諾特·希姆加克（厄運之槌; "..YELLOW.."北，[4]"..WHITE.."）"
Inst19Quest3_Note = "可重複任務，副本裏任何食人魔都可能掉落鐐铐鑰匙。"
Inst19Quest3_Prequest = "無"
Inst19Quest3_Folgequest = "無"
-- No Rewards for this quest

--Quest 4 Alliance
Inst19Quest4 = "4. 戈多克食人魔的事務"
Inst19Quest4_Level = "60"
Inst19Quest4_Attain = "56"
Inst19Quest4_Aim = "找到戈多克力量護手，並將它交給厄運之槌的克羅卡斯。"
Inst19Quest4_Location = "克羅卡斯（厄運之槌; "..YELLOW.."北，[5]"..WHITE.."）"
Inst19Quest4_Note = "王子在厄運之槌 "..YELLOW.."西"..WHITE.." 的 "..YELLOW.."[7]"..WHITE.."。力量護手在王子附近的一個箱子裏，交任務時你也必須確保你有“當國王真好”這個狀態。"
Inst19Quest4_Prequest = "無"
Inst19Quest4_Folgequest = "無"
--
Inst19Quest4name1 = "戈多克裹手"
Inst19Quest4name2 = "戈多克手套"
Inst19Quest4name3 = "戈多克手甲"
Inst19Quest4name4 = "戈多克護手"

--Quest 5 Alliance
Inst19Quest5 = "5. 戈多克好酒"
Inst19Quest5_Level = "60"
Inst19Quest5_Attain = "60"
Inst19Quest5_Aim = "獲取免費的酒。"
Inst19Quest5_Location = "踐踏者克雷格（厄運之槌; "..YELLOW.."北，[2]"..WHITE.."）"
Inst19Quest5_Note = "只要和克雷格交談便可同時接受與完成任務，你也必須確保你有“當國王真好”這個狀態。"
Inst19Quest5_Prequest = "無"
Inst19Quest5_Folgequest = "無"
--
Inst19Quest5name1 = "戈多克綠酒"
Inst19Quest5name2 = "克雷格的烈酒"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst19Quest1_HORDE = Inst19Quest1
Inst19Quest1_HORDE_Level = Inst19Quest1_Level
Inst19Quest1_HORDE_Attain = Inst19Quest1_Attain
Inst19Quest1_HORDE_Aim = Inst19Quest1_Aim
Inst19Quest1_HORDE_Location = Inst19Quest1_Location
Inst19Quest1_HORDE_Note = Inst19Quest1_Note
Inst19Quest1_HORDE_Prequest = Inst19Quest1_Prequest
Inst19Quest1_HORDE_Folgequest = Inst19Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst19Quest2_HORDE = Inst19Quest2
Inst19Quest2_HORDE_Level = Inst19Quest2_Level
Inst19Quest2_HORDE_Attain = Inst19Quest2_Attain
Inst19Quest2_HORDE_Aim = Inst19Quest2_Aim
Inst19Quest2_HORDE_Location = Inst19Quest2_Location
Inst19Quest2_HORDE_Note = Inst19Quest2_Note
Inst19Quest2_HORDE_Prequest = Inst19Quest2_Prequest
Inst19Quest2_HORDE_Folgequest = Inst19Quest2_Folgequest
--
Inst19Quest2name1_HORDE = Inst19Quest2name1

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst19Quest3_HORDE = Inst19Quest3
Inst19Quest3_HORDE_Level = Inst19Quest3_Level
Inst19Quest3_HORDE_Attain = Inst19Quest3_Attain
Inst19Quest3_HORDE_Aim = Inst19Quest3_Aim
Inst19Quest3_HORDE_Location = Inst19Quest3_Location
Inst19Quest3_HORDE_Note = Inst19Quest3_Note
Inst19Quest3_HORDE_Prequest = Inst19Quest3_Prequest
Inst19Quest3_HORDE_Folgequest = Inst19Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst19Quest4_HORDE = Inst19Quest4
Inst19Quest4_HORDE_Level = Inst19Quest4_Level
Inst19Quest4_HORDE_Attain = Inst19Quest4_Attain
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
Inst19Quest5_HORDE_Level = Inst19Quest5_Level
Inst19Quest5_HORDE_Attain = Inst19Quest5_Attain
Inst19Quest5_HORDE_Aim = Inst19Quest5_Aim
Inst19Quest5_HORDE_Location = Inst19Quest5_Location
Inst19Quest5_HORDE_Note = Inst19Quest5_Note
Inst19Quest5_HORDE_Prequest = Inst19Quest5_Prequest
Inst19Quest5_HORDE_Folgequest = Inst19Quest5_Folgequest
--
Inst19Quest5name1_HORDE = Inst19Quest5name1
Inst19Quest5name2_HORDE = Inst19Quest5name2



--------------- INST20 - Dire Maul West (DM) ---------------

Inst20Story = "埃雷薩拉斯古城是在一萬二千年前由當時的一批暗夜精靈法師秘密地建造的，它被用于保護艾莎拉皇後最寶貴的奧法秘密。雖然受到了世界大震動的影響，這座偉大的城市基本屹立在那裏，現在其被稱為厄運之槌。這座遺迹城市分為三個部分，分別被不同的生物所占據——包括幽靈般的高等精靈，邪惡的薩特和魯莽的食人魔。只有最勇敢的冒險隊伍才敢進入這個破碎的城市並面對遠古大廳中邪惡力量。"
Inst20Caption = "厄運之槌（DM）（西）"
Inst20QAA = "17 個任務"
Inst20QAH = "17 個任務"

--Quest 1 Alliance
Inst20Quest1 = "1. 精靈的傳說"
Inst20Quest1_Level = "60"
Inst20Quest1_Attain = "54"
Inst20Quest1_Aim = "到厄運之槌去尋找卡裏爾·溫薩魯斯。向羽月要塞的學者盧索恩·紋角報告你所找到的信息。"
Inst20Quest1_Location = "學者盧索恩·紋角（菲拉斯 - 羽月要塞; "..YELLOW.."31,43"..WHITE.."）"
Inst20Quest1_Note = "卡裏爾·溫薩魯斯在厄運之槌 "..YELLOW.."圖書館（西）"..WHITE.."。"
Inst20Quest1_Prequest = "無"
Inst20Quest1_Folgequest = "無"
-- No Rewards for this quest

--Quest 2 Alliance
Inst20Quest2 = "2. 伊莫塔爾的瘋狂"
Inst20Quest2_Level = "60"
Inst20Quest2_Attain = "56"
Inst20Quest2_Aim = "你必須幹掉5座水晶塔周圍的守衛，那5座水晶塔維持著關押伊莫塔爾的監獄。一旦水晶塔的能量被削弱，伊莫塔爾周圍的能量力場就會消散。\n進入伊莫塔爾的監獄，幹掉站在中間的那個惡魔。最後，在圖書館挑戰托塞德林王子。當任務完成之後，到庭院中去找辛德拉古靈。"
Inst20Quest2_Location = "辛德拉古靈（厄運之槌; "..YELLOW.."西，（上層）[1]"..WHITE.."）"
Inst20Quest2_Note = "水晶塔被標記為 "..BLUE.."[B]"..WHITE.."。伊莫塔爾在 "..YELLOW.."[6]"..WHITE.."，托塞德林王子在 "..YELLOW.."[7]"..WHITE.."。"
Inst20Quest2_Prequest = "無"
Inst20Quest2_Folgequest = "辛德拉的寶藏"
-- No Rewards for this quest

--Quest 3 Alliance
Inst20Quest3 = "3. 辛德拉的寶藏"
Inst20Quest3_Level = "60"
Inst20Quest3_Attain = "56"
Inst20Quest3_Aim = "返回圖書館去找到辛德拉的寶藏。拿取你的獎勵吧！"
Inst20Quest3_Location = "辛德拉古靈（厄運之槌; "..YELLOW.."西，（上層）[1]"..WHITE.."）"
Inst20Quest3_Note = "你可以在圖書館的梯子下面找到寶藏 "..YELLOW.."[7]"..WHITE.."。"
Inst20Quest3_Prequest = "伊莫塔爾的瘋狂"
Inst20Quest3_Folgequest = "無"
Inst20Quest3FQuest = "true"
--
Inst20Quest3name1 = "莎草長靴"
Inst20Quest3name2 = "密林頭盔"
Inst20Quest3name3 = "碾骨者"

--Quest 4 Alliance
Inst20Quest4 = "4. 克索諾斯恐懼戰馬（術士任務）"
Inst20Quest4_Level = "60"
Inst20Quest4_Attain = "60"
Inst20Quest4_Aim = "閱讀莫蘇爾的指南，並召喚出一匹克索諾斯恐懼戰馬，擊敗它，然後控制它的靈魂。"
Inst20Quest4_Location = "莫蘇爾（燃燒平原; "..YELLOW.."12,31"..WHITE.."）"
Inst20Quest4_Note = "術士的史詩戰馬任務的最後一步。首先必須關閉水晶塔 "..BLUE.."[B]"..WHITE.."。和需要殺掉伊莫塔爾 "..YELLOW.."[6]"..WHITE.."。然後你可以召喚。准備20個以上的靈魂碎片是必須的，你必須消耗碎片才能維持法陣。殺死恐懼戰馬後，和馬的靈魂對話即可完成任務。"
Inst20Quest4_Prequest = "末日蠟燭（"..YELLOW.."通靈學院"..WHITE.."）"
Inst20Quest4_Folgequest = "無"
Inst20Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst20Quest5 = "5. 翡翠夢境……（德魯伊飾品任務）"
Inst20Quest5_Level = "60"
Inst20Quest5_Attain = "54"
Inst20Quest5_Aim = "將這本典籍交給它的主人。"
Inst20Quest5_Location = "翡翠夢境（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest5_Note = "獎勵德魯伊的職業飾品。把書交給博學者亞沃（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest5_Prequest = "無"
Inst20Quest5_Folgequest = "無"
--
Inst20Quest5name1 = "埃雷薩拉斯皇家徽記"

--Quest 6 Alliance
Inst20Quest6 = "6. 最偉大的獵手（獵人飾品任務）"
Inst20Quest6_Level = "60"
Inst20Quest6_Attain = "54"
Inst20Quest6_Aim = "將這本典籍交給它的主人。"
Inst20Quest6_Location = "最偉大的獵手（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest6_Note = "獎勵獵人的職業飾品。把書交給博學者麥庫斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest6_Prequest = "無"
Inst20Quest6_Folgequest = "無"
--
Inst20Quest6name1 = "埃雷薩拉斯皇家徽記"

--Quest 7 Alliance
Inst20Quest7 = "7. 奧法師的食譜（法師任務）"
Inst20Quest7_Level = "60"
Inst20Quest7_Attain = "54"
Inst20Quest7_Aim = "將這本典籍交給它的主人。"
Inst20Quest7_Location = "奧法師的食譜（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest7_Note = "獎勵法師的職業飾品。把書交給博學者基爾達斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest7_Prequest = "無"
Inst20Quest7_Folgequest = "無"
--
Inst20Quest7name1 = "埃雷薩拉斯皇家徽記"

--Quest 8 Alliance
Inst20Quest8 = "8. 聖光之力（聖騎士任務）"
Inst20Quest8_Level = "60"
Inst20Quest8_Attain = "54"
Inst20Quest8_Aim = "將這本典籍交給它的主人。"
Inst20Quest8_Location = "聖光之力（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest8_Note = "獎勵聖騎士的職業飾品。把書交給博學者麥庫斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest8_Prequest = "無"
Inst20Quest8_Folgequest = "無"
--
Inst20Quest8name1 = "埃雷薩拉斯皇家徽記"

--Quest 9 Alliance
Inst20Quest9 = "9. 光明不會告訴你的事情（牧師飾品任務）"
Inst20Quest9_Level = "60"
Inst20Quest9_Attain = "54"
Inst20Quest9_Aim = "將這本典籍交給它的主人。"
Inst20Quest9_Location = "光明不會告訴你的事情（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest9_Note = "獎勵牧師的職業飾品。把書交給博學者亞沃（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest9_Prequest = "無"
Inst20Quest9_Folgequest = "無"
--
Inst20Quest9name1 = "埃雷薩拉斯皇家徽記"

--Quest 10 Alliance
Inst20Quest10 = "10. 迦羅娜：潛行與詭計研究（盜賊飾品任務）"
Inst20Quest10_Level = "60"
Inst20Quest10_Attain = "54"
Inst20Quest10_Aim = "將這本典籍交給它的主人。"
Inst20Quest10_Location = "迦羅娜：潛行與詭計研究（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest10_Note = "獎勵盜賊的職業飾品。把書交給博學者基爾達斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest10_Prequest = "無"
Inst20Quest10_Folgequest = "無"
--
Inst20Quest10name1 = "埃雷薩拉斯皇家徽記"

--Quest 11 Alliance
Inst20Quest11 = "11. 你與冰霜震擊（薩滿祭司飾品任務）"
Inst20Quest11_Level = "60"
Inst20Quest11_Attain = "54"
Inst20Quest11_Aim = "將這本典籍交給它的主人。"
Inst20Quest11_Location = "你與冰霜震擊（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest11_Note = "獎勵薩滿祭司的職業飾品。把書交給博學者亞沃（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest11_Prequest = "無"
Inst20Quest11_Folgequest = "無"
--
Inst20Quest11name1 = "埃雷薩拉斯皇家徽記"

--Quest 12 Alliance
Inst20Quest12 = "12. 束縛之影（術士飾品任務）"
Inst20Quest12_Level = "60"
Inst20Quest12_Attain = "54"
Inst20Quest12_Aim = "將這本典籍交給它的主人。"
Inst20Quest12_Location = "束縛之影（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest12_Note = "獎勵術士的職業飾品。把書交給博學者麥庫斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest12_Prequest = "無"
Inst20Quest12_Folgequest = "無"
--
Inst20Quest12name1 = "埃雷薩拉斯皇家徽記"

--Quest 13 Alliance
Inst20Quest13 = "13. 防禦寶典（戰士飾品任務）"
Inst20Quest13_Level = "60"
Inst20Quest13_Attain = "54"
Inst20Quest13_Aim = "將這本典籍交給它的主人。"
Inst20Quest13_Location = "防禦寶典（厄運之槌的所有幾個副本的 Boss 都可能掉落）"
Inst20Quest13_Note = "獎勵戰士的職業飾品。把書交給博學者基爾達斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest13_Prequest = "無"
Inst20Quest13_Folgequest = "無"
--
Inst20Quest13name1 = "埃雷薩拉斯皇家徽記"

--Quest 14 Alliance
Inst20Quest14 = "14. 專注聖典"
Inst20Quest14_Level = "60"
Inst20Quest14_Attain = "54"
Inst20Quest14_Aim = "將專注聖典、1塊原始黑鑽石、4份大塊魔光碎片和2張暗影之皮交給厄運之槌的博學者萊德羅斯，以換取一份專注秘藥。"
Inst20Quest14_Location = "博學者萊德羅斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）"
Inst20Quest14_Note = "沒有前置任務，但是精靈的傳說任務必須完成後才能接到這個任務。\n\n厄運之槌隨機掉落聖典並可被交易，所以可以從拍賣行獲取。暗影之皮由 "..YELLOW.."通靈學院"..WHITE.." 的複活的構造體和複活的骷髅守衛隨機掉落並是拾取綁定的。"
Inst20Quest14_Prequest = "無"
Inst20Quest14_Folgequest = "無"
--
Inst20Quest14name1 = "專注秘藥"

--Quest 15 Alliance
Inst20Quest15 = "15. 防護聖典"
Inst20Quest15_Level = "60"
Inst20Quest15_Attain = "54"
Inst20Quest15_Aim = "將防護聖典、1塊原始黑鑽石、2份大塊魔光碎片和1份磨損的憎惡縫合線交給厄運之槌的博學者萊德羅斯，以換取一份防護秘藥。"
Inst20Quest15_Location = "博學者萊德羅斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）"
Inst20Quest15_Note = "沒有前置任務，但是精靈的傳說任務必須完成後才能接到這個任務。\n\n厄運之槌隨機掉落聖典並可被交易，所以可以從拍賣行獲取。磨損的憎惡縫合線由 "..YELLOW.."斯坦索姆"..WHITE.." 的吞咽者拉姆斯登、縫補憎惡、潑毒者和噴膽者隨機掉落並是拾取綁定的。"
Inst20Quest15_Prequest = "無"
Inst20Quest15_Folgequest = "無"
--
Inst20Quest15name1 = "防護秘藥"

--Quest 16 Alliance
Inst20Quest16 = "16. 急速聖典"
Inst20Quest16_Level = "60"
Inst20Quest16_Attain = "54"
Inst20Quest16_Aim = "將急速聖典、1塊原始黑鑽石、2份大塊魔光碎片和2份英雄之血交給厄運之槌的博學者萊德羅斯，以換取一份急速秘藥。"
Inst20Quest16_Location = "博學者萊德羅斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）"
Inst20Quest16_Note = "沒有前置任務，但是 精靈的傳說任務必須完成後才能接到這個任務。\n\n厄運之槌隨機掉落聖典並可被交易，所以可以從拍賣行獲取。英雄之血在東瘟疫之地與西瘟疫之地的地面上隨機找到並是拾取綁定的。"
Inst20Quest16_Prequest = "無"
Inst20Quest16_Folgequest = "無"
--
Inst20Quest16name1 = "急速秘藥"

--Quest 17 Alliance
Inst20Quest17 = "17. 弗洛爾的屠龍技術綱要（戰士，聖騎士）"
Inst20Quest17_Level = "60"
Inst20Quest17_Attain = "60"
Inst20Quest17_Aim = "將《弗洛爾的屠龍技術綱要》還回圖書館。"
Inst20Quest17_Location = "弗洛爾的屠龍技術綱要（"..YELLOW.."厄運之槌"..WHITE.."）的 Boss 都可能掉落。"
Inst20Quest17_Note = "戰士和聖騎士才能接此任務。把書交給博學者萊德羅斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。完成後開始奎爾塞拉任務。"
Inst20Quest17_Prequest = "無"
Inst20Quest17_Folgequest = "煅造奎爾塞拉"
-- No Rewards for this quest


--Quest 1 Horde
Inst20Quest1_HORDE = "1. 精靈的傳說"
Inst20Quest1_HORDE_Level = "60"
Inst20Quest1_HORDE_Attain = "54"
Inst20Quest1_HORDE_Aim = "到厄運之槌去尋找卡裏爾·溫薩魯斯。向莫沙徹營地的先知科魯拉克報告你所找到的信息。"
Inst20Quest1_HORDE_Location = "先知科魯拉克（菲拉斯 - 莫沙徹營地; "..YELLOW.."74,43"..WHITE.."）"
Inst20Quest1_HORDE_Note = "卡裏爾·溫薩魯斯（厄運之槌; "..YELLOW.."西，"..GREEN.."圖書館[1']"..WHITE.."）。"
Inst20Quest1_HORDE_Prequest = "無"
Inst20Quest1_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst20Quest2_HORDE = Inst20Quest2
Inst20Quest2_HORDE_Level = Inst20Quest2_Level
Inst20Quest2_HORDE_Attain = Inst20Quest2_Attain
Inst20Quest2_HORDE_Aim = Inst20Quest2_Aim
Inst20Quest2_HORDE_Location = Inst20Quest2_Location
Inst20Quest2_HORDE_Note = Inst20Quest2_Note
Inst20Quest2_HORDE_Prequest = Inst20Quest2_Prequest
Inst20Quest2_HORDE_Folgequest = Inst20Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst20Quest3_HORDE = Inst20Quest3
Inst20Quest3_HORDE_Level = Inst20Quest3_Level
Inst20Quest3_HORDE_Attain = Inst20Quest3_Attain
Inst20Quest3_HORDE_Aim = Inst20Quest3_Aim
Inst20Quest3_HORDE_Location = Inst20Quest3_Location
Inst20Quest3_HORDE_Note = Inst20Quest3_Note
Inst20Quest3_HORDE_Prequest = Inst20Quest3_Prequest
Inst20Quest3_HORDE_Folgequest = Inst20Quest3_Folgequest
Inst20Quest3FQuest_HORDE = "true"
--
Inst20Quest3name1_HORDE = Inst20Quest3name1
Inst20Quest3name2_HORDE = Inst20Quest3name2
Inst20Quest3name3_HORDE = Inst20Quest3name3

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst20Quest4_HORDE = Inst20Quest4
Inst20Quest4_HORDE_Level = Inst20Quest4_Level
Inst20Quest4_HORDE_Attain = Inst20Quest4_Attain
Inst20Quest4_HORDE_Aim = Inst20Quest4_Aim
Inst20Quest4_HORDE_Location = Inst20Quest4_Location
Inst20Quest4_HORDE_Note = Inst20Quest4_Note
Inst20Quest4_HORDE_Prequest = Inst20Quest4_Prequest
Inst20Quest4_HORDE_Folgequest = Inst20Quest4_Folgequest
Inst20Quest4PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst20Quest5_HORDE = Inst20Quest5
Inst20Quest5_HORDE_Level = Inst20Quest5_Level
Inst20Quest5_HORDE_Attain = Inst20Quest5_Attain
Inst20Quest5_HORDE_Aim = Inst20Quest5_Aim
Inst20Quest5_HORDE_Location = Inst20Quest5_Location
Inst20Quest5_HORDE_Note = Inst20Quest5_Note
Inst20Quest5_HORDE_Prequest = Inst20Quest5_Prequest
Inst20Quest5_HORDE_Folgequest = Inst20Quest5_Folgequest
--
Inst20Quest5name1_HORDE = Inst20Quest5name1

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst20Quest6_HORDE = Inst20Quest6
Inst20Quest6_HORDE_Level = Inst20Quest6_Level
Inst20Quest6_HORDE_Attain = Inst20Quest6_Attain
Inst20Quest6_HORDE_Aim = Inst20Quest6_Aim
Inst20Quest6_HORDE_Location = Inst20Quest6_Location
Inst20Quest6_HORDE_Note = Inst20Quest6_Note
Inst20Quest6_HORDE_Prequest = Inst20Quest6_Prequest
Inst20Quest6_HORDE_Folgequest = Inst20Quest6_Folgequest
--
Inst20Quest6name1_HORDE = Inst20Quest6name1

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst20Quest7_HORDE = Inst20Quest7
Inst20Quest7_HORDE_Level = Inst20Quest7_Level
Inst20Quest7_HORDE_Attain = Inst20Quest7_Attain
Inst20Quest7_HORDE_Aim = Inst20Quest7_Aim
Inst20Quest7_HORDE_Location = Inst20Quest7_Location
Inst20Quest7_HORDE_Note = Inst20Quest7_Note
Inst20Quest7_HORDE_Prequest = Inst20Quest7_Prequest
Inst20Quest7_HORDE_Folgequest = Inst20Quest7_Folgequest
--
Inst20Quest7name1_HORDE = Inst20Quest7name1

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst20Quest8_HORDE = Inst20Quest8
Inst20Quest8_HORDE_Level = Inst20Quest8_Level
Inst20Quest8_HORDE_Attain = Inst20Quest8_Attain
Inst20Quest8_HORDE_Aim = Inst20Quest8_Aim
Inst20Quest8_HORDE_Location = Inst20Quest8_Location
Inst20Quest8_HORDE_Note = Inst20Quest8_Note
Inst20Quest8_HORDE_Prequest = Inst20Quest8_Prequest
Inst20Quest8_HORDE_Folgequest = Inst20Quest8_Folgequest
--
Inst20Quest8name1_HORDE = Inst20Quest8name1

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst20Quest9_HORDE = Inst20Quest9
Inst20Quest9_HORDE_Level = Inst20Quest9_Level
Inst20Quest9_HORDE_Attain = Inst20Quest9_Attain
Inst20Quest9_HORDE_Aim = Inst20Quest9_Aim
Inst20Quest9_HORDE_Location = Inst20Quest9_Location
Inst20Quest9_HORDE_Note = Inst20Quest9_Note
Inst20Quest9_HORDE_Prequest = Inst20Quest9_Prequest
Inst20Quest9_HORDE_Folgequest = Inst20Quest9_Folgequest
--
Inst20Quest9name1_HORDE = Inst20Quest9name1

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst20Quest10_HORDE = Inst20Quest10
Inst20Quest10_HORDE_Level = Inst20Quest10_Level
Inst20Quest10_HORDE_Attain = Inst20Quest10_Attain
Inst20Quest10_HORDE_Aim = Inst20Quest10_Aim
Inst20Quest10_HORDE_Location = Inst20Quest10_Location
Inst20Quest10_HORDE_Note = Inst20Quest10_Note
Inst20Quest10_HORDE_Prequest = Inst20Quest10_Prequest
Inst20Quest10_HORDE_Folgequest = Inst20Quest10_Folgequest
--
Inst20Quest10name1_HORDE = Inst20Quest10name1

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst20Quest11_HORDE = Inst20Quest11
Inst20Quest11_HORDE_Level = Inst20Quest11_Level
Inst20Quest11_HORDE_Attain = Inst20Quest11_Attain
Inst20Quest11_HORDE_Aim = Inst20Quest11_Aim
Inst20Quest11_HORDE_Location = Inst20Quest11_Location
Inst20Quest11_HORDE_Note = Inst20Quest11_Note
Inst20Quest11_HORDE_Prequest = Inst20Quest11_Prequest
Inst20Quest11_HORDE_Folgequest = Inst20Quest11_Folgequest
--
Inst20Quest11name1_HORDE = Inst20Quest11name1

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst20Quest12_HORDE = Inst20Quest12
Inst20Quest12_HORDE_Level = Inst20Quest12_Level
Inst20Quest12_HORDE_Attain = Inst20Quest12_Attain
Inst20Quest12_HORDE_Aim = Inst20Quest12_Aim
Inst20Quest12_HORDE_Location = Inst20Quest12_Location
Inst20Quest12_HORDE_Note = Inst20Quest12_Note
Inst20Quest12_HORDE_Prequest = Inst20Quest12_Prequest
Inst20Quest12_HORDE_Folgequest = Inst20Quest12_Folgequest
--
Inst20Quest12name1_HORDE = Inst20Quest12name1

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst20Quest13_HORDE = Inst20Quest13
Inst20Quest13_HORDE_Level = Inst20Quest13_Level
Inst20Quest13_HORDE_Attain = Inst20Quest13_Attain
Inst20Quest13_HORDE_Aim = Inst20Quest13_Aim
Inst20Quest13_HORDE_Location = Inst20Quest13_Location
Inst20Quest13_HORDE_Note = Inst20Quest13_Note
Inst20Quest13_HORDE_Prequest = Inst20Quest13_Prequest
Inst20Quest13_HORDE_Folgequest = Inst20Quest13_Folgequest
--
Inst20Quest13name1_HORDE = Inst20Quest13name1

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst20Quest14_HORDE = Inst20Quest14
Inst20Quest14_HORDE_Level = Inst20Quest14_Level
Inst20Quest14_HORDE_Attain = Inst20Quest14_Attain
Inst20Quest14_HORDE_Aim = Inst20Quest14_Aim
Inst20Quest14_HORDE_Location = Inst20Quest14_Location
Inst20Quest14_HORDE_Note = Inst20Quest14_Note
Inst20Quest14_HORDE_Prequest = Inst20Quest14_Prequest
Inst20Quest14_HORDE_Folgequest = Inst20Quest14_Folgequest
--
Inst20Quest14name1_HORDE = Inst20Quest14name1

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst20Quest15_HORDE = Inst20Quest15
Inst20Quest15_HORDE_Level = Inst20Quest15_Level
Inst20Quest15_HORDE_Attain = Inst20Quest15_Attain
Inst20Quest15_HORDE_Aim = Inst20Quest15_Aim
Inst20Quest15_HORDE_Location = Inst20Quest15_Location
Inst20Quest15_HORDE_Note = Inst20Quest15_Note
Inst20Quest15_HORDE_Prequest = Inst20Quest15_Prequest
Inst20Quest15_HORDE_Folgequest = Inst20Quest15_Folgequest
--
Inst20Quest15name1_HORDE = Inst20Quest15name1

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst20Quest16_HORDE = Inst20Quest16
Inst20Quest16_HORDE_Level = Inst20Quest16_Level
Inst20Quest16_HORDE_Attain = Inst20Quest16_Attain
Inst20Quest16_HORDE_Aim = Inst20Quest16_Aim
Inst20Quest16_HORDE_Location = Inst20Quest16_Location
Inst20Quest16_HORDE_Note = Inst20Quest16_Note
Inst20Quest16_HORDE_Prequest = Inst20Quest16_Prequest
Inst20Quest16_HORDE_Folgequest = Inst20Quest16_Folgequest
--
Inst20Quest16name1_HORDE = Inst20Quest16name1

--Quest 17 Horde  (same as Quest 17 Alliance)
Inst20Quest17_HORDE = Inst20Quest17
Inst20Quest17_HORDE_Level = Inst20Quest17_Level
Inst20Quest17_HORDE_Attain = Inst20Quest17_Attain
Inst20Quest17_HORDE_Aim = Inst20Quest17_Aim
Inst20Quest17_HORDE_Location = Inst20Quest17_Location
Inst20Quest17_HORDE_Note = Inst20Quest17_Note
Inst20Quest17_HORDE_Prequest = Inst20Quest17_Prequest
Inst20Quest17_HORDE_Folgequest = Inst20Quest17_Folgequest
-- No Rewards for this quest



--------------- INST21 - Maraudon (Mara) ---------------

Inst21Story = "瑪拉頓被狂暴的瑪拉頓半人馬所保護，那是淒涼之地最神聖的地方。瑪拉頓是紮爾塔的偉大神廟，紮爾塔使半神塞納留斯不朽的兒子之一。傳說說紮爾塔和瑟萊德絲大地元素公主的私生子成為了半人馬種族。據說半人馬這個野蠻的種族在其出生了之後就開始轉向他們的父親並將其殺死。有些人則相信瑟萊德絲在悲傷中將紮爾塔的靈魂困了起來，並將其藏在洞中——利用它的能量來達到一些不可告人的目的。在瑪拉頓錯綜複雜的地下通道中到處都是邪惡的半人馬可汗靈魂和瑟萊德絲的元素爪牙。"
Inst21Caption = "瑪拉頓（Mara）"
Inst21QAA = "8 個任務"
Inst21QAH = "8 個任務"

--Quest 1 Alliance
Inst21Quest1 = "1. 暗影殘片"
Inst21Quest1_Level = "42"
Inst21Quest1_Attain = "39"
Inst21Quest1_Aim = "從瑪拉頓收集10塊暗影殘片，然後把它們交給塵泥沼澤塞拉摩島上的大法師特沃什。"
Inst21Quest1_Location = "大法師特沃什（塵泥沼澤 - 塞拉摩島; "..YELLOW.."66,49"..WHITE.."）"
Inst21Quest1_Note = "暗影殘片可以從副本外“暗影碎片巡遊者”或者“暗影碎片擊碎者”身上找到。"
Inst21Quest1_Prequest = "無"
Inst21Quest1_Folgequest = "無"
--
Inst21Quest1name1 = "熱情暗影殘片墜飾"
Inst21Quest1name2 = "巨型暗影碎片墜飾"

--Quest 2 Alliance
Inst21Quest2 = "2. 維利塔恩的汙染"
Inst21Quest2_Level = "47"
Inst21Quest2_Attain = "41"
Inst21Quest2_Aim = "在瑪拉頓裏用天藍水瓶在橙色水晶池中裝滿水。\n在維利斯塔姆藤蔓上使用裝滿水的天藍水瓶，使墮落的諾克賽恩幼體出現。\n治療8株植物並殺死那些諾克賽恩幼體，然後向尼耶爾前哨站的塔琳德莉亞複命。"
Inst21Quest2_Location = "塔琳德莉亞（淒涼之地 - 尼耶爾前哨站; "..YELLOW.."68,8"..WHITE.."）"
Inst21Quest2_Note = "你可以在瑪拉頓裏任何一個橙色的水池裝水。藤蔓生長在橙色或紫色區域。"
Inst21Quest2_Prequest = "無"
Inst21Quest2_Folgequest = "無"
--
Inst21Quest2name1 = "樹種之環"
Inst21Quest2name2 = "山艾束腰"
Inst21Quest2name3 = "枝爪護手"

--Quest 3 Alliance
Inst21Quest3 = "3. 扭曲的邪惡"
Inst21Quest3_Level = "47"
Inst21Quest3_Attain = "41"
Inst21Quest3_Aim = "為淒涼之地的維洛收集25個瑟萊德絲水晶雕像。"
Inst21Quest3_Location = "維洛（淒涼之地; "..YELLOW.."62,39"..WHITE.."）"
Inst21Quest3_Note = "大多數瑪拉頓裏的敵人都掉落雕像。"
Inst21Quest3_Prequest = "無"
Inst21Quest3_Folgequest = "無"
--
Inst21Quest3name1 = "聰穎長袍"
Inst21Quest3name2 = "輕環頭盔"
Inst21Quest3name3 = "無情鏈甲"
Inst21Quest3name4 = "巨石肩铠"

--Quest 4 Alliance
Inst21Quest4 = "4. 賤民的指引"
Inst21Quest4_Level = "48"
Inst21Quest4_Attain = "39"
Inst21Quest4_Aim = "閱讀賤民的指引，然後從瑪拉頓得到聯合墜飾，將其交給淒涼之地南部的半人馬賤民。"
Inst21Quest4_Location = "半人馬賤民（淒涼之地; "..YELLOW.."45,86"..WHITE.."）"
Inst21Quest4_Note = "5個可汗（《賤民的指引》的描述）"
Inst21Quest4_Page = {2, "你會在淒涼之地的南部找到半人馬賤民。他在 "..YELLOW.."44,85"..WHITE.." 和 "..YELLOW.."50,87"..WHITE.." 之間來回走動。\n首先，你必須殺死無名預言者（"..YELLOW.."副本入口地圖[A]"..WHITE.."）。你可以在進入副本之前找到它，就在你選擇進紫色入口還是橙色入口那裏。殺了它後，你還要殺死5個可汗。如果你選擇中間的路，你會找到第一可汗（"..YELLOW.."副本入口地圖[1]"..WHITE.."）。第二可汗在瑪拉頓進入副本之前的紫色部分（"..YELLOW.."副本入口地圖[2]"..WHITE.."）。第三可汗在進入副本之前的橙色部分（"..YELLOW.."副本入口地圖[3]"..WHITE.."）。第四可汗在 "..YELLOW.."[4]"..WHITE.." 附近。第五可汗在 "..YELLOW.."[1]"..WHITE.." 附近。", };
Inst21Quest4_Prequest = "無"
Inst21Quest4_Folgequest = "無"
--
Inst21Quest4name1 = "天選者印記"

--Quest 5 Alliance
Inst21Quest5 = "5. 瑪拉頓的傳說"
Inst21Quest5_Level = "49"
Inst21Quest5_Attain = "41"
Inst21Quest5_Aim = "找回塞雷布拉斯節杖的兩個部分：塞雷布拉斯魔棒和塞雷布拉斯鑽石。\n然後設法和塞雷布拉斯對話。"
Inst21Quest5_Location = "凱雯德拉（淒涼之地 - 瑪拉頓; "..YELLOW.."副本入口地圖[4]"..WHITE.."）"
Inst21Quest5_Note = "凱雯德拉就在進入副本之前的橙色部分的開始處。\n你可以從諾克塞恩那裏得到塞雷布拉斯魔棒 "..YELLOW.."[2]"..WHITE.."，從維利塔恩那裏得到塞雷布拉斯鑽石 "..YELLOW.."[5]"..WHITE.."。塞雷布拉斯在 "..YELLOW.."[7]"..WHITE.."。你需要打敗他才能和他說話。"
Inst21Quest5_Prequest = "無"
Inst21Quest5_Folgequest = "塞雷布拉斯節杖"
-- No Rewards for this quest

--Quest 6 Alliance
Inst21Quest6 = "6. 塞雷布拉斯節杖"
Inst21Quest6_Level = "49"
Inst21Quest6_Attain = "41"
Inst21Quest6_Aim = "幫助贖罪的塞雷布拉斯制作塞雷布拉斯節杖。\n當儀式完成之後再和他談談。"
Inst21Quest6_Location = "贖罪的塞雷布拉斯（瑪拉頓 "..YELLOW.."[7]"..WHITE.."）"
Inst21Quest6_Note = "塞雷布拉斯制造節杖。當儀式完成之後，和他對話。"
Inst21Quest6_Prequest = "瑪拉頓的傳說"
Inst21Quest6_Folgequest = "無"
Inst21Quest6FQuest = "true"
--
Inst21Quest6name1 = "塞雷布拉斯節杖"

--Quest 7 Alliance
Inst21Quest7 = "7. 大地的汙染"
Inst21Quest7_Level = "51"
Inst21Quest7_Attain = "45"
Inst21Quest7_Aim = "殺死瑟萊德絲公主，然後回到淒涼之地尼耶爾前哨站的守護者瑪蘭迪斯那裏複命。"
Inst21Quest7_Location = "守護者瑪蘭迪斯（淒涼之地 - 尼耶爾前哨站; "..YELLOW.."63,10"..WHITE.."）"
Inst21Quest7_Note = "瑟萊德絲公主在 "..YELLOW.."[11]"..WHITE.."。"
Inst21Quest7_Prequest = "無"
Inst21Quest7_Folgequest = "生命之種"
--
Inst21Quest7name1 = "痛擊之刃"
Inst21Quest7name2 = "蘇醒之杖"
Inst21Quest7name3 = "綠色守護者之弓"

--Quest 8 Alliance
Inst21Quest8 = "8. 生命之種"
Inst21Quest8_Level = "51"
Inst21Quest8_Attain = "39"
Inst21Quest8_Aim = "到月光林地去找到雷姆洛斯，將生命之種交給他。"
Inst21Quest8_Location = "紮爾塔的靈魂（瑪拉頓 "..YELLOW.."[11]"..WHITE.."）"
Inst21Quest8_Note = "殺死公主後，紮爾塔的靈魂就會出現（"..YELLOW.."[11]"..WHITE.."）。守護者雷姆洛斯（月光林地 - 雷姆洛斯神殿; "..YELLOW.."36,41"..WHITE.."）。"
Inst21Quest8_Prequest = "大地的汙染"
Inst21Quest8_Folgequest = "無"
Inst21Quest8FQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde
Inst21Quest1_HORDE = "1. 暗影殘片"
Inst21Quest1_HORDE_Level = "42"
Inst21Quest1_HORDE_Attain = "39"
Inst21Quest1_HORDE_Aim = "從瑪拉頓收集10塊暗影殘片，然後把它們交給奧格瑞瑪的尤塞爾奈。"
Inst21Quest1_HORDE_Location = "尤塞爾奈（奧格瑞瑪 - 精神谷; "..YELLOW.."39,86"..WHITE.."）"
Inst21Quest1_HORDE_Note = "暗影殘片可以從副本外“暗影碎片巡遊者”或者“暗影碎片擊碎者”身上找到。"
Inst21Quest1_HORDE_Prequest = "無"
Inst21Quest1_HORDE_Folgequest = "無"
--
Inst21Quest1name1_HORDE = "熱情暗影殘片墜飾"
Inst21Quest1name2_HORDE = "巨型暗影碎片墜飾"

--Quest 2 Horde
Inst21Quest2_HORDE = "2. 維利塔恩的汙染"
Inst21Quest2_HORDE_Level = "47"
Inst21Quest2_HORDE_Attain = "41"
Inst21Quest2_HORDE_Aim = "在瑪拉頓裏用天藍水瓶在橙色水晶池中裝滿水。\n在維利斯塔姆藤蔓上使用裝滿水的天藍水瓶，使墮落的諾克賽恩幼體出現。\n治療8株植物並殺死那些諾克賽恩幼體，然後向葬影村的瓦克·戰痕複命。"
Inst21Quest2_HORDE_Location = "瓦克·戰痕（淒涼之地 - 葬影村; "..YELLOW.."23,70"..WHITE.."）"
Inst21Quest2_HORDE_Note = "你可以在瑪拉頓裏任何一個橙色的水池裝水。藤蔓生長在橙色或紫色區域。"
Inst21Quest2_HORDE_Prequest = "無"
Inst21Quest2_HORDE_Folgequest = "無"
--
Inst21Quest2name1_HORDE = "樹種之環"
Inst21Quest2name2_HORDE = "山艾束腰 "
Inst21Quest2name3_HORDE = "枝爪護手"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst21Quest3_HORDE = Inst21Quest3
Inst21Quest3_HORDE_Level = Inst21Quest3_Level
Inst21Quest3_HORDE_Attain = Inst21Quest3_Attain
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
Inst21Quest4_HORDE_Level = Inst21Quest4_Level
Inst21Quest4_HORDE_Attain = Inst21Quest4_Attain
Inst21Quest4_HORDE_Aim = Inst21Quest4_Aim
Inst21Quest4_HORDE_Location = Inst21Quest4_Location
Inst21Quest4_HORDE_Note = Inst21Quest4_Note
Inst21Quest4_HORDE_Page = Inst21Quest4_Page
Inst21Quest4_HORDE_Prequest = Inst21Quest4_Prequest
Inst21Quest4_HORDE_Folgequest = Inst21Quest4_Folgequest
--
Inst21Quest4name1_HORDE = Inst21Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst21Quest5_HORDE = Inst21Quest5
Inst21Quest5_HORDE_Level = Inst21Quest5_Level
Inst21Quest5_HORDE_Attain = Inst21Quest5_Attain
Inst21Quest5_HORDE_Aim = Inst21Quest5_Aim
Inst21Quest5_HORDE_Location = Inst21Quest5_Location
Inst21Quest5_HORDE_Note = Inst21Quest5_Note
Inst21Quest5_HORDE_Prequest = Inst21Quest5_Prequest
Inst21Quest5_HORDE_Folgequest = Inst21Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst21Quest6_HORDE = Inst21Quest6
Inst21Quest6_HORDE_Level = Inst21Quest6_Level
Inst21Quest6_HORDE_Attain = Inst21Quest6_Attain
Inst21Quest6_HORDE_Aim = Inst21Quest6_Aim
Inst21Quest6_HORDE_Location = Inst21Quest6_Location
Inst21Quest6_HORDE_Note = Inst21Quest6_Note
Inst21Quest6_HORDE_Prequest = Inst21Quest6_Prequest
Inst21Quest6_HORDE_Folgequest = Inst21Quest6_Folgequest
Inst21Quest6FQuest_HORDE = Inst21Quest6FQuest
--
Inst21Quest6name1_HORDE = Inst21Quest6name1

--Quest 7 Horde
Inst21Quest7_HORDE = "7. 大地的汙染"
Inst21Quest7_HORDE_Level = "51"
Inst21Quest7_HORDE_Attain = "45"
Inst21Quest7_HORDE_Aim = "殺死瑟萊德絲公主，然後回到淒涼之地葬影村附近的瑟琳德拉那裏複命。"
Inst21Quest7_HORDE_Location = "瑟琳德拉（淒涼之地 - 葬影村; "..YELLOW.."27,77"..WHITE.."）"
Inst21Quest7_HORDE_Note = "瑟萊德絲公主在 "..YELLOW.."[11]"..WHITE.."。"
Inst21Quest7_HORDE_Prequest = "無"
Inst21Quest7_HORDE_Folgequest = "生命之種"
--
Inst21Quest7name1_HORDE = "痛擊之刃"
Inst21Quest7name2_HORDE = "蘇醒之杖"
Inst21Quest7name3_HORDE = "綠色守護者之弓"

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst21Quest8_HORDE = Inst21Quest8
Inst21Quest8_HORDE_Level = Inst21Quest8_Level
Inst21Quest8_HORDE_Attain = Inst21Quest8_Attain
Inst21Quest8_HORDE_Aim = Inst21Quest8_Aim
Inst21Quest8_HORDE_Location = Inst21Quest8_Location
Inst21Quest8_HORDE_Note = Inst21Quest8_Note
Inst21Quest8_HORDE_Prequest = Inst21Quest8_Prequest
Inst21Quest8_HORDE_Folgequest = Inst21Quest8_Folgequest
Inst21Quest8FQuest_HORDE = Inst21Quest8FQuest
-- No Rewards for this quest


--------------- INST22 - Ragefire Chasm (RFC) ---------------

Inst22Story = "怒焰裂谷是一個錯綜複雜的火焰洞穴，它位于獸人的新都城奧格瑞瑪中。最近，有傳言說一批崇拜惡魔陰影教的信徒占據了怒焰裂谷。這個被稱為火刃的組織對杜隆塔爾的安全。許多人認為獸人的酋長薩爾已經意識到了火刃的存在並不打算摧毀他們，因為薩爾希望能夠將他引到陰影議會那裏。不管怎麽樣，黑暗的力量從怒焰裂谷散發出來，它們可能毀了獸人所有的一切。"
Inst22Caption = "怒焰裂谷（RFC）"
Inst22QAA = "無任務"
Inst22QAH = "5 個任務"

--Quest 1 Horde
Inst22Quest1_HORDE = "1. 試探敵人"
Inst22Quest1_HORDE_Level = "15"
Inst22Quest1_HORDE_Attain = "9"
Inst22Quest1_HORDE_Aim = "在奧格瑞瑪找到怒焰裂谷，殺掉8個怒焰穴居人和8個怒焰薩滿祭司，然後向雷霆崖的拉哈羅複命。"
Inst22Quest1_HORDE_Location = "拉哈羅（雷霆崖 - 長者高地; "..YELLOW.."70,29 "..WHITE.."）"
Inst22Quest1_HORDE_Note = "你一開始就能找到穴居人。"
Inst22Quest1_HORDE_Prequest = "無"
Inst22Quest1_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 2 Horde
Inst22Quest2_HORDE = "2. 毀滅之力"
Inst22Quest2_HORDE_Level = "16"
Inst22Quest2_HORDE_Attain = "9"
Inst22Quest2_HORDE_Aim = "將《暗影法術研究》和《扭曲虛空的魔法》這兩本書交給幽暗城的瓦裏瑪薩斯。"
Inst22Quest2_HORDE_Location = "瓦裏瑪薩斯（幽暗城 - 皇家區; "..YELLOW.."56,92 "..WHITE.."）"
Inst22Quest2_HORDE_Note = "燃刃信徒和燃刃術士掉落這兩本書。"
Inst22Quest2_HORDE_Prequest = "無"
Inst22Quest2_HORDE_Folgequest = "無"
--
Inst22Quest2name1_HORDE = "蒼白長褲"
Inst22Quest2name2_HORDE = "泥濘護腿"
Inst22Quest2name3_HORDE = "石像鬼護腿"

--Quest 3 Horde
Inst22Quest3_HORDE = "3. 尋找背包"
Inst22Quest3_HORDE_Level = "16"
Inst22Quest3_HORDE_Attain = "9"
Inst22Quest3_HORDE_Aim = "在怒焰裂谷搜尋瑪爾·恐怖圖騰的屍體以及他留下的東西。"
Inst22Quest3_HORDE_Location = "拉哈羅（雷霆崖 - 長者高地; "..YELLOW.."70,29 "..WHITE.."）"
Inst22Quest3_HORDE_Note = "你會在 "..YELLOW.."[1]"..WHITE.." 發現瑪爾·恐怖圖騰。得到背包後你需要把它交回給雷霆崖的拉哈羅。"
Inst22Quest3_HORDE_Prequest = "無"
Inst22Quest3_HORDE_Folgequest = "歸還背包"
--
Inst22Quest3name1_HORDE = "羽珠護腕"
Inst22Quest3name2_HORDE = "草原獅護腕"

--Quest 4 Horde
Inst22Quest4_HORDE = "4. 隱藏的敵人"
Inst22Quest4_HORDE_Level = "16"
Inst22Quest4_HORDE_Attain = "9"
Inst22Quest4_HORDE_Aim = "殺死巴紮蘭和祈求者耶戈什，然後返回奧格瑞瑪見薩爾。"
Inst22Quest4_HORDE_Location = "薩爾（奧格瑞瑪 - 智慧谷; "..YELLOW.."31,37 "..WHITE.."）"
Inst22Quest4_HORDE_Note = "你會在 "..YELLOW.."[4]"..WHITE.." 發現巴紮蘭，在 "..YELLOW.."[3]"..WHITE.." 發現祈求者耶戈什。"
Inst22Quest4_HORDE_Prequest = "隱藏的敵人"
Inst22Quest4_HORDE_Folgequest = "隱藏的敵人"
Inst22Quest4PreQuest_HORDE = "true"
--
Inst22Quest4name1_HORDE = "奧格瑞瑪之劍"
Inst22Quest4name2_HORDE = "奧格瑞瑪之錘"
Inst22Quest4name3_HORDE = "奧格瑞瑪之斧"
Inst22Quest4name4_HORDE = "奧格瑞瑪法杖"

--Quest 5 Horde
Inst22Quest5_HORDE = "5. 饑餓者塔拉加曼"
Inst22Quest5_HORDE_Level = "16"
Inst22Quest5_HORDE_Attain = "9"
Inst22Quest5_HORDE_Aim = "進入怒焰裂谷，殺死饑餓者塔拉加曼，然後把他的心髒交給奧格瑞瑪的尼爾魯·火刃。"
Inst22Quest5_HORDE_Location = "尼爾魯·火刃（奧格瑞瑪 - 暗影裂口; "..YELLOW.."49,50 "..WHITE.."）"
Inst22Quest5_HORDE_Note = "你會在 "..YELLOW.."[2]"..WHITE.." 找到塔拉加曼。"
Inst22Quest5_HORDE_Prequest = "無"
Inst22Quest5_HORDE_Folgequest = "無"
-- No Rewards for this quest



--------------- INST23 - Razorfen Downs (RFD) ---------------

Inst23Story = "剃刀高地和剃刀沼澤一樣由巨大的藤蔓組成，剃刀高地是野豬人的傳統都城。在那錯綜複雜的荊棘迷宮中居住著大群忠誠的野豬人軍隊以及他們的高等牧師——亡首部族。然而最近，一股陰影力量籠罩了這個原始的洞穴。亡靈天災的人在巫妖寒冰之王亞門納爾的帶領下控制了野豬部族並將荊棘迷宮變成了亡靈力量的堡壘。現在野豬人正奮力戰鬥來重新奪回他們的城市，並阻止亞門納爾繼續控制貧瘠之地。"
Inst23Caption = "剃刀高地（RFD）"
Inst23QAA = "3 個任務"
Inst23QAH = "4 個任務"

--Quest 1 Alliance
Inst23Quest1 = "1. 邪惡之地"
Inst23Quest1_Level = "35"
Inst23Quest1_Attain = "28"
Inst23Quest1_Aim = "殺掉8個剃刀沼澤護衛者、8個剃刀沼澤織棘者和8個亡首教徒，然後向剃刀高地入口處的麥雷姆·月歌複命。"
Inst23Quest1_Location = "麥雷姆·月歌（貧瘠之地 - 剃刀高地; "..YELLOW.."49,94 "..WHITE.."）"
Inst23Quest1_Note = "這些怪出現在你進入副本前經過的路上。"
Inst23Quest1_Prequest = "無"
Inst23Quest1_Folgequest = "無"
-- No Rewards for this quest

--Quest 2 Alliance
Inst23Quest2 = "2. 封印神像"
Inst23Quest2_Level = "37"
Inst23Quest2_Attain = "32"
Inst23Quest2_Aim = "保護奔尼斯特拉茲來到剃刀高地的野豬人神像處。當他在進行儀式封印神像時保護他。"
Inst23Quest2_Location = "奔尼斯特拉茲（剃刀高地; "..YELLOW.."[2] "..WHITE.."）"
Inst23Quest2_Note = "你必須同意幫助奔尼斯特拉茲封印神像，封印過程中會刷新怪物攻擊他，必須保證他的安全。完成後在神像面前獲得獎勵。"
Inst23Quest2_Prequest = "剃刀高地的亡靈天災"
Inst23Quest2_Folgequest = "無"
Inst23Quest2PreQuest = "true"
--
Inst23Quest2name1 = "龍爪戒指"

--Quest 3 Alliance
Inst23Quest3 = "3. 與聖光同在"
Inst23Quest3_Level = "37"
Inst23Quest3_Attain = "32"
Inst23Quest3_Aim = "大主教本尼迪塔斯要你去殺死剃刀高地的寒冰之王亞門納爾。"
Inst23Quest3_Location = "大主教本尼迪塔斯（暴風城 - 光明大教堂; "..YELLOW.."50,45 "..WHITE.."）"
Inst23Quest3_Note = "寒冰之王亞門納爾是剃刀高地的最後一個 Boss。你可以在 "..YELLOW.."[6]"..WHITE.." 找到他。"
Inst23Quest3_Prequest = "無"
Inst23Quest3_Folgequest = "無"
--
Inst23Quest3name1 = "征服者之劍"
Inst23Quest3name2 = "琥珀之光"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst23Quest1_HORDE = Inst23Quest1
Inst23Quest1_HORDE_Level = Inst23Quest1_Level
Inst23Quest1_HORDE_Attain = Inst23Quest1_Attain
Inst23Quest1_HORDE_Aim = Inst23Quest1_Aim
Inst23Quest1_HORDE_Location = Inst23Quest1_Location
Inst23Quest1_HORDE_Note = Inst23Quest1_Note
Inst23Quest1_HORDE_Prequest = Inst23Quest1_Prequest
Inst23Quest1_HORDE_Folgequest = Inst23Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde
Inst23Quest2_HORDE = "2. 邪惡的盟友"
Inst23Quest2_HORDE_Level = "36"
Inst23Quest2_HORDE_Attain = "28"
Inst23Quest2_HORDE_Aim = "把瑪克林大使的頭顱帶給幽暗城的瓦裏瑪薩斯。"
Inst23Quest2_HORDE_Location = "瓦裏瑪薩斯（幽暗城 - 皇家區; "..YELLOW.."56,92 "..WHITE.."）"
Inst23Quest2_HORDE_Note = "剃刀沼澤最後的 Boss 給出前置任務。瑪克林大使位置在進入副本前外面的空地上（貧瘠之地 - 剃刀高地; "..YELLOW.."48,92"..WHITE.."）。"
Inst23Quest2_HORDE_Prequest = "邪惡的盟友"
Inst23Quest2_HORDE_Folgequest = "無"
Inst23Quest2PreQuest_HORDE = "true"
--
Inst23Quest2name1_HORDE = "破顱者"
Inst23Quest2name2_HORDE = "釘槍"
Inst23Quest2name3_HORDE = "狂熱長袍"

--Quest 3 Horde  (same as Quest 2 Alliance)
Inst23Quest3_HORDE = "3. 封印神像"
Inst23Quest3_HORDE_Level = Inst23Quest2_Level
Inst23Quest3_HORDE_Attain = Inst23Quest2_Attain
Inst23Quest3_HORDE_Aim = Inst23Quest2_Aim
Inst23Quest3_HORDE_Location = Inst23Quest2_Location
Inst23Quest3_HORDE_Note = Inst23Quest2_Note
Inst23Quest3_HORDE_Prequest = Inst23Quest2_Prequest
Inst23Quest3_HORDE_Folgequest = Inst23Quest2_Folgequest
Inst23Quest3PreQuest_HORDE = Inst23Quest2PreQuest
--
Inst23Quest3name1_HORDE = Inst23Quest2name1

--Quest 4 Horde
Inst23Quest4_HORDE = "4. 寒冰之王"
Inst23Quest4_HORDE_Level = "42"
Inst23Quest4_HORDE_Attain = "37"
Inst23Quest4_HORDE_Aim = "安德魯·布隆奈爾要你殺了寒冰之王亞門納爾並將其頭骨帶回來。"
Inst23Quest4_HORDE_Location = "安德魯·布隆奈爾（幽暗城 - 魔法區; "..YELLOW.."72,32 "..WHITE.."）"
Inst23Quest4_HORDE_Note = "寒冰之王亞門納爾是剃刀高地最後一個 Boss。位于 "..YELLOW.."[6]"..WHITE.."。"
Inst23Quest4_HORDE_Prequest = "無"
Inst23Quest4_HORDE_Folgequest = "無"
--
Inst23Quest4name1_HORDE = "征服者之劍"
Inst23Quest4name2_HORDE = "琥珀之光"



--------------- INST24 - Razorfen Kraul (RFK) ---------------

Inst24Story = "在一萬年前的古代戰爭中，萬能的半神阿迦瑪甘和燃燒軍團進行了激戰。雖然這頭巨大的豬在戰鬥中倒下了，但是他的努力最終拯救了艾澤拉斯大陸免遭塗炭。雖然已經過去了很久，但是在它血液流淌的地方巨大的荊棘藤蔓生長出來。那些被認為是半神後代的野豬人占領了這些地區並將其奉為聖地。這些荊棘地的中心被稱為剃刀嶺。而巨大的剃刀沼澤則被一個老醜婆卡爾加·刺肋所占據。在她的統治下，信奉薩滿教的野豬人和別的部族以及部落為敵。有些人甚至猜測卡爾加還在和亡靈天災的有來往——她想要聯合亡靈天災來達到一些不可告人的險惡目的。"
Inst24Caption = "剃刀沼澤（RFK）"
Inst24QAA = "5 個任務"
Inst24QAH = "5 個任務"

--Quest 1 Alliance
Inst24Quest1 = "1. 藍葉薯"
Inst24Quest1_Level = "26"
Inst24Quest1_Attain = "20"
Inst24Quest1_Aim = "找到一個開孔的箱子。\n找到一根地鼠指揮棒。\n找到並閱讀《地鼠指揮手冊》。\n在剃刀沼澤裏用開孔的箱子召喚一只地鼠，然後用指揮棒驅使它去搜尋藍葉薯。\n把地鼠指揮棒、開孔的箱子和10塊藍葉薯交給棘齒城的麥伯克·米希瑞克斯。"
Inst24Quest1_Location = "麥伯克·米希瑞克斯（貧瘠之地 - 棘齒城; "..YELLOW.."62,37"..WHITE.."）"
Inst24Quest1_Note = "開孔的箱子，地鼠指揮棒和《地鼠指揮手冊》都在麥伯克·米希瑞克斯附近不遠的地方。"
Inst24Quest1_Prequest = "無"
Inst24Quest1_Folgequest = "無"
--
Inst24Quest1name1 = "一小袋寶石"

--Quest 2 Alliance
Inst24Quest2 = "2. 臨終遺言"
Inst24Quest2_Level = "30"
Inst24Quest2_Attain = "25"
Inst24Quest2_Aim = "將塔莎拉的墜飾帶給達納蘇斯的塔莎拉·靜水。"
Inst24Quest2_Location = "赫爾拉斯·靜水（剃刀沼澤; "..YELLOW.." [8]"..WHITE.."）"
Inst24Quest2_Note = "墜飾隨機掉落。你必須把墜飾帶給塔莎拉·靜水（達納蘇斯 - 貿易區; "..YELLOW.."69,67"..WHITE.."）。"
Inst24Quest2_Prequest = "無"
Inst24Quest2_Folgequest = "無"
--
Inst24Quest2name1 = "悲傷披風"
Inst24Quest2name2 = "槍騎兵戰靴"

--Quest 3 Alliance
Inst24Quest3 = "3. 進口商威利克斯"
Inst24Quest3_Level = "30"
Inst24Quest3_Attain = "22"
Inst24Quest3_Aim = "護送進口商威利克斯逃出剃刀沼澤。"
Inst24Quest3_Location = "進口商威利克斯（剃刀沼澤; "..YELLOW.." [8]"..WHITE.."）"
Inst24Quest3_Note = "你必須把威利克斯護送到入口處。完成後向他領取獎勵。"
Inst24Quest3_Prequest = "無"
Inst24Quest3_Folgequest = "無"
--
Inst24Quest3name1 = "猴子戒指"
Inst24Quest3name2 = "蛇環"
Inst24Quest3name3 = "猛虎指環"

--Quest 4 Alliance
Inst24Quest4 = "4. 卡爾加·刺肋"
Inst24Quest4_Level = "27"
Inst24Quest4_Attain = "23"
Inst24Quest4_Aim = "把卡爾加·刺肋的徽章交給薩蘭納爾的法芬德爾。"
Inst24Quest4_Location = "法芬德爾（菲拉斯 - 薩蘭納爾; "..YELLOW.."89,46"..WHITE.."）"
Inst24Quest4_Note = "卡爾加·刺肋 "..YELLOW.."[7]"..WHITE.." 掉落徽章。"
Inst24Quest4_Prequest = "亨裏格的日記"
Inst24Quest4_Folgequest = "卡爾加·刺肋"
Inst24Quest4PreQuest = "true"
--
Inst24Quest4name1 = "法芬德爾的獵槍"
Inst24Quest4name2 = "綠寶石護肩"
Inst24Quest4name3 = "石拳束帶"
Inst24Quest4name4 = "石飾圓盾"

--Quest 5 Alliance
Inst24Quest5 = "5. 弗倫的铠甲（戰士任務）"
Inst24Quest5_Level = "28"
Inst24Quest5_Attain = "20"
Inst24Quest5_Aim = "收集必需的材料，將它們交給暴風城的弗倫·長須。"
Inst24Quest5_Location = "弗倫·長須（暴風城 - 矮人區; "..YELLOW.."64,37"..WHITE.."）"
Inst24Quest5_Note = "只有戰士才能接到這個任務！\n你可以從魯古格 "..YELLOW.."[1]"..WHITE.." 得到燃素。\n\n濕地的蜘蛛掉落燒焦的蜘蛛牙，石爪山脈的奇美幼崽拉掉落燒焦的奇美拉角、雌奇美拉掉落光滑的奇美拉角。"
Inst24Quest5_Prequest = "鑄盾師"
Inst24Quest5_Folgequest = "（見注釋）"
Inst24Quest5PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst24Quest1_HORDE = Inst24Quest1
Inst24Quest1_HORDE_Level = Inst24Quest1_Level
Inst24Quest1_HORDE_Attain = Inst24Quest1_Attain
Inst24Quest1_HORDE_Aim = Inst24Quest1_Aim
Inst24Quest1_HORDE_Location = Inst24Quest1_Location
Inst24Quest1_HORDE_Note = Inst24Quest1_Note
Inst24Quest1_HORDE_Prequest = Inst24Quest1_Prequest
Inst24Quest1_HORDE_Folgequest = Inst24Quest1_Folgequest
--
Inst24Quest1name1_HORDE = Inst24Quest1name1

--Quest 2 Horde  (same as Quest 3 Alliance)
Inst24Quest2_HORDE = "2. 進口商威利克斯"
Inst24Quest2_HORDE_Level = Inst24Quest3_Level
Inst24Quest2_HORDE_Attain = Inst24Quest3_Attain
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
Inst24Quest3_HORDE = "3. 蝙蝠的糞便"
Inst24Quest3_HORDE_Level = "26"
Inst24Quest3_HORDE_Attain = "22"
Inst24Quest3_HORDE_Aim = "幫幽暗城的大藥劑師法拉尼爾帶回一堆沼澤蝙蝠的糞便。"
Inst24Quest3_HORDE_Location = "法拉尼爾（幽暗城 - 煉金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst24Quest3_HORDE_Note = "任何蝙蝠都會掉落沼澤蝙蝠的糞便。"
Inst24Quest3_HORDE_Prequest = "無"
Inst24Quest3_HORDE_Folgequest = "狂熱之心（"..YELLOW.."[剃刀高地]"..WHITE.."）"
-- No Rewards for this quest

--Quest 4 Horde
Inst24Quest4_HORDE = "4. 奧爾德的報複"
Inst24Quest4_HORDE_Level = "27"
Inst24Quest4_HORDE_Attain = "23"
Inst24Quest4_HORDE_Aim = "把卡爾加·刺肋的心髒交給雷霆崖的奧爾德·石塔。"
Inst24Quest4_HORDE_Location = "奧爾德·石塔（雷霆崖; "..YELLOW.."36,59 "..WHITE.."）"
Inst24Quest4_HORDE_Note = "卡爾加·刺肋在 "..YELLOW.."[7]"..WHITE.."、"
Inst24Quest4_HORDE_Prequest = "無"
Inst24Quest4_HORDE_Folgequest = "無"
--
Inst24Quest4name1_HORDE = "綠寶石護肩"
Inst24Quest4name2_HORDE = "石拳束帶"
Inst24Quest4name3_HORDE = "石飾圓盾"

--Quest 5 Horde
Inst24Quest5_HORDE = "5. 野蠻護甲（戰士任務）"
Inst24Quest5_HORDE_Level = "30"
Inst24Quest5_HORDE_Attain = "20"
Inst24Quest5_HORDE_Aim = "為索恩格瑞姆收集15根煙霧鐵錠、10份藍銅粉、10塊鐵錠和1瓶燃素。"
Inst24Quest5_HORDE_Location = "索恩格瑞姆·火眼（貧瘠之地; "..YELLOW.."57,30 "..WHITE.."）"
Inst24Quest5_HORDE_Note = "只有戰士才能接到這個任務！\n你可以從魯古格 "..YELLOW.."[1]"..WHITE.." 得到燃素。\n\n完成這個任務後他會給你一個新的任務。"
Inst24Quest5_HORDE_Prequest = "和索恩格瑞姆交談"
Inst24Quest5_HORDE_Folgequest = "（見注釋）"
Inst24Quest5PreQuest_HORDE = "true"
-- No Rewards for this quest



--------------- INST25 - Wailing Caverns (WC) ---------------

Inst25Story = "最近一個名叫納拉雷克斯的暗夜精靈德魯伊在貧瘠之地中的地下發現了一個錯綜複雜的洞穴網。這個被稱作“哀嚎洞穴”的地方有很多的蒸汽縫隙，所以當蒸氣噴射的時候發出的聲音就猶如哀嚎一般，其因此而得名。納拉雷克斯可以利用洞穴中的溫泉來恢複貧瘠之地的生態，讓這裏重新獲得生機——但是這樣做需要吸收傳說中的翡翠夢境的能量。一旦和翡翠夢境相連接，德魯伊的視線中就變成了一場噩夢。不久之後，哀嚎洞穴開始變化——洞中的水開始腐化——曾經溫順的生物開始變成狂暴，致命的捕食者。據說納拉雷克斯自己還居住在這個迷宮的最深處，他被翡翠夢境的邊緣所困擾著。即使他以前的隨從也被他們的主人所經曆的噩夢所腐化——他們都變成了邪惡的尖牙德魯伊。"
Inst25Caption = "哀嚎洞穴（WC）"
Inst25QAA = "5 個任務"
Inst25QAH = "7 個任務"

--Quest 1 Alliance
Inst25Quest1 = "1. 變異皮革"
Inst25Quest1_Level = "17"
Inst25Quest1_Attain = "13"
Inst25Quest1_Aim = "哀嚎洞穴的納爾帕克想要20張變異皮革。"
Inst25Quest1_Location = "納爾帕克（貧瘠之地 - 哀嚎洞穴; "..YELLOW.."47,36 "..WHITE.."）"
Inst25Quest1_Note = "每個副本前面或裏面的變異的怪都可能掉落變異皮革。納爾帕克在入口上方的山頂洞穴裏。"
Inst25Quest1_Prequest = "無"
Inst25Quest1_Folgequest = "無"
--
Inst25Quest1name1 = "光滑的蛇鱗護腿"
Inst25Quest1name2 = "變異皮包"

--Quest 2 Alliance
Inst25Quest2 = "2. 港口的麻煩"
Inst25Quest2_Level = "18"
Inst25Quest2_Attain = "14"
Inst25Quest2_Aim = "棘齒城的起重機操作員比戈弗茲讓你從瘋狂的馬格利什那兒取回一瓶99年波爾多陳釀，瘋狂的馬格利什就藏在哀嚎洞穴裏。"
Inst25Quest2_Location = "起重機操作員比戈弗茲（貧瘠之地 - 棘齒城; "..YELLOW.."63,37 "..WHITE.."）"
Inst25Quest2_Note = "你進入副本殺死瘋狂的馬格利什，拿到酒瓶。當你進入洞穴後向右轉，他就在一個凹進去的洞裏 "..YELLOW.."副本入口地圖[2]"..WHITE.."。"
Inst25Quest2_Prequest = "無"
Inst25Quest2_Folgequest = "無"
-- No Rewards for this quest

--Quest 3 Alliance
Inst25Quest3 = "3. 智慧飲料"
Inst25Quest3_Level = "18"
Inst25Quest3_Attain = "14"
Inst25Quest3_Aim = "收集6份哀嚎香精，把它們交給棘齒城的麥伯克·米希瑞克斯。"
Inst25Quest3_Location = "麥伯克·米希瑞克斯（貧瘠之地 - 棘齒城; "..YELLOW.."62,37 "..WHITE.."）"
Inst25Quest3_Note = "此任務的前置任務也是在麥伯克·米希瑞克斯這兒接到的。\n軟漿怪掉落香精。"
Inst25Quest3_Prequest = "迅猛龍角"
Inst25Quest3_Folgequest = "無"
Inst25Quest3PreQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst25Quest4 = "4. 清除變異者"
Inst25Quest4_Level = "21"
Inst25Quest4_Attain = "15"
Inst25Quest4_Aim = "哀嚎洞穴的厄布魯要求你殺掉7只變異破壞者、7只劇毒飛蛇、7只變異蹒跚者和7只變異尖牙風蛇。"
Inst25Quest4_Location = "厄布魯（貧瘠之地 - 哀嚎洞穴; "..YELLOW.."47,36 "..WHITE.."）"
Inst25Quest4_Note = "厄布魯在入口上方山頂的洞穴裏。"
Inst25Quest4_Prequest = "無"
Inst25Quest4_Folgequest = "無"
--
Inst25Quest4name1 = "圖樣：蛇鱗腰帶"
Inst25Quest4name2 = "燒灼之棒"
Inst25Quest4name3 = "達格米爾護手"

--Quest 5 Alliance
Inst25Quest5 = "5. 發光的碎片"
Inst25Quest5_Level = "25"
Inst25Quest5_Attain = "21"
Inst25Quest5_Aim = "去棘齒城尋找更多有關這塊噩夢碎片的信息。"
Inst25Quest5_Location = "發光的碎片掉落自（『吞噬者』穆坦努斯"..YELLOW.."[9]"..WHITE.."）"
Inst25Quest5_Note = "當你殺死了最後的 Boss 『吞噬者』穆坦努斯後，你就會得到發光的碎片。而只有當你殺死了4個德魯伊，並完成護送德魯伊任務後，『吞噬者』穆坦努斯才會出現。\n當你拿到碎片後，你必須把它帶回棘齒城，然後返回哀嚎洞穴外面山頂找到菲拉·古風。注意：去棘齒城找個地精說話，（就是做《什麽什麽平衡器》那個任務的地精），他頭上是沒有問號的，要自己去點他。"
Inst25Quest5_Prequest = "無"
Inst25Quest5_Folgequest = "在噩夢中"
--
Inst25Quest5name1 = "塔巴爾護肩"
Inst25Quest5name2 = "泥潭沼澤長靴"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst25Quest1_HORDE = Inst25Quest1
Inst25Quest1_HORDE_Level = Inst25Quest1_Level
Inst25Quest1_HORDE_Attain = Inst25Quest1_Attain
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
Inst25Quest2_HORDE_Level = Inst25Quest2_Level
Inst25Quest2_HORDE_Attain = Inst25Quest2_Attain
Inst25Quest2_HORDE_Aim = Inst25Quest2_Aim
Inst25Quest2_HORDE_Location = Inst25Quest2_Location
Inst25Quest2_HORDE_Note = Inst25Quest2_Note
Inst25Quest2_HORDE_Prequest = Inst25Quest2_Prequest
Inst25Quest2_HORDE_Folgequest = Inst25Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde
Inst25Quest3_HORDE = "3. 毒蛇花"
Inst25Quest3_HORDE_Level = "18"
Inst25Quest3_HORDE_Attain = "14"
Inst25Quest3_HORDE_Aim = "為雷霆崖的藥劑師紮瑪收集10朵毒蛇花。"
Inst25Quest3_HORDE_Location = "藥劑師紮瑪（雷霆崖 -靈魂高地; "..YELLOW.."22,20 "..WHITE.."）"
Inst25Quest3_HORDE_Note = "你可以在藥劑師赫布瑞姆處領取前置任務（貧瘠之地 - 十字路口; "..YELLOW.."51,30"..WHITE.."）。\n你可以在山洞裏副本前或副本內采到毒蛇花。學習草藥學的玩家打開尋找草藥技能就可以在自己的小地圖上看到毒蛇花的位置。"
Inst25Quest3_HORDE_Prequest = "菌類孢子 -> 藥劑師紮瑪"
Inst25Quest3_HORDE_Folgequest = "無"
Inst25Quest3PreQuest_HORDE = "true"
--
Inst25Quest3name1_HORDE = "藥劑師手套"

--Quest 4 Horde  (same as Quest 3 Alliance)
Inst25Quest4_HORDE = "4. 智慧飲料"
Inst25Quest4_HORDE_Level = Inst25Quest3_Level
Inst25Quest4_HORDE_Attain = Inst25Quest3_Attain
Inst25Quest4_HORDE_Aim = Inst25Quest3_Aim
Inst25Quest4_HORDE_Location = Inst25Quest3_Location
Inst25Quest4_HORDE_Note = Inst25Quest3_Note
Inst25Quest4_HORDE_Prequest = Inst25Quest3_Prequest
Inst25Quest4_HORDE_Folgequest = Inst25Quest3_Folgequest
Inst25Quest4PreQuest_HORDE = Inst25Quest3PreQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 4 Alliance)
Inst25Quest5_HORDE = "5. 清除變異者"
Inst25Quest5_HORDE_Level = Inst25Quest4_Level
Inst25Quest5_HORDE_Attain = Inst25Quest4_Attain
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
Inst25Quest6_HORDE = "6. 尖牙德魯伊"
Inst25Quest6_HORDE_Level = "22"
Inst25Quest6_HORDE_Attain = "18"
Inst25Quest6_HORDE_Aim = "將考布萊恩寶石、安娜科德拉寶石、皮薩斯寶石和瑟芬迪斯寶石交給雷霆崖的納拉·蠻鬃。"
Inst25Quest6_HORDE_Location = "納拉·蠻鬃（雷霆崖; "..YELLOW.."75,31 "..WHITE.."）"
Inst25Quest6_HORDE_Note = "系列任務始于哈缪爾·符文圖騰（雷霆崖 - 長者高地; "..YELLOW.."78,28"..WHITE.."）\n掉落寶石的4個德魯伊位于 "..YELLOW.."[2]"..WHITE.."，"..YELLOW.."[3]"..WHITE.."，"..YELLOW.."[5]"..WHITE.."，"..YELLOW.."[7]"..WHITE.."。"
Inst25Quest6_HORDE_Prequest = "貧瘠之地的綠洲 -> 納拉·蠻鬃"
Inst25Quest6_HORDE_Folgequest = "無"
Inst25Quest6PreQuest_HORDE = "true"
--
Inst25Quest6name1_HORDE = "新月法杖"
Inst25Quest6name2_HORDE = "翼刃"

--Quest 7 Horde  (same as Quest 5 Alliance)
Inst25Quest7_HORDE = "7. 發光的碎片"
Inst25Quest7_HORDE_Level = Inst25Quest5_Level
Inst25Quest7_HORDE_Attain = Inst25Quest5_Attain
Inst25Quest7_HORDE_Aim = Inst25Quest5_Aim
Inst25Quest7_HORDE_Location = Inst25Quest5_Location
Inst25Quest7_HORDE_Note = Inst25Quest5_Note
Inst25Quest7_HORDE_Prequest = Inst25Quest5_Prequest
Inst25Quest7_HORDE_Folgequest = Inst25Quest5_Folgequest
--
Inst25Quest7name1_HORDE = Inst25Quest5name1
Inst25Quest7name2_HORDE = Inst25Quest5name2




--------------- INST26 - Zul'Farrak (ZF) ---------------

Inst26Story = "日光暴曬下的這座城市是沙怒巨魔的家園，他們一向以來都以其無情和黑暗魔法而聞名。巨魔傳說中有一把強大的名叫鞭笞者蘇薩斯的武器能夠讓最弱小的人可以擊敗最強大的敵人。很久以前，這把武器被分成了兩半。然而，有傳言說這兩半可以在祖爾法拉克任何地方找到。據說還有一批加基森派來的雇傭兵進入了城市並被困住。他們的命運還不得而知。但是也許最讓人感到不安的是一頭遠古生物正沈睡在城市中心的一個神聖的水池中——它是一個半神，它會摧毀任何膽敢喚醒它的人。"
Inst26Caption = "祖爾法拉克（ZF）"
Inst26QAA = "7 個任務"
Inst26QAH = "7 個任務"

--Quest 1 Alliance
Inst26Quest1 = "1. 巨魔調和劑"
Inst26Quest1_Level = "45"
Inst26Quest1_Attain = "40"
Inst26Quest1_Aim = "收集20瓶巨魔調和劑，把它們交給加基森的特倫頓·輕錘。"
Inst26Quest1_Location = "特倫頓·輕錘（塔納利斯 - 加基森; "..YELLOW.."51,28 "..WHITE.."）"
Inst26Quest1_Note = "每個巨魔都可能掉落調和劑。"
Inst26Quest1_Prequest = "無"
Inst26Quest1_Folgequest = "無"
-- No Rewards for this quest

--Quest 2 Alliance
Inst26Quest2 = "2. 聖甲蟲的殼"
Inst26Quest2_Level = "45"
Inst26Quest2_Attain = "40"
Inst26Quest2_Aim = "給加基森的特蘭雷克帶去5個完整的聖甲蟲殼。"
Inst26Quest2_Location = "特蘭雷克（塔納利斯 - 加基森; "..YELLOW.."51,26 "..WHITE.."）"
Inst26Quest2_Note = "前置任務始于克拉茲克（荊棘谷 - 藏寶海灣; "..YELLOW.."25,77"..WHITE.."）。\n每個聖甲蟲都可能掉落殼兒。大量聖甲蟲集中在 "..YELLOW.."[2]"..WHITE.."。"
Inst26Quest2_Prequest = "特蘭雷克"
Inst26Quest2_Folgequest = "無"
Inst26Quest2PreQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst26Quest3 = "3. 深淵皇冠"
Inst26Quest3_Level = "46"
Inst26Quest3_Attain = "40"
Inst26Quest3_Aim = "將深淵皇冠交給塵泥沼澤的塔貝薩。"
Inst26Quest3_Location = "塔貝薩（塵泥沼澤; "..YELLOW.."46,57 "..WHITE.."）"
Inst26Quest3_Note = "前置任務從彬克（鐵爐堡; "..YELLOW.."25,8"..WHITE.."）處獲得。\n水占師維蕾薩掉落深淵皇冠。你可以在 "..YELLOW.."[6]"..WHITE.." 找到她。"
Inst26Quest3_Prequest = "塔貝薩的任務"
Inst26Quest3_Folgequest = "無"
Inst26Quest3PreQuest = "true"
--
Inst26Quest3name1 = "幻法之杖"
Inst26Quest3name2 = "晶岩肩铠"

--Quest 4 Alliance
Inst26Quest4 = "4. 耐克魯姆的徽章"
Inst26Quest4_Level = "47"
Inst26Quest4_Attain = "40"
Inst26Quest4_Aim = "將耐克魯姆的徽章交給詛咒之地的薩迪斯·格希德。"
Inst26Quest4_Location = "薩迪斯·格希德（詛咒之地 - 守望堡; "..YELLOW.."66,19 "..WHITE.."）"
Inst26Quest4_Note = "此系列任務始于獅鹫管理員沙拉克·鷹斧（辛特蘭 - 蠻錘城堡; "..YELLOW.."9,44"..WHITE.."）。\n你可以在 "..YELLOW.."[4]"..WHITE.." 找到耐克魯姆。"
Inst26Quest4_Prequest = "枯木巨魔的牢籠 -> 薩迪斯·格希德"
Inst26Quest4_Folgequest = "占蔔"
Inst26Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst26Quest5 = "5. 摩沙魯的預言"
Inst26Quest5_Level = "47"
Inst26Quest5_Attain = "40"
Inst26Quest5_Aim = "將第一塊和第二塊摩沙魯石板交給塔納利斯的葉基亞。"
Inst26Quest5_Location = "葉基亞（塔納利斯 - 熱砂港; "..YELLOW.."66,22 "..WHITE.."）"
Inst26Quest5_Note = "前置任務也是在此獲得。\n兩塊石板分別由殉教者塞卡 "..YELLOW.."[2]"..WHITE.." 和水占師維蕾薩 "..YELLOW.."[6]"..WHITE.." 掉落。"
Inst26Quest5_Prequest = "尖嘯者的靈魂"
Inst26Quest5_Folgequest = "遠古之卵"
Inst26Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst26Quest6 = "6. 探水棒"
Inst26Quest6_Level = "47"
Inst26Quest6_Attain = "40"
Inst26Quest6_Aim = "把探水棒交給加基森的首席工程師沙克斯·比格維茲。"
Inst26Quest6_Location = "比格維茲（塔納利斯 - 加基森; "..YELLOW.."52,28 "..WHITE.."）"
Inst26Quest6_Note = "你可以從布萊中士那裏得到探水棒。你可以在 "..YELLOW.."[4]"..WHITE.." 找到他。但要在神廟百人斬事件後後打敗布萊中士，才能得到探水棒。"
Inst26Quest6_Prequest = "無"
Inst26Quest6_Folgequest = "無"
--
Inst26Quest6name1 = "石工兄弟會之戒"
Inst26Quest6name2 = "工程學協會頭盔"

--Quest 7 Alliance
Inst26Quest7 = "7. 加茲瑞拉"
Inst26Quest7_Level = "50"
Inst26Quest7_Attain = "40"
Inst26Quest7_Aim = "把加茲瑞拉的鱗片交給閃光平原的維茲爾·銅栓。"
Inst26Quest7_Location = "維茲爾·銅栓（千針石林 - 閃光平原; "..YELLOW.."78,77 "..WHITE.."）"
Inst26Quest7_Note = "前置任務從科羅莫特·鋼尺（鐵爐堡 - 侏儒區; "..YELLOW.."68,46"..WHITE.."）得到。但這不是一個必要的任務。\n你可以在"..YELLOW.."[6]"..WHITE.."敲鑼召喚加茲瑞拉。不再需要祖爾法拉克之槌。"
Inst26Quest7_Prequest = "銅栓兄弟"
Inst26Quest7_Folgequest = "無"
Inst26Quest7PreQuest = "true"
--
Inst26Quest7name1 = "棍子上的胡蘿蔔"


--Quest 1 Horde
Inst26Quest1_HORDE = "1. 蜘蛛之神"
Inst26Quest1_HORDE_Level = "45"
Inst26Quest1_HORDE_Attain = "40"
Inst26Quest1_HORDE_Aim = "閱讀塞卡石板，了解枯木巨魔的蜘蛛之神的名字，然後回到加德林大師那裏。"
Inst26Quest1_HORDE_Location = "加德林大師（杜隆塔爾 - 森金村; "..YELLOW.."55,74 "..WHITE.."）"
Inst26Quest1_HORDE_Note = "此任務始于辛特蘭巨魔村莊的毒液瓶任務。\n你會在 "..YELLOW.."[2]"..WHITE.." 發現石板。"
Inst26Quest1_HORDE_Prequest = "毒液瓶 -> 請教加德林大師"
Inst26Quest1_HORDE_Folgequest = "召喚沙德拉"
Inst26Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 1 Alliance)
Inst26Quest2_HORDE = "2. 巨魔調和劑"
Inst26Quest2_HORDE_Level = Inst26Quest1_Level
Inst26Quest2_HORDE_Attain = Inst26Quest1_Attain
Inst26Quest2_HORDE_Aim = Inst26Quest1_Aim
Inst26Quest2_HORDE_Location = Inst26Quest1_Location
Inst26Quest2_HORDE_Note = Inst26Quest1_Note
Inst26Quest2_HORDE_Prequest = Inst26Quest1_Prequest
Inst26Quest2_HORDE_Folgequest = Inst26Quest1_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 2 Alliance)
Inst26Quest3_HORDE = "3. 聖甲蟲的殼"
Inst26Quest3_HORDE_Level = Inst26Quest2_Level
Inst26Quest3_HORDE_Attain = Inst26Quest2_Attain
Inst26Quest3_HORDE_Aim = Inst26Quest2_Aim
Inst26Quest3_HORDE_Location = Inst26Quest2_Location
Inst26Quest3_HORDE_Note = Inst26Quest2_Note
Inst26Quest3_HORDE_Prequest = Inst26Quest2_Prequest
Inst26Quest3_HORDE_Folgequest = Inst26Quest2_Folgequest
Inst26Quest3PreQuest_HORDE = Inst26Quest2PreQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 3 Alliance - no prequest)
Inst26Quest4_HORDE = "4. 深淵皇冠"
Inst26Quest4_HORDE_Level = Inst26Quest3_Level
Inst26Quest4_HORDE_Attain = Inst26Quest3_Attain
Inst26Quest4_HORDE_Aim = Inst26Quest3_Aim
Inst26Quest4_HORDE_Location = Inst26Quest3_Location
Inst26Quest4_HORDE_Note = "水占師維蕾薩掉落深淵皇冠。你可以在"..YELLOW.."[6]"..WHITE.."找到她。"
Inst26Quest4_HORDE_Prequest = "無"
Inst26Quest4_HORDE_Folgequest = Inst26Quest3_Folgequest
--
Inst26Quest4name1_HORDE = Inst26Quest3name1
Inst26Quest4name2_HORDE = Inst26Quest3name2

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst26Quest5_HORDE = Inst26Quest5
Inst26Quest5_HORDE_Level = Inst26Quest5_Level
Inst26Quest5_HORDE_Attain = Inst26Quest5_Attain
Inst26Quest5_HORDE_Aim = Inst26Quest5_Aim
Inst26Quest5_HORDE_Location = Inst26Quest5_Location
Inst26Quest5_HORDE_Note = Inst26Quest5_Note
Inst26Quest5_HORDE_Prequest = Inst26Quest5_Prequest
Inst26Quest5_HORDE_Folgequest = Inst26Quest5_Folgequest
Inst26Quest5PreQuest_HORDE = Inst26Quest5Prequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst26Quest6_HORDE = Inst26Quest6
Inst26Quest6_HORDE_Level = Inst26Quest6_Level
Inst26Quest6_HORDE_Attain = Inst26Quest6_Attain
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
Inst26Quest7_HORDE_Level = Inst26Quest7_Level
Inst26Quest7_HORDE_Attain = Inst26Quest7_Attain
Inst26Quest7_HORDE_Aim = Inst26Quest7_Aim
Inst26Quest7_HORDE_Location = Inst26Quest7_Location
Inst26Quest7_HORDE_Note = "你可以在"..YELLOW.."[6]"..WHITE.."敲鑼召喚加茲瑞拉。不再需要祖爾法拉克之槌。"
Inst26Quest7_HORDE_Prequest = "無"
Inst26Quest7_HORDE_Folgequest = Inst26Quest7_Folgequest
--
Inst26Quest7name1_HORDE = Inst26Quest7name1




--------------- INST27 - Molten Core (MC) ---------------

Inst27Story = "熔火之心就在黑石深淵的底層。這是黑石山的中心，也是很久以前扭轉矮人內戰情勢的地方，索瑞森大帝將元素火焰之王，拉格納羅斯召喚到世界來。盡管火焰之王無法遠離熔火之心，但人們相信他的元素爪牙控制著黑鐵矮人，在遺迹之外組建軍隊。拉格納羅斯休眠的燃燒之湖有一道裂縫連接火平面，讓邪惡的元素可以通過。拉格納羅斯的首要代理人是管理者埃克索圖斯——因為這是唯一能喚醒火焰之王的狡猾元素。"
Inst27Caption = "熔火之心（MC）"
Inst27QAA = "6 個任務"
Inst27QAH = "6 個任務"

--Quest 1 Alliance
Inst27Quest1 = "1. 熔火之心"
Inst27Quest1_Level = "60"
Inst27Quest1_Attain = "58"
Inst27Quest1_Aim = "殺死一個火焰之王、一個熔岩巨人、一個上古熔火惡犬和一個熔岩奔騰者，然後回到艾薩拉的海達克西斯公爵那裏。"
Inst27Quest1_Location = "海達克西斯公爵（艾薩拉; "..YELLOW.."79,73"..WHITE.."）"
Inst27Quest1_Note = "這些都不是熔火之心的 Boss。\n\n補丁3.0.8之後，將不能開始這個任務線。如果你已經有了這個任務，依然可以完成。"
Inst27Quest1_Prequest = "艾博希爾之眼（"..YELLOW.."上層黑石塔"..WHITE.."）"
Inst27Quest1_Folgequest = "海達克西斯的使者"
Inst27Quest1PreQuest = "true"
-- No Rewards for this quest

--Quest 2 Alliance
Inst27Quest2 = "2. 敵人之手"
Inst27Quest2_Level = "60"
Inst27Quest2_Attain = "55"
Inst27Quest2_Aim = "將魯西弗隆之手、薩弗隆之手、基赫納斯之手和沙斯拉爾之手交給艾薩拉的海達克西斯公爵。"
Inst27Quest2_Location = "海達克西斯公爵（艾薩拉; "..YELLOW.."79,73"..WHITE.."）"
Inst27Quest2_Note = "魯西弗隆在 "..YELLOW.."[1]"..WHITE.."，薩弗隆先驅者在 "..YELLOW.."[8]"..WHITE.."，基赫納斯在 "..YELLOW.."[3]"..WHITE.."，還有沙斯拉爾在 "..YELLOW.."[5]"..WHITE.."。\n獎勵物品在後續任務“英雄的獎賞”中。補丁3.0.8之後，將不能開始這個任務線。如果你已經有了這個任務，依然可以完成。"
Inst27Quest2_Prequest = "海達克西斯的使者"
Inst27Quest2_Folgequest = "無"
Inst27Quest2FQuest = "true"
--
Inst27Quest2name1 = "海洋之風"
Inst27Quest2name2 = "潮汐指環"

--Quest 3 Alliance
Inst27Quest3 = "3. 逐風者桑德蘭"
Inst27Quest3_Level = "60"
Inst27Quest3_Attain = "60"
Inst27Quest3_Aim = "如果你想要把逐風者桑德蘭從監牢裏釋放出來，你就必須找到左右兩塊逐風者禁锢之顱，10塊源質錠，以及火焰之王的精華，把它們交給德米提恩。"
Inst27Quest3_Location = "德米提恩（希利蘇斯; "..YELLOW.."22,9"..WHITE.."）"
Inst27Quest3_Note = "雷霆之怒，逐風者的祝福之劍部分任務，當你從加爾 "..YELLOW.."[4]"..WHITE.." 拿到逐風者禁锢之顱右半和迦頓男爵 "..YELLOW.."[6]"..WHITE.." 拿到逐風者禁锢之顱左半後，與德米提恩對話開啓任務線。拉格納羅斯 "..YELLOW.."[10]"..WHITE.." 掉落火焰之王的精華。完成這些後，召喚並殺掉桑德蘭王子，這是一個40人團隊 Boss。"
Inst27Quest3_Prequest = "複生之瓶"
Inst27Quest3_Folgequest = "覺醒吧，雷霆之怒！"
Inst27Quest3PreQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst27Quest4 = "4. 瑟銀兄弟會契約"
Inst27Quest4_Level = "60"
Inst27Quest4_Attain = "60"
Inst27Quest4_Aim = "如果你願意接受薩弗隆的設計圖，請將瑟銀兄弟會契約交給羅克圖斯·暗契。"
Inst27Quest4_Location = "羅克圖斯·暗契（黑石深淵; "..YELLOW.."[15]"..WHITE.."）"
Inst27Quest4_Note = "你需要薩弗隆鐵錠來與洛克圖斯簽訂契約。熔火之心的焚化者古雷曼格 "..YELLOW.."[7]"..WHITE.." 掉落鐵錠。"
Inst27Quest4_Prequest = "無"
Inst27Quest4_Folgequest = "無"
--
Inst27Quest4name1 = "設計圖：薩弗隆之錘"

--Quest 5 Alliance
Inst27Quest5 = "5. 遠古石葉"
Inst27Quest5_Level = "60"
Inst27Quest5_Attain = "60"
Inst27Quest5_Aim = "找到遠古石葉的主人。"
Inst27Quest5_Location = "（火焰之王的寶箱; "..YELLOW.."[9]"..WHITE.."）之中，可能有遠古石葉。"
Inst27Quest5_Note = "把遠古石葉交還給古樹瓦特魯斯（費伍德森林 - 鐵木森林; "..YELLOW.."49,24"..WHITE.."）。"
Inst27Quest5_Prequest = "無"
Inst27Quest5_Folgequest = "龍筋箭袋（"..YELLOW.."艾索雷葛斯"..WHITE.."）"
-- No Rewards for this quest

--Quest 6 Alliance
Inst27Quest6 = "6. 占蔔眼鏡？沒問題！"
Inst27Quest6_Level = "60"
Inst27Quest6_Attain = "60"
Inst27Quest6_Aim = "找到納瑞安的占蔔眼鏡。"
Inst27Quest6_Location = "不起眼的箱子（銀松森林 - 格雷邁恩之牆; "..YELLOW.."46.2, 86.6"..WHITE.."）"
Inst27Quest6_Note = "補丁3.0.2之後，熔火之心的任意怪物都會掉落占蔔眼鏡。完成後交給納瑞安（塔納利斯; "..YELLOW.."65.3, 18.6"..WHITE.."），也是前置任務獲得的地方。"
Inst27Quest6_Prequest = "斯圖沃爾，前任死黨"
Inst27Quest6_Folgequest = "無"
Inst27Quest6PreQuest = "true"
--
Inst27Quest6name1 = "特效活力藥水"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst27Quest1_HORDE = Inst27Quest1
Inst27Quest1_HORDE_Level = Inst27Quest1_Level
Inst27Quest1_HORDE_Attain = Inst27Quest1_Attain
Inst27Quest1_HORDE_Aim = Inst27Quest1_Aim
Inst27Quest1_HORDE_Location = Inst27Quest1_Location
Inst27Quest1_HORDE_Note = Inst27Quest1_Note
Inst27Quest1_HORDE_Prequest = Inst27Quest1_Prequest
Inst27Quest1_HORDE_Folgequest = Inst27Quest1_Folgequest
Inst27Quest1PreQuest_HORDE = Inst27Quest1PreQuest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst27Quest2_HORDE = Inst27Quest2
Inst27Quest2_HORDE_Level = Inst27Quest2_Level
Inst27Quest2_HORDE_Attain = Inst27Quest2_Attain
Inst27Quest2_HORDE_Aim = Inst27Quest2_Aim
Inst27Quest2_HORDE_Location = Inst27Quest2_Location
Inst27Quest2_HORDE_Note = Inst27Quest2_Note
Inst27Quest2_HORDE_Prequest = Inst27Quest2_Prequest
Inst27Quest2_HORDE_Folgequest = Inst27Quest2_Folgequest
Inst27Quest2FQuest_HORDE = Inst27Quest2FQuest
--
Inst27Quest2name1_HORDE = Inst27Quest2name1
Inst27Quest2name2_HORDE = Inst27Quest2name2

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst27Quest3_HORDE = Inst27Quest3
Inst27Quest3_HORDE_Level = Inst27Quest3_Level
Inst27Quest3_HORDE_Attain = Inst27Quest3_Attain
Inst27Quest3_HORDE_Aim = Inst27Quest3_Aim
Inst27Quest3_HORDE_Location = Inst27Quest3_Location
Inst27Quest3_HORDE_Note = Inst27Quest3_Note
Inst27Quest3_HORDE_Prequest = Inst27Quest3_Prequest
Inst27Quest3_HORDE_Folgequest = Inst27Quest3_Folgequest
Inst27Quest3PreQuest_HORDE = Inst27Quest3PreQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst27Quest4_HORDE = Inst27Quest4
Inst27Quest4_HORDE_Level = Inst27Quest4_Level
Inst27Quest4_HORDE_Attain = Inst27Quest4_Attain
Inst27Quest4_HORDE_Aim = Inst27Quest4_Aim
Inst27Quest4_HORDE_Location = Inst27Quest4_Location
Inst27Quest4_HORDE_Note = Inst27Quest4_Note
Inst27Quest4_HORDE_Prequest = Inst27Quest4_Prequest
Inst27Quest4_HORDE_Folgequest = Inst27Quest4_Folgequest
--
Inst27Quest4name1_HORDE = Inst27Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst27Quest5_HORDE = Inst27Quest5
Inst27Quest5_HORDE_Level = Inst27Quest5_Level
Inst27Quest5_HORDE_Attain = Inst27Quest5_Attain
Inst27Quest5_HORDE_Aim = Inst27Quest5_Aim
Inst27Quest5_HORDE_Location = Inst27Quest5_Location
Inst27Quest5_HORDE_Note = Inst27Quest5_Note
Inst27Quest5_HORDE_Prequest = Inst27Quest5_Prequest
Inst27Quest5_HORDE_Folgequest = Inst27Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst27Quest6_HORDE = Inst27Quest6
Inst27Quest6_HORDE_Level = Inst27Quest6_Level
Inst27Quest6_HORDE_Attain = Inst27Quest6_Attain
Inst27Quest6_HORDE_Aim = Inst27Quest6_Aim
Inst27Quest6_HORDE_Location = Inst27Quest6_Location
Inst27Quest6_HORDE_Note = Inst27Quest6_Note
Inst27Quest6_HORDE_Prequest = Inst27Quest6_Prequest
Inst27Quest6_HORDE_Folgequest = Inst27Quest6_Folgequest
Inst27Quest6PreQuest_HORDE = Inst27Quest6PreQuest
--
Inst27Quest6name1_HORDE = Inst27Quest6name1



--------------- INST28 - Onyxia's Lair (Ony) ---------------

Inst28Story = "奧妮克希亞是強大之龍死亡之翼的女兒，也是黑石塔擅長陰謀的奈法利安大王的妹妹。據說奧妮克希亞喜歡借由幹涉人類種族的政治來腐化他們。為達此目的他會變成各種人型生物形態，使用魔法和力量幹預不同種族間的所有事情。有些人更認為奧妮克希亞使用父親曾用過的化名——皇室普瑞斯托。若不插手凡人事務的時候，奧妮克希亞就在黑龍谷下的一處火焰洞穴居住，那是塵泥沼澤裏的一個陰暗沼澤。陰險的黑龍軍團剩余成員在此守護著她。"
Inst28Caption = "奧妮克希亞的巢穴（Ony）"
Inst28QAA = "3 個任務"
Inst28QAH = "3 個任務"

--Quest 1 Alliance
Inst28Quest1 = "1. 鑄造奎爾塞拉"
Inst28Quest1_Level = "60"
Inst28Quest1_Attain = "60"
Inst28Quest1_Aim = "你必須設法讓奧妮克希亞對這把未淬火的上古之刃噴射火焰。完成之後，撿起加熱過的上古之刃。你要注意的是，加熱過的上古之刃不會一直保持被加熱的狀態，時間非常緊迫。"
Inst28Quest1_Location = "博學者萊德羅斯（厄運之槌; "..YELLOW.."北，圖書館[1]"..WHITE.."）"
Inst28Quest1_Note = "當奧妮克希亞的生命值在10%到15%時，在她前面放置未淬火的上古之刃，她將為此淬火。當奧妮克希亞死亡，重新拾取任務物品，選擇她的屍體並使用它後，就可以返回完成此任務。"
Inst28Quest1_Prequest = "弗洛爾的屠龍技術綱要（厄運之槌; "..YELLOW..""..WHITE.."） -> 鑄造奎爾塞拉"
Inst28Quest1_Folgequest = "無"
Inst28Quest1PreQuest = "true"
--
Inst28Quest1name1 = "奎爾塞拉"

--Quest 2 Alliance
Inst28Quest2 = "2. 聯盟的勝利"
Inst28Quest2_Level = "60"
Inst28Quest2_Attain = "60"
Inst28Quest2_Aim = "將奧妮克希亞的頭顱交給暴風城的瓦裏安·烏瑞恩國王。"
Inst28Quest2_Location = "奧妮克希亞的頭顱掉落自（奧妮克希亞; "..YELLOW.."[3]"..WHITE.."）"
Inst28Quest2_Note = "瓦裏安·烏瑞恩國王（暴風城 - 暴風要塞; "..YELLOW.."80,38"..WHITE.."）。只有在團隊中的一人可以拾取此物品並且只可完成一次。\n\n後續任務領取獎勵。"
Inst28Quest2_Prequest = "無"
Inst28Quest2_Folgequest = "英雄慶典"
--
Inst28Quest2name1 = "奧妮克希亞龍血護符"
Inst28Quest2name2 = "屠龍者的徽記"
Inst28Quest2name3 = "奧妮克希亞龍牙墜飾"

--Quest 3 Alliance
Inst28Quest3 = "3. 詭秘的事件"
Inst28Quest3_Level = "80"
Inst28Quest3_Attain = "80"
Inst28Quest3_Aim = "將奧妮克希亞的頭顱交給黑爪加爾德斯。他就在已宰的羔羊旅店的地下室裏。"
Inst28Quest3_Location = "奧妮克希亞的頭顱掉落自（奧妮克西亞; "..YELLOW.."[3]"..WHITE.."）"
Inst28Quest3_Note = "黑爪加爾德斯（暴風城 - 已宰的羔羊; "..YELLOW.."40.1, 85.1"..WHITE.."）。只有在團隊中的一人可以拾取此物品並且只可完成一次。"
Inst28Quest3_Prequest = "無"
Inst28Quest3_Folgequest = "無"
--
Inst28Quest3name1 = "抛光的屠龍者的徽記"
Inst28Quest3name2 = "閃耀的奧妮克希亞龍牙墜飾"
Inst28Quest3name3 = "純淨奧妮克希亞龍血護符"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst28Quest1_HORDE = Inst28Quest1
Inst28Quest1_HORDE_Attain = Inst28Quest1_Attain
Inst28Quest1_HORDE_Level = Inst28Quest1_Level
Inst28Quest1_HORDE_Aim = Inst28Quest1_Aim
Inst28Quest1_HORDE_Location = Inst28Quest1_Location
Inst28Quest1_HORDE_Note = Inst28Quest1_Note
Inst28Quest1_HORDE_Prequest = Inst28Quest1_Prequest
Inst28Quest1_HORDE_Folgequest = Inst28Quest1_Folgequest
Inst28Quest1PreQuest_HORDE = Inst28Quest1PreQuest
--
Inst28Quest1name1_HORDE = Inst28Quest1name1

--Quest 2 Horde
Inst28Quest2_HORDE = "2. 部落的勝利"
Inst28Quest2_HORDE_Level = "60"
Inst28Quest2_HORDE_Attain = "60"
Inst28Quest2_HORDE_Aim = "將奧妮克希亞的頭顱交給奧格瑞瑪的薩爾。"
Inst28Quest2_HORDE_Location = "奧妮克希亞的頭顱（奧妮克希亞掉落; "..YELLOW.."[3]"..WHITE.."）"
Inst28Quest2_HORDE_Note = "薩爾（奧格瑞瑪 - 智慧谷; "..YELLOW.."31,37"..WHITE.."）。只有在團隊中的一人可以拾取此物品並且只可完成一次。\n\n後續任務領取獎勵。"
Inst28Quest2_HORDE_Prequest = "無"
Inst28Quest2_HORDE_Folgequest = "萬衆敬仰"
--
Inst28Quest2name1_HORDE = "奧妮克希亞龍血護符"
Inst28Quest2name2_HORDE = "屠龍者的徽記"
Inst28Quest2name3_HORDE = "奧妮克希亞龍牙墜飾"

--Quest 3 Horde
Inst28Quest3_HORDE = "3. 詭秘的事件"
Inst28Quest3_HORDE_Level = "80"
Inst28Quest3_HORDE_Attain = "80"
Inst28Quest3_HORDE_Aim = "將奧妮克希亞的頭顱交給尼爾魯·火刃。他就在暗影裂口裏。"
Inst28Quest3_HORDE_Location = "奧妮克希亞的頭顱掉落自（奧妮克西亞; "..YELLOW.."[3]"..WHITE.."）"
Inst28Quest3_HORDE_Note = "尼爾魯·火刃（奧格瑞瑪 - 暗影裂口; "..YELLOW.."49.7, 50.5"..WHITE.."）。只有在團隊中的一人可以拾取此物品並且只可完成一次。"
Inst28Quest3_HORDE_Prequest = "無"
Inst28Quest3_HORDE_Folgequest = "無"
--
Inst28Quest3name1_HORDE = "抛光的屠龍者的徽記"
Inst28Quest3name2_HORDE = "閃耀的奧妮克希亞龍牙墜飾"
Inst28Quest3name3_HORDE = "純淨奧妮克希亞龍血護符"



--------------- INST29 - Zul'Gurub (ZG) ---------------

Inst29Story = {
	["Page1"] = "早在幾千年前，強大的古拉巴什帝國陷入了一場規模浩大的內戰，一群極具影響力的被稱作阿塔萊的巨魔祭司，信奉著一個名叫奪靈者·哈卡的嗜血的邪神。這些阿塔萊祭司雖然已被擊敗並被處以永久的流放，但偉大的巨魔帝國就這樣崩塌了。被流放的祭司們來到了北方的悲傷沼澤。在這裏，他們為哈卡神建造了一座大神廟——阿塔哈卡神廟，並繼續在那裏為他們的主人重返物質世界而作准備……",
	["Page2"] = "終于，阿塔萊祭司發現，哈卡的物質形態只有在古老的古拉巴什帝國的首都——祖爾格拉布，才能召喚出來。不幸的是，這些祭司們最近真的成功召喚出哈卡——傳聞證實可怕的奪靈者真的出現在古拉巴什廢墟的中心。\n \n為了鎮壓血神，所有的巨魔都聯合起來，派出了一支由高階牧師組成的小隊深入這座古老的城市。隊中的每個牧師都是一位遠古之神的強大戰士，他們分別代表著蝙蝠、豹、老虎、蜘蛛和蛇的力量，但是盡管如此，強大的哈卡仍然輕易地擊敗了他們。現在這些勇士和他們的遠古之神全都臣服于奪靈者的力量。如果有任何冒險者想進入廢墟禁地挑戰強大的血神哈卡，他們就必須先擊敗這些高階牧師。",
	["MaxPages"] = "2",
};
Inst29Caption = "祖爾格拉布（ZG）"
Inst29QAA = "4 個任務"
Inst29QAH = "4 個任務"

--Quest 1 Alliance
Inst29Quest1 = "1. 祭司的頭顱"
Inst29Quest1_Level = "60"
Inst29Quest1_Attain = "58"
Inst29Quest1_Aim = "將神聖之索穿上5顆導魔師的頭顱，然後把這一串頭顱交給尤亞姆巴島上的伊克薩爾。"
Inst29Quest1_Location = "伊克薩爾（荊棘谷 - 尤亞姆巴島; "..YELLOW.."15,15"..WHITE.."）"
Inst29Quest1_Note = "請你確認每次都搜索了高階祭司的屍體。"
Inst29Quest1_Prequest = "無"
Inst29Quest1_Folgequest = "無"
--
Inst29Quest1name1 = "扭曲頭顱腰帶"
Inst29Quest1name2 = "皺縮頭顱腰帶"
Inst29Quest1name3 = "防腐頭顱腰帶"
Inst29Quest1name4 = "細小頭顱腰帶"

--Quest 2 Alliance
Inst29Quest2 = "2. 哈卡之心"
Inst29Quest2_Level = "60"
Inst29Quest2_Attain = "58"
Inst29Quest2_Aim = "把哈卡之心交給尤亞姆巴島上的莫托爾。"
Inst29Quest2_Location = "哈卡之心掉落自（哈卡; "..YELLOW.."[11]"..WHITE.."）"
Inst29Quest2_Note = "莫托爾（荊棘谷 - 尤亞姆巴島; "..YELLOW.."15,15"..WHITE.."）"
Inst29Quest2_Prequest = "無"
Inst29Quest2_Folgequest = "無"
--
Inst29Quest2name1 = "贊達拉英雄徽記"
Inst29Quest2name2 = "贊達拉英雄護符"
Inst29Quest2name3 = "贊達拉英雄勳章"

--Quest 3 Alliance
Inst29Quest3 = "3. 納特的卷尺"
Inst29Quest3_Level = "60"
Inst29Quest3_Attain = "59"
Inst29Quest3_Aim = "將納特的卷尺交給塵泥沼澤的納特·帕格。"
Inst29Quest3_Location = "破碎的工具箱（祖爾格拉布 - 隔水哈卡之島的東北的岸邊。）"
Inst29Quest3_Note = "找到納特·帕格（塵泥沼澤; "..YELLOW.."59,60"..WHITE.."）。完成任務後你可以從他那裏購買哈卡之島臭泥魚誘餌，可以在祖爾格拉布召喚隱藏的加茲蘭卡。"
Inst29Quest3_Prequest = "無"
Inst29Quest3_Folgequest = "無"
-- No Rewards for this quest

--Quest 4 Alliance
Inst29Quest4 = "4. 完美的毒藥"
Inst29Quest4_Level = "60"
Inst29Quest4_Attain = "60"
Inst29Quest4_Aim = "塞納裏奧要塞的德爾克·雷木讓你把溫諾希斯的毒囊和庫林納克斯的毒囊交給他。"
Inst29Quest4_Location = "德爾克·雷木（希利蘇斯 - 塞納裏奧要塞; "..YELLOW.."52,39"..WHITE.."）"
Inst29Quest4_Note = "高階祭司溫諾希斯 "..YELLOW.."祖爾格拉布"..WHITE.." 掉落溫諾希斯的毒囊。庫林納克斯 "..YELLOW.."安其拉廢墟"..WHITE..""..YELLOW.."[1]"..WHITE.." 掉落庫林納克斯的毒囊。"
Inst29Quest4_Prequest = "無"
Inst29Quest4_Folgequest = "無"
--
Inst29Quest4name1 = "拉文霍德切割者"
Inst29Quest4name2 = "開閘刀"
Inst29Quest4name3 = "雷木之刺"
Inst29Quest4name4 = "康恩之怒"
Inst29Quest4name5 = "法拉德的裝填器"
Inst29Quest4name6 = "西蒙尼的耕種用錘"


--Quest 1 Horde(same as Quest 1 Alliance)
Inst29Quest1_HORDE = Inst29Quest1
Inst29Quest1_HORDE_Level = Inst29Quest1_Level
Inst29Quest1_HORDE_Attain = Inst29Quest1_Attain
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

--Quest 2 Horde(same as Quest 2 Alliance)
Inst29Quest2_HORDE = Inst29Quest2
Inst29Quest2_HORDE_Level = Inst29Quest2_Level
Inst29Quest2_HORDE_Attain = Inst29Quest2_Attain
Inst29Quest2_HORDE_Aim = Inst29Quest2_Aim
Inst29Quest2_HORDE_Location = Inst29Quest2_Location
Inst29Quest2_HORDE_Note = Inst29Quest2_Note
Inst29Quest2_HORDE_Prequest = Inst29Quest2_Prequest
Inst29Quest2_HORDE_Folgequest = Inst29Quest2_Folgequest
--
Inst29Quest2name1_HORDE = Inst29Quest2name1
Inst29Quest2name2_HORDE = Inst29Quest2name2
Inst29Quest2name3_HORDE = Inst29Quest2name3

--Quest 3 Horde(same as Quest 3 Alliance)
Inst29Quest3_HORDE = Inst29Quest3
Inst29Quest3_HORDE_Level = Inst29Quest3_Level
Inst29Quest3_HORDE_Attain = Inst29Quest3_Attain
Inst29Quest3_HORDE_Aim = Inst29Quest3_Aim
Inst29Quest3_HORDE_Location = Inst29Quest3_Location
Inst29Quest3_HORDE_Note = Inst29Quest3_Note
Inst29Quest3_HORDE_Prequest = Inst29Quest3_Prequest
Inst29Quest3_HORDE_Folgequest = Inst29Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde(same as Quest 4 Alliance)
Inst29Quest4_HORDE = Inst29Quest4
Inst29Quest4_HORDE_Level = Inst29Quest4_Level
Inst29Quest4_HORDE_Attain = Inst29Quest4_Attain
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

Inst30Story = "在流沙之戰最後幾個小時裏，四巨龍軍團和暗夜精靈的聯軍將戰場逼至其拉帝國的最中心，希利蘇斯的異種蟲群退敗至最終堡壘安其拉城。但在安其拉之門內，等待著的卻是大規模的其拉異種蟲，數量是卡利姆多聯軍所無法想象的。經過漫長的戰役，卡利姆多聯軍仍然無法擊敗其拉帝王以及他的異種蟲群，只能以一個強大的魔法結界將它們困禁在內，而安其拉城也因為戰火而成了一個被詛咒的廢墟。經過了數千年，其拉的侵略心卻沒有因為結界而消退。新一代的異種蟲群從巢穴中慢慢的破繭而出，安其拉廢墟又再度充滿了其拉異種蟲。這股威脅一定要被消滅，否則艾澤拉斯將可能會被這股恐怖的新世代其拉勢力給毀滅。"
Inst30Caption = "安其拉廢墟（AQ20）"
Inst30QAA = "2 個任務"
Inst30QAH = "2 個任務"

--Quest 1 Alliance
Inst30Quest1 = "1. 奧斯裏安之死"
Inst30Quest1_Level = "60"
Inst30Quest1_Attain = "60"
Inst30Quest1_Aim = "將無疤者奧斯裏安的頭顱交給希利蘇斯塞納裏奧要塞的指揮官瑪爾利斯。"
Inst30Quest1_Location = "無疤者奧斯裏安的頭顱掉落自（無疤者奧斯裏安; "..YELLOW.."[6]"..WHITE.."）"
Inst30Quest1_Note = "指揮官瑪爾利斯（希利蘇斯 - 塞納裏奧要塞; "..YELLOW.."49,34"..WHITE.."）"
Inst30Quest1_Prequest = "無"
Inst30Quest1_Folgequest = "無"
--
Inst30Quest1name1 = "流沙護符"
Inst30Quest1name2 = "流沙咒符"
Inst30Quest1name3 = "流沙頸飾"
Inst30Quest1name4 = "流沙墜飾"

--Quest 2 Alliance
Inst30Quest2 = "2. 完美的毒藥"
Inst30Quest2_Level = "60"
Inst30Quest2_Attain = "60"
Inst30Quest2_Aim = "塞納裏奧要塞的德爾克·雷木讓你把溫諾希斯的毒囊和庫林納克斯的毒囊交給他。"
Inst30Quest2_Location = "德爾克·雷木（希利蘇斯 - 塞納裏奧要塞; "..YELLOW.."52,39"..WHITE.."）"
Inst30Quest2_Note = "高階祭司溫諾希斯 "..YELLOW.."祖爾格拉布"..WHITE.." 掉落溫諾希斯的毒囊。庫林納克斯 "..YELLOW.."安其拉廢墟"..WHITE..""..YELLOW.."[1]"..WHITE.." 掉落庫林納克斯的毒囊。"
Inst30Quest2_Prequest = "無"
Inst30Quest2_Folgequest = "無"
--
Inst30Quest2name1 = "拉文霍德切割者"
Inst30Quest2name2 = "開閘刀"
Inst30Quest2name3 = "雷木之刺"
Inst30Quest2name4 = "康恩之怒"
Inst30Quest2name5 = "法拉德的裝填器"
Inst30Quest2name6 = "西蒙尼的耕種用錘"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst30Quest1_HORDE = Inst30Quest1
Inst30Quest1_HORDE_Level = Inst30Quest1_Level
Inst30Quest1_HORDE_Attain = Inst30Quest1_Attain
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
Inst30Quest2_HORDE_Level = Inst30Quest2_Level
Inst30Quest2_HORDE_Attain = Inst30Quest2_Attain
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

Inst31Story = "在安其拉中心矗立著一座古老神廟綜合體。它在史前時代就被建造，用以紀念偉大的神與提供其拉大軍繁衍的場地。自數千年前的流沙之戰結束後，其拉帝國的雙子皇帝就被青銅龍阿納克洛斯和暗夜精靈們以強大的魔法結界困在了神廟裏。隨著時間流逝，流沙權杖已被重組，魔法結界上的封印也逐漸消失，通往安其拉神廟深處的道路也再度敞開。那些被困在神廟地下蠢蠢欲動的其拉軍團開始准備入侵。為了避免第二次流沙之戰再度爆發、貪婪的蟲群再次于卡利姆多大陸傾巢而出，無論如何一定要阻止它們。"
Inst31Caption = "安其拉神殿（AQ40）"
Inst31QAA = "4 個任務"
Inst31QAH = "4 個任務"

--Quest 1 Alliance
Inst31Quest1 = "1. 克蘇恩的遺産"
Inst31Quest1_Level = "60"
Inst31Quest1_Attain = "60"
Inst31Quest1_Aim = "將克蘇恩之眼交給安其拉神殿的凱雷斯特拉茲。"
Inst31Quest1_Location = "克蘇恩之眼掉落自（克蘇恩; "..YELLOW.."[9]"..WHITE.."）"
Inst31Quest1_Note = "凱雷斯特拉茲（安其拉神殿; "..YELLOW.."2'"..WHITE.."）"
Inst31Quest1_Prequest = "無"
Inst31Quest1_Folgequest = "卡利姆多的救世主"
-- No Rewards for this quest

--Quest 2 Alliance
Inst31Quest2 = "2. 卡利姆多的救世主"
Inst31Quest2_Level = "60"
Inst31Quest2_Attain = "60"
Inst31Quest2_Aim = "把克蘇恩之眼交給時光之穴的阿納克洛斯。"
Inst31Quest2_Location = "克蘇恩之眼掉落自（克蘇恩; "..YELLOW.."[9]"..WHITE.."）"
Inst31Quest2_Note = "阿納克洛斯（塔納利斯 - 時光之穴; "..YELLOW.."65,49"..WHITE.."）"
Inst31Quest2_Prequest = "克蘇恩的遺産"
Inst31Quest2_Folgequest = "無"
Inst31Quest2FQuest = "true"
--
Inst31Quest2name1 = "墮落神明咒符"
Inst31Quest2name2 = "墮落神明披風"
Inst31Quest2name3 = "墮落神明之戒"

--Quest 3 Alliance
Inst31Quest3 = "3. 其拉的秘密"
Inst31Quest3_Level = "60"
Inst31Quest3_Attain = "60"
Inst31Quest3_Aim = "把上古其拉神器交給隱藏在神殿入口處的龍類。"
Inst31Quest3_Location = "上古其拉神器（安其拉神殿隨機掉落）"
Inst31Quest3_Note = "交給安多葛斯（安其拉神殿; "..YELLOW.."1'"..WHITE.."）。"
Inst31Quest3_Prequest = "無"
Inst31Quest3_Folgequest = "無"
-- No Rewards for this quest

--Quest 4 Alliance
Inst31Quest4 = "4. 凡人中的勇士"
Inst31Quest4_Level = "60"
Inst31Quest4_Attain = "60"
Inst31Quest4_Aim = "交給位于安其拉神殿中的阿萊克絲塔薩的後裔 - 坎多斯特拉茲一枚其拉領主徽記。"
Inst31Quest4_Location = "坎多斯特拉茲（安其拉神殿; "..YELLOW.."[1']"..WHITE.."）"
Inst31Quest4_Note = "這是一個可重複的任務，用來提升塞納裏奧議會的聲望。其拉領主徽記所有首領都掉落。坎多斯特拉茲在第一個首領身後的房間。"
Inst31Quest4_Prequest = "無"
Inst31Quest4_Folgequest = "無"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst31Quest1_HORDE = Inst31Quest1
Inst31Quest1_HORDE_Level = Inst31Quest1_Level
Inst31Quest1_HORDE_Attain = Inst31Quest1_Attain
Inst31Quest1_HORDE_Aim = Inst31Quest1_Aim
Inst31Quest1_HORDE_Location = Inst31Quest1_Location
Inst31Quest1_HORDE_Note = Inst31Quest1_Note
Inst31Quest1_HORDE_Prequest = Inst31Quest1_Prequest
Inst31Quest1_HORDE_Folgequest = Inst31Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst31Quest2_HORDE = Inst31Quest2
Inst31Quest2_HORDE_Level = Inst31Quest2_Level
Inst31Quest2_HORDE_Attain = Inst31Quest2_Attain
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
Inst31Quest3_HORDE_Level = Inst31Quest3_Level
Inst31Quest3_HORDE_Attain = Inst31Quest3_Attain
Inst31Quest3_HORDE_Aim = Inst31Quest3_Aim
Inst31Quest3_HORDE_Location = Inst31Quest3_Location
Inst31Quest3_HORDE_Note = Inst31Quest3_Note
Inst31Quest3_HORDE_Prequest = Inst31Quest3_Prequest
Inst31Quest3_HORDE_Folgequest = Inst31Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst31Quest4_HORDE = Inst31Quest4
Inst31Quest4_HORDE_Level = Inst31Quest4_Level
Inst31Quest4_HORDE_Attain = Inst31Quest4_Attain
Inst31Quest4_HORDE_Aim = Inst31Quest4_Aim
Inst31Quest4_HORDE_Location = Inst31Quest4_Location
Inst31Quest4_HORDE_Note = Inst31Quest4_Note
Inst31Quest4_HORDE_Prequest = Inst31Quest4_Prequest
Inst31Quest4_HORDE_Folgequest = Inst31Quest4_Folgequest
-- No Rewards for this quest



--------------- INST32 - Naxxramas (Naxx) ---------------

Inst32Story = "飄浮在瘟疫之地上空的浮空要塞納克薩瑪斯是巫妖王最強大的副官——克爾蘇加德的旗艦。巫妖王的仆從們在這座要塞中籌劃著新的攻勢，要給整個艾澤拉斯世界帶來恐慌和災難。天災軍團再一次開始了他們的征程……"
Inst32Caption = "納克薩瑪斯"
Inst32QAA = "8 個任務"
Inst32QAH = "8 個任務"

--Quest 1 Alliance
Inst32Quest1 = "1. 克爾蘇加德的末日"
Inst32Quest1_Level = "60"
Inst32Quest1_Attain = "60"
Inst32Quest1_Aim = "將克爾蘇加德的護符匣帶往東瘟疫之地聖光之願禮拜堂。"
Inst32Quest1_Location = "克爾蘇加德（納克薩瑪斯; "..YELLOW.."綠色 2"..WHITE.."）"
Inst32Quest1_Note = "英尼戈·蒙托爾神父（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."81,58"..WHITE.."）"
Inst32Quest1_Prequest = "無"
Inst32Quest1_Folgequest = "無"
--
Inst32Quest1name1 = "勇士印記"
Inst32Quest1name2 = "勇士印記"

--Quest 2 Alliance
Inst32Quest2 = "2. 戰爭的回響"
Inst32Quest2_Level = "60"
Inst32Quest2_Attain = "60"
Inst32Quest2_Aim = "東瘟疫之地聖光之願禮拜堂的指揮官埃裏戈爾·黎明使者要你殺死5個畸形妖、5只岩膚石像鬼、8個死亡騎士隊長和3只毒性捕獵者。 "
Inst32Quest2_Location = "指揮官埃裏戈爾·黎明使者 (東瘟疫之地 - 光之希望教堂; "..YELLOW.."82,58"..WHITE..")"
Inst32Quest2_Note = "這個任務的怪物是納克薩瑪斯每個區的開始時的垃圾怪. 此任務是T3裝備任務的先決條件."
Inst32Quest2_Prequest = "有，恐怖之城，納克薩瑪斯"
Inst32Quest2_Folgequest = "有，我只會唱這一首歌……, 拉瑪蘭迪的命運, 所有T3任務"
Inst32Quest2PreQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst32Quest3 = "3. 我只會唱這一首歌……"
Inst32Quest3_Level = "60"
Inst32Quest3_Attain = "60"
Inst32Quest3_Aim = "將2個冰凍符文、2個水之精華、2塊藍寶石和30金幣交給東瘟疫之地聖光之願禮拜堂的工匠威爾海姆。"
Inst32Quest3_Location = "工匠威爾海姆（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."81,60"..WHITE.."）"
Inst32Quest3_Note = "納克薩瑪斯掉落的溶解之語可以從牆上得到冰凍符文。"
Inst32Quest3_Prequest = "有，戰爭的回響"
Inst32Quest3_Folgequest = "無"
Inst32Quest3FQuest = "true"
--
Inst32Quest3name1 = "冰川護腿"
Inst32Quest3name2 = "破冰護腿"
Inst32Quest3name3 = "寒鱗護腿"
Inst32Quest3name4 = "北極護腿"

--Quest 4 Alliance
Inst32Quest4 = "4. 拉瑪蘭迪的命運"
Inst32Quest4_Level = "60"
Inst32Quest4_Attain = "60"
Inst32Quest4_Aim = "進入納克薩瑪斯的宮殿，找到拉瑪蘭迪的下落。"
Inst32Quest4_Location = "科爾法克斯，聖光之勇士（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."82,58"..WHITE.."）"
Inst32Quest4_Note = "納克薩瑪斯的小怪隨機掉落拉瑪蘭迪的命運，任何有此任務的都可以拾取。"
Inst32Quest4_Prequest = "有，戰爭的回響"
Inst32Quest4_Folgequest = "有，拉瑪蘭迪的寒冰之握"
Inst32Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst32Quest5 = "5. 拉瑪蘭迪的寒冰之握"
Inst32Quest5_Level = "60"
Inst32Quest5_Attain = "60"
Inst32Quest5_Aim = "東瘟疫之地聖光之願禮拜堂的科爾法克斯要1個冰凍符文、1塊藍寶石和1塊奧金錠。 "
Inst32Quest5_Location = "柯菲斯，聖光勇士（東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."82,58"..WHITE.."）"
Inst32Quest5_Note = "納克薩瑪斯掉落的溶解之語可以從牆上得到冰凍符文。"
Inst32Quest5_Prequest = "有，拉瑪蘭迪的命運"
Inst32Quest5_Folgequest = "無"
Inst32Quest5FQuest = "true"
--
Inst32Quest5name1 = "拉瑪蘭迪的寒冰之握"

--Quest 6 Alliance
Inst32Quest6 = "6. 奧瑪裏恩的手冊"
Inst32Quest6_Level = "60"
Inst32Quest6_Attain = "60"
Inst32Quest6_Aim = "將奧瑪裏恩的手冊交給東瘟疫之地聖光之願禮拜堂的工匠威爾海姆。 "
Inst32Quest6_Location = "奧瑪裏恩的手冊 (從naxx內部的大工匠奧瑪裏恩獲得)"
Inst32Quest6_Note = "如果你是一名工匠，你可以從大工匠奧瑪裏恩獲得這個任務開始項目, 銀色黎明尊敬，技能最低300."
Inst32Quest6_Prequest = "無"
Inst32Quest6_Folgequest = "有，所有冰抗任務從工匠威爾海姆 (東瘟疫之地 - 聖光之願禮拜堂; "..YELLOW.."81,60"..WHITE..")"
-- No Rewards for this quest

--Quest 7 Alliance
Inst32Quest7 = "7. 埃提耶什之杖 (牧師.法師.術士.德魯伊)"
Inst32Quest7_Level = "60"
Inst32Quest7_Attain = "60"
Inst32Quest7_Aim = "看看有誰能幫你找到法杖的最後兩個部分，並且淨化邪惡的力量。 "
Inst32Quest7_Location = "埃提耶什的杖柄 (結合40個碎片後獲得)."
Inst32Quest7_Note = "除了薩菲隆和克爾蘇加德之外的所有boss都可能會掉落碎片. 安納克羅斯結束任務 (塔納利斯 - 時光之穴; "..YELLOW.."65,49"..WHITE..")."
Inst32Quest7_Prequest = "無"
Inst32Quest7_Folgequest = "有，埃提耶什，被玷汙的傳說之杖"
-- No Rewards for this quest

--Quest 8 Alliance
Inst32Quest8 = "8. 埃提耶什，被玷汙的傳說之杖"
Inst32Quest8_Level = "60"
Inst32Quest8_Attain = "60"
Inst32Quest8_Aim = "塔納利斯時光之穴的阿納克洛斯要你找到埃提耶什的法杖頂部和埃提耶什的杖柄末端。 "
Inst32Quest8_Location = "安納克羅斯 (塔納利斯 - 時光之穴; "..YELLOW.."65,49"..WHITE..")."
Inst32Quest8_Note = "克爾蘇加德掉落."
Inst32Quest8_Prequest = "有，埃提耶什之杖"
Inst32Quest8_Folgequest = "有，埃提耶什，守護者的傳說之杖"
Inst32Quest8FQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst32Quest1_HORDE = Inst32Quest1
Inst32Quest1_HORDE_Level = Inst32Quest1_Level
Inst32Quest1_HORDE_Attain = Inst32Quest1_Attain
Inst32Quest1_HORDE_Aim = Inst32Quest1_Aim
Inst32Quest1_HORDE_Location = Inst32Quest1_Location
Inst32Quest1_HORDE_Note = Inst32Quest1_Note
Inst32Quest1_HORDE_Prequest = Inst32Quest1_Prequest
Inst32Quest1_HORDE_Folgequest = Inst32Quest1_Folgequest
--
Inst32Quest1name1_HORDE = Inst32Quest1name1
Inst32Quest1name2_HORDE = Inst32Quest1name2
Inst32Quest1name3_HORDE = Inst32Quest1name3

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst32Quest2_HORDE = Inst32Quest2
Inst32Quest2_HORDE_Level = Inst32Quest2_Level
Inst32Quest2_HORDE_Attain = Inst32Quest2_Attain
Inst32Quest2_HORDE_Aim = Inst32Quest2_Aim
Inst32Quest2_HORDE_Location = Inst32Quest2_Location
Inst32Quest2_HORDE_Note = Inst32Quest2_Note
Inst32Quest2_HORDE_Prequest = Inst32Quest2_Prequest
Inst32Quest2_HORDE_Folgequest = Inst32Quest2_Folgequest
Inst32Quest2PreQuest_HORDE = Inst32Quest2PreQuest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst32Quest3_HORDE = Inst32Quest3
Inst32Quest3_HORDE_Level = Inst32Quest3_Level
Inst32Quest3_HORDE_Attain = Inst32Quest3_Attain
Inst32Quest3_HORDE_Aim = Inst32Quest3_Aim
Inst32Quest3_HORDE_Location = Inst32Quest3_Location
Inst32Quest3_HORDE_Note = Inst32Quest3_Note
Inst32Quest3_HORDE_Prequest = Inst32Quest3_Prequest
Inst32Quest3_HORDE_Folgequest = Inst32Quest3_Folgequest
Inst32Quest3FQuest_HORDE = Inst32Quest3FQuest
--
Inst32Quest3name1_HORDE = Inst32Quest3name1
Inst32Quest3name2_HORDE = Inst32Quest3name2
Inst32Quest3name3_HORDE = Inst32Quest3name3
Inst32Quest3name4_HORDE = Inst32Quest3name4

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst32Quest4_HORDE = Inst32Quest4
Inst32Quest4_HORDE_Level = Inst32Quest4_Level
Inst32Quest4_HORDE_Attain = Inst32Quest4_Attain
Inst32Quest4_HORDE_Aim = Inst32Quest4_Aim
Inst32Quest4_HORDE_Location = Inst32Quest4_Location
Inst32Quest4_HORDE_Note = Inst32Quest4_Note
Inst32Quest4_HORDE_Prequest = Inst32Quest4_Prequest
Inst32Quest4_HORDE_Folgequest = Inst32Quest4_Folgequest
Inst32Quest4PreQuest_HORDE = Inst32Quest4PreQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst32Quest5_HORDE = Inst32Quest5
Inst32Quest5_HORDE_Level = Inst32Quest5_Level
Inst32Quest5_HORDE_Attain = Inst32Quest5_Attain
Inst32Quest5_HORDE_Aim = Inst32Quest5_Aim
Inst32Quest5_HORDE_Location = Inst32Quest5_Location
Inst32Quest5_HORDE_Note = Inst32Quest5_Note
Inst32Quest5_HORDE_Prequest = Inst32Quest5_Prequest
Inst32Quest5_HORDE_Folgequest = Inst32Quest5_Folgequest
Inst32Quest5FQuest_HORDE = Inst32Quest5FQuest
--
Inst32Quest5name1_HORDE = Inst32Quest5name1

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst32Quest6_HORDE = Inst32Quest6
Inst32Quest6_HORDE_Level = Inst32Quest6_Level
Inst32Quest6_HORDE_Attain = Inst32Quest6_Attain
Inst32Quest6_HORDE_Aim = Inst32Quest6_Aim
Inst32Quest6_HORDE_Location = Inst32Quest6_Location
Inst32Quest6_HORDE_Note = Inst32Quest6_Note
Inst32Quest6_HORDE_Prequest = Inst32Quest6_Prequest
Inst32Quest6_HORDE_Folgequest = Inst32Quest6_Folgequest
-- No Rewards for this quest

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst32Quest7_HORDE = Inst32Quest7
Inst32Quest7_HORDE_Level = Inst32Quest7_Level
Inst32Quest7_HORDE_Attain = Inst32Quest7_Attain
Inst32Quest7_HORDE_Aim = Inst32Quest7_Aim
Inst32Quest7_HORDE_Location = Inst32Quest7_Location
Inst32Quest7_HORDE_Note = Inst32Quest7_Note
Inst32Quest7_HORDE_Prequest = Inst32Quest7_Prequest
Inst32Quest7_HORDE_Folgequest = Inst32Quest7_Folgequest
-- No Rewards for this quest

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst32Quest8_HORDE = Inst32Quest8
Inst32Quest8_HORDE_Level = Inst32Quest8_Level
Inst32Quest8_HORDE_Attain = Inst32Quest8_Attain
Inst32Quest8_HORDE_Aim = Inst32Quest8_Aim
Inst32Quest8_HORDE_Location = Inst32Quest8_Location
Inst32Quest8_HORDE_Note = Inst32Quest8_Note
Inst32Quest8_HORDE_Prequest = Inst32Quest8_Prequest
Inst32Quest8_HORDE_Folgequest = Inst32Quest8_Folgequest
Inst32Quest8FQuest_HORDE = Inst32Quest8FQuest



---------------------------------------------------
---------------- BATTLEGROUNDS --------------------
---------------------------------------------------


--------------- INST33 - Alterac Valley (AV) ---------------

Inst33Story = "雷矛遠征軍已經在奧特蘭克山谷中安營紮寨，想要研究這裏的資源和遠古遺物。盡管他們來此的目的並不是為了挑釁，但是矮人們卻與居住在山谷南部的霜狼氏族發生了激烈的沖突。霜狼氏族由此發誓要將入侵者趕出他們的家園. "
Inst33Caption = "奧特蘭克山谷"
Inst33QAA = "17 個任務"
Inst33QAH = "17 個任務"

--Quest 1 Alliance
Inst33Quest1 = "1. 國王的命令"
Inst33Quest1_Level = "60"
Inst33Quest1_Attain = "51"
Inst33Quest1_Aim = "到希爾斯布萊德丘陵地區的奧特蘭克山谷去。到那裏之後，和哈格丁中尉談談."
Inst33Quest1_Location = "洛泰姆中尉 (鐵爐堡; "..YELLOW.."30,62"..WHITE..")"
Inst33Quest1_Note = "哈格丁中尉 在(奧特蘭克山脈; "..YELLOW.."39,81"..WHITE..")."
Inst33Quest1_Prequest = "無"
Inst33Quest1_Folgequest = "有，實驗場"
-- No Rewards for this quest

--Quest 2 Alliance
Inst33Quest2 = "2. 實驗場"
Inst33Quest2_Level = "60"
Inst33Quest2_Attain = "51"
Inst33Quest2_Aim = "到主基地東南邊的冰翼洞穴中去找到雷矛軍旗，然後把它交給哈格丁中尉."
Inst33Quest2_Location = "哈格丁中尉 (奧特蘭克山谷; "..YELLOW.."39,81"..WHITE..")"
Inst33Quest2_Note = "雷矛軍旗在 奧特蘭克山谷北部地圖 冰翼洞穴 "..YELLOW.."[11]"..WHITE.." . 當你聲望提升到一個新的等級後，你可以與同一個NPC交談領取更高級的雷矛徽章."
Inst33Quest2_Prequest = "無"
Inst33Quest2_Folgequest = "無"
Inst33Quest2FQuest = "true"
--
Inst33Quest2name1 = "Stormpike Insignia Rank 1"
Inst33Quest2name2 = "The Frostwolf Artichoke"

--Quest 3 Alliance
Inst33Quest3 = "3. 奧特蘭克山谷的戰鬥"
Inst33Quest3_Level = "60"
Inst33Quest3_Attain = "51"
Inst33Quest3_Aim = "進入奧特蘭克山谷，擊敗部落將軍德雷克塔爾。然後回到勘查員塔雷·石鎬那裏."
Inst33Quest3_Location = "勘查員塔雷·石鎬 (奧特蘭克山脈; "..YELLOW.."41,78"..WHITE..") and\n(奧特蘭克山谷 - 北部地圖; "..YELLOW.."[B]"..WHITE..")"
Inst33Quest3_Note = "德雷克塔爾 在 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[B]"..WHITE.."). 完成這個任務並不一定需要殺死德雷克塔爾，只要贏得奧特蘭克山谷的戰鬥即可."
Inst33Quest3_Prequest = "無"
Inst33Quest3_Folgequest = "有，雷矛英雄"
--
Inst33Quest3name1 = "Bloodseeker"
Inst33Quest3name2 = "Ice Barbed Spear"
Inst33Quest3name3 = "Wand of Biting Cold"
Inst33Quest3name4 = "Cold Forged Hammer"

--Quest 4 Alliance
Inst33Quest4 = "4. 軍需官"
Inst33Quest4_Level = "60"
Inst33Quest4_Attain = "51"
Inst33Quest4_Aim = "與雷矛軍需官談一談."
Inst33Quest4_Location = "巡山人布比羅 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[** MISSING INFO **]"..WHITE..")"
Inst33Quest4_Note = "雷矛軍需官 在 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[7]"..WHITE..")."
Inst33Quest4_Prequest = "無"
Inst33Quest4_Folgequest = "無"
-- No Rewards for this quest

--Quest 5 Alliance
Inst33Quest5 = "5. 冷齒礦洞的補給"
Inst33Quest5_Level = "60"
Inst33Quest5_Attain = "51"
Inst33Quest5_Aim = "把10份冷齒礦洞補給品交給丹巴達爾的聯盟軍需官."
Inst33Quest5_Location = "雷矛軍需官 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[7]"..WHITE..")"
Inst33Quest5_Note = "補給可以在冷齒礦洞找到 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[6]"..WHITE..")."
Inst33Quest5_Prequest = "無"
Inst33Quest5_Folgequest = "無"
-- No Rewards for this quest

--Quest 6 Alliance
Inst33Quest6 = "6. 深鐵礦洞的補給"
Inst33Quest6_Level = "60"
Inst33Quest6_Attain = "51"
Inst33Quest6_Aim = "把10份深鐵礦洞補給品交給丹巴達爾的聯盟軍需官."
Inst33Quest6_Location = "雷矛軍需官 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[7]"..WHITE..")"
Inst33Quest6_Note = "補給可以在深鐵礦洞找到 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[1]"..WHITE..")."
Inst33Quest6_Prequest = "無"
Inst33Quest6_Folgequest = "無"
-- No Rewards for this quest

--Quest 7 Alliance
Inst33Quest7 = "7. 護甲碎片"
Inst33Quest7_Level = "60"
Inst33Quest7_Attain = "51"
Inst33Quest7_Aim = "給丹巴達爾的莫高特·深爐帶去20塊護甲碎片."
Inst33Quest7_Location = "莫高特·深爐 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[4]"..WHITE..")"
Inst33Quest7_Note = "護甲碎片可以從對方陣營的玩家屍體中拾取，任務是可重複的."
Inst33Quest7_Prequest = "無"
Inst33Quest7_Folgequest = "有，更多的護甲碎片"
-- No Rewards for this quest

--Quest 8 Alliance
Inst33Quest8 = "8. 占領礦洞"
Inst33Quest8_Level = "60"
Inst33Quest8_Attain = "51"
Inst33Quest8_Aim = "占領一座還沒有被雷矛部族控制的礦洞，然後向丹巴達爾的雷矛軍需官複命."
Inst33Quest8_Location = "杜爾根·雷矛 (奧特蘭克山谷; "..YELLOW.."37,78"..WHITE..")"
Inst33Quest8_Note = "要完成這個任務，你需要殺死礦洞中的頭目 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[1]"..WHITE..")  (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[6]"..WHITE..") while the Horde control it."
Inst33Quest8_Prequest = "無"
Inst33Quest8_Folgequest = "無"
-- No Rewards for this quest

--Quest 9 Alliance
Inst33Quest9 = "9. 哨塔和碉堡"
Inst33Quest9_Level = "60"
Inst33Quest9_Attain = "51"
Inst33Quest9_Aim = "摧毀敵方的某座哨塔或者碉堡中的旗幟，然後向丹巴達爾的杜爾根·雷矛複命."
Inst33Quest9_Location = "杜爾根·雷矛 (奧特蘭克山谷; "..YELLOW.."37,78"..WHITE..")"
Inst33Quest9_Note = "只需要燒毀旗幟即可，不需要一定摧毀哨塔或碉堡."
Inst33Quest9_Prequest = "無"
Inst33Quest9_Folgequest = "無"
-- No Rewards for this quest

--Quest 10 Alliance
Inst33Quest10 = "10. 奧特蘭克山谷的墓地"
Inst33Quest10_Level = "60"
Inst33Quest10_Attain = "51"
Inst33Quest10_Aim = "占領一座墓地，然後向丹巴達爾的諾雷格·雷矛中尉複命."
Inst33Quest10_Location = "諾雷格·雷矛 (奧特蘭克山谷; "..YELLOW.."37,78"..WHITE..")"
Inst33Quest10_Note = "只需要燒毀旗幟即可，不需要一定占領墓地."
Inst33Quest10_Prequest = "無"
Inst33Quest10_Folgequest = "無"
-- No Rewards for this quest

--Quest 11 Alliance
Inst33Quest11 = "11. 補充坐騎"
Inst33Quest11_Level = "60"
Inst33Quest11_Attain = "51"
Inst33Quest11_Aim = "找到奧特蘭克山谷中的山羊。使用雷矛訓練頸圈來馴服它們。被馴服的山羊會跟隨你回到獸欄管理員那裏，然後與獸欄管理員談話以獲得你的獎勵."
Inst33Quest11_Location = "獸欄管理員 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[6]"..WHITE..")"
Inst33Quest11_Note = "你可以在基地南面找到這些羊，像獵人抓寵物一樣馴服羊，然後帶它回去複命."
Inst33Quest11_Prequest = "無"
Inst33Quest11_Folgequest = "無"
-- No Rewards for this quest

--Quest 12 Alliance
Inst33Quest12 = "12. 山羊坐具"
Inst33Quest12_Level = "60"
Inst33Quest12_Attain = "51"
Inst33Quest12_Aim = "進入敵人的基地，殺死霜狼獲得它的皮來作為山羊坐騎的器具，去吧"
Inst33Quest12_Location = "雷矛山羊騎兵指揮官 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[6]"..WHITE..")"
Inst33Quest12_Note = "霜狼可以在奧特蘭克山谷的南部找到."
Inst33Quest12_Prequest = "無"
Inst33Quest12_Folgequest = "無"
-- No Rewards for this quest

--Quest 13 Alliance
Inst33Quest13 = "13. 水晶簇"
Inst33Quest13_Level = "60"
Inst33Quest13_Attain = "51"
Inst33Quest13_Aim = "你可以躲避硝煙彌漫的戰場，激烈戰鬥之外，你可以幫助我收集霜狼氏族身上的風暴水晶.."
Inst33Quest13_Location = "大德魯伊雷弗拉爾  (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[2]"..WHITE..")"
Inst33Quest13_Note = "在募集大約200個風暴水晶後，大德魯伊伊類弗拉爾開始向（奧特蘭克山谷 - 北部地圖（ "..YELLOW.."[19]"..WHITE.."）移動，他將啓動召喚法陣需要10個玩家去協助召喚。如果成功，森林之王伊弗斯將被召喚出來幫助抵抗部落."
Inst33Quest13_Prequest = "無"
Inst33Quest13_Folgequest = "無"
-- No Rewards for this quest

--Quest 14 Alliance
Inst33Quest14 = "14. 森林之王伊弗斯"
Inst33Quest14_Level = "60"
Inst33Quest14_Attain = "51"
Inst33Quest14_Aim = "霜狼氏族的戰士身上帶著一種名叫暴風水晶的符咒，我們可以用這些符咒來召喚伊弗斯。快去拿來那些水晶吧."
Inst33Quest14_Location = "大德魯伊雷弗拉爾 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[2]"..WHITE..")"
Inst33Quest14_Note = "在募集大約200個風暴水晶後，大德魯伊伊類弗拉爾開始向（奧特蘭克山谷 - 北部地圖（ "..YELLOW.."[19]"..WHITE.."）移動，他將啓動召喚法陣需要10個玩家去協助召喚。如果成功，森林之王伊弗斯將被召喚出來幫助抵抗部落."
Inst33Quest14_Prequest = "無"
Inst33Quest14_Folgequest = "無"
-- No Rewards for this quest

--Quest 15 Alliance
Inst33Quest15 = "15. 天空的召喚 - 維波裏的空軍"
Inst33Quest15_Level = "60"
Inst33Quest15_Attain = "51"
Inst33Quest15_Aim = "你必須去對付守衛前線的部落精英士兵!我現在命令你去削弱那些綠皮蠻子的力量，把他們的中尉和軍團士兵的勳章給我拿來。當我拿到足夠的勳章時，我會命令開始對他們進行空中打擊的."
Inst33Quest15_Location = "空軍指揮官維波裏 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest15_Note = "你可以從對方陣營的屍體上得到這些勳章."
Inst33Quest15_Prequest = "無"
Inst33Quest15_Folgequest = "無"
-- No Rewards for this quest

--Quest 16 Alliance
Inst33Quest16 = "16. 天空的召喚 - 斯裏多爾的空軍"
Inst33Quest16_Level = "60"
Inst33Quest16_Attain = "51"
Inst33Quest16_Aim = "我的獅鹫獸應該在前線作戰，但是在那裏的敵人被削弱之前，它們是無法發動攻擊的。部落的戰士胸前挂著代表榮譽的勳章勇猛沖鋒，而你要做的就是從他們腐爛的屍體上把勳章拿下來，並把它們交視只要敵人在前線的力量受到足夠的打擊，我就會發出命令進行空襲!我們將從空中給敵人造成致命的創傷!!"
Inst33Quest16_Location = "空軍指揮官斯裏多爾 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest16_Note = "你可以從對方陣營的屍體上得到這些勳章."
Inst33Quest16_Prequest = "無"
Inst33Quest16_Folgequest = "無"
-- No Rewards for this quest

--Quest 17 Alliance
Inst33Quest17 = "17. 天空的召喚 - 艾克曼的空軍"
Inst33Quest17_Level = "60"
Inst33Quest17_Attain = "51"
Inst33Quest17_Aim = "它們的士氣很低，戰士。自從我們上次對部落的空中打擊失敗之後，它們就拒絕再次飛行!你必須鼓舞它們的士氣。回到戰場並攻擊部落的核心力量，殺死他們的指揮官和衛兵。盡可能帶回更多的勳章!我向你保證，當我的獅鹫獸看到這些戰利品並嗅到敵人的鮮血時，它們就會再次起飛!現在就出發吧!"
Inst33Quest17_Location = "空軍指揮官艾克曼 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest17_Note = "你可以從對方陣營的屍體上得到這些勳章."
Inst33Quest17_Prequest = "無"
Inst33Quest17_Folgequest = "無"
-- No Rewards for this quest


--Quest 1 Horde
Inst33Quest1_HORDE = "1. 保衛霜狼氏族"
Inst33Quest1_HORDE_Level = "60"
Inst33Quest1_HORDE_Attain = "51"
Inst33Quest1_HORDE_Aim = "到希爾斯布萊德丘陵地區的奧特蘭克山谷去。找到拉格隆德並和他談談，然後成為霜狼氏族的士兵."
Inst33Quest1_HORDE_Location = "霜狼大使 (奧格瑞瑪 - 力量谷 "..YELLOW.."50,71"..WHITE..")"
Inst33Quest1_HORDE_Note = "拉格隆德 (奧特蘭克山脈; "..YELLOW.."62,59"..WHITE..")."
Inst33Quest1_HORDE_Prequest = "無"
Inst33Quest1_HORDE_Folgequest = "有，實驗場"
-- No Rewards for this quest

--Quest 2 Horde
Inst33Quest2_HORDE = "2. 實驗場"
Inst33Quest2_HORDE_Level = "60"
Inst33Quest2_HORDE_Attain = "51"
Inst33Quest2_HORDE_Aim = "到主基地東南邊的蠻爪洞穴中去找到霜狼軍旗，然後把它交給拉格隆德."
Inst33Quest2_HORDE_Location = "拉格隆德 (奧特蘭克山脈; "..YELLOW.."62,59"..WHITE..")"
Inst33Quest2_HORDE_Note = "霜狼軍旗 在蠻爪洞穴 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[9]"..WHITE.."). 每當聲望到達一個級別，你可以在這個人這裏得到升級的徽章."
Inst33Quest2_HORDE_Prequest = "有，保衛霜狼氏族"
Inst33Quest2_HORDE_Folgequest = "無"
Inst33Quest2FQuest_HORDE = "true"
--
Inst33Quest2name1_HORDE = "Frostwolf Insignia Rank 1"
Inst33Quest2name2_HORDE = "Peeling the Onion"

--Quest 3 Horde
Inst33Quest3_HORDE = "3. 為奧特蘭克而戰"
Inst33Quest3_HORDE_Level = "60"
Inst33Quest3_HORDE_Attain = "51"
Inst33Quest3_HORDE_Aim = "進入奧特蘭克山谷，擊敗矮人將軍範達爾·雷矛。然後回到沃加·死爪那裏."
Inst33Quest3_HORDE_Location = "沃加·死爪 (奧特蘭克山脈; "..YELLOW.."64,60"..WHITE..")"
Inst33Quest3_HORDE_Note = "範達爾 雷矛 在 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[B]"..WHITE.."). 不一定需要殺死範達爾才能完成任務，贏得勝利就行."
Inst33Quest3_HORDE_Prequest = "無"
Inst33Quest3_HORDE_Folgequest = "有，霜狼氏族的英雄"
--
Inst33Quest3name1_HORDE = "Bloodseeker"
Inst33Quest3name2_HORDE = "Ice Barbed Spear"
Inst33Quest3name3_HORDE = "Wand of Biting Cold"
Inst33Quest3name4_HORDE = "Cold Forged Hammer"

--Quest 4 Horde
Inst33Quest4_HORDE = "4. 霜狼軍需官"
Inst33Quest4_HORDE_Level = "60"
Inst33Quest4_HORDE_Attain = "51"
Inst33Quest4_HORDE_Aim = "與霜狼軍需官談一談."
Inst33Quest4_HORDE_Location = "喬泰克 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest4_HORDE_Note = "霜狼軍需官 在 "..YELLOW.."[10]"..WHITE.." ."
Inst33Quest4_HORDE_Prequest = "無"
Inst33Quest4_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 5 Horde
Inst33Quest5_HORDE = "5. 冷齒礦洞的補給"
Inst33Quest5_HORDE_Level = "60"
Inst33Quest5_HORDE_Attain = "51"
Inst33Quest5_HORDE_Aim = "把10份冷齒礦洞補給品交給霜狼要塞的部落軍需官."
Inst33Quest5_HORDE_Location = "霜狼軍需官 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[10]"..WHITE..")"
Inst33Quest5_HORDE_Note = "補給品 可以在冷齒礦洞找到 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[6]"..WHITE..")."
Inst33Quest5_HORDE_Prequest = "無"
Inst33Quest5_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 6 Horde
Inst33Quest6_HORDE = "6. 深鐵礦洞的補給"
Inst33Quest6_HORDE_Level = "60"
Inst33Quest6_HORDE_Attain = "51"
Inst33Quest6_HORDE_Aim = "把10份深鐵礦洞補給品交給霜狼要塞的部落軍需官."
Inst33Quest6_HORDE_Location = "霜狼軍需官 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[10]"..WHITE..")"
Inst33Quest6_HORDE_Note = "補給品 可以在深鐵礦洞找到 (奧特蘭克山谷 - 北部地圖; "..YELLOW.."[1]"..WHITE..")."
Inst33Quest6_HORDE_Prequest = "無"
Inst33Quest6_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 7 Horde
Inst33Quest7_HORDE = "7. 敵人的物資"
Inst33Quest7_HORDE_Level = "60"
Inst33Quest7_HORDE_Attain = "51"
Inst33Quest7_HORDE_Aim = "給霜狼村的鐵匠雷格薩帶去20塊護甲碎片."
Inst33Quest7_HORDE_Location = "鐵匠雷格薩 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest7_HORDE_Note = "這是個可重複任務."
Inst33Quest7_HORDE_Prequest = "無"
Inst33Quest7_HORDE_Folgequest = "有，更多的物資!"
-- No Rewards for this quest

--Quest 8 Horde
Inst33Quest8_HORDE = "8. 占領礦洞"
Inst33Quest8_HORDE_Level = "60"
Inst33Quest8_HORDE_Attain = "51"
Inst33Quest8_HORDE_Aim = "占領一座礦洞，然後向霜狼村的霜狼軍需官報告."
Inst33Quest8_HORDE_Location = "霜狼軍需官 (奧特蘭克山脈; "..YELLOW.."66,55"..WHITE..")"
Inst33Quest8_HORDE_Note = "完成這個任務你只要殺死洞裏的首領即可."
Inst33Quest8_HORDE_Prequest = "無"
Inst33Quest8_HORDE_Folgequest ="無"
-- No Rewards for this quest

--Quest 9 Horde
Inst33Quest9_HORDE = "9. 哨塔和碉堡"
Inst33Quest9_HORDE_Level = "60"
Inst33Quest9_HORDE_Attain = "51"
Inst33Quest9_HORDE_Aim = "占領敵方的某座哨塔，然後向霜狼村的提卡·血牙複命."
Inst33Quest9_HORDE_Location = "提卡·血牙 (奧特蘭克山脈; "..YELLOW.."66,55"..WHITE..")"
Inst33Quest9_HORDE_Note = "不用摧毀，只需開旗即可."
Inst33Quest9_HORDE_Prequest = "無"
Inst33Quest9_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 10 Horde
Inst33Quest10_HORDE = "10. 奧特蘭克山谷的墓地"
Inst33Quest10_HORDE_Level = "60"
Inst33Quest10_HORDE_Attain = "51"
Inst33Quest10_HORDE_Aim = "占領一座墓地，然後向霜狼村的亞斯拉複命."
Inst33Quest10_HORDE_Location = "亞斯拉 (奧特蘭克山脈; "..YELLOW.."66,55"..WHITE..")"
Inst33Quest10_HORDE_Note = "只需開旗即可."
Inst33Quest10_HORDE_Prequest = "無"
Inst33Quest10_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 11 Horde
Inst33Quest11_HORDE = "11. 補充坐騎"
Inst33Quest11_HORDE_Level = "60"
Inst33Quest11_HORDE_Attain = "51"
Inst33Quest11_HORDE_Aim = "找到奧特蘭克山谷中的霜狼。使用霜狼口套來馴服它們。被馴服的霜狼會跟隨你回到獸欄管理員那裏，然後與獸欄管理員談話以獲得你的獎勵."
Inst33Quest11_HORDE_Location = "霜狼獸欄管理員 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[9]"..WHITE..")"
Inst33Quest11_HORDE_Note = "基地外面就可以找到這些狼."
Inst33Quest11_HORDE_Prequest = "無"
Inst33Quest11_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 12 Horde
Inst33Quest12_HORDE = "12. 羊皮坐具"
Inst33Quest12_HORDE_Level = "60"
Inst33Quest12_HORDE_Attain = "51"
Inst33Quest12_HORDE_Aim = "殺死雷矛衛隊用作坐騎的山羊，我們就可以將羊皮作為我們的坐墊"
Inst33Quest12_HORDE_Location = "霜狼騎兵指揮官 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[9]"..WHITE..")"
Inst33Quest12_HORDE_Note = "羊能在北部的奧特蘭克山谷找到."
Inst33Quest12_HORDE_Prequest = "無"
Inst33Quest12_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 13 Horde
Inst33Quest13_HORDE = "13. 聯盟之血"
Inst33Quest13_HORDE_Level = "60"
Inst33Quest13_HORDE_Attain = "51"
Inst33Quest13_HORDE_Aim = "從聯盟屍體上邊得到聯盟之血，把它交給我."
Inst33Quest13_HORDE_Location = "指揮官瑟魯加  (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest13_HORDE_Note = "你可以從對方陣營的屍體上得到這些東西"
Inst33Quest13_HORDE_Prequest = "無"
Inst33Quest13_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 14 Horde
Inst33Quest14_HORDE = "14. 冰雪之王洛克霍拉"
Inst33Quest14_HORDE_Level = "60"
Inst33Quest14_HORDE_Attain = "51"
Inst33Quest14_HORDE_Aim = "收集足夠的聯盟之血後，你就可以召喚冰雪之王."
Inst33Quest14_HORDE_Location = "指揮官瑟魯加  (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[8]"..WHITE..")"
Inst33Quest14_HORDE_Note = "當交齊150個聯盟之血後，指揮官瑟魯加開始向（奧特蘭克山谷 - 南部地圖; "..YELLOW.."[14]"..WHITE.."）移動。召喚法陣需要10個玩家去協助召喚。如果成功，冰雪之王洛克霍拉將被召喚出來以對抗聯盟。"
Inst33Quest14_HORDE_Prequest = "無"
Inst33Quest14_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 15 Horde
Inst33Quest15_HORDE = "15. 天空的召喚 - 古斯的部隊"
Inst33Quest15_HORDE_Level = "60"
Inst33Quest15_HORDE_Attain = "51"
Inst33Quest15_HORDE_Aim = "收集聯盟衛兵的肉，把它交給我"
Inst33Quest15_HORDE_Location = "空軍指揮官古斯 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[13]"..WHITE..")"
Inst33Quest15_HORDE_Note = "你可以從對方陣營的屍體上得到這些東西"
Inst33Quest15_HORDE_Prequest = "無"
Inst33Quest15_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 16 Horde
Inst33Quest16_HORDE = "16. 天空的召喚 - 傑斯托的部隊"
Inst33Quest16_HORDE_Level = "60"
Inst33Quest16_HORDE_Attain = "51"
Inst33Quest16_HORDE_Aim = "收集聯盟士官的食物，把它交給我."
Inst33Quest16_HORDE_Location = "空軍指揮官傑斯托  (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[13]"..WHITE..")"
Inst33Quest16_HORDE_Note = "你可以從對方陣營的屍體上得到這些東西"
Inst33Quest16_HORDE_Prequest = "無"
Inst33Quest16_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 17 Horde
Inst33Quest17_HORDE = "17. 天空的召喚 - 穆維裏克的部隊"
Inst33Quest17_HORDE_Level = "60"
Inst33Quest17_HORDE_Attain = "51"
Inst33Quest17_HORDE_Aim = "收集聯盟指揮官的食物，把它交給我"
Inst33Quest17_HORDE_Location = "空軍指揮官穆維裏克 (奧特蘭克山谷 - 南部地圖; "..YELLOW.."[13]"..WHITE..")"
Inst33Quest17_HORDE_Note = "你可以從對方陣營的屍體上得到這些東西"
Inst33Quest17_HORDE_Prequest = "無"
Inst33Quest17_HORDE_Folgequest = "無"
-- No Rewards for this quest


--------------- INST34 - Arathi Basin (AB) ---------------

Inst34Story = "位于阿拉希高地的阿拉希盆地是一處激動人心的戰場。盆地擁有豐富的資源，部落和聯盟都對此垂涎不已。汙染者和阿拉索聯軍在阿拉希盆地展開激戰，想要為他們所在的陣營搶奪盆地中的資源."
Inst34Caption = "阿拉希盆地"
Inst34QAA = "3 個任務"
Inst34QAH = "3 個任務"

--Quest 1 Alliance
Inst34Quest1 = "1. 阿拉希盆地之戰!"
Inst34Quest1_Level = "25"
Inst34Quest1_Attain = "25"
Inst34Quest1_Aim = "進攻礦洞、伐木場、鐵匠鋪和農場，然後向避難谷地的奧斯萊特元帥複命."
Inst34Quest1_Location = "奧斯萊特元帥  (阿拉希高地-避難谷地; "..YELLOW.."46,45"..WHITE..")"
Inst34Quest1_Note = "開旗就可."
Inst34Quest1_Prequest = "無"
Inst34Quest1_Folgequest = "無"
-- No Rewards for this quest

--Quest 2 Alliance
Inst34Quest2 = "2. 控制四座基地"
Inst34Quest2_Level = "60"
Inst34Quest2_Attain = "60"
Inst34Quest2_Aim = "進入阿拉希盆地，同時占據並控制四座基地，當任務完成之後向避難谷地的奧斯萊特元帥報告."
Inst34Quest2_Location = "奧斯萊特元帥 (阿拉希高地-避難谷地; "..YELLOW.."46,45"..WHITE..")"
Inst34Quest2_Note = "你必須和阿拉索聯軍聲望達到友善才能接到這個任務."
Inst34Quest2_Prequest = "無"
Inst34Quest2_Folgequest = "無"
-- No Rewards for this quest

--Quest 3 Alliance
Inst34Quest3 = "3. 控制五座基地"
Inst34Quest3_Level = "60"
Inst34Quest3_Attain = "60"
Inst34Quest3_Aim = "同時控制阿拉希盆地中的五座基地，然後向避難谷地的奧斯萊特元帥複命."
Inst34Quest3_Location = "奧斯萊特元帥 (阿拉希高地-避難谷地; "..YELLOW.."46,45"..WHITE..")"
Inst34Quest3_Note = "你必須和阿拉索聯軍達到崇拜才能接到這個任務."
Inst34Quest3_Prequest = "無"
Inst34Quest3_Folgequest = "無"
--
Inst34Quest3name1 = "Arathor Battle Tabard"


--Quest 1 Horde
Inst34Quest1_HORDE = "1. 阿拉希盆地之戰!"
Inst34Quest1_HORDE_Level = "25"
Inst34Quest1_HORDE_Attain = "25"
Inst34Quest1_HORDE_Aim = "進攻阿拉希盆地的礦洞、伐木場、鐵匠鋪和獸欄，然後向落錘鎮的屠殺者杜維爾複命."
Inst34Quest1_HORDE_Location = "屠殺者杜維爾 (阿拉希高地 - 落槌鎮; "..YELLOW.."74,35"..WHITE..")"
Inst34Quest1_HORDE_Note = "The locations to be assaulted are marked on the map as 1 through 4."
Inst34Quest1_HORDE_Prequest = "No"
Inst34Quest1_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Horde
Inst34Quest2_HORDE = "2. 奪取四座基地"
Inst34Quest2_HORDE_Level = "60"
Inst34Quest2_HORDE_Attain = "60"
Inst34Quest2_HORDE_Aim = "同時占據阿拉希盆地中的四座基地，然後向落錘鎮的屠殺者杜維爾複命."
Inst34Quest2_HORDE_Location = "屠殺者杜維爾 (阿拉希高地 - 落槌鎮; "..YELLOW.."74,35"..WHITE..")"
Inst34Quest2_HORDE_Note = "你必須和汙染者聲望達到友善才能接到任務."
Inst34Quest2_HORDE_Prequest = "無"
Inst34Quest2_HORDE_Folgequest = "無"
-- No Rewards for this quest

--Quest 3 Horde
Inst34Quest3_HORDE = "3. 奪取五座基地"
Inst34Quest3_HORDE_Level = "60"
Inst34Quest3_HORDE_Attain = "60"
Inst34Quest3_HORDE_Aim = "同時占據阿拉希盆地中的五座基地，然後向落錘鎮的屠殺者杜維爾複命."
Inst34Quest3_HORDE_Location = "屠殺者杜維爾 (阿拉希高地 - 落槌鎮; "..YELLOW.."74,35"..WHITE..")"
Inst34Quest3_HORDE_Note = "你必須和汙染者聲望達到崇敬才能接到."
Inst34Quest3_HORDE_Prequest = "無"
Inst34Quest3_HORDE_Folgequest = "無"
--
Inst34Quest3name1_HORDE = "Battle Tabard of the Defilers"



--------------- INST35 - Warsong Gulch (WSG) ---------------

Inst35Story = "戰歌峽谷位于灰谷森林南部。在第三次獸人戰爭中，格羅姆·地獄咆哮和他麾下的獸人們幾乎將戰歌峽谷附近的森林砍伐殆盡。其中部分獸人仍然盤踞在這裏，繼續砍伐著森林，想要擴張部落的勢力範圍。他們稱自己為戰歌偵查騎兵。\n\n暗夜精靈早已糾集兵力，打算收複灰谷森林。他們想要將戰歌偵察騎兵徹底趕出這片土地。因此，銀翼哨兵挺身而出，發誓在將獸人驅逐出戰歌峽谷之前他們決不休息. "
Inst35Caption = "戰歌峽谷（WSG）"
Inst35QAA = "沒有任務"
Inst35QAH = "沒有任務"



---------------------------------------------------
---------------- OUTDOOR RAIDS --------------------
---------------------------------------------------



--------------- INST36 - Dragons of Nightmare ---------------

Inst36Caption = "夢魇之龍"
Inst36QAA = "1 Quest"
Inst36QAH = "1 Quest"

--Quest 1 Alliance
Inst36Quest1 = "1. Shrouded in Nightmare"
Inst36Quest1_Level = "60"
Inst36Quest1_Attain = "60"
Inst36Quest1_Aim = "Find someone capable of deciphering the meaning behind the Nightmare Engulfed Object.\n\nPerhaps a druid of great power could assist you."
Inst36Quest1_Location = "Nightmare Engulfed Object (drops from Emeriss, Taerar, Lethon or Ysondre)"
Inst36Quest1_Note = "Quest turns in to Keeper Remulos at (Moonglade - Shrine of Remulos; "..YELLOW.."36,41"..WHITE.."). Reward listed is for the followup."
Inst36Quest1_Prequest = "None"
Inst36Quest1_Folgequest = "Waking Legends"
--
Inst36Quest1name1 = "Malfurion's Signet Ring"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst36Quest1_HORDE = Inst36Quest1
Inst36Quest1_HORDE_Level = Inst36Quest1_Level
Inst36Quest1_HORDE_Attain = Inst36Quest1_Attain
Inst36Quest1_HORDE_Aim = Inst36Quest1_Aim
Inst36Quest1_HORDE_Location = Inst36Quest1_Location
Inst36Quest1_HORDE_Note = Inst36Quest1_Note
Inst36Quest1_HORDE_Prequest = Inst36Quest1_Prequest
Inst36Quest1_HORDE_Folgequest = Inst36Quest1_Folgequest
--
Inst36Quest1name1_HORDE = Inst36Quest1name1



--------------- INST37 - Azuregos ---------------

Inst37Story = "在世界大分裂之前，暗夜精靈之城埃達拉斯在如今被稱作艾薩拉的土地上可說是非常繁盛。據說很多古老和強大的高等精靈神器，可能就藏在強極一時的堡壘裏。經曆了無數世代，藍龍軍團全力保護神器與魔法傳說，確保它們不落入凡人手中。藍龍，艾索雷葛斯的出現，似乎暗示著那些具有極重要意義的物品，像是預言中的永恒之瓶，或許就能在艾薩拉的荒野裏找到。無論艾索雷葛斯在尋找什麽，可以肯定的是：他會誓死保衛艾薩拉的魔法寶藏。"
Inst37Caption = "艾索雷葛斯"
Inst37QAA = "1 個任務"
Inst37QAH = "1 個任務"

--Quest 1 Alliance
Inst37Quest1 = "1. 龍筋箭袋 (獵人史詩任務)"
Inst37Quest1_Level = "60"
Inst37Quest1_Attain = "60"
Inst37Quest1_Aim = "費伍德森林的古樹哈斯塔特要求你帶回一塊成年藍龍的肌腱."
Inst37Quest1_Location = "古樹哈斯塔特 (費伍德森林 - 鐵木樹林; "..YELLOW.."48,24"..WHITE..")"
Inst37Quest1_Note = "殺死艾索雷葛斯得到藍龍肉，它在 艾薩拉 "..YELLOW.."[1]"..WHITE.."."
Inst37Quest1_Prequest = "有，遠古石葉 ("..YELLOW.."熔火之心"..WHITE..")"
Inst37Quest1_Folgequest = "無"
Inst37Quest1PreQuest = "true"
--
Inst37Quest1name1 = "龍筋箭袋"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst37Quest1_HORDE = Inst37Quest1
Inst37Quest1_HORDE_Level = Inst37Quest1_Level
Inst37Quest1_HORDE_Attain = Inst37Quest1_Attain
Inst37Quest1_HORDE_Aim = Inst37Quest1_Aim
Inst37Quest1_HORDE_Location = Inst37Quest1_Location
Inst37Quest1_HORDE_Note = Inst37Quest1_Note
Inst37Quest1_HORDE_Prequest = Inst37Quest1_Prequest
Inst37Quest1_HORDE_Folgequest = Inst37Quest1_Folgequest
Inst37Quest1PreQuest_HORDE = Inst37Quest1PreQuest
--
Inst37Quest1name1_HORDE = Inst37Quest1name1


--------------- INST38 - Highlord Kruul ---------------
    
Inst38Story = "在燃燒軍團于第三次大戰獲勝之後，由惡魔卡紮克所領導的剩余敵軍，退回了詛咒之地。到現在為止他們都還住在那裏，一個叫腐爛之痕的地方，等待黑暗之門再度敞開。謠傳黑暗之門再度敞開之時，卡紮克將帶著他剩下的軍隊前往外域。曾經是獸人家園的德拉諾，外域被獸人薩滿耐奧祖所建造的數個傳送門同時開啓而分割開來，現在更成為被暗夜精靈背叛者伊利丹統帥的惡魔軍隊所占領的破碎世界。"
Inst38Caption = "卡紮克"
Inst38QAA = "無任務"
Inst38QAH = "無任務"

end

-- End of File
