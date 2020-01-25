local resolveUnitID

do
    local unitPrefix = {}
    local unitSuffix = {}

    do
        local unit, pet = "player", "pet"
        unitPrefix[unit] = unit
        unitPrefix[unit .. "target"] = unit
        unitPrefix[unit .. "targettarget"] = unit
        unitSuffix[unit] = ""
        unitSuffix[unit .. "target"] = "-target"
        unitSuffix[unit .. "targettarget"] = "-target-target"
        unitPrefix[pet] = unit
        unitPrefix[pet .. "target"] = unit
        unitPrefix[pet .. "targettarget"] = unit
        unitSuffix[pet] = "-pet"
        unitSuffix[pet .. "target"] = "-pet-target"
        unitSuffix[pet .. "targettarget"] = "-pet-target-target"
    end

    for i = 1, MAX_PARTY_MEMBERS do
        local unit, pet = "party" .. i, "partypet" .. i
        unitPrefix[unit] = unit
        unitPrefix[unit .. "target"] = unit
        unitPrefix[unit .. "targettarget"] = unit
        unitSuffix[unit] = ""
        unitSuffix[unit .. "target"] = "-target"
        unitSuffix[unit .. "targettarget"] = "-target-target"
        unitPrefix[pet] = unit
        unitPrefix[pet .. "target"] = unit
        unitPrefix[pet .. "targettarget"] = unit
        unitSuffix[pet] = "-pet"
        unitSuffix[pet .. "target"] = "-pet-target"
        unitSuffix[pet .. "targettarget"] = "-pet-target-target"
    end

    for i = 1, MAX_RAID_MEMBERS do
        local unit, pet = "raid" .. i, "raidpet" .. i
        unitPrefix[unit] = unit
        unitPrefix[unit .. "target"] = unit
        unitPrefix[unit .. "targettarget"] = unit
        unitSuffix[unit] = ""
        unitSuffix[unit .. "target"] = "-target"
        unitSuffix[unit .. "targettarget"] = "-target-target"
        unitPrefix[pet] = unit
        unitPrefix[pet .. "target"] = unit
        unitPrefix[pet .. "targettarget"] = unit
        unitSuffix[pet] = "-pet"
        unitSuffix[pet .. "target"] = "-pet-target"
        unitSuffix[pet .. "targettarget"] = "-pet-target-target"
    end

    function resolveUnitID(unit)
        if not unit then
            return nil
        end

        local prefix, suffix = unitPrefix[unit], unitSuffix[unit]

        if not UnitExists(prefix) then
            return nil, prefix, suffix
        end

        return GetUnitName(prefix, true) .. suffix, prefix, suffix
    end
end

local frames = {}
setmetatable(frames, {__mode = "k"})

local sizeChanged = false
local groupRosterUpdate = false
local applyProfile = nil

do
    local _CompactRaidFrameContainer_ReadyToUpdate = CompactRaidFrameContainer_ReadyToUpdate

    function CompactRaidFrameContainer_ReadyToUpdate(self)
        return _CompactRaidFrameContainer_ReadyToUpdate(self) and not InCombatLockdown()
    end
end

do
    local _CompactRaidFrameContainer_OnSizeChanged = CompactRaidFrameContainer_OnSizeChanged

    function CompactRaidFrameContainer_OnSizeChanged(self)
        if not InCombatLockdown() then
            _CompactRaidFrameContainer_OnSizeChanged(self)
        else
            sizeChanged = true
        end
    end

    CompactRaidFrameContainer:SetScript("OnSizeChanged", CompactRaidFrameContainer_OnSizeChanged)
end

do
    function CompactRaidGroup_UpdateUnits(frame)
        if not InCombatLockdown() then
            local groupIndex = frame:GetID()
            local frameIndex = 1

            if IsInRaid() then
                for i = 1, MAX_RAID_MEMBERS do
                    local unit = "raid" .. i
                    local raidID = UnitInRaid(unit)

                    if raidID then
                        local name, rank, subgroup = GetRaidRosterInfo(raidID)

                        if subgroup == groupIndex and frameIndex <= MEMBERS_PER_RAID_GROUP then
                            local unitFrame = _G[frame:GetName() .. "Member" .. frameIndex]

                            CompactUnitFrame_SetUnit(unitFrame, nil)
                            CompactUnitFrame_SetUnit(unitFrame, unit)

                            frameIndex = frameIndex + 1
                        end
                    end
                end

                for i = frameIndex, MEMBERS_PER_RAID_GROUP do
                    local unitFrame = _G[frame:GetName() .. "Member" .. i]
                    CompactUnitFrame_SetUnit(unitFrame, nil)
                end
            end
        end
    end
