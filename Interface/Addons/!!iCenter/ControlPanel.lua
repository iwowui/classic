-- Template --
--[[
local playerName = UnitName("player");
local enabled = GetAddOnEnableState(playerName, "DCT");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameDCT	= "战斗指示器";
		FF_DescDCT	= "显示你战斗中受到的各种信息及法术预警";
	elseif GetLocale() == "zhTW" then
		FF_NameDCT	= "戰鬥指示器";
		FF_DescDCT	= "顯示你戰鬥中受到的各種資訊及法術預警";
	else
		FF_NameDCT	= "DCT";
		FF_DescDCT	= "New Scrolling Combat Text";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "DCT";
				name= FF_NameDCT;
				subtext= "Dennis's Combat Text";
				tooltip = FF_DescDCT;
				icon= "Interface\\Icons\\Ability_Gouge";
				callback= function(button)
					if not IsAddOnLoaded("DCT") then
						LoadAddOn("DCT");
					end
					DCT_showMenu();
				end;
			}
		);
	end
end
]]

local _, class = UnitClass("player");
local playerName = UnitName("player");

local enabled = GetAddOnEnableState(playerName, "WarbabyTradeLink");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameWTL	= "专业技能链接大全";
		FF_DescWTL	= "游戏内生成各交易技能的具有全部项目的技能窗口.";
	elseif GetLocale() == "zhTW" then
		FF_NameWTL	= "專業技能鏈結大全";
		FF_DescWTL	= "遊戲內生成各交易技能的具有全部專案的技能視窗.";
	else
		FF_NameWTL	= "TradeLink";
		FF_DescWTL	= "Get full trade skill link to view!";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "TradeLink";
				name= FF_NameWTL;
				subtext= "TradeLink";
				tooltip = FF_DescWTL;
				icon= "Interface\\ICONS\\Spell_Shadow_Dispersion";
				callback= function(button)
					local color = "|cff7F7Fff";
					DEFAULT_CHAT_FRAME:AddMessage(color..WarbabyTL_TITLE);
					local curr = WB_MAX_SKILL_LEVEL;
					DEFAULT_CHAT_FRAME:AddMessage(WBTradeLink_GetAll(curr));
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ItemDB");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameIDB	= "物品数据库";
		FF_DescIDB	= "搜索本机缓存中物品.";
	elseif GetLocale() == "zhTW" then
		FF_NameIDB	= "物品資料庫";
		FF_DescIDB	= "搜索本機緩存中物品.";
	else
		FF_NameIDB	= "ItemDB";
		FF_DescIDB	= "Allows you to browse your clients database";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ItemDB";
				name= FF_NameIDB;
				subtext= "ItemDB";
				tooltip = FF_DescIDB;
				icon= "Interface\\ICONS\\INV_Crate_07";
				callback= function(button)
					if not IsAddOnLoaded("ItemDB") then
						LoadAddOn("ItemDB");
					end
					if ItemDB_Browser:IsShown() then
						ItemDB_Browser:Hide();
					else
						ItemDB_Browser:Show();
					end
				end;
			}
		);
	end
end

--local _, _, _, WCenabled = GetAddOnInfo("BFChannel")
--if WCenabled == 1 then
	-- if GetLocale() == "zhCN" then
	-- 	FF_NameWC	= "世界频道";
	-- 	FF_DescWC	= "点击加入大脚世界频道";
	-- 	FF_WC		= "大脚世界频道";
	-- elseif GetLocale() == "zhTW" then
	-- 	FF_NameWC	= "世界頻道";
	-- 	FF_DescWC	= "点击加入大腳世界頻道";
	-- 	FF_WC		= "大腳世界頻道";
	-- else
	-- 	FF_NameWC	= "World Channel";
	-- 	FF_DescWC	= "Click to join the world channel.";
	-- 	FF_WC		= "大脚世界频道";
	-- end
	-- if ( EarthFeature_AddButton ) then
	-- 	EarthFeature_AddButton(
	-- 		{
	-- 			id= "WC";
	-- 			name= FF_NameWC;
	-- 			subtext= "World Channel";
	-- 			tooltip = FF_DescWC;
	-- 			icon= "Interface\\Icons\\Warrior_talent_icon_Deadlycalm";
	-- 			callback= function(button)
	-- 			--[[
	-- 					if not IsAddOnLoaded("BFChannel") then
	-- 						LoadAddOn("BFChannel")
	-- 					end
	-- 					InterfaceOptionsFrame_OpenToCategory(FF_WC)
	-- 					InterfaceOptionsFrame_OpenToCategory(FF_WC)
	-- 				end;
	-- 			]]
	-- 				JoinTemporaryChannel(FF_WC)
	-- 				ChatFrame_RemoveMessageGroup(DEFAULT_CHAT_FRAME, "CHANNEL");
	-- 				local i = 1;
	-- 				while ( DEFAULT_CHAT_FRAME.channelList[i]) do
	-- 					if not DEFAULT_CHAT_FRAME.channelList[i]:find(FF_WC) then
	-- 						i = i + 1;
	-- 					else
	-- 						DEFAULT_CHAT_FRAME.channelList[i] = FF_WC;
	-- 						return;
	-- 					end
	-- 				end
	-- 				DEFAULT_CHAT_FRAME.channelList[i] = FF_WC;
	-- 				ChatFrame_RemoveMessageGroup(DEFAULT_CHAT_FRAME, "CHANNEL");
	-- 			end;
	-- 		}
	-- 	);
	-- end
--end

if GetLocale() == "zhCN" then
	FF_NameWC	= "世界频道";
	FF_DescWC	= "左键点击加入/退出世界频道，右键点击设置频道过滤";
	FF_WC		= "大脚世界频道";
	FF_JOIN		= "已加入大脚世界频道";
	FF_LEAVE	= "已退出大脚世界频道";
elseif GetLocale() == "zhTW" then
	FF_NameWC	= "世界頻道";
	FF_DescWC	= "左键点击加入/退出世界頻道，右鍵点击設置頻道過濾";
	FF_WC		= "大脚世界频道";
	FF_JOIN		= "已加入大腳世界頻道";
	FF_LEAVE	= "已退出大腳世界頻道";
else
	FF_NameWC	= "World Channel";
	FF_DescWC	= "Click to join/leave the world channel, rightbutton for filter settings.";
	FF_WC		= "BigfootWorldChannel";
	FF_JOIN		= "World channel joined";
	FF_LEAVE	= "World channel left";
end
if ( EarthFeature_AddButton ) then
	EarthFeature_AddButton(
		{
			id= "WC";
			name= FF_NameWC;
			subtext= "World Channel";
			tooltip = FF_DescWC;
			icon= "Interface\\Icons\\Ability_Creature_Cursed_04";
			callback= function(button)
				if button == "LeftButton" then
					local _, channelName, _ = GetChannelName(FF_WC);
					if channelName == nil then
						JoinPermanentChannel(FF_WC, nil, 1, 1);
						ChatFrame_RemoveMessageGroup(SELECTED_DOCK_FRAME, "CHANNEL");
						ChatFrame_AddChannel(SELECTED_DOCK_FRAME, FF_WC);
						print(FF_JOIN);
					else
						LeaveChannelByName(FF_WC);
						print(FF_LEAVE);
					end
				elseif button == "RightButton" then
					ChannelFilters_SlashHandler();
				end
			end;
		}
	);
end

if GetLocale() == "zhCN" then
	FF_NameACP	= "插件控制面板";
	FF_DescACP	= "在游戏中可以随时加载/卸载插件";
elseif GetLocale() == "zhTW" then
	FF_NameACP	= "插件控制台";
	FF_DescACP	= "在遊戲中可以隨時載入/卸載插件";
else
	FF_NameACP	= "ACP";
	FF_DescACP	= "Special support for multi-part addons.";
end
if ( EarthFeature_AddButton ) then
	EarthFeature_AddButton(
		{
			id= "ACP";
			name= FF_NameACP;
			subtext= "Addon Control Panel";
			tooltip = FF_DescACP;
			icon= "Interface\\Icons\\Trade_Engineering";
			callback= function(button) ACP.SlashHandler() end;
		}
	);
end

