AutoTrackQuests = {}
AutoTrackQuests.Frame = CreateFrame("Frame")

function QuestPlus_AutoTrack()
    if QuestPlusDB["autotrack"] == 1 and not IsAddOnLoaded("Questie") then
        AutoTrackQuests.Frame:SetScript("OnEvent", function(self, event, ...)
            if event == "QUEST_ACCEPTED" or event == "QUEST_WATCH_UPDATE" then
                local qindex = ...
                AutoTrackQuests.WatchQuest(qindex)
            end
        end)
        AutoTrackQuests.Frame:RegisterEvent("QUEST_ACCEPTED")
        AutoTrackQuests.Frame:RegisterEvent("QUEST_WATCH_UPDATE")
        AutoTrackQuests.Frame:RegisterEvent("ADDON_LOADED")
    else
        AutoTrackQuests.Frame:SetScript("OnEvent", nil)
        AutoTrackQuests.Frame:UnregisterEvent("QUEST_ACCEPTED")
        AutoTrackQuests.Frame:UnregisterEvent("QUEST_WATCH_UPDATE")
        AutoTrackQuests.Frame:UnregisterEvent("ADDON_LOADED")
    end
end

function AutoTrackQuests.WatchQuest(qindex)
    local num_objectives = GetNumQuestLeaderBoards(qindex)

    if num_objectives == 0 then return end    -- Don't watch an untrackable quest (no objectives)
    if IsQuestWatched(qindex) then return end -- Don't watch an already-watched quest

    -- If we're tracking 5 or more quests, keep untracking the oldest ones until we're at 4 so we can track the new one
    while GetNumQuestWatches() >= MAX_WATCHABLE_QUESTS do
        RemoveQuestWatch(GetQuestIndexForWatch(1))
        QuestWatch_Update()
    end

    AddQuestWatch(qindex)
end
