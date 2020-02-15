--变量
local id = 1;
local _G = _G;
local UFP_MAX_PARTY_BUFFS = 16;
local UFP_MAX_PARTY_DEBUFFS = 8;
local UFP_MAX_PARTY_PET_DEBUFFS = 4;
--Buff filter
local UnitFramesPlusBuffFilter = {
    nil,
    "CANCELABLE",
    "NOT_CANCELABLE",
    -- "RAID",
    -- "PLAYER",
    -- "CANCELABLE|PLAYER",
    -- "NOT_CANCELABLE|PLAYER",
    -- "CANCELABLE|RAID",
    -- "NOT_CANCELABLE|RAID",
}

function UnitFramesPlus_CombatCheck()
    if InCombatLockdown() then return true end

    local id;
    for id = 1, MAX_PARTY_MEMBERS, 1 do
        if ( UnitExists("party"..id) ) then
            if UnitInParty("party"..id) and UnitAffectingCombat("party"..id) then
                return true;
            end
        end
    end

    return false;
end

local UnitFramesPlus_CompactRaidFrameManager_UpdateContainerLockVisibility = CompactRaidFrameManager_UpdateContainerLockVisibility
function CompactRaidFrameManager_UpdateContainerLockVisibility(self)
    local combat = UnitFramesPlus_CombatCheck();
    if combat == false then
        if ( GetDisplayedAllyFrames() ~= "raid" or not CompactRaidFrameManagerDisplayFrameLockedModeToggle.lockMode ) then
            CompactRaidFrameManager_LockContainer(self);
        else
            CompactRaidFrameManager_UnlockContainer(self);
        end
    end
end

local UnitFramesPlus_CompactRaidFrameManager_UpdateShown = CompactRaidFrameManager_UpdateShown
function CompactRaidFrameManager_UpdateShown(self)
    local combat = UnitFramesPlus_CombatCheck();
    if combat == false then
        if ( GetDisplayedAllyFrames() ) then
            self:Show();
        else
            self:Hide();
        end
        CompactRaidFrameManager_UpdateOptionsFlowContainer(self);
        CompactRaidFrameManager_UpdateContainerVisibility();
    end
end

local UnitFramesPlus_RaidOptionsFrame_UpdatePartyFrames = RaidOptionsFrame_UpdatePartyFrames;
function RaidOptionsFrame_UpdatePartyFrames()
    local combat = UnitFramesPlus_CombatCheck();
    if combat == false then
        if ( GetDisplayedAllyFrames() ~= "party" ) then
            HidePartyFrame();
        else
            HidePartyFrame();
            ShowPartyFrame();
        end
        UpdatePartyMemberBackground();
    end
end

-- local UFP_PartyHide_UpdateQueued = false
local UnitFramesPlus_HidePartyFrame = HidePartyFrame;
function HidePartyFrame()
    local combat = UnitFramesPlus_CombatCheck();
    if combat == false then
        for i=1, MAX_PARTY_MEMBERS, 1 do
            _G["PartyMemberFrame"..i]:Hide();
        end
    end
end

-- local UFP_PartyShow_UpdateQueued = false
local UnitFramesPlus_ShowPartyFrame = ShowPartyFrame;
function ShowPartyFrame()
    local combat = UnitFramesPlus_CombatCheck();
    if combat == false then
        for i=1, MAX_PARTY_MEMBERS, 1 do
            if ( UnitExists("party"..i) ) then
                _G["PartyMemberFrame"..i]:Show();
            end
        end
    end
end