local enabled = GetAddOnEnableState(playerName, "GetLinkClassic");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameGLC	= "物品搜索";
		FF_DescGLC	= "搜索并创建物品链接。";
	elseif GetLocale() == "zhTW" then
		FF_NameGLC	= "物品搜索";
		FF_DescGLC	= "搜索并创建物品链接。";
	else
		FF_NameGLC	= "GetLinkClassic";
		FF_DescGLC	= "Search and generate item links.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "GetLinkClassic";
				name= FF_NameGLC;
				subtext= "GetLinkClassic";
				tooltip = FF_DescGLC;
				icon= "Interface\\ICONS\\INV_Crate_01";
				callback= function(button)
					if not IsAddOnLoaded("GetLinkClassic") then
						LoadAddOn("GetLinkClassic");
					end
					GLG_SlashHandler();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Archy");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameArchy	= "考古学助手";
		FF_DescArchy	= "提供小地图显示挖掘场，显示碎片挖掘点，勘察距离显示器，文物可辨识提示等功能。";
	elseif GetLocale() == "zhTW" then
		FF_NameArchy	= "考古學助手";
		FF_DescArchy	= "提供小地圖顯示挖掘場，顯示碎片挖掘點，勘察距離顯示器，文物可辨識提示等功能。";
	else
		FF_NameArchy	= "Archy";
		FF_DescArchy	= "Archaeology Assistant";
	end 
	if(EarthFeature_AddButton) then
		EarthFeature_AddButton(
			{
				id= "Archy";
				name= FF_NameArchy;
				subtext= "Archy";
				tooltip = FF_DescArchy;
				icon = "Interface\\Icons\\Trade_Archaeology_WispAmulet";
				callback= function(button)
					if not IsAddOnLoaded("Archy") then
						LoadAddOn("Archy");
					end
					InterfaceOptionsFrame_OpenToCategory("Archy");
					InterfaceOptionsFrame_OpenToCategory("Archy");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Leatrix_Maps");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameLeatrixMaps	= "地图增强";
		FF_DescLeatrixMaps	= "地图浏览器";
	elseif GetLocale() == "zhTW" then
		FF_NameLeatrixMaps	= "地圖增强";
		FF_DescLeatrixMaps	= "地圖集";
	else
		FF_NameLeatrixMaps	= "Leatrix Maps";
		FF_DescLeatrixMaps	= "Enhancements for your maps.";
	end 
	if(EarthFeature_AddButton) then
		EarthFeature_AddButton(
			{
				id= "LeatrixMaps";
				name= FF_NameLeatrixMaps;
				subtext= "LeatrixMaps";
				tooltip = FF_DescLeatrixMaps;
				icon = "Interface\\Icons\\Inv_Misc_Map_01";
				callback= function(button)
					if not IsAddOnLoaded("Leatrix_Maps") then
						LoadAddOn("Leatrix_Maps");
					end
					--DEFAULT_CHAT_FRAME.editBox:SetText("/leamaps")
					--ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox,0)
					SlashCmdList["Leatrix_Maps"]("");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Atlas");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameAtlas	= "副本地图";
		FF_DescAtlas	= "副本地图浏览器";
	elseif GetLocale() == "zhTW" then
		FF_NameAtlas	= "副本地圖";
		FF_DescAtlas	= "副本地圖集";
	else
		FF_NameAtlas	= "Atlas";
		FF_DescAtlas	= "Instance Map Browser";
	end 
	if(EarthFeature_AddButton) then
		EarthFeature_AddButton(
			{
				id= "Atlas";
				name= FF_NameAtlas;
				subtext= "Atlas";
				tooltip = FF_DescAtlas;
				icon = "Interface\\AddOns\\!!iCenter\\Icon\\AtlasIcon";
				callback= function(button)
					if not IsAddOnLoaded("Atlas") then
						LoadAddOn("Atlas");
					end
					if button == "LeftButton" then
						Atlas_Toggle();
					elseif button == "RightButton" then
						LibStub("AceAddon-3.0"):GetAddon("Atlas"):OpenOptions();
					end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "AtlasLootClassic");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameAtlasLoot	= "副本掉落物品查询";
		FF_DescAtlasLoot	= "显示副本中的首领与小怪可能掉落的物品";
	elseif GetLocale() == "zhTW" then
		FF_NameAtlasLoot	= "首領掉落物品查詢";
		FF_DescAtlasLoot	= "顯示首領與小怪可能掉落的物品，並可查詢各陣營與戰場的獎勵物品、套裝物品等";
	else
		FF_NameAtlasLoot	= "AtlasLoot";
		FF_DescAtlasLoot	= "Shows the possible loot from the bosses";
	end 
	if(EarthFeature_AddButton) then
		EarthFeature_AddButton(
			{
				id= "AtlasLoot";
				name= FF_NameAtlasLoot;
				subtext= "AtlasLoot Enhanced";
				tooltip = FF_DescAtlasLoot;
				icon = "Interface\\Icons\\INV_Box_01";
				callback= function(button)
					if not IsAddOnLoaded("AtlasLootClassic") then
						LoadAddOn("AtlasLootClassic");
					end
					if button == "LeftButton" then
						AtlasLoot.SlashCommands:Run("");
					elseif button == "RightButton" then
						AtlasLoot.SlashCommands:Run("options");
					end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "BankItems");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameBankItems	= "离线银行";
		FF_DescBankItems	= "让你可以随时浏览本ID所有服务器所有人物的装备以及背包、邮件和银行中的物品";
		FF_NameGuildBank	= "公会银行";
		FF_DescGuildBank	= "让你可以随时浏览本角色所在公会的公会银行中的物品";
	elseif GetLocale() == "zhTW" then
		FF_NameBankItems	= "離線銀行";
		FF_DescBankItems	= "讓你可以隨時瀏覽本ID所有伺服器所有人物的裝備以及背包、信箱和銀行中的物品";
		FF_NameGuildBank	= "公會銀行";
		FF_DescGuildBank	= "讓你可以隨時瀏覽本角色所在公會的公會銀行中的物品";
	else
		FF_NameBankItems	= "BankItems";
		FF_DescBankItems	= "View bank/inventory/mail contents from anywhere!";
		FF_NameGuildBank	= "GuildBank";
		FF_DescGuildBank	= "View Guild Bank contents from anywhere!";
	end
	if EarthFeature_AddButton then
		EarthFeature_AddButton(
			{
				id = "BankItems";
				name = FF_NameBankItems;
				subtext = "BankItems";
				tooltip = FF_DescBankItems;
				icon = "Interface\\Buttons\\Button-Backpack-Up";
				callback= function(button)
					if not IsAddOnLoaded("BankItems") then
						LoadAddOn("BankItems");
					end
					BankItems_SlashHandler();
				end;
			}
		)
		EarthFeature_AddButton(
			{
				id = "GuildBank";
				name = FF_NameGuildBank;
				subtext = "GuildBank";
				tooltip = FF_DescGuildBank;
				icon = "Interface\\Icons\\Inv_Misc_Coin_02";
				callback= function(button)
					if not IsAddOnLoaded("BankItems") then
						LoadAddOn("BankItems");
					end
					BankItems_GBSlashHandler();
				end;
			}
		)
	end
end

local enabled = GetAddOnEnableState(playerName, "BaudBag");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameBaudBag	= "背包设定";
		FF_DescBaudBag	= "设定背包整合的各种参数";
	elseif GetLocale() == "zhTW" then
		FF_NameBaudBag	= "背包設定";
		FF_DescBaudBag	= "設定背包整合的各種參數";
	else
		FF_NameBaudBag	= "BaudBag Options";
		FF_DescBaudBag	= "BaudBag Options";
	end
	if (EarthFeature_AddButton) then
		EarthFeature_AddButton(
			{
				id = "BaudBag";
				name = FF_NameBaudBag;
				subtext = "BaudBag";
				tooltip = FF_DescBaudBag;
				icon = "Interface\\Icons\\INV_Misc_Bag_08";
				callback= function(button)
					if not IsAddOnLoaded("BaudBag") then
						LoadAddOn("BaudBag");
					end
					InterfaceOptionsFrame_OpenToCategory("Baud Bag");
					InterfaceOptionsFrame_OpenToCategory("Baud Bag");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Combuctor");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameCombuctor	= "背包设定Combuctor";
		FF_DescCombuctor	= "设定背包整合的各种参数";
	elseif GetLocale() == "zhTW" then
		FF_NameCombuctor	= "背包設定Combuctor";
		FF_DescCombuctor	= "設定背包整合的各種參數";
	else
		FF_NameCombuctor	= "Combuctor Options";
		FF_DescCombuctor	= "Combuctor Options";
	end
	if (EarthFeature_AddButton) then
		EarthFeature_AddButton(
			{
				id = "Combuctor";
				name = FF_NameCombuctor;
				subtext = "Combuctor";
				tooltip = FF_DescCombuctor;
				icon = "Interface\\Icons\\INV_Misc_Bag_08";
				callback= function(button)
					if not IsAddOnLoaded("Combuctor_Config") then
						LoadAddOn("Combuctor_Config");
					end
					InterfaceOptionsFrame_OpenToCategory("Combuctor");
					InterfaceOptionsFrame_OpenToCategory("Combuctor");
				end;
			}
		);
	end
end

-- local enabled = GetAddOnEnableState(playerName, "Inventorian");
-- if enabled > 0 then
-- 	if GetLocale() == "zhCN" then
-- 		FF_NameInventorian	= "背包设定Inventorian";
-- 		FF_DescInventorian	= "设定背包整合的各种参数";
-- 	elseif GetLocale() == "zhTW" then
-- 		FF_NameInventorian	= "背包設定Inventorian";
-- 		FF_DescInventorian	= "設定背包整合的各種參數";
-- 	else
-- 		FF_NameInventorian	= "Inventorian Options";
-- 		FF_DescInventorian	= "Inventorian Options";
-- 	end
-- 	if (EarthFeature_AddButton) then
-- 		EarthFeature_AddButton(
-- 			{
-- 				id = "Inventorian";
-- 				name = FF_NameInventorian;
-- 				subtext = "Inventorian";
-- 				tooltip = FF_DescInventorian;
-- 				icon = "Interface\\Icons\\INV_Misc_Bag_08";
-- 				callback= function(button)
-- 					if not IsAddOnLoaded("Inventorian") then
-- 						LoadAddOn("Inventorian");
-- 					end
-- 					InterfaceOptionsFrame_OpenToCategory("Inventorian");
-- 					InterfaceOptionsFrame_OpenToCategory("Inventorian");
-- 				end;
-- 			}
-- 		);
-- 	end
-- end

local enabled = GetAddOnEnableState(playerName, "EquippedItemLevelTooltip");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameEAILT	= "装备等级与天赋";
		FF_DescEAILT	= "在鼠标提示信息里显示目标玩家的平均装备等级与天赋。";
	elseif GetLocale() == "zhTW" then
		FF_NameEAILT	= "裝備等級與天賦";
		FF_DescEAILT	= "在滑鼠提示資訊裡顯示目標玩家的平均裝備等級與天賦。";
	else
		FF_NameEAILT	= "EquippedItemLevelTooltip";
		FF_DescEAILT	= "Adds the equipped average item level of people to your tooltip.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "EAILT";
				name= FF_NameEAILT;
				subtext= "EquippedItemLevelTooltip";
				tooltip = FF_DescEAILT;
				icon= "Interface\\Icons\\Spell_Holy_Crusade";
				callback= function(button)
					if not IsAddOnLoaded("EquippedItemLevelTooltip") then
						LoadAddOn("EquippedItemLevelTooltip");
					end
					LibStub("AceAddon-3.0"):GetAddon("EquippedItemLevelTooltip"):ShowGUI();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ClassTimer");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameClassTimer	= "职业技能计时器";
		FF_DescClassTimer	= "显示你的所有技能的计时，并可以增加饰品，武器特效显示。";
	elseif GetLocale() == "zhTW" then
		FF_NameClassTimer	= "職業技能計時計";
		FF_DescClassTimer	= "顯示你的所有技能的計時，並可以增加飾品，武器特效顯示。";
	else
		FF_NameClassTimer	= "ClassTimer";
		FF_DescClassTimer	= "Timers for Buffs, DOTs, CC effects, etc..";
	end

	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ClassTimer";
				name= FF_NameClassTimer;
				subtext= "ClassTimer";
				tooltip = FF_DescClassTimer;
				icon= "Interface\\Icons\\INV_Misc_Idol_05";
				callback= function(button)
					if not IsAddOnLoaded("ClassTimer") then
						LoadAddOn("ClassTimer");
					end
					LibStub("AceConfigDialog-3.0"):Open("ClassTimer");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "NugRunning");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameNugRunning	= "法术计时条";
		FF_DescNugRunning	= "以计时条显示法术的持续时间，支援多目标和姓名板。";
	elseif GetLocale() == "zhTW" then
		FF_NameNugRunning	= "法術計時條";
		FF_DescNugRunning	= "以計時條顯示法術的持續時間，支援多目標和姓名板。";
	else
		FF_NameNugRunning	= "NugRunning";
		FF_DescNugRunning	= "Spelltimers.";
	end

	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "NugRunning";
				name= FF_NameNugRunning;
				subtext= "NugRunning";
				tooltip = FF_DescNugRunning;
				icon= "Interface\\Icons\\Spell_Shadow_Curseofsargeras";
				callback= function(button)
					if not IsAddOnLoaded("NugRunningOptions") then
						LoadAddOn("NugRunningOptions");
					end
					InterfaceOptionsFrame_OpenToCategory("NugRunning");
					InterfaceOptionsFrame_OpenToCategory("NugRunning");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ClassicCastbars");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameClassicCastbars	= "目标施法条";
		FF_DescClassicCastbars	= "在目标和目标姓名板显示施法条。";
	elseif GetLocale() == "zhTW" then
		FF_NameClassicCastbars	= "目標施法條";
		FF_DescClassicCastbars	= "在目標和目標姓名板顯示施法條。";
	else
		FF_NameClassicCastbars	= "ClassicCastbars";
		FF_DescClassicCastbars	= "Adds castbars to the Target frame and Nameplates.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ClassicCastbars";
				name= FF_NameClassicCastbars;
				subtext= "ClassicCastbars";
				tooltip = FF_DescClassicCastbars;
				icon= "Interface\\Icons\\Spell_Arcane_Starfire";
				callback= function(button)
					if not IsAddOnLoaded("ClassicCastbars") then
						LoadAddOn("ClassicCastbars");
					end
					InterfaceOptionsFrame_OpenToCategory("ClassicCastbars");
					InterfaceOptionsFrame_OpenToCategory("ClassicCastbars");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Quartz");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameQuartz	= "模块化施法条";
		FF_DescQuartz	= "美化并模块化施法条";
	elseif GetLocale() == "zhTW" then
		FF_NameQuartz	= "模組化施法條";
		FF_DescQuartz	= "美化並模組化施法條";
	else
		FF_NameQuartz	= "Quartz";
		FF_DescQuartz	= "Modular casting bar";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Quartz";
				name= FF_NameQuartz;
				subtext= "Quartz";
				tooltip = FF_DescQuartz;
				icon= "Interface\\Icons\\Spell_Fire_Flamebolt";
				-- icon= "Interface\\Icons\\Spell_Nature_ElementalAbsorption";
				callback= function(button)
					if not IsAddOnLoaded("Quartz") then
						LoadAddOn("Quartz");
					end
					InterfaceOptionsFrame_OpenToCategory("Quartz 3");
					InterfaceOptionsFrame_OpenToCategory("Quartz 3");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "NeatPlates");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameNeatPlates	= "姓名版增强";
		FF_DescNeatPlates	= "为姓名版提供多种内容显示";
	elseif GetLocale() == "zhTW" then
		FF_NameNeatPlates	= "姓名版增強";
		FF_DescNeatPlates	= "為姓名版提供多種內容顯示";
	else
		FF_NameNeatPlates	= "NeatPlates";
		FF_DescNeatPlates	= "Enjoys long walks on Darkshore";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "NeatPlates";
				name= FF_NameNeatPlates;
				subtext= "NeatPlates";
				tooltip = FF_DescNeatPlates;
				icon= "Interface\\Icons\\Achievement_GuildPerk_EverybodysFriend";
				callback= function(button)
					if not IsAddOnLoaded("NeatPlates") then
						LoadAddOn("NeatPlates");
					end
					InterfaceOptionsFrame_OpenToCategory("NeatPlates");
					InterfaceOptionsFrame_OpenToCategory("NeatPlates");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "zBar3");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NamezBar	= "炽火动作条";
		FF_DesczBar	= "提供两个可以自由移动、变换形状的扩展动作条";
	elseif GetLocale() == "zhTW" then
		FF_NamezBar	= "熾火動作條";
		FF_DesczBar	= "提供兩個可以自由移動、變換形狀的擴展動作條";
	else
		FF_NamezBar	= "zBar3";
		FF_DesczBar	= "ZeroFire's ActionBar Mod.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "zBar3";
				name= FF_NamezBar;
				subtext= "zBar3";
				tooltip = FF_DesczBar;
				icon= "Interface\\Icons\\Spell_Holy_SummonLightwell";
				callback= function(button)
					if not IsAddOnLoaded("zBar3") then
						LoadAddOn("zBar3");
					end
					zBar3:Config(zExBar1);
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "OmniCC");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameOmniCC	= "冷却计时";
		FF_DescOmniCC	= "显示物品和技能的冷却倒计时";
	elseif GetLocale() == "zhTW" then
		FF_NameOmniCC	= "冷卻計時";
		FF_DescOmniCC	= "顯示物品和技能的冷卻倒計時";
	else
		FF_NameOmniCC	= "OmniCC";
		FF_DescOmniCC	= "Cooldown count for everything";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "OmniCC";
				name= FF_NameOmniCC;
				subtext= "OmniCC";
				tooltip = FF_DescOmniCC;
				icon= "Interface\\Icons\\Ability_Creature_Cursed_01";
				callback= function(button)
					if not IsAddOnLoaded("OmniCC_Config") then
						LoadAddOn("OmniCC_Config");
					end
					InterfaceOptionsFrame_OpenToCategory("OmniCC");
					InterfaceOptionsFrame_OpenToCategory("OmniCC");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "CritSound");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameCritSound	= "爆击音效";
		FF_DescCritSound	= "当你的近战、远程攻击以及伤害、治疗技能等爆击时播放预设音效";
	elseif GetLocale() == "zhTW" then
		FF_NameCritSound	= "爆擊音效";
		FF_DescCritSound	= "當你的近戰、遠端攻擊以及傷害、治療技能等爆擊時播放預設音效";
	else
		FF_NameCritSound	= "CritSound";
		FF_DescCritSound	= "Plays a sound when you perform a critical hit or healing";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "CritSound";
				name= FF_NameCritSound;
				subtext= "CritSound";
				tooltip = FF_DescCritSound;
				-- icon= "Interface\\Icons\\Warrior_talent_icon_FuryInTheBlood";
				icon= "Interface\\Icons\\Ability_Creature_Cursed_03";
				callback= function(button)
					if not IsAddOnLoaded("CritSound") then
						LoadAddOn("CritSound");
					end
					CritSound_SlashHandler();
					CritSound_SlashHandler();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "DCT");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameDCT	= "战斗指示器";
		FF_DescDCT	= "显示你战斗中受到的各种信息及法术预警";
	elseif GetLocale() == "zhTW" then
		FF_NameDCT	= "戰鬥指示器";
		FF_DescDCT	= "顯示你戰鬥中受到的各種資訊及法術預警";
	else
		FF_NameDCT	= "DCT";
		FF_DescDCT	= "New Scrolling Combat Text";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "DCT";
				name= FF_NameDCT;
				subtext= "Dennis's Combat Text";
				tooltip = FF_DescDCT;
				icon= "Interface\\Icons\\Ability_Gouge";
				callback= function(button)
					if not IsAddOnLoaded("DCT") then
						LoadAddOn("DCT");
					end
					DCT_showMenu();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "DamageEx");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameDamageEx	= "增强伤害显示器";
		FF_DescDamageEx	= "显示你对敌人的伤害，对目标的治疗量，并可显示技能名字";
	elseif GetLocale() == "zhTW" then
		FF_NameDamageEx	= "增強傷害顯示器";
		FF_DescDamageEx	= "顯示你對敵人的傷害，對目標的治療量，並可顯示技能名字";
	else
		FF_NameDamageEx	= "DamageEx";
		FF_DescDamageEx	= "New Scrolling Combat Text of Damage";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "DamageEx";
				name= FF_NameDamageEx;
				subtext= "DamageEx";
				tooltip = FF_DescDamageEx;
				icon= "Interface\\Icons\\Ability_DualWield";
				callback= function(button)
					if not IsAddOnLoaded("DamageEx") then
						LoadAddOn("DamageEx");
					end
					DEX_showMenu();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "DBM-Core");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameDBM	= "DBM";
		FF_DescDBM	= "Deadly Boss Mods";
	elseif GetLocale() == "zhTW" then
		FF_NameDBM	= "DBM";
		FF_DescDBM	= "Deadly Boss Mods";
	else
		FF_NameDBM	= "DBM";
		FF_DescDBM	= "Deadly Boss Mods";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "DBM";
				name= FF_NameDBM;
				subtext= "Deadly Boss Mods";
				tooltip = FF_DescDBM;
				icon= "Interface\\AddOns\\DBM-Core\\textures\\dbm_airhorn";
				callback= function(button)
					if not IsAddOnLoaded("DBM-Core") then
						LoadAddOn("DBM-Core");
					end
					DBM:LoadGUI();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Decursive");
