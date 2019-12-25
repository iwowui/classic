--[[
    Townsfolk Tracker
]]--
TownsfolkTracker = LibStub("AceAddon-3.0"):NewAddon("TownsfolkTracker", "AceEvent-3.0")
local Maps = LibStub("HereBeDragons-2.0")
local Pins = LibStub("HereBeDragons-Pins-2.0")
local L = LibStub("AceLocale-3.0"):GetLocale("TownsfolkTracker")
local LDB = LibStub("LibDataBroker-1.1")
local LDBIcon = LibStub("LibDBIcon-1.0")

-- Lua APis
local pairs, format = pairs, format

-- WoW APIs
local CreateFrame = CreateFrame
local InterfaceOptionsFrame, InterfaceOptionsFrame_OpenToCategory = InterfaceOptionsFrame, InterfaceOptionsFrame_OpenToCategory

-- Map button
local setMapButtonTooltip = function(tooltip)
    tooltip:AddLine(L["Townsfolk Tracker"]);
    tooltip:AddDoubleLine(L["Click"]..":", L["Choose Townsfolk"], 0.25, 0.78, 0.92, 1, 1, 1)
    tooltip:AddDoubleLine(L["Right Click"]..":", L["Open Options"], 0.25, 0.78, 0.92, 1, 1, 1)
end

local handleMapButtonClick = function (self, button)
    if button == "RightButton" then
        if not InterfaceOptionsFrame:IsShown() then
            InterfaceOptionsFrame_OpenToCategory("Townsfolk Tracker")
        else
            InterfaceOptionsFrame:Hide()
        end
    else
        TownsfolkTracker:OpenTracker()
    end
end

-- Minimap Icon
local minimapIconLDB = LDB:NewDataObject("TownsfolkTracker", {
    type = "launcher",
    text = L["Townsfolk Tracker"],
    icon = [[Interface\MINIMAP\TRACKING\None]],
    OnTooltipShow = setMapButtonTooltip,
    OnClick = handleMapButtonClick,
})

-- Slash command
SLASH_TOWNSFOLK1 = '/townsfolktracker'
SLASH_TOWNSFOLK2 = '/townsfolk'
SLASH_TOWNSFOLK3 = '/tt'
SlashCmdList["TOWNSFOLK"] = function(msg)
    InterfaceOptionsFrame_OpenToCategory("Townsfolk Tracker")
end

-- Initialize addon
function TownsfolkTracker:OnInitialize()
    -- Register options
    self.db = LibStub("AceDB-3.0"):New("TownsfolkTrackerDB", TF_SETTINGS_DEFAULTS, true)

    -- create interface options panel
    TF_SETTINGS_MENU.handler = TownsfolkTracker
    LibStub("AceConfig-3.0"):RegisterOptionsTable("TownsfolkTracker", TF_SETTINGS_MENU)
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("TownsfolkTracker", "Townsfolk Tracker")
end

-- Getters and Setters for options
function TownsfolkTracker:IsShowMinimapButton(info)
    return self.db.profile.showMinimapButton
end

function TownsfolkTracker:ToggleShowMinimapButton(info, value)
    self.db.profile.showMinimapButton = value
    if (value) then
        LDBIcon:Show("TownsfolkTracker")
    else
        LDBIcon:Hide("TownsfolkTracker")
    end
end

function TownsfolkTracker:IsShowMapButton(info)
    return self.db.profile.showMapButton
end

function TownsfolkTracker:ToggleShowMapButton(info, value)
    self.db.profile.showMapButton = value
    self:ShowMapButton()
end

function TownsfolkTracker:IsShowAllClassTrainers(info)
    return self.db.profile.showAllClassTrainers
end

function TownsfolkTracker:ToggleShowAllClassTrainers(info, value)
    self.db.profile.showAllClassTrainers = value
    self:DrawMapIcons()
end

function TownsfolkTracker:IsShowInstanceOnWorldMap(info)
    return self.db.profile.showInstanceOnWorldMap
end

