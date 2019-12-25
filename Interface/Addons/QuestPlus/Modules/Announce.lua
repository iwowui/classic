local QA_QuestTable = {};
local QA_StringFinish = string.gsub(ERR_QUEST_OBJECTIVE_COMPLETE_S, "%%s", "");
local QA_StringFailedText = string.gsub(ERR_QUEST_FAILED_S, "%%s", "");
local QA_StringFinishText = string.gsub(ERR_QUEST_COMPLETE_S, "%%s", "");

local function QA_UpdateQuestTable()
    QA_QuestTable = {};
    local id;
    for id = 1, GetNumQuestLogEntries(), 1 do
        local title, _, _, isHeader, _, isComplete, _, questID = GetQuestLogTitle(id);
        if (not isHeader) then
            QA_QuestTable[questID] = isComplete;
        end
    end
end

local function QA_SendChatMessage(msg)
    if (QuestPlusDB["channel"] == 1) then
        print(msg);
    -- elseif (QuestPlusDB["channel"] == 2) then
    --     SendChatMessage(msg, "SAY");
    elseif (QuestPlusDB["channel"] == 2) then
        if (GetNumSubgroupMembers() > 0) then
            SendChatMessage(msg, "PARTY");
        end
    elseif (QuestPlusDB["channel"] == 3) then
        if (GetNumGroupMembers() > 0) then
            SendChatMessage(msg, "RAID");
        end
    end
end

local function QA_CheckCompletion()
    local id;
    for id = 1, GetNumQuestLogEntries(), 1 do
        local title, _, _, isHeader, _, isComplete, _, questID = GetQuestLogTitle(id);
        if (not isHeader) then
            if (QA_QuestTable[questID] ~= 1) and (isComplete == 1) then
                QA_SendChatMessage(title .. QA_StringFinishText);
                QA_UpdateQuestTable();
                return;
            elseif (QA_QuestTable[questID] ~= -1) and (isComplete == -1) then
                QA_SendChatMessage(title .. QA_StringFailedText);
                QA_UpdateQuestTable();
                return;
            end
        end
    end
end

local function QA_Notification(msg, ...)
    if (string.find(msg, QA_String)) then
        local _, _, ItemName, ItemNum, NumNeeded = string.find(msg, QA_String);
        local StillNeeded = NumNeeded - ItemNum;
        if (StillNeeded < 1) then
            QA_SendChatMessage(QA_MsgProgressText .. format(msg, ...));
            C_Timer.After(1, QA_CheckCompletion);
        else
            if (QuestPlusDB["finish"] ~= 1) then
                QA_SendChatMessage(QA_MsgProgressText .. format(msg, ...));
            end
        end
    elseif (string.find(msg, QA_StringFinish)) then
        -- QA_SendChatMessage(QA_MsgProgressText .. format(msg, ...));
        C_Timer.After(1, QA_CheckCompletion);
    elseif (string.find(msg, QA_StringFailedText)) then
        -- QA_SendChatMessage(QA_MsgProgressText .. format(msg, ...));
        C_Timer.After(1, QA_CheckCompletion);
    end
end

--插件初始化
local qa = CreateFrame("Frame");
qa:RegisterEvent("ADDON_LOADED");
qa:RegisterEvent("UI_INFO_MESSAGE");
qa:RegisterEvent("QUEST_ACCEPTED");
qa:SetScript("OnEvent", function(self, event, ...)
    if (event == "ADDON_LOADED") then
        local name = ...;
        if (name == "QuestPlus") then
            QA_UpdateQuestTable();
        end
    elseif (event == "UI_INFO_MESSAGE") then
        local _, msg = ...;
        if (msg) then
            if (QuestPlusDB["announce"] == 1) then
                QA_Notification(msg);
            end
        end
    elseif (event == "QUEST_ACCEPTED") then
        QA_UpdateQuestTable();
    end
end)
