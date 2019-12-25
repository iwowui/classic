--变量
local id = 1;
local _G = _G;

--状态数值
for id = 1, 4, 1 do
    local PartyHPMPText = CreateFrame("Frame", "UFP_PartyHPMPText"..id, _G["PartyMemberFrame"..id]);
    PartyHPMPText:SetFrameLevel(5);

    PartyHPMPText.HealthBarText = PartyHPMPText:CreateFontString("PartyMemberFrame"..id.."HealthBarText", "OVERLAY", "TextStatusBarText");
    PartyHPMPText.HealthBarText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
    PartyHPMPText.HealthBarText:SetTextColor(1, 1, 1);
    PartyHPMPText.HealthBarText:SetAlpha(1);
    PartyHPMPText.HealthBarText:ClearAllPoints();
    PartyHPMPText.HealthBarText:SetPoint("CENTER", _G["PartyMemberFrame"..id.."HealthBar"], "CENTER");
    PartyHPMPText.HealthBarText:SetJustifyH("CENTER");

    PartyHPMPText.ManaBarText = PartyHPMPText:CreateFontString("PartyMemberFrame"..id.."ManaBarText", "OVERLAY", "TextStatusBarText");
    PartyHPMPText.ManaBarText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
    PartyHPMPText.ManaBarText:SetTextColor(1, 1, 1);
    PartyHPMPText.ManaBarText:SetAlpha(1);
    PartyHPMPText.ManaBarText:ClearAllPoints();
    PartyHPMPText.ManaBarText:SetPoint("CENTER", _G["PartyMemberFrame"..id.."ManaBar"], "CENTER");
    PartyHPMPText.ManaBarText:SetJustifyH("CENTER");
end

--关闭团队风格小队界面
function UnitFramesPlus_PartyOriginSet()
    if UnitFramesPlusDB["party"]["origin"] == 1 then
        if tonumber(GetCVar("useCompactPartyFrames")) == 1 then
            SetCVar("useCompactPartyFrames", "0");
            _G["CompactUnitFrameProfiles"].optionsFrame.autoActivate2Players:Disable();
            _G["CompactUnitFrameProfiles"].optionsFrame.autoActivate3Players:Disable();
            _G["CompactUnitFrameProfiles"].optionsFrame.autoActivate5Players:Disable();
            CompactUnitFrameProfilesRaidStylePartyFrames:SetChecked(false);
        end
    else
        if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
            SetCVar("useCompactPartyFrames", "1");
            _G["CompactUnitFrameProfiles"].optionsFrame.autoActivate2Players:Disable();
            _G["CompactUnitFrameProfiles"].optionsFrame.autoActivate3Players:Disable();
            _G["CompactUnitFrameProfiles"].optionsFrame.autoActivate5Players:Disable();
            CompactUnitFrameProfilesRaidStylePartyFrames:SetChecked(false);
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

--非战斗状态中允许shift+左键拖动队友头像
local function UnitFramesPlus_PartyShiftDrag()
    PartyMemberFrame1:SetScript("OnMouseDown", function(self, elapsed)
        if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["movable"] == 1 then
            if IsShiftKeyDown() and (not InCombatLockdown()) then
                PartyMemberFrame1:StartMoving();
                UnitFramesPlusVar["party"]["moving"] = 1;
            end
        end
    end)

    PartyMemberFrame1:SetScript("OnMouseUp", function(self, elapsed)
        if UnitFramesPlusVar["party"]["moving"] == 1 then
            PartyMemberFrame1:StopMovingOrSizing();
            UnitFramesPlusVar["party"]["moving"] = 0;
            UnitFramesPlusVar["party"]["moved"] = 1;
            local left = PartyMemberFrame1:GetLeft();
            local bottom = PartyMemberFrame1:GetBottom();
            UnitFramesPlusVar["party"]["x"] = left;
            UnitFramesPlusVar["party"]["y"] = bottom;
        end
    end)

    PartyMemberFrame1:SetMovable(1);
    PartyMemberFrame1:SetClampedToScreen(1);
end

--队友等级
for id = 1, 4, 1 do
    local PartyLevel = CreateFrame("Frame", "UFP_PartyLevel"..id, _G["PartyMemberFrame"..id]);
    PartyLevel:SetAttribute("unit", "party"..id);
    RegisterUnitWatch(PartyLevel);
    PartyLevel.Text = _G["UFP_PartyLevel"..id]:CreateFontString("PartyMemberFrame"..id.."Level", "OVERLAY", "GameTooltipText");
    PartyLevel.Text:ClearAllPoints();
    PartyLevel.Text:SetPoint("TOPLEFT", _G["PartyMemberFrame"..id], "BOTTOMLEFT", -9, 12);
    PartyLevel.Text:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
    PartyLevel.Text:SetTextColor(1, 0.82, 0);
    PartyLevel.Text:SetJustifyH("LEFT");
end

function UnitFramesPlus_PartyLevel()
    for id = 1, 4, 1 do
        if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["level"] == 1 then
            _G["UFP_PartyLevel"..id]:RegisterEvent("PLAYER_ENTERING_WORLD");
            _G["UFP_PartyLevel"..id]:RegisterEvent("GROUP_ROSTER_UPDATE");
            _G["UFP_PartyLevel"..id]:RegisterEvent("PARTY_LEADER_CHANGED");
            _G["UFP_PartyLevel"..id]:RegisterEvent("PARTY_MEMBER_ENABLE");
            _G["UFP_PartyLevel"..id]:RegisterEvent("PARTY_MEMBER_DISABLE");
            -- _G["UFP_PartyLevel"..id]:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "party"..id);
            -- _G["UFP_PartyLevel"..id]:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "party"..id);
            _G["UFP_PartyLevel"..id]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
            _G["UFP_PartyLevel"..id]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
            _G["UFP_PartyLevel"..id]:RegisterUnitEvent("UNIT_PET", "party"..id);
            _G["UFP_PartyLevel"..id]:RegisterUnitEvent("UNIT_LEVEL", "party"..id);
            _G["UFP_PartyLevel"..id]:SetScript("OnEvent", function(self, event, ...)
                -- if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
                    UnitFramesPlus_PartyLevelDisplayUpdate(id)
                -- end
            end)
        else
            _G["UFP_PartyLevel"..id].Text:SetText("");
            if _G["UFP_PartyLevel"..id]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                _G["UFP_PartyLevel"..id]:UnregisterEvent("PLAYER_ENTERING_WORLD");
                _G["UFP_PartyLevel"..id]:UnregisterEvent("GROUP_ROSTER_UPDATE");
                _G["UFP_PartyLevel"..id]:UnregisterEvent("PARTY_LEADER_CHANGED");
                _G["UFP_PartyLevel"..id]:UnregisterEvent("PARTY_MEMBER_ENABLE");
                _G["UFP_PartyLevel"..id]:UnregisterEvent("PARTY_MEMBER_DISABLE");
                -- _G["UFP_PartyLevel"..id]:UnregisterEvent("UNIT_ENTERED_VEHICLE");
                -- _G["UFP_PartyLevel"..id]:UnregisterEvent("UNIT_EXITED_VEHICLE");
                _G["UFP_PartyLevel"..id]:UnregisterEvent("UNIT_CONNECTION");
                _G["UFP_PartyLevel"..id]:UnregisterEvent("UNIT_PHASE");
                _G["UFP_PartyLevel"..id]:UnregisterEvent("UNIT_PET");
                _G["UFP_PartyLevel"..id]:UnregisterEvent("UNIT_LEVEL");
                _G["UFP_PartyLevel"..id]:SetScript("OnEvent", nil);
            end
        end
    end
end

--设置插件时刷新队友等级显示
function UnitFramesPlus_PartyLevelDisplayUpdate(id)
    local LevelText = "";
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["level"] == 1 then
            if UnitLevel(_G["PartyMemberFrame"..id].unit) and UnitLevel(_G["PartyMemberFrame"..id].unit) >= 1 then
                LevelText = UnitLevel(_G["PartyMemberFrame"..id].unit);
            end
        end
    end
    _G["UFP_PartyLevel"..id].Text:SetText(LevelText);
end