if enabled > 0 and (class == "MAGE" or class == "PRIEST" or class == "DRUID" or class == "PALADIN" or class == "SHAMAN") then
	if GetLocale() == "zhCN" then
		FF_NameDecursive	= "一键驱散";
		FF_DescDecursive	= "提供显示和清除负面效果的功能，并提供相应的高级过滤和优先级系统";
	elseif GetLocale() == "zhTW" then
		FF_NameDecursive	= "一鍵驅散";
		FF_DescDecursive	= "提供驅魔輔助功能，包含進階的顯示及過濾功能";
	else
		FF_NameDecursive	= "Decursive";
		FF_DescDecursive	= "Affliction display and cleaning for solo, group and raids with advanced filtering and priority system.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Decursive";
				name= FF_NameDecursive;
				subtext= "Decursive";
				tooltip = FF_DescDecursive;
				icon= "Interface\\AddOns\\Decursive\\iconON";
				callback= function(button)
					if not IsAddOnLoaded("Decursive") then
						LoadAddOn("Decursive");
					end
					LibStub("AceConfigDialog-3.0"):Open("Decursive");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "RangeDisplay");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameRangeDisplay	= "目标距离";
		FF_DescRangeDisplay	= "监视目标距离";
	elseif GetLocale() == "zhTW" then
		FF_NameRangeDisplay	= "目標距離";
		FF_DescRangeDisplay	= "監視目標距離";
	else
		FF_NameRangeDisplay	= "Range Display";
		FF_DescRangeDisplay	= "Estimated range display";
	end 
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "RangeDisplay";
				name= FF_NameRangeDisplay;
				subtext= "RangeDisplay";
				tooltip = FF_DescRangeDisplay;
				icon= "Interface\\Icons\\Spell_Shadow_Charm";
				callback= function(button)
					if not IsAddOnLoaded("RangeDisplay") then
						LoadAddOn("RangeDisplay");
					end
					RangeDisplay:openConfigDialog(ud);
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Gladius");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameGladius	= "竞技场敌方信息";
		FF_DescGladius	= "简单的竞技场敌方目标框架";
	elseif GetLocale() == "zhTW" then
		FF_NameGladius	= "競技場敵方資訊";
		FF_DescGladius	= "簡單的競技場敵方目標框架";
	else
		FF_NameGladius	= "Gladius";
		FF_DescGladius	= "Arena enemy unit frames";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Gladius";
				name= FF_NameGladius;
				subtext= "Gladius";
				tooltip = FF_DescGladius;
				icon= "Interface\\Icons\\INV_Misc_Bone_HumanSkull_02";
				callback= function(button)
					if not IsAddOnLoaded("Gladius") then
						LoadAddOn("Gladius")
					end
					AceDialog = AceDialog or LibStub("AceConfigDialog-3.0")
					AceRegistry = AceRegistry or LibStub("AceConfigRegistry-3.0")
					if (not Gladius.options) then
						Gladius:SetupOptions();
						AceDialog:SetDefaultSize("Gladius", 830, 530);
					end
					AceDialog:Open("Gladius");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "EventAlertMod");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameEAM	= "特效触发提示";
		FF_DescEAM	= "特效触发醒目提示";
	elseif GetLocale() == "zhTW" then
		FF_NameEAM	= "特效觸發提示";
		FF_DescEAM	= "特效觸發醒目提示";
	else
		FF_NameEAM	= "EventAlertMod";
		FF_DescEAM	= "Simple warnings for event procs";
	end

	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "EventAlertMod";
				name= FF_NameEAM;
				subtext= "EventAlertMod";
				tooltip = FF_DescEAM;
				icon= "Interface\\Icons\\Spell_Holy_Excorcism";
				callback= function(button)
					if not IsAddOnLoaded("EventAlertMod") then
						LoadAddOn("EventAlertMod");
					end
					if not EA_Options_Frame:IsVisible() then
						ShowUIPanel(EA_Options_Frame);
					else
						HideUIPanel(EA_Options_Frame);
					end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "EasyTrinket");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameEasyTrinket	= "饰品管理器";
		FF_DescEasyTrinket	= "饰品管理器";
	elseif GetLocale() == "zhTW" then
		FF_NameEasyTrinket	= "飾品管理器";
		FF_DescEasyTrinket	= "飾品管理器";
	else
		FF_NameEasyTrinket	= "EasyTrinket";
		FF_DescEasyTrinket	= "EasyTrinket";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "EasyTrinket";
				name= FF_NameEasyTrinket;
				subtext= "EasyTrinket";
				tooltip = FF_DescEasyTrinket;
				icon= "Interface\\Icons\\Inv_Stone_15";
				callback= function(button)
					if not IsAddOnLoaded("EasyTrinket") then
						LoadAddOn("EasyTrinket");
					end
					EasyTrinket:ShowOption();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "TrinketMenu");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameTrinketMenu	= "饰品管理器";
		FF_DescTrinketMenu	= "饰品管理器";
	elseif GetLocale() == "zhTW" then
		FF_NameTrinketMenu	= "飾品管理器";
		FF_DescTrinketMenu	= "飾品管理器";
	else
		FF_NameTrinketMenu	= "TrinketMenu";
		FF_DescTrinketMenu	= "TrinketMenu";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "TrinketMenu";
				name= FF_NameTrinketMenu;
				subtext= "TrinketMenu";
				tooltip = FF_DescTrinketMenu;
				icon= "Interface\\Icons\\Inv_Stone_15";
				callback= function(button)
					if not IsAddOnLoaded("TrinketMenu") then
						LoadAddOn("TrinketMenu");
					end
					TrinketMenu.ToggleFrame(TrinketMenu_OptFrame);
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "zTip");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NamezTip	= "鼠标提示增强";
		FF_DesczTip	= "鼠标提示信息增强";
	elseif GetLocale() == "zhTW" then
		FF_NamezTip	= "滑鼠提示增強";
		FF_DesczTip	= "滑鼠提示資訊增強";
	else
		FF_NamezTip	= "zTip";
		FF_DesczTip	= "Enhance GameTooltip";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "zTip";
				name= FF_NamezTip;
				subtext= "zTip";
				tooltip = FF_DesczTip;
				icon= "Interface\\Icons\\Ability_Spy";
				callback= function(button)
					if not IsAddOnLoaded("zTip") then
						LoadAddOn("zTip");
					end
					collectgarbage("collect")
					UpdateAddOnMemoryUsage();
					if not zTipOption then return end
					if not zTipOption.ready then zTipOption:Init() end
					if not zTipOption:IsShown() then zTipOption:Show() end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "TinyTip");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameTinyTip	= "鼠标提示增强";
		FF_DescTinyTip	= "鼠标提示信息增强";
	elseif GetLocale() == "zhTW" then
		FF_NameTinyTip	= "滑鼠提示增強";
		FF_DescTinyTip	= "滑鼠提示資訊增強";
	else
		FF_NameTinyTip	= "TinyTip";
		FF_DescTinyTip	= "Enhance GameTooltip";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "TinyTip";
				name= FF_NameTinyTip;
				subtext= "TinyTip";
				tooltip = FF_DescTinyTip;
				icon= "Interface\\Icons\\Ability_Shootwand";
				callback= function(button)
					if not IsAddOnLoaded("TinyTipOptions") then
						LoadAddOn("TinyTipOptions");
					end
					collectgarbage("collect");
					UpdateAddOnMemoryUsage();
					InterfaceOptionsFrame_OpenToCategory("TinyTip");
					InterfaceOptionsFrame_OpenToCategory("TinyTip");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "TinyTooltip");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameTinyTooltip	= "鼠标提示增强";
		FF_DescTinyTooltip	= "鼠标提示信息增强";
	elseif GetLocale() == "zhTW" then
		FF_NameTinyTooltip	= "滑鼠提示增強";
		FF_DescTinyTooltip	= "滑鼠提示資訊增強";
	else
		FF_NameTinyTooltip	= "TinyTooltip";
		FF_DescTinyTooltip	= "Enhance GameTooltip";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "TinyTooltip";
				name= FF_NameTinyTooltip;
				subtext= "TinyTooltip";
				tooltip = FF_DescTinyTooltip;
				icon= "Interface\\Icons\\Ability_Shootwand";
				callback= function(button)
					if not IsAddOnLoaded("TinyTooltip") then
						LoadAddOn("TinyTooltip");
					end
					InterfaceOptionsFrame_OpenToCategory("TinyTooltip");
					InterfaceOptionsFrame_OpenToCategory("TinyTooltip");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "SimpleRaidTargetIcons");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameSRTI	= "标记助手";
		FF_DescSRTI	= "Shift、Ctrl（默认）或Alt+鼠标左键单击,或双击鼠标左键快速标记目标";
	elseif GetLocale() == "zhTW" then
		FF_NameSRTI	= "標記助手";
		FF_DescSRTI	= "Shift、Ctrl（預設）或Alt+滑鼠左鍵按一下,或按兩下滑鼠左鍵快速標記目標";
	else
		FF_NameSRTI	= "SRTI";
		FF_DescSRTI	= "Displays a widget on ctrl + left click or double click on a unit to let a player assign Raid Target Icons.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "SRTI";
				name= FF_NameSRTI;
				subtext= "Simple Raid Target Icons";
				tooltip = FF_DescSRTI;
				icon= "Interface\\Icons\\Spell_Shadow_Fingerofdeath";
				callback= function(button)
					if not IsAddOnLoaded("SimpleRaidTargetIcons") then
						LoadAddOn("SimpleRaidTargetIcons");
					end
					InterfaceOptionsFrame_OpenToCategory(SRTI.menu);
					InterfaceOptionsFrame_OpenToCategory(SRTI.menu);
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ImprovedLootFrame");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameILF	= "拾取增强";
		FF_DescILF	= "单页拾取，掉落通报";
	elseif GetLocale() == "zhTW" then
		FF_NameILF	= "拾取增强";
		FF_DescILF	= "单页拾取，掉落通报";
	else
		FF_NameILF	= "ImprovedLootFrame";
		FF_DescILF	= "Expands the loot frame to fit all items onto one page and show loot announce button.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ILF";
				name= FF_NameILF;
				subtext= "Improved Loot Frame";
				tooltip = FF_DescILF;
				icon= "Interface\\Icons\\Racial_Dwarf_FindTreasure";
				callback= function(button)
					if not IsAddOnLoaded("ImprovedLootFrame") then
						LoadAddOn("ImprovedLootFrame");
					end
					InterfaceOptionsFrame_OpenToCategory("ImprovedLootFrame");
					InterfaceOptionsFrame_OpenToCategory("ImprovedLootFrame");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ReforgeLite");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameReforgeLite	= "重铸助手";
		FF_DescReforgeLite	= "为每个职业和天赋预制了一套属性权重，也可以手动输入自己的权重。";
	elseif GetLocale() == "zhTW" then
		FF_NameReforgeLite	= "重鑄助手";
		FF_DescReforgeLite	= "為每個職業和天賦預製了一套屬性權重，也可以手動輸入自己的權重。";
	else
		FF_NameReforgeLite	= "ReforgeLite";
		FF_DescReforgeLite	= "Calculates optimal reforging for given weights/caps.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ReforgeLite";
				name= FF_NameReforgeLite;
				subtext= "ReforgeLite";
				tooltip = FF_DescReforgeLite;
				icon= "Interface\\Icons\\Warrior_talent_icon_SingleMindedFury";
				callback= function(button)
					if not IsAddOnLoaded("ReforgeLite") then
						LoadAddOn("ReforgeLite");
					end
					ReforgeLite:OnCommand();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "FishingBuddy");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameFishingBuddy	= "钓鱼助手";
		FF_DescFishingBuddy	= "钓鱼相关工作助手 -- 装备，鱼类资讯及其它。";
	elseif GetLocale() == "zhTW" then
		FF_NameFishingBuddy	= "釣魚助手";
		FF_DescFishingBuddy	= "釣魚相關工作助手 -- 裝備，魚類資訊及其它。";
	else
		FF_NameFishingBuddy	= "Fishing Buddy";
		FF_DescFishingBuddy	= "Help with fishing related tasks -- clothing, fish information, etc.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "FishingBuddy";
				name= FF_NameFishingBuddy;
				subtext= "FishingBuddy";
				tooltip = FF_DescFishingBuddy;
				icon= "Interface\\Icons\\Trade_Fishing";
				callback= function(button)
					if not IsAddOnLoaded("FishingBuddy") then
						LoadAddOn("FishingBuddy");
					end
					if ( FishingBuddyFrame:IsVisible() ) then
						HideUIPanel(FishingBuddyFrame);
					else
						ShowUIPanel(FishingBuddyFrame);
					end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "_NPCScan");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameNPCScan	= "稀有精英探测";
		FF_DescNPCScan	= "搜索附近的NPC寻找稀有怪";
	elseif GetLocale() == "zhTW" then
		FF_NameNPCScan	= "稀有精英探測";
		FF_DescNPCScan	= "搜尋出沒在你附近的稀有怪";
	else
		FF_NameNPCScan	= "NPCScan";
		FF_DescNPCScan	= "Scans NPCs around you for rare ones.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "NPCScan";
				name= FF_NameNPCScan;
				subtext= "NPCScan";
				tooltip = FF_DescNPCScan;
				icon= "Interface\\Icons\\Spell_Misc_EmotionHappy";
				callback= function(button)
					if not IsAddOnLoaded("_NPCScan") then
						LoadAddOn("_NPCScan");
					end
					InterfaceOptionsFrame_OpenToCategory("_|cffCCCC88NPCScan|r");
					InterfaceOptionsFrame_OpenToCategory("_|cffCCCC88NPCScan|r");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "QuestPlus");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameQuestPlus	= "系统任务增强";
		FF_DescQuestPlus	= "任务通报,显示任务等级,自动追踪任务并允许移动任务追踪列表";
	elseif GetLocale() == "zhTW" then
		FF_NameQuestPlus	= "系統任務增強";
		FF_DescQuestPlus	= "任務通報,顯示任務等級,自動追蹤任務並允許移動任務追蹤列表";
	else
		FF_NameQuestPlus	= "QuestPlus";
		FF_DescQuestPlus	= "Quest Announce, shows the quest level, quest auto track and move the Quest Tracker!";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "QuestPlus";
				name= FF_NameQuestPlus;
				subtext= "QuestPlus";
				tooltip = FF_DescQuestPlus;
				icon= "Interface\\Icons\\Inv_Letter_17";
				callback= function(button)
					if not IsAddOnLoaded("QuestPlus") then
						LoadAddOn("QuestPlus");
					end
					QuestPlus_SlashHandler();
					QuestPlus_SlashHandler();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Questie");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameQuestie	= "任务助手";
		FF_DescQuestie	= "全能型任务数据库Questie";
	elseif GetLocale() == "zhTW" then
		FF_NameQuestie	= "任務助手";
		FF_DescQuestie	= "全能型任務資料庫Questie";
	else
		FF_NameQuestie	= "Questie";
		FF_DescQuestie	= "A standalone Classic QuestHelper";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Questie";
				name= FF_NameQuestie;
				subtext= "Questie";
				tooltip = FF_DescQuestie;
				icon= "Interface\\Icons\\Ability_Hunter_Snipershot";
				callback= function(button)
					if not IsAddOnLoaded("Questie") then
						LoadAddOn("Questie");
					end
					InterfaceOptionsFrame_OpenToCategory("Questie");
					InterfaceOptionsFrame_OpenToCategory("Questie");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ClassicCodex");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameClassicCodex	= "任务助手 ";
		FF_DescClassicCodex	= "全能型任务数据库ClassicCodex";
	elseif GetLocale() == "zhTW" then
		FF_NameClassicCodex	= "任務助手 ";
		FF_DescClassicCodex	= "全能型任務資料庫ClassicCodex";
	else
		FF_NameClassicCodex	= "ClassicCodex";
		FF_DescClassicCodex	= "The Ultimate Questing Addon";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ClassicCodex";
				name= FF_NameClassicCodex;
				subtext= "ClassicCodex";
				tooltip = FF_DescClassicCodex;
				icon= "Interface\\Icons\\Ability_Hunter_Snipershot";
				callback= function(button)
					if not IsAddOnLoaded("ClassicCodex") then
						LoadAddOn("ClassicCodex");
					end
					InterfaceOptionsFrame_OpenToCategory("ClassicCodex");
					InterfaceOptionsFrame_OpenToCategory("ClassicCodex");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "GatherMate2");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameGatherMate	= "采集助手";
		FF_DescGatherMate	= "收集花草、矿物、气云(工程)、鱼群的位置并将其标注在地图上";
	elseif GetLocale() == "zhTW" then
		FF_NameGatherMate	= "採集助手";
		FF_DescGatherMate	= "收集花草、礦物、氣雲(工程)、魚群的位置並將其標注在地圖上";
	else
		FF_NameGatherMate	= "GatherMate2";
		FF_DescGatherMate	= "Collects Herbs, Mines, Gas Clouds and Fishing locations and adds them to the worldmap and minimap";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "GatherMate";
				name= FF_NameGatherMate;
				subtext= "GatherMate";
				tooltip = FF_DescGatherMate;
				icon= "Interface\\AddOns\\GatherMate2\\Artwork\\Fish\\sporefish";
				callback= function(button)
					if not IsAddOnLoaded("GatherMate2") then
						LoadAddOn("GatherMate2");
					end
					InterfaceOptionsFrame_OpenToCategory("GatherMate 2");
					InterfaceOptionsFrame_OpenToCategory("GatherMate 2");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Routes");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameRoutes	= "采集线路图";
		FF_DescRoutes	= "在已有采集相关数据的基础上形成采集路线，并可以优化路线，提高采集效率。";
	elseif GetLocale() == "zhTW" then
		FF_NameRoutes	= "採集線路圖";
		FF_DescRoutes	= "在已有採集相關資料的基礎上形成採集路線，並可以優化路線，提高採集效率。";
	else
		FF_NameRoutes	= "Routes";
		FF_DescRoutes	= "Routes on your worldmap and minimap!";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Routes";
				name= FF_NameRoutes;
				subtext= "Routes";
				tooltip = FF_DescRoutes;
				icon= "Interface\\Icons\\Spell_Nature_Web";
				callback= function(button)
					if not IsAddOnLoaded("Routes") then
						LoadAddOn("Routes");
					end
					LibStub("AceConfigDialog-3.0"):Open("Routes");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "RecipeRadarClassic");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameRecipeRadarClassic	= "配方雷达";
		FF_DescRecipeRadarClassic	= "位于售卖食谱在当前区域或者专业";
	elseif GetLocale() == "zhTW" then
		FF_NameRecipeRadarClassic	= "配方雷達";
		FF_DescRecipeRadarClassic	= "位於售賣食譜在當前區域或者專業";
	else
		FF_NameRecipeRadarClassic	= "RecipeRadarClassic";
		FF_DescRecipeRadarClassic	= "Locates vendors who sell recipes in the current region or by profession";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "RecipeRadarClassic";
				name= FF_NameRecipeRadarClassic;
				subtext= "RecipeRadarClassic";
				tooltip = FF_DescRecipeRadarClassic;
				icon= "Interface\\Icons\\INV_Fabric_Wool_03";
				callback= function(button)
					if not IsAddOnLoaded("RecipeRadarClassic") then
						LoadAddOn("RecipeRadarClassic");
					end
					if button == "LeftButton" then
						RecipeRadar_Toggle();
					elseif button == "RightButton" then
						InterfaceOptionsFrame_OpenToCategory("RecipeRadar");
						InterfaceOptionsFrame_OpenToCategory("RecipeRadar");
					end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "PhanxChat");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NamePhanxChat	= "聊天增强PhanxChat";
		FF_DescPhanxChat	= "增强聊天体验（复制网址、姓名上色、允许方向键等）";
	elseif GetLocale() == "zhTW" then
		FF_NamePhanxChat	= "聊天增強PhanxChat";
		FF_DescPhanxChat	= "增強聊天體驗（複製網址、姓名上色、允許方向鍵等）";
	else
		FF_NamePhanxChat	= "PhanxChat";
		FF_DescPhanxChat	= "Removes chat frame clutter and adds some functionality.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "PhanxChat";
				name= FF_NamePhanxChat;
				subtext= "PhanxChat";
				tooltip = FF_DescPhanxChat;
				icon= "Interface\\Icons\\Ui_Chat";
				callback= function(button)
					if not IsAddOnLoaded("PhanxChat") then
						LoadAddOn("PhanxChat");
					end
					InterfaceOptionsFrame_OpenToCategory("PhanxChat");
					InterfaceOptionsFrame_OpenToCategory("PhanxChat");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ChatPlus");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameChatPlus	= "聊天增强";
		FF_DescChatPlus	= "增强聊天体验（复制文字、姓名上色、允许方向键等）";
	elseif GetLocale() == "zhTW" then
		FF_NameChatPlus	= "聊天增強";
		FF_DescChatPlus	= "增強聊天體驗（複製文字、姓名上色、允許方向鍵等）";
	else
		FF_NameChatPlus	= "ChatPlus";
		FF_DescChatPlus	= "Removes chat frame clutter and adds some functionality.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ChatPlus";
				name= FF_NameChatPlus;
				subtext= "ChatPlus";
				tooltip = FF_DescChatPlus;
				icon= "Interface\\Icons\\Ui_Chat";
				callback= function(button)
					if not IsAddOnLoaded("ChatPlus") then
						LoadAddOn("ChatPlus");
					end
					ChatPlus_SlashHandler();
					ChatPlus_SlashHandler();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "BadBoy");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameBadBoy	= "垃圾信息过滤";
		FF_DescBadBoy	= "一个简单的垃圾信息过滤和自动举报的插件";
	elseif GetLocale() == "zhTW" then
		FF_NameBadBoy	= "垃圾訊息阻擋";
		FF_DescBadBoy	= "一個簡單的垃圾廣告訊息阻擋&舉報工具";
	else
		FF_NameBadBoy	= "BadBoy";
		FF_DescBadBoy	= "A simple spam blocker & reporter.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "BadBoy";
				name= FF_NameBadBoy;
				subtext= "BadBoy";
				tooltip = FF_DescBadBoy;
				icon= "Interface\\Icons\\Inv_Misc_Bomb_04";
				callback= function(button)
					if not IsAddOnLoaded("BadBoy") then
						LoadAddOn("BadBoy");
					end
					SlashCmdList["BADBOY"]("");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "EN_UnitFrames");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameEUF	= "头像增强";
		FF_DescEUF	= "增强显示头像，显示目标的目标的目标，并显示破甲值等信息，小队头像显示队员职业等级，并显示生命值及法力值";
	elseif GetLocale() == "zhTW" then
		FF_NameEUF	= "頭像增強";
		FF_DescEUF	= "增強顯示頭像，顯示目標的目標的目標，並顯示破甲值等資訊，小隊頭像顯示隊員職業等級，並顯示生命值及法力值";
	else
		FF_NameEUF	= "Enigma Unit Frames";
		FF_DescEUF	= "Enhanced Unit Frames including HP/MP values, class, race, level tag, and more ...";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "EUF";
				name= FF_NameEUF;
				subtext= "Enigma Unit Frames";
				tooltip = FF_DescEUF;
				icon= "Interface\\AddOns\\!!iCenter\\Icon\\UFP";
				callback= function(button)
					if not IsAddOnLoaded("EN_UnitFrames") then
						LoadAddOn("EN_UnitFrames");
					end
					InterfaceOptionsFrame_OpenToCategory("EN_UnitFrames");
					InterfaceOptionsFrame_OpenToCategory("EN_UnitFrames");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "UnitFramesPlus");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameUFP	= "系统头像增强";
		FF_DescUFP	= "扩展系统头像功能";
	elseif GetLocale() == "zhTW" then
		FF_NameUFP	= "系統頭像增強";
		FF_DescUFP	= "擴展系統頭像功能";
	else
		FF_NameUFP	= "UnitFramesPlus";
		FF_DescUFP	= "Enigma Unit Frames";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "UFP";
				name= FF_NameUFP;
				subtext= "UnitFramesPlus";
				tooltip = FF_DescUFP;
				icon= "Interface\\AddOns\\!!iCenter\\Icon\\UFP";
				callback= function(button)
					if not IsAddOnLoaded("UnitFramesPlus_Options") then
						LoadAddOn("UnitFramesPlus_Options");
					end
					UnitFramesPlus_SlashHandler();
					UnitFramesPlus_SlashHandler();
				end;
			}
		);
	end
