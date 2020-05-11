local AddonName, felFruiTimer = ...
local HBD = LibStub("HereBeDragons-2.0")
local HBDP = LibStub("HereBeDragons-Pins-2.0")
local AceTimer = LibStub("AceTimer-3.0")
local Serializer = LibStub("AceSerializer-3.0")

WROOT = "Whipper Root Tuber";
NDRAGON = "Night Dragon's Breath";
WBERRY = "Windblossom Berries";
SONGFLOWERAURA = "Songflower Serenade";

WRT_TEXTURE="Interface\\Icons\\INV_Misc_Food_55";
NDB_TEXTURE="Interface\\Icons\\INV_Misc_Food_45";
WBB_TEXTURE="Interface\\Icons\\INV_Misc_Food_58";
CSF_TEXTURE="Interface\\Icons\\Spell_Holy_MindVision";

-- local
if (GetLocale() == "zhCN") then
    WROOT = "鞭根块茎";
    NDRAGON = "夜龙之息";
    WBERRY = "风花果";
    SONGFLOWERAURA = "风歌夜曲";
elseif (GetLocale() == "zhTW") then
    WROOT = "鞭根塊莖";
    NDRAGON = "夜龍之息";
    WBERRY = "風花果";
    SONGFLOWERAURA = "風歌夜曲";
end

-- Runs our init function when ready
function felFruiTimer:Initialize()
    local f = CreateFrame("FRAME")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("onEvent", function(self, event, addon)
        if event == "ADDON_LOADED" and addon == "felFruiTimer" then
            felFruiTimer:SetupDB()
            felFruiTimer:Init()
        end
    end)
end

-- Coordinates of all songflowers w/ key
felFruiTimer.whiprootCoords = {
        ["wsouth1"] = {49.42, 12.17},
        ["wsouth2"] = {40.72, 19.12},
        ["wsouth3"] = {50.58, 18.25},
        ["wnorth4"] = {43.04, 46.96},
        ["wnorth1"] = {34.06, 60.22},
        ["wnorth2"] = {40.14, 85.20}
    }

felFruiTimer.songflowerCoords = {
        ["ssouth1"] = {52.9, 87.83},
        ["ssouth2"] = {45.94, 85.22},
        ["ssouth3"] = {48.26, 75.65},
        ["snorth4"] = {63.33, 22.61},
        ["snorth1"] = {63.91, 6.09},
        ["snorth2"] = {55.8, 10.44},
        ["smid1"]   = {34.35, 52.17},
        ["smid2"]   = {40.15, 56.52},
        ["smid3"]   = {40.14, 44.35},
        ["snorth3"] = {50.6, 13.9}
    }

felFruiTimer.nightdragonCoords = {
        ["nsouth1"] = {42.46, 13.91},
        ["nsouth2"] = {50.58, 30.43},
        ["nsouth3"] = {35.10, 58.92},
        ["nnorth4"] = {40.72, 78.26}
    }

felFruiTimer.windberryCoords = {
        ["isouth1"] = {55.79, 06.95},
        ["isouth2"] = {45.36, 18.25},
        ["isouth3"] = {38.79, 21.94},
        ["inorth4"] = {44.78, 41.73},
        ["inorth1"] = {34.34, 48.69},
        ["inorth2"] = {38.98, 59.12},
        ["imid1"]   = {36.56, 61.97},
        ["imid2"]   = {49.99, 80.00},
        ["imid3"]   = {55.21, 23.47},
        ["inorth3"] = {57.53, 20.00}
    }

felFruiTimer.SongflowerFrames = {}
felFruiTimer.WhiprootFrames = {}
felFruiTimer.NightDragonFrames = {}
felFruiTimer.WindBerryFrames = {}

-- Create an empty object if none exist
function felFruiTimer:SetupDB()
    if felFruiTimerDB == nil then
        felFruiTimerDB = {}
    end
    if not felFruiTimerDB["auto"] then felFruiTimerDB["auto"] = 1; end
    felFruiTimer_OptionPanel_OnShow()
end

-- Initializes our addon
function felFruiTimer:Init()
    -- Create an empty DB if need be
    -- felFruiTimer:SetupDB()
    if felFruiTimerDB["auto"] == 1 then
        felFruiTimer:createNodes()
    end
    local Frame = CreateFrame("Frame", nil, UIParent)
    -- Update the active songflower timers every second
    AceTimer:ScheduleRepeatingTimer(felFruiTimer.updateNodes, 1)

    Frame:RegisterEvent("CHAT_MSG_LOOT")
    Frame:RegisterEvent("UNIT_AURA")
    Frame:SetScript("OnEvent", felFruiTimer.handleEvents)
