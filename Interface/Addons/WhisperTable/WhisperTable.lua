if GetLocale() == "zhCN" then
	DEL_DES  = "删除对话？";
	DEL_BTN  = "左键：删除对话\n右键：复制文本";
	CALL_BTN = "密语屏";
	OFFLINE  = "已离线。";
	NOTFIND  = "未找到。";
	DIFFSRV  = "不属于当前服务器。";
	CLEAR_ALL= "清空所有对话";
	DEL_CFM  = "删除对话确认";
	BTN_TIP  = "按钮鼠标提示";
	MSG_ANC  = "新消息提示音";
elseif GetLocale() == "zhTW" then
	DEL_DES  = "刪除對話？";
	DEL_BTN  = "左鍵：刪除對話\n右鍵：複製文本";
	CALL_BTN = "密語屏";
	OFFLINE  = "已離線。";
	NOTFIND  = "未找到。";
	DIFFSRV  = "不屬於當前伺服器。";
	CLEAR_ALL= "清空所有對話";
	DEL_CFM  = "刪除對話確認";
	BTN_TIP  = "按鈕滑鼠提示";
	MSG_ANC  = "新消息提示音";
else
	DEL_DES  = "Delete Dialog?";
	DEL_BTN  = "LEFT: Delete Dialog\nRight: Copy text";
	CALL_BTN = "WhisperTable";
	OFFLINE  = " is offline.";
	NOTFIND  = " does not exist.";
	DIFFSRV  = " does not belong to the current server.";
	CLEAR_ALL= "Clear All";
	DEL_CFM  = "Del confirm";
	BTN_TIP  = "Button tip";
	MSG_ANC  = "Announce";
end

StaticPopupDialogs["WhisperTable_Delete"] = {
	text = DEL_DES,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self, data)
		WhisperTable_DelONE(self, tonumber(data));
	end,
	timeout = 0,
	hideOnEscape = 1,
	exclusive = 1,
	whileDead = 1,
	preferredIndex = 3,
}

StaticPopupDialogs["WhisperTable_Clear"] = {
	text = CLEAR_ALL,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		WhisperTableDB = {
			["tag"] = {},
			["unread"] = {},
			["name"] = {},
			["class"] = {},
			["date"] = {},
			["msg"] = {},
			["page"] = 1,
		}
		WhisperTable_ListShow();
	end,
	timeout = 0,
	hideOnEscape = 1,
	exclusive = 1,
	whileDead = 1,
	preferredIndex = 3,
}

local Callbutton_MenuList = {
	{ text = "WhisperTable", isTitle = true },
	{ text = CLEAR_ALL, func = function() StaticPopup_Show("WhisperTable_Clear"); end },
	{ text = DEL_CFM, hasArrow = true,
		menuList = {
			{ text = YES, func = function() WhisperTableDB["confirm"] = 1; CloseDropDownMenus(); end, checked = function() return WhisperTableDB["confirm"] == 1; end },
			{ text = NO, func = function() WhisperTableDB["confirm"] = 0; CloseDropDownMenus(); end, checked = function() return WhisperTableDB["confirm"] == 0; end },
		},
	},
	{ text = BTN_TIP, hasArrow = true,
		menuList = {
			{ text = YES, func = function() WhisperTableDB["tip"] = 1; CloseDropDownMenus(); end, checked = function() return WhisperTableDB["tip"] == 1; end },
			{ text = NO, func = function() WhisperTableDB["tip"] = 0; CloseDropDownMenus(); end, checked = function() return WhisperTableDB["tip"] == 0; end },
		},
	},
	{ text = MSG_ANC, hasArrow = true,
		menuList = {
			{ text = YES, func = function() WhisperTableDB["announce"] = 1; CloseDropDownMenus(); end, checked = function() return WhisperTableDB["announce"] == 1; end },
			{ text = NO, func = function() WhisperTableDB["announce"] = 0; CloseDropDownMenus(); end, checked = function() return WhisperTableDB["announce"] == 0; end },
		},
	},
	{ text = CANCEL },
}