end

if GetLocale() == "zhCN" then
	FF_NameAI	= "密语邀请";
	FF_DescAI	= "通过密语关键词邀请对方加入队伍";
elseif GetLocale() == "zhTW" then
	FF_NameAI	= "密語邀請";
	FF_DescAI	= "通過密語關鍵字邀請對方加入隊伍";
else
	FF_NameAI	= "AutoInvite";
	FF_DescAI	= "Automatically invite player through whisper keywords.";
end
if ( EarthFeature_AddButton ) then
	EarthFeature_AddButton(
		{
			id= "AI";
			name= FF_NameAI;
			subtext= "AutoInvite";
			tooltip = FF_DescAI;
			icon= "Interface\\Icons\\Spell_Nature_MassTeleport";
			callback= function(button)
				AISettings_SlashHandler();
			end;
		}
	);
end

local enabled = GetAddOnEnableState(playerName, "MeetingHorn");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameMH	= "集结号";
		FF_DescMH	= "怀旧服快捷组队";
	elseif GetLocale() == "zhTW" then
		FF_NameMH	= "集結號";
		FF_DescMH	= "懷舊服快捷組隊";
	else
		FF_NameMH	= "MeetingHorn";
		FF_DescMH	= "Classic quick LFG.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "MH";
				name= FF_NameMH;
				subtext= "MeetingHorn";
				tooltip = FF_DescMH;
				icon= "Interface\\Addons\\MeetingHorn\\Media\\Logo2";
				callback= function(button)
					if not IsAddOnLoaded("MeetingHorn") then
						LoadAddOn("MeetingHorn");
					end
					LibStub("AceAddon-3.0"):GetAddon("MeetingHorn"):Toggle();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "GoodLeader");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameGL	= "好团长";
		FF_DescGL	= "查看当前团长过往开团次数";
	elseif GetLocale() == "zhTW" then
		FF_NameGL	= "好團長";
		FF_DescGL	= "查看當前團長過往開團次數";
	else
		FF_NameGL	= "GoodLeader";
		FF_DescGL	= "Good Leader.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "GoodLeader";
				name= FF_NameGL;
				subtext= "GoodLeader";
				tooltip = FF_DescGL;
				icon= "Interface\\Addons\\GoodLeader\\Media\\Logo";
				callback= function(button)
					if not IsAddOnLoaded("GoodLeader") then
						LoadAddOn("GoodLeader");
					end
					LibStub("AceAddon-3.0"):GetAddon("GoodLeader"):Toggle();
				end;
			}
		);
	end