--队友
local UFP_PartyFrame = CreateFrame("Frame", "UFP_PartyFrame", UIParent);
for id = 1, 4, 1 do
    local PartyFrame = CreateFrame("Button", "UFP_PartyFrame"..id, UFP_PartyFrame, "SecureUnitButtonTemplate");
    PartyFrame:SetID(id)
    PartyFrame.unit = "party"..id;
    -- PartyFrame.debuffCountdown = 0;
    -- PartyFrame.numDebuffs = 0;
    PartyFrame.noTextPrefix = true;
    PartyFrame.statusCounter = 0;
    PartyFrame.statusSign = -1;
    PartyFrame.unitHPPercent = 1;
    PartyFrame:SetFrameLevel(8);
    PartyFrame:SetWidth(128);
    PartyFrame:SetHeight(53);
    PartyFrame:SetAttribute("unit", "party"..id);
    RegisterUnitWatch(PartyFrame);
    PartyFrame:RegisterForClicks("AnyUp");
    PartyFrame:SetAttribute("*type1", "target");
    PartyFrame:SetAttribute("type2", "togglemenu")
    PartyFrame:SetHitRectInsets(7, 85, 6, 7);
    PartyFrame:ClearAllPoints();
    if id == 1 then
        PartyFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 10, -160);
        PartyFrame:SetMovable(1);
        PartyFrame:SetClampedToScreen(1);
        PartyFrame:SetScript("OnMouseDown", function(self, elapsed)
            if IsShiftKeyDown() and (not InCombatLockdown()) and UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["movable"] == 1 then
                PartyFrame:StartMoving();
            end
        end)

        PartyFrame:SetScript("OnMouseUp", function(self, elapsed)
            PartyFrame:StopMovingOrSizing();
        end)
    else
        PartyFrame:SetPoint("TOPLEFT", _G["UFP_PartyFrame".. id-1], "BOTTOMLEFT", 0, -30);
        PartyFrame:SetScript("OnMouseDown", function(self, elapsed)
            if IsShiftKeyDown() and (not InCombatLockdown()) and UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["movable"] == 1 then
                _G["UFP_PartyFrame1"]:StartMoving();
            end
        end)

        PartyFrame:SetScript("OnMouseUp", function(self, elapsed)
            _G["UFP_PartyFrame1"]:StopMovingOrSizing();
        end)
    end

    PartyFrame.Background = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."Background", "BACKGROUND");
    PartyFrame.Background:SetSize(72, 200);
    PartyFrame.Background:ClearAllPoints();
    PartyFrame.Background:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 45, -11);
    PartyFrame.Background:SetVertexColor(0, 0, 0, 0.5);
    PartyFrame.Background:Hide();

    PartyFrame.Flash = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."Flash", "BACKGROUND");
    PartyFrame.Flash:SetSize(128, 64);
    PartyFrame.Flash:ClearAllPoints();
    PartyFrame.Flash:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", -3, 2);
    PartyFrame.Flash:SetTexture("Interface\\TargetingFrame\\UI-PartyFrame-Flash");
    -- PartyFrame.Flash:SetVertexColor(1, 0.82, 0);
    PartyFrame.Flash:Hide();

    PartyFrame.portrait = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."Portrait", "BACKGROUND");
    PartyFrame.portrait:SetWidth(37);
    PartyFrame.portrait:SetHeight(37);
    PartyFrame.portrait:ClearAllPoints();
    PartyFrame.portrait:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 7, -6);

    PartyFrame.ClassPortrait = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."ClassPortrait", "BACKGROUND");
    PartyFrame.ClassPortrait:SetWidth(37);
    PartyFrame.ClassPortrait:SetHeight(37);
    PartyFrame.ClassPortrait:ClearAllPoints();
    PartyFrame.ClassPortrait:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 7, -6);
    PartyFrame.ClassPortrait:Hide();

    PartyFrame.ThreeDPortrait = CreateFrame("PlayerModel", "UFP_PartyFrame"..id.."ThreeDPortrait", PartyFrame);
    PartyFrame.ThreeDPortrait:SetWidth(29);
    PartyFrame.ThreeDPortrait:SetHeight(29);
    PartyFrame.ThreeDPortrait:SetFrameLevel(PartyFrame:GetFrameLevel()-1);
    PartyFrame.ThreeDPortrait:ClearAllPoints();
    PartyFrame.ThreeDPortrait:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 11, -12)
    PartyFrame.ThreeDPortrait:Hide();
    PartyFrame.ThreeDPortrait.Background = PartyFrame.ThreeDPortrait:CreateTexture("UFP_PartyFrame"..id.."ThreeDPortraitBG", "BACKGROUND");
    PartyFrame.ThreeDPortrait.Background:SetTexture("Interface\\AddOns\\UnitFramesPlus\\Portrait3D");
    PartyFrame.ThreeDPortrait.Background:SetWidth(37);
    PartyFrame.ThreeDPortrait.Background:SetHeight(37);
    PartyFrame.ThreeDPortrait.Background:ClearAllPoints();
    PartyFrame.ThreeDPortrait.Background:SetPoint("CENTER", PartyFrame.ThreeDPortrait, "CENTER", -1, 0);
    PartyFrame.ThreeDPortrait.Background:Hide();

    PartyFrame.PortraitType = CreateFrame("Frame", "UFP_PartyFrame"..id.."PortraitType", PartyFrame);

    PartyFrame.Texture = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."Texture", "BORDER");
    PartyFrame.Texture:SetTexture("Interface\\TargetingFrame\\UI-PartyFrame");
    PartyFrame.Texture:SetWidth(128);
    PartyFrame.Texture:SetHeight(64);
    PartyFrame.Texture:ClearAllPoints();
    PartyFrame.Texture:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 0, -2);

    PartyFrame.VehicleTexture = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."VehicleTexture", "BORDER");
    PartyFrame.VehicleTexture:SetTexture("Interface\\Vehicles\\UI-Vehicles-PartyFrame");
    PartyFrame.VehicleTexture:SetWidth(128);
    PartyFrame.VehicleTexture:SetHeight(64);
    PartyFrame.VehicleTexture:ClearAllPoints();
    PartyFrame.VehicleTexture:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", -6, 6);
    PartyFrame.VehicleTexture:Hide();

    PartyFrame.name = PartyFrame:CreateFontString("UFP_PartyFrame"..id.."Name", "BORDER");
    -- PartyFrame.name:SetFont(GameFontNormal:GetFont(), 14, "OUTLINE");
    PartyFrame.name:SetFont(GameFontNormalSmall:GetFont());
    PartyFrame.name:SetTextColor(1, 0.75, 0);
    PartyFrame.name:ClearAllPoints();
    PartyFrame.name:SetPoint("BOTTOMLEFT", PartyFrame, "BOTTOMLEFT", 50, 43);

    PartyFrame.Status = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."Status", "ARTWORK");
    PartyFrame.Status:SetTexture("Interface\\Buttons\\UI-Debuff-Overlays");
    PartyFrame.Status:SetWidth(36);
    PartyFrame.Status:SetHeight(36);
    PartyFrame.Status:ClearAllPoints();
    PartyFrame.Status:SetPoint("CENTER", PartyFrame.portrait, "CENTER", 0, 0);
    PartyFrame.Status:SetTexCoord(0, 0.2734375, 0, 0.5625);
    PartyFrame.Status:Hide();

    PartyFrame.LeaderIcon = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."LeaderIcon", "OVERLAY");
    PartyFrame.LeaderIcon:SetTexture("Interface\\GroupFrame\\UI-Group-LeaderIcon");
    PartyFrame.LeaderIcon:SetWidth(16);
    PartyFrame.LeaderIcon:SetHeight(16);
    PartyFrame.LeaderIcon:ClearAllPoints();
    PartyFrame.LeaderIcon:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 0, 0);
    PartyFrame.LeaderIcon:Hide();

    PartyFrame.MasterIcon = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."MasterIcon", "OVERLAY");
    PartyFrame.MasterIcon:SetTexture("Interface\\GroupFrame\\UI-Group-MasterLooter");
    PartyFrame.MasterIcon:SetWidth(16);
    PartyFrame.MasterIcon:SetHeight(16);
    PartyFrame.MasterIcon:ClearAllPoints();
    PartyFrame.MasterIcon:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 32, 0);
    PartyFrame.MasterIcon:Hide();

    PartyFrame.GuideIcon = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."GuideIcon", "OVERLAY");
    PartyFrame.GuideIcon:SetTexture("Interface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES");
    PartyFrame.GuideIcon:SetWidth(19);
    PartyFrame.GuideIcon:SetHeight(19);
    PartyFrame.GuideIcon:ClearAllPoints();
    PartyFrame.GuideIcon:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 0, 0);
    PartyFrame.GuideIcon:SetTexCoord(0, 0.296875, 0.015625, 0.3125);
    PartyFrame.GuideIcon:Hide();

    PartyFrame.PVPIcon = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."PVPIcon", "OVERLAY");
    -- PartyFrame.PVPIcon:SetTexture("Interface\\TargetingFrame\\UI-PVP-FFA");
    PartyFrame.PVPIcon:SetWidth(32);
    PartyFrame.PVPIcon:SetHeight(32);
    PartyFrame.PVPIcon:ClearAllPoints();
    PartyFrame.PVPIcon:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", -9, -15);

    PartyFrame.Disconnect = PartyFrame:CreateTexture("UFP_PartyFrame"..id.."Disconnect", "OVERLAY");
    PartyFrame.Disconnect:SetTexture("Interface\\CharacterFrame\\Disconnect-Icon");
    PartyFrame.Disconnect:SetWidth(64);
    PartyFrame.Disconnect:SetHeight(64);
    PartyFrame.Disconnect:ClearAllPoints();
    PartyFrame.Disconnect:SetPoint("LEFT", PartyFrame, "LEFT", -7, -1);
    PartyFrame.Disconnect:Hide();

    PartyFrame.HealthBarFrame = CreateFrame("Button", "UFP_PartyFrame"..id.."HealthBarFrame", PartyFrame, "SecureUnitButtonTemplate");
    PartyFrame.HealthBarFrame:SetWidth(70);
    PartyFrame.HealthBarFrame:SetHeight(8);
    PartyFrame.HealthBarFrame:ClearAllPoints();
    PartyFrame.HealthBarFrame:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 47, -12);
    PartyFrame.HealthBarFrame:RegisterForClicks("AnyUp");
    PartyFrame.HealthBarFrame:SetAttribute("useparent-unit", true)
    PartyFrame.HealthBarFrame:SetAttribute("*type1", "target")
    PartyFrame.HealthBarFrame:SetAttribute("type2", "togglemenu")

    PartyFrame.healthbar = CreateFrame("StatusBar", "UFP_PartyFrame"..id.."HealthBar", PartyFrame);
    PartyFrame.healthbar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar");
    PartyFrame.healthbar:SetFrameLevel(PartyFrame:GetFrameLevel()-1);
    PartyFrame.healthbar:SetMinMaxValues(0, 100);
    PartyFrame.healthbar:SetValue(0);
    PartyFrame.healthbar:SetWidth(70);
    PartyFrame.healthbar:SetHeight(8);
    PartyFrame.healthbar:ClearAllPoints();
    PartyFrame.healthbar:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 47, -12);
    PartyFrame.healthbar:EnableMouse(false);
    PartyFrame.healthbar:SetStatusBarColor(0, 1, 0);

    PartyFrame.HealthBarText = PartyFrame:CreateFontString("UFP_PartyFrame"..id.."HealthBarText", "OVERLAY", "TextStatusBarText");
    PartyFrame.HealthBarText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
    PartyFrame.HealthBarText:SetTextColor(1, 1, 1);
    PartyFrame.HealthBarText:SetAlpha(1);
    PartyFrame.HealthBarText:ClearAllPoints();
    PartyFrame.HealthBarText:SetPoint("CENTER", PartyFrame.healthbar, "CENTER");
    PartyFrame.HealthBarText:SetJustifyH("CENTER");

    PartyFrame.ManaBarFrame = CreateFrame("Button", "UFP_PartyFrame"..id.."ManaBarFrame", PartyFrame, "SecureUnitButtonTemplate");
    PartyFrame.ManaBarFrame:SetWidth(70);
    PartyFrame.ManaBarFrame:SetHeight(8);
    PartyFrame.ManaBarFrame:ClearAllPoints();
    PartyFrame.ManaBarFrame:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 47, -21);
    PartyFrame.ManaBarFrame:RegisterForClicks("AnyUp");
    PartyFrame.ManaBarFrame:SetAttribute("useparent-unit", true)
    PartyFrame.ManaBarFrame:SetAttribute("*type1", "target")
    PartyFrame.ManaBarFrame:SetAttribute("type2", "togglemenu")

    PartyFrame.manabar = CreateFrame("StatusBar", "UFP_PartyFrame"..id.."ManaBar", PartyFrame);
    PartyFrame.manabar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar");
    PartyFrame.manabar:SetFrameLevel(PartyFrame:GetFrameLevel()-1);
    PartyFrame.manabar:SetMinMaxValues(0, 100);
    PartyFrame.manabar:SetValue(0);
    PartyFrame.manabar:SetWidth(70);
    PartyFrame.manabar:SetHeight(8);
    PartyFrame.manabar:ClearAllPoints();
    PartyFrame.manabar:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 47, -21);
    PartyFrame.manabar:EnableMouse(false);
    PartyFrame.manabar:SetStatusBarColor(0, 0, 1);
    PartyFrame.manabar.unit = "party"..id;

    PartyFrame.ManaBarText = PartyFrame:CreateFontString("UFP_PartyFrame"..id.."ManaBarText", "OVERLAY", "TextStatusBarText");
    PartyFrame.ManaBarText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
    PartyFrame.ManaBarText:SetTextColor(1, 1, 1);
    PartyFrame.ManaBarText:SetAlpha(1);
    PartyFrame.ManaBarText:ClearAllPoints();
    PartyFrame.ManaBarText:SetPoint("CENTER", PartyFrame.manabar, "CENTER");
    PartyFrame.ManaBarText:SetJustifyH("CENTER");

    PartyFrame.ReadyCheck = CreateFrame("Frame", "UFP_PartyFrame"..id.."ReadyCheck", PartyFrame, "ReadyCheckStatusTemplate");
    PartyFrame.ReadyCheck:ClearAllPoints();
    PartyFrame.ReadyCheck:SetPoint("CENTER", PartyFrame.portrait, "CENTER", 0, 0);
    PartyFrame.ReadyCheck:Hide();
    RaiseFrameLevelByTwo(PartyFrame.ReadyCheck);

    PartyFrame.notPresentIcon = CreateFrame("Frame", "UFP_PartyFrame"..id.."NotPresentIcon", PartyFrame);
    PartyFrame.notPresentIcon:SetWidth(25);
    PartyFrame.notPresentIcon:SetHeight(25);
    PartyFrame.notPresentIcon:ClearAllPoints();
    -- PartyFrame.notPresentIcon:SetPoint("LEFT", PartyFrame, "RIGHT", -7, 5);
    PartyFrame.notPresentIcon:SetPoint("RIGHT", PartyFrame, "LEFT", 0, 0);
    PartyFrame.notPresentIcon:Hide();
    PartyFrame.notPresentIcon:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
        GameTooltip:SetText(self.tooltip, nil, nil, nil, nil, true);
        GameTooltip:Show();
    end)
    PartyFrame.notPresentIcon:SetScript("OnLeave", function(self)
        GameTooltip:Hide();
    end)
    PartyFrame.notPresentIcon.texture = PartyFrame.notPresentIcon:CreateTexture("UFP_PartyFrame"..id.."NotPresentIcontexture", "ARTWORK");
    PartyFrame.notPresentIcon.texture:ClearAllPoints();
    PartyFrame.notPresentIcon.texture:SetAllPoints(PartyFrame.notPresentIcon);
    PartyFrame.notPresentIcon.Border = PartyFrame.notPresentIcon:CreateTexture("UFP_PartyFrame"..id.."NotPresentIconBorder", "OVERLAY");
    PartyFrame.notPresentIcon.Border:SetTexture("Interface\\Common\\RingBorder");
    PartyFrame.notPresentIcon.Border:ClearAllPoints();
    PartyFrame.notPresentIcon.Border:SetAllPoints(PartyFrame.notPresentIcon);

    PartyFrame.LevelText = PartyFrame:CreateFontString("UFP_PartyFrame"..id.."LevelText", "OVERLAY", "GameTooltipText");
    PartyFrame.LevelText:ClearAllPoints();
    PartyFrame.LevelText:SetPoint("TOPLEFT", PartyFrame, "BOTTOMLEFT", -9, 12);
    PartyFrame.LevelText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
    PartyFrame.LevelText:SetTextColor(1, 0.82, 0);
    PartyFrame.LevelText:SetJustifyH("LEFT");

    PartyFrame.HPPctText = PartyFrame:CreateFontString("UFP_PartyFrame"..id.."HPPctText", "OVERLAY", "GameTooltipText");
    PartyFrame.HPPctText:ClearAllPoints();
    PartyFrame.HPPctText:SetPoint("LEFT", PartyFrame.healthbar, "RIGHT", 4, 0);
    PartyFrame.HPPctText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
    PartyFrame.HPPctText:SetTextColor(1, 0.82, 0);
    PartyFrame.HPPctText:SetJustifyH("LEFT");

    -- PartyFrame.DeathText = PartyFrame:CreateFontString("UFP_PartyFrame"..id.."DeathText", "OVERLAY", "GameTooltipText");
    -- PartyFrame.DeathText:ClearAllPoints();
    -- PartyFrame.DeathText:SetPoint("CENTER", PartyFrame.portrait, "CENTER", 1, -3);
    -- PartyFrame.DeathText:SetFont(GameFontNormal:GetFont(), 12, "OUTLINE");
    -- PartyFrame.DeathText:SetTextColor(1, 1, 1);
    -- PartyFrame.DeathText:SetJustifyH("CENTER");

    PartyFrame.PortraitIndicator = CreateFrame("Frame", "UFP_PartyFrame"..id.."PortraitIndicator", PartyFrame);
    PartyFrame.PortraitIndicator:SetAttribute("unit", "party"..id);
    PartyFrame.PortraitIndicator:SetFrameStrata("MEDIUM");
    PartyFrame.PortraitIndicator.feedbackStartTime = GetTime();
    PartyFrame.PortraitIndicator.Text = PartyFrame.PortraitIndicator:CreateFontString("UFP_PartyFrame"..id.."PortraitIndicatorText", "OVERLAY", "NumberFontNormalHuge");
    PartyFrame.PortraitIndicator.Text:ClearAllPoints();
    PartyFrame.PortraitIndicator.Text:SetPoint("CENTER", PartyFrame.portrait, "CENTER", 1, -3);
    CombatFeedback_Initialize(PartyFrame.PortraitIndicator, PartyFrame.PortraitIndicator.Text, 20);

    local PetFrame = CreateFrame("Button", "UFP_PartyPetFrame"..id, PartyFrame, "SecureUnitButtonTemplate");
    PetFrame:SetID(id)
    PetFrame.unit = "partypet"..id;
    -- PetFrame:SetFrameLevel(8);
    PetFrame:SetWidth(64);
    PetFrame:SetHeight(26);
    PetFrame:SetAttribute("unit", "partypet"..id);
    -- RegisterUnitWatch(PetFrame);
    PetFrame:RegisterForClicks("AnyUp");
    PetFrame:SetAttribute("*type1", "target");
    -- PetFrame:SetAttribute("type2", "togglemenu")
    PetFrame:SetHitRectInsets(3, 33, 3, 3);
    PetFrame:ClearAllPoints();
    PetFrame:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 20, -47);
    -- PetFrame:Hide();
    PetFrame:SetAlpha(0);

    PetFrame.Flash = PetFrame:CreateTexture("UFP_PartyPetFrame"..id.."Flash", "BACKGROUND");
    PetFrame.Flash:SetSize(64, 32);
    PetFrame.Flash:ClearAllPoints();
    PetFrame.Flash:SetPoint("TOPLEFT", PetFrame, "TOPLEFT", -1, 1);
    PetFrame.Flash:SetTexture("Interface\\TargetingFrame\\UI-PartyFrame-Flash");
    -- PetFrame.Flash:SetVertexColor(1, 0.82, 0);
    PetFrame.Flash:Hide();

    PetFrame.portrait = PetFrame:CreateTexture("UFP_PartyPetFrame"..id.."Portrait", "BACKGROUND");
    PetFrame.portrait:SetWidth(18);
    PetFrame.portrait:SetHeight(18);
    PetFrame.portrait:ClearAllPoints();
    PetFrame.portrait:SetPoint("TOPLEFT", PetFrame, "TOPLEFT", 3, -3);

    PetFrame.Texture = PetFrame:CreateTexture("UFP_PartyPetFrame"..id.."Texture", "ARTWORK");
    PetFrame.Texture:SetTexture("Interface\\TargetingFrame\\UI-PartyFrame");
    PetFrame.Texture:SetWidth(64);
    PetFrame.Texture:SetHeight(32);
    PetFrame.Texture:ClearAllPoints();
    PetFrame.Texture:SetPoint("TOPLEFT", PetFrame, "TOPLEFT", 0, -1);

    PetFrame.name = PetFrame:CreateFontString("UFP_PartyPetFrame"..id.."Name", "ARTWORK");
    -- PetFrame.name:SetFont(GameFontNormal:GetFont(), 14, "OUTLINE");
    PetFrame.name:SetFont(GameFontNormalSmall:GetFont());
    PetFrame.name:SetTextColor(1, 0.75, 0);
    PetFrame.name:ClearAllPoints();
    PetFrame.name:SetPoint("BOTTOMLEFT", PetFrame, "BOTTOMLEFT", 25, 21);
    PetFrame.name:Hide();

    PetFrame.HealthBarFrame = CreateFrame("Button", "UFP_PartyPetFrame"..id.."ManaBarFrame", PetFrame, "SecureUnitButtonTemplate");
    PetFrame.HealthBarFrame:SetWidth(35);
    PetFrame.HealthBarFrame:SetHeight(4);
    PetFrame.HealthBarFrame:ClearAllPoints();
    PetFrame.HealthBarFrame:SetPoint("TOPLEFT", PetFrame, "TOPLEFT", 23, -6);
    PetFrame.HealthBarFrame:RegisterForClicks("AnyUp");
    PetFrame.HealthBarFrame:SetAttribute("useparent-unit", true)
    PetFrame.HealthBarFrame:SetAttribute("*type1", "target")
    PetFrame.HealthBarFrame:SetAttribute("type2", "togglemenu")

    PetFrame.healthbar = CreateFrame("StatusBar", "UFP_PartyPetFrame"..id.."HealthBar", PetFrame);
    PetFrame.healthbar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar");
    PetFrame.healthbar:SetFrameLevel(PetFrame:GetFrameLevel()-1);
    PetFrame.healthbar:SetMinMaxValues(0, 100);
    PetFrame.healthbar:SetValue(0);
    PetFrame.healthbar:SetWidth(35);
    PetFrame.healthbar:SetHeight(4);
    PetFrame.healthbar:ClearAllPoints();
    PetFrame.healthbar:SetPoint("TOPLEFT", PetFrame, "TOPLEFT", 23, -6);
    PetFrame.healthbar:EnableMouse(false);
    PetFrame.healthbar:SetStatusBarColor(0, 1, 0);

    -- party buff
    for j = 1, UFP_MAX_PARTY_BUFFS, 1 do
        local buff = CreateFrame("Button", "UFP_PartyFrame"..id.."Buff"..j, PartyFrame);
        buff:SetFrameLevel(7);
        buff:SetWidth(15);
        buff:SetHeight(15);
        buff:SetID(j);
        buff:ClearAllPoints();
        if j == 1 then
            buff:SetPoint("TOPLEFT", PartyFrame, "TOPLEFT", 48, -32);
        else
            buff:SetPoint("LEFT", _G["UFP_PartyFrame"..id.."Buff"..j-1], "RIGHT", 2, 0);
        end
        buff:SetAttribute("unit", "party"..id);
        RegisterUnitWatch(buff);

        buff.Icon = buff:CreateTexture("UFP_PartyFrame"..id.."Buff"..j.."Icon", "ARTWORK");
        buff.Icon:ClearAllPoints();
        buff.Icon:SetAllPoints(buff);

        buff.Cooldown = CreateFrame("Cooldown", "UFP_PartyFrame"..id.."Buff"..j.."Cooldown", buff, "CooldownFrameTemplate");
        buff.Cooldown:SetFrameLevel(8);
        buff.Cooldown:SetReverse(true);
        buff.Cooldown:ClearAllPoints();
        buff.Cooldown:SetAllPoints(buff.Icon);
        buff.Cooldown:SetParent(buff);
        -- buff.Cooldown:Hide();

        buff.CooldownText = buff.Cooldown:CreateFontString("UFP_PartyFrame"..id.."Buff"..j.."CooldownText", "OVERLAY");
        buff.CooldownText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        buff.CooldownText:SetTextColor(1, 1, 1);--(1, 0.75, 0);
        buff.CooldownText:ClearAllPoints();
        buff.CooldownText:SetPoint("CENTER", buff.Icon, "CENTER", 0, 0);
        -- buff.CooldownText:SetPoint("TOPLEFT", buff.Icon, "TOPLEFT", 0, 0);

        buff.Border = buff:CreateTexture("UFP_PartyFrame"..id.."Buff"..j.."Border", "OVERLAY");
        buff.Border:SetTexture("Interface\\Buttons\\UI-Debuff-Overlays");
        buff.Border:SetWidth(17);
        buff.Border:SetHeight(17);
        buff.Border:SetTexCoord(0.296875, 0.5703125, 0, 0.515625);
        buff.Border:ClearAllPoints();
        buff.Border:SetPoint("TOPLEFT", buff, "TOPLEFT", -1, 1);

        buff:EnableMouse(true);
        buff:SetScript("OnEnter",function(self)
            if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["nobufftip"] == 0 then
                GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
                local filter = nil;
                if UnitFramesPlusDB["party"]["filter"] == 1 then
                    filter = UnitFramesPlusBuffFilter[UnitFramesPlusDB["party"]["filtertype"]];
                end
                GameTooltip:SetUnitBuff("party"..id, j, filter);
            end
        end)
        buff:SetScript("OnLeave",function()
            GameTooltip:Hide();
        end)
    end

    -- party debuff
    for j = 1, UFP_MAX_PARTY_DEBUFFS, 1 do
        local debuff = CreateFrame("Button", "UFP_PartyFrame"..id.."Debuff"..j, PartyFrame);
        debuff:SetFrameLevel(7);
        debuff:SetWidth(17);
        debuff:SetHeight(17);
        debuff:SetID(j);
        debuff:ClearAllPoints();
        if j == 1 then
            debuff:SetPoint("BOTTOMLEFT", PartyFrame, "TOPRIGHT", -8, 4);
        else
            debuff:SetPoint("LEFT", _G["UFP_PartyFrame"..id.."Debuff"..j-1], "RIGHT", 2, 0);
        end
        debuff:SetAttribute("unit", "party"..id);
        RegisterUnitWatch(debuff);

        debuff.Icon = debuff:CreateTexture("UFP_PartyFrame"..id.."Debuff"..j.."Icon", "ARTWORK");
        debuff.Icon:ClearAllPoints();
        debuff.Icon:SetAllPoints(debuff);

        debuff.Cooldown = CreateFrame("Cooldown", "UFP_PartyFrame"..id.."Debuff"..j.."Cooldown", debuff, "CooldownFrameTemplate");
        debuff.Cooldown:SetFrameLevel(8);
        debuff.Cooldown:SetReverse(true);
        debuff.Cooldown:ClearAllPoints();
        debuff.Cooldown:SetAllPoints(debuff.Icon);
        debuff.Cooldown:SetParent(debuff);
        -- debuff.Cooldown:Hide();

        debuff.CooldownText = debuff.Cooldown:CreateFontString("UFP_PartyFrame"..id.."Debuff"..j.."CooldownText", "OVERLAY");
        debuff.CooldownText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        debuff.CooldownText:SetTextColor(1, 1, 1);--(1, 0.75, 0);
        debuff.CooldownText:ClearAllPoints();
        debuff.CooldownText:SetPoint("CENTER", debuff.Icon, "CENTER", 0, 0);
        -- debuff.CooldownText:SetPoint("TOPLEFT", debuff.Icon, "TOPLEFT", 0, 0);

        debuff.CountText = debuff.Cooldown:CreateFontString("UFP_PartyFrame"..id.."Debuff"..j.."CountText", "OVERLAY");
        debuff.CountText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        debuff.CountText:SetTextColor(1, 1, 1);
        debuff.CountText:ClearAllPoints();
        -- debuff.CountText:SetPoint("CENTER", debuff.Icon, "BOTTOM", 0, 0);
        debuff.CountText:SetPoint("BOTTOMRIGHT", debuff.Icon, "BOTTOMRIGHT", 0, 0);

        debuff.Border = debuff:CreateTexture("UFP_PartyFrame"..id.."Debuff"..j.."Border", "OVERLAY");
        debuff.Border:SetTexture("Interface\\Buttons\\UI-Debuff-Overlays");
        debuff.Border:SetWidth(17);
        debuff.Border:SetHeight(17);
        debuff.Border:SetTexCoord(0.296875, 0.5703125, 0, 0.515625);
        debuff.Border:ClearAllPoints();
        debuff.Border:SetPoint("TOPLEFT", debuff, "TOPLEFT", -1, 1);

        debuff:EnableMouse(true);
        debuff:SetScript("OnEnter",function(self)
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
            GameTooltip:SetUnitDebuff("party"..id, j);
        end)
        debuff:SetScript("OnLeave",function()
            GameTooltip:Hide();
        end)
    end

    -- party pet debuff
    for j = 1, UFP_MAX_PARTY_PET_DEBUFFS, 1 do
        local petdebuff = CreateFrame("Button", "UFP_PartyPetFrame"..id.."Debuff"..j, _G["UFP_PartyPetFrame"..id]);
        petdebuff:SetFrameLevel(7);
        petdebuff:SetWidth(15);
        petdebuff:SetHeight(15);
        petdebuff:SetID(j);
        petdebuff:ClearAllPoints();
        if j == 1 then
            petdebuff:SetPoint("LEFT", _G["UFP_PartyPetFrame"..id], "RIGHT", -3, -1);
        else
            petdebuff:SetPoint("LEFT", _G["UFP_PartyPetFrame"..id.."Debuff"..j-1], "RIGHT", 2, 0);
        end
        petdebuff:SetAttribute("unit", "partypet"..id);
        RegisterUnitWatch(petdebuff);

        petdebuff.Icon = petdebuff:CreateTexture("UFP_PartyPetFrame"..id.."Debuff"..j.."Icon", "ARTWORK");
        petdebuff.Icon:ClearAllPoints();
        petdebuff.Icon:SetAllPoints(petdebuff);

        petdebuff.Cooldown = CreateFrame("Cooldown", "UFP_PartyPetFrame"..id.."Debuff"..j.."Cooldown", petdebuff, "CooldownFrameTemplate");
        petdebuff.Cooldown:SetFrameLevel(8);
        petdebuff.Cooldown:SetReverse(true);
        petdebuff.Cooldown:ClearAllPoints();
        petdebuff.Cooldown:SetAllPoints(petdebuff.Icon);
        petdebuff.Cooldown:SetParent(petdebuff);
        -- petdebuff.Cooldown:Hide();

        petdebuff.CooldownText = petdebuff.Cooldown:CreateFontString("UFP_PartyPetFrame"..id.."Debuff"..j.."CooldownText", "OVERLAY");
        petdebuff.CooldownText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        petdebuff.CooldownText:SetTextColor(1, 1, 1);--(1, 0.75, 0);
        petdebuff.CooldownText:ClearAllPoints();
        petdebuff.CooldownText:SetPoint("CENTER", petdebuff.Icon, "CENTER", 0, 0);
        -- petdebuff.CooldownText:SetPoint("TOPLEFT", petdebuff.Icon, "TOPLEFT", 0, 0);

        petdebuff.CountText = petdebuff.Cooldown:CreateFontString("UFP_PartyPetFrame"..id.."Debuff"..j.."CountText", "OVERLAY");
        petdebuff.CountText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        petdebuff.CountText:SetTextColor(1, 1, 1);
        petdebuff.CountText:ClearAllPoints();
        -- petdebuff.CountText:SetPoint("CENTER", petdebuff.Icon, "BOTTOM", 0, 0);
        petdebuff.CountText:SetPoint("BOTTOMRIGHT", petdebuff.Icon, "BOTTOMRIGHT", 0, 0);

        petdebuff.Border = petdebuff:CreateTexture("UFP_PartyPetFrame"..id.."Debuff"..j.."Border", "OVERLAY");
        petdebuff.Border:SetTexture("Interface\\Buttons\\UI-Debuff-Overlays");
        petdebuff.Border:SetWidth(17);
        petdebuff.Border:SetHeight(17);
        petdebuff.Border:SetTexCoord(0.296875, 0.5703125, 0, 0.515625);
        petdebuff.Border:ClearAllPoints();
        petdebuff.Border:SetPoint("TOPLEFT", petdebuff, "TOPLEFT", -1, 1);

        petdebuff:EnableMouse(true);
        petdebuff:SetScript("OnEnter",function(self)
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
            GameTooltip:SetUnitDebuff("partypet"..id, j);
        end)
        petdebuff:SetScript("OnLeave",function()
            GameTooltip:Hide();
        end)
    end