function TownsfolkTracker:ToggleShowInstanceOnWorldMap(info, value)
    self.db.profile.showInstanceOnWorldMap = value
    self:DrawMapIcons()
end

function TownsfolkTracker:GetMinimapPos(info)
    return self.db.profile.minimapPos
end

function TownsfolkTracker:SetMinimapPos(info, value)
    self.db.profile.minimapPos = value
end

function TownsfolkTracker:IsUseWorldMap(info)
    return self.db.profile.useWorldMap
end

function TownsfolkTracker:ToggleUseWorldMap(info, value)
    self.db.profile.useWorldMap = value
    self:DrawMapIcons()
    self:ShowMapButton()
end

function TownsfolkTracker:ResetTracking(info)
    --noinspection GlobalCreationOutsideO
    tfTrackingList = TownsfolkUtil_CopyTable(TF_DEFAULT_TRACKING)
    DEFAULT_CHAT_FRAME:AddMessage("|cffffd000"..L["Townsfolk Tracker"].."|r - "..L["Tracking list reset."])
    self:DrawMapIcons()
end

-- On Enable of addon
function TownsfolkTracker:OnEnable()
    -- Register minimap icon
    LDBIcon:Register("TownsfolkTracker", minimapIconLDB, self.db.profile);
    -- Register map icon
    self:RegisterMapButton()

    -- Register events
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    Maps.RegisterCallback("TownsfolkTracker", "PlayerZoneChanged", function (event, currentPlayerUiMapID, currentPlayerUiMapType)
        TownsfolkTracker:DrawDungeonMinimapIcons(currentPlayerUiMapID)
    end)
end

function TownsfolkTracker:PLAYER_ENTERING_WORLD()
    -- only run on first ui load
    if (tfTrackingMenu == nil) then
        TownsfolkTracker:CreateTrackerList()
        TownsfolkTracker:CreateIcons()
        TownsfolkTracker:DrawMapIcons()

        if (TownsfolkTracker:IsShowMinimapButton()) then
            LDBIcon:Show("TownsfolkTracker")
        else
            LDBIcon:Hide("TownsfolkTracker")
        end
    end
end

function TownsfolkTracker:GetRecommendedLevel(recommendedLevel)
    local r, g, b
    local playerLevel = TownsfolkUtil_GetPlayerLevel()
    local lowLevel = recommendedLevel[1]
    local highLevel = recommendedLevel[2]
    local recommendedGroup = TownsfolkUtil_GetPlayerDungeonRecommendation(playerLevel, lowLevel, highLevel)

    -- gray for over leveled
    if (recommendedGroup == 0) then
        r, g, b = 0.5, 0.5, 0.5
    end
    -- green for high level
    if (recommendedGroup == 1) then
        r, g, b = 0.25, 0.746, 0.25
    end
    -- yellow for recommended level
    if (recommendedGroup == 2) then
        r, g, b = 1, 1, 0
    end
    -- orange for low level
    if (recommendedGroup == 3) then
        r, g, b = 1, 0.5, 0.25
    end
    -- red for underleveled
    if (recommendedGroup == 4) then
        r, g, b = 1, 0, 0
    end

    return format("%d - %d", lowLevel, highLevel), r, g, b
end

