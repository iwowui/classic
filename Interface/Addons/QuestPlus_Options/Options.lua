--设置面板
QuestPlus_OptionsFrame = CreateFrame("Frame", "QuestPlus_OptionsFrame", UIParent);
QuestPlus_OptionsFrame.name = "QuestPlus";
InterfaceOptions_AddCategory(QuestPlus_OptionsFrame);
QuestPlus_OptionsFrame:SetScript("OnShow", function()
    QuestPlus_OptionPanel_OnShow();
end)
QuestPlus_OptionsFrame:SetScript("OnLoad", function()
    QuestPlus_OptionPanel_OnShow();
end)

--通报类型下拉菜单
local function QAChannel_OnClick(self)
    UIDropDownMenu_SetSelectedID(QuestPlus_OptionsFrame_QAChannelType, self:GetID());
    QuestPlusDB["channel"] = self:GetID();
end
local function QAChannel_Init()
    local info, text, func;
    for id = 1, table.getn(QAChannelDropDown), 1 do
        info = {
            text = QAChannelDropDown[id];
            func = QAChannel_OnClick;
        };
        UIDropDownMenu_AddButton(info);
    end
end

--插件介绍
local info = QuestPlus_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
info:ClearAllPoints();
info:SetPoint("TOPLEFT", 16, -16);
info:SetText("QuestPlus "..GetAddOnMetadata("QuestPlus", "Version"));

--通告频道
local QAChannelTitle = QuestPlus_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
QAChannelTitle:ClearAllPoints();
QAChannelTitle:SetPoint("TOPLEFT", info, "TOPLEFT", 0, -30);
QAChannelTitle:SetText(QA_Text);

--通告频道选择
local QAChannelInfo = QuestPlus_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal");
QAChannelInfo:SetTextColor(1, 1, 1);
QAChannelInfo:ClearAllPoints();
QAChannelInfo:SetPoint("TOPLEFT", QAChannelTitle, "TOPLEFT", 5, -35);
QAChannelInfo:SetText(QA_ChannelText);

--通告频道选择
local QuestPlus_OptionsFrame_QAChannelType = CreateFrame("CheckButton", "QuestPlus_OptionsFrame_QAChannelType", QuestPlus_OptionsFrame, "UIDropDownMenuTemplate");
QuestPlus_OptionsFrame_QAChannelType:ClearAllPoints();
QuestPlus_OptionsFrame_QAChannelType:SetPoint("LEFT", QAChannelInfo, "RIGHT", 15, -2);
QuestPlus_OptionsFrame_QAChannelType:SetHitRectInsets(0, -100, 0, 0);
UIDropDownMenu_SetWidth(QuestPlus_OptionsFrame_QAChannelType, 95);
UIDropDownMenu_Initialize(QuestPlus_OptionsFrame_QAChannelType, QAChannel_Init);
UIDropDownMenu_SetSelectedID(QuestPlus_OptionsFrame_QAChannelType, QuestPlusDB["channel"]);