-- --队友生命条染色
-- function UnitFramesPlus_PartyColorHPBar()
--     for id = 1, 4, 1 do
--         if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["colorhp"] == 1 then
--             if UnitFramesPlusDB["party"]["colortype"] == 1 then
--                 _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnValueChanged", nil);
--                 _G["PartyMemberFrame"..id.."HealthBar"]:RegisterEvent("PLAYER_ENTERING_WORLD");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:RegisterEvent("GROUP_ROSTER_UPDATE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:RegisterEvent("PARTY_LEADER_CHANGED");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:RegisterEvent("PARTY_MEMBER_ENABLE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:RegisterEvent("PARTY_MEMBER_DISABLE");
--                 -- _G["PartyMemberFrame"..id.."HealthBar"]:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "party"..id);
--                 -- _G["PartyMemberFrame"..id.."HealthBar"]:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "party"..id);
--                 _G["PartyMemberFrame"..id.."HealthBar"]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
--                 _G["PartyMemberFrame"..id.."HealthBar"]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
--                 _G["PartyMemberFrame"..id.."HealthBar"]:RegisterUnitEvent("UNIT_PET", "party"..id);
--                 _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnEvent", function(self, event, ...)
--                     -- if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
--                         UnitFramesPlus_PartyColorHPBarDisplayUpdate(id);
--                     -- end
--                 end)
--             elseif UnitFramesPlusDB["party"]["colortype"] == 2 then
--                 if _G["PartyMemberFrame"..id.."HealthBar"]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("PLAYER_ENTERING_WORLD");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("GROUP_ROSTER_UPDATE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("PARTY_LEADER_CHANGED");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("PARTY_MEMBER_ENABLE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("PARTY_MEMBER_DISABLE");
--                 -- _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_ENTERED_VEHICLE");
--                 -- _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_EXITED_VEHICLE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_CONNECTION");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_PHASE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_PET");
--                     _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnEvent", nil);
--                 end
--                 _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnValueChanged", function(self, value)
--                     -- if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
--                         UnitFramesPlus_PartyColorHPBarDisplayUpdate(id);
--                     -- end
--                 end)
--             end
--             -- _G["PartyMemberFrame"..id.."HealthBar"].lockColor = true;
--         else
--             _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnValueChanged", nil);
--             if _G["PartyMemberFrame"..id.."HealthBar"]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("PLAYER_ENTERING_WORLD");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("GROUP_ROSTER_UPDATE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("PARTY_LEADER_CHANGED");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("PARTY_MEMBER_ENABLE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("PARTY_MEMBER_DISABLE");
--                 -- _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_ENTERED_VEHICLE");
--                 -- _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_EXITED_VEHICLE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_CONNECTION");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_PHASE");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:UnregisterEvent("UNIT_PET");
--                 _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnEvent", nil);
--             end
--             _G["PartyMemberFrame"..id.."HealthBar"]:SetStatusBarColor(0, 1, 0);
--             -- _G["PartyMemberFrame"..id.."HealthBar"].lockColor = nil;
--         end
--     end
-- end

--设置插件时刷新队友生命条染色显示
function UnitFramesPlus_PartyColorHPBarDisplayUpdate(id)
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["colorhp"] == 1 then
            if UnitFramesPlusDB["party"]["colortype"] == 2 then
                local CurHP = UnitHealth("party"..id);
                local MaxHP = UnitHealthMax("party"..id);
                local r, g, b = UnitFramesPlus_GetRGB(CurHP, MaxHP);
                _G["PartyMemberFrame"..id.."HealthBar"]:SetStatusBarColor(r, g, b);
            elseif UnitFramesPlusDB["party"]["colortype"] == 1 then
                local color = RAID_CLASS_COLORS[select(2, UnitClass("party"..id))] or {r=0, g=1, b=0};
                _G["PartyMemberFrame"..id.."HealthBar"]:SetStatusBarColor(color.r, color.g, color.b);
            end
        end
    end
end

--队友生命条染色
hooksecurefunc("UnitFrameHealthBar_Update", function(statusbar, unit)
    for id = 1, 4, 1 do
        if unit == "party"..id and statusbar.unit == "party"..id then
            UnitFramesPlus_PartyColorHPBarDisplayUpdate(id);
        end
    end
end);
hooksecurefunc("HealthBar_OnValueChanged", function(self, value, smooth)
    for id = 1, 4, 1 do
        if self.unit == "party"..id then
            UnitFramesPlus_PartyColorHPBarDisplayUpdate(id);
        end
    end
end);

--队友名字染色
for id = 1, 4, 1 do
    local PartyColorName = CreateFrame("Frame", "UFP_PartyColorName"..id,  _G["PartyMemberFrame"..id]);
end

function UnitFramesPlus_PartyName()
    for id = 1, 4, 1 do
        if UnitFramesPlusDB["party"]["origin"] == 1 and (UnitFramesPlusDB["party"]["colorname"] == 1 
        -- or UnitFramesPlusDB["party"]["shortname"] == 1 
        or UnitFramesPlusDB["party"]["portrait"] == 1) then
            _G["UFP_PartyColorName"..id]:RegisterEvent("PLAYER_ENTERING_WORLD");
            _G["UFP_PartyColorName"..id]:RegisterEvent("GROUP_ROSTER_UPDATE");
            _G["UFP_PartyColorName"..id]:RegisterEvent("PARTY_LEADER_CHANGED");
            _G["UFP_PartyColorName"..id]:RegisterEvent("PARTY_MEMBER_ENABLE");
            _G["UFP_PartyColorName"..id]:RegisterEvent("PARTY_MEMBER_DISABLE");
            -- _G["UFP_PartyColorName"..id]:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "party"..id);
            -- _G["UFP_PartyColorName"..id]:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "party"..id);
            _G["UFP_PartyColorName"..id]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
            _G["UFP_PartyColorName"..id]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
            _G["UFP_PartyColorName"..id]:RegisterUnitEvent("UNIT_PET", "party"..id);
            _G["UFP_PartyColorName"..id]:SetScript("OnEvent", function(self, event, ...)
                -- if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
                    UnitFramesPlus_PartyColorNameDisplayUpdate(id);
                    -- UnitFramesPlus_PartyShortNameDisplayUpdate(id);
                -- end
            end)
        else
            _G["PartyMemberFrame"..id].name:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
            if _G["UFP_PartyColorName"..id]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                _G["UFP_PartyColorName"..id]:UnregisterEvent("PLAYER_ENTERING_WORLD");
                _G["UFP_PartyColorName"..id]:UnregisterEvent("GROUP_ROSTER_UPDATE");
                _G["UFP_PartyColorName"..id]:UnregisterEvent("PARTY_LEADER_CHANGED");
                _G["UFP_PartyColorName"..id]:UnregisterEvent("PARTY_MEMBER_ENABLE");
                _G["UFP_PartyColorName"..id]:UnregisterEvent("PARTY_MEMBER_DISABLE");
                -- _G["UFP_PartyColorName"..id]:UnregisterEvent("UNIT_ENTERED_VEHICLE");
                -- _G["UFP_PartyColorName"..id]:UnregisterEvent("UNIT_EXITED_VEHICLE");
                _G["UFP_PartyColorName"..id]:UnregisterEvent("UNIT_CONNECTION");
                _G["UFP_PartyColorName"..id]:UnregisterEvent("UNIT_PHASE");
                _G["UFP_PartyColorName"..id]:UnregisterEvent("UNIT_PET");
            end
        end
    end
end

--设置插件时刷新队友名字染色显示
function UnitFramesPlus_PartyColorNameDisplayUpdate(id)
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        local color = NORMAL_FONT_COLOR;
        if UnitFramesPlusDB["party"]["colorname"] == 1 then
            color = RAID_CLASS_COLORS[select(2, UnitClass(_G["PartyMemberFrame"..id].unit))] or NORMAL_FONT_COLOR;
        end
        _G["PartyMemberFrame"..id].name:SetTextColor(color.r, color.g, color.b);
    end
end

-- --设置插件时隐藏队友服务器显示
-- function UnitFramesPlus_PartyShortNameDisplayUpdate(id)
--     if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
--         local name, realm = UnitName("party"..id);
--         local fullname = name;
--         if realm then
--             if UnitFramesPlusDB["party"]["shortname"] == 1 then
--                 fullname = name.."(*)";
--             else
--                 fullname = name.."-"..realm;
--             end
--         end
--         _G["PartyMemberFrame"..id].name:SetText(fullname);
--     end
-- end

