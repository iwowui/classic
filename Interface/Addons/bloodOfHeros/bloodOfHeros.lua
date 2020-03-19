local AddonName, bloodOfHeros = ...
local HBD = LibStub("HereBeDragons-2.0")
local HBDP = LibStub("HereBeDragons-Pins-2.0")
local Serializer = LibStub("AceSerializer-3.0")

BLD_TEXTURE="Interface\\Icons\\Spell_shadow_bloodboil";

-- Runs our init function when ready
function bloodOfHeros:Initialize()
    local f = CreateFrame("FRAME")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("onEvent", function(self, event, addon)
        if event == "ADDON_LOADED" and addon == "bloodOfHeros" then
            bloodOfHeros:SetupDB()
            bloodOfHeros:Init()
        end
    end)
end

-- Coordinates of all blood
bloodOfHeros.eastCoords = {
        ["esouth1"] = {7.10, 50.70},
        ["esouth2"] = {8.10, 54.40},
        ["esouth3"] = {14.30, 64.90},
        ["eaorth4"] = {19.90, 60.90},
        ["enorth1"] = {20.50, 66.90},
        ["enorth3"] = {21.50, 73.90},
        ["eborth4"] = {22.10, 85.10},
        ["ecorth4"] = {24.30, 88.20},
        ["edorth4"] = {27.30, 64.10},
        ["eorth4"] = {26.70, 69.60},
        ["eforth4"] = {26.30, 70.50},
        ["egorth4"] = {26.00, 74.70},
        ["ehorth4"] = {27.00, 75.50},
        ["eiorth4"] = {29.20, 78.80},
        ["ejorth4"] = {28.80, 85.90},
        ["ekorth4"] = {30.90, 65.50},
        ["elorth4"] = {32.00, 71.00},
        ["emorth4"] = {34.30, 67.80},
        ["enorth4"] = {37.00, 65.60},
        ["eoorth4"] = {37.60, 68.50},
        ["eporth4"] = {36.90, 70.60},
        ["eqorth4"] = {35.60, 73.30},
        ["erorth4"] = {35.90, 75.70},
        ["esorth4"] = {34.50, 76.90},
        ["etorth4"] = {35.90, 75.70},
        ["euorth4"] = {34.00, 80.20},
        ["evorth4"] = {41.40, 65.70},
        ["eworth4"] = {42.40, 75.80},
        ["exorth4"] = {46.40, 64.00},
        ["eyorth4"] = {46.20, 70.80},
        ["ezorth4"] = {46.50, 74.80},
        ["enarth4"] = {47.90, 80.00},
        ["enbrth4"] = {48.90, 67.20},
        ["encrth4"] = {51.80, 70.30},
        ["endrth4"] = {50.50, 77.40},
        ["enerth4"] = {55.50, 58.70},
        ["enfrth4"] = {56.20, 63.90},
        ["engrth4"] = {57.50, 72.00},
        ["enhrth4"] = {56.50, 76.10},
        ["enirth4"] = {57.80, 76.10},
        ["enjrth4"] = {59.50, 76.00},
        ["enkrth4"] = {58.60, 79.60},
        ["enlrth4"] = {57.10, 81.90},
        ["enmrth4"] = {59.20, 80.80},
        ["ennrth4"] = {59.30, 62.20},
        ["enorth4"] = {58.40, 64.80},
        ["enprth4"] = {60.10, 67.50},
        ["enqrth4"] = {61.70, 70.20},
        ["enrrth4"] = {64.70, 65.40},
        ["ensrth4"] = {63.60, 67.70},
        ["entrth4"] = {64.70, 81.00},
        ["enurth4"] = {67.50, 67.00},
        ["envrth4"] = {68.30, 70.50},
        ["enwrth4"] = {69.00, 71.50},
        ["enxrth4"] = {68.30, 74.60},
        ["enyrth4"] = {68.60, 78.40},
        ["enzrth4"] = {68.80, 80.80},
        ["enoath4"] = {69.00, 83.30},
        ["enobth4"] = {70.70, 69.40},
        ["enocth4"] = {71.10, 75.20},
        ["enodth4"] = {70.50, 80.90},
        ["enoeth4"] = {73.40, 69.90},
        ["enofth4"] = {73.60, 76.80},
        ["enogth4"] = {72.30, 78.50},
        ["enohth4"] = {73.40, 82.10},
        ["enoith4"] = {74.00, 83.70},
        ["enojth4"] = {76.70, 72.60},
        ["enokth4"] = {76.10, 78.20},
        ["enolth4"] = {75.80, 83.40},
        ["enomth4"] = {78.70, 67.30},
        ["enonth4"] = {79.00, 63.40},
        ["enooth4"] = {80.50, 59.60},
        ["enopth4"] = {78.50, 57.50},
        ["enoqth4"] = {74.70, 58.70},
        ["enorth4"] = {75.60, 55.30},
        ["enosth4"] = {76.20, 50.70},
        ["enotth4"] = {73.80, 51.10},
        ["enouth4"] = {66.20, 53.00},
        ["enovth4"] = {53.50, 50.70},
        ["enowth4"] = {50.30, 45.40},
        ["enoxth4"] = {40.00, 49.70},
        ["enoyth4"] = {38.50, 54.00},
        ["enozth4"] = {47.40, 40.50},
        ["enorah4"] = {49.10, 35.50},
        ["enorbh4"] = {44.90, 33.10},
        ["enorch4"] = {38.80, 26.70},
        ["enordh4"] = {38.50, 31.00},
        ["enoreh4"] = {39.00, 36.00},
        ["enorfh4"] = {34.50, 25.80},
        ["enorgh4"] = {33.60, 32.60},
        ["enorhh4"] = {36.70, 38.10},
        ["enorih2"] = {40.14, 85.20}
    }

