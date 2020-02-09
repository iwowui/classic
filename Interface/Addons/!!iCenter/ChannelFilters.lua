if not cfilter then cfilter = true end
if not cfilterall then cfilterall = false end
if not cfilters then
    cfilters = {
        white = true,
        black = true,
        trade = true,
        battle = false,
        d10 = false,
        d20 = false,
        d30 = false,
        d40 = false,
        d50 = false,
        d60 = false,
        diy = false,
    }
end
if not cfilterlist then cfilterlist = {} end
if not cfilterlist["white"] then cfilterlist["white"] = {} end
if not cfilterlist["black"] then cfilterlist["black"] = {"位面", "老板", "代做", "手工", "荣誉", "PVP"} end
if not cfilterlist["trade"] then cfilterlist["trade"] = {"无限收", "长期", "一组", "每组", "组收", "邮寄", "U寄", "付费", "大量", "带价", "代价", "欢乐豆", "大米", "小米", "收米", "出米", "支付", "微信", "VX", "ZFB", "拉人", "飞机", "航班", "航线", "航空", "附魔", "FM"} end
if not cfilterlist["battle"] then cfilterlist["battle"] = {"战场", "国家", "奥山", "战歌", "阿拉希"} end
if not cfilterlist["d10"] then cfilterlist["d10"] = {"怒焰", "NY", "矿井", "死矿", "SK", "哀嚎", "AH"} end
if not cfilterlist["d20"] then cfilterlist["d20"] = {"影牙", "YY", "黑暗深渊", "监狱", "JY", "诺莫瑞根", "NMRG", "矮子本", "矮人本", "矮人副本", "矮子副本", "沼泽", "ZZ"} end
if not cfilterlist["d30"] then cfilterlist["d30"] = {"血色", "XS", "图书馆", "军械库", "武器库", "教堂", "墓地", "高地", "GD", "奥达曼", "ADM"} end
if not cfilterlist["d40"] then cfilterlist["d40"] = {"玛拉顿", "MLD", "祖尔法拉克", "ZUL", "神庙", "黑石深渊"} end
if not cfilterlist["d50"] then cfilterlist["d50"] = {"斯坦", "十字", "DK", "STSM", "通灵", "TL", "黑石塔", "黑上", "黑下", "厄运", "牵马"} end
if not cfilterlist["d60"] then cfilterlist["d60"] = {"祖尔格拉布", "祖格", "ZUG", "ZG", "安其拉", "AQL", "神殿", "TAQ", "废墟", "FX", "熔火之心", "MC", "黑龙", "黑翼", "纳克", "NAXX"} end
if not cfilterlist["diy"] then cfilterlist["diy"] = {"代刷", "带刷", "G一次", "经验", "自由拾取", "深渊", "祖尔"} end

local function listtostring(list)
    local text = "";
    for k, v in ipairs(cfilterlist[list]) do
        if text == "" then
            text = v;
        else
            text = text.." "..v;
        end
    end
    return text;
end

local function savelist(self, list)
    local text = self:GetText();
    cfilterlist[list] = {};
    if text ~= "" then
        for v in string.gmatch(text, "[^ ]+") do
          tinsert(cfilterlist[list], v)
        end
    end
    self:ClearFocus();
end

function ChannelFilters(self, event, msg, playername, _, channel, _, flag, zonechannelid, channelindex, channelname, unused, id)
    if cfilter == true then
        if channelname == "大脚世界频道" or cfilterall == true then
            local truename = strsplit("-", playername);
            if truename == UnitName("player") then return false end
            local find = false;
            if cfilters["white"] == true and next(cfilterlist["white"]) ~= nil then
                for _, word in ipairs(cfilterlist["white"]) do
                    local _, result= gsub(string.upper(msg), word, "");
                    if (result > 0) then
                        find = true;
                        break;
                    end
                end
            else
                find = true;
            end

            if find then
                local k, v;
                for k, v in pairs(cfilters) do
                    if k ~= "white" and v == true then
                        if next(cfilterlist[k]) ~= nil then
                            for _, word in ipairs(cfilterlist[k]) do
                                local _, result= gsub(string.upper(msg), word, "");
                                if (result > 0) then
                                    return true;
                                end
                            end
                        end
                    end
                end
                return false;
            else
                return true;
            end
        end
    end
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", ChannelFilters);
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER", ChannelFilters);
ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_EMOTE", ChannelFilters);
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_TEXT_EMOTE", ChannelFilters);