for id = 1, 4, 1 do
    local Party3DPortrait = CreateFrame("PlayerModel", "UFP_Party3DPortrait"..id, _G["PartyMemberFrame"..id]);
    Party3DPortrait:SetWidth(29);
    Party3DPortrait:SetHeight(29);
    Party3DPortrait:SetFrameLevel(1);
    Party3DPortrait:ClearAllPoints();
    Party3DPortrait:SetPoint("TOPLEFT", _G["PartyMemberFrame"..id], "TOPLEFT", 11, -12)
    Party3DPortrait:Hide();
    Party3DPortrait.Background = Party3DPortrait:CreateTexture("UFP_Party3DPortraitBG"..id, "BACKGROUND");
    Party3DPortrait.Background:SetTexture("Interface\\AddOns\\UnitFramesPlus\\Portrait3D");
    Party3DPortrait.Background:SetWidth(37);
    Party3DPortrait.Background:SetHeight(37);
    Party3DPortrait.Background:ClearAllPoints();
    Party3DPortrait.Background:SetPoint("CENTER", Party3DPortrait, "CENTER", -1, 0);
    Party3DPortrait.Background:Hide();

    local PartyClassPortrait = _G["PartyMemberFrame"..id]:CreateTexture("UFP_PartyClassPortrait"..id, "ARTWORK");
    PartyClassPortrait:SetWidth(37);
    PartyClassPortrait:SetHeight(37);
    PartyClassPortrait:ClearAllPoints();
    PartyClassPortrait:SetPoint("TOPLEFT", _G["PartyMemberFrame"..id], "TOPLEFT", 7, -6);
    PartyClassPortrait:Hide();
end

for id = 1, 4, 1 do
    local pp = CreateFrame("Frame", "UFP_PartyPortraitType"..id,  _G["PartyMemberFrame"..id]);
end
function UnitFramesPlus_PartyPortrait()
    if UnitFramesPlusDB["party"]["portrait"] == 1 and UnitFramesPlusDB["party"]["origin"] == 1 then
        for id = 1, 4, 1 do
            _G["PartyMemberFrame"..id.."Portrait"]:Hide();
            if UnitFramesPlusDB["party"]["portraittype"] == 1 then
                _G["UFP_Party3DPortrait"..id]:Show();
                _G["UFP_PartyClassPortrait"..id]:Hide();
                UnitFramesPlus_PartyPortrait3DBGDisplayUpdate(id);
                _G["UFP_PartyPortraitType"..id]:RegisterEvent("PLAYER_ENTERING_WORLD");
                _G["UFP_PartyPortraitType"..id]:RegisterEvent("GROUP_ROSTER_UPDATE");
                _G["UFP_PartyPortraitType"..id]:RegisterEvent("PARTY_LEADER_CHANGED");
                _G["UFP_PartyPortraitType"..id]:RegisterEvent("PARTY_MEMBER_ENABLE");
                _G["UFP_PartyPortraitType"..id]:RegisterEvent("PARTY_MEMBER_DISABLE");
                -- _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "party"..id);
                -- _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "party"..id);
                _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
                _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_PET", "party"..id);
                _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_MODEL_CHANGED", "party"..id);
                _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
                _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_HEALTH_FREQUENT", "party"..id);
                _G["UFP_PartyPortraitType"..id]:SetScript("OnEvent", function(self, event, ...)
                    if event == "PLAYER_ENTERING_WORLD" or event == "GROUP_ROSTER_UPDATE" 
                    or event == "PARTY_LEADER_CHANGED"  or event == "PARTY_MEMBER_ENABLE" 
                    -- or event == "PARTY_MEMBER_DISABLE"  or event == "UNIT_ENTERED_VEHICLE" 
                    or event == "PARTY_MEMBER_DISABLE" 
                    -- or event == "UNIT_EXITED_VEHICLE"  or event == "UNIT_PET" then
                    or event == "UNIT_PET" then
                        if UnitExists("party"..id) then
                            if UnitFramesPlusDB["party"]["portrait3dbg"] == 1 then
                                local color = RAID_CLASS_COLORS[select(2, UnitClass("party"..id))] or NORMAL_FONT_COLOR;
                                _G["UFP_Party3DPortrait"..id].Background:SetVertexColor(color.r/1.5, color.g/1.5, color.b/1.5, 1);
                            end
                            UnitFramesPlus_PartyPortraitDisplayUpdate(id);
                        end
                    elseif event == "UNIT_MODEL_CHANGED" or event == "UNIT_CONNECTION" or event == "UNIT_PHASE" then
                        UnitFramesPlus_PartyPortraitDisplayUpdate(id);
                    elseif event == "UNIT_HEALTH_FREQUENT" then
                        if (not UnitIsConnected("party"..id)) or UnitIsGhost("party"..id) then
                            _G["UFP_Party3DPortrait"..id]:SetLight(true, false, 0, 0, 0, 1.0, 0.25, 0.25, 0.25);
                        elseif UnitIsDead("party"..id) then
                            _G["UFP_Party3DPortrait"..id]:SetLight(true, false, 0, 0, 0, 1.0, 1, 0.3, 0.3);
                        else
                            _G["UFP_Party3DPortrait"..id]:SetLight(true, false, 0, 0, 0, 1.0, 1, 1, 1);
                        end
                    end
                end)
            elseif UnitFramesPlusDB["party"]["portraittype"] == 2 then
                _G["UFP_Party3DPortrait"..id]:Hide();
                _G["UFP_PartyClassPortrait"..id]:Show();
                if not _G["UFP_PartyPortraitType"..id]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                    _G["UFP_PartyPortraitType"..id]:RegisterEvent("PLAYER_ENTERING_WORLD");
                    _G["UFP_PartyPortraitType"..id]:RegisterEvent("GROUP_ROSTER_UPDATE");
                    _G["UFP_PartyPortraitType"..id]:RegisterEvent("PARTY_LEADER_CHANGED");
                    _G["UFP_PartyPortraitType"..id]:RegisterEvent("PARTY_MEMBER_ENABLE");
                    _G["UFP_PartyPortraitType"..id]:RegisterEvent("PARTY_MEMBER_DISABLE");
                    -- _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "party"..id);
                    -- _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "party"..id);
                    _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
                    _G["UFP_PartyPortraitType"..id]:RegisterUnitEvent("UNIT_PET", "party"..id);
                else
                    if _G["UFP_PartyPortraitType"..id]:IsEventRegistered("UNIT_MODEL_CHANGED") then
                        _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_MODEL_CHANGED");
                        _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_CONNECTION");
                        _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_HEALTH_FREQUENT");
                    end
                end
                _G["UFP_PartyPortraitType"..id]:SetScript("OnEvent", function(self, event, ...)
                    if UnitExists("party"..id) then
                        UnitFramesPlus_PartyPortraitDisplayUpdate(id);
                    end
                end)
            end
            UnitFramesPlus_PartyPortraitDisplayUpdate(id);
        end
    else
        for id = 1, 4, 1 do
            _G["PartyMemberFrame"..id.."Portrait"]:Show();
            _G["UFP_Party3DPortrait"..id]:Hide();
            _G["UFP_PartyClassPortrait"..id]:Hide();
            if _G["UFP_PartyPortraitType"..id]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("PLAYER_ENTERING_WORLD");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("GROUP_ROSTER_UPDATE");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("PARTY_LEADER_CHANGED");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("PARTY_MEMBER_ENABLE");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("PARTY_MEMBER_DISABLE");
                -- _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_ENTERED_VEHICLE");
                -- _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_EXITED_VEHICLE");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_PHASE");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_PET");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_MODEL_CHANGED");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_CONNECTION");
                _G["UFP_PartyPortraitType"..id]:UnregisterEvent("UNIT_HEALTH_FREQUENT");
                _G["UFP_PartyPortraitType"..id]:SetScript("OnEvent", nil);
            end
        end
    end
end

--刷新队友3D头像背景显示
function UnitFramesPlus_PartyPortrait3DBGDisplayUpdate(id)
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["portrait"] == 1 
        and UnitFramesPlusDB["party"]["portraittype"] == 1
        and UnitFramesPlusDB["party"]["portrait3dbg"] == 1 then
            _G["UFP_Party3DPortrait"..id].Background:Show();
        else
            _G["UFP_Party3DPortrait"..id].Background:Hide();
        end
    end
end

