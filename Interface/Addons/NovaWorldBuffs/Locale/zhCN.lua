local L = LibStub("AceLocale-3.0"):NewLocale("NovaWorldBuffs", "zhCN");
if (not L) then
	return;
end

--Rend buff aura name.
L["Warchief's Blessing"] = "酋长的祝福";
--Onyxia and Nefarian buff aura name.
L["Rallying Cry of the Dragonslayer"] = "屠龙者的咆哮";
--Songflower buff aura name from felwood.
L["Songflower Serenade"] = "风歌夜曲";
L["Songflower"] = "轻歌花";
--Spirit of Zandalar.
L["Spirit of Zandalar"] = "赞达拉之魂";
L["Flask of Supreme Power"] = "超级能量合剂";
L["Flask of the Titans"] = "泰坦合剂";
L["Flask of Distilled Wisdom"] = "精炼智慧合剂";
L["Flask of Chromatic Resistance"] = "多重抗性合剂";
--3 of the flasks spells seem to be named differently than the flask item, but titan is exact same name as the flask item.
L["Supreme Power"] = "至高能量";
L["Distilled Wisdom"] = "萃取智慧";
L["Chromatic Resistance"] = "多彩抗性";

---=====---
---Horde---
---=====---

--Horde Orgrimmar Rend buff NPC.
L["Thrall"] = "萨尔";
--Horde The Barrens Rend buff NPC.
L["Herald of Thrall"] = "萨尔的使者";
--Horde rend buff NPC first yell string (part of his first yell msg before before buff).
L["Rend Blackhand, has fallen"] = "为你们的英雄而欢庆";
--Horde rend buff NPC second yell string (part of his second yell msg before before buff).
L["Be bathed in my power"] = "沐浴在我的力量中吧";

--Horde Onyxia buff NPC.
L["Overlord Runthak"] = "伦萨克";
--Horde Onyxia buff NPC first yell string (part of his first yell msg before before buff).
L["Onyxia, has been slain"] = "部落的人民，奥格瑞玛的居民";
--Horde Onyxia buff NPC second yell string (part of his second yell msg before before buff).
L["Be lifted by the rallying cry"] = "在屠龙大军的战斗号角声中精神抖擞地前进吧";

--Horde Nefarian buff NPC.
L["High Overlord Saurfang"] = "萨鲁法尔大王";
--Horde Nefarian buff NPC first yell string (part of his first yell msg before before buff).
L["NEFARIAN IS SLAIN"] = "奈法利安被杀掉了";
--Horde Nefarian buff NPC second yell string (part of his second yell msg before before buff).
L["Revel in his rallying cry"] = "为他的胜利而狂欢吧";

---========---
---Alliance---
---========---

--Alliance Onyxia buff NPC.
L["Major Mattingly"] = "玛丁雷少校";
--Alliance Onyxia buff NPC first yell string (part of his first yell msg before before buff).
L["history has been made"] = "暴风城的城民和盟友们";
--Alliance Onyxia buff NPC second yell string (part of his second yell msg before before buff).
L["Onyxia, hangs from the arches"] = "看看强大的联盟吧";


--Alliance Nefarian buff NPC.
L["Field Marshal Afrasiabi"] = "艾法希比元帅";
--Alliance Nefarian buff NPC first yell string (part of his first yell msg before before buff).
L["the Lord of Blackrock is slain"] = "联盟的人民们";
--Alliance Nefarian buff NPC second yell string (part of his second yell msg before before buff).
L["Revel in the rallying cry"] = "兴奋起来";

---===========----
---NPC's killed---
---============---

L["onyxiaNpcKilledHorde"] = "伦萨克死亡了。 (奥妮克希亚 buff NPC)。";
L["onyxiaNpcKilledAlliance"] = "玛丁雷少校死亡了。(奥妮克希亚 buff NPC)。";
L["nefarianNpcKilledHorde"] = "萨鲁法尔大王死亡了。 (奈法利安 buff NPC)。";
L["nefarianNpcKilledAlliance"] = "艾法希比元帅死亡了。(奈法利安 buff NPC)。";
L["onyxiaNpcKilledHordeWithTimer"] = "奥妮克希亚 NPC (伦萨克) 已经被击杀了 %s ， 之后没有任何buff记录。";
L["NefarianNpcKilledHordeWithTimer"] = "奈法利安 NPC (萨鲁法尔大王)已经被击杀了 %s ， 之后没有任何buff记录。";
L["onyxiaNpcKilledAllianceWithTimer"] = "奥妮克希亚 buff NPC (玛丁雷少校) 已经被击杀了 %s ， 之后没有任何buff记录。";
L["NefarianNpcKilledAllianceWithTimer"] = "奈法利安 buff NPC (艾法希比元帅)已经被击杀了 %s ， 之后没有任何buff记录。";
L["anyNpcKilledAllianceWithTimer"] = "NPC 在 %s 以前被击杀了"; --Map timers tooltip msg.


