local _, PicoPoisons = ...

function PicoPoisons.Init()
    -- Modify enchant icons to add a counter label
    for buttonIndex = 1, 2 do
        local enchantButton = _G["TempEnchant" .. buttonIndex]
        local label = enchantButton:CreateFontString(enchantButton:GetName() .. "ChargesLabel", "ARTWORK", "NumberFontNormal")
        label:SetPoint("BOTTOMLEFT", enchantButton, "BOTTOMLEFT", 1, 1)
        label:Hide()
    end
    
    PicoPoisons.frame = CreateFrame("Frame")
    PicoPoisons.frame.OnEvent = function(self, event, ...)
        local hasMainHandEnchant, mainHandExpiration, mainHandCharges, mainHandEnchantID, hasOffHandEnchant, offHandExpiration, offHandCharges, oddHandEnchantID = GetWeaponEnchantInfo()
        local buttonIndex = 1
        if hasOffHandEnchant then
            local chargesLabel = _G["TempEnchant" .. buttonIndex .. "ChargesLabel"]
            chargesLabel:SetText(offHandCharges)
            if offHandCharges > 0 then
                chargesLabel:Show()
            else
                chargesLabel:Hide()
            end
            buttonIndex = buttonIndex + 1
        end
        if hasMainHandEnchant then
            local chargesLabel = _G["TempEnchant" .. buttonIndex .. "ChargesLabel"]
            chargesLabel:SetText(mainHandCharges)
            if mainHandCharges > 0 then
                chargesLabel:Show()
            else
                chargesLabel:Hide()
            end
            buttonIndex = buttonIndex + 1
        end
    end
    PicoPoisons.frame:SetScript("OnEvent", PicoPoisons.frame.OnEvent)
    PicoPoisons.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
    PicoPoisons.frame:RegisterEvent("UNIT_AURA")
    PicoPoisons.frame:Show()
end

PicoPoisons.Init()