end

if GetLocale() == "zhCN" then
	FF_NameLHPP	= "低血量魔法视觉警报";
	FF_DescLHPP	= "低血量魔法视觉警报";
elseif GetLocale() == "zhTW" then
	FF_NameLHPP	= "低血量魔法視覺警報";
	FF_DescLHPP	= "低血量魔法視覺警報";
else
	FF_NameLHPP	= "LowHPPulser";
	FF_DescLHPP	= "Provides visual feedback when health and mana reach the defined percentages.";
end
if ( EarthFeature_AddButton ) then
	EarthFeature_AddButton(
		{
			id= "LHPP";
			name= FF_NameLHPP;
			subtext= "LowHPPulser";
			tooltip = FF_DescLHPP;
			icon= "Interface\\Icons\\Spell_Holy_DivineSpirit";
			callback= function(button)
					if not IsAddOnLoaded("LowHPPulser") then
						LoadAddOn("LowHPPulser");
					end
				InterfaceOptionsFrame_OpenToCategory("LowHPPulser");
				InterfaceOptionsFrame_OpenToCategory("LowHPPulser");
			end;
		}
	);
end

local enabled = GetAddOnEnableState(playerName, "Grid2");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameGrid	= "团队面板";
		FF_DescGrid	= "小巧的团队状态监视器";
	elseif GetLocale() == "zhTW" then
		FF_NameGrid	= "團隊面板";
		FF_DescGrid	= "小巧的團隊狀態監視器";
	else
		FF_NameGrid	= "Grid2";
		FF_DescGrid	= "A modular, lightweight and screen-estate saving grid of party/raid unit frames";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Grid";
				name= FF_NameGrid;
				subtext= "Grid";
				tooltip = FF_DescGrid;
				icon= "Interface\\AddOns\\Grid2\\media\\icon";
				callback= function(button)
					if not IsAddOnLoaded("Grid2Options") then
						LoadAddOn("Grid2Options");
					end
					Grid2:OnChatCommand();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ClassicThreatMeter");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameClassicThreatMeter	= "仇恨统计CTM";
		FF_DescClassicThreatMeter	= "一个灵活的，多目标的，低资源占用的威胁值计量器";
	elseif GetLocale() == "zhTW" then
		FF_NameClassicThreatMeter	= "仇恨統計CTM";
		FF_DescClassicThreatMeter	= "一個輕量級、有彈性、可監視多個目標的仇恨統計插件。";
	else
		FF_NameClassicThreatMeter	= "ClassicThreatMeter";
		FF_DescClassicThreatMeter	= "Simple threat meter for WoW Classic.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ClassicThreatMeter";
				name= FF_NameClassicThreatMeter;
				subtext= "ClassicThreatMeter";
				tooltip = FF_DescClassicThreatMeter;
				icon= "Interface\\Icons\\Ability_Cheapshot";
				callback= function(button)
					if not IsAddOnLoaded("ClassicThreatMeter") then
						LoadAddOn("ClassicThreatMeter");
					end
					ClassicThreatMeterVisibility();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "ThreatClassic2");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameThreatClassic2	= "仇恨统计TC2";
		FF_DescThreatClassic2	= "一个灵活的，多目标的，低资源占用的威胁值计量器";
	elseif GetLocale() == "zhTW" then
		FF_NameThreatClassic2	= "仇恨統計TC2";
		FF_DescThreatClassic2	= "一個輕量級、有彈性、可監視多個目標的仇恨統計插件。";
	else
		FF_NameThreatClassic2	= "ThreatClassic2";
		FF_DescThreatClassic2	= "Simple threat meter for WoW Classic.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ThreatClassic2";
				name= FF_NameThreatClassic2;
				subtext= "ThreatClassic2";
				tooltip = FF_DescThreatClassic2;
				icon= "Interface\\Icons\\Ability_Cheapshot";
				callback= function(button)
					if not IsAddOnLoaded("ThreatClassic2") then
						LoadAddOn("ThreatClassic2");
					end
					if button == "LeftButton" then
						SlashCmdList["TC2_SLASHCMD"]("toggle");
					elseif button == "RightButton" then
						SlashCmdList["TC2_SLASHCMD"]("");
					end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Omen");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameOmen	= "仇恨统计";
		FF_DescOmen	= "一个灵活的，多目标的，低资源占用的威胁值计量器";
	elseif GetLocale() == "zhTW" then
		FF_NameOmen	= "仇恨統計";
		FF_DescOmen	= "一個輕量級、有彈性、可監視多個目標的仇恨統計插件。";
	else
		FF_NameOmen	= "Omen3";
		FF_DescOmen	= "A lightweight, flexible, multi-target threat meter.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Omen3";
				name= FF_NameOmen;
				subtext= "Omen3";
				tooltip = FF_DescOmen;
				icon= "Interface\\AddOns\\Omen\\icon";
				callback= function(button)
					if not IsAddOnLoaded("Omen") then
						LoadAddOn("Omen");
					end
					Omen:Toggle();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Skada");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameSkada	= "伤害统计";
		FF_DescSkada	= "模块化的伤害统计。";
	elseif GetLocale() == "zhTW" then
		FF_NameSkada	= "傷害統計";
		FF_DescSkada	= "模組化的傷害統計。";
	else
		FF_NameSkada	= "Skada";
		FF_DescSkada	= "Modular damage meter.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Skada";
				name= FF_NameSkada;
				subtext= "Skada";
				tooltip = FF_DescSkada;
				icon= "Interface\\Icons\\Spell_Nature_Sentinal";
				callback= function(button)
					if not IsAddOnLoaded("Skada") then
						LoadAddOn("Skada");
					end
					if button == "LeftButton" then
						SlashCmdList["SKADA"]("toggle");
					elseif button == "RightButton" then
						SlashCmdList["SKADA"]("config");
					end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "Details");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameDetails	= "全能伤害统计";
		FF_DescDetails	= "全能伤害统计。";
	elseif GetLocale() == "zhTW" then
		FF_NameDetails	= "全能傷害統計";
		FF_DescDetails	= "全能傷害統計。";
	else
		FF_NameDetails	= "Details";
		FF_DescDetails	= "Essential tool to impress that chick in your raid.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Details";
				name= FF_NameDetails;
				subtext= "Details";
				tooltip = FF_DescDetails;
				icon= "Interface\\AddOns\\Details\\images\\minimap";
				callback= function(button)
					if not IsAddOnLoaded("Details") then
						LoadAddOn("Details");
					end
					if button == "LeftButton" then
						_detalhes:ToggleWindows();
					elseif button == "RightButton" then
						if _G.DetailsOptionsWindow:IsShown() then
							_G.DetailsOptionsWindow:Hide();
						else
							_detalhes:OpenOptionsWindow(Details:GetInstance(1));
						end
					end
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "oRA3");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameoRA	= "团队助手";
		FF_DescoRA	= "队伍和团队助手";
	elseif GetLocale() == "zhTW" then
		FF_NameoRA	= "團隊助手";
		FF_DescoRA	= "隊伍和團隊助手";
	else
		FF_NameoRA	= "oRA3";
		FF_DescoRA	= "Raid and Party Assist";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "oRA3";
				name= FF_NameoRA;
				subtext= "oRA3";
				tooltip = FF_DescoRA;
				icon= "Interface\\AddOns\\!!iCenter\\Icon\\oRA3";
				callback= function(button)
					if not IsAddOnLoaded("oRA3") then
						LoadAddOn("oRA3");
					end
					LibStub("AceConfigDialog-3.0"):Open("oRA");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "AdvancedInterfaceOptions");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameAIO	= "高级界面设置";
		FF_DescAIO	= "修改暴雪自带设置界面中没有的设置。";
	elseif GetLocale() == "zhTW" then
		FF_NameAIO	= "高級介面設置";
		FF_DescAIO	= "修改暴雪自帶設置介面中沒有的設置。";
	else
		FF_NameAIO	= "AIO";
		FF_DescAIO	= "Advanced Interface Options";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "AIO";
				name= FF_NameAIO;
				subtext= "AdvancedInterfaceOptions";
				tooltip = FF_DescAIO;
				icon= "Interface\\Icons\\Trade_Engraving";
				callback= function(button)
					if not IsAddOnLoaded("AdvancedInterfaceOptions") then
						LoadAddOn("AdvancedInterfaceOptions");
					end
					InterfaceOptionsFrame_OpenToCategory("AdvancedInterfaceOptions");
					InterfaceOptionsFrame_OpenToCategory("AdvancedInterfaceOptions");
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "RuneItAll");
if enabled > 0 and class == "DEATHKNIGHT" then
	if GetLocale() == "zhCN" then
		FF_NameRuneItAll	= "符文条";
		FF_DescRuneItAll	= "可自由移动死亡骑士的符文条并可改变其外观";
	elseif GetLocale() == "zhTW" then
		FF_NameRuneItAll	= "符文條";
		FF_DescRuneItAll	= "可自由移動死亡騎士的符文條並可改變其外觀";
	else
		FF_NameRuneItAll	= "RuneItAll";
		FF_DescRuneItAll	= "Simple and rich DK Rune customizations.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "RuneItAll";
				name= FF_NameRuneItAll;
				subtext= "RuneItAll";
				tooltip = FF_DescRuneItAll;
				icon= "Interface\\Icons\\Spell_Deathknight_ClassIcon";
				callback= function(button)
					if not IsAddOnLoaded("RuneItAll") then
						LoadAddOn("RuneItAll");
					end
					RuneItAll_SlashHandler();
					RuneItAll_SlashHandler();
				end;
			}
		);
	end