function TownsfolkTracker:GenerateTooltip(title, point, folktype, inside, prefix)
    GameTooltip:SetOwner(UIParent, "ANCHOR_CURSOR_RIGHT")

    if (TownsfolkUtil_IsInstanceType(folktype)) then
        local name = L[point.name]
        if (prefix) then
            name = L[prefix]..": "..name
        end
        GameTooltip:SetText(name)

        -- instance min level
        if (point.minLevel) then
            local r, g, b = 1, 1, 1
            local playerLevel = TownsfolkUtil_GetPlayerLevel()
            if (playerLevel < point.minLevel) then
                r, g, b = 1, 0, 0
            end
            GameTooltip:AddDoubleLine(L["Required Level"]..":", point.minLevel, 0.8, 0.8, 0.8, r, g, b)
        end
        -- instance rec level
        if (point.recommendedLevel) then
            local recommendedLevel, r, g, b = self:GetRecommendedLevel(point.recommendedLevel)
            GameTooltip:AddDoubleLine(L["Recommended Level"]..":", recommendedLevel, 0.8, 0.8, 0.8, r, g, b)
        end
        -- instance raid size
        if (point.raidSize) then
            GameTooltip:AddDoubleLine(L["Raid Size"]..":", point.raidSize, 0.8, 0.8, 0.8, 1, 1, 1)
        end
        if (point.entrance and not inside or point.group) then
            GameTooltip:AddLine("("..L["Cave Entrance"]..")", 0.6, 0.6, 0.6);
        end

        -- instance groups
        if (point.group) then
            if (point.group.dungeons) then
                GameTooltip:AddLine(' ')
                GameTooltip:AddLine(L["Dungeons"], 0.235, 0.725, 0.812)
                for _, dungeon in pairs(point.group.dungeons) do
                    local recommendedLevel, r, g, b = self:GetRecommendedLevel(dungeon.recommendedLevel)
                    GameTooltip:AddDoubleLine(L[dungeon.name], format(L["Lv %s"], recommendedLevel), 0.8, 0.8, 0.8, r, g, b)
                end
            end

            if (point.group.raids) then
                GameTooltip:AddLine(' ')
                GameTooltip:AddLine(L["Raids"], 0.07, 0.647, 0.137)
                for _, raid in pairs(point.group.raids) do
                    GameTooltip:AddDoubleLine(L[raid.name], format(L["%d Players"], raid.raidSize), 0.8, 0.8, 0.8, 1, 1, 1)
                end
            end
        end
    else
        if TownsfolkUtil_IsTrainerType(folktype) then
            GameTooltip:SetText(L[TownsfolkUtil_GetTrainerTitle(point.profession or point.class)])
        else
            GameTooltip:SetText(title)
        end

        -- npc name
        if (point.name) then
            GameTooltip:AddLine(L[point.name], 1, 1, 1)
        end
        -- npc tag
        if (point.tag) then
            GameTooltip:AddLine("<"..L[point.tag]..">", 0.8, 0.8, 0.8)
        end
        -- profession level
        if ((point.level or point.branch) and point.profession) then
            GameTooltip:AddLine("<"..L[TownsfolkUtil_GetTrainerTag(point.profession, point.level, point.branch)]..">", 0.8, 0.8, 0.8)
        end
        -- wanders a path
        if (point.wanders) then
            GameTooltip:AddLine("("..L["Wanders this path"]..")", 0.6, 0.6, 0.6)
        end
        if (point.temporary) then
            GameTooltip:AddLine("("..L["Not always here"]..")", 0.6, 0.6, 0.6)
        end
    end
end

function TownsfolkTracker:CreateMapMarker(iconType, point, townsfolk, folktype, inside, prefix)
    local marker = CreateFrame("Button", nil, UIParent)
    marker:SetFrameStrata("HIGH")

    -- marker size
    if (iconType == TF_ATLAS_ICON) then
        local size = 10
        if (point.iconSize) then
            size = size * point.iconSize
        elseif (townsfolk.iconSize) then
            size = size * townsfolk.iconSize
        end
        marker:SetWidth(size)
        marker:SetHeight(size)
    else
        local size = 12
        if (point.iconSize) then
            size = size * point.iconSize
        elseif (townsfolk.iconSize) then
            size = size * townsfolk.iconSize
        end
        marker:SetWidth(size)
        marker:SetHeight(size)
    end

    -- icon
    local texture = marker:CreateTexture(nil, "HIGH")
    texture:SetAllPoints(marker)
    texture:SetTexture(townsfolk.icon)
    if (point.faction ~= nil) then
        if (point.faction == TF_FACTION.ALLIANCE and townsfolk.allianceIcon ~= nil) then
            texture:SetTexture(townsfolk.allianceIcon)
        end
        if (point.faction == TF_FACTION.HORDE and townsfolk.hordeIcon ~= nil) then
            texture:SetTexture(townsfolk.hordeIcon)
        end
    end
    if (folktype == TF_FLIGHTMASTER and point.faction == nil) then
        texture:SetTexture(townsfolk.neutralIcon)
    end
    if (TownsfolkUtil_IsInstanceType(folktype) and point.group and point.group.dungeons and point.group.raids) then
        texture:SetTexture(townsfolk.groupIcon)
    end
    -- manual icon override
    if (point.icon) then
        texture:SetTexture(point.icon)
    end
    marker.texture = texture
    marker:SetPoint("CENTER", 0, 0)
    marker:Hide()

    -- tooltip scripts
    marker:SetScript("OnEnter", function(self)
        TownsfolkTracker:GenerateTooltip(townsfolk.title, point, folktype, inside, prefix)
        GameTooltip:Show()
    end)

    marker:SetScript("OnLeave", function(self)
        GameTooltip:Hide()
    end)

    return marker