end

function UnitFramesPlus_PartyMemberHealthCheck(self, value)
    local prefix = self:GetParent():GetName();
    local unitHPMin, unitHPMax, unitCurrHP;
    unitHPMin, unitHPMax = self:GetMinMaxValues();
    local parentName = self:GetParent():GetName();

    unitCurrHP = self:GetValue();
    if ( unitHPMax > 0 ) then
        self:GetParent().unitHPPercent = unitCurrHP / unitHPMax;
    else
        self:GetParent().unitHPPercent = 0;
    end
    if ( UnitIsDead("party"..self:GetParent():GetID()) ) then
        _G[prefix.."Portrait"]:SetVertexColor(0.35, 0.35, 0.35, 1.0);
    elseif ( UnitIsGhost("party"..self:GetParent():GetID()) ) then
        _G[prefix.."Portrait"]:SetVertexColor(0.2, 0.2, 0.75, 1.0);
    elseif ( (self:GetParent().unitHPPercent > 0) and (self:GetParent().unitHPPercent <= 0.2) ) then
        _G[prefix.."Portrait"]:SetVertexColor(1.0, 0.0, 0.0);
    else
        _G[prefix.."Portrait"]:SetVertexColor(1.0, 1.0, 1.0, 1.0);
    end
end

function UnitFramesPlus_PartyFrame_UpdatePvPStatus(self)
    local id = self:GetID();
    local unit = "party"..id;
    local icon = _G["UFP_PartyFrame"..id.."PVPIcon"];
    local factionGroup = UnitFactionGroup(unit);
    if ( UnitIsPVPFreeForAll(unit) ) then
        icon:SetTexture("Interface\\TargetingFrame\\UI-PVP-FFA");
        icon:Show();
    elseif ( factionGroup and factionGroup ~= "Neutral" and UnitIsPVP(unit) ) then
        icon:SetTexture("Interface\\GroupFrame\\UI-Group-PVP-"..factionGroup);
        icon:Show();
    else
        icon:Hide();
    end