end

felFruiTimerCreated = 0

-- Creates our world map nodes on addon init
function felFruiTimer:createNodes()
    if felFruiTimerCreated == 0 then
        for key, coords in pairs(felFruiTimer.whiprootCoords) do
        local frame = felFruiTimer:createWipeRootFrame()
            felFruiTimer:addWipeRootWorldMap(key, frame, coords)
        end
        for key, coords in pairs(felFruiTimer.songflowerCoords) do
        local frame = felFruiTimer:createSongFlowerFrame()
            felFruiTimer:addSongFlowerToWorldMap(key, frame, coords)
        end
        for key, coords in pairs(felFruiTimer.nightdragonCoords) do
        local frame = felFruiTimer:createNightDragonFrame()
            felFruiTimer:addNightDragonToWorldMap(key, frame, coords)
        end
        for key, coords in pairs(felFruiTimer.windberryCoords) do
        local frame = felFruiTimer:createWindBerryFrame()
            felFruiTimer:addWindBerryToWorldMap(key, frame, coords)
        end
        felFruiTimerCreated = 1
    end
end

function felFruiTimer:deleteNodes()
    if felFruiTimerCreated == 1 then
        for key, _ in pairs(felFruiTimer.whiprootCoords) do
            felFruiTimer:delWipeRootWorldMap(key)
        end
        for key, _ in pairs(felFruiTimer.songflowerCoords) do
            felFruiTimer:delSongFlowerToWorldMap(key)
        end
        for key, _ in pairs(felFruiTimer.nightdragonCoords) do
            felFruiTimer:delNightDragonToWorldMap(key)
        end
        for key, _ in pairs(felFruiTimer.windberryCoords) do
            felFruiTimer:delWindBerryToWorldMap(key)
        end
        felFruiTimerCreated = 0
    end
end

--slash command
function felFruiTimer_SlashHandler(arg)
    if arg == "show" then
        felFruiTimer:createNodes()
    elseif arg == "hide" then
        felFruiTimer:deleteNodes()
    elseif arg == "config" then
        InterfaceOptionsFrame_OpenToCategory(felFruiTimer_OptionsFrame);
        InterfaceOptionsFrame_OpenToCategory(felFruiTimer_OptionsFrame);
    else
        print("/fft  show: show icons\n      hide: hide icons\n      config: open option frame")
    end
end
SlashCmdList["felFruiTimer"] = felFruiTimer_SlashHandler;
SLASH_felFruiTimer1 = "/felFruiTimer";
SLASH_felFruiTimer2 = "/fft";

-- Fires when a songflower is picked
function felFruiTimer:addCordsToDB(key)
    local currTime = GetServerTime()
    local cdTime = currTime + (25 * 60)
    felFruiTimerDB[key] = cdTime
end

function felFruiTimer:handleEvents(event, arg1, ...)
    --print ("self: ", self)
    if felFruiTimerCreated == 1 then
        if event == "CHAT_MSG_LOOT" then
            if(( string.find(arg1, NDRAGON)) 
            or (string.find(arg1, WBERRY))
            or (string.find(arg1, WROOT))) then
                    --print("鞭根块茎 or 风花果 or 叶龙 got!")
                    local zId, zT = HBD:GetPlayerZone()
                    -- Validate zone just in case
                    if not zId == 1448 then return end
                    local x,y,instance = HBD:GetPlayerZonePosition()
                    x = x * 100
                    y = y * 100

                    -- Check so that the position is valid
                    local key = felFruiTimer:validatePlayerPosition(x,y)
                    --print ("key got: ", key)
                    if key then
                        -- We know that the songflower was just picked
                        felFruiTimer:addCordsToDB(key)
                    end
            end
        end
        if event == "UNIT_AURA" and arg1 == "player" then
            local name, expirationTime, sid, _
            for i = 1, 40 do
                name, _, _, _, _, expirationTime, _, _, _, sid = UnitAura("player", i, "HELPFUL")
                -- Check for buff Songflower Serenade
                if name == SONGFLOWERAURA then
                    local currTime = GetTime()
                    -- Check if Sonflower has just been applied
                    if (expirationTime - currTime)/60 == 60 then

                        local zId, zT = HBD:GetPlayerZone()
                        -- Validate zone just in case
                        if not zId == 1448 then break end

                        local x,y,instance = HBD:GetPlayerZonePosition()
                        x = x * 100
                        y = y * 100

                        -- Check so that the position is valid
                        local key = felFruiTimer:validatePlayerPosition(x,y)
                        --print ("key got: ", key)
                        if key then
                            -- We know that the songflower was just picked
                            felFruiTimer:addCordsToDB(key)
                        end
                    end
                end
            end
        end
    end
