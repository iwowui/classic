
local function AntiCrab()
    if ExtraConfiguration["anticrab"] == 1 then
        if GetCVar("overrideArchive") ~= 0 then
            SetCVar("overrideArchive", 0);
        end
    else
        if GetCVar("overrideArchive") ~= 1 then
            SetCVar("overrideArchive", 1);
        end
    end
end

local function BlueShaman()
    if ExtraConfiguration["blueshaman"] == 1 then
        RAID_CLASS_COLORS['SHAMAN']["r"] = 0.0;
        RAID_CLASS_COLORS['SHAMAN']["g"] = 0.44;
        RAID_CLASS_COLORS['SHAMAN']["b"] = 0.87;
        RAID_CLASS_COLORS['SHAMAN']["colorStr"] = "ff0070DE";
    else
        RAID_CLASS_COLORS['SHAMAN']["r"] = 0.96;
        RAID_CLASS_COLORS['SHAMAN']["g"] = 0.55;
        RAID_CLASS_COLORS['SHAMAN']["b"] = 0.73;
        RAID_CLASS_COLORS['SHAMAN']["colorStr"] = "ffF58CBA";
    end
end

local switch = CreateFrame('Frame')
switch:RegisterEvent("ADDON_LOADED");
switch:RegisterEvent("VARIABLES_LOADED")
switch:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        local name = ...;
        if name == "!!iCenter" then
            if not ExtraConfiguration then ExtraConfiguration = {}; end
            if not ExtraConfiguration["anticrab"] then ExtraConfiguration["anticrab"] = 1; end
            if not ExtraConfiguration["blueshaman"] then ExtraConfiguration["blueshaman"] = 0; end
            Switch_OptionPanel_OnShow();
            switch:UnregisterEvent("ADDON_LOADED");
        end
    elseif event == "VARIABLES_LOADED" then
        --自动取消敏感词过滤
        if GetCVar("profanityFilter") ~= 0 then
            SetCVar("profanityFilter", 0)
        end
        -- if GetCVar("overrideArchive") ~= 0 then
        --     SetCVar("overrideArchive", 0)
        -- end
        AntiCrab();
        BlueShaman();
        switch:UnregisterEvent("VARIABLES_LOADED");
    end
end)

--option panel
local SWITCH_ANTICRAB, SWITCH_BLUESHAMAN;
if GetLocale() == "zhCN" then
    SWITCH_INFO            = "杂项设置";
    SWITCH_ANTICRAB        = "原汁原味（重启游戏后生效）";
    SWITCH_BLUESHAMAN      = "蓝色萨满";
elseif GetLocale() == "zhTW" then
    SWITCH_INFO            = "雜項設置";
    SWITCH_ANTICRAB        = "原汁原味（重啟遊戲後生效）";
    SWITCH_BLUESHAMAN      = "藍色薩滿";
else
    SWITCH_INFO            = "options";
    SWITCH_ANTICRAB        = "original taste (Effective after game restarted)";
    SWITCH_BLUESHAMAN      = "blue shaman";
end

Switch_OptionsFrame = CreateFrame("Frame", "Switch_OptionsFrame", UIParent);
Switch_OptionsFrame.name = "!!!"..SWITCH_INFO.."!!!";
InterfaceOptions_AddCategory(Switch_OptionsFrame);
Switch_OptionsFrame:SetScript("OnShow", function()
    Switch_OptionPanel_OnShow();
end)