end

function UnitFramesPlus_PartyFrame_UpdateVoiceStatus(self)
    local id = self:GetID();
    if ( not UnitName("party"..id) ) then
        --No need to update if the frame doesn't have a unit.
        return;
    end

    local mode;
    local inInstance, instanceType = IsInInstance();

    if ( (instanceType == "pvp") or (instanceType == "arena") ) then
        mode = "Battleground";
    elseif ( IsInRaid() ) then
        mode = "raid";
    else
        mode = "party";
    end
end

function UnitFramesPlus_PartyFrame_UpdateReadyCheck(self)
    local id = self:GetID();
    local partyID = "party"..id;

    local readyCheckFrame = _G["UFP_PartyFrame"..id.."ReadyCheck"];
    local readyCheckStatus = GetReadyCheckStatus(partyID);
    if ( UnitName(partyID) and UnitIsConnected(partyID) and readyCheckStatus ) then
        if ( readyCheckStatus == "ready" ) then
            ReadyCheck_Confirm(readyCheckFrame, 1);
        elseif ( readyCheckStatus == "notready" ) then
            ReadyCheck_Confirm(readyCheckFrame, 0);
        else -- "waiting"
            ReadyCheck_Start(readyCheckFrame);
        end
    else
        readyCheckFrame:Hide();
    end
end

function UnitFramesPlus_PartyFrame_UpdateVoiceActivityNotification(self)
    if self.voiceNotification then
        self.voiceNotification:ClearAllPoints();
        if self.notPresentIcon:IsShown() then
            self.voiceNotification:SetPoint("LEFT", self.notPresentIcon, "RIGHT", 0, 0);
        else
            self.voiceNotification:SetPoint("TOPLEFT", self, "TOPRIGHT", 0, -12);
        end
    end
end

function UnitFramesPlus_PartyFrame_VoiceActivityNotificationCreatedCallback(self, notification)
    self.voiceNotification = notification;
    self.voiceNotification:SetParent(self);
    UnitFramesPlus_PartyFrame_UpdateVoiceActivityNotification(self);
    notification:Show();
end

function UnitFramesPlus_PartyFrame_UpdateNotPresentIcon(self)
    local id = self:GetID();
    local partyID = "party"..id;

    local inPhase = UnitInPhase(partyID);

    if ( UnitInOtherParty(partyID) ) then
        self:SetAlpha(0.6);
        self.notPresentIcon.texture:SetTexture("Interface\\LFGFrame\\LFG-Eye");
        self.notPresentIcon.texture:SetTexCoord(0.125, 0.25, 0.25, 0.5);
        self.notPresentIcon.Border:Show();
        self.notPresentIcon.tooltip = PARTY_IN_PUBLIC_GROUP_MESSAGE;
        self.notPresentIcon:Show();
    elseif ( (not inPhase) and UnitIsConnected(partyID) ) then
        self:SetAlpha(0.6);
        self.notPresentIcon.texture:SetTexture("Interface\\TargetingFrame\\UI-PhasingIcon");
        self.notPresentIcon.texture:SetTexCoord(0.15625, 0.84375, 0.15625, 0.84375);
        self.notPresentIcon.Border:Hide();
        self.notPresentIcon.tooltip = PARTY_PHASED_MESSAGE;
        self.notPresentIcon:Show();
    else
        self:SetAlpha(1);
        self.notPresentIcon:Hide();
    end

    UnitFramesPlus_PartyFrame_UpdateVoiceActivityNotification(self);
end

function UnitFramesPlus_PartyFrame_UpdateOnlineStatus(self)
    if ( not UnitIsConnected("party"..self:GetID()) ) then
        -- Handle disconnected state
        local selfName = self:GetName();
        local healthBar = _G[selfName.."HealthBar"];
        local unitHPMin, unitHPMax = healthBar:GetMinMaxValues();

        healthBar:SetValue(unitHPMax);
        healthBar:SetStatusBarColor(0.5, 0.5, 0.5);
        SetDesaturation(_G[selfName.."Portrait"], true);
        _G[selfName.."Disconnect"]:Show();
        -- _G["UFP_PartyPetFrame"..self:GetID()]:Hide();
        _G["UFP_PartyPetFrame"..self:GetID()]:SetAlpha(0);
        return;
    else
        local selfName = self:GetName();
        SetDesaturation(_G[selfName.."Portrait"], false);
        _G[selfName.."Disconnect"]:Hide();
    end
end

function UnitFramesPlus_PartyFrame_UpdateLeader(self)
    local id = self:GetID();
    local leaderIcon = _G["UFP_PartyFrame"..id.."LeaderIcon"];
    local guideIcon = _G["UFP_PartyFrame"..id.."GuideIcon"];
    local masterIcon = _G["UFP_PartyFrame"..id.."MasterIcon"];

    if( UnitIsGroupLeader("party"..id) ) then
        leaderIcon:Show();
        guideIcon:Hide();
    else
        guideIcon:Hide();
        leaderIcon:Hide();
    end

    local lootMethod, lootMaster = GetLootMethod();
    if ( lootMaster == id ) then
        masterIcon:Show();
    else
        masterIcon:Hide();
    end
end

function UnitFramesPlus_PartyFrame_UpdateArt(self)
    local unit = "party"..self:GetID();
    UnitFramesPlus_PartyFrame_ToPlayerArt(self);
end

function UnitFramesPlus_PartyFrame_ToPlayerArt(self)
    self.state = "player";
    local prefix = self:GetName();
    _G[prefix.."VehicleTexture"]:Hide();
    _G[prefix.."Texture"]:Show();
    _G[prefix.."Portrait"]:SetPoint("TOPLEFT", 7, -6);
    _G[prefix.."LeaderIcon"]:SetPoint("TOPLEFT", 0, 0);
    _G[prefix.."PVPIcon"]:SetPoint("TOPLEFT", -9, -15);
    _G[prefix.."Disconnect"]:SetPoint("LEFT", -7, -1);

    self.overrideName = nil;

    UnitFrame_SetUnit(self, "party"..self:GetID(), _G[prefix.."HealthBar"], _G[prefix.."ManaBar"]);
    UnitFrame_SetUnit(_G["UFP_PartyPetFrame"..self:GetID()], "partypet"..self:GetID(), _G["UFP_PartyPetFrame"..self:GetID().."HealthBar"], nil);
    UnitFramesPlus_PartyFrame_UpdateMember(self);

    UnitFrame_Update(self, true);
end

function UnitFramesPlus_PartyFrame_ToVehicleArt(self, vehicleType)
    self.state = "vehicle";
    local prefix = self:GetName();
    _G[prefix.."Texture"]:Hide();
    if ( vehicleType == "Natural" ) then
        _G[prefix.."VehicleTexture"]:SetTexture("Interface\\Vehicles\\UI-Vehicles-PartyFrame-Organic");
    else
        _G[prefix.."VehicleTexture"]:SetTexture("Interface\\Vehicles\\UI-Vehicles-PartyFrame");
    end
    _G[prefix.."VehicleTexture"]:Show();
    _G[prefix.."Portrait"]:SetPoint("TOPLEFT", 4, -9);
    _G[prefix.."LeaderIcon"]:SetPoint("TOPLEFT", -3, 0);
    _G[prefix.."PVPIcon"]:SetPoint("TOPLEFT", -12, -15);
    _G[prefix.."Disconnect"]:SetPoint("LEFT", -10, -1);

    self.overrideName = "party"..self:GetID();

    UnitFrame_SetUnit(self, "partypet"..self:GetID(), _G[prefix.."HealthBar"], _G[prefix.."ManaBar"]);
    UnitFrame_SetUnit(_G["UFP_PartyPetFrame"..self:GetID()], "party"..self:GetID(), _G["UFP_PartyPetFrame"..self:GetID().."HealthBar"], nil);
    UnitFramesPlus_PartyFrame_UpdateMember(self);

    UnitFrame_Update(self, true);
end

function UnitFramesPlus_PartyFrame_RefreshPetDebuffs(self, id)
    if ( not id ) then
        id = self:GetID();
    end
    RefreshDebuffs(_G["UFP_PartyPetFrame"..id], "partypet"..id, nil, nil, true);
end

function UnitFramesPlus_PartyFrame_UpdatePet(self, id)
    if ( not id ) then
        id = self:GetID();
    end

    local frameName = "UFP_PartyFrame"..id;
    local petFrame = _G["UFP_PartyPetFrame"..id];

    if ( UnitIsConnected("party"..id) and UnitExists("partypet"..id) ) then
        petFrame:SetAlpha(1);
        -- petFrame:Show();
        -- petFrame:SetPoint("TOPLEFT", frameName, "TOPLEFT", 23, -43);
    else
        petFrame:SetAlpha(0);
        -- petFrame:Hide();
        -- petFrame:SetPoint("TOPLEFT", frameName, "TOPLEFT", 23, -27);
    end

    -- UnitFramesPlus_PartyFrame_RefreshPetDebuffs(self, id);
    -- UpdatePartyMemberBackground();
end

function UnitFramesPlus_PartyFrame_UpdateMember(self)
    -- if ( GetDisplayedAllyFrames() ~= "party" ) then
    --     self:Hide();
    --     UpdatePartyMemberBackground();
    --     return;
    -- end
    local id = self:GetID();
    local unit = "party"..id;
    if ( UnitExists(unit) ) then
        self:Show();

        if VoiceActivityManager then
            local guid = UnitGUID(unit);
            VoiceActivityManager:RegisterFrameForVoiceActivityNotifications(self, guid, nil, "VoiceActivityNotificationPartyTemplate", "Button", UnitFramesPlus_PartyFrame_VoiceActivityNotificationCreatedCallback);
        end

        UnitFrame_Update(self, true);
        -- SetPortraitTexture(_G["UFP_PartyFrame"..id.."Portrait"], unit);
    else
        if VoiceActivityManager then
            VoiceActivityManager:UnregisterFrameForVoiceActivityNotifications(self);
            self.voiceNotification = nil;
        end
        self:Hide();
    end
    UnitFramesPlus_PartyFrame_UpdatePet(self);
    UnitFramesPlus_PartyFrame_UpdatePvPStatus(self);
    -- RefreshDebuffs(self, "party"..id, nil, nil, true);
    UnitFramesPlus_PartyFrame_UpdateVoiceStatus(self);
    UnitFramesPlus_PartyFrame_UpdateReadyCheck(self);
    UnitFramesPlus_PartyFrame_UpdateOnlineStatus(self);
    UnitFramesPlus_PartyFrame_UpdateNotPresentIcon(self);
    -- UpdatePartyMemberBackground();
end

function UnitFramesPlus_PartyFrame_UpdateMemberHealth(self, elapsed)
    if ( (self.unitHPPercent > 0) and (self.unitHPPercent <= 0.2) ) then
        local alpha = 255;
        local counter = self.statusCounter + elapsed;
        local sign    = self.statusSign;

        if ( counter > 0.5 ) then
            sign = -sign;
            self.statusSign = sign;
        end
        counter = mod(counter, 0.5);
        self.statusCounter = counter;

        if ( sign == 1 ) then
            alpha = (127  + (counter * 256)) / 255;
        else
            alpha = (255 - (counter * 256)) / 255;
        end
        _G[self:GetName().."Portrait"]:SetAlpha(alpha);
    end
end