bloodOfHeros.westCoords = {
        ["tsouth1"] = {54.90, 27.10},
        ["tsouth2"] = {56.80, 34.80},
        ["tsouth3"] = {49.80, 33.30},
        ["aorth4"] = {46.80, 34.60},
        ["north1"] = {66.50, 42.20},
        ["north3"] = {68.10, 44.80},
        ["borth4"] = {64.00, 48.80},
        ["corth4"] = {68.80, 49.20},
        ["dorth4"] = {67.00, 53.90},
        ["eorth4"] = {64.00, 57.70},
        ["forth4"] = {63.20, 59.20},
        ["gorth4"] = {62.00, 58.30},
        ["horth4"] = {62.90, 57.50},
        ["iorth4"] = {68.90, 73.80},
        ["jorth4"] = {68.50, 77.00},
        ["korth4"] = {69.50, 78.60},
        ["lorth4"] = {68.70, 79.10},
        ["morth4"] = {65.80, 76.80},
        ["north4"] = {64.90, 74.50},
        ["oorth4"] = {63.60, 75.50},
        ["porth4"] = {68.30, 81.60},
        ["qorth4"] = {67.80, 84.60},
        ["rorth4"] = {57.80, 66.40},
        ["sorth4"] = {55.30, 69.60},
        ["torth4"] = {52.40, 55.00},
        ["uorth4"] = {53.50, 63.50},
        ["vorth4"] = {53.40, 65.30},
        ["worth4"] = {53.30, 66.30},
        ["xorth4"] = {52.20, 66.50},
        ["yorth4"] = {45.90, 51.10},
        ["zorth4"] = {44.50, 53.30},
        ["narth4"] = {42.20, 54.80},
        ["nbrth4"] = {40.70, 57.60},
        ["ncrth4"] = {38.20, 56.30},
        ["ndrth4"] = {36.50, 53.60},
        ["nerth4"] = {35.90, 57.50},
        ["nfrth4"] = {47.00, 59.90},
        ["ngrth4"] = {41.50, 62.10},
        ["nhrth4"] = {42.90, 64.00},
        ["nirth4"] = {44.20, 65.10},
        ["njrth4"] = {46.90, 67.20},
        ["nkrth4"] = {49.40, 68.20},
        ["nlrth4"] = {47.60, 70.00},
        ["nmrth4"] = {45.90, 71.60},
        ["nnrth4"] = {44.50, 71.70},
        ["north4"] = {43.60, 70.40},
        ["nprth4"] = {43.30, 68.40},
        ["nqrth4"] = {39.70, 69.40},
        ["nrrth4"] = {40.60, 73.10}
    }