--刷新队友头像显示
function UnitFramesPlus_PartyPortraitDisplayUpdate(id)
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["portraittype"] == 1 then
            if (not UnitIsConnected("party"..id)) or (not UnitIsVisible("party"..id)) then
                _G["UFP_Party3DPortrait"..id]:SetPortraitZoom(0);
                _G["UFP_Party3DPortrait"..id]:SetCamDistanceScale(0.25);
                _G["UFP_Party3DPortrait"..id]:SetPosition(0,0,0.5);
                _G["UFP_Party3DPortrait"..id]:ClearModel();
                _G["UFP_Party3DPortrait"..id]:SetModel("Interface\\Buttons\\TalkToMeQuestionMark.M2");
            else
                _G["UFP_Party3DPortrait"..id]:SetPortraitZoom(1);
                _G["UFP_Party3DPortrait"..id]:SetCamDistanceScale(1);
                _G["UFP_Party3DPortrait"..id]:SetPosition(0,0,0);
                _G["UFP_Party3DPortrait"..id]:ClearModel();
                _G["UFP_Party3DPortrait"..id]:SetUnit("party"..id);
                if (not UnitIsConnected("party"..id)) or UnitIsGhost("party"..id) then
                    _G["UFP_Party3DPortrait"..id]:SetLight(true, false, 0, 0, 0, 1.0, 0.25, 0.25, 0.25);
                elseif UnitIsDead("party"..id) then
                    _G["UFP_Party3DPortrait"..id]:SetLight(true, false, 0, 0, 0, 1.0, 1, 0.3, 0.3);
                else
                    _G["UFP_Party3DPortrait"..id]:SetLight(true, false, 0, 0, 0, 1.0, 1, 1, 1);
                end
            end
        elseif UnitFramesPlusDB["party"]["portraittype"] == 2 then
            local IconCoord = CLASS_ICON_TCOORDS[select(2,UnitClass("party"..id))]
            if IconCoord then
                _G["UFP_PartyClassPortrait"..id]:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles");
                _G["UFP_PartyClassPortrait"..id]:SetTexCoord(unpack(IconCoord));
            end
        end
    end
end


for id = 1, 4, 1 do
    --队友生命值百分比
    local PartyHPPct = CreateFrame("Frame", "UFP_PartyHPPct"..id,  _G["PartyMemberFrame"..id]);
    PartyHPPct:SetAttribute("unit", "party"..id);
    RegisterUnitWatch(PartyHPPct);
    PartyHPPct.Text = PartyHPPct:CreateFontString("PartyMemberFrame"..id.."HPPct", "OVERLAY", "GameTooltipText");
    PartyHPPct.Text:ClearAllPoints();
    PartyHPPct.Text:SetPoint("LEFT", _G["PartyMemberFrame"..id.."HealthBar"], "RIGHT", 4, 0);
    PartyHPPct.Text:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
    PartyHPPct.Text:SetTextColor(1, 0.82, 0);
    PartyHPPct.Text:SetJustifyH("LEFT");

    --队友死亡、灵魂提示
    local PartyDeath = CreateFrame("Frame", "UFP_PartyDeath"..id,  _G["PartyMemberFrame"..id]);
    PartyDeath:SetAttribute("unit", "party"..id);
    RegisterUnitWatch(PartyDeath);
    PartyDeath:SetFrameLevel(7);
    PartyDeath.Text = PartyDeath:CreateFontString("PartyMemberFrame"..id.."DeathText", "OVERLAY", "GameTooltipText");
    PartyDeath.Text:ClearAllPoints();
    PartyDeath.Text:SetPoint("CENTER", _G["PartyMemberFrame"..id.."HealthBar"], "CENTER", 0, -5);
    PartyDeath.Text:SetFont(GameFontNormal:GetFont(), 12, "OUTLINE");
    PartyDeath.Text:SetTextColor(1, 1, 1);
    PartyDeath.Text:SetJustifyH("CENTER");
end

function UnitFramesPlus_PartyHealthPct()
    for id = 1, 4, 1 do
        if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["hp"] == 1 then
            _G["UFP_PartyHPPct"..id]:RegisterEvent("PLAYER_ENTERING_WORLD");
            _G["UFP_PartyHPPct"..id]:RegisterEvent("GROUP_ROSTER_UPDATE");
            _G["UFP_PartyHPPct"..id]:RegisterEvent("PARTY_LEADER_CHANGED");
            _G["UFP_PartyHPPct"..id]:RegisterEvent("PARTY_MEMBER_ENABLE");
            _G["UFP_PartyHPPct"..id]:RegisterEvent("PARTY_MEMBER_DISABLE");
            -- _G["UFP_PartyHPPct"..id]:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "party"..id);
            -- _G["UFP_PartyHPPct"..id]:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "party"..id);
            _G["UFP_PartyHPPct"..id]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
            _G["UFP_PartyHPPct"..id]:RegisterUnitEvent("UNIT_PHASE", "party"..id);
            _G["UFP_PartyHPPct"..id]:RegisterUnitEvent("UNIT_PET", "party"..id);
            _G["UFP_PartyHPPct"..id]:RegisterUnitEvent("UNIT_HEALTH_FREQUENT", "party"..id);
            _G["UFP_PartyHPPct"..id]:RegisterUnitEvent("UNIT_POWER_FREQUENT", "party"..id);
            _G["UFP_PartyHPPct"..id]:SetScript("OnEvent", function(self, event, ...)
                -- if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
                    -- UnitFramesPlus_PartyHealthPctDisplayUpdate(id);
                -- end
                    if event == "UNIT_HEALTH_FREQUENT" then
                        UnitFramesPlus_PartyHealthPctDisplayUpdate(id);
                    elseif event == "UNIT_POWER_FREQUENT" then
                        UnitFramesPlus_PartyPowerDisplayUpdate(id)
                    else
                        UnitFramesPlus_PartyHealthPctDisplayUpdate(id);
                        UnitFramesPlus_PartyPowerDisplayUpdate(id)
                    end
            end)
        else
            _G["UFP_PartyHPPct"..id].Text:SetText("");
            if _G["UFP_PartyHPPct"..id]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("PLAYER_ENTERING_WORLD");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("GROUP_ROSTER_UPDATE");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("PARTY_LEADER_CHANGED");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("PARTY_MEMBER_ENABLE");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("PARTY_MEMBER_DISABLE");
                -- _G["UFP_PartyHPPct"..id]:UnregisterEvent("UNIT_ENTERED_VEHICLE");
                -- _G["UFP_PartyHPPct"..id]:UnregisterEvent("UNIT_EXITED_VEHICLE");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("UNIT_CONNECTION");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("UNIT_PHASE");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("UNIT_PET");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("UNIT_HEALTH_FREQUENT");
                _G["UFP_PartyHPPct"..id]:UnregisterEvent("UNIT_POWER_FREQUENT");
                _G["UFP_PartyHPPct"..id]:SetScript("OnEvent", nil);
            end
        end
    end
end

--设置插件时刷新队友生命值百分比显示
function UnitFramesPlus_PartyHealthPctDisplayUpdate(id)
    local HPText = "";
    -- local MPText = "";
    local PctText = "";
    local DeathText = "";
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

        if UnitFramesPlusDB["party"]["death"] == 1 then
            if UnitIsDead("party"..id) then
                DeathText = UFPLocal_DeathText;
            elseif UnitIsGhost("party"..id) then
                DeathText = UFPLocal_GhostText;
            end
        end
    end
    _G["UFP_PartyHPPct"..id].Text:SetText(PctText);
    _G["UFP_PartyDeath"..id].Text:SetText(DeathText);

    _G["PartyMemberFrame"..id.."HealthBarText"]:SetText(HPText);
    -- _G["PartyMemberFrame"..id.."ManaBarText"]:SetText(MPText);
end

function UnitFramesPlus_PartyPowerDisplayUpdate(id)
    local MPText = "";
    if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 then
        if UnitFramesPlusDB["party"]["bartext"] == 1 and not UnitIsDead("party"..id) then
            local CurManafix, MaxManafix = UnitFramesPlus_GetValueFix(UnitPower("party"..id), UnitPowerMax("party"..id), UnitFramesPlusDB["party"]["hpmpunit"], UnitFramesPlusDB["party"]["unittype"]);
            MPText = CurManafix.."/"..MaxManafix
        end
    end
    _G["PartyMemberFrame"..id.."ManaBarText"]:SetText(MPText);
end