function UnitFramesPlus_PartyFrame_OnEvent(self, event, ...)
    if not UnitExists("party"..self:GetID()) then return end

    UnitFrame_OnEvent(self, event, ...);

    local arg1, arg2, arg3 = ...;
    local selfID = self:GetID();

    local unit = "party"..selfID;
    local unitPet = "partypet"..selfID;

    if ( event == "PLAYER_ENTERING_WORLD" ) then
        UnitFramesPlus_PartyFrame_UpdateMember(self);
        UnitFramesPlus_PartyFrame_UpdateOnlineStatus(self);
        UnitFramesPlus_PartyNameDisplayUpdate(self)
        UnitFramesPlus_PartyLevelDisplayUpdate(self);
        UnitFramesPlus_PartyHealthPctDisplayUpdate(self);
        UnitFramesPlus_PartyPowerDisplayUpdate(self);
        UnitFramesPlus_PartyPowerTypeDisplayUpdate(self);
        UnitFramesPlus_PartyColorHPBarDisplayUpdate(self);
        if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["indicator"] == 1 then
            _G["UFP_PartyFrame"..self:GetID().."PortraitIndicatorText"]:Hide();
        end
    elseif ( event == "PORTRAITS_UPDATED" or event == "UNIT_PORTRAIT_UPDATE" ) then
        UnitFramePortrait_Update(self, true);
    elseif ( event == "GROUP_ROSTER_UPDATE" or event == "UPDATE_ACTIVE_BATTLEFIELD" ) then
        UnitFramesPlus_PartyFrame_UpdateMember(self);
        -- UnitFramesPlus_PartyFrame_UpdateArt(self);
        UnitFramesPlus_PartyFrame_UpdateLeader(self);
        UnitFramesPlus_PartyNameDisplayUpdate(self);
        UnitFramesPlus_PartyLevelDisplayUpdate(self);
        UnitFramesPlus_PartyHealthPctDisplayUpdate(self);
        UnitFramesPlus_PartyPowerDisplayUpdate(self);
        UnitFramesPlus_PartyPowerTypeDisplayUpdate(self);
        UnitFramesPlus_PartyColorHPBarDisplayUpdate(self);
        if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["indicator"] == 1 then
            _G["UFP_PartyFrame"..self:GetID().."PortraitIndicatorText"]:Hide();
        end
    elseif ( event == "PARTY_LEADER_CHANGED" or event == "PARTY_LOOT_METHOD_CHANGED") then
        UnitFramesPlus_PartyFrame_UpdateLeader(self);
        UnitFramesPlus_PartyNameDisplayUpdate(self);
        UnitFramesPlus_PartyLevelDisplayUpdate(self);
        UnitFramesPlus_PartyHealthPctDisplayUpdate(self);
        UnitFramesPlus_PartyPowerDisplayUpdate(self);
        UnitFramesPlus_PartyPowerTypeDisplayUpdate(self);
        UnitFramesPlus_PartyColorHPBarDisplayUpdate(self);
        if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["indicator"] == 1 then
            _G["UFP_PartyFrame"..self:GetID().."PortraitIndicatorText"]:Hide();
        end
    elseif ( event == "MUTELIST_UPDATE" or event == "IGNORELIST_UPDATE" ) then
        UnitFramesPlus_PartyFrame_UpdateVoiceStatus(self);
    elseif ( event == "UNIT_FACTION" ) then
        UnitFramesPlus_PartyFrame_UpdatePvPStatus(self);
    -- elseif ( event =="UNIT_AURA" ) then
    --     if ( arg1 == unit ) then
    --         RefreshDebuffs(self, unit, nil, nil, true);
    --         if ( PartyMemberBuffTooltip:IsShown() and
    --             selfID == PartyMemberBuffTooltip:GetID() ) then
    --             PartyMemberBuffTooltip_Update(self);
    --         end
    --     else
    --         if ( arg1 == unitPet ) then
    --             UnitFramesPlus_PartyFrame_RefreshPetDebuffs(self);
    --         end
    --     end
    elseif ( event =="UNIT_PET" ) then
        UnitFramesPlus_PartyFrame_UpdatePet(self);
    elseif ( event == "READY_CHECK" or
         event == "READY_CHECK_CONFIRM" ) then
        UnitFramesPlus_PartyFrame_UpdateReadyCheck(self);
    elseif ( event == "READY_CHECK_FINISHED" ) then
        if (UnitExists("party"..self:GetID())) then
            local finishTime = DEFAULT_READY_CHECK_STAY_TIME;
            -- if ( GetDisplayedAllyFrames() ~= "party" ) then
            --     finishTime = 0;
            -- end
            ReadyCheck_Finish(_G["UFP_PartyFrame"..self:GetID().."ReadyCheck"], finishTime);
        end
    elseif ( event == "VARIABLES_LOADED" ) then
        UnitFramesPlus_PartyFrame_UpdatePet(self);
    -- elseif ( event == "UNIT_ENTERED_VEHICLE" ) then
    --     if ( arg1 == "party"..selfID ) then
    --         if ( arg2 and UnitIsConnected("party"..selfID) ) then
    --             UnitFramesPlus_PartyFrame_ToVehicleArt(self, arg3);
    --         else
    --             UnitFramesPlus_PartyFrame_ToPlayerArt(self);
    --         end
    --     end
    -- elseif ( event == "UNIT_EXITED_VEHICLE" ) then
    --     if ( arg1 == "party"..selfID ) then
    --         UnitFramesPlus_PartyFrame_ToPlayerArt(self);
    --     end
    elseif ( event == "UNIT_CONNECTION" ) then
        -- UnitFramesPlus_PartyFrame_UpdateArt(self);
        UnitFramesPlus_PartyFrame_UpdateOnlineStatus(self);
        UnitFramesPlus_PartyNameDisplayUpdate(self);
        UnitFramesPlus_PartyLevelDisplayUpdate(self);
        UnitFramesPlus_PartyHealthPctDisplayUpdate(self);
        UnitFramesPlus_PartyPowerDisplayUpdate(self);
        UnitFramesPlus_PartyPowerTypeDisplayUpdate(self);
        UnitFramesPlus_PartyColorHPBarDisplayUpdate(self);
        if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["indicator"] == 1 then
            _G["UFP_PartyFrame"..self:GetID().."PortraitIndicatorText"]:Hide();
        end
    elseif ( event == "UNIT_PHASE" or event == "PARTY_MEMBER_ENABLE" or event == "PARTY_MEMBER_DISABLE" or event == "UNIT_FLAGS") then
        UnitFramesPlus_PartyFrame_UpdateNotPresentIcon(self);
        UnitFramesPlus_PartyNameDisplayUpdate(self);
        UnitFramesPlus_PartyLevelDisplayUpdate(self);
        UnitFramesPlus_PartyHealthPctDisplayUpdate(self);
        UnitFramesPlus_PartyPowerDisplayUpdate(self);
        UnitFramesPlus_PartyPowerTypeDisplayUpdate(self);
        UnitFramesPlus_PartyColorHPBarDisplayUpdate(self);
    elseif ( event == "UNIT_OTHER_PARTY_CHANGED" ) then
        UnitFramesPlus_PartyFrame_UpdateNotPresentIcon(self);
    elseif ( event == "UNIT_NAME_UPDATE" ) then
        UnitFramesPlus_PartyNameDisplayUpdate(self);
    elseif ( event == "UNIT_LEVEL" ) then
        UnitFramesPlus_PartyLevelDisplayUpdate(self);
    elseif event == "UNIT_HEALTH_FREQUENT" then
        UnitFramesPlus_PartyHealthPctDisplayUpdate(self);
    elseif event == "UNIT_POWER_FREQUENT" then
        UnitFramesPlus_PartyPowerDisplayUpdate(self);
    elseif event == "UNIT_DISPLAYPOWER" then
        UnitFramesPlus_PartyPowerTypeDisplayUpdate(self);
    elseif event == "UNIT_COMBAT" then
        if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["indicator"] == 1 then
            local arg1, arg2, arg3, arg4, arg5 = ...;
            CombatFeedback_OnCombatEvent( _G["UFP_PartyFrame"..self:GetID().."PortraitIndicator"], arg2, arg3, arg4, arg5);
        end
    end
end

function UnitFramesPlus_PartyPortraitIndicatorDisplayUpdate()
    for id = 1, 4, 1 do
        _G["UFP_PartyFrame"..id.."PortraitIndicatorText"]:Hide();
    end
end

local pb = CreateFrame("Frame");
function UnitFramesPlus_PartyBuff()
    -- UnitFramesPlus_PartyMemberPosition();
    if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["buff"] == 1 then
        pb:SetScript("OnUpdate", function(self, elapsed)
            self.timer = (self.timer or 0) + elapsed;
            if self.timer >= 0.1 then
                UnitFramesPlus_OptionsFrame_PartyBuffDisplayUpdate()
                self.timer = 0;
            end
        end)
    else
        for id = 1, 4, 1 do
            for j = 1, UFP_MAX_PARTY_BUFFS, 1 do
                _G["UFP_PartyFrame"..id.."Buff"..j]:SetAlpha(0);
            end
            for j = 1, UFP_MAX_PARTY_DEBUFFS, 1 do
                _G["UFP_PartyFrame"..id.."Debuff"..j]:SetAlpha(0);
            end
            for j = 1, UFP_MAX_PARTY_PET_DEBUFFS, 1 do
                _G["UFP_PartyPetFrame"..id.."Debuff"..j]:SetAlpha(0);
            end
        end
        pb:SetScript("OnUpdate", nil);
    end
end

function UnitFramesPlus_OptionsFrame_PartyBuffDisplayUpdate()
    local filter = nil;
    if UnitFramesPlusDB["party"]["filter"] == 1 then
        filter = UnitFramesPlusBuffFilter[UnitFramesPlusDB["party"]["filtertype"]];
    end
    for id = 1, 4, 1 do
        if UnitExists("party"..id) then
            for j = 1, UFP_MAX_PARTY_BUFFS, 1 do
                local alpha = 0;
                local cdalpha = 0;
                local timetext = "";
                -- local textalpha = 0.7;
                -- local r, g, b = 0, 1, 0;

                local name, icon, _, _, duration, expirationTime, caster, _, _, spellId = UnitBuff("party"..id, j, filter);
                if name and icon then
                    _G["UFP_PartyFrame"..id.."Buff"..j].Icon:SetTexture(icon);
                    alpha = 1;

                    if UnitFramesPlusDB["party"]["cooldown"] == 1 then
                        cdalpha = 1;

                        if UnitFramesPlusDB["global"]["builtincd"] == 1 and UFPClassicDurations then
                            local durationNew, expirationTimeNew = UFPClassicDurations:GetAuraDurationByUnit("party"..id, spellId, caster)
                            if duration == 0 and durationNew then
                                duration = durationNew
                                expirationTime = expirationTimeNew
                            end

                            if UnitFramesPlusDB["global"]["cdtext"] == 1 and expirationTime and expirationTime ~= 0 and duration > 0 then
                                local timeleft = expirationTime - GetTime();
                                if timeleft >= 0 then
                                    if timeleft < 60 then
                                        timetext = math.floor(timeleft+1);
                                        -- textalpha = 1 - timeleft/200;
                                        -- r, g, b = UnitFramesPlus_GetRGB(timeleft, 60);
                                    elseif timeleft <= 1800 then
                                        timetext = math.floor(timeleft/60+1).."m";
                                    else
                                        timetext = math.floor(timeleft/3600+1).."h";
                                    end
                                end
                            end

                            CooldownFrame_Set(_G["UFP_PartyFrame"..id.."Buff"..j].Cooldown, expirationTime - duration, duration, true);
                        else
                            CooldownFrame_Clear(_G["UFP_PartyFrame"..id.."Buff"..j].Cooldown);
                        end
                    else
                        CooldownFrame_Clear(_G["UFP_PartyFrame"..id.."Buff"..j].Cooldown);
                    end
                end
                _G["UFP_PartyFrame"..id.."Buff"..j]:SetAlpha(alpha);
                _G["UFP_PartyFrame"..id.."Buff"..j].Cooldown:SetAlpha(cdalpha);
                -- _G["UFP_PartyFrame"..id.."Buff"..j].CooldownText:SetTextColor(r, g, b);
                -- _G["UFP_PartyFrame"..id.."Buff"..j].CooldownText:SetAlpha(textalpha);
                if (not IsAddOnLoaded("OmniCC")) then
                    _G["UFP_PartyFrame"..id.."Buff"..j].CooldownText:SetText(timetext);
                else
                    _G["UFP_PartyFrame"..id.."Buff"..j].CooldownText:SetText("");
                end
            end

            local filter = nil;
            for j = 1, UFP_MAX_PARTY_DEBUFFS, 1 do
                local alpha = 0;
                local cdalpha = 0;
                local timetext = "";
                -- local textalpha = 0.7;
                -- local r, g, b = 0, 1, 0;

                local _, icon, count, _, duration, expirationTime, caster, _, _, spellId = UnitDebuff("party"..id, j, filter);
                if icon then
                    _G["UFP_PartyFrame"..id.."Debuff"..j].Icon:SetTexture(icon);
                    alpha = 1;
                    if count > 1 then
                        counttext = count;
                    end

                    if UnitFramesPlusDB["party"]["cooldown"] == 1 then
                        cdalpha = 1;

                        if UnitFramesPlusDB["global"]["builtincd"] == 1 and UFPClassicDurations then
                            local durationNew, expirationTimeNew = UFPClassicDurations:GetAuraDurationByUnit("party"..id, spellId, caster)
                            if duration == 0 and durationNew then
                                duration = durationNew
                                expirationTime = expirationTimeNew
                            end

                            if UnitFramesPlusDB["global"]["cdtext"] == 1 and expirationTime and expirationTime ~= 0 and duration > 0 then
                                local timeleft = expirationTime - GetTime();
                                if timeleft >= 0 then
                                    if timeleft < 60 then
                                        timetext = math.floor(timeleft+1);
                                        -- textalpha = 1 - timeleft/200;
                                        -- r, g, b = UnitFramesPlus_GetRGB(timeleft, 60);
                                    elseif timeleft <= 1800 then
                                        timetext = math.floor(timeleft/60+1).."m";
                                    else
                                        timetext = math.floor(timeleft/3600+1).."h";
                                    end
                                end
                            end

                            CooldownFrame_Set(_G["UFP_PartyFrame"..id.."Debuff"..j].Cooldown, expirationTime - duration, duration, true);
                        else
                            CooldownFrame_Clear(_G["UFP_PartyFrame"..id.."Debuff"..j].Cooldown);
                        end
                    else
                        CooldownFrame_Clear(_G["UFP_PartyFrame"..id.."Debuff"..j].Cooldown);
                    end
                end
                _G["UFP_PartyFrame"..id.."Debuff"..j]:SetAlpha(alpha);
                _G["UFP_PartyFrame"..id.."Debuff"..j].Cooldown:SetAlpha(cdalpha);
                -- _G["UFP_PartyFrame"..id.."Debuff"..j].CooldownText:SetTextColor(r, g, b);
                -- _G["UFP_PartyFrame"..id.."Debuff"..j].CooldownText:SetAlpha(textalpha);
                if (not IsAddOnLoaded("OmniCC")) then
                    _G["UFP_PartyFrame"..id.."Debuff"..j].CooldownText:SetText(timetext);
                else
                    _G["UFP_PartyFrame"..id.."Debuff"..j].CooldownText:SetText("");
                end
                _G["UFP_PartyFrame"..id.."Debuff"..j].CountText:SetText(counttext);
            end

            local filter = nil;
            for j = 1, UFP_MAX_PARTY_PET_DEBUFFS, 1 do
                local alpha = 0;
                local cdalpha = 0;
                local timetext = "";
                -- local textalpha = 0.7;
                -- local r, g, b = 0, 1, 0;

                local _, icon, count, _, duration, expirationTime, caster, _, _, spellId = UnitDebuff("partypet"..id, j, filter);
                if icon then
                    -- print(icon)
                    _G["UFP_PartyPetFrame"..id.."Debuff"..j].Icon:SetTexture(icon);
                    alpha = 1;
                    if count > 1 then
                        counttext = count;
                    end

                    if UnitFramesPlusDB["party"]["cooldown"] == 1 then
                        cdalpha = 1;

                        if UnitFramesPlusDB["global"]["builtincd"] == 1 and UFPClassicDurations then
                            local durationNew, expirationTimeNew = UFPClassicDurations:GetAuraDurationByUnit("party"..id, spellId, caster)
                            if duration == 0 and durationNew then
                                duration = durationNew
                                expirationTime = expirationTimeNew
                            end

                            if UnitFramesPlusDB["global"]["cdtext"] == 1 and expirationTime and expirationTime ~= 0 and duration > 0 then
                                local timeleft = expirationTime - GetTime();
                                if timeleft >= 0 then
                                    if timeleft < 60 then
                                        timetext = math.floor(timeleft+1);
                                        -- textalpha = 1 - timeleft/200;
                                        -- r, g, b = UnitFramesPlus_GetRGB(timeleft, 60);
                                    elseif timeleft <= 1800 then
                                        timetext = math.floor(timeleft/60+1).."m";
                                    else
                                        timetext = math.floor(timeleft/3600+1).."h";
                                    end
                                end
                            end

                            CooldownFrame_Set(_G["UFP_PartyPetFrame"..id.."Debuff"..j].Cooldown, expirationTime - duration, duration, true);
                        else
                            CooldownFrame_Clear(_G["UFP_PartyPetFrame"..id.."Debuff"..j].Cooldown);
                        end
                    else
                        CooldownFrame_Clear(_G["UFP_PartyPetFrame"..id.."Debuff"..j].Cooldown);
                    end
                end
                _G["UFP_PartyPetFrame"..id.."Debuff"..j]:SetAlpha(alpha);
                _G["UFP_PartyPetFrame"..id.."Debuff"..j].Cooldown:SetAlpha(cdalpha);
                -- _G["UFP_PartyPetFrame"..id.."Debuff"..j].CooldownText:SetTextColor(r, g, b);
                -- _G["UFP_PartyPetFrame"..id.."Debuff"..j].CooldownText:SetAlpha(textalpha);
                if (not IsAddOnLoaded("OmniCC")) then
                    _G["UFP_PartyPetFrame"..id.."Debuff"..j].CooldownText:SetText(timetext);
                else
                    _G["UFP_PartyPetFrame"..id.."Debuff"..j].CooldownText:SetText("");
                end
                _G["UFP_PartyPetFrame"..id.."Debuff"..j].CountText:SetText(counttext);
            end
        end
    end