end

local enabled = GetAddOnEnableState(playerName, "orbSellAndRepair");
if enabled > 0 then
	if GetLocale() == "zhCN" then
		FF_NameorbSellAndRepair	= "自动贩卖修理";
		FF_DescorbSellAndRepair	= "与商人交易时自动贩卖灰色垃圾物品，修理装备";
	elseif GetLocale() == "zhTW" then
		FF_NameorbSellAndRepair	= "自動販賣修理";
		FF_DescorbSellAndRepair	= "與商人交易時自動販賣灰色垃圾物品，修理裝備";
	else
		FF_NameorbSellAndRepair	= "SellAndRepair";
		FF_DescorbSellAndRepair	= "Automatically sell your gray items and repair your equipment when you visit a merchant.";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "orbSellAndRepair";
				name= FF_NameorbSellAndRepair;
				subtext= "orbSellAndRepair";
				tooltip = FF_DescorbSellAndRepair;
				icon= "Interface\\Icons\\Trade_Blacksmithing";
				callback= function(button)
					if not IsAddOnLoaded("orbSellAndRepair") then
						LoadAddOn("orbSellAndRepair");
					end
					InterfaceOptionsFrame_OpenToCategory("orbSellAndRepair");
					InterfaceOptionsFrame_OpenToCategory("orbSellAndRepair");
				end;
			}
		);
	end
