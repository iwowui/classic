local wf = QuestWatchFrame;
wf:SetMovable(true);
wf:EnableMouse(true);
wf:RegisterForDrag("LeftButton");
wf:SetHitRectInsets(-15, -15, -5, -5);
wf:SetClampedToScreen(true);
wf:SetUserPlaced(true);
-- wf:ClearAllPoints();
-- wf:SetPoint("TOPRIGHT", "MinimapCluster", "BOTTOMRIGHT", 0, 10);
-- wf:SetHeight(20);
wf.ClearAllPoints = function() end
wf.SetPoint = function() end

function QuestPlus_Tracker()
    if QuestPlusDB["tracker"] == 1 and not IsAddOnLoaded("Questie") and not IsAddOnLoaded("MonkeyQuest") then
        wf:SetScript("OnDragStart", function(self)
            if IsShiftKeyDown() and (not InCombatLockdown()) then
                wf:StartMoving();
            end
        end)
        wf:SetScript("OnDragStop", function(self)
            wf:StopMovingOrSizing();
        end)
    else
        wf:SetScript("OnDragStart", nil)
        wf:SetScript("OnDragStop", nil)
    end
end