--settings
local cf = CreateFrame("Frame", "ChannelFiltersFrame", UIParent);
cf:SetSize(390, 455);
cf:ClearAllPoints();
cf:SetPoint("CENTER");
cf:SetClampedToScreen(true);
cf:EnableMouse(true);
cf:SetMovable(true);
cf:RegisterForDrag("LeftButton");
cf:SetScript("OnDragStart", function(self) self:StartMoving() end);
cf:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end);
tinsert(UISpecialFrames, cf:GetName());
cf:Hide();
cf.bg = cf:CreateTexture();
cf.bg:ClearAllPoints();
cf.bg:SetAllPoints(cf);
cf.bg:SetColorTexture(0, 0, 0, 0.5);
cf.close = CreateFrame("Button", nil, cf, "UIPanelCloseButton");
cf.close:ClearAllPoints();
cf.close:SetPoint("TOPRIGHT", cf, "TOPRIGHT", -5, -5);

--enable
cf.enable = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.enable:ClearAllPoints();
cf.enable:SetPoint("TOPLEFT", 16, -16);
cf.enable:SetHitRectInsets(0, -60, 0, 0);
cf.enable.Text:SetText("开启世界频道过滤");
cf.enable.Text:SetTextColor(1, 0.82, 0);
cf.enable:SetScript("OnShow", function(self)
    self:SetChecked(cfilter);
end)
cf.enable:SetScript("OnClick", function(self)
    cfilter = not cfilter;
    self:SetChecked(cfilter);
end)

--enable
cf.enableall = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.enableall:ClearAllPoints();
cf.enableall:SetPoint("TOPLEFT", cf.enable, "TOPLEFT", 160, 0);
cf.enableall:SetHitRectInsets(0, -60, 0, 0);
cf.enableall.Text:SetText("应用到公共频道");
cf.enableall.Text:SetTextColor(1, 0.82, 0);
cf.enableall:SetScript("OnShow", function(self)
    self:SetChecked(cfilterall);
end)
cf.enableall:SetScript("OnClick", function(self)
    cfilterall = not cfilterall;
    self:SetChecked(cfilterall);
end)

cf.description = cf:CreateFontString(nil, nil, "GameFontNormalLarge");
cf.description:ClearAllPoints();
cf.description:SetPoint("TOPLEFT", cf.enable, "TOPLEFT", 3, -30);
cf.description:SetText("使用空格分隔关键词");
cf.description:SetTextColor(1, 1, 1);

--whitelist
-- cf.whitelist = cf:CreateFontString(nil, nil, "GameFontNormalLarge");
-- cf.whitelist:ClearAllPoints();
-- cf.whitelist:SetPoint("TOPLEFT", cf.description, "TOPLEFT", 0, -30);
-- cf.whitelist:SetText("白名单：");
cf.whitelist = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.whitelist:ClearAllPoints();
cf.whitelist:SetPoint("TOPLEFT", cf.description, "TOPLEFT", -3, -20);
cf.whitelist:SetHitRectInsets(0, -60, 0, 0);
cf.whitelist.Text:SetText("白名单");
cf.whitelist.Text:SetTextColor(1, 0.82, 0);
cf.whitelist:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["white"]);
end)
cf.whitelist:SetScript("OnClick", function(self)
    cfilters["white"] = not cfilters["white"];
    self:SetChecked(cfilters["white"]);
end)

--whitelist editbox
cf.whitelisteditbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.whitelisteditbox:ClearAllPoints();
cf.whitelisteditbox:SetPoint("TOPLEFT", cf.whitelist, "TOPLEFT", 9, -26);
cf.whitelisteditbox:SetWidth(346);
cf.whitelisteditbox:SetHeight(25);
cf.whitelisteditbox:SetAutoFocus(false);
cf.whitelisteditbox:ClearFocus();
cf.whitelisteditbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "white");
end)
cf.whitelisteditbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "white");
end)
cf.whitelisteditbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "white");
    self:SetText(listtostring("white"));