end

function TownsfolkTracker:CreateIcons()
    for folktype, townsfolk in pairs(TOWNSFOLK) do
        for _, point in pairs(townsfolk.points) do
            point.minimapNode = self:CreateMapMarker(TF_MINIMAP_ICON, point, townsfolk, folktype)
            if (point.entrance) then
                point.entranceNode = self:CreateMapMarker(TF_MINIMAP_ICON, point, townsfolk, folktype, true)
            elseif (point.group) then
                if (point.group.dungeons) then
                    for _, dungeon in pairs(point.group.dungeons) do
                        -- FIXME: temp condition
                        if (dungeon.zone) then
                            dungeon.entranceNode = self:CreateMapMarker(TF_MINIMAP_ICON, dungeon, townsfolk, folktype, true, point.group.prefix and point.name)
                        end
                    end
                end
                if (point.group.raids) then
                    for _, raid in pairs(point.group.raids) do
                        -- FIXME: temp condition
                        if (raid.zone) then
                            raid.entranceNode = self:CreateMapMarker(TF_MINIMAP_ICON, raid, townsfolk, folktype, true, point.group.prefix and point.name)
                        end
                    end
                end
            end
            point.mapNode = self:CreateMapMarker(TF_ATLAS_ICON, point, townsfolk, folktype)
            if (point.altEntrance) then
                point.minimapNodeAlt = self:CreateMapMarker(TF_MINIMAP_ICON, point, townsfolk, folktype)
                point.mapNodeAlt = self:CreateMapMarker(TF_ATLAS_ICON, point, townsfolk, folktype)
            end
        end
    end
end