end

-- Checks if the player is within a given coordinate that matches a songflower one
-- Returns key to the songflower if it exists
function felFruiTimer:validatePlayerPosition(x, y)
    for key, coords in pairs(felFruiTimer.whiprootCoords) do
        local sX = math.floor(coords[1])
        local sY = math.floor(coords[2])
        -- Measure distance between two coordinates
        local distance = math.sqrt(((x - sX)^2) + ((y - sY)^2))
        if distance < 3 then
            return key
        end
    end
    for key, coords in pairs(felFruiTimer.songflowerCoords) do
        local sX = math.floor(coords[1])
        local sY = math.floor(coords[2])
        -- Measure distance between two coordinates
        local distance = math.sqrt(((x - sX)^2) + ((y - sY)^2))
        if distance < 3 then
            return key
        end
    end
    for key, coords in pairs(felFruiTimer.nightdragonCoords) do
        local sX = math.floor(coords[1])
        local sY = math.floor(coords[2])
        -- Measure distance between two coordinates
        local distance = math.sqrt(((x - sX)^2) + ((y - sY)^2))
        if distance < 3 then
            return key
        end
    end
    for key, coords in pairs(felFruiTimer.windberryCoords) do
        local sX = math.floor(coords[1])
        local sY = math.floor(coords[2])
        -- Measure distance between two coordinates
        local distance = math.sqrt(((x - sX)^2) + ((y - sY)^2))
        if distance < 3 then
            return key
        end
    end
    return false
end

-- Adds  frame to the world map
function felFruiTimer:addWipeRootWorldMap(key, frame, coords)
    if HBDP then
        felFruiTimer.WhiprootFrames[key] = frame
        HBDP:AddWorldMapIconMap(felFruiTimer.WhiprootFrames[key], frame, 1448, coords[1] / 100, coords[2] / 100, showFlag);
    end
end
function felFruiTimer:delWipeRootWorldMap(key)
    if HBDP then
        HBDP:RemoveAllWorldMapIcons(felFruiTimer.WhiprootFrames[key]);
    end
end

function felFruiTimer:addSongFlowerToWorldMap(key, frame, coords)
    if HBDP then
        felFruiTimer.SongflowerFrames[key] = frame
        HBDP:AddWorldMapIconMap(felFruiTimer.SongflowerFrames[key], frame, 1448, coords[1] / 100, coords[2] / 100, showFlag);
    end
end

function felFruiTimer:delSongFlowerToWorldMap(key)
    if HBDP then
        HBDP:RemoveAllWorldMapIcons(felFruiTimer.SongflowerFrames[key]);
    end
end

function felFruiTimer:addNightDragonToWorldMap(key, frame, coords)
    if HBDP then
        felFruiTimer.NightDragonFrames[key] = frame
        HBDP:AddWorldMapIconMap(felFruiTimer.NightDragonFrames[key], frame, 1448, coords[1] / 100, coords[2] / 100, showFlag);
    end
end

function felFruiTimer:delNightDragonToWorldMap(key)
    if HBDP then
        HBDP:RemoveAllWorldMapIcons(felFruiTimer.NightDragonFrames[key]);
    end
end

function felFruiTimer:addWindBerryToWorldMap(key, frame, coords)
    if HBDP then
        felFruiTimer.WindBerryFrames[key] = frame
        HBDP:AddWorldMapIconMap(felFruiTimer.WindBerryFrames[key], frame, 1448, coords[1] / 100, coords[2] / 100, showFlag);
    end
end

function felFruiTimer:delWindBerryToWorldMap(key)
    if HBDP then
        HBDP:RemoveAllWorldMapIcons(felFruiTimer.WindBerryFrames[key]);
    end
end

-- Should run every second
-- Updates the timer in the frame
function felFruiTimer:updateNodes()
    for key, frame in pairs(felFruiTimer.WhiprootFrames) do
        frame.title:SetText(felFruiTimer:getFlowerStatus(key, frame))
    end
    for key, frame in pairs(felFruiTimer.SongflowerFrames) do
        frame.title:SetText(felFruiTimer:getFlowerStatus(key, frame))
    end
    for key, frame in pairs(felFruiTimer.NightDragonFrames) do
        frame.title:SetText(felFruiTimer:getFlowerStatus(key, frame))
    end
    for key, frame in pairs(felFruiTimer.WindBerryFrames) do
        frame.title:SetText(felFruiTimer:getFlowerStatus(key, frame))
    end