end

do
    local _CompactUnitFrameProfiles_ApplyProfile = CompactUnitFrameProfiles_ApplyProfile

    function CompactUnitFrameProfiles_ApplyProfile(profile)
        if not InCombatLockdown() then
            return _CompactUnitFrameProfiles_ApplyProfile(profile)
        else
            applyProfile = profile
        end
    end
end

local hooks_CompactUnitFrame_UpdateAll = {}
local hooks_CompactUnitFrame_UpdateVisible = {}
local hooks_CompactUnitFrame_SetUnit = {}
local hooks_CastingBarFrame_SetUnit = {}

local function CompactUnitFrame_Hide(frame)
    frame.background:Hide()

    frame.healthBar:SetValue(0)

    if frame.powerBar then
        frame.powerBar:SetValue(0)
        frame.powerBar.background:Hide()
    end

    frame.name:Hide()

    frame.selectionHighlight:Hide()

    if frame.aggroHighlight then
        frame.aggroHighlight:Hide()
    end

    if frame.LoseAggroAnim then
        frame.LoseAggroAnim:Stop()
    end

    if frame.statusText then
        frame.statusText:Hide()
    end

    if frame.myHealPrediction then
        frame.myHealPrediction:Hide()
    end

    if frame.otherHealPrediction then
        frame.otherHealPrediction:Hide()
    end

    if frame.totalAbsorb then
        frame.totalAbsorb:Hide()
    end

    if frame.totalAbsorbOverlay then
        frame.totalAbsorbOverlay:Hide()
    end

    if frame.overAbsorbGlow then
        frame.overAbsorbGlow:Hide()
    end

    if frame.myHealAbsorb then
        frame.myHealAbsorb:Hide()
    end

    if frame.myHealAbsorbLeftShadow then
        frame.myHealAbsorbLeftShadow:Hide()
    end

    if frame.myHealAbsorbRightShadow then
        frame.myHealAbsorbRightShadow:Hide()
    end

    if frame.overHealAbsorbGlow then
        frame.overHealAbsorbGlow:Hide()
    end

    if frame.roleIcon then
        frame.roleIcon:Hide()
    end

    if frame.roleIcon then
        frame.roleIcon:Hide()
    end

    if frame.readyCheckIcon then
        frame.readyCheckIcon:Hide()
    end

    CompactUnitFrame_HideAllBuffs(frame)
    CompactUnitFrame_HideAllDebuffs(frame)
    CompactUnitFrame_HideAllDispelDebuffs(frame)

    if frame.centerStatusIcon then
        frame.centerStatusIcon:Hide()
    end

    if frame.classificationIndicator then
        frame.classificationIndicator:Hide()
    end

    if frame.LevelFrame then
        if frame.LevelFrame.levelText then
            frame.LevelFrame.levelText:Hide()
        end

        if frame.LevelFrame.highLevelTexture then
            frame.LevelFrame.highLevelTexture:Hide()
        end
    end

    if frame.WidgetContainer then
        frame.WidgetContainer:UnregisterForWidgetSet()
    end

    if frame.castBar then
        frame.castBar:Hide()
    end
end

