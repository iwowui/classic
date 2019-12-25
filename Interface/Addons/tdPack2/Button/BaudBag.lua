-- BaudBag.lua

if not BaudBag then
    return;
end

local ns = select(2, ...);

local function CreateBaudBagButton(frame, isBank)
    local button = CreateFrame("Button", nil, frame);
    button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD");
    button:SetWidth(18);
    button:SetHeight(18);
    button:ClearAllPoints();
    button:SetPoint("RIGHT", _G[frame:GetName().."SearchButton"], "LEFT", -5, 0);

    button.Icon = button:CreateTexture(nil, "ARTWORK");
    button.Icon:SetTexture(ns.ICON);
    button.Icon:SetWidth(18);
    button.Icon:SetHeight(18);
    button.Icon:ClearAllPoints();
    button.Icon:SetPoint("CENTER");

    ns.SetupButton(button, isBank);
end

CreateBaudBagButton(BaudBagContainer1_1, false);
CreateBaudBagButton(BaudBagContainer2_1, true);
