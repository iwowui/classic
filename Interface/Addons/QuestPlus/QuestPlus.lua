
QuestPlusDefaultDB = {
    announce = 0,
    channel = 2,
    finish = 0,
    level = 1,
    tracker = 1,
    autotrack = 1;
    version = "1.0",
}

--设置初始化
local function QuestPlus_Options_Init()
    if (not QuestPlusDB) then
        QuestPlusDB = QuestPlusDefaultDB;
    end

    local Version = GetAddOnMetadata("QuestPlus", "Version");
    if (not QuestPlusDB["version"]) or (QuestPlusDB["version"] ~= Version) then
        local k, v;
        for k, v in pairs(QuestPlusDefaultDB) do
            QuestPlusDB[k] = QuestPlusDB[k] or QuestPlusDefaultDB[k];
        end
        QuestPlusDB["version"] = QuestPlusDefaultDB["version"];
    end
end

--模块初始化
local function QuestPlus_Init()
    if QuestPlus_Tracker then
        QuestPlus_Tracker();
    end
    if QuestPlus_AutoTrack then
        QuestPlus_AutoTrack();
    end
end

--命令行
function QuestPlus_SlashHandler()
    if not IsAddOnLoaded("QuestPlus_Options") then
        LoadAddOn("QuestPlus_Options");
    end
    InterfaceOptionsFrame_OpenToCategory(QuestPlus_OptionsFrame);
    InterfaceOptionsFrame_OpenToCategory(QuestPlus_OptionsFrame);
end
SlashCmdList["QuestPlus"] = QuestPlus_SlashHandler;
SLASH_QuestPlus1 = "/questplus";
SLASH_QuestPlus2 = "/qp";

--插件初始化
local cp = CreateFrame("Frame");
cp:RegisterEvent("ADDON_LOADED");
cp:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        local name = ...;
        if name == "QuestPlus" then
            QuestPlus_Options_Init();
            QuestPlus_Init();
            cp:UnregisterEvent("ADDON_LOADED");
            print("|cFFFFFF99QuestPlus loaded. Type|R |cFF00FF00/qp|R |cFFFFFF99or|R |cFF00FF00/questplus|R |cFFFFFF99to open the option panel.");
        end
    end
end)