local function CompactUnitFrame_UpdateAllSecure(frame)
    if not InCombatLockdown() then
        if CompactUnitFrame_UpdateInVehicle then
            CompactUnitFrame_UpdateInVehicle(frame)
        end

        CompactUnitFrame_UpdateVisible(frame)
    else
        if UnitExists(frame.unit) or UnitExists(frame.displayedUnit) then
            if not frame.unitExists then
                frame.newUnit = true
            end

            frame.unitExists = true

            frame.background:Show()

            if frame.powerBar then
                frame.powerBar.background:Show()
            end
        else
            if CompactUnitFrame_ClearWidgetSet then
                CompactUnitFrame_ClearWidgetSet(frame)
            end

            CompactUnitFrame_Hide(frame)

            frame.unitExists = false
        end

        for _, hookfunc in ipairs(hooks_CompactUnitFrame_UpdateVisible) do
            hookfunc(frame)
        end
    end

    if UnitExists(frame.displayedUnit) then
        CompactUnitFrame_UpdateMaxHealth(frame)
        CompactUnitFrame_UpdateHealth(frame)
        CompactUnitFrame_UpdateHealthColor(frame)
        CompactUnitFrame_UpdateMaxPower(frame)
        CompactUnitFrame_UpdatePower(frame)
        CompactUnitFrame_UpdatePowerColor(frame)
        CompactUnitFrame_UpdateName(frame)
        CompactUnitFrame_UpdateSelectionHighlight(frame)

        if CompactUnitFrame_UpdateAggroHighlight then
            CompactUnitFrame_UpdateAggroHighlight(frame)
        end

        if CompactUnitFrame_UpdateAggroFlash then
            CompactUnitFrame_UpdateAggroFlash(frame)
        end

        CompactUnitFrame_UpdateHealthBorder(frame)
        CompactUnitFrame_UpdateInRange(frame)
        CompactUnitFrame_UpdateStatusText(frame)

        if CompactUnitFrame_UpdateHealPrediction then
            CompactUnitFrame_UpdateHealPrediction(frame)
        end

        CompactUnitFrame_UpdateRoleIcon(frame)
        CompactUnitFrame_UpdateReadyCheck(frame)
        CompactUnitFrame_UpdateAuras(frame)
        CompactUnitFrame_UpdateCenterStatusIcon(frame)
        CompactUnitFrame_UpdateClassificationIndicator(frame)

        if CompactUnitFrame_UpdateLevel then
            CompactUnitFrame_UpdateLevel(frame)
        end

        if CompactUnitFrame_UpdateWidgetSet then
            CompactUnitFrame_UpdateWidgetSet(frame)
        end
    end

    for _, hookfunc in ipairs(hooks_CompactUnitFrame_UpdateAll) do
        hookfunc(frame)
    end
end

if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
    if CompactUnitFrame_UpdateInVehicle then
        hooksecurefunc(
            "CompactUnitFrame_UpdateInVehicle",
            function(frame)
                if frames[frame] == nil then
                    return
                end

                local unit = frame:GetAttribute("unit")
                local unitTarget = resolveUnitID(unit)

                if unitTarget then
                    frame:SetAttribute("unit", unitTarget)
                end
            end
        )
    end
end

hooksecurefunc(
    "CompactUnitFrame_UpdateVisible",
    function(frame)
        if frames[frame] == nil then
            return
        end

        if resolveUnitID(frame.unit) then
            if frame.unitExists then
                frame.background:Show()

                if frame.powerBar then
                    frame.powerBar.background:Show()
                end
            else
                frame:Show()

                CompactUnitFrame_Hide(frame)
            end
        end
    end
)

if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
    hooksecurefunc(
        "CompactUnitFrame_UpdateRoleIcon",
        function(frame)
            if frames[frame] == nil then
                return
            end

            if not frame.roleIcon then
                return
            end

            local raidID = UnitInRaid(frame.unit)

            if not (frame.optionTable.displayRaidRoleIcon and raidID and select(10, GetRaidRosterInfo(raidID))) then
                local size = frame.roleIcon:GetHeight()
                frame.roleIcon:Hide()
                frame.roleIcon:SetSize(1, size)
            end
        end
    )
end

