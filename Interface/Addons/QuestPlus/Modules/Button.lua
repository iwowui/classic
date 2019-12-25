local QA_ButtonEnable = CreateFrame("CheckButton", "QA_ButtonEnable", QuestLogFrame, "InterfaceOptionsCheckButtonTemplate");
QA_ButtonEnable:SetPoint("TOPLEFT", QuestLogFrame, "TOPRIGHT", -175, -11);
QA_ButtonEnable:SetHitRectInsets(0, -60, 0, 0);
QA_ButtonEnableText:SetText(QA_Name);
QA_ButtonEnableText:SetTextColor(1, 0.82, 0);
QA_ButtonEnable:SetScript("OnShow", function(self)
    self:SetChecked(QuestPlusDB["announce"]==1);
end);
QA_ButtonEnable:SetScript("OnClick", function(self)
    if QuestPlusDB["announce"] == 1 then
        QuestPlusDB["announce"] = 0;
        print(QA_OFF);
    else
        QuestPlusDB["announce"] = 1;
        print(QA_ON);
    end
    self:SetChecked(QuestPlusDB["announce"]==1);
end);
QA_ButtonEnable:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
    GameTooltip:AddLine(QA_LINE);
    GameTooltip:Show();
end);
QA_ButtonEnable:SetScript("OnLeave", function()
    GameTooltip:Hide();
end);

local QA_ButtonSetting = CreateFrame("Button", "QA_ButtonSetting", QuestLogFrame, "UIPanelButtonTemplate");
QA_ButtonSetting:SetWidth(16);
QA_ButtonSetting:SetHeight(16);
QA_ButtonSetting:ClearAllPoints();
QA_ButtonSetting:SetPoint("LEFT", QA_ButtonEnable, "RIGHT", 64, 0);
QA_ButtonSetting:SetScript("OnClick", function()
    QuestPlus_SlashHandler();
end);
QA_ButtonSetting:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
    GameTooltip:AddLine(QA_BUTTON);
    GameTooltip:Show();
end);
QA_ButtonSetting:SetScript("OnLeave", function()
    GameTooltip:Hide();
end);

QA_ButtonSetting.Icon = QA_ButtonSetting:CreateTexture(nil, "ARTWORK");
QA_ButtonSetting.Icon:SetTexture("Interface\\Buttons\\UI-OptionsButton");
QA_ButtonSetting.Icon:SetWidth(16);
QA_ButtonSetting.Icon:SetHeight(16);
QA_ButtonSetting.Icon:ClearAllPoints();
QA_ButtonSetting.Icon:SetPoint("CENTER", QA_ButtonSetting, "CENTER", 0, 0);
