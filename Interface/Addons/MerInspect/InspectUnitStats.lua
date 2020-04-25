
-------------------------------------
-- 裝備屬性統計
-- @Author: M
-- @DepandsOn: InspectUnit.lua
-------------------------------------

local LibEvent = LibStub:GetLibrary("LibEvent.7000")
local LibItemInfo = LibStub:GetLibrary("LibItemInfo.1000")
local LibItemStats = LibStub:GetLibrary("LibItemStats.1000")
local GetStatsName = LibItemStats.GetStatsName

local function ShowSupportedItemStatsFrame(frame, unit)
    if frame.statsFrame2 and frame.statsFrame2:IsShown() then frame.statsFrame2:Hide() end
    if (not frame.statsFrame) then
        if (LibItemStats:IsSupported()) then
            local statsFrame = CreateFrame("Frame", nil, frame, "ClassicStatsFrameTemplate")
            frame.statsFrame = statsFrame
            frame:HookScript("OnHide", function(self)
                self.statsFrame:Hide()
                LibEvent:trigger("TogglePlayerStatsFrame", self.statsFrame, false)
            end)
        end
    end
    local stats = LibItemStats:GetUnitStats(unit)
    stats.ilevel = LibItemInfo:GetUnitItemLevel(unit)
    C_Timer.After(0.05, function()
        if (InspectFrame and InspectFrame:IsVisible()) then
            stats = LibItemStats:GetUnitStats(unit)
            stats.ilevel = LibItemInfo:GetUnitItemLevel(unit)
        end
    end)
    C_Timer.After(0.1, function()
        if (InspectFrame and InspectFrame:IsVisible()) then
            stats = LibItemStats:GetUnitStats(unit)
            stats.ilevel = LibItemInfo:GetUnitItemLevel(unit)
            frame.statsFrame:SetStats(stats):Show()
            LibEvent:trigger("TogglePlayerStatsFrame", frame.statsFrame, true, false)
        end
    end)
end

local rescolors = {
    ResistanceFire = {0.9,0.1,0.1},
    ResistanceNature = {0,0.9,0.3},
    ResistanceFrost = {0,0.7,0.7},
    ResistanceArcane = {1,0.3,0.9},
    ResistanceShadow = {0.7,0,0.4},
    ResistanceHoly = {0.9,0.5,0.1}
}