end)
cf.whitelisteditbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("white"));
end)
cf.whitelisteditbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("white"));
    GameTooltip:Show();
end)
cf.whitelisteditbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist
-- cf.blacklist = cf:CreateFontString(nil, nil, "GameFontNormalLarge");
-- cf.blacklist:ClearAllPoints();
-- cf.blacklist:SetPoint("TOPLEFT", cf.whitelisteditbox, "TOPLEFT", -3, -38);
-- cf.blacklist:SetText("黑名单：");
cf.blacklist = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklist:ClearAllPoints();
cf.blacklist:SetPoint("TOPLEFT", cf.whitelisteditbox, "TOPLEFT", -9, -28);
cf.blacklist:SetHitRectInsets(0, -60, 0, 0);
cf.blacklist.Text:SetText("黑名单");
cf.blacklist.Text:SetTextColor(1, 0.82, 0);
cf.blacklist:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["black"]);
end)
cf.blacklist:SetScript("OnClick", function(self)
    cfilters["black"] = not cfilters["black"];
    self:SetChecked(cfilters["black"]);
end)
--blacklist editbox
cf.blacklisteditbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklisteditbox:ClearAllPoints();
cf.blacklisteditbox:SetPoint("TOPLEFT", cf.blacklist, "TOPLEFT", 9, -26);
cf.blacklisteditbox:SetWidth(346);
cf.blacklisteditbox:SetHeight(25);
cf.blacklisteditbox:SetAutoFocus(false);
cf.blacklisteditbox:ClearFocus();
cf.blacklisteditbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "black");
end)
cf.blacklisteditbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "black");
end)
cf.blacklisteditbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "black");
    self:SetText(listtostring("black"));
end)
cf.blacklisteditbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("black"));
end)
cf.blacklisteditbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("black"));
    GameTooltip:Show();
end)
cf.blacklisteditbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist trade
cf.blacklisttrade = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklisttrade:ClearAllPoints();
cf.blacklisttrade:SetPoint("TOPLEFT", cf.blacklisteditbox, "TOPLEFT", -9, -30);
cf.blacklisttrade:SetHitRectInsets(0, -40, 0, 0);
cf.blacklisttrade.Text:SetText("交易");
cf.blacklisttrade.Text:SetTextColor(1, 0.82, 0);
cf.blacklisttrade:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["trade"]);
end)
cf.blacklisttrade:SetScript("OnClick", function(self)
    cfilters["trade"] = not cfilters["trade"];
    self:SetChecked(cfilters["trade"]);
end)
--blacklist trade editbox
cf.blacklisttradeeditbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklisttradeeditbox:ClearAllPoints();
cf.blacklisttradeeditbox:SetPoint("LEFT", cf.blacklisttrade, "RIGHT", 44, 1);
cf.blacklisttradeeditbox:SetWidth(285);
cf.blacklisttradeeditbox:SetHeight(25);
cf.blacklisttradeeditbox:SetAutoFocus(false);
cf.blacklisttradeeditbox:ClearFocus();
cf.blacklisttradeeditbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "trade");
end)
cf.blacklisttradeeditbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "trade");
end)
cf.blacklisttradeeditbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "trade");
    self:SetText(listtostring("trade"));
end)
cf.blacklisttradeeditbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("trade"));
end)
cf.blacklisttradeeditbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("trade"));
    GameTooltip:Show();