end

--设置插件时刷新队友等级显示
function UnitFramesPlus_PartyLevelDisplayUpdate(self)
    local id = self:GetID();
    local LevelText = "";
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["level"] == 1 then
            if UnitLevel("party"..id) and UnitLevel("party"..id) >= 1 then
                LevelText = UnitLevel("party"..id);
            end
        end
    end
    _G["UFP_PartyFrame"..id.."LevelText"]:SetText(LevelText);
end

--设置插件时刷新队友生命条染色显示
function UnitFramesPlus_PartyColorHPBarDisplayUpdate(self)
    local id = self:GetID();
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["colorhp"] == 1 then
            if UnitFramesPlusDB["party"]["colortype"] == 2 then
                local CurHP = UnitHealth("party"..id);
                local MaxHP = UnitHealthMax("party"..id);
                local r, g, b = UnitFramesPlus_GetRGB(CurHP, MaxHP);
                _G["UFP_PartyFrame"..id.."HealthBar"]:SetStatusBarColor(r, g, b);
            elseif UnitFramesPlusDB["party"]["colortype"] == 1 then
                local color = RAID_CLASS_COLORS[select(2, UnitClass("party"..id))] or {r=0, g=1, b=0};
                _G["UFP_PartyFrame"..id.."HealthBar"]:SetStatusBarColor(color.r, color.g, color.b);
            end
        else
            _G["UFP_PartyFrame"..id.."HealthBar"]:SetStatusBarColor(0, 1, 0);
        end
    end
end

--队友生命条染色
hooksecurefunc("UnitFrameHealthBar_Update", function(statusbar, unit)
    for id = 1, 4, 1 do
        if unit == "party"..id and statusbar.unit == "party"..id then
            UnitFramesPlus_PartyColorHPBarDisplayUpdate(_G["UFP_PartyFrame"..id]);
        end
    end
end);
hooksecurefunc("HealthBar_OnValueChanged", function(self, value, smooth)
    for id = 1, 4, 1 do
        if self.unit == "party"..id then
            UnitFramesPlus_PartyColorHPBarDisplayUpdate(_G["UFP_PartyFrame"..id]);
        end
    end
end);

--设置插件时刷新队友名字显示
function UnitFramesPlus_PartyNameDisplayUpdate(self)
    local id = self:GetID();
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        -- short name
        local name, realm = UnitName("party"..id);
        local fullname = name;
        if realm and realm ~= "" then
            if UnitFramesPlusDB["party"]["shortname"] == 1 then
                fullname = name.."(*)";
            else
                fullname = name.."-"..realm;
            end
        end
        _G["UFP_PartyFrame"..id].name:SetText(fullname);

        -- color name
        local color = NORMAL_FONT_COLOR;
        if UnitFramesPlusDB["party"]["colorname"] == 1 then
            color = RAID_CLASS_COLORS[select(2, UnitClass("party"..id))] or NORMAL_FONT_COLOR;
        end
        _G["UFP_PartyFrame"..id].name:SetTextColor(color.r, color.g, color.b);
    end
end

function UnitFramesPlus_PartyPortrait()
    if UnitFramesPlusDB["party"]["portrait"] == 1 and UnitFramesPlusDB["party"]["origin"] == 1 then
        for id = 1, 4, 1 do
            _G["UFP_PartyFrame"..id.."Portrait"]:Hide();
            if UnitFramesPlusDB["party"]["portraittype"] == 1 then
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:Show();
                _G["UFP_PartyFrame"..id.."ClassPortrait"]:Hide();
                UnitFramesPlus_PartyPortrait3DBGDisplayUpdate(_G["UFP_PartyFrame"..id]);
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("PLAYER_ENTERING_WORLD");
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("GROUP_ROSTER_UPDATE");
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("PARTY_LEADER_CHANGED");
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("PARTY_MEMBER_ENABLE");
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("PARTY_MEMBER_DISABLE");
                -- _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "party"..id);
                -- _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "party"..id);
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_PET", "party"..id);
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_MODEL_CHANGED", "party"..id);
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_HEALTH_FREQUENT", "party"..id);
                _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_PORTRAIT_UPDATE", "party"..id);
                _G["UFP_PartyFrame"..id.."PortraitType"]:SetScript("OnEvent", function(self, event, ...)
                    if event == "PLAYER_ENTERING_WORLD" or event == "GROUP_ROSTER_UPDATE" 
                    or event == "PARTY_LEADER_CHANGED"  or event == "PARTY_MEMBER_ENABLE" 
                    -- or event == "PARTY_MEMBER_DISABLE"  or event == "UNIT_ENTERED_VEHICLE" 
                    or event == "PARTY_MEMBER_DISABLE" 
                    -- or event == "UNIT_EXITED_VEHICLE"  or event == "UNIT_PET" then
                    or event == "UNIT_PET" or event == "UNIT_PORTRAIT_UPDATE" then
                        if UnitExists("party"..id) then
                            if UnitFramesPlusDB["party"]["portrait3dbg"] == 1 then
                                local color = RAID_CLASS_COLORS[select(2, UnitClass("party"..id))] or NORMAL_FONT_COLOR;
                                _G["UFP_PartyFrame"..id.."ThreeDPortrait"].Background:SetVertexColor(color.r/1.5, color.g/1.5, color.b/1.5, 1);
                            end
                            UnitFramesPlus_PartyPortraitDisplayUpdate(_G["UFP_PartyFrame"..id]);
                        end
                    elseif event == "UNIT_MODEL_CHANGED" or event == "UNIT_CONNECTION" or event == "UNIT_PHASE" then
                        UnitFramesPlus_PartyPortraitDisplayUpdate(_G["UFP_PartyFrame"..id]);
                    elseif event == "UNIT_HEALTH_FREQUENT" then
                        if (not UnitIsConnected("party"..id)) or UnitIsGhost("party"..id) then
                            _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetLight(true, false, 0, 0, 0, 1.0, 0.25, 0.25, 0.25);
                        elseif UnitIsDead("party"..id) then
                            _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetLight(true, false, 0, 0, 0, 1.0, 1, 0.3, 0.3);
                        else
                            _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetLight(true, false, 0, 0, 0, 1.0, 1, 1, 1);
                        end
                    end
                end)
            elseif UnitFramesPlusDB["party"]["portraittype"] == 2 then
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:Hide();
                _G["UFP_PartyFrame"..id.."ClassPortrait"]:Show();
                if not _G["UFP_PartyFrame"..id.."PortraitType"]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                    _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("PLAYER_ENTERING_WORLD");
                    _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("GROUP_ROSTER_UPDATE");
                    _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("PARTY_LEADER_CHANGED");
                    _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("PARTY_MEMBER_ENABLE");
                    _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterEvent("PARTY_MEMBER_DISABLE");
                    -- _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "party"..id);
                    -- _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "party"..id);
                    _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
                    _G["UFP_PartyFrame"..id.."PortraitType"]:RegisterUnitEvent("UNIT_PET", "party"..id);
                else
                    if _G["UFP_PartyFrame"..id.."PortraitType"]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                        _G["UFP_PartyFrame"..id.."PortraitType"]:UnregisterAllEvents();
                    end
                end
                _G["UFP_PartyFrame"..id.."PortraitType"]:SetScript("OnEvent", function(self, event, ...)
                    if UnitExists("party"..id) then
                        UnitFramesPlus_PartyPortraitDisplayUpdate(_G["UFP_PartyFrame"..id]);
                    end
                end)
            end
            UnitFramesPlus_PartyPortraitDisplayUpdate(_G["UFP_PartyFrame"..id]);
        end
    else
        for id = 1, 4, 1 do
            SetPortraitTexture(_G["UFP_PartyFrame"..id.."Portrait"], "party"..id);
            _G["UFP_PartyFrame"..id.."Portrait"]:Show();
            _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:Hide();
            _G["UFP_PartyFrame"..id.."ClassPortrait"]:Hide();
            if _G["UFP_PartyFrame"..id.."PortraitType"]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                _G["UFP_PartyFrame"..id.."PortraitType"]:UnregisterAllEvents();
                _G["UFP_PartyFrame"..id.."PortraitType"]:SetScript("OnEvent", nil);
            end
        end
    end
end

--刷新队友3D头像背景显示
function UnitFramesPlus_PartyPortrait3DBGDisplayUpdate(self)
    local id = self:GetID();
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["portrait"] == 1 
        and UnitFramesPlusDB["party"]["portraittype"] == 1
        and UnitFramesPlusDB["party"]["portrait3dbg"] == 1 then
            _G["UFP_PartyFrame"..id.."ThreeDPortrait"].Background:Show();
        else
            _G["UFP_PartyFrame"..id.."ThreeDPortrait"].Background:Hide();
        end
    end