end


function felFruiTimer:getFlowerStatus(key, f)
    if felFruiTimerCreated == 1 then
        local flowerTime = felFruiTimerDB[key]
        local currTime = GetServerTime()
        if flowerTime then
            if flowerTime <= currTime then
                if flowerTime < currTime + (60 * 3) then
                    flowerTime = nil
                    felFruiTimerDB[key] = false
                end
                f.title:SetTextColor(0, 1, 0, 1)
                return "Ready!"
            end
            if flowerTime > currTime then
                -- Change color to green when 6 minutes or less on the timer
                if (flowerTime - currTime) < 360 then
                    f.title:SetTextColor(0, 1, 0, 1)
                end
                local secondsLeft = flowerTime-currTime
                -- Prettify our seconds into minutes and seconds
                mins = string.format("%02.f", math.floor(secondsLeft/60));
                secs = string.format("%02.f", math.floor(secondsLeft - mins * 60));
                return mins .. ":" .. secs
            end
        end
        f.title:SetTextColor(1, 0, 0, 1)
    end
    return ""
end

-- Wrapper function for creating our frame
function felFruiTimer:createWipeRootFrame()
    return felFruiTimer:renderWipeRootFrame()
end

function felFruiTimer:createSongFlowerFrame()
    return felFruiTimer:renderSongFlowerFrame()
end

function felFruiTimer:createNightDragonFrame()
    return felFruiTimer:renderNightDragonFrame()
end

function felFruiTimer:createWindBerryFrame()
    return felFruiTimer:renderWindBerryFrame()
end

-- Setup the frame
function felFruiTimer:renderWipeRootFrame()
    local f = CreateFrame("Frame", nil, UIParent)
    f:SetFrameStrata("HIGH")
    f:SetWidth(16)
    f:SetHeight(16)
    f.background = f:CreateTexture(nil, "BACKGROUND")
    f.background:SetAllPoints()
    f.background:SetDrawLayer("BORDER", 1)
    f.background:SetTexture(WRT_TEXTURE)

    f.title = f:CreateFontString("TESTAR")
    f.title:SetFontObject("GameFontNormalMed3")
    f.title:SetTextColor(1,0,0,1)
    f.title:SetText("")
    f.title:ClearAllPoints()
    f.title:SetPoint("BOTTOM", f, "BOTTOM", 0, -10)
    f.title:SetTextHeight(10)
    f.title:Show()
    f:Show()
    return f
end

function felFruiTimer:renderSongFlowerFrame()
    local f = CreateFrame("Frame", nil, UIParent)
    f:SetFrameStrata("HIGH")
    f:SetWidth(16)
    f:SetHeight(16)
    f.background = f:CreateTexture(nil, "BACKGROUND")
    f.background:SetAllPoints()
    f.background:SetDrawLayer("BORDER", 1)
    f.background:SetTexture(CSF_TEXTURE)

    f.title = f:CreateFontString("TESTAR")
    f.title:SetFontObject("GameFontNormalMed3")
    f.title:SetTextColor(1,0,0,1)
    f.title:SetText("")
    f.title:ClearAllPoints()
    f.title:SetPoint("BOTTOM", f, "BOTTOM", 0, -10)
    f.title:SetTextHeight(10)
    f.title:Show()
    f:Show()
    return f
end

function felFruiTimer:renderNightDragonFrame()
    local f = CreateFrame("Frame", nil, UIParent)
    f:SetFrameStrata("HIGH")
    f:SetWidth(16)
    f:SetHeight(16)
    f.background = f:CreateTexture(nil, "BACKGROUND")
    f.background:SetAllPoints()
    f.background:SetDrawLayer("BORDER", 1)
    f.background:SetTexture(NDB_TEXTURE)

    f.title = f:CreateFontString("TESTAR")
    f.title:SetFontObject("GameFontNormalMed3")
    f.title:SetTextColor(1,0,0,1)
    f.title:SetText("")
    f.title:ClearAllPoints()
    f.title:SetPoint("BOTTOM", f, "BOTTOM", 0, -10)
    f.title:SetTextHeight(10)
    f.title:Show()
    f:Show()
    return f
end