hooksecurefunc(
    "CompactUnitFrame_SetUnit",
    function(frame, unit)
        if frames[frame] == nil then
            if frame:IsForbidden() or not frame:GetName() or not frame:GetName():find("^Compact") then
                return
            end
        end

        assert(not InCombatLockdown())

        local updateAll = false

        local unitTarget = resolveUnitID(unit)

        if unitTarget then
            if frame:GetAttribute("unit") == unit then
                if not frame.onUpdateFrame then
                    frame.onUpdateFrame = CreateFrame("Frame")
                end

                frame.onUpdateFrame.func = function(updateFrame, elapsed)
                    if frame.displayedUnit then
                        CompactUnitFrame_UpdateAllSecure(frame)
                    end
                end

                frame.onUpdateFrame.func2 = function(updateFrame, event, arg1)
                    if event == "GROUP_ROSTER_UPDATE" then
                        CompactUnitFrame_UpdateAllSecure(frame)
                    elseif event == "PLAYER_ENTERING_WORLD" then
                        CompactUnitFrame_UpdateAllSecure(frame)
                    elseif event == "PLAYER_REGEN_ENABLED" then
                        CompactUnitFrame_UpdateAllSecure(frame)
                    else
                        local unitMatches = arg1 == frame.unit or arg1 == frame.displayedUnit

                        if unitMatches then
                            if event == "UNIT_PET" then
                                CompactUnitFrame_UpdateAllSecure(frame)
                            end
                        end

                        if unitMatches or arg1 == "player" then
                            if event == "UNIT_ENTERED_VEHICLE" or event == "UNIT_EXITED_VEHICLE" then
                                CompactUnitFrame_UpdateAllSecure(frame)
                            end
                        end
                    end
                end

                if frame.onUpdateFrame.doUpdate then
                    frame.onUpdateFrame:SetScript("OnUpdate", frame.onUpdateFrame.func)
                else
                    frame.onUpdateFrame:SetScript("OnUpdate", nil)
                end

                frame.onUpdateFrame:SetScript("OnEvent", frame.onUpdateFrame.func2)

                frame.onUpdateFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
                frame.onUpdateFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
                frame.onUpdateFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
                frame.onUpdateFrame:RegisterEvent("UNIT_PET")

                frame:UnregisterEvent("GROUP_ROSTER_UPDATE")
                frame:UnregisterEvent("PLAYER_ENTERING_WORLD")
                frame:UnregisterEvent("PLAYER_REGEN_ENABLED")
                frame:UnregisterEvent("UNIT_PET")

                if UnitHasVehicleUI then
                    frame:UnregisterEvent("UNIT_ENTERED_VEHICLE")
                    frame:UnregisterEvent("UNIT_EXITED_VEHICLE")

                    frame.onUpdateFrame:RegisterEvent("UNIT_ENTERED_VEHICLE")
                    frame.onUpdateFrame:RegisterEvent("UNIT_EXITED_VEHICLE")
                end

                CompactUnitFrame_RegisterEvents(frame)

                frame:SetScript("OnEnter", UnitFrame_OnEnter)
            else
                updateAll = true
            end

            frame:SetAttribute("unit", unitTarget)
        else
            assert(not UnitExists(unit))

            if unit then
                frame.unit = nil
                frame.displayedUnit = nil
                frame.inVehicle = false
                frame.readyCheckStatus = nil
                frame.readyCheckDecay = nil
                frame.isTanking = nil
                frame.hideCastbar = frame.optionTable.hideCastbar
                frame.healthBar.healthBackground = nil
                frame.hasValidVehicleDisplay = nil

                frame:SetAttribute("unit", nil)

                CompactUnitFrame_UnregisterEvents(frame)

                if frame.castBar then
                    CastingBarFrame_SetUnit(frame.castBar, nil, nil, nil)
                end

                updateAll = true
            end

            if frame.onUpdateFrame then
                frame.onUpdateFrame.doUpdate = nil
                frame.onUpdateFrame:UnregisterAllEvents()
                frame.onUpdateFrame:SetScript("OnEvent", nil)
                frame.onUpdateFrame:SetScript("OnUpdate", nil)
            end

            frame.background:Show()

            if frame.powerBar then
                frame.powerBar.background:Show()
            end

            frame:SetScript("OnEnter", nil)
        end

        if frames[frame] == nil then
            updateAll = true
        end

        frames[frame] = unitTarget or false

        if updateAll then
            CompactUnitFrame_UpdateAll(frame)
        end
    end
)

hooksecurefunc(
    "CompactRaidGroup_GenerateForGroup",
    function(groupIndex)
        assert(not InCombatLockdown())

        local frame = _G["CompactRaidGroup" .. groupIndex]
        CompactRaidGroup_UpdateUnits(frame)
    end
)