end

if GetLocale() == "zhCN" then
	if GetLocale() == "zhCN" then
		FF_NameExtraConfig	= "杂项设置";
		FF_DescExtraConfig	= "一些七七八八的设置";
	elseif GetLocale() == "zhTW" then
		FF_NameExtraConfig	= "雜項設置";
		FF_DescExtraConfig	= "一些七七八八的設置";
	else
		FF_NameExtraConfig	= "options";
		FF_DescExtraConfig	= "Some extra configurations";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "ExtraConfiguration";
				name= FF_NameExtraConfig;
				subtext= "ExtraConfiguration";
				tooltip = FF_DescExtraConfig;
				icon= "Interface\\Icons\\Mail_GMIcon";
				callback= function(button)
					InterfaceOptionsFrame_OpenToCategory("!!!"..FF_NameExtraConfig.."!!!");
					InterfaceOptionsFrame_OpenToCategory("!!!"..FF_NameExtraConfig.."!!!");
				end;
			}
		);
	end
end

-- StaticPopupDialogs["ISDONATION"] = {
-- 	text = "感谢支持：wow.isler.me",
-- 	button1 = "知道了",
-- }
if GetLocale() == "zhCN" then
	if GetLocale() == "zhCN" then
		DonationText	= "感谢支持！";
	elseif GetLocale() == "zhTW" then
		DonationText	= "感謝支持！";
	else
		DonationText	= "Thanks for donation!";
	end
	if ( EarthFeature_AddButton ) then
		EarthFeature_AddButton(
			{
				id= "Donation";
				name= "Donation";
				subtext= "wow.isler.me";
				tooltip = DonationText;
				icon= "Interface\\Icons\\Inv_Drink_13";
				callback= function(button)
					--StaticPopup_Show("ISDONATION");
					Donation_SlashHandler();
				end;
			}
		);
	end
end

