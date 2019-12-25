local function GetGroupThreatLeader(unit)
    -- tempUnitid, tempThreat
    local friendlyUnitid, friendlyThreatval = nil, 0;
    local tempUnitid, tempThreat;
    local groupType, groupSize, startAt = nil, nil, 1;

    -- Get Group Type
    if UnitInRaid("player") then
        groupType = "raid";
        groupSize = GetNumGroupMembers();
        startAt = 2;
    elseif UnitInParty("player") then
        groupType = "party";
        groupSize = GetNumGroupMembers();
    else
        groupType = nil;
    end

    -- Cycle through Party/Raid, picking highest threat holder
    if groupType then
        for allyIndex = startAt, groupSize do
            tempUnitid = groupType..allyIndex;
            tempThreat = select(3, UFPThreatLib:UnitDetailedThreatSituation(tempUnitid, unit));
            if tempThreat and tempThreat > friendlyThreatval then
                friendlyThreatval = tempThreat;
                friendlyUnitid = tempUnitid;
            end
        end
    end

    -- Request Pet Threat (if possible)
    if HasPetUI() and UnitExists("pet") then
        tempThreat = select(3, UFPThreatLib:UnitDetailedThreatSituation("pet", unit)) or 0;
        if tempThreat > friendlyThreatval then
            friendlyThreatval = tempThreat;
            friendlyUnitid = "pet";
        end
    end

    return friendlyUnitid, friendlyThreatval;
end

function UnitFramesPlus_GetRelativeThreat(unit)
    if not UnitExists(unit) then return end
    if not UFPThreatLib then return end
    
    local playerIsTanking, playerSituation, playerThreat = UFPThreatLib:UnitDetailedThreatSituation("player", unit);
    if not playerThreat then return end

    local friendlyUnitid, friendlyThreat = GetGroupThreatLeader(unit);

    -- Return the appropriate value
    if playerThreat and friendlyThreat and friendlyUnitid then
        if playerThreat >= 100 then
            return tonumber(playerThreat + (100-friendlyThreat)), "player";
        else
            return tonumber(playerThreat), friendlyUnitid;
        end
    end
end

--插件初始化
local ADDONNAME = ...;
local ufpt = CreateFrame("Frame");
ufpt:RegisterEvent("ADDON_LOADED");
ufpt:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        local name = ...;
        if name == ADDONNAME then
            if IsAddOnLoaded("UnitFramesPlus") then
                UFPThreatLib = LibStub:GetLibrary("ThreatClassic-1.0");
            end
            ufpt:UnregisterEvent("ADDON_LOADED");
        end
    end
end)