--完成时通告
local QuestPlus_OptionsFrame_QAFinish = CreateFrame("CheckButton", "QuestPlus_OptionsFrame_QAFinish", QuestPlus_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
QuestPlus_OptionsFrame_QAFinish:ClearAllPoints();
QuestPlus_OptionsFrame_QAFinish:SetPoint("TOPLEFT", QAChannelInfo, "TOPLEFT", -5, -35);
QuestPlus_OptionsFrame_QAFinish:SetHitRectInsets(0, -100, 0, 0);
QuestPlus_OptionsFrame_QAFinishText:SetText(QA_FinishText);
QuestPlus_OptionsFrame_QAFinish:SetScript("OnClick", function(self)
    QuestPlusDB["finish"] = 1 - QuestPlusDB["finish"];
    self:SetChecked(QuestPlusDB["finish"]==1);
end)

--任务等级
local QLTitle = QuestPlus_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
QLTitle:ClearAllPoints();
QLTitle:SetPoint("TOPLEFT", QuestPlus_OptionsFrame_QAFinish, "TOPLEFT", 0, -40);
QLTitle:SetText(QL_Text);

--任务日志显示等级
local QuestPlus_OptionsFrame_QL = CreateFrame("CheckButton", "QuestPlus_OptionsFrame_QL", QuestPlus_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
QuestPlus_OptionsFrame_QL:ClearAllPoints();
QuestPlus_OptionsFrame_QL:SetPoint("TOPLEFT", QLTitle, "TOPLEFT", 5, -30);
QuestPlus_OptionsFrame_QL:SetHitRectInsets(0, -100, 0, 0);
QuestPlus_OptionsFrame_QLText:SetText(QL_EnableText);
QuestPlus_OptionsFrame_QL:SetScript("OnClick", function(self)
    QuestPlusDB["level"] = 1 - QuestPlusDB["level"];
    self:SetChecked(QuestPlusDB["level"]==1);
end)

if not IsAddOnLoaded("Questie") and not IsAddOnLoaded("MonkeyQuest") then
    --追踪列表
    local QTTitle = QuestPlus_OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
    QTTitle:ClearAllPoints();
    QTTitle:SetPoint("TOPLEFT", QuestPlus_OptionsFrame_QL, "TOPLEFT", -5, -40);
    QTTitle:SetText(QT_Text);

    --移动追踪列表
    local QuestPlus_OptionsFrame_QT = CreateFrame("CheckButton", "QuestPlus_OptionsFrame_QT", QuestPlus_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
    QuestPlus_OptionsFrame_QT:ClearAllPoints();
    QuestPlus_OptionsFrame_QT:SetPoint("TOPLEFT", QTTitle, "TOPLEFT", 5, -30);
    QuestPlus_OptionsFrame_QT:SetHitRectInsets(0, -100, 0, 0);
    QuestPlus_OptionsFrame_QTText:SetText(QT_EnableText);
    QuestPlus_OptionsFrame_QT:SetScript("OnClick", function(self)
        QuestPlusDB["tracker"] = 1 - QuestPlusDB["tracker"];
        self:SetChecked(QuestPlusDB["tracker"]==1);
    end)

    --任务自动追踪
    local QuestPlus_OptionsFrame_QAutoTrack = CreateFrame("CheckButton", "QuestPlus_OptionsFrame_QAutoTrack", QuestPlus_OptionsFrame, "InterfaceOptionsCheckButtonTemplate");
    QuestPlus_OptionsFrame_QAutoTrack:ClearAllPoints();
    QuestPlus_OptionsFrame_QAutoTrack:SetPoint("TOPLEFT", QuestPlus_OptionsFrame_QT, "TOPLEFT", 0, -30);
    QuestPlus_OptionsFrame_QAutoTrack:SetHitRectInsets(0, -100, 0, 0);
    QuestPlus_OptionsFrame_QAutoTrackText:SetText(QT_AutoTrackText);
    QuestPlus_OptionsFrame_QAutoTrack:SetScript("OnClick", function(self)
        QuestPlusDB["autotrack"] = 1 - QuestPlusDB["autotrack"];
        QuestPlus_AutoTrack();
        self:SetChecked(QuestPlusDB["autotrack"]==1);
    end)
end

function QuestPlus_OptionPanel_OnShow()
    QuestPlus_OptionsFrame_QAChannelType:SetText(QAChannelDropDown[QuestPlusDB["channel"]]);
    QuestPlus_OptionsFrame_QAFinish:SetChecked(QuestPlusDB["finish"]==1);
    QuestPlus_OptionsFrame_QL:SetChecked(QuestPlusDB["level"]==1);
    if not IsAddOnLoaded("Questie") then
        QuestPlus_OptionsFrame_QT:SetChecked(QuestPlusDB["tracker"]==1);
        QuestPlus_OptionsFrame_QAutoTrack:SetChecked(QuestPlusDB["autotrack"]==1);
    end
end