local Callbutton_Menu = CreateFrame("Frame", nil, UIParent, "UIDropDownMenuTemplate")

function WhisperTable_Clear()
	EasyMenu(Callbutton_MenuList, Callbutton_Menu, "cursor", 0 , 0, "MENU");
end

function WhisperTable_Onload(self)
	self:RegisterEvent("ADDON_LOADED");
	self:RegisterEvent("PLAYER_LOGIN");
	self:RegisterEvent("CHAT_MSG_WHISPER");
	self:RegisterEvent("CHAT_MSG_WHISPER_INFORM");
	self:RegisterEvent("CHAT_MSG_BN_WHISPER");
	self:RegisterEvent("CHAT_MSG_BN_WHISPER_INFORM");
	self:RegisterForDrag("LeftButton");
	self:SetClampedToScreen(true);
end

local function WhisperTable_CheckUnread()
	local unread = 0;
	for k, v in pairs(WhisperTableDB["unread"]) do
		if v == 1 then
			unread = 1;
			break;
		end
	end
	if unread == 0 then
		_G["WhisperTable_ShowBotton_Background"]:SetAlpha(0);
	else
		_G["WhisperTable_ShowBotton_Background"]:SetAlpha(1);
	end
end

function WhisperTable_Set(self, msg)
	if (msg == "point") then
		WhisperTable_ShowBotton:ClearAllPoints();
		WhisperTable_ShowBotton:SetPoint("BOTTOMLEFT", ChatFrameChannelButton, "TOPLEFT", 2, 12);
	else
		if (WhisperTable_Main:IsVisible()) then
			WhisperTable_Main:Hide();
		else
			WhisperTable_Main:Show();
		end
	end
end

local function WhisperTable_UpdateFriends()
	local accountName, battleTag, i, j;
	local count = BNGetNumFriends();
	for i = 1, count, 1 do
		_, accountName, battleTag = BNGetFriendInfo(i);
		local j = 1;
		while WhisperTableDB["tag"][j] do
			if (WhisperTableDB["tag"][j] == battleTag) then
				WhisperTableDB["name"][WhisperTableDB["tag"][j]] = accountName;
				break;
			end
			j = j + 1;
		end
	end
end