hooksecurefunc(
    "CompactPartyFrame_Generate",
    function()
        assert(not InCombatLockdown())

        local name = CompactPartyFrame:GetName()
        local unitFrame = _G[name .. "Member1"]

        CompactUnitFrame_SetUnit(unitFrame, nil)
        CompactUnitFrame_SetUnit(unitFrame, "player")

        for i = 1, MEMBERS_PER_RAID_GROUP do
            if i > 1 then
                local unit = "party" .. (i - 1)
                local unitFrame = _G[name .. "Member" .. i]

                CompactUnitFrame_SetUnit(unitFrame, nil)

                if UnitExists(unit) then
                    CompactUnitFrame_SetUnit(unitFrame, unit)
                end
            end
        end
    end
)

hooksecurefunc(
    "CompactUnitFrame_SetUpdateAllEvent",
    function(frame, updateAllEvent, updateAllFilter)
        if frames[frame] == nil then
            if frame:IsForbidden() or not frame:GetName() or not frame:GetName():find("^Compact") then
                return
            end
        end

        frame.updateAllEvent = nil
        frame.updateAllFilter = nil

        if updateAllEvent == "GROUP_ROSTER_UPDATE" then
            frame:UnregisterEvent(updateAllEvent)
        end
    end
)

hooksecurefunc(
    "CompactUnitFrame_SetUpdateAllOnUpdate",
    function(frame, doUpdate)
        if frames[frame] == nil then
            if frame:IsForbidden() or not frame:GetName() or not frame:GetName():find("^Compact") then
                return
            end
        end

        if frame.onUpdateFrame then
            frame.onUpdateFrame.doUpdate = doUpdate
        end
    end
)