end)
cf.blacklisttradeeditbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist battle
cf.blacklistbattle = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklistbattle:ClearAllPoints();
cf.blacklistbattle:SetPoint("TOPLEFT", cf.blacklisttrade, "TOPLEFT", 0, -30);
cf.blacklistbattle:SetHitRectInsets(0, -40, 0, 0);
cf.blacklistbattle.Text:SetText("战场");
cf.blacklistbattle.Text:SetTextColor(1, 0.82, 0);
cf.blacklistbattle:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["battle"]);
end)
cf.blacklistbattle:SetScript("OnClick", function(self)
    cfilters["battle"] = not cfilters["battle"];
    self:SetChecked(cfilters["battle"]);
end)
--blacklist battle editbox
cf.blacklistbattleeditbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklistbattleeditbox:ClearAllPoints();
cf.blacklistbattleeditbox:SetPoint("LEFT", cf.blacklistbattle, "RIGHT", 44, 1);
cf.blacklistbattleeditbox:SetWidth(285);
cf.blacklistbattleeditbox:SetHeight(25);
cf.blacklistbattleeditbox:SetAutoFocus(false);
cf.blacklistbattleeditbox:ClearFocus();
cf.blacklistbattleeditbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "battle");
end)
cf.blacklistbattleeditbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "battle");
end)
cf.blacklistbattleeditbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "battle");
    self:SetText(listtostring("battle"));
end)
cf.blacklistbattleeditbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("battle"));
end)
cf.blacklistbattleeditbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("battle"));
    GameTooltip:Show();
end)
cf.blacklistbattleeditbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist 10
cf.blacklist10 = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklist10:ClearAllPoints();
cf.blacklist10:SetPoint("TOPLEFT", cf.blacklistbattle, "TOPLEFT", 0, -30);
cf.blacklist10:SetHitRectInsets(0, -40, 0, 0);
cf.blacklist10.Text:SetText("10+");
cf.blacklist10.Text:SetTextColor(1, 0.82, 0);
cf.blacklist10:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["d10"]);
end)
cf.blacklist10:SetScript("OnClick", function(self)
    cfilters["d10"] = not cfilters["d10"];
    self:SetChecked(cfilters["d10"]);
end)
--blacklist 10 editbox
cf.blacklist10editbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklist10editbox:ClearAllPoints();
cf.blacklist10editbox:SetPoint("LEFT", cf.blacklist10, "RIGHT", 44, 1);
cf.blacklist10editbox:SetWidth(285);
cf.blacklist10editbox:SetHeight(25);
cf.blacklist10editbox:SetAutoFocus(false);
cf.blacklist10editbox:ClearFocus();
cf.blacklist10editbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "d10");
end)
cf.blacklist10editbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "d10");
end)
cf.blacklist10editbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "d10");
    self:SetText(listtostring("d10"));
end)
cf.blacklist10editbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("d10"));
end)
cf.blacklist10editbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("d10"));
    GameTooltip:Show();
end)
cf.blacklist10editbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist 20
cf.blacklist20 = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklist20:ClearAllPoints();
cf.blacklist20:SetPoint("TOPLEFT", cf.blacklist10, "TOPLEFT", 0, -30);
cf.blacklist20:SetHitRectInsets(0, -40, 0, 0);
cf.blacklist20.Text:SetText("20+");
cf.blacklist20.Text:SetTextColor(1, 0.82, 0);
cf.blacklist20:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["d20"]);
end)
cf.blacklist20:SetScript("OnClick", function(self)
    cfilters["d20"] = not cfilters["d20"];
    self:SetChecked(cfilters["d20"]);
end)
--blacklist 20 editbox
cf.blacklist20editbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklist20editbox:ClearAllPoints();
cf.blacklist20editbox:SetPoint("LEFT", cf.blacklist20, "RIGHT", 44, 1);
cf.blacklist20editbox:SetWidth(285);
cf.blacklist20editbox:SetHeight(25);
cf.blacklist20editbox:SetAutoFocus(false);
cf.blacklist20editbox:ClearFocus();
cf.blacklist20editbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "d20");
end)
cf.blacklist20editbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "d20");
end)
cf.blacklist20editbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "d20");
    self:SetText(listtostring("d20"));
end)
cf.blacklist20editbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("d20"));
end)
cf.blacklist20editbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("d20"));
    GameTooltip:Show();