end

--刷新队友头像显示
function UnitFramesPlus_PartyPortraitDisplayUpdate(self)
    local id = self:GetID();
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["portraittype"] == 1 then
            if (not UnitIsConnected("party"..id)) or (not UnitIsVisible("party"..id)) then
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetPortraitZoom(0);
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetCamDistanceScale(0.25);
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetPosition(0,0,0.5);
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:ClearModel();
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetModel("Interface\\Buttons\\TalkToMeQuestionMark.M2");
            else
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetPortraitZoom(1);
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetCamDistanceScale(1);
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetPosition(0,0,0);
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:ClearModel();
                _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetUnit("party"..id);
                if (not UnitIsConnected("party"..id)) or UnitIsGhost("party"..id) then
                    _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetLight(true, false, 0, 0, 0, 1.0, 0.25, 0.25, 0.25);
                elseif UnitIsDead("party"..id) then
                    _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetLight(true, false, 0, 0, 0, 1.0, 1, 0.3, 0.3);
                else
                    _G["UFP_PartyFrame"..id.."ThreeDPortrait"]:SetLight(true, false, 0, 0, 0, 1.0, 1, 1, 1);
                end
            end
        elseif UnitFramesPlusDB["party"]["portraittype"] == 2 then
            local IconCoord = CLASS_ICON_TCOORDS[select(2,UnitClass("party"..id))]
            if IconCoord then
                _G["UFP_PartyFrame"..id.."ClassPortrait"]:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles");
                _G["UFP_PartyFrame"..id.."ClassPortrait"]:SetTexCoord(unpack(IconCoord));
            end
        end
    end
end

--设置插件时刷新队友生命值百分比显示
function UnitFramesPlus_PartyHealthPctDisplayUpdate(self)
    local id = self:GetID();
    local HPText = "";
    -- local MPText = "";
    local PctText = "";
    -- local DeathText = "";
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        local CurHP = UnitHealth("party"..id);

        if UnitFramesPlusDB["party"]["bartext"] == 1 and not UnitIsDead("party"..id) then
            local CurHPfix, MaxHPfix = UnitFramesPlus_GetValueFix(UnitHealth("party"..id), UnitHealthMax("party"..id), UnitFramesPlusDB["party"]["hpmpunit"], UnitFramesPlusDB["party"]["unittype"]);
            -- local CurManafix, MaxManafix = UnitFramesPlus_GetValueFix(UnitPower("party"..id), UnitPowerMax("party"..id), UnitFramesPlusDB["party"]["hpmpunit"], UnitFramesPlusDB["party"]["unittype"]);
            HPText = CurHPfix.."/"..MaxHPfix
            -- MPText = CurManafix.."/"..MaxManafix
        end

        if UnitFramesPlusDB["party"]["hp"] == 1 then
            local MaxHP = UnitHealthMax("party"..id);
            if MaxHP > 0 then
                if UnitFramesPlusDB["party"]["hppct"] == 1 then
                    PctText = math.floor(100*CurHP/MaxHP).."%";
                else
                    PctText = CurHP.."/"..MaxHP;
                end
            end
        end

        -- if UnitFramesPlusDB["party"]["death"] == 1 then
        --     if UnitIsDead("party"..id) then
        --         DeathText = UFPLocal_DeathText;
        --     elseif UnitIsGhost("party"..id) then
        --         DeathText = UFPLocal_GhostText;
        --     end
        -- end
    end
    _G["UFP_PartyFrame"..id.."HPPctText"]:SetText(PctText);
    -- _G["UFP_PartyFrame"..id.."DeathText"]:SetText(DeathText);

    _G["UFP_PartyFrame"..id.."HealthBarText"]:SetText(HPText);
    -- _G["UFP_PartyFrame"..id.."ManaBarText"]:SetText(MPText);
    _G["UFP_PartyFrame"..id.."HealthBar"]:SetMinMaxValues(0, 100);
    _G["UFP_PartyFrame"..id.."HealthBar"]:SetValue(UnitHealth("party"..id) / UnitHealthMax("party"..id) * 100);
    -- _G["UFP_PartyFrame"..id.."HealthBar"]:SetValue(UnitHealth("party"..id));
    UnitFramesPlus_PartyMemberHealthCheck(_G["UFP_PartyFrame"..id.."HealthBar"], nil);
end

function UnitFramesPlus_PartyPowerTypeDisplayUpdate(self)
    local id = self:GetID();
    local MPText = "";
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        local color = PowerBarColor[UnitPowerType("party"..id)];
        _G["UFP_PartyFrame"..id.."ManaBar"]:SetStatusBarColor(color.r, color.g, color.b);
    end
end

function UnitFramesPlus_PartyPowerDisplayUpdate(self)
    local id = self:GetID();
    local MPText = "";
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["bartext"] == 1 and not UnitIsDead("party"..id) then
            local CurManafix, MaxManafix = UnitFramesPlus_GetValueFix(UnitPower("party"..id), UnitPowerMax("party"..id), UnitFramesPlusDB["party"]["hpmpunit"], UnitFramesPlusDB["party"]["unittype"]);
            MPText = CurManafix.."/"..MaxManafix
        end
    end
    _G["UFP_PartyFrame"..id.."ManaBarText"]:SetText(MPText);
    _G["UFP_PartyFrame"..id.."ManaBar"]:SetMinMaxValues(0, 100);
    _G["UFP_PartyFrame"..id.."ManaBar"]:SetValue(UnitPower("party"..id) / UnitPowerMax("party"..id) * 100);
    -- _G["UFP_PartyFrame"..id.."ManaBar"]:SetValue(UnitPower("party"..id));
    -- local color = PowerBarColor[UnitPowerType("party"..id)];
    -- _G["UFP_PartyFrame"..id.."ManaBar"]:SetStatusBarColor(color.r, color.g, color.b);
end

--切换插件小队界面
function UnitFramesPlus_PartyFrame()
    if not InCombatLockdown() then
        if UnitFramesPlusDB["party"]["origin"] == 1 then
            _G["UFP_PartyFrame"]:Show();
            for id = 1, MAX_PARTY_MEMBERS, 1 do
                if UnitFramesPlusDB["party"]["origin"] == 1 and UnitExists("party"..id) then
                    _G["UFP_PartyFrame"..id]:Show();
                else
                    _G["UFP_PartyFrame"..id]:Hide();
                end
                if UnitFramesPlusDB["party"]["pet"] == 1 and UnitExists("partypet"..id) then
                    _G["UFP_PartyPetFrame"..id]:SetAlpha(1);
                else
                    _G["UFP_PartyPetFrame"..id]:SetAlpha(0);
                end
            end
        else
            _G["UFP_PartyFrame"]:Hide();
        end
    end
end

function UnitFramesPlus_PartyOriginSet()
    if UnitFramesPlusDB["party"]["origin"] == 1 then
        for id = 1, 4, 1 do
            -- party
            _G["UFP_PartyFrame"..id]:RegisterEvent("PLAYER_ENTERING_WORLD");
            _G["UFP_PartyFrame"..id]:RegisterEvent("GROUP_ROSTER_UPDATE");
            _G["UFP_PartyFrame"..id]:RegisterEvent("UPDATE_ACTIVE_BATTLEFIELD");
            _G["UFP_PartyFrame"..id]:RegisterEvent("PARTY_LEADER_CHANGED");
            _G["UFP_PartyFrame"..id]:RegisterEvent("PARTY_LOOT_METHOD_CHANGED");
            _G["UFP_PartyFrame"..id]:RegisterEvent("MUTELIST_UPDATE");
            _G["UFP_PartyFrame"..id]:RegisterEvent("IGNORELIST_UPDATE");
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_FACTION", "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterEvent("VARIABLES_LOADED");
            _G["UFP_PartyFrame"..id]:RegisterEvent("READY_CHECK");
            _G["UFP_PartyFrame"..id]:RegisterEvent("READY_CHECK_CONFIRM");
            _G["UFP_PartyFrame"..id]:RegisterEvent("READY_CHECK_FINISHED");
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterEvent("PARTY_MEMBER_ENABLE");
            _G["UFP_PartyFrame"..id]:RegisterEvent("PARTY_MEMBER_DISABLE");
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_FLAGS", "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_OTHER_PARTY_CHANGED", "party"..id);
            -- _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_AURA", "party"..id, "partypet"..id);
            -- _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_PET",  "party"..id, "partypet"..id);
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_PET",  "party"..id);

            _G["UFP_PartyFrame"..id]:RegisterEvent("PORTRAITS_UPDATED");
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_PORTRAIT_UPDATE",  "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_NAME_UPDATE",  "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_DISPLAYPOWER",  "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_POWER_FREQUENT", "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_HEALTH_FREQUENT", "party"..id);

            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_LEVEL", "party"..id);
            _G["UFP_PartyFrame"..id]:RegisterUnitEvent("UNIT_COMBAT", "party"..id);

            _G["UFP_PartyFrame"..id]:SetScript("OnEvent", function(self, event, ...)
                UnitFramesPlus_PartyFrame_OnEvent(self, event, ...);
            end)
            _G["UFP_PartyFrame"..id]:SetScript("OnShow", function(self)
                self:SetFrameLevel(2);
                UnitFramesPlus_PartyFrame_UpdateNotPresentIcon(self);
            end)
            _G["UFP_PartyFrame"..id]:SetScript("OnEnter", function(self)
                if UnitFramesPlusDB["party"]["notip"] == 0 then
                    UnitFrame_OnEnter(self, motion);
                end
            end)
            _G["UFP_PartyFrame"..id]:SetScript("OnLeave", function(self)
                UnitFrame_OnLeave(self, motion);
            end)
            _G["UFP_PartyFrame"..id]:SetScript("OnUpdate", function(self, elapsed)
                UnitFramesPlus_PartyMemberFrame_OnUpdate(self, elapsed);
                if UnitFramesPlusDB["party"]["indicator"] == 1 then
                    CombatFeedback_OnUpdate(_G["UFP_PartyFrame"..id.."PortraitIndicator"], elapsed);
                end
            end)

            -- party pet
            if UnitFramesPlusDB["party"]["pet"] == 1 then
                _G["UFP_PartyPetFrame"..id]:RegisterEvent("PORTRAITS_UPDATED");
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_NAME_UPDATE",  "partypet"..id);
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_DISPLAYPOWER",  "partypet"..id);
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_PORTRAIT_UPDATE",  "partypet"..id);
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_HEALTH_FREQUENT", "partypet"..id);

                _G["UFP_PartyPetFrame"..id]:RegisterEvent("PLAYER_ENTERING_WORLD");
                _G["UFP_PartyPetFrame"..id]:RegisterEvent("GROUP_ROSTER_UPDATE");
                _G["UFP_PartyPetFrame"..id]:RegisterEvent("UPDATE_ACTIVE_BATTLEFIELD");
                _G["UFP_PartyPetFrame"..id]:RegisterEvent("PARTY_LEADER_CHANGED");
                _G["UFP_PartyPetFrame"..id]:RegisterEvent("PARTY_LOOT_METHOD_CHANGED");
                -- _G["UFP_PartyPetFrame"..id]:RegisterEvent("VARIABLES_LOADED");
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
                _G["UFP_PartyPetFrame"..id]:RegisterEvent("PARTY_MEMBER_ENABLE");
                _G["UFP_PartyPetFrame"..id]:RegisterEvent("PARTY_MEMBER_DISABLE");
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_FLAGS", "party"..id);
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_OTHER_PARTY_CHANGED", "party"..id);
                _G["UFP_PartyPetFrame"..id]:RegisterUnitEvent("UNIT_PET",  "party"..id);

                _G["UFP_PartyPetFrame"..id]:SetScript("OnEvent", function(self, event, ...)
                    UnitFramesPlus_PartyPetFrame_OnEvent(self, event, ...);
                end)
                _G["UFP_PartyPetFrame"..id]:SetScript("OnShow", function(self)
                    UnitFrame_Update(self, true);
                end)
                _G["UFP_PartyPetFrame"..id]:SetScript("OnEnter", function(self)
                    if UnitFramesPlusDB["party"]["notip"] == 0 then
                        UnitFrame_OnEnter(self, motion);
                    end
                end)
                _G["UFP_PartyPetFrame"..id]:SetScript("OnLeave", function(self)
                    UnitFrame_OnLeave(self, motion);
                end)
                if id > 1 then
                    _G["UFP_PartyFrame"..id]:ClearAllPoints();
                    _G["UFP_PartyFrame"..id]:SetPoint("TOPLEFT", _G["UFP_PartyFrame".. id-1], "BOTTOMLEFT", 0, -38);
                end
            else
                if _G["UFP_PartyPetFrame"..id]:IsEventRegistered("PORTRAITS_UPDATED") then
                    _G["UFP_PartyPetFrame"..id]:UnregisterAllEvents();
                    _G["UFP_PartyPetFrame"..id]:SetScript("OnEvent", nil);
                    _G["UFP_PartyPetFrame"..id]:SetScript("OnShow", nil);
                    _G["UFP_PartyPetFrame"..id]:SetScript("OnEnter", nil);
                    _G["UFP_PartyPetFrame"..id]:SetScript("OnLeave", nil);
                end
                if id > 1 then
                    _G["UFP_PartyFrame"..id]:ClearAllPoints();
                    _G["UFP_PartyFrame"..id]:SetPoint("TOPLEFT", _G["UFP_PartyFrame".. id-1], "BOTTOMLEFT", 0, -18);
                end
            end
        end
    else
        for id = 1, 4, 1 do
            if _G["UFP_PartyFrame"..id]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                _G["UFP_PartyFrame"..id]:UnregisterAllEvents();
                _G["UFP_PartyFrame"..id]:SetScript("OnEvent", nil);
                _G["UFP_PartyFrame"..id]:SetScript("OnShow", nil);
                _G["UFP_PartyFrame"..id]:SetScript("OnEnter", nil);
                _G["UFP_PartyFrame"..id]:SetScript("OnLeave", nil);
                _G["UFP_PartyFrame"..id]:SetScript("OnUpdate", nil);
            end
            if _G["UFP_PartyPetFrame"..id]:IsEventRegistered("PORTRAITS_UPDATED") then
                _G["UFP_PartyPetFrame"..id]:UnregisterAllEvents();
                _G["UFP_PartyPetFrame"..id]:SetScript("OnEvent", nil);
                _G["UFP_PartyPetFrame"..id]:SetScript("OnShow", nil);
                _G["UFP_PartyPetFrame"..id]:SetScript("OnEnter", nil);
                _G["UFP_PartyPetFrame"..id]:SetScript("OnLeave", nil);
            end
        end
    end
