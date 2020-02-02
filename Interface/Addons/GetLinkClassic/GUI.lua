if GetLocale() == "zhCN" then
	GLG_KEYWORD	= "关键词：";
	GLG_SEARCH	= "搜索";
elseif GetLocale() == "zhTW" then
	GLG_KEYWORD	= "關鍵字：";
	GLG_SEARCH	= "搜索";
else
	GLG_KEYWORD	= "Key: ";
	GLG_SEARCH	= "Search";
end
local glg = CreateFrame("Frame", "GetLinkGui", UIParent);
glg:SetSize(396, 212);
glg:ClearAllPoints();
glg:SetPoint("CENTER");
glg:SetClampedToScreen(true);
glg:EnableMouse(true);
glg:SetMovable(true);
glg:RegisterForDrag("LeftButton");
glg:SetScript("OnDragStart", function(self) self:StartMoving() end);
glg:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end);
tinsert(UISpecialFrames, glg:GetName());
glg:Hide();

glg.bg = glg:CreateTexture();
glg.bg:ClearAllPoints();
glg.bg:SetAllPoints(glg);
glg.bg:SetColorTexture(0, 0, 0, 0.5);

glg.close = CreateFrame("Button", nil, glg, "UIPanelCloseButton");
glg.close:ClearAllPoints();
glg.close:SetPoint("BOTTOMRIGHT", glg, "TOPRIGHT", 6, -5);

glg.keyword = glg:CreateFontString(nil, nil, "GameFontNormalLarge");
glg.keyword:ClearAllPoints();
glg.keyword:SetPoint("TOPLEFT", 16, -18);
glg.keyword:SetText(GLG_KEYWORD);
glg.keyword:SetTextColor(1, 1, 1);

local keywords = "";
glg.keywordtext = CreateFrame("EditBox", nil, glg, "InputBoxTemplate");
glg.keywordtext:ClearAllPoints();
glg.keywordtext:SetPoint("LEFT", glg.keyword, "RIGHT", 10, 0);
glg.keywordtext:SetWidth(250);
glg.keywordtext:SetHeight(25);
glg.keywordtext:SetAutoFocus(false);
glg.keywordtext:ClearFocus();
glg.keywordtext:SetScript("OnEnterPressed", function(self)
    keywords = self:GetText();
    self:SetText(keywords);
    self:ClearFocus();
    GetLink_Command(keywords);
    glg.scrollBar:SetValue(glg.msg.listLen);
end)
glg.keywordtext:SetScript("OnEscapePressed", function(self)
    keywords = self:GetText();
    self:SetText(keywords);
    self:ClearFocus();
end)
glg.keywordtext:SetScript("OnEditFocusLost", function(self)
    keywords = self:GetText();
    self:SetText(keywords);
    self:ClearFocus();
end)
glg.keywordtext:SetScript("OnShow", function(self)
    self:SetText(keywords);
end)

glg.btn = CreateFrame("Button", "Announce", glg, "OptionsButtonTemplate");
glg.btn:ClearAllPoints();
glg.btn:SetPoint("LEFT", glg.keywordtext, "RIGHT", 5, 0);
glg.btn:SetWidth(55);
glg.btn:SetHeight(25);
glg.btn:SetText(GLG_SEARCH);
glg.btn:SetScript("OnClick", function(self)
    keywords = glg.keywordtext:GetText();
    glg.keywordtext:SetText(keywords);
    glg.keywordtext:ClearFocus();
    GetLink_Command(keywords);
    glg.scrollBar:SetValue(glg.msg.listLen);
end)

glg.msg = CreateFrame("ScrollingMessageFrame", "GetLinkGuiMSG", glg);
glg.msg.listLen = 0;
glg.msg:SetFrameLevel(glg:GetFrameLevel()+1);
glg.msg:ClearAllPoints();
glg.msg:SetPoint("CENTER", glg, "CENTER", -8, -17);
glg.msg:SetSize(396 - 50, 170 - 16);
glg.msg:SetResizable(true);
glg.msg:SetFontObject(GameFontNormal);
glg.msg:SetTextColor(1, 1, 1, 1);
glg.msg:SetJustifyH("LEFT");
glg.msg:SetFading(false);
glg.msg:SetMaxLines(99999);
glg.msg:SetHyperlinksEnabled(true);
glg.msg:SetScript("OnHyperlinkClick", ChatFrame_OnHyperlinkShow);
glg.msg:SetScript("OnMouseWheel", function(self, delta)
    local cur_val = math.floor(glg.scrollBar:GetValue());
    local min_val, max_val = 0, glg.msg.listLen;

    if delta < 0 and cur_val < max_val then
        cur_val = math.min(max_val, cur_val + 1);
        glg.scrollBar:SetValue(cur_val);
    elseif delta > 0 and cur_val > min_val then
        cur_val = math.max(min_val, cur_val - 1);
        glg.scrollBar:SetValue(cur_val);
    end
end)

-- glg.msg.bg = glg:CreateTexture();
-- glg.msg.bg:ClearAllPoints();
-- glg.msg.bg:SetAllPoints(glg.msg);
-- glg.msg.bg:SetColorTexture(0, 0, 0, 0.5);

glg.scrollBar = CreateFrame("Slider", nil, glg, "UIPanelScrollBarTemplate");
glg.scrollBar:ClearAllPoints();
glg.scrollBar:SetPoint("BOTTOMRIGHT", glg, "BOTTOMRIGHT", -15, 28);
glg.scrollBar:SetSize(16, 170 - 48);
glg.scrollBar:SetMinMaxValues(0, 999);
glg.scrollBar:SetValueStep(1);
glg.scrollBar.scrollStep = 3;
glg.scrollBar:SetScript("OnValueChanged", function(self, value)
    glg.msg:SetScrollOffset(glg.msg.listLen - math.floor(value));
end)
glg.scrollBar:SetValue(0);

function GLG_SlashHandler()
    if not glg:IsShown() then
        glg:Show();
    else
        glg:Hide();
    end
end

SlashCmdList["GLG"] = GLG_SlashHandler;
SLASH_GLG1 = "/glg";