function TownsfolkTracker:DrawMapIcons()
    -- remove all icons
    Pins:RemoveAllMinimapIcons("TownsfolkTracker")
    Pins:RemoveAllMinimapIcons("TownsfolkTrackerInternal")
    Pins:RemoveAllWorldMapIcons("TownsfolkTracker")

    -- redraw visible icons
    for folktype, townsfolk in pairs(TOWNSFOLK) do
        -- do not loop through types not tracked
        -- we need to loop through every profession since each has its own tracking option
        if tfTrackingList[folktype] or folktype == TF_PROFESSION_TRAINER then
            for _, point in pairs(townsfolk.points) do
                local displayIcon = true
                -- faction restriction
                displayIcon = (point.faction == nil or point.faction == TownsfolkUtil_GetPlayerFaction())
                -- class restriction
                --  restrict trainer by class, but not if "ShowAllTrainers"
                if (displayIcon and folktype == TF_CLASS_TRAINER and not self:IsShowAllClassTrainers()) then
                    displayIcon = TownsfolkUtil_GetPlayerClass() == point.class
                end
                --  restrict other nodes by class, e.g. Druid flight paths
                if (displayIcon and folktype ~= TF_CLASS_TRAINER and point.class) then
                    displayIcon = TownsfolkUtil_GetPlayerClass() == point.class
                end
                -- hide all untracked profession types
                if (displayIcon and folktype == TF_PROFESSION_TRAINER) then
                    displayIcon = tfTrackingList[point.profession]
                end
                -- only show based on valid restrictions
                if (displayIcon) then
                    -- minimap icons
                    Pins:AddMinimapIconMap("TownsfolkTracker", point.minimapNode, point.zone, point.x, point.y, true, false)
                    if (TownsfolkUtil_IsInstanceType(folktype) and point.altEntrance) then
                        Pins:AddMinimapIconMap("TownsfolkTracker", point.minimapNodeAlt, point.altEntrance.zone, point.altEntrance.x, point.altEntrance.y, true, false)
                    end

                    -- map icons (don't show internal instance entrances on map at all)
                    if self:IsUseWorldMap() then
                        local worldMapShowFlag = HBD_PINS_WORLDMAP_SHOW_PARENT
                        if (TownsfolkUtil_IsInstanceType(folktype) and self:IsShowInstanceOnWorldMap(nil)) then
                            worldMapShowFlag = HBD_PINS_WORLDMAP_SHOW_WORLD
                        end
                        Pins:AddWorldMapIconMap("TownsfolkTracker", point.mapNode, point.zone, point.x, point.y, worldMapShowFlag)
                        if (TownsfolkUtil_IsInstanceType(folktype) and point.altEntrance) then
                            Pins:AddWorldMapIconMap("TownsfolkTracker", point.mapNodeAlt, point.altEntrance.zone, point.altEntrance.x, point.altEntrance.y, HBD_PINS_WORLDMAP_SHOW_PARENT)
                        end
                    end
                end
            end
        end
    end

    -- redraw internal instance icons
    local mapId, x = Maps:GetPlayerZone()
    TownsfolkTracker:DrawDungeonMinimapIcons(mapId)
end

local INSTANCE_DISTANCE = 0.025

-- runs when player changes maps
function TownsfolkTracker:DrawDungeonMinimapIcons(mapId)
    local x, y = Maps:GetPlayerZonePosition()
    Pins:RemoveAllMinimapIcons("TownsfolkTrackerInternal")
    for folktype, townsfolk in pairs(TOWNSFOLK) do
        -- we're only interested in instances
        if tfTrackingList[folktype] and TownsfolkUtil_IsInstanceType(folktype) then
            for _, point in pairs(townsfolk.points) do
                -- point is in the same map as player
                if (point.entrance and mapId == point.entrance.zone) then
                    -- find the distance
                    local distance, deltaX, deltaY = Maps:GetWorldDistance(mapId, x, y, point.entrance.x, point.entrance.y)
                    if (distance <= INSTANCE_DISTANCE) then
                        Pins:AddMinimapIconMap("TownsfolkTrackerInternal", point.entranceNode, point.entrance.zone, point.entrance.x, point.entrance.y, true, true)
                    end
                end
                if (point.group) then
                    -- group dungeon entrances
                    if (point.group.dungeons) then
                        for _, dungeon in pairs(point.group.dungeons) do
                            -- FIXME: temp condition
                            if (dungeon.entranceNode and mapId == dungeon.zone) then
                                -- find the distance
                                local distance, deltaX, deltaY = Maps:GetWorldDistance(mapId, x, y, dungeon.x, dungeon.y)
                                if (distance <= INSTANCE_DISTANCE) then
                                    Pins:AddMinimapIconMap("TownsfolkTrackerInternal", dungeon.entranceNode, dungeon.zone, dungeon.x, dungeon.y, true, true)
                                end
                            end
                        end
                    end
                    -- group raid entrances
                    if (point.group.raids) then
                        for _, raid in pairs(point.group.raids) do
                            -- FIXME: temp condition
                            if (raid.entranceNode and mapId == raid.zone) then
                                -- find the distance
                                local distance, deltaX, deltaY = Maps:GetWorldDistance(mapId, x, y, raid.x, raid.y)
                                if (distance <= INSTANCE_DISTANCE) then
                                    Pins:AddMinimapIconMap("TownsfolkTrackerInternal", raid.entranceNode, raid.zone, raid.x, raid.y, true, true)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function TownsfolkTracker:CreateTrackerList()
    local dropDown = CreateFrame("Frame", "tfTrackingMenu", UIParent, "UIDropDownMenuTemplate")

    Lib_UIDropDownMenu_Initialize(dropDown, function(self, level, menuList)
        -- None checkbox
        local info = Lib_UIDropDownMenu_CreateInfo()

        if ((level or 1) == 1) then
            -- none checked?
            local noneChecked = true
            local allChecked = true
            local allProfessions = true
            for key, val in pairs(tfTrackingList) do
                if (val) then
                    noneChecked = false
                else
                    if (TownsfolkUtil_ContainsValue(TF_PROFESSION, key)) then
                        allProfessions = false
                    end
                    allChecked = false
                end
            end
            info.text, info.checked, info.icon, info.isNotRadio, info.arg1, info.func = " "..L["All"], allChecked, [[Interface\Addons\TownsfolkTracker\Icons\Empty.tga]], true, "ALL", self.SetValue
            Lib_UIDropDownMenu_AddButton(info)
            info.text, info.checked, info.arg1 = " "..L["None"], noneChecked, ""
            Lib_UIDropDownMenu_AddButton(info)

            Lib_UIDropDownMenu_AddSeparator({})

            -- Townsfolk types
            Lib_UIDropDownMenu_AddButton(TownsfolkUtil_MenuLabel(L["Townsfolk"]))

            info = Lib_UIDropDownMenu_CreateInfo()
            for folktype, townsfolk in TownsfolkUtil_PairsByKeys(TOWNSFOLK) do
                if not TownsfolkUtil_IsInstanceType(folktype) then
                    info.text = " "..townsfolk.title
                    info.icon = folktype ~= TF_PROFESSION_TRAINER and townsfolk.icon or nil
                    if (folktype == TF_PROFESSION_TRAINER) then
                        info.checked = allProfessions
                    else
                        info.checked = tfTrackingList[folktype] or false
                    end
                    info.isNotRadio = true
                    info.keepShownOnClick = folktype ~= TF_PROFESSION_TRAINER
                    info.arg1 = folktype
                    info.func = self.SetValue
                    info.menuList = folktype
                    info.hasArrow = folktype == TF_PROFESSION_TRAINER
                    Lib_UIDropDownMenu_AddButton(info)
                end
            end
            -- Instances types
            Lib_UIDropDownMenu_AddSeparator({})
            Lib_UIDropDownMenu_AddButton(TownsfolkUtil_MenuLabel(L["Instances"]))
            local info = Lib_UIDropDownMenu_CreateInfo()
            for folktype, townsfolk in TownsfolkUtil_PairsByKeys(TOWNSFOLK) do
                if TownsfolkUtil_IsInstanceType(folktype) then
                    info.text = " "..townsfolk.title
                    info.icon = townsfolk.icon
                    info.checked = tfTrackingList[folktype] or false
                    info.isNotRadio = true
                    info.keepShownOnClick = true
                    info.arg1 = folktype
                    info.func = self.SetValue
                    Lib_UIDropDownMenu_AddButton(info)
                end
            end
        elseif (level == 2) then
            if (menuList == TF_PROFESSION_TRAINER) then
                -- primary professions
                Lib_UIDropDownMenu_AddButton(TownsfolkUtil_MenuLabel(L["Primary Professions"]), level)
                local info = Lib_UIDropDownMenu_CreateInfo()
                for _, profType in pairs(TF_PRIMARY_PROFESSION) do
                    info.text = " "..L[profType]
                    info.icon = TOWNSFOLK[TF_PROFESSION_TRAINER].icon
                    info.checked = tfTrackingList[profType] or false
                    info.isNotRadio = true
                    info.keepShownOnClick = true
                    info.arg1 = profType
                    info.func = self.SetValue
                    Lib_UIDropDownMenu_AddButton(info, level)
                end

                -- secondary
                Lib_UIDropDownMenu_AddSeparator({}, level)
                Lib_UIDropDownMenu_AddButton(TownsfolkUtil_MenuLabel(L["Secondary Professions"]), level)
                local info = Lib_UIDropDownMenu_CreateInfo()
                for _, profType in pairs(TF_SECONDARY_PROFESSION) do
                    info.text = " "..L[profType]
                    info.icon = TOWNSFOLK[TF_PROFESSION_TRAINER].icon
                    info.checked = tfTrackingList[profType] or false
                    info.isNotRadio = true
                    info.keepShownOnClick = true
                    info.arg1 = profType
                    info.func = self.SetValue
                    Lib_UIDropDownMenu_AddButton(info, level)
                end

                -- other training
                Lib_UIDropDownMenu_AddSeparator({}, level)
                Lib_UIDropDownMenu_AddButton(TownsfolkUtil_MenuLabel(L["Other Training"]), level)
                local info = Lib_UIDropDownMenu_CreateInfo()
                for _, profType in pairs(TF_ALT_TRAINING) do
                    info.text = " "..L[profType]
                    info.icon = TOWNSFOLK[TF_PROFESSION_TRAINER].icon
                    info.checked = tfTrackingList[profType] or false
                    info.isNotRadio = true
                    info.keepShownOnClick = true
                    info.arg1 = profType
                    info.func = self.SetValue
                    Lib_UIDropDownMenu_AddButton(info, level)
                end
            end
        end
    end, "MENU")

    function dropDown:SetValue(folktype)
        -- selected "None" option, clear all
        if folktype == "" or folktype == "ALL" then
            for key, _ in pairs(tfTrackingList) do
                tfTrackingList[key] = folktype == "ALL"
            end
        elseif folktype == TF_PROFESSION_TRAINER then
            local allSelected = true
            for _, key in pairs(TF_PROFESSION) do
                if (not tfTrackingList[key]) then
                    allSelected = false
                end
            end
            -- toggle all professions
            for _, key in pairs(TF_PROFESSION) do
                tfTrackingList[key] = not allSelected
            end
        else
            -- toggle the value
            tfTrackingList[folktype] = not tfTrackingList[folktype]
        end
        -- redraw the map
        TownsfolkTracker:DrawMapIcons()
    end
end

function TownsfolkTracker:OpenTracker()
    GameTooltip:Hide()
    Lib_ToggleDropDownMenu(1, nil, tfTrackingMenu, "cursor", 3, -3)
end

function TownsfolkTracker:ShowMapButton()
    if (self:IsUseWorldMap() and self:IsShowMapButton()) then
        tfAtlasButton:Show()
    else
        tfAtlasButton:Hide()
    end
end

function TownsfolkTracker:RegisterMapButton()
    local button = CreateFrame("Button", "tfAtlasButton", WorldMapFrame)
    button:SetFrameStrata(WorldMapFrame:GetFrameStrata())
    button:SetFrameLevel(WorldMapFrame:GetFrameLevel() + 25)
    button:SetWidth(24)
    button:SetHeight(24)

    local texture = button:CreateTexture(nil, "HIGH")
    texture:SetAllPoints(button)
    texture:SetTexture([[Interface\MINIMAP\TRACKING\None]])
    button.texture = texture
    button:SetPoint("BOTTOMRIGHT", -48, 64)

    -- tooltip scripts
    button:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(button, "ANCHOR_RIGHT")
        setMapButtonTooltip(GameTooltip)
        GameTooltip:Show()
    end)

    button:SetScript("OnLeave", function(self)
        GameTooltip:Hide()
    end)

    button:RegisterForClicks("anyUp")
    button:SetScript("OnClick", handleMapButtonClick)

    self:ShowMapButton()
end

function TownsfolkTracker:DebugLocale()
    for _, townsfolk in pairs (TOWNSFOLK) do
        for _, point in pairs(townsfolk.points) do
            local x
            if (point.name) then x = L[point.name] end
            if (point.tag) then x = L[point.tag] end
        end
    end
end