function WhisperTable_OnEvent(self, event, ...)
	--非战网消息playerName带服务器名，playerName2不带，战网消息playerName为名字，playerName2为空
	local msg, playerName, _, _, playerName2, specialFlags, _, _, _, _, _, guid, bnSenderID = ...;
	local name, tag, class;
	if ((event == "CHAT_MSG_WHISPER") or (event == "CHAT_MSG_BN_WHISPER")) then
		if (event == "CHAT_MSG_WHISPER") then
			name = playerName2;--name
			local _, playerRealm = strsplit("-", WhisperTablePlayer);
			tag = playerName2.."-"..playerRealm.."-"..WhisperTablePlayer;--name+realm+palername+playerrealm
			if specialFlags == "GM" or specialFlags == "DEV" or (GMChatFrame_IsGM and GMChatFrame_IsGM(name)) then
				class = "GM";
			else
				class = select(2, GetPlayerInfoByGUID(guid or ""));
			end
		elseif (event == "CHAT_MSG_BN_WHISPER") then
			name = playerName;--name
			tag = select(3, BNGetFriendInfoByID(bnSenderID or 0));--battleTag
			class = "BN";
		end

		WhisperTableDB["unread"][tag] = 1;
		_G["WhisperTable_ShowBotton_Background"]:SetAlpha(1);

		if WhisperTableDB["announce"] == 1 then
			PlaySoundFile("Interface\\AddOns\\WhisperTable\\Sounds\\Notify.ogg");
		end

		if (not WhisperTableDB["name"][tag]) then
			-- WhisperTableDB["name"][tag] = name;
			WhisperTableDB["name"][tag] = select(1, strsplit("-", name));
		end

		if (not WhisperTableDB["class"][tag]) then
			WhisperTableDB["class"][tag] = class;
		end

		if (not WhisperTableDB["msg"][tag]) then
			table.insert(WhisperTableDB["tag"], 1, tag);
			WhisperTableDB["msg"][tag] = {};
		else
			local i = 1;
			while WhisperTableDB["tag"][i] do
				if (WhisperTableDB["tag"][i] == tag) then
					table.remove(WhisperTableDB["tag"], i);
					table.insert(WhisperTableDB["tag"], 1, tag);
					break;
				end
				i = i + 1;
			end
		end

		local dataText = "|cff32CD32"..date("%Y.%m.%d").."|r";
		if ((not WhisperTableDB["date"][tag]) or (WhisperTableDB["date"][tag] ~= dataText)) then
			WhisperTableDB["date"][tag] = dataText;
			table.insert(WhisperTableDB["msg"][tag], WhisperTableDB["date"][tag]);
		end

		if (event == "CHAT_MSG_WHISPER") then
			msg = "|cffFFFFFF["..date("%H:%M:%S").."] |r".."|cffFF7EFF"..msg.."|r";
		elseif (event == "CHAT_MSG_BN_WHISPER") then
			msg = "|cffFFFFFF["..date("%H:%M:%S").."] |r".."|cff00FFFF"..msg.."|r";
		end
		table.insert(WhisperTableDB["msg"][tag], msg);
		WhisperTable_ListShow();
	elseif ((event == "CHAT_MSG_WHISPER_INFORM") or (event == "CHAT_MSG_BN_WHISPER_INFORM")) then
		if (event == "CHAT_MSG_WHISPER_INFORM") then
			name = playerName2;
			local _, playerRealm = strsplit("-", WhisperTablePlayer);
			tag = playerName2.."-"..playerRealm.."-"..WhisperTablePlayer;
			if specialFlags == "GM" or specialFlags == "DEV" or (GMChatFrame_IsGM and GMChatFrame_IsGM(name)) then
				class = "GM";
			else
				class = select(2, GetPlayerInfoByGUID(guid or ""));
			end
		elseif (event == "CHAT_MSG_BN_WHISPER_INFORM") then
			name = playerName;
			tag = select(3, BNGetFriendInfoByID(bnSenderID or 0));
			class = "BN";
		end

		WhisperTableDB["unread"][tag] = 0;
		WhisperTable_CheckUnread();

		if (not WhisperTableDB["name"][tag]) then
			-- WhisperTableDB["name"][tag] = name;
			WhisperTableDB["name"][tag] = select(1, strsplit("-", name));
		end

		if (not WhisperTableDB["class"][tag]) then
			WhisperTableDB["class"][tag] = class;
		end

		if (not WhisperTableDB["msg"][tag]) then
			table.insert(WhisperTableDB["tag"], 1, tag);
			WhisperTableDB["msg"][tag] = {};
		else
			local i = 1;
			while WhisperTableDB["tag"][i] do
				if (WhisperTableDB["tag"][i] == tag) then
					table.remove(WhisperTableDB["tag"], i);
					table.insert(WhisperTableDB["tag"], 1, tag);
					break;
				end
				i = i + 1;
			end
		end

		local dataText = "|cff32CD32"..date("%Y.%m.%d").."|r";
		if ((not WhisperTableDB["date"][tag]) or (WhisperTableDB["date"][tag] ~= dataText)) then
			WhisperTableDB["date"][tag] = dataText;
			table.insert(WhisperTableDB["msg"][tag], WhisperTableDB["date"][tag]);
		end

		msg = "|cff9D9D9D["..date("%H:%M:%S").."] |r"..msg;
		table.insert(WhisperTableDB["msg"][tag], msg);
		WhisperTable_ListShow();
	elseif event == "ADDON_LOADED" then
		if (msg == "WhisperTable") then
			if (not WhisperTableDB) then
				WhisperTableDB = {};
			end
			if (not WhisperTableDB["tag"]) then
				WhisperTableDB["tag"] = {};
			end
			if (not WhisperTableDB["unread"]) then
				WhisperTableDB["unread"] = {};
			end
			if (not WhisperTableDB["name"]) then
				WhisperTableDB["name"] = {};
			end
			if (not WhisperTableDB["class"]) then
				WhisperTableDB["class"] = {};
			end
			if (not WhisperTableDB["date"]) then
				WhisperTableDB["date"] = {};
			end
			if (not WhisperTableDB["msg"]) then
				WhisperTableDB["msg"] = {};
			end
			if (not WhisperTableDB["page"]) then
				WhisperTableDB["page"] = 1;
			end
			if (not WhisperTableDB["confirm"]) then
				WhisperTableDB["confirm"] = 1;
			end
			if (not WhisperTableDB["tip"]) then
				WhisperTableDB["tip"] = 1;
			end
			if (not WhisperTableDB["announce"]) then
				WhisperTableDB["announce"] = 0;
			end
			SlashCmdList["WhisperTable"] = WhisperTable_Set;
			SLASH_WhisperTable1 = "/wt";
		end
	elseif event == "PLAYER_LOGIN" then
		local name = UnitName("player")
		local realm = GetRealmName();
		WhisperTablePlayer = name.."-"..realm;
		--好友列表登陆后重新生成，隐私保护！
		WhisperTable_UpdateFriends();
		WhisperTable_CheckUnread();
		WhisperTable_ListShow();
	end