do
    local petIDs = {["player"] = "pet"}

    for i = 1, MAX_PARTY_MEMBERS do
        petIDs["party" .. i] = "partypet" .. i
    end

    for i = 1, MAX_RAID_MEMBERS do
        petIDs["raid" .. i] = "raidpet" .. i
    end

    local groupNone = {"player"}
    local groupParty = {"player"}
    local groupRaid = {}

    for i = 1, MAX_PARTY_MEMBERS do
        tinsert(groupParty, "party" .. i)
    end

    for i = 1, MAX_RAID_MEMBERS do
        tinsert(groupRaid, "raid" .. i)
    end

    local eventFrame = CreateFrame("Frame")
    eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
    eventFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
    eventFrame:RegisterEvent("UNIT_PET")
    eventFrame:SetScript(
        "OnEvent",
        function(_, event, arg1)
            if event == "PLAYER_REGEN_ENABLED" then
                if applyProfile then
                    CompactUnitFrameProfiles_ApplyProfile(applyProfile)
                elseif groupRosterUpdate then
                    CompactRaidFrameContainer_TryUpdate(CompactRaidFrameContainer)
                elseif sizeChanged then
                    CompactRaidFrameContainer_OnSizeChanged(CompactRaidFrameContainer)
                end

                applyProfile = nil
                groupRosterUpdate = false
                sizeChanged = false
            elseif event == "GROUP_ROSTER_UPDATE" or event == "UNIT_PET" and CompactRaidFrameContainer.displayPets and (arg1 == "player" or strsub(arg1, 1, 4) == "raid" or strsub(arg1, 1, 5) == "party") then
                if InCombatLockdown() then
                    local unitIDs = {}
                    local group

                    if GetNumGroupMembers() == 0 then
                        group = groupNone
                    elseif not IsInRaid() then
                        group = groupParty
                    else
                        group = groupRaid
                    end

                    for _, unit in ipairs(group) do
                        if UnitExists(unit) then
                            local unitName = GetUnitName(unit, true)
                            unitIDs[unitName] = unit
                            unitIDs[unitName .. "-target"] = unit .. "target"
                            unitIDs[unitName .. "-target-target"] = unit .. "targettarget"
                            unitIDs[unitName .. "-pet"] = petIDs[unit]
                            unitIDs[unitName .. "-pet-target"] = petIDs[unit] .. "target"
                            unitIDs[unitName .. "-pet-target-target"] = petIDs[unit] .. "targettarget"
                        end
                    end

                    for frame, unitTarget in pairs(frames) do
                        if unitTarget then
                            local unit = unitIDs[unitTarget]
                            local currentUnit = frame.unit

                            if currentUnit ~= unit then
                                local displayedUnit = frame.displayedUnit

                                if not unit or currentUnit == displayedUnit then
                                    displayedUnit = unit
                                end

                                frame.unit = unit
                                frame.displayedUnit = displayedUnit

                                if not unit or not currentUnit then
                                    frame.inVehicle = false
                                    frame.readyCheckStatus = nil
                                    frame.readyCheckDecay = nil
                                    frame.isTanking = nil
                                    frame.hideCastbar = frame.optionTable.hideCastbar
                                    frame.healthBar.healthBackground = nil
                                end

                                if unit then
                                    local displayUnitTarget = frame:GetAttribute("unit")
                                    frame.displayedUnit = unitTarget == displayUnitTarget and unit or unitIDs[displayUnitTarget]
                                end

                                frame.hasValidVehicleDisplay = frame.unit ~= frame.displayedUnit

                                if unit then
                                    CompactUnitFrame_RegisterEvents(frame)
                                else
                                    CompactUnitFrame_UnregisterEvents(frame)
                                end

                                if not unit then
                                    if frame.onUpdateFrame then
                                        frame.onUpdateFrame:SetScript("OnEvent", nil)
                                        frame.onUpdateFrame:SetScript("OnUpdate", nil)
                                    end
                                elseif not currentUnit then
                                    if frame.onUpdateFrame then
                                        if frame.onUpdateFrame.doUpdate then
                                            frame.onUpdateFrame:SetScript("OnUpdate", frame.onUpdateFrame.func)
                                        else
                                            frame.onUpdateFrame:SetScript("OnUpdate", nil)
                                        end

                                        frame.onUpdateFrame:SetScript("OnEvent", frame.onUpdateFrame.func2)
                                    end
                                end

                                if unit and not frame.hideCastbar then
                                    if not currentUnit then
                                        if frame.castBar then
                                            CastingBarFrame_SetUnit(frame.castBar, unit, false, true)
                                        end
                                    else
                                        if frame.castBar then
                                            frame.castBar.unit = unit
                                            frame.castBar:RegisterUnitEvent("UNIT_SPELLCAST_START", unit)
                                            frame.castBar:RegisterUnitEvent("UNIT_SPELLCAST_STOP", unit)
                                            frame.castBar:RegisterUnitEvent("UNIT_SPELLCAST_FAILED", unit)

                                            for _, hookfunc in ipairs(hooks_CastingBarFrame_SetUnit) do
                                                hookfunc(frame, unit, frame.castBar.showTradeSkills, frame.castBar.showShield)
                                            end
                                        end
                                    end
                                else
                                    if frame.castBar then
                                        CastingBarFrame_SetUnit(frame.castBar, nil, nil, nil)
                                    end
                                end

                                if unit then
                                    frame:SetScript("OnEnter", UnitFrame_OnEnter)
                                else
                                    frame:SetScript("OnEnter", nil)
                                end

                                CompactUnitFrame_UpdateAllSecure(frame)

                                for _, hookfunc in ipairs(hooks_CompactUnitFrame_SetUnit) do
                                    hookfunc(frame, unit)
                                end
                            end
                        end
                    end

                    groupRosterUpdate = true
                end
            end
        end
    )
end

hooksecurefunc(
    "hooksecurefunc",
    function(table, functionName, hookfunc)
        if type(table) ~= "table" then
            hookfunc = functionName
            functionName = table
            table = _G
        end

        if table == _G then
            if functionName == "CompactUnitFrame_UpdateAll" then
                tinsert(hooks_CompactUnitFrame_UpdateAll, hookfunc)
            elseif functionName == "CompactUnitFrame_UpdateVisible" then
                tinsert(hooks_CompactUnitFrame_UpdateVisible, hookfunc)
            elseif functionName == "CompactUnitFrame_SetUnit" then
                tinsert(hooks_CompactUnitFrame_SetUnit, hookfunc)
            elseif functionName == "CastingBarFrame_SetUnit" then
                tinsert(hooks_CastingBarFrame_SetUnit, hookfunc)
            end
        end
    end
)