end

function UnitFramesPlus_PartyOrigin()
    if not InCombatLockdown() then
        UnitFramesPlus_PartyOriginSet();
    else
        local func = {};
        func.name = "UnitFramesPlus_PartyOriginSet";
        func.callback = function()
            UnitFramesPlus_PartyOriginSet();
        end;
        UnitFramesPlus_WaitforCall(func);
    end
end

--队友头像缩放
function UnitFramesPlus_PartyScaleSet(scale)
    if UnitFramesPlusDB["party"]["origin"] == 1 then
        local scale = scale or UnitFramesPlusDB["party"]["scale"];
        if not InCombatLockdown() then
            for id = 1, 4, 1 do
                _G["UFP_PartyFrame"..id]:SetScale(scale);
            end
        end
        if UnitFramesPlusDB["party"]["portrait"] == 1 and UnitFramesPlusDB["party"]["portraittype"] == 1 then
            for id = 1, 4, 1 do
                UnitFramesPlus_PartyPortraitDisplayUpdate(_G["UFP_PartyFrame"..id]);
            end
        end
    end
end

function UnitFramesPlus_PartyScale(scale)
    if not InCombatLockdown() then
        UnitFramesPlus_PartyScaleSet(scale);
    else
        local func = {};
        func.name = "UnitFramesPlus_PartyScaleSet";
        func.callback = function()
            UnitFramesPlus_PartyScaleSet(scale);
        end;
        UnitFramesPlus_WaitforCall(func);
    end
end

--鼠标移过时才显示数值
function UnitFramesPlus_PartyBarTextMouseShow()
    if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["mouseshow"] == 1 then
        for id = 1, 4, 1 do
            _G["UFP_PartyFrame"..id.."HealthBarText"]:SetAlpha(0);
            -- _G["UFP_PartyFrame"..id.."HealthBarTextLeft"]:SetAlpha(0);
            -- _G["UFP_PartyFrame"..id.."HealthBarTextRight"]:SetAlpha(0);
            _G["UFP_PartyFrame"..id.."HealthBarFrame"]:SetScript("OnEnter", function(self)
                _G["UFP_PartyFrame"..id.."HealthBarText"]:SetAlpha(1);
                -- _G["UFP_PartyFrame"..id.."HealthBarTextLeft"]:SetAlpha(1);
                -- _G["UFP_PartyFrame"..id.."HealthBarTextRight"]:SetAlpha(1);
                -- UnitFrame_UpdateTooltip(_G["UFP_PartyFrame"..id]);
            end);
            _G["UFP_PartyFrame"..id.."HealthBarFrame"]:SetScript("OnLeave", function()
                _G["UFP_PartyFrame"..id.."HealthBarText"]:SetAlpha(0);
                -- _G["UFP_PartyFrame"..id.."HealthBarTextLeft"]:SetAlpha(0);
                -- _G["UFP_PartyFrame"..id.."HealthBarTextRight"]:SetAlpha(0);
                GameTooltip:Hide();
            end);
            _G["UFP_PartyFrame"..id.."ManaBarText"]:SetAlpha(0);
            -- _G["UFP_PartyFrame"..id.."ManaBarTextLeft"]:SetAlpha(0);
            -- _G["UFP_PartyFrame"..id.."ManaBarTextRight"]:SetAlpha(0);
            _G["UFP_PartyFrame"..id.."ManaBarFrame"]:SetScript("OnEnter", function(self)
                _G["UFP_PartyFrame"..id.."ManaBarText"]:SetAlpha(1);
                -- _G["UFP_PartyFrame"..id.."ManaBarTextLeft"]:SetAlpha(1);
                -- _G["UFP_PartyFrame"..id.."ManaBarTextRight"]:SetAlpha(1);
                -- UnitFrame_UpdateTooltip(_G["UFP_PartyFrame"..id]);
            end);
            _G["UFP_PartyFrame"..id.."ManaBarFrame"]:SetScript("OnLeave", function()
                _G["UFP_PartyFrame"..id.."ManaBarText"]:SetAlpha(0);
                -- _G["UFP_PartyFrame"..id.."ManaBarTextLeft"]:SetAlpha(0);
                -- _G["UFP_PartyFrame"..id.."ManaBarTextRight"]:SetAlpha(0);
                GameTooltip:Hide();
            end);
        end
    else
        for id = 1, 4, 1 do
            _G["UFP_PartyFrame"..id.."HealthBarText"]:SetAlpha(1);
            -- _G["UFP_PartyFrame"..id.."HealthBarTextLeft"]:SetAlpha(1);
            -- _G["UFP_PartyFrame"..id.."HealthBarTextRight"]:SetAlpha(1);
            _G["UFP_PartyFrame"..id.."HealthBarFrame"]:SetScript("OnEnter", function()
                -- UnitFrame_UpdateTooltip(_G["UFP_PartyFrame"..id]);
            end);
            _G["UFP_PartyFrame"..id.."HealthBarFrame"]:SetScript("OnLeave", function()
                GameTooltip:Hide();
            end);
            _G["UFP_PartyFrame"..id.."ManaBarText"]:SetAlpha(1);
            -- _G["UFP_PartyFrame"..id.."ManaBarTextLeft"]:SetAlpha(1);
            -- _G["UFP_PartyFrame"..id.."ManaBarTextRight"]:SetAlpha(1);
            _G["UFP_PartyFrame"..id.."ManaBarFrame"]:SetScript("OnEnter", function()
                -- UnitFrame_UpdateTooltip(_G["UFP_PartyFrame"..id]);
            end);
            _G["UFP_PartyFrame"..id.."ManaBarFrame"]:SetScript("OnLeave", function()
                GameTooltip:Hide();
            end);
        end
    end
end

local UnitFramesPlus_GetDisplayedAllyFrames = GetDisplayedAllyFrames;
function GetDisplayedAllyFrames()
    local useCompact = GetCVarBool("useCompactPartyFrames")
    if ( IsInGroup() and (IsInRaid() or useCompact) and (UnitFramesPlusDB["party"]["origin"] ~= 1 or UnitFramesPlusDB["party"]["hideraid"] ~= 1) ) then
        return "raid";
    elseif ( IsInGroup() and UnitFramesPlusDB["party"]["hideraid"] ~= 1) then
        return "party";
    else
        return nil;
    end
end

function UnitFramesPlus_UpdatePartyMemberFrame()
    for id = 1, MAX_PARTY_MEMBERS do
        _G["PartyMemberFrame"..id]:UnregisterAllEvents();
        _G["PartyMemberFrame"..id].Show = function() end
        _G["PartyMemberFrame"..id]:Hide();
        _G["PartyMemberFrame"..id.."PetFrame"]:UnregisterAllEvents();
        _G["PartyMemberFrame"..id.."PetFrame"].Show = function() end
        _G["PartyMemberFrame"..id.."PetFrame"]:Hide();
    end
end

-- local CompactRaidFrameManager_Show;
function UnitFramesPlus_UpdateCompactRaidFrameManager()
    if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["hideraid"] == 1 then
        local state = IsAddOnLoaded("Blizzard_CompactRaidFrames")
        if state == true then
            CompactRaidFrameManager.Show = function() end
            CompactRaidFrameManager:Hide();
        end
    else
        if GetDisplayedAllyFrames() == "raid" or GetDisplayedAllyFrames() == "party" then
            local state = IsAddOnLoaded("Blizzard_CompactRaidFrames")
            if state == true then
                CompactRaidFrameManager.Show = nil;
                CompactRaidFrameManager_UpdateShown(CompactRaidFrameManager);
                CompactRaidFrameManager_UpdateDisplayCounts(CompactRaidFrameManager);
                CompactRaidFrameManager_UpdateRaidIcons();
            end
        end
    end
end

function UnitFramesPlus_HideRaidFrameSet()
    UnitFramesPlus_UpdateCompactRaidFrameManager();
    UnitFramesPlus_UpdatePartyMemberFrame();
end

function UnitFramesPlus_HideRaidFrame()
    if not InCombatLockdown() then
        UnitFramesPlus_HideRaidFrameSet();
    else
        local func = {};
        func.name = "UnitFramesPlus_HideRaidFrameSet";
        func.callback = function()
            UnitFramesPlus_HideRaidFrameSet();
        end;
        UnitFramesPlus_WaitforCall(func);
    end
end

function UnitFramesPlus_PartyMemberFrame_OnUpdate(self, elapsed)
    UnitFramesPlus_PartyFrame_UpdateMemberHealth(self, elapsed);
    local partyStatus = _G[self:GetName().."Status"];
    if ( self.hasDispellable ) then
        partyStatus:Show();
        partyStatus:SetAlpha(BuffFrame.BuffAlphaValue);
        if ( self.debuffCountdown and self.debuffCountdown > 0 ) then
            self.debuffCountdown = self.debuffCountdown - elapsed;
        else
            partyStatus:Hide();
        end
    else
        partyStatus:Hide();
    end
end

function UnitFramesPlus_PartyPetFrame_OnEvent(self, event, ...)
    local id = self:GetID();
    _G["UFP_PartyPetFrame"..id.."HealthBar"]:SetMinMaxValues(0, 100);
    _G["UFP_PartyPetFrame"..id.."HealthBar"]:SetValue(UnitHealth("partypet"..id) / UnitHealthMax("partypet"..id) * 100);
    if event ~= "UNIT_HEALTH_FREQUENT" then
        UnitFrame_OnEvent(self, event, ...);
    end
end

function UnitFramesPlus_PartyExtraTextFontSize()
    for id = 1, 4, 1 do
        _G["UFP_PartyFrame"..id.."HealthBarText"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"], "OUTLINE");
        _G["UFP_PartyFrame"..id.."ManaBarText"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"], "OUTLINE");
        _G["UFP_PartyFrame"..id.."LevelText"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"], "OUTLINE");
        _G["UFP_PartyFrame"..id.."HPPctText"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"], "OUTLINE");
        -- _G["UFP_PartyFrame"..id.."DeathText"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"]+2, "OUTLINE");
        _G["UFP_PartyFrame"..id.."Name"]:SetFont(GameFontNormalSmall:GetFont(), UnitFramesPlusDB["party"]["fontsize"]+2);
    end
end

--模块初始化
function UnitFramesPlus_PartyInit()
    -- UnitFramesPlus_PartyShiftDrag();
    -- UnitFramesPlus_PartyOfflineDetection();
    UnitFramesPlus_PartyPortrait();
    -- UnitFramesPlus_PartyPortraitIndicator();
    UnitFramesPlus_PartyBuff();
    UnitFramesPlus_PartyScale();
    -- UnitFramesPlus_PartyColorHPBar();
    -- UnitFramesPlus_PartyName();
    -- UnitFramesPlus_PartyLevel();
    -- UnitFramesPlus_PartyHealthPct();
    UnitFramesPlus_PartyBarTextMouseShow();
    UnitFramesPlus_PartyExtraTextFontSize();
    -- local state = IsAddOnLoaded("Blizzard_CompactRaidFrames")
    -- if state == true then
    --     CompactRaidFrameManager_Show = CompactRaidFrameManager.Show;
    -- end
    UnitFramesPlus_HideRaidFrame();
end

function UnitFramesPlus_PartyCvar()
    UnitFramesPlus_PartyOrigin();
end