--队友头像内战斗信息
for id = 1, 4, 1 do
    local PartyPortraitIndicator = CreateFrame("Frame", "UFP_PartyPortraitIndicator"..id, _G["PartyMemberFrame"..id]);
    PartyPortraitIndicator:SetAttribute("unit", "party"..id);
    RegisterUnitWatch(PartyPortraitIndicator);
    _G["UFP_PartyPortraitIndicator"..id]:SetFrameStrata("MEDIUM");
    _G["UFP_PartyPortraitIndicator"..id].feedbackStartTime = GetTime();
    _G["UFP_PartyPortraitIndicator"..id]:CreateFontString("UFP_PartyHitIndicator"..id, "OVERLAY", "NumberFontNormalHuge");
    _G["UFP_PartyHitIndicator"..id]:ClearAllPoints();
    _G["UFP_PartyHitIndicator"..id]:SetPoint("CENTER", _G["PartyMemberFrame"..id.."Portrait"], "CENTER", 0, 0);
    CombatFeedback_Initialize(_G["UFP_PartyPortraitIndicator"..id], _G["UFP_PartyHitIndicator"..id], 20);
end

function UnitFramesPlus_PartyPortraitIndicator()
    if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["indicator"] == 1 then
        for id = 1, 4, 1 do
            _G["UFP_PartyPortraitIndicator"..id]:RegisterEvent("PLAYER_ENTERING_WORLD");
            _G["UFP_PartyPortraitIndicator"..id]:RegisterEvent("GROUP_ROSTER_UPDATE");
            _G["UFP_PartyPortraitIndicator"..id]:RegisterEvent("PARTY_LEADER_CHANGED");
            _G["UFP_PartyPortraitIndicator"..id]:RegisterUnitEvent("UNIT_CONNECTION", "party"..id);
            _G["UFP_PartyPortraitIndicator"..id]:RegisterUnitEvent("UNIT_COMBAT", "party"..id);
            _G["UFP_PartyPortraitIndicator"..id]:SetScript("OnEvent", function(self, event, ...)
                -- if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
                    local arg1, arg2, arg3, arg4, arg5 = ...;
                    if event == "PLAYER_ENTERING_WORLD" or event == "GROUP_ROSTER_UPDATE" or event == "PARTY_LEADER_CHANGED" or (event == "UNIT_CONNECTION" and arg2 == false) then
                        _G["UFP_PartyHitIndicator"..id]:Hide();
                    elseif event == "UNIT_COMBAT" then
                        CombatFeedback_OnCombatEvent(self, arg2, arg3, arg4, arg5);
                    end
                -- end
            end)

            _G["UFP_PartyPortraitIndicator"..id]:SetScript("OnUpdate", function(self, elapsed)
                -- if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
                    CombatFeedback_OnUpdate(self, elapsed);
                -- end
            end)
        end
    else
        for id = 1, 4, 1 do
            _G["UFP_PartyHitIndicator"..id]:Hide();
            if _G["UFP_PartyPortraitIndicator"..id]:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                _G["UFP_PartyPortraitIndicator"..id]:UnregisterEvent("PLAYER_ENTERING_WORLD");
                _G["UFP_PartyPortraitIndicator"..id]:UnregisterEvent("GROUP_ROSTER_UPDATE");
                _G["UFP_PartyPortraitIndicator"..id]:UnregisterEvent("PARTY_LEADER_CHANGED");
                _G["UFP_PartyPortraitIndicator"..id]:UnregisterEvent("UNIT_COMBAT");
                _G["UFP_PartyPortraitIndicator"..id]:UnregisterEvent("UNIT_CONNECTION");
                _G["UFP_PartyPortraitIndicator"..id]:SetScript("OnUpdate", nil);
                _G["UFP_PartyPortraitIndicator"..id]:SetScript("OnEvent", nil);
            end
        end
    end
end

--队友离线检测
for id = 1, 4, 1 do
    local PartyOfflineStatus = _G["PartyMemberFrame"..id]:CreateTexture("UFP_PartyOfflineStatus"..id, "OVERLAY", _G["PartyMemberFrame"..id]);
    _G["UFP_PartyOfflineStatus"..id]:SetTexture("Interface\\CharacterFrame\\Disconnect-Icon");
    _G["UFP_PartyOfflineStatus"..id]:SetWidth(64);
    _G["UFP_PartyOfflineStatus"..id]:SetHeight(64);
    _G["UFP_PartyOfflineStatus"..id]:ClearAllPoints();
    _G["UFP_PartyOfflineStatus"..id]:SetPoint("LEFT", _G["PartyMemberFrame"..id], "LEFT", -7, -1);
    _G["UFP_PartyOfflineStatus"..id]:SetAlpha(0);
end

local pm = CreateFrame("Frame");
function UnitFramesPlus_PartyOfflineDetection()
    if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["onoff"] == 1 then
        pm:RegisterEvent("PLAYER_ENTERING_WORLD");
        pm:RegisterEvent("GROUP_ROSTER_UPDATE");
        pm:RegisterEvent("PARTY_LEADER_CHANGED");
        pm:RegisterEvent("PARTY_MEMBER_ENABLE");
        pm:RegisterEvent("PARTY_MEMBER_DISABLE");
        pm:RegisterEvent("UNIT_CONNECTION");
        pm:SetScript("OnEvent", function(self, event, ...)
            -- if tonumber(GetCVar("useCompactPartyFrames")) ~= 1 then
                if event == "PLAYER_ENTERING_WORLD" or event == "GROUP_ROSTER_UPDATE" or event == "PARTY_LEADER_CHANGED" or event == "PARTY_MEMBER_ENABLE" or event == "PARTY_MEMBER_DISABLE" then
                    UnitFramesPlus_PartyOfflineDetectionDisplayUpdate();
                elseif event == "UNIT_CONNECTION" then
                    local unit, hasConnected = ...;
                    for id = 1, 4, 1 do
                        if UnitExists("party"..id) and unit == "party"..id then
                            if hasConnected == false then
                                -- _G["PartyMemberFrame"..id]:SetAlpha(0.5);
                                _G["UFP_PartyOfflineStatus"..id]:SetAlpha(1);
                            else
                                -- _G["PartyMemberFrame"..id]:SetAlpha(1);
                                _G["UFP_PartyOfflineStatus"..id]:SetAlpha(0);
                            end
                        end
                    end
                end
            -- end
        end)
    else
        for id = 1, 4, 1 do
            -- _G["PartyMemberFrame"..id]:SetAlpha(1);
            _G["UFP_PartyOfflineStatus"..id]:SetAlpha(0);
        end
        if pm:IsEventRegistered("PLAYER_ENTERING_WORLD") then
            pm:UnregisterEvent("PLAYER_ENTERING_WORLD");
            pm:UnregisterEvent("GROUP_ROSTER_UPDATE");
            pm:UnregisterEvent("PARTY_LEADER_CHANGED");
            pm:UnregisterEvent("UNIT_CONNECTION");
            pm:SetScript("OnEvent", nil);
        end
    end
end

--刷新队友离线检测显示
function UnitFramesPlus_PartyOfflineDetectionDisplayUpdate()
    for id = 1, 4, 1 do
        if UnitExists("party"..id) and UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["onoff"] == 1 then
            if not UnitIsConnected("party"..id) then
                -- _G["PartyMemberFrame"..id]:SetAlpha(0.5);
                _G["UFP_PartyOfflineStatus"..id]:SetAlpha(1);
            else
                -- _G["PartyMemberFrame"..id]:SetAlpha(1);
                _G["UFP_PartyOfflineStatus"..id]:SetAlpha(0);
            end
        else
            -- _G["PartyMemberFrame"..id]:SetAlpha(1);
            _G["UFP_PartyOfflineStatus"..id]:SetAlpha(0);
        end
    end
end

-- local frf = CreateFrame("Frame");
-- function UnitFramesPlus_FrameRangeFade()
--     if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["range"] == 1 then
--         frf:SetScript("OnUpdate", function(self, elapsed)
--             self.timer = (self.timer or 0) + elapsed;
--             if self.timer >= 0.2 then
--                 if IsInGroup() and not IsInRaid() then
--                 for id=1, 4, 1 do
--                     if not UnitInRange("party"..id) then
--                         _G["PartyMemberFrame"..id]:SetAlpha(0.5);
--                     else
--                         if _G["PartyMemberFrame"..id]:GetAlpha() < 1 then
--                             _G["PartyMemberFrame"..id]:SetAlpha(1);
--                         end
--                     end
--                     if not UnitInRange("partypet"..id) then
--                         _G["PartyMemberFrame"..id.."PetFrame"]:SetAlpha(0.5);
--                     else
--                         if _G["PartyMemberFrame"..id.."PetFrame"]:GetAlpha() < 1 then
--                             _G["PartyMemberFrame"..id.."PetFrame"]:SetAlpha(1);
--                         end
--                     end
--                 end
--                 self.timer = 0;
--             end
--         end)
--     else
--         frf:SetScript("OnUpdate", nil);
--     end
-- end