end

function WhisperTable_ListShow()
	local i, num, tag, name, color;
	for i = 1, 8, 1 do
		num = (WhisperTableDB["page"] - 1) * 8 + i;
		if (WhisperTableDB["tag"][num]) then
			tag = WhisperTableDB["tag"][num];
			name = WhisperTableDB["name"][tag];
			if (not string.find(tag, "-")) then
				--战网消息
				color = CreateColor(0, 1, 1, 1);
			else
				--非战网消息
				local whisperName, whisperRealm, informName, informRealm = strsplit("-", tag);
				local playerName, playerRealm = strsplit("-", WhisperTablePlayer);
				if (playerRealm ~= whisperRealm) then
					-- name = whisperName.."-"..informName;
					color = CreateColor(1, 0, 0, 1);
				elseif (informName ~= playerName) then
					-- name = whisperName.."-"..informName;
					color = CreateColor(0, 0.75, 1, 1);
				else
					color = CreateColor(1, 0.75, 0, 1);
				end
			end

			_G["WhisperTable_Tag"..i.."_Text"]:SetText(name);
			_G["WhisperTable_Tag"..i.."_Text"]:SetTextColor(color.r, color.g, color.b);
			_G["WhisperTable_Tag"..i]:Show();

			if WhisperTableDB["class"][tag] == "GM" then
				_G["WhisperTable_Del"..i]:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-Blizz");
				_G["WhisperTable_Del"..i]:GetNormalTexture():SetTexCoord(0.18, 0.82, 0, 1);
				_G["WhisperTable_Del"..i]:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIcon-Blizz");
				_G["WhisperTable_Del"..i]:GetPushedTexture():SetTexCoord(0.18, 0.82, 0, 1);
			elseif WhisperTableDB["class"][tag] == "BN" then
				-- _G["WhisperTable_Del"..i]:SetNormalTexture("Interface\\FriendsFrame\\PlusManz-BattleNet");
				_G["WhisperTable_Del"..i]:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-Battlenet");
				_G["WhisperTable_Del"..i]:GetNormalTexture():SetTexCoord(0, 1, 0, 1);
				-- _G["WhisperTable_Del"..i]:SetPushedTexture("Interface\\FriendsFrame\\PlusManz-BattleNet");
				_G["WhisperTable_Del"..i]:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-Battlenet");
				_G["WhisperTable_Del"..i]:GetPushedTexture():SetTexCoord(0, 1, 0, 1);
			elseif WhisperTableDB["class"][tag] ~= nil then
				local coords = CLASS_ICON_TCOORDS[WhisperTableDB["class"][tag]];
				if coords then
					_G["WhisperTable_Del"..i]:SetNormalTexture("Interface\\WorldStateFrame\\Icons-Classes");
					_G["WhisperTable_Del"..i]:GetNormalTexture():SetTexCoord(coords[1], coords[2], coords[3], coords[4]);
					_G["WhisperTable_Del"..i]:SetPushedTexture("Interface\\WorldStateFrame\\Icons-Classes");
					_G["WhisperTable_Del"..i]:GetPushedTexture():SetTexCoord(coords[1], coords[2], coords[3], coords[4]);
				else
					_G["WhisperTable_Del"..i]:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-Battlenet");
					_G["WhisperTable_Del"..i]:GetNormalTexture():SetTexCoord(0, 1, 0, 1);
					_G["WhisperTable_Del"..i]:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIcon-Battlenet");
					_G["WhisperTable_Del"..i]:GetPushedTexture():SetTexCoord(0, 1, 0, 1);
				end
			else
				-- _G["WhisperTable_Del"..i]:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-Battlenet");
				_G["WhisperTable_Del"..i]:SetNormalTexture("Interface\\Icons\\Ability_Vanish");
				_G["WhisperTable_Del"..i]:GetNormalTexture():SetTexCoord(0, 1, 0, 1);
				-- _G["WhisperTable_Del"..i]:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIcon-Battlenet");
				_G["WhisperTable_Del"..i]:SetPushedTexture("Interface\\Icons\\Ability_Vanish");
				_G["WhisperTable_Del"..i]:GetPushedTexture():SetTexCoord(0, 1, 0, 1);
			end

			_G["WhisperTable_Del"..i]:Show();

			if WhisperTableDB["unread"][tag] == 1 then
				_G["WhisperTable_Del"..i.."_Background"]:SetAlpha(1);
			else
				_G["WhisperTable_Del"..i.."_Background"]:SetAlpha(0);
			end
		else
			_G["WhisperTable_Tag"..i]:Hide();
			_G["WhisperTable_Del"..i]:Hide();
		end
	end
	if (WhisperTableDB["tag"][num + 1]) then
		WhisperTable_NextPageButton:Enable();
	else
		WhisperTable_NextPageButton:Disable();
	end
	num = (WhisperTableDB["page"] - 1) * 8;
	if (WhisperTableDB["tag"][num]) then
		WhisperTable_PrevPageButton:Enable();
	else
		WhisperTable_PrevPageButton:Disable();
	end