-- All the frames we create on the world map
bloodOfHeros.EastBloodFrames = {}
bloodOfHeros.WestBloodFrames = {}

-- Create an empty object if none exist
function bloodOfHeros:SetupDB()
    if bloodOfHerosDB == nil then
        bloodOfHerosDB = {}
    end
    if not bloodOfHerosDB["auto"] then bloodOfHerosDB["auto"] = 1; end
    bloodOfHeros_OptionPanel_OnShow()
end

-- Initializes our addon
function bloodOfHeros:Init()
    if bloodOfHerosDB["auto"] == 1 then
        bloodOfHeros:createNodes()
    end
end

bloodOfHerosCreated = 0

-- Creates our world map nodes on addon init
function bloodOfHeros:createNodes()
    if bloodOfHerosCreated == 0 then
        for key, coords in pairs(bloodOfHeros.eastCoords) do
        local frame = bloodOfHeros:createBloodframe()
            bloodOfHeros:addEastBloodToWorldMap(key, frame, coords)
        end
        for key, coords in pairs(bloodOfHeros.westCoords) do
        local frame = bloodOfHeros:createBloodframe()
            bloodOfHeros:addWestBloodToWorldMap(key, frame, coords)
        end
        bloodOfHerosCreated = 1
    end
end

function bloodOfHeros:deleteNodes()
    if bloodOfHerosCreated == 1 then
        for key, _ in pairs(bloodOfHeros.eastCoords) do
            bloodOfHeros:delEastBloodToWorldMap(key)
        end
        for key, _ in pairs(bloodOfHeros.westCoords) do
            bloodOfHeros:delWestBloodToWorldMap(key)
        end
        bloodOfHerosCreated = 0
    end
end

--slash command
function bloodOfHeros_SlashHandler(arg)
    if arg == "show" then
        bloodOfHeros:createNodes()
    elseif arg == "hide" then
        bloodOfHeros:deleteNodes()
    elseif arg == "config" then
        InterfaceOptionsFrame_OpenToCategory(bloodOfHeros_OptionsFrame);
        InterfaceOptionsFrame_OpenToCategory(bloodOfHeros_OptionsFrame);
    else
        print("/boh  show: show icons\n      hide: hide icons\n      config: open option frame")
    end
end
SlashCmdList["bloodOfHeros"] = bloodOfHeros_SlashHandler;
SLASH_bloodOfHeros1 = "/bloodOfHeros";
SLASH_bloodOfHeros2 = "/boh";

-- Adds  frames to the world map
function bloodOfHeros:addEastBloodToWorldMap(key, frame, coords)
    if HBDP then
        bloodOfHeros.EastBloodFrames[key] = frame
        HBDP:AddWorldMapIconMap(bloodOfHeros.EastBloodFrames[key], frame, 1423, coords[1] / 100, coords[2] / 100, showFlag);
    end
end

function bloodOfHeros:delEastBloodToWorldMap(key)
    if HBDP then
        HBDP:RemoveAllWorldMapIcons(bloodOfHeros.EastBloodFrames[key]);
    end
end

function bloodOfHeros:addWestBloodToWorldMap(key, frame, coords)
    if HBDP then
        bloodOfHeros.WestBloodFrames[key] = frame
        HBDP:AddWorldMapIconMap(bloodOfHeros.WestBloodFrames[key], frame, 1422, coords[1] / 100, coords[2] / 100, showFlag);
    end
end

function bloodOfHeros:delWestBloodToWorldMap(key, frame)
    if HBDP then
        HBDP:RemoveAllWorldMapIcons(bloodOfHeros.WestBloodFrames[key]);
    end
end

function bloodOfHeros:createBloodframe()
    return bloodOfHeros:renderBloodFrame()
end