--队友buff/debuff直接显示

--Buff filter
local UnitFramesPlusBuffFilter = {
    "",
    "CANCELABLE",
    "NOT_CANCELABLE",
    "RAID",
    "PLAYER",
    -- "CANCELABLE|PLAYER",
    -- "NOT_CANCELABLE|PLAYER",
    -- "CANCELABLE|RAID",
    -- "NOT_CANCELABLE|RAID",
}

local UFP_MAX_PARTY_BUFFS = 16;
local UFP_MAX_PARTY_DEBUFFS = 8;
local UFP_MAX_PARTY_PET_DEBUFFS = 4;
for id = 1, 4, 1 do
    for j = 1, UFP_MAX_PARTY_BUFFS, 1 do
        local buff = CreateFrame("Button", "UFP_PartyMemberFrame"..id.."Buff"..j, _G["PartyMemberFrame"..id]);
        buff:SetFrameLevel(7);
        buff:SetWidth(15);
        buff:SetHeight(15);
        buff:SetID(j);
        buff:ClearAllPoints();
        if j == 1 then
            buff:SetPoint("TOPLEFT", _G["PartyMemberFrame"..id], "TOPLEFT", 48, -32);
        else
            buff:SetPoint("LEFT", _G["UFP_PartyMemberFrame"..id.."Buff"..j-1], "RIGHT", 2, 0);
        end
        buff:SetAttribute("unit", "party"..id);
        RegisterUnitWatch(buff);

        buff.Icon = buff:CreateTexture("UFP_PartyMemberFrame"..id.."Buff"..j.."Icon", "ARTWORK");
        buff.Icon:ClearAllPoints();
        buff.Icon:SetAllPoints(buff);

        buff.Cooldown = CreateFrame("Cooldown", "UFP_PartyMemberFrame"..id.."Buff"..j.."Cooldown", buff, "CooldownFrameTemplate");
        buff.Cooldown:SetFrameLevel(8);
        buff.Cooldown:SetReverse(true);
        buff.Cooldown:ClearAllPoints();
        buff.Cooldown:SetAllPoints(buff.Icon);
        buff.Cooldown:SetParent(buff);
        -- buff.Cooldown:Hide();

        buff.CooldownText = buff.Cooldown:CreateFontString("UFP_PartyMemberFrame"..id.."Buff"..j.."CooldownText", "OVERLAY");
        buff.CooldownText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        buff.CooldownText:SetTextColor(1, 1, 1);--(1, 0.75, 0);
        buff.CooldownText:ClearAllPoints();
        buff.CooldownText:SetPoint("CENTER", buff.Icon, "CENTER", 0, 0);
        -- buff.CooldownText:SetPoint("TOPLEFT", buff.Icon, "TOPLEFT", 0, 0);

        buff.Border = buff:CreateTexture("UFP_PartyMemberFrame"..id.."Buff"..j.."Border", "OVERLAY");
        buff.Border:SetTexture("Interface\\Buttons\\UI-Debuff-Overlays");
        buff.Border:SetWidth(17);
        buff.Border:SetHeight(17);
        buff.Border:SetTexCoord(0.296875, 0.5703125, 0, 0.515625);
        buff.Border:ClearAllPoints();
        buff.Border:SetPoint("TOPLEFT", buff, "TOPLEFT", -1, 1);

        buff:EnableMouse(true);
        buff:SetScript("OnEnter",function(self)
            if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["hidetip"] == 0 then
                GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
                local filter = "";
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
    for j = 1, UFP_MAX_PARTY_DEBUFFS, 1 do
        local debuff = CreateFrame("Button", "UFP_PartyMemberFrame"..id.."Debuff"..j, _G["PartyMemberFrame"..id]);
        debuff:SetFrameLevel(7);
        debuff:SetWidth(17);
        debuff:SetHeight(17);
        debuff:SetID(j);
        debuff:ClearAllPoints();
        if j == 1 then
            debuff:SetPoint("BOTTOMLEFT", _G["PartyMemberFrame"..id], "TOPRIGHT", -8, 4);
        else
            debuff:SetPoint("LEFT", _G["UFP_PartyMemberFrame"..id.."Debuff"..j-1], "RIGHT", 2, 0);
        end
        debuff:SetAttribute("unit", "party"..id);
        RegisterUnitWatch(debuff);

        debuff.Icon = debuff:CreateTexture("UFP_PartyMemberFrame"..id.."Debuff"..j.."Icon", "ARTWORK");
        debuff.Icon:ClearAllPoints();
        debuff.Icon:SetAllPoints(debuff);

        debuff.Cooldown = CreateFrame("Cooldown", "UFP_PartyMemberFrame"..id.."Debuff"..j.."Cooldown", debuff, "CooldownFrameTemplate");
        debuff.Cooldown:SetFrameLevel(8);
        debuff.Cooldown:SetReverse(true);
        debuff.Cooldown:ClearAllPoints();
        debuff.Cooldown:SetAllPoints(debuff.Icon);
        debuff.Cooldown:SetParent(debuff);
        -- debuff.Cooldown:Hide();

        debuff.CooldownText = debuff.Cooldown:CreateFontString("UFP_PartyMemberFrame"..id.."Debuff"..j.."CooldownText", "OVERLAY");
        debuff.CooldownText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        debuff.CooldownText:SetTextColor(1, 1, 1);--(1, 0.75, 0);
        debuff.CooldownText:ClearAllPoints();
        debuff.CooldownText:SetPoint("CENTER", debuff.Icon, "CENTER", 0, 0);
        -- debuff.CooldownText:SetPoint("TOPLEFT", debuff.Icon, "TOPLEFT", 0, 0);

        debuff.CountText = debuff.Cooldown:CreateFontString("UFP_PartyMemberFrame"..id.."Debuff"..j.."CountText", "OVERLAY");
        debuff.CountText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        debuff.CountText:SetTextColor(1, 1, 1);
        debuff.CountText:ClearAllPoints();
        -- debuff.CountText:SetPoint("CENTER", debuff.Icon, "BOTTOM", 0, 0);
        debuff.CountText:SetPoint("BOTTOMRIGHT", debuff.Icon, "BOTTOMRIGHT", 0, 0);

        debuff.Border = debuff:CreateTexture("UFP_PartyMemberFrame"..id.."Debuff"..j.."Border", "OVERLAY");
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
    for j = 1, UFP_MAX_PARTY_PET_DEBUFFS, 1 do
        local petdebuff = CreateFrame("Button", "UFP_PartyPetMemberFrame"..id.."Debuff"..j, _G["PartyMemberFrame"..id.."PetFrame"]);
        petdebuff:SetFrameLevel(7);
        petdebuff:SetWidth(15);
        petdebuff:SetHeight(15);
        petdebuff:SetID(j);
        petdebuff:ClearAllPoints();
        if j == 1 then
            petdebuff:SetPoint("LEFT", _G["PartyMemberFrame"..id.."PetFrame"], "RIGHT", -3, -1);
        else
            petdebuff:SetPoint("LEFT", _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j-1], "RIGHT", 2, 0);
        end
        petdebuff:SetAttribute("unit", "partypet"..id);
        RegisterUnitWatch(petdebuff);

        petdebuff.Icon = petdebuff:CreateTexture("UFP_PartyPetMemberFrame"..id.."Debuff"..j.."Icon", "ARTWORK");
        petdebuff.Icon:ClearAllPoints();
        petdebuff.Icon:SetAllPoints(petdebuff);

        petdebuff.Cooldown = CreateFrame("Cooldown", "UFP_PartyPetMemberFrame"..id.."Debuff"..j.."Cooldown", petdebuff, "CooldownFrameTemplate");
        petdebuff.Cooldown:SetFrameLevel(8);
        petdebuff.Cooldown:SetReverse(true);
        petdebuff.Cooldown:ClearAllPoints();
        petdebuff.Cooldown:SetAllPoints(petdebuff.Icon);
        petdebuff.Cooldown:SetParent(petdebuff);
        -- petdebuff.Cooldown:Hide();

        petdebuff.CooldownText = petdebuff.Cooldown:CreateFontString("UFP_PartyPetMemberFrame"..id.."Debuff"..j.."CooldownText", "OVERLAY");
        petdebuff.CooldownText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        petdebuff.CooldownText:SetTextColor(1, 1, 1);--(1, 0.75, 0);
        petdebuff.CooldownText:ClearAllPoints();
        petdebuff.CooldownText:SetPoint("CENTER", petdebuff.Icon, "CENTER", 0, 0);
        -- petdebuff.CooldownText:SetPoint("TOPLEFT", petdebuff.Icon, "TOPLEFT", 0, 0);

        petdebuff.CountText = petdebuff.Cooldown:CreateFontString("UFP_PartyPetMemberFrame"..id.."Debuff"..j.."CountText", "OVERLAY");
        petdebuff.CountText:SetFont(GameFontNormal:GetFont(), 10, "OUTLINE");
        petdebuff.CountText:SetTextColor(1, 1, 1);
        petdebuff.CountText:ClearAllPoints();
        -- petdebuff.CountText:SetPoint("CENTER", petdebuff.Icon, "BOTTOM", 0, 0);
        petdebuff.CountText:SetPoint("BOTTOMRIGHT", petdebuff.Icon, "BOTTOMRIGHT", 0, 0);

        petdebuff.Border = petdebuff:CreateTexture("UFP_PartyPetMemberFrame"..id.."Debuff"..j.."Border", "OVERLAY");
        petdebuff.Border:SetTexture("Interface\\Buttons\\UI-Dedebuff-Overlays");
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