---==============---
---Darkmoon Faire---
---==============---

L["Darkmoon Faire"] = "暗月马戏团";
L["Sayge's Dark Fortune of Agility"] = "塞格的黑暗塔罗牌：敏捷";
L["Sayge's Dark Fortune of Intelligence"] = "塞格的黑暗塔罗牌：智力";
L["Sayge's Dark Fortune of Spirit"] = "塞格的黑暗塔罗牌：精神";
L["Sayge's Dark Fortune of Stamina"] = "塞格的黑暗塔罗牌：耐力";
L["Sayge's Dark Fortune of Strength"] = "塞格的黑暗塔罗牌：力量";
L["Sayge's Dark Fortune of Armor"] = "塞格的黑暗塔罗牌：护甲";
L["Sayge's Dark Fortune of Resistance"] = "塞格的黑暗塔罗牌：抗性";
L["Sayge's Dark Fortune of Damage"] = "塞格的黑暗塔罗牌：伤害";
L["dmfBuffCooldownMsg"] = "你的暗月马戏团 buff 冷却剩余时间 %s 。";
L["dmfBuffReady"] = "你的暗月马戏团 buff 冷却剩余时间已就绪。"; --These 2 buff msgs are slightly different for a reason.
L["dmfBuffReset"] = "你的暗月马戏团 buff 冷却剩余时间已重置。"; --These 2 buff msgs are slightly different for a reason.
L["dmfBuffDropped"] = "暗月马戏团 buff %s 已获得, 输入/buffs来查看该buff在4小时游戏时间的冷却剩余。";
L["dmfSpawns"] = "暗月马戏团将刷新于 %s后(%s)。";
L["dmfEnds"] = "暗月马戏团已刷新, 将于 %s后(%s)结束。";
L["mulgore"] = "莫高雷";
L["elwynnForest"] = "艾尔文森林";
				
---==============---
---Output Strings---
---==============---