end

function WhisperTable_PrevNextPage(self, num)
	WhisperTableDB["page"] = WhisperTableDB["page"] + num;
	WhisperTable_PageText:SetText(WhisperTableDB["page"]);
	WhisperTable_ListShow();
end

function WhisperTable_OnScroll(self, delta)
	num = (WhisperTableDB["page"] - delta - 1) * 8 + 1;
	if (WhisperTableDB["tag"][num]) then
		WhisperTable_PrevNextPage(self, -delta);
		WhisperTable_ListShow();
		WhisperTable_OnEnter(_G["WhisperTable_Tag" .. WhisperTableDB["num"]], WhisperTableDB["num"])
	end
end

function WhisperTable_OnClick(self, num, button)
	if (button == "RightButton") then
		local tagid = (WhisperTableDB["page"] - 1) * 8 + num;
		local tag = WhisperTableDB["tag"][tagid];
		local name = WhisperTableDB["name"][tag];
		if (not string.find(tag, "-")) then
			--战网消息
			local id, accountName, isOnline, i;
			local count = BNGetNumFriends();
			for i = 1, count, 1 do
				id, accountName, _, _, _, _, _, isOnline = BNGetFriendInfo(i);
				if (accountName == name) then
					FriendsFrame_ShowBNDropdown(accountName, isOnline, nil, nil, nil, 1, id)
					return;
				end
			end
			print(name..NOTFIND);
		else
			--非战网消息
			FriendsFrame_ShowDropdown(name, 1)
		end
	else
		if (IsControlKeyDown()) then
			ShowChatbox(num);
		else
			local tagid = (WhisperTableDB["page"] - 1) * 8 + num;
			local tag = WhisperTableDB["tag"][tagid];
			local name = WhisperTableDB["name"][tag];
			if (not string.find(tag, "-")) then
				--战网消息
				local Online = false;
				local accountName, isOnline, i;
				local count = BNGetNumFriends();
				for i = 1, count, 1 do
					_, accountName, _, _, _, _, _, isOnline = BNGetFriendInfo(i);
					if (accountName == name) then
						if (isOnline == true) then
							return ChatFrame_SendBNetTell(name);
						elseif (isOnline == false) then
							print(accountName..OFFLINE);
						end
						return;
					end
				end
				print(name..NOTFIND);
			else
				local msg = "";
				local _, whisperRealm = strsplit("-", tag);
				local _, playerRealm = strsplit("-", WhisperTablePlayer);
				if (playerRealm == whisperRealm) then
					msg = "/w "..name.." ";
				else
					msg = "/w "..name.."-"..whisperRealm.." ";
				end
				if (not SELECTED_CHAT_FRAME.editBox:IsVisible()) then
					ChatFrame_OpenChat(msg);
				else
					SELECTED_CHAT_FRAME.editBox:SetText(msg);
				end
				ChatEdit_ParseText(ChatFrame1.editBox, 0);
			end
		end
	end