do
    local SwitchTitle = Switch_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
    SwitchTitle:ClearAllPoints();
    SwitchTitle:SetPoint("TOPLEFT", 16, -16);
    SwitchTitle:SetText(SWITCH_INFO);

    local Switch_AnticrabEnable = CreateFrame("CheckButton", "Switch_AnticrabEnable", Switch_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
    Switch_AnticrabEnable:ClearAllPoints();
    Switch_AnticrabEnable:SetPoint("TOPLEFT", SwitchTitle, "TOPLEFT", 0, -30);
    Switch_AnticrabEnable:SetHitRectInsets(0, -100, 0, 0);
    Switch_AnticrabEnableText:SetText(SWITCH_ANTICRAB);
    Switch_AnticrabEnable:SetScript("OnClick", function(self)
        ExtraConfiguration["anticrab"] = 1 - ExtraConfiguration["anticrab"];
        AntiCrab();
        self:SetChecked(ExtraConfiguration["anticrab"]==1);
    end)

    local Switch_BlueshamanEnable = CreateFrame("CheckButton", "Switch_BlueshamanEnable", Switch_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
    Switch_BlueshamanEnable:ClearAllPoints();
    Switch_BlueshamanEnable:SetPoint("TOPLEFT", Switch_AnticrabEnable, "TOPLEFT", 0, -30);
    Switch_BlueshamanEnable:SetHitRectInsets(0, -100, 0, 0);
    Switch_BlueshamanEnableText:SetText(SWITCH_BLUESHAMAN);
    Switch_BlueshamanEnable:SetScript("OnClick", function(self)
        ExtraConfiguration["blueshaman"] = 1 - ExtraConfiguration["blueshaman"];
        BlueShaman();
        self:SetChecked(ExtraConfiguration["blueshaman"]==1);
    end)
end

function Switch_OptionPanel_OnShow()
    Switch_AnticrabEnable:SetChecked(ExtraConfiguration["anticrab"]==1);
    Switch_BlueshamanEnable:SetChecked(ExtraConfiguration["blueshaman"]==1);
end

--buff来源
local CastFrom = "From: ";
if GetLocale() == "zhCN" then
    CastFrom = "来自：";
elseif GetLocale() == "zhTW" then
    CastFrom = "來自：";
end
hooksecurefunc(GameTooltip, "SetUnitAura", function(self, unit, index, filter)
    local caster = select(7, UnitAura(unit, index, filter));
    if caster and UnitExists(caster) then
        GameTooltip:AddLine(CastFrom..UnitName(caster), .65, .85, 1, 1);
        GameTooltip:Show();
    end
end)

-- --自动回收内存
-- local eventcount = 0
-- local recovery = CreateFrame("Frame")
-- recovery:RegisterAllEvents()
-- recovery:SetScript("OnEvent", function(self, event)
-- 	eventcount = eventcount + 1
-- 	if InCombatLockdown() then return end
-- 	if eventcount > 6000 or event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_REGEN_ENABLED" then
-- 		collectgarbage("collect")
-- 		eventcount = 0
-- 	end
-- end)

-- --新职业颜色
-- if GetLocale() == "zhCN" then
--     LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] = "死亡骑士"
--     LOCALIZED_CLASS_NAMES_MALE["DEMONHUNTER"] = "恶魔猎手"
--     LOCALIZED_CLASS_NAMES_MALE["MONK"] = "武僧"
--     LOCALIZED_CLASS_NAMES_FEMALE["DEATHKNIGHT"] = "死亡骑士"
--     LOCALIZED_CLASS_NAMES_FEMALE["DEMONHUNTER"] = "恶魔猎手"
--     LOCALIZED_CLASS_NAMES_FEMALE["MONK"] = "武僧"
-- elseif GetLocale() == "zhTW" then
--     LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] = "死亡騎士"
--     LOCALIZED_CLASS_NAMES_MALE["DEMONHUNTER"] = "惡魔獵人"
--     LOCALIZED_CLASS_NAMES_MALE["MONK"] = "武僧"
--     LOCALIZED_CLASS_NAMES_FEMALE["DEATHKNIGHT"] = "死亡騎士"
--     LOCALIZED_CLASS_NAMES_FEMALE["DEMONHUNTER"] = "惡魔獵人"
--     LOCALIZED_CLASS_NAMES_FEMALE["MONK"] = "武僧"
-- else
--     LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] = "Death Knight"
--     LOCALIZED_CLASS_NAMES_MALE["DEMONHUNTER"] = "Demon Hunter"
--     LOCALIZED_CLASS_NAMES_MALE["MONK"] = "Monk"
--     LOCALIZED_CLASS_NAMES_FEMALE["DEATHKNIGHT"] = "Death Knight"
--     LOCALIZED_CLASS_NAMES_FEMALE["DEMONHUNTER"] = "Demon Hunter"
--     LOCALIZED_CLASS_NAMES_FEMALE["MONK"] = "Monk"
-- end

-- RAID_CLASS_COLORS["DEATHKNIGHT"] = CreateColor(0.77, 0.12, 0.23, 1);
-- RAID_CLASS_COLORS["DEATHKNIGHT"].colorStr = RAID_CLASS_COLORS["DEATHKNIGHT"]:GenerateHexColor()
-- RAID_CLASS_COLORS["DEMONHUNTER"] = CreateColor(0.64, 0.19, 0.79, 1);
-- RAID_CLASS_COLORS["DEMONHUNTER"].colorStr = RAID_CLASS_COLORS["DEMONHUNTER"]:GenerateHexColor()
-- RAID_CLASS_COLORS["MONK"] = CreateColor(0, 1, 0.59, 1);
-- RAID_CLASS_COLORS["MONK"].colorStr = RAID_CLASS_COLORS["MONK"]:GenerateHexColor()

do
    local function get_panel_name(panel)
        local tp = type(panel)
        local cat = INTERFACEOPTIONS_ADDONCATEGORIES
        if tp == "string" then
            for i = 1, #cat do
                local p = cat[i]
                if p.name == panel then
                    if p.parent then
                        return get_panel_name(p.parent)
                    else
                        return panel
                    end
                end
            end
        elseif tp == "table" then
            for i = 1, #cat do
                local p = cat[i]
                if p == panel then
                    if p.parent then
                        return get_panel_name(p.parent)
                    else
                        return panel.name
                    end
                end
            end
        end
    end

    local function InterfaceOptionsFrame_OpenToCategory_Fix(panel)
        if doNotRun or InCombatLockdown() then return end
        local panelName = get_panel_name(panel)
        if not panelName then return end -- if its not part of our list return early
        local noncollapsedHeaders = {}
        local shownpanels = 0
        local mypanel
        local t = {}
        local cat = INTERFACEOPTIONS_ADDONCATEGORIES
        for i = 1, #cat do
            local panel = cat[i]
            if not panel.parent or noncollapsedHeaders[panel.parent] then
                if panel.name == panelName then
                    panel.collapsed = true
                    t.element = panel
                    InterfaceOptionsListButton_ToggleSubCategories(t)
                    noncollapsedHeaders[panel.name] = true
                    mypanel = shownpanels + 1
                end
                if not panel.collapsed then
                    noncollapsedHeaders[panel.name] = true
                end
                shownpanels = shownpanels + 1
            end
        end
        local Smin, Smax = InterfaceOptionsFrameAddOnsListScrollBar:GetMinMaxValues()
        if shownpanels > 15 and Smin < Smax then
            local val = (Smax/(shownpanels-15))*(mypanel-2)
            InterfaceOptionsFrameAddOnsListScrollBar:SetValue(val)
        end
        doNotRun = true
        InterfaceOptionsFrame_OpenToCategory(panel)
        doNotRun = false
    end

    hooksecurefunc("InterfaceOptionsFrame_OpenToCategory", InterfaceOptionsFrame_OpenToCategory_Fix)

    local orig = AddonTooltip_Update
    _G.AddonTooltip_Update = function(owner, ...) 
        if AddonList and AddonList:IsMouseOver() then
            local id = owner and owner.GetID and owner:GetID()
            if id and id > 0 and id <= GetNumAddOns() then
                orig(owner, ...) 
                return
            end
        end
        --print("ADDON LIST FIX ACTIVATED") 
    end

    local frame = CreateFrame("Frame")
    frame:RegisterEvent("ADDON_LOADED")
    frame:SetScript("OnEvent", function(self, event, name)
        if name == "Blizzard_Collections" then
            for i = 1, 3 do
                local button = _G["PetJournalLoadoutPet"..i]
                if button and button.dragButton then
                    button.dragButton:RegisterForClicks("LeftButtonUp")
                end
            end
            self:UnregisterAllEvents()
        end
    end)
end