--队友buff/debuff直接显示时隐藏buff鼠标提示
hooksecurefunc("PartyMemberBuffTooltip_Update", function(self)
    if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["buff"] == 1 then
        PartyMemberBuffTooltip:Hide();
    end
end)

local pb = CreateFrame("Frame");
function UnitFramesPlus_PartyBuff()
    UnitFramesPlus_PartyMemberPosition();
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
                _G["UFP_PartyMemberFrame"..id.."Buff"..j]:SetAlpha(0);
            end
            for j = 1, UFP_MAX_PARTY_DEBUFFS, 1 do
                _G["UFP_PartyMemberFrame"..id.."Debuff"..j]:SetAlpha(0);
            end
            for j = 1, UFP_MAX_PARTY_PET_DEBUFFS, 1 do
                _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j]:SetAlpha(0);
            end
        end
        pb:SetScript("OnUpdate", nil);
    end
end

function UnitFramesPlus_OptionsFrame_PartyBuffDisplayUpdate()
    local filter = "";
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

                local _, icon, _, _, duration, expirationTime, caster, _, _, spellId = UnitBuff("party"..id, j, filter);
                if icon then
                    _G["UFP_PartyMemberFrame"..id.."Buff"..j].Icon:SetTexture(icon);
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

                            CooldownFrame_Set(_G["UFP_PartyMemberFrame"..id.."Buff"..j].Cooldown, expirationTime - duration, duration, true);
                        else
                            CooldownFrame_Clear(_G["UFP_PartyMemberFrame"..id.."Buff"..j].Cooldown);
                        end
                    else
                        CooldownFrame_Clear(_G["UFP_PartyMemberFrame"..id.."Buff"..j].Cooldown);
                    end
                end
                _G["UFP_PartyMemberFrame"..id.."Buff"..j]:SetAlpha(alpha);
                _G["UFP_PartyMemberFrame"..id.."Buff"..j].Cooldown:SetAlpha(cdalpha);
                -- _G["UFP_PartyMemberFrame"..id.."Buff"..j].CooldownText:SetTextColor(r, g, b);
                -- _G["UFP_PartyMemberFrame"..id.."Buff"..j].CooldownText:SetAlpha(textalpha);
                if (not IsAddOnLoaded("OmniCC")) then
                    _G["UFP_PartyMemberFrame"..id.."Buff"..j].CooldownText:SetText(timetext);
                else
                    _G["UFP_PartyMemberFrame"..id.."Buff"..j].CooldownText:SetText("");
                end
            end

            for j = 1, UFP_MAX_PARTY_DEBUFFS, 1 do
                local alpha = 0;
                local cdalpha = 0;
                local timetext = "";
                -- local textalpha = 0.7;
                -- local r, g, b = 0, 1, 0;

                local _, icon, count, _, duration, expirationTime, caster, _, _, spellId = UnitDebuff("party"..id, j);
                if icon then
                    _G["UFP_PartyMemberFrame"..id.."Debuff"..j].Icon:SetTexture(icon);
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

                            CooldownFrame_Set(_G["UFP_PartyMemberFrame"..id.."Debuff"..j].Cooldown, expirationTime - duration, duration, true);
                        else
                            CooldownFrame_Clear(_G["UFP_PartyMemberFrame"..id.."Debuff"..j].Cooldown);
                        end
                    else
                        CooldownFrame_Clear(_G["UFP_PartyMemberFrame"..id.."Debuff"..j].Cooldown);
                    end
                end
                _G["UFP_PartyMemberFrame"..id.."Debuff"..j]:SetAlpha(alpha);
                _G["UFP_PartyMemberFrame"..id.."Debuff"..j].Cooldown:SetAlpha(cdalpha);
                -- _G["UFP_PartyMemberFrame"..id.."Debuff"..j].CooldownText:SetTextColor(r, g, b);
                -- _G["UFP_PartyMemberFrame"..id.."Debuff"..j].CooldownText:SetAlpha(textalpha);
                if (not IsAddOnLoaded("OmniCC")) then
                    _G["UFP_PartyMemberFrame"..id.."Debuff"..j].CooldownText:SetText(timetext);
                else
                    _G["UFP_PartyMemberFrame"..id.."Debuff"..j].CooldownText:SetText("");
                end
                _G["UFP_PartyMemberFrame"..id.."Debuff"..j].CountText:SetText(counttext);
            end


            for j = 1, UFP_MAX_PARTY_PET_DEBUFFS, 1 do
                local alpha = 0;
                local cdalpha = 0;
                local timetext = "";
                -- local textalpha = 0.7;
                -- local r, g, b = 0, 1, 0;

                local _, icon, count, _, duration, expirationTime, caster, _, _, spellId = UnitDebuff("partypet"..id, j);
                if icon then
                    _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].Icon:SetTexture(icon);
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

                            CooldownFrame_Set(_G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].Cooldown, expirationTime - duration, duration, true);
                        else
                            CooldownFrame_Clear(_G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].Cooldown);
                        end
                    else
                        CooldownFrame_Clear(_G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].Cooldown);
                    end
                end
                _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j]:SetAlpha(alpha);
                _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].Cooldown:SetAlpha(cdalpha);
                -- _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].CooldownText:SetTextColor(r, g, b);
                -- _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].CooldownText:SetAlpha(textalpha);
                if (not IsAddOnLoaded("OmniCC")) then
                    _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].CooldownText:SetText(timetext);
                else
                    _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].CooldownText:SetText("");
                end
                _G["UFP_PartyPetMemberFrame"..id.."Debuff"..j].CountText:SetText(counttext);
            end
        end
    end
end

function UnitFramesPlus_PartyPositionSet()
    if UnitFramesPlusVar["party"]["moved"] ~= 0 then
        PartyMemberFrame1:ClearAllPoints();
        PartyMemberFrame1:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", UnitFramesPlusVar["party"]["x"], UnitFramesPlusVar["party"]["y"]);
    end
end

function UnitFramesPlus_PartyPosition()
    if not InCombatLockdown() then
        UnitFramesPlus_PartyPositionSet();
    else
        local func = {};
        func.name = "UnitFramesPlus_PartyPositionSet";
        func.callback = function()
            UnitFramesPlus_PartyPositionSet();
        end;
        UnitFramesPlus_WaitforCall(func);
    end
end

function UnitFramesPlus_PartyMemberPositionSet()
    if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["buff"] == 1 then
        for id = 2, 4, 1 do
            local lowid = id - 1;
            _G["PartyMemberFrame"..id]:ClearAllPoints();
            _G["PartyMemberFrame"..id]:SetPoint("TOPLEFT", _G["PartyMemberFrame"..lowid.."PetFrame"], "BOTTOMLEFT", -23, -20);
        end
    else
        for id = 2, 4, 1 do
            local lowid = id - 1;
            _G["PartyMemberFrame"..id]:ClearAllPoints();
            _G["PartyMemberFrame"..id]:SetPoint("TOPLEFT", _G["PartyMemberFrame"..lowid.."PetFrame"], "BOTTOMLEFT", -23, -10);
        end
    end
end