local function DefaultItemStatsFrame(frame, unit)
    if frame.statsFrame and frame.statsFrame:IsShown() then frame.statsFrame:Hide(); LibEvent:trigger("TogglePlayerStatsFrame", frame.statsFrame, false) end
    if (not frame.statsFrame2) then
        local statsFrame2 = CreateFrame("Frame", nil, frame, "InsetFrameTemplate3")
        statsFrame2:SetSize(200, 157)
        statsFrame2:ClearAllPoints()
        statsFrame2:SetPoint("TOPLEFT", frame, "TOPRIGHT", 0, -1)
        for i = 1, 32 do
            statsFrame2["stat"..i] = CreateFrame("FRAME", nil, statsFrame2, "CharacterStatFrameTemplate")
            statsFrame2["stat"..i]:EnableMouse(false)
            statsFrame2["stat"..i]:SetWidth(200)
            statsFrame2["stat"..i]:SetPoint("TOPLEFT", 0, -18*i+13)
            statsFrame2["stat"..i].Background:SetVertexColor(0, 0, 0)
            statsFrame2["stat"..i].Background:SetPoint("LEFT", 0, 0)
            statsFrame2["stat"..i].Background:SetPoint("RIGHT", 0, 0)
            statsFrame2["stat"..i].Background:SetHeight(25)
            statsFrame2["stat"..i].Value:SetPoint("RIGHT", -64, 0)
            statsFrame2["stat"..i].Value:SetFont(ChatFontNormal:GetFont());
            statsFrame2["stat"..i].PlayerValue = statsFrame2["stat"..i]:CreateFontString(nil, "ARTWORK", "ChatFontNormal")
            statsFrame2["stat"..i].PlayerValue:SetPoint("LEFT", statsFrame2["stat"..i], "RIGHT", -54, 0)
        end
        local mask = statsFrame2:CreateTexture()
        mask:SetTexture("Interface\\Tooltips\\UI-Tooltip-Background")
        mask:SetPoint("TOPLEFT", statsFrame2, "TOPRIGHT", -58, -3)
        mask:SetPoint("BOTTOMRIGHT", statsFrame2, "BOTTOMRIGHT", -3, 2)
        mask:SetBlendMode("ADD")
        mask:SetGradientAlpha("VERTICAL", 0.1, 0.4, 0.4, 0.8, 0.1, 0.2, 0.2, 0.8)
        frame.statsFrame2 = statsFrame2
        -- frame:HookScript("OnHide", function(self)
        --     self.statsFrame2:Hide()
        --     LibEvent:trigger("TogglePlayerStatsFrame", self.statsFrame2, false)
        -- end)
    end
    for i = 1, 32 do
        frame.statsFrame2["stat"..i].Label:SetText("")
        frame.statsFrame2["stat"..i].Value:SetText("")
        frame.statsFrame2["stat"..i].PlayerValue:SetText("")
    end
    -- local inspectStats, playerStats = {}, {}
    local inspectStats = LibItemStats:GetUnitStats(unit)
    local playerStats = LibItemStats:GetUnitStats("player")
    -- local inspectItemLevel = LibItemInfo:GetUnitItemLevel(unit, inspectStats)
    -- local playerItemLevel  = LibItemInfo:GetUnitItemLevel("player", playerStats)
    local inspectItemLevel = LibItemInfo:GetUnitItemLevel(unit)
    local playerItemLevel  = LibItemInfo:GetUnitItemLevel("player")
    C_Timer.After(0.05, function()
        if (InspectFrame and InspectFrame:IsVisible()) then
            inspectStats = LibItemStats:GetUnitStats(unit)
            playerStats = LibItemStats:GetUnitStats("player")
            inspectItemLevel = LibItemInfo:GetUnitItemLevel(unit)
            playerItemLevel  = LibItemInfo:GetUnitItemLevel("player")
        end
    end)
    C_Timer.After(0.1, function()
        if (InspectFrame and InspectFrame:IsVisible()) then
            inspectStats = LibItemStats:GetUnitStats(unit)
            playerStats = LibItemStats:GetUnitStats("player")
            inspectItemLevel = LibItemInfo:GetUnitItemLevel(unit)
            playerItemLevel  = LibItemInfo:GetUnitItemLevel("player")

            local baseInfo = {}
            table.insert(baseInfo, {label = LEVEL, iv = UnitLevel(unit), pv = UnitLevel("player") })
            table.insert(baseInfo, {label = STAT_AVERAGE_ITEM_LEVEL, iv = format("%.1f",inspectItemLevel), pv = format("%.1f",playerItemLevel) })
            local index = 1
            for _, v in pairs(baseInfo) do
                frame.statsFrame2["stat"..index].Label:SetText(v.label)
                frame.statsFrame2["stat"..index].Label:SetFont(ChatFontNormal:GetFont());
                frame.statsFrame2["stat"..index].Label:SetTextColor(0.2, 1, 1)
                frame.statsFrame2["stat"..index].Value:SetText(v.iv)
                frame.statsFrame2["stat"..index].Value:SetTextColor(0, 0.7, 0.9)
                frame.statsFrame2["stat"..index].PlayerValue:SetText(v.pv)
                frame.statsFrame2["stat"..index].PlayerValue:SetTextColor(0, 0.7, 0.9)
                frame.statsFrame2["stat"..index].Background:SetShown(index%2~=0)
                frame.statsFrame2["stat"..index]:Show()
                index = index + 1
            end

            local _, uclass = UnitClass(unit)
            local _, pclass = UnitClass("player")
            -- for k, v in pairs(LibItemStatsLocale) do
            for i = 1, #LibItemStatsName["FULL"] do
                local v = LibItemStatsName["FULL"][i]
                -- if (inspectStats.static[k] or playerStats.static[k]) and not string.find(k, "Resistance") then
                -- if inspectStats.static[v] and not string.find(v, "Resistance") then
                if inspectStats.static[v] or (uclass == pclass and playerStats.static[v]) then
                    if string.find(v, "Crit") or string.find(v, "Hit") or v == "Dodge" or v == "Block" or v == "Parry" then
                        if inspectStats.static[v] and inspectStats.static[v].value then
                            inspectStats.static[v].value = inspectStats.static[v].value.."%"
                        end
                        if playerStats.static[v] and playerStats.static[v].value then
                            playerStats.static[v].value = playerStats.static[v].value.."%"
                        end
                    end
                    frame.statsFrame2["stat"..index].Label:SetText(LibItemStatsLocale[v])
                    frame.statsFrame2["stat"..index].Label:SetFont(ChatFontNormal:GetFont());
                    frame.statsFrame2["stat"..index].Value:SetText(inspectStats.static[v] and inspectStats.static[v].value or "-")
                    frame.statsFrame2["stat"..index].PlayerValue:SetText(playerStats.static[v] and playerStats.static[v].value or "-")
                    frame.statsFrame2["stat"..index].Background:SetShown(index%2~=0)
                    frame.statsFrame2["stat"..index]:Show()
                    if rescolors[v] then
                        frame.statsFrame2["stat"..index].Label:SetTextColor(unpack(rescolors[v]))
                    else
                        frame.statsFrame2["stat"..index].Label:SetTextColor(unpack({1,0.75,0}))
                    end
                    index = index + 1
                end
            end

            -- for k, v in pairs(playerStats.static) do
            --     if (not inspectStats.static[k]) then
            --         if string.find(k, "Crit") or string.find(k, "Hit") or k == "Dodge" or k == "Block" or k == "Parry" then
            --             playerStats.static[k].value = inspectStats.static[k].value.."%"
            --         end
            --         frame.statsFrame2["stat"..index].Label:SetText(LibItemStatsLocale[k] or k)
            --         frame.statsFrame2["stat"..index].Label:SetFont(ChatFontNormal:GetFont());
            --         frame.statsFrame2["stat"..index].Value:SetText("-")
            --         frame.statsFrame2["stat"..index].PlayerValue:SetText(playerStats.static[k].value)
            --         frame.statsFrame2["stat"..index].Background:SetShown(index%2~=0)
            --         frame.statsFrame2["stat"..index]:Show()
            --         if rescolors[k] then
            --             frame.statsFrame2["stat"..index].Label:SetTextColor(unpack(rescolors[k]))
            --         else
            --             frame.statsFrame2["stat"..index].Label:SetTextColor(unpack({1,0.75,0}))
            --         end
            --         index = index + 1
            --     end
            -- end

            if inspectStats.suit then
                for _, v in ipairs(inspectStats.suit) do
                    frame.statsFrame2["stat"..index].Label:SetText(v.colorStr..v.value.."|r")
                    frame.statsFrame2["stat"..index].Label:SetFont(ChatFontNormal:GetFont());
                    frame.statsFrame2["stat"..index].Value:SetText("")
                    frame.statsFrame2["stat"..index].PlayerValue:SetText("")
                    frame.statsFrame2["stat"..index].Background:SetShown(index%2~=0)
                    frame.statsFrame2["stat"..index]:Show()
                    index = index + 1
                end
            end

            frame.statsFrame2:SetHeight(index*18-10)
            while (frame.statsFrame2["stat"..index]) do
                frame.statsFrame2["stat"..index]:Hide()
                index = index + 1
            end

            if not frame.statsFrame2:IsShown() then frame.statsFrame2:Show() end
        end
    end)
end

hooksecurefunc("ShowInspectItemListFrame", function(unit, parent, itemLevel, maxLevel)
    local frame = parent.inspectFrame
    if (not frame) then return end
    if (unit == "player") then return end
    if (MerInspectDB and not MerInspectDB.ShowItemStats) then
        return
    end
    if (LibItemStats:IsSupported()) and (MerInspectDB.ShowItemStats == false or (MerInspectDB.ShowItemStats == true and MerInspectDB.ShowItemStatsNaive == false)) then
        ShowSupportedItemStatsFrame(frame, unit)
        if select(2, frame:GetPoint()):GetName() == "UIParent" then
            frame:ClearAllPoints()
            frame:SetPoint("TOPLEFT", frame, "TOPRIGHT", 0, -1)
        end
    else
        DefaultItemStatsFrame(frame, unit)
        if select(2, frame:GetPoint()):GetName() ~= "UIParent" then
            frame:ClearAllPoints()
            frame:SetPoint("TOPLEFT", UIParent, "BOTTOMRIGHT", 0, 0)
        end
    end
end)