-- Setup the frame
function bloodOfHeros:renderBloodFrame()
    local f = CreateFrame("Frame", nil, UIParent)
    f:SetFrameStrata("HIGH")
    f:SetWidth(10)
    f:SetHeight(10)
    f.background = f:CreateTexture(nil, "BACKGROUND")
    f.background:SetAllPoints()
    f.background:SetDrawLayer("BORDER", 1)
    f.background:SetTexture(BLD_TEXTURE)
    f:Show()
    return f
end

-- Run our initialize script
bloodOfHeros:Initialize()

-- Set our addon object as global
_G["bloodOfHeros"] = bloodOfHeros

--config
if (GetLocale() == "zhCN") then
    bloodOfHeros_auto = "自动加载";
elseif (GetLocale() == "zhTW") then
    bloodOfHeros_auto = "自動載入";
else
    bloodOfHeros_auto = "Auto load";
end

-- option frame
bloodOfHeros_OptionsFrame = CreateFrame("Frame", "bloodOfHeros_OptionsFrame", UIParent);
bloodOfHeros_OptionsFrame.name = "bloodOfHeros";
InterfaceOptions_AddCategory(bloodOfHeros_OptionsFrame);
bloodOfHeros_OptionsFrame:SetScript("OnShow", function()
    bloodOfHeros_OptionPanel_OnShow();
end)

-- info
local info = bloodOfHeros_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
info:ClearAllPoints();
info:SetPoint("TOPLEFT", 16, -16);
info:SetText("bloodOfHeros "..GetAddOnMetadata("bloodOfHeros", "Version"));

-- auto load
local bloodOfHeros_OptionsFrame_AutoLoad = CreateFrame("CheckButton", "bloodOfHeros_OptionsFrame_AutoLoad", bloodOfHeros_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
bloodOfHeros_OptionsFrame_AutoLoad:ClearAllPoints();
bloodOfHeros_OptionsFrame_AutoLoad:SetPoint("TOPLEFT", info, "TOPLEFT", 0, -40);
bloodOfHeros_OptionsFrame_AutoLoad:SetHitRectInsets(0, -100, 0, 0);
bloodOfHeros_OptionsFrame_AutoLoadText:SetText(bloodOfHeros_auto);
bloodOfHeros_OptionsFrame_AutoLoad:SetScript("OnClick", function(self)
    bloodOfHerosDB["auto"] = 1 - bloodOfHerosDB["auto"];
    self:SetChecked(bloodOfHerosDB["auto"]==1);
end)

-- show
local bloodOfHeros_OptionsFrame_Show = CreateFrame("Button", "bloodOfHeros_OptionsFrame_Show", bloodOfHeros_OptionsFrame, "OptionsButtonTemplate");
bloodOfHeros_OptionsFrame_Show:ClearAllPoints();
bloodOfHeros_OptionsFrame_Show:SetPoint("TOPLEFT", bloodOfHeros_OptionsFrame_AutoLoad, "TOPLEFT", 2, -40);
bloodOfHeros_OptionsFrame_Show:SetWidth(154);
bloodOfHeros_OptionsFrame_Show:SetHeight(25);
bloodOfHeros_OptionsFrame_ShowText:SetText(SHOW);
bloodOfHeros_OptionsFrame_Show:SetScript("OnClick", function(self)
    bloodOfHeros:createNodes()
end)

-- hide
local bloodOfHeros_OptionsFrame_Hide = CreateFrame("Button", "bloodOfHeros_OptionsFrame_Hide", bloodOfHeros_OptionsFrame, "OptionsButtonTemplate");
bloodOfHeros_OptionsFrame_Hide:ClearAllPoints();
bloodOfHeros_OptionsFrame_Hide:SetPoint("LEFT", bloodOfHeros_OptionsFrame_Show, "RIGHT", 50, 0);
bloodOfHeros_OptionsFrame_Hide:SetWidth(154);
bloodOfHeros_OptionsFrame_Hide:SetHeight(25);
bloodOfHeros_OptionsFrame_HideText:SetText(HIDE);
bloodOfHeros_OptionsFrame_Hide:SetScript("OnClick", function(self)
    bloodOfHeros:deleteNodes()
end)

function bloodOfHeros_OptionPanel_OnShow()
    bloodOfHeros_OptionsFrame_AutoLoad:SetChecked(bloodOfHerosDB["auto"]==1);
end