L["rend"] = "雷德·黑手"; --Rend Blackhand
L["onyxia"] = "奥妮克希亚"; --Onyxia
L["nefarian"] = "奈法利安"; --Nefarian
L["dmf"] = "暗月马戏团"; --Darkmoon Faire
L["noTimer"] = "没有计时"; --No timer
L["noCurrentTimer"] = "没有当前计时"; --No current timer
L["noActiveTimers"] = "没有激活计时";	--No active timers
L["newBuffCanBeDropped"] = "一个新的 %s buff 现在可以取得"
L["buffResetsIn"] = "%s 重置于 %s后.";
L["rendFirstYellMsg"] = "雷德·黑手Buff将在 6 秒后释放。";
L["onyxiaFirstYellMsg"] = "奥妮克希亚Buff将在 14 秒后释放。";
L["nefarianFirstYellMsg"] = "奈法利安Buff 15 秒后释放。";
L["rendBuffDropped"] = "酋长的祝福 (雷德·黑手) 已经释放。";
L["onyxiaBuffDropped"] = "屠龙者的咆哮（奥妮克希亚）Buff 已经释放。";
L["nefarianBuffDropped"] = "屠龙者的咆哮（奈法利安）Buff 15 秒后释放。";
L["onyxiaNpcKilledHorde"] = "伦萨克死亡了。 (奥妮克希亚 buff NPC)。";
L["onyxiaNpcKilledAlliance"] = "玛丁雷少校死亡了。(奥妮克希亚 buff NPC)。";
L["nefarianNpcKilledHorde"] = "萨鲁法尔大王死亡了。 (奈法利安 buff NPC)。";
L["nefarianNpcKilledAlliance"] = "艾法希比元帅死亡了。(奈法利安 buff NPC)。";
L["newSongflowerReceived"] = "收到新的轻歌花计时"; --New songflower timer received
L["songflowerPicked"] = "轻歌花在 %s 被拾取, 25分钟后刷新。"; -- Guild msg when songflower picked.
L["North Felpaw Village"] = "魔爪村北部"; --Felwood map subzones (flower1).
L["West Felpaw Village"] = "魔爪村西部"; --Felwood map subzones (flower2).
L["North of Irontree Woods"] = "铁木森林北部"; --Felwood map subzones (flower3).
L["Talonbranch Glade"] = "刺枝林地"; --Felwood map subzones (flower4).
L["Shatter Scar Vale"] = "碎痕谷"; --Felwood map subzones (flower5).
L["Bloodvenom Post"] = "血毒岗哨"; --Felwood map subzones (flower6).
L["East of Jaedenar"] = "加德纳尔东部"; --Felwood map subzones (flower7).
L["North of Emerald Sanctuary"] = "翡翠圣地北部"; --Felwood map subzones (flower8).
L["West of Emerald Sanctuary"] = "翡翠圣地西部"; --Felwood map subzones (flower9).
L["South of Emerald Sanctuary"] = "翡翠圣地南部"; --Felwood map subzones (flower10).
L["second"] = "秒"; --Second (singular).
L["seconds"] = "秒"; --Seconds (plural).
L["minute"] = "分"; --Minute (singular).
L["minutes"] = "分"; --Minutes (plural).
L["hour"] = "时"; --Hour (singular).
L["hours"] = "时"; --Hours (plural).
L["day"] = "天"; --Day (singular).
L["days"] = "天"; --Days (plural).
L["secondShort"] = "秒"; --Used in short timers like 1m30s (single letter only, usually the first letter of seconds).
L["minuteShort"] = "分"; --Used in short timers like 1m30s (single letter only, usually the first letter of minutes).
L["hourShort"] = "时"; --Used in short timers like 1h30m (single letter only, usually the first letter of hours).
L["dayShort"] = "天"; --Used in short timers like 1d8h (single letter only, usually the first letter of days).
L["startsIn"] = "将于 %s 后开始"; --"Starts in 1hour".
L["endsIn"] = "将于 %s 后结束"; --"Ends in 1hour".
L["versionOutOfDate"] = "Nova World Buffs 插件已过期,请在 https://www.curseforge.com/wow/addons/nova-world-buffs 或 twitch 更新。";
L["Your Current World Buffs"] = "当前世界Buff";
L["Options"] = "选项";

---New stuff---

--Spirit of Zandalar buff NPC first yell string (part of his first yell msg before before buff).
L["Begin the ritual"] = "开始仪式";
L["The Blood God"] = "夺灵者已经被打败了"; --First Booty bay yell from Zandalarian Emissary.
--Spirit of Zandalar buff NPC second yell string (part of his second yell msg before before buff).
L["slayer of Hakkar"] = "向你致敬";

L["Molthor"] = "莫托尔";
L["Zandalarian Emissary"] = "赞达拉大使";
L["Whipper Root Tuber"] = "鞭根块茎";
L["Night Dragon's Breath"] = "夜龙之息";
L["Resist Fire"] = "抵抗火焰"; -- LBRS fire resist buff.
L["Blessing of Blackfathom"] = "黑暗深渊的祝福";

L["zan"] = "赞达拉";
L["zanFirstYellMsg"] = "赞达拉Buff 将于 30秒 后释放。";
L["zanBuffDropped"] = "赞达拉之魂Buff (哈卡) 已经释放。";
L["singleSongflowerMsg"] = "轻歌花在 %s 将刷新于 %s后。";
L["spawn"] = "刷新"; --Used in Felwood map marker tooltip (03:46pm spawn).

L["Irontree Woods"] = "铁木森林";
L["West of Irontree Woods"] = "铁木森林西部";
L["Bloodvenom Falls"] = "血毒瀑布";
L["Jaedenar"] = "加德纳尔";
L["North-West of Irontree Woods"] = "铁木森林西北部";
L["South of Irontree Woods"] = "铁木森林南部";



L["cityMapLayerMsgHorde"] = "当前在 %s\n选定奥格瑞玛的任何NPC\n以便更新你的分层信息。|r";
L["cityMapLayerMsgAlliance"] = "当前在 %s\n选定暴风城的任何NPC\n以便更新你的分层信息。|r";
L["noLayerYetHorde"] = "请选定奥格瑞玛的任何NPC\n确认你当前所在的分层。";
L["noLayerYetAlliance"] = "请选定暴风城的任何NPC\n确认你当前所在的分层。";
L["Reset Data"] = "重置数据"; --A button to Reset buffs window data.