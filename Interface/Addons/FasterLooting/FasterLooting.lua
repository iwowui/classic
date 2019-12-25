-- File: FasterLooting.lua
-- Name: FasterLooting
-- Author: cannon
-- Description: Auto loots all items without the delay currently in Classic
-- Version: 1.1.1

-- Time delay
local delay = 0
local DEBOUNCE_INTERVAL = 0.3

-- Fast loot function
function FastLoot()
    if GetTime() - delay >= DEBOUNCE_INTERVAL then
        delay = GetTime()
        if GetCVarBool("autoLootDefault") ~= IsModifiedClick("AUTOLOOTTOGGLE") then
            for i = GetNumLootItems(), 1, -1 do
                LootSlot(i)
            end
            delay = GetTime()
        end
    end
end

-- event frame
local faster = CreateFrame("Frame")
faster:RegisterEvent("LOOT_READY")
faster:SetScript("OnEvent", FastLoot)

--设置
local fl = CreateFrame('Frame')
fl:RegisterEvent("ADDON_LOADED");
fl:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        local name = ...;
        if name == "FastLoot" then
            if not FasterLootingDB then FasterLootingDB = {}; end
            if not FasterLootingDB["enable"] then LowHPPulserDB["enable"] = 1; end
            FasterLooting_OptionPanel_OnShow();
            fl:UnregisterEvent("ADDON_LOADED");
        end
    end
end)

if (GetLocale() == "zhCN") then
    FasterLooting_Enable = "启用自动拾取";
elseif (GetLocale() == "zhTW") then
    FasterLooting_Enable = "启用自動拾取";
else
    FasterLooting_Enable = "Enable FasterLooting";
end

--设置面板
FasterLooting_OptionsFrame = CreateFrame("Frame", "FasterLooting_OptionsFrame", UIParent);
FasterLooting_OptionsFrame.name = "FasterLooting";
InterfaceOptions_AddCategory(FasterLooting_OptionsFrame);
FasterLooting_OptionsFrame:SetScript("OnShow", function()
    FasterLooting_OptionPanel_OnShow();
end)

--插件介绍
local info = FasterLooting_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
info:ClearAllPoints();
info:SetPoint("TOPLEFT", 16, -16);
info:SetText("FasterLooting "..GetAddOnMetadata("FasterLooting", "Version"));

--启用
local FasterLooting_OptionsFrame_Enable = CreateFrame("CheckButton", "FasterLooting_OptionsFrame_Enable", FasterLooting_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
FasterLooting_OptionsFrame_Enable:ClearAllPoints();
FasterLooting_OptionsFrame_Enable:SetPoint("TOPLEFT", info, "TOPLEFT", 0, -50);
FasterLooting_OptionsFrame_Enable:SetHitRectInsets(0, -100, 0, 0);
FasterLooting_OptionsFrame_EnableText:SetText(FasterLooting_Enable);
FasterLooting_OptionsFrame_Enable:SetScript("OnClick", function(self)
    FasterLootingDB["enable"] = 1 - FasterLootingDB["enable"];
    self:SetChecked(FasterLootingDB["enable"]==1);
end)