end)
cf.blacklist20editbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist 30
cf.blacklist30 = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklist30:ClearAllPoints();
cf.blacklist30:SetPoint("TOPLEFT", cf.blacklist20, "TOPLEFT", 0, -30);
cf.blacklist30:SetHitRectInsets(0, -40, 0, 0);
cf.blacklist30.Text:SetText("30+");
cf.blacklist30.Text:SetTextColor(1, 0.82, 0);
cf.blacklist30:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["d30"]);
end)
cf.blacklist30:SetScript("OnClick", function(self)
    cfilters["d30"] = not cfilters["d30"];
    self:SetChecked(cfilters["d30"]);
end)
--blacklist 30 editbox
cf.blacklist30editbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklist30editbox:ClearAllPoints();
cf.blacklist30editbox:SetPoint("LEFT", cf.blacklist30, "RIGHT", 44, 1);
cf.blacklist30editbox:SetWidth(285);
cf.blacklist30editbox:SetHeight(25);
cf.blacklist30editbox:SetAutoFocus(false);
cf.blacklist30editbox:ClearFocus();
cf.blacklist30editbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "d30");
end)
cf.blacklist30editbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "d30");
end)
cf.blacklist30editbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "d30");
    self:SetText(listtostring("d30"));
end)
cf.blacklist30editbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("d30"));
end)
cf.blacklist30editbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("d30"));
    GameTooltip:Show();
end)
cf.blacklist30editbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist 40
cf.blacklist40 = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklist40:ClearAllPoints();
cf.blacklist40:SetPoint("TOPLEFT", cf.blacklist30, "TOPLEFT", 0, -30);
cf.blacklist40:SetHitRectInsets(0, -40, 0, 0);
cf.blacklist40.Text:SetText("40+");
cf.blacklist40.Text:SetTextColor(1, 0.82, 0);
cf.blacklist40:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["d40"]);
end)
cf.blacklist40:SetScript("OnClick", function(self)
    cfilters["d40"] = not cfilters["d40"];
    self:SetChecked(cfilters["d40"]);
end)
--blacklist 40 editbox
cf.blacklist40editbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklist40editbox:ClearAllPoints();
cf.blacklist40editbox:SetPoint("LEFT", cf.blacklist40, "RIGHT", 44, 1);
cf.blacklist40editbox:SetWidth(285);
cf.blacklist40editbox:SetHeight(25);
cf.blacklist40editbox:SetAutoFocus(false);
cf.blacklist40editbox:ClearFocus();
cf.blacklist40editbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "d40");
end)
cf.blacklist40editbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "d40");
end)
cf.blacklist40editbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "d40");
    self:SetText(listtostring("d40"));
end)
cf.blacklist40editbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("d40"));
end)
cf.blacklist40editbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("d40"));
    GameTooltip:Show();
end)
cf.blacklist40editbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist 50
cf.blacklist50 = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklist50:ClearAllPoints();
cf.blacklist50:SetPoint("TOPLEFT", cf.blacklist40, "TOPLEFT", 0, -30);
cf.blacklist50:SetHitRectInsets(0, -40, 0, 0);
cf.blacklist50.Text:SetText("50+");
cf.blacklist50.Text:SetTextColor(1, 0.82, 0);
cf.blacklist50:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["d50"]);
end)
cf.blacklist50:SetScript("OnClick", function(self)
    cfilters["d50"] = not cfilters["d50"];
    self:SetChecked(cfilters["d50"]);
end)
--blacklist 50 editbox
cf.blacklist50editbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklist50editbox:ClearAllPoints();
cf.blacklist50editbox:SetPoint("LEFT", cf.blacklist50, "RIGHT", 44, 1);
cf.blacklist50editbox:SetWidth(285);
cf.blacklist50editbox:SetHeight(25);
cf.blacklist50editbox:SetAutoFocus(false);
cf.blacklist50editbox:ClearFocus();
cf.blacklist50editbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "d50");
end)
cf.blacklist50editbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "d50");
end)
cf.blacklist50editbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "d50");
    self:SetText(listtostring("d50"));
end)
cf.blacklist50editbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("d50"));
end)
cf.blacklist50editbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("d50"));
    GameTooltip:Show();
