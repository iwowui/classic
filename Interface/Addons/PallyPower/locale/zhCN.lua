local L = LibStub("AceLocale-3.0"):NewLocale("PallyPower", "zhCN", false, false)
if not L then return end 
L["AURA"] = "光环"
L["AURA_DESC"] = "已监视的光环"
L["AURABTN"] = "显示光环/圣印按钮"
L["AURABTN_DESC"] = "显示或隐藏光环/圣印按钮"
L["AURATRACKER"] = "光环监视"
L["AURATRACKER_DESC"] = "选择你想监视的光环"
L["AUTO"] = "自动Buff按钮"
L["AUTO_DESC"] = "[|cffffd200启用|r/|cffffd200禁用|r] 自动Buff按钮，或 [|cffffd200启用|r/|cffffd200禁用|r] 等待玩家。"
L["AUTOASSIGN"] = "自动分配"
L["AUTOASSIGN_DESC"] = "基于圣骑士和祝福的数量自动释放所有祝福"
L["AUTOBTN"] = "启用自动buff按钮"
L["AUTOBTN_DESC"] = "[启用/禁用] 自动Buff按钮"
L["AUTOKEY1"] = "[自动]普通祝福快捷键"
L["AUTOKEY1_DESC"] = "普通祝福的快捷键"
L["AUTOKEY2"] = "[自动]强效祝福快捷键"
L["AUTOKEY2_DESC"] = "强效祝福的快捷键"
L["BRPT"] = "祝福报告"
L["BRPT_DESC"] = "报告所有祝福到团队或小队频道"
L["BSC"] = "主窗口大小"
L["BSC_DESC"] = "设置祝福施加窗口的大小"
L["BUTTONS"] = "按钮"
L["BUTTONS_DESC"] = "更改按钮设置"
L["CLASSBTN"] = "启用职业按钮"
L["CLASSBTN_DESC"] = "禁用后，也将禁用玩家按钮，并且您只能使用“自动Buff按钮”释放Buff"
L["CPBTNS"] = "职业和玩家按钮"
L["CPBTNS_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] 玩家或职业按钮"
L["DISPEDGES"] = "显示按钮边角"
L["DISPEDGES_DESC"] = "显示玩家按钮的边角"
L["DRAG"] = "拖拽按钮"
L["DRAG_DESC"] = "[|cffffd200启用|r/|cffffd200禁用|r]拖拽按钮"
L["DRAGHANDLE"] = "|cffffffff[左键]|r |cffff0000锁定|r/|cff00ff00解锁|r PallyPower |cffffffff[按住左键]|r 移动 PallyPower |cffffffff[右键]|r 打开祝福分配 |cffffffff[Shift-右键]|r 打开设置"
L["DRAGHANDLE_ENABLED"] = "启用拖拽"
L["DRAGHANDLE_ENABLED_DESC"] = "[启用/禁用]拖拽"
L["FREEASSIGN"] = "自由分配"
L["FREEASSIGN_DESC"] = "允许其他人更改你释放的祝福"
L["Fully Buffed"] = "已完整Buff"
L["HorLeftDown"] = "水平 左 | 下"
L["HorLeftUp"] = "水平 左 | 上"
L["HorRightDown"] = "水平 右 | 下"
L["HorRightUp"] = "水平 右 | 上"
L["LAYOUT"] = "Buff按钮 | 玩家按钮布局"
L["LAYOUT_DESC"] = "自定义布局"
L["MAINASSISTANT"] = "自动Buff主助理"
L["MAINASSISTANT_DESC"] = "启用后，PallyPower将自动对标记为| cffffd200主助理|r的人物施放更高级的普通祝福。"
--[[Translation missing --]]
L["MAINASSISTANTGBUFFDP"] = "Override Druids / Paladins..."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFDP_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFW"] = "Override Warriors..."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFW_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Warriors."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFDP"] = "...with Normal..."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFDP_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFW"] = "...with Normal..."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFW_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Warriors."
L["MAINROLES"] = "主坦克/助理人物"
--[[Translation missing --]]
L["MAINROLES_DESC"] = [=[These options can be used to automatically assign alternate Normal Blessings for any Greater Blessing assigned to Warriors, Druids or Paladins |cffff0000only|r. 

Normally the Main Tank and the Main Assist roles have been used to identify Main Tanks and Off-Tanks (Main Assist) however, some guilds assign the Main Tank role to both Main Tanks and Off-Tanks and assign the Main Assist role to Healers. 

By having a separate setting for both roles it will allow Paladin Class Leaders or Raid Leaders to remove, as an example, Greater Blessing of Salvation from Tanking classes or if Druid or Paladin Healers are marked with the Main Assist role they could be setup to get Normal Blessing of Wisdom vs Greater Blessing of Might which would allow assigning Greater Blessing of Might for DPS spec'd Druids and Paladins and Normal Blessing of Wisdom to Healing spec'd Druids and Paladins. 

|cffffff00Note: When there are 5 or more Paladins in a Raid (enough to assign all the Greater Blessings), these settings will automatically be disabled. Tanking Classes will have to manually switch off Blessing of Salvation.|r
]=]
L["MAINTANK"] = "自动Buff主坦克"
L["MAINTANK_DESC"] = "启用后，PallyPower将自动对标记为主坦克的人物施放最高级的祝福，防止被更高级的祝福覆盖。"
--[[Translation missing --]]
L["MAINTANKGBUFFDP"] = "Override Druids / Paladins..."
--[[Translation missing --]]
L["MAINTANKGBUFFDP_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINTANKGBUFFW"] = "Override Warriors..."
--[[Translation missing --]]
L["MAINTANKGBUFFW_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Warriors."
--[[Translation missing --]]
L["MAINTANKNBUFFDP"] = "...with Normal..."
--[[Translation missing --]]
L["MAINTANKNBUFFDP_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINTANKNBUFFW"] = "...with Normal..."
L["MAINTANKNBUFFW_DESC"] = [=[选择您想用来覆盖主坦克的普通祝福：战士。
]=]
L["None"] = "无"
L["None Buffed"] = "没有被Buff"
L["OPTIONS"] = "选项"
L["OPTIONS_DESC"] = "打开PallyPower选项面板"
L["Partially Buffed"] = "已部分被Buff"
L["PLAYERBTNS"] = "启用玩家按钮"
L["PLAYERBTNS_DESC"] = "禁用后，将不再看到显示单个玩家的弹出按钮， 并且在战斗中将无法释放祝福。"
L["PP_CLEAR"] = "清除"
L["PP_CLEAR_DESC"] = "清除所有为自己分配的祝福任务。"
L["PP_COLOR"] = "更改Buff按钮的状态颜色"
L["PP_LOOKS"] = "改变PallyPower的样式"
L["PP_NAME"] = "PallyPower"
L["PP_RAS1"] = "-- 骑士祝福分配 ---"
L["PP_RAS2"] = "--- 结束分配 ---"
L["PP_RAS3"] = "警告：团队中圣骑士超过5个。"
L["PP_RAS4"] = "坦克，手动关闭拯救祝福！"
L["PP_REFRESH"] = "刷新"
L["PP_REFRESH_DESC"] = "刷新所有祝福任务、天赋和标记。"
L["PP_RESET"] = "重置位置"
L["PP_SHOW"] = "何时显示 PallyPower"
L["RAID"] = "团队"
L["RAID_DESC"] = "团队选项"
L["RESET"] = "重置"
L["RESET_DESC"] = "将所有PallyPower窗口的位置重置回屏幕中央"
L["RESIZEGRIP"] = "按住左键调整大小 ，右键重置默认大小"
L["RFM"] = "激活正义之怒"
L["RFM_DESC"] = "[激活/禁用]正义之怒"
L["SEAL"] = "圣印"
L["SEAL_DESC"] = "已监视的圣印"
L["SEALBTN"] = "启用圣印按钮"
L["SEALBTN_DESC"] = "[启用/禁用] 圣印按钮"
L["SEALTRACKER"] = "圣印监视器"
L["SEALTRACKER_DESC"] = "选择你想监视的圣印"
L["SETTINGS"] = "设置"
L["SETTINGS_DESC"] = "更改全局设置"
L["SHOWGLOBAL"] = "全局显示"
L["SHOWGLOBAL_DESC"] = "[显示/隐藏] PallyPower"
L["SHOWPARTY"] = "在小队时显示"
L["SHOWPARTY_DESC"] = "当加入一个小队后显示/隐藏祝福施加窗口"
L["SHOWPETS"] = "显示宠物"
L["SHOWPETS_DESC"] = "启用后，宠物将会出现在对应的职业下面。|cffffff00(提示：由于强效祝福的工作方式和宠物的分类方式，宠物需要单独Buff。此外，除非关闭相位变换，否则术士小鬼将自动隐藏).|r"
L["SHOWSOLO"] = "在单独时显示"
L["SHOWSOLO_DESC"] = "当单独一人显示/隐藏祝福施加窗口"
L["SHOWTIPS"] = "显示鼠标提示"
L["SHOWTIPS_DESC"] = "[显示/隐藏] PallyPower鼠标提示"
L["SKIN"] = "皮肤"
L["SKIN_DESC"] = "应用自定义到背景到Buff按钮"
L["SMARTBUFF"] = "启用智能Buff"
L["SMARTBUFF_DESC"] = "启用后，将不会给战士或盗贼智慧祝福，不会给法师、术士和猎人力量祝福。"
L["VerDownLeft"] = "垂直 下 | 左"
L["VerDownRight"] = "垂直 下 | 右"
L["VerUpLeft"] = "垂直 上 | 左"
L["VerUpRight"] = "垂直 上 | 右"
L["WAIT"] = "启用等待玩家"
L["WAIT_DESC"] = "启用后，如果玩家死亡、离线或者不在施法范围中，那么自动Buff按钮不会自动给对应的职业加强效祝福。"
 