function felFruiTimer:renderWindBerryFrame()
    local f = CreateFrame("Frame", nil, UIParent)
    f:SetFrameStrata("HIGH")
    f:SetWidth(16)
    f:SetHeight(16)
    f.background = f:CreateTexture(nil, "BACKGROUND")
    f.background:SetAllPoints()
    f.background:SetDrawLayer("BORDER", 1)
    f.background:SetTexture(WBB_TEXTURE)

    f.title = f:CreateFontString("TESTAR")
    f.title:SetFontObject("GameFontNormalMed3")
    f.title:SetTextColor(1,0,0,1)
    f.title:SetText("")
    f.title:ClearAllPoints()
    f.title:SetPoint("BOTTOM", f, "BOTTOM", 0, -10)
    f.title:SetTextHeight(10)
    f.title:Show()
    f:Show()
    return f
end

-- Run our initialize script
felFruiTimer:Initialize()

-- Set our addon object as global
_G["felFruiTimer"] = felFruiTimer

--config
if (GetLocale() == "zhCN") then
    felFruiTimer_auto = "自动加载";
elseif (GetLocale() == "zhTW") then
    felFruiTimer_auto = "自動載入";
else
    felFruiTimer_auto = "Auto load";
end

-- option frame
felFruiTimer_OptionsFrame = CreateFrame("Frame", "felFruiTimer_OptionsFrame", UIParent);
felFruiTimer_OptionsFrame.name = "felFruiTimer";
InterfaceOptions_AddCategory(felFruiTimer_OptionsFrame);
felFruiTimer_OptionsFrame:SetScript("OnShow", function()
    felFruiTimer_OptionPanel_OnShow();
end)

-- info
local info = felFruiTimer_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
info:ClearAllPoints();
info:SetPoint("TOPLEFT", 16, -16);
info:SetText("felFruiTimer "..GetAddOnMetadata("felFruiTimer", "Version"));

-- auto load
local felFruiTimer_OptionsFrame_AutoLoad = CreateFrame("CheckButton", "felFruiTimer_OptionsFrame_AutoLoad", felFruiTimer_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
felFruiTimer_OptionsFrame_AutoLoad:ClearAllPoints();
felFruiTimer_OptionsFrame_AutoLoad:SetPoint("TOPLEFT", info, "TOPLEFT", 0, -40);
felFruiTimer_OptionsFrame_AutoLoad:SetHitRectInsets(0, -100, 0, 0);
felFruiTimer_OptionsFrame_AutoLoadText:SetText(felFruiTimer_auto);
felFruiTimer_OptionsFrame_AutoLoad:SetScript("OnClick", function(self)
    felFruiTimerDB["auto"] = 1 - felFruiTimerDB["auto"];
    self:SetChecked(felFruiTimerDB["auto"]==1);
end)

-- show
local felFruiTimer_OptionsFrame_Show = CreateFrame("Button", "felFruiTimer_OptionsFrame_Show", felFruiTimer_OptionsFrame, "OptionsButtonTemplate");
felFruiTimer_OptionsFrame_Show:ClearAllPoints();
felFruiTimer_OptionsFrame_Show:SetPoint("TOPLEFT", felFruiTimer_OptionsFrame_AutoLoad, "TOPLEFT", 2, -40);
felFruiTimer_OptionsFrame_Show:SetWidth(154);
felFruiTimer_OptionsFrame_Show:SetHeight(25);
felFruiTimer_OptionsFrame_ShowText:SetText(SHOW);
felFruiTimer_OptionsFrame_Show:SetScript("OnClick", function(self)
    felFruiTimer:createNodes()
end)

-- hide
local felFruiTimer_OptionsFrame_Hide = CreateFrame("Button", "felFruiTimer_OptionsFrame_Hide", felFruiTimer_OptionsFrame, "OptionsButtonTemplate");
felFruiTimer_OptionsFrame_Hide:ClearAllPoints();
felFruiTimer_OptionsFrame_Hide:SetPoint("LEFT", felFruiTimer_OptionsFrame_Show, "RIGHT", 50, 0);
felFruiTimer_OptionsFrame_Hide:SetWidth(154);
felFruiTimer_OptionsFrame_Hide:SetHeight(25);
felFruiTimer_OptionsFrame_HideText:SetText(HIDE);
felFruiTimer_OptionsFrame_Hide:SetScript("OnClick", function(self)
    felFruiTimer:deleteNodes()
end)

function felFruiTimer_OptionPanel_OnShow()
    felFruiTimer_OptionsFrame_AutoLoad:SetChecked(felFruiTimerDB["auto"]==1);
end