end)
cf.blacklist50editbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist 60
cf.blacklist60 = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklist60:ClearAllPoints();
cf.blacklist60:SetPoint("TOPLEFT", cf.blacklist50, "TOPLEFT", 0, -30);
cf.blacklist60:SetHitRectInsets(0, -40, 0, 0);
cf.blacklist60.Text:SetText("60+");
cf.blacklist60.Text:SetTextColor(1, 0.82, 0);
cf.blacklist60:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["d60"]);
end)
cf.blacklist60:SetScript("OnClick", function(self)
    cfilters["d60"] = not cfilters["d60"];
    self:SetChecked(cfilters["d60"]);
end)
--blacklist 60 editbox
cf.blacklist60editbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklist60editbox:ClearAllPoints();
cf.blacklist60editbox:SetPoint("LEFT", cf.blacklist60, "RIGHT", 44, 1);
cf.blacklist60editbox:SetWidth(285);
cf.blacklist60editbox:SetHeight(25);
cf.blacklist60editbox:SetAutoFocus(false);
cf.blacklist60editbox:ClearFocus();
cf.blacklist60editbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "d60");
end)
cf.blacklist60editbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "d60");
end)
cf.blacklist60editbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "d60");
    self:SetText(listtostring("d60"));
end)
cf.blacklist60editbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("d60"));
end)
cf.blacklist60editbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("d60"));
    GameTooltip:Show();
end)
cf.blacklist60editbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--blacklist diy
cf.blacklistdiy = CreateFrame("CheckButton", nil, cf, "InterfaceOptionsCheckButtonTemplate");
cf.blacklistdiy:ClearAllPoints();
cf.blacklistdiy:SetPoint("TOPLEFT", cf.blacklist60, "TOPLEFT", 0, -30);
cf.blacklistdiy:SetHitRectInsets(0, -40, 0, 0);
cf.blacklistdiy.Text:SetText("额外");
cf.blacklistdiy.Text:SetTextColor(1, 0.82, 0);
cf.blacklistdiy:SetScript("OnShow", function(self)
    self:SetChecked(cfilters["diy"]);
end)
cf.blacklistdiy:SetScript("OnClick", function(self)
    cfilters["diy"] = not cfilters["diy"];
    self:SetChecked(cfilters["diy"]);
end)
--blacklist diy editbox
cf.blacklistdiyeditbox = CreateFrame("EditBox", nil, cf, "InputBoxTemplate");
cf.blacklistdiyeditbox:ClearAllPoints();
cf.blacklistdiyeditbox:SetPoint("LEFT", cf.blacklistdiy, "RIGHT", 44, 1);
cf.blacklistdiyeditbox:SetWidth(285);
cf.blacklistdiyeditbox:SetHeight(25);
cf.blacklistdiyeditbox:SetAutoFocus(false);
cf.blacklistdiyeditbox:ClearFocus();
cf.blacklistdiyeditbox:SetScript("OnEnterPressed", function(self)
    savelist(self, "diy");
end)
cf.blacklistdiyeditbox:SetScript("OnEscapePressed", function(self)
    savelist(self, "diy");
end)
cf.blacklistdiyeditbox:SetScript("OnEditFocusLost", function(self)
    savelist(self, "diy");
    self:SetText(listtostring("diy"));
end)
cf.blacklistdiyeditbox:SetScript("OnShow", function(self)
    self:SetText(listtostring("diy"));
end)
cf.blacklistdiyeditbox:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_TOP");
    GameTooltip:AddLine(listtostring("diy"));
    GameTooltip:Show();
end)
cf.blacklistdiyeditbox:SetScript("OnLeave", function()
    GameTooltip:Hide();
end)

--command
function ChannelFilters_SlashHandler()
    if not cf:IsShown() then
        cf:Show();
    else
        cf:Hide();
    end
end
SlashCmdList["ChannelFilters"] = ChannelFilters_SlashHandler;
SLASH_ChannelFilters1 = "/channelfilters";
SLASH_ChannelFilters2 = "/cf";
