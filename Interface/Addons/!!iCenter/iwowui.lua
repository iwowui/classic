local iwowuidb = {};
local emmm = {};
local sync = false;

local function whoareyou(name, db, remove)
    for k, v in ipairs(db) do
        if v == name then
            if remove and remove == true then
                table.remove(db, k);
            end
            return true;
        end
    end
    return false;
end

local function OnEvent(self, event, ...)
    if event == "CHAT_MSG_ADDON" then
        local prefix, text, channel, sender = ...;
        if channel == "WHISPER" and prefix == "iwowui" then
            local code, fullname = strsplit("#", text);
            if code and code ~= "" and fullname and fullname ~= "" then
                if not whoareyou(fullname, iwowuidb) then
                    table.insert(iwowuidb, fullname);
                    whoareyou(fullname, emmm, true);
                    -- -- real rare player
                    -- if UnitExists("target") and UnitIsConnected("target") and UnitIsPlayer("target") and UnitIsFriend("target", "player") then
                    --     local name, realm = UnitName("target");
                    --     if not realm or realm == "" then realm = GetRealmName() end
                    --     if fullname == name .. "-" .. realm then
                    --         TargetFrame.borderTexture:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Rare");
                    --     end
                    -- end
                end
                if sync then
                    if code == "req" then
                        C_ChatInfo.SendAddonMessage("iwowui", "res#" .. fullname, "WHISPER", fullname);
                    end
                end
            end
        end
    elseif event == "PLAYER_TARGET_CHANGED" then
        if UnitExists("target") and UnitIsConnected("target") and UnitIsPlayer("target") and UnitIsFriend("target", "player") then
            local name, realm = UnitName("target");
            if not realm or realm == "" then realm = GetRealmName() end
            local fullname =  name .. "-" .. realm;
            if not whoareyou(fullname, iwowuidb) then
                if not whoareyou(fullname, emmm) then
                    table.insert(emmm, fullname);
                end
                if sync then
                    C_ChatInfo.SendAddonMessage("iwowui", "req#" .. fullname, "WHISPER", fullname);
                end
            -- else
            --     TargetFrame.borderTexture:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Rare");
            end
        end
    elseif event == "PLAYER_LOGIN" then
        sync = C_ChatInfo.RegisterAddonMessagePrefix("iwowui");
    elseif event == "ADDON_LOADED" then
        local name = ...;
        if name == "TinyTooltip" then
            LibStub:GetLibrary("LibEvent.7000"):attachTrigger("tooltip:unit", function(self, tip, unit)
                if UnitIsPlayer(unit) and UnitIsFriend(unit, "player") then
                    local name, realm = UnitName(unit);
                    if not realm or realm == "" then realm = GetRealmName() end
                    local fullname = name .. "-" .. realm;
                    if whoareyou(fullname, iwowuidb) then
                        tip:AddLine("Isler's WoWUI User", 0.65, 0.85, 1, 1);
                    end
                end
            end)
        -- elseif name == "!!iCenter" then
        --     if not iwowuidb then iwowuidb = {} end
        end
    end
end

local f = CreateFrame("Frame");
f:SetScript("OnEvent", OnEvent);
f:RegisterEvent("PLAYER_TARGET_CHANGED");
f:RegisterEvent("CHAT_MSG_ADDON");
f:RegisterEvent("PLAYER_LOGIN");
f:RegisterEvent("ADDON_LOADED");
