--文本复制，修改自Leatrix_Plus
local editFrame = CreateFrame("ScrollFrame", nil, nil, "InputScrollFrameTemplate");

editFrame:ClearAllPoints();
editFrame:SetPoint("BOTTOM", 0, 130);
editFrame:SetSize(470, 170);
editFrame:SetFrameStrata("MEDIUM");
editFrame:SetToplevel(true);
editFrame:Hide();
editFrame.CharCount:Hide();

editFrame.bg = editFrame:CreateTexture(nil, "BACKGROUND");
editFrame.bg:SetAllPoints();
editFrame.bg:SetColorTexture(0.00, 0.00, 0.0, 0.5);

editFrame.LeftTex:SetTexture(editFrame.RightTex:GetTexture()); editFrame.LeftTex:SetTexCoord(1, 0, 0, 1);
editFrame.BottomTex:SetTexture(editFrame.TopTex:GetTexture()); editFrame.BottomTex:SetTexCoord(0, 1, 1, 0);
editFrame.BottomRightTex:SetTexture(editFrame.TopRightTex:GetTexture()); editFrame.BottomRightTex:SetTexCoord(0, 1, 1, 0);
editFrame.BottomLeftTex:SetTexture(editFrame.TopRightTex:GetTexture()); editFrame.BottomLeftTex:SetTexCoord(1, 0, 1, 0);
editFrame.TopLeftTex:SetTexture(editFrame.TopRightTex:GetTexture()); editFrame.TopLeftTex:SetTexCoord(1, 0, 0, 1);

local editBox = editFrame.EditBox;
editBox:SetAltArrowKeyMode(false);
editBox:SetTextInsets(4, 4, 4, 4);
editBox:SetWidth(editFrame:GetWidth() - 30);

editBox.close = CreateFrame("Button", nil, editFrame, "UIPanelCloseButton");
editBox.close:ClearAllPoints();
editBox.close:SetPoint("BOTTOMRIGHT", editFrame, "TOPRIGHT", 12, 0);

local function CloseRecentChatWindow()
    editBox:SetText("");
    editBox:ClearFocus();
    editFrame:Hide();
end

editFrame:SetScript("OnMouseDown", function(self, button)
    if button == "RightButton" then CloseRecentChatWindow() end
end)

editBox:SetScript("OnMouseDown", function(self, button)
    if button == "RightButton" then CloseRecentChatWindow() end
end)

editBox:EnableKeyboard(false);
editBox:SetScript("OnKeyDown", function() end);

editBox:HookScript("OnEscapePressed", function()
    editBox:HighlightText(0, 0);
    editBox:ClearFocus();
end)

editBox:SetScript("OnEnterPressed", function() 
    editBox:HighlightText(0, 0);
    editBox:ClearFocus();
end)

local lastnum = 0;
function ShowChatbox(num)
    if num == lastnum and editFrame:IsShown() then
        CloseRecentChatWindow()
    else
        local tagid = (WhisperTableDB["page"] - 1) * 8 + num;
        local tag = WhisperTableDB["tag"][tagid];
        editBox:SetText("");
        local NumMsg = #WhisperTableDB["msg"][tag];
        local StartMsg = 1;
        if NumMsg > 512 then StartMsg = NumMsg - 511 end
        local totalMsgCount = 0;
        for iMsg = StartMsg, NumMsg do
            local chatMessage = WhisperTableDB["msg"][tag][iMsg];
            if chatMessage then
                editBox:Insert(chatMessage .. "|n");
            end
            totalMsgCount = totalMsgCount + 1;
        end
        editFrame:SetVerticalScroll(0);
        C_Timer.After(0.1, function() editFrame.ScrollBar.ScrollDownButton:Click() end);
        editFrame:Show();
        editBox:ClearFocus();
        lastnum = num;
    end
end