end

function WhisperTable_OnEnter(self, num)
	local tagid = (WhisperTableDB["page"] - 1) * 8 + num;
	if (WhisperTableDB["tag"][tagid]) then
		WhisperTableDB["num"] = num
		local tag = WhisperTableDB["tag"][tagid];
		local name = WhisperTableDB["name"][tag];
		local color;
		if WhisperTableDB["unread"][tag] == 1 then
			WhisperTableDB["unread"][tag] = 0;
			_G["WhisperTable_Del"..num.."_Background"]:SetAlpha(0);
			WhisperTable_CheckUnread();
		end
		GameTooltip:SetOwner(self, "ANCHOR_LEFT");
		if (not string.find(tag, "-")) then
			--战网消息
			color = CreateColor(0, 1, 1, 1);
		else
			--非战网消息
			color = CreateColor(1, 0.75, 0, 1);
			--与玩家不在同一个服务器时显示"角色名-服务器"
			local whisperName, whisperRealm, informName, informRealm = strsplit("-", tag);
			local playerName, playerRealm = strsplit("-", WhisperTablePlayer);
			if (playerRealm ~= whisperRealm) then
				name = whisperName.."-|cffFF0000"..whisperRealm.."|r".." |cff00FF00 & |r "..informName;
			elseif (informName ~= playerName) then
				name = whisperName.." |cff00FF00 & |r "..informName;
			end
		end
		local colorstring = ConvertRGBtoColorString(color);
		GameTooltip:SetText(colorstring..name.."|r");

		local num = table.getn(WhisperTableDB["msg"][tag]);
		local i = 1;
		if (num > 25) then
			i = num - 24;
		end
		while WhisperTableDB["msg"][tag][i] do
			GameTooltip:AddLine(WhisperTableDB["msg"][tag][i]);
			i = i + 1;
		end
		GameTooltip:Show();
	else
		GameTooltip:Hide();
	end
end

function WhisperTable_OnLeave(self)
	GameTooltip:Hide();
end

function WhisperTable_DelONE(self, num)
	local tagid = (WhisperTableDB["page"] - 1) * 8 + num;
	local tag = WhisperTableDB["tag"][tagid];
	local i = 1;
	while WhisperTableDB["tag"][i] do
		if (WhisperTableDB["tag"][i] == tag) then
			table.remove(WhisperTableDB["tag"], i);
			WhisperTableDB["msg"][tag] = nil;
			WhisperTableDB["date"][tag] = nil;
			WhisperTableDB["name"][tag] = nil;
			WhisperTableDB["unread"][tag] = nil;
			WhisperTableDB["class"][tag] = nil;
			break;
		end
		i = i + 1;
	end
	WhisperTable_ListShow();
end

function WhisperTable_Del(self, num, button)
	if (button == "RightButton") then
		ShowChatbox(num);
	else
		if (WhisperTableDB["confirm"] == 1) then
			local dialog = StaticPopup_Show("WhisperTable_Delete");
			if (dialog) then
				dialog.data = num;
			end
		else
			WhisperTable_DelONE(self, num);
		end
	end
end