function UnitFramesPlus_PartyMemberPosition()
    if not InCombatLockdown() then
        UnitFramesPlus_PartyMemberPositionSet();
    else
        local func = {};
        func.name = "UnitFramesPlus_PartyMemberPositionSet";
        func.callback = function()
            UnitFramesPlus_PartyMemberPositionSet();
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
                _G["PartyMemberFrame"..id]:SetScale(scale);
            end
        end
        if UnitFramesPlusDB["party"]["portrait"] == 1 and UnitFramesPlusDB["party"]["portraittype"] == 1 then
            for id = 1, 4, 1 do
                UnitFramesPlus_PartyPortraitDisplayUpdate(id);
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
            _G["PartyMemberFrame"..id.."HealthBarText"]:SetAlpha(0);
            -- _G["PartyMemberFrame"..id.."HealthBarTextLeft"]:SetAlpha(0);
            -- _G["PartyMemberFrame"..id.."HealthBarTextRight"]:SetAlpha(0);
            _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnEnter", function(self)
                _G["PartyMemberFrame"..id.."HealthBarText"]:SetAlpha(1);
                -- _G["PartyMemberFrame"..id.."HealthBarTextLeft"]:SetAlpha(1);
                -- _G["PartyMemberFrame"..id.."HealthBarTextRight"]:SetAlpha(1);
                UnitFrame_UpdateTooltip(_G["PartyMemberFrame"..id]);
            end);
            _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnLeave", function()
                _G["PartyMemberFrame"..id.."HealthBarText"]:SetAlpha(0);
                -- _G["PartyMemberFrame"..id.."HealthBarTextLeft"]:SetAlpha(0);
                -- _G["PartyMemberFrame"..id.."HealthBarTextRight"]:SetAlpha(0);
                GameTooltip:Hide();
            end);
            _G["PartyMemberFrame"..id.."ManaBarText"]:SetAlpha(0);
            -- _G["PartyMemberFrame"..id.."ManaBarTextLeft"]:SetAlpha(0);
            -- _G["PartyMemberFrame"..id.."ManaBarTextRight"]:SetAlpha(0);
            _G["PartyMemberFrame"..id.."ManaBar"]:SetScript("OnEnter", function(self)
                _G["PartyMemberFrame"..id.."ManaBarText"]:SetAlpha(1);
                -- _G["PartyMemberFrame"..id.."ManaBarTextLeft"]:SetAlpha(1);
                -- _G["PartyMemberFrame"..id.."ManaBarTextRight"]:SetAlpha(1);
                UnitFrame_UpdateTooltip(_G["PartyMemberFrame"..id]);
            end);
            _G["PartyMemberFrame"..id.."ManaBar"]:SetScript("OnLeave", function()
                _G["PartyMemberFrame"..id.."ManaBarText"]:SetAlpha(0);
                -- _G["PartyMemberFrame"..id.."ManaBarTextLeft"]:SetAlpha(0);
                -- _G["PartyMemberFrame"..id.."ManaBarTextRight"]:SetAlpha(0);
                GameTooltip:Hide();
            end);
        end
    else
        for id = 1, 4, 1 do
            _G["PartyMemberFrame"..id.."HealthBarText"]:SetAlpha(1);
            -- _G["PartyMemberFrame"..id.."HealthBarTextLeft"]:SetAlpha(1);
            -- _G["PartyMemberFrame"..id.."HealthBarTextRight"]:SetAlpha(1);
            _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnEnter", function()
                UnitFrame_UpdateTooltip(_G["PartyMemberFrame"..id]);
            end);
            _G["PartyMemberFrame"..id.."HealthBar"]:SetScript("OnLeave", function()
                GameTooltip:Hide();
            end);
            _G["PartyMemberFrame"..id.."ManaBarText"]:SetAlpha(1);
            -- _G["PartyMemberFrame"..id.."ManaBarTextLeft"]:SetAlpha(1);
            -- _G["PartyMemberFrame"..id.."ManaBarTextRight"]:SetAlpha(1);
            _G["PartyMemberFrame"..id.."ManaBar"]:SetScript("OnEnter", function()
                UnitFrame_UpdateTooltip(_G["PartyMemberFrame"..id]);
            end);
            _G["PartyMemberFrame"..id.."ManaBar"]:SetScript("OnLeave", function()
                GameTooltip:Hide();
            end);
        end
    end
end

local ht = CreateFrame("Frame");
ht:RegisterEvent("PLAYER_LOGIN");
ht:RegisterEvent("GROUP_ROSTER_UPDATE");
ht:SetScript("OnEvent", function(self, event, ...)
    UnitFramesPlus_PartyToolsHide();
end)

--隐藏工具
function UnitFramesPlus_PartyToolsHideSet()
    if UnitFramesPlusDB["party"]["origin"] == 1 and UnitFramesPlusDB["party"]["hidetools"] == 1 and (not UnitInRaid("player")) then
        if CompactRaidFrameManager then
            if CompactRaidFrameManager:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                CompactRaidFrameManager:UnregisterAllEvents();
            end
            if CompactRaidFrameManager:IsShown() then
                CompactRaidFrameManager:Hide();
            end
        end
    else
        if CompactRaidFrameManager then
            if UnitInParty("player") or UnitInRaid("player") then
                RaidOptionsFrame_UpdatePartyFrames();
                CompactRaidFrameManager_UpdateShown(CompactRaidFrameManager);
            end
            if not CompactRaidFrameManager:IsEventRegistered("PLAYER_ENTERING_WORLD") then
                CompactRaidFrameManager:RegisterEvent("DISPLAY_SIZE_CHANGED");
                CompactRaidFrameManager:RegisterEvent("UI_SCALE_CHANGED");
                CompactRaidFrameManager:RegisterEvent("GROUP_ROSTER_UPDATE");
                CompactRaidFrameManager:RegisterEvent("UPDATE_ACTIVE_BATTLEFIELD");
                CompactRaidFrameManager:RegisterEvent("UNIT_FLAGS");
                CompactRaidFrameManager:RegisterEvent("PLAYER_FLAGS_CHANGED");
                CompactRaidFrameManager:RegisterEvent("PLAYER_ENTERING_WORLD");
                CompactRaidFrameManager:RegisterEvent("PARTY_LEADER_CHANGED");
                CompactRaidFrameManager:RegisterEvent("RAID_TARGET_UPDATE");
                CompactRaidFrameManager:RegisterEvent("PLAYER_TARGET_CHANGED");
            end
        end
    end
end

function UnitFramesPlus_PartyToolsHide()
    if not InCombatLockdown() then
        UnitFramesPlus_PartyToolsHideSet();
    else
        local func = {};
        func.name = "UnitFramesPlus_PartyToolsHideSet";
        func.callback = function()
            UnitFramesPlus_PartyToolsHideSet();
        end;
        UnitFramesPlus_WaitforCall(func);
    end
end

function UnitFramesPlus_PartyExtraTextFontSize()
    for id = 1, 4, 1 do
        _G["PartyMemberFrame"..id.."HealthBarText"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"], "OUTLINE");
        _G["PartyMemberFrame"..id.."ManaBarText"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"], "OUTLINE");
        _G["PartyMemberFrame"..id.."Level"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"], "OUTLINE");
        _G["PartyMemberFrame"..id.."HPPct"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"], "OUTLINE");
        _G["PartyMemberFrame"..id.."DeathText"]:SetFont(GameFontNormal:GetFont(), UnitFramesPlusDB["party"]["fontsize"]+2, "OUTLINE");

        _G["PartyMemberFrame"..id.."Name"]:SetFont(GameFontNormalSmall:GetFont(), UnitFramesPlusDB["party"]["fontsize"]+2);
    end
end
--模块初始化
function UnitFramesPlus_PartyInit()
    UnitFramesPlus_PartyShiftDrag();
    UnitFramesPlus_PartyOfflineDetection();
    UnitFramesPlus_PartyPortrait();
    UnitFramesPlus_PartyPortraitIndicator();
    UnitFramesPlus_PartyBuff();
    UnitFramesPlus_PartyScale();
    -- UnitFramesPlus_PartyColorHPBar();
    UnitFramesPlus_PartyName();
    UnitFramesPlus_PartyLevel();
    UnitFramesPlus_PartyHealthPct();
    UnitFramesPlus_PartyBarTextMouseShow();
    UnitFramesPlus_PartyExtraTextFontSize();
end

function UnitFramesPlus_PartyCvar()
    UnitFramesPlus_PartyOrigin();
end
