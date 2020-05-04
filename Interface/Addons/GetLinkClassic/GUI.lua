if GetLocale() == "zhCN" then
	GLG_KEYWORD	= "关键词：";
elseif GetLocale() == "zhTW" then
	GLG_KEYWORD	= "關鍵字：";
else
	GLG_KEYWORD	= "Name: ";
end

local GetLinkGuiMode_MenuList = {
	{ text = AH_EXACT_MATCH, hasArrow = true,
		menuList = {
			{ text = YES, func = function() GLOptions["extra"] = 1; CloseDropDownMenus(); end, checked = function() return GLOptions["extra"] == 1; end },
			{ text = NO, func = function() GLOptions["extra"] = 0; CloseDropDownMenus(); end, checked = function() return GLOptions["extra"] == 0; end },
		},
	},
	{ text = RARITY, hasArrow = true,
		menuList = {
			{ text = ITEM_QUALITY0_DESC, func = function() GLOptions["quality"] = 1; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 1; end },
			{ text = ITEM_QUALITY1_DESC, func = function() GLOptions["quality"] = 2; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 2; end },
			{ text = ITEM_QUALITY2_DESC, func = function() GLOptions["quality"] = 3; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 3; end },
			{ text = ITEM_QUALITY3_DESC, func = function() GLOptions["quality"] = 4; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 4; end },
			{ text = ITEM_QUALITY4_DESC, func = function() GLOptions["quality"] = 5; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 5; end },
			{ text = ITEM_QUALITY5_DESC, func = function() GLOptions["quality"] = 6; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 6; end },
			{ text = ITEM_QUALITY6_DESC, func = function() GLOptions["quality"] = 7; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 7; end },
			{ text = ITEM_QUALITY8_DESC, func = function() GLOptions["quality"] = 8; CloseDropDownMenus(); end, checked = function() return GLOptions["quality"] == 8; end },
		},
	},
	{ text = CANCEL },
}

local GetLinkGuiMode_Menu = CreateFrame("Frame", nil, glg, "UIDropDownMenuTemplate");

local function GetLinkGui_Mode()
	EasyMenu(GetLinkGuiMode_MenuList, GetLinkGuiMode_Menu, "cursor", 0 , 0, "MENU");
end

local glg = CreateFrame("Frame", "GetLinkGui", UIParent);
glg:SetSize(396, 230);
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

glg.tittlebg = glg:CreateTexture();
glg.tittlebg:ClearAllPoints();
glg.tittlebg:SetPoint("TOPLEFT", glg, "TOPLEFT", 0, 0);
glg.tittlebg:SetWidth(396);
glg.tittlebg:SetHeight(18);
glg.tittlebg:SetColorTexture(0, 0, 0, 0.5);

glg.tittletext = glg:CreateFontString(nil, nil, "GameFontNormalLarge");
glg.tittletext:ClearAllPoints();
glg.tittletext:SetPoint("LEFT", glg.tittlebg, "LEFT", 3, 0);
glg.tittletext:SetText("Get Link Classic");
glg.tittletext:SetTextColor(1, 1, 1);

glg.close = CreateFrame("Button", nil, glg, "UIPanelCloseButton");
glg.close:ClearAllPoints();
glg.close:SetPoint("RIGHT", glg.tittlebg, "RIGHT", 3, 0);
glg.close:SetSize(24, 24);

glg.setting = CreateFrame("Button", nil, glg);
glg.setting:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton");
glg.setting:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Round");
glg.setting:SetWidth(14);
glg.setting:SetHeight(14);
glg.setting:ClearAllPoints();
glg.setting:SetPoint("RIGHT", glg.close, "LEFT", -2, 0);
glg.setting:SetScript("OnClick", function()
    GetLinkGui_Mode();
end);

glg.keyword = glg:CreateFontString(nil, nil, "GameFontNormalLarge");
glg.keyword:ClearAllPoints();
glg.keyword:SetPoint("BOTTOMLEFT", glg, "BOTTOMLEFT", 16, 18);
glg.keyword:SetWidth(49);
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
	glg.scrollbar:SetValue(glg.message.listLen);
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

glg.search = CreateFrame("Button", nil, glg, "OptionsButtonTemplate");
glg.search:ClearAllPoints();
glg.search:SetPoint("LEFT", glg.keywordtext, "RIGHT", 4, 0);
glg.search:SetWidth(55);
glg.search:SetHeight(25);
glg.search:SetText(SEARCH);
glg.search:SetScript("OnClick", function(self)
	keywords = glg.keywordtext:GetText();
	glg.keywordtext:SetText(keywords);
	glg.keywordtext:ClearFocus();
	GetLink_Command(keywords);
	glg.scrollbar:SetValue(glg.message.listLen);
end)

glg.message = CreateFrame("ScrollingMessageFrame", nil, glg);
glg.message.listLen = 0;
glg.message:SetFrameLevel(glg:GetFrameLevel()+1);
glg.message:ClearAllPoints();
glg.message:SetPoint("CENTER", glg, "CENTER", -10, 7);
glg.message:SetSize(344, 150);
glg.message:SetResizable(true);
glg.message:SetFontObject(GameFontNormal);
glg.message:SetTextColor(1, 1, 1, 1);
glg.message:SetJustifyH("LEFT");
glg.message:SetFading(false);
glg.message:SetMaxLines(99999);
glg.message:SetHyperlinksEnabled(true);
glg.message:SetScript("OnHyperlinkClick", ChatFrame_OnHyperlinkShow);
glg.message:SetScript("OnMouseWheel", function(self, delta)
	local cur_val = math.floor(glg.scrollbar:GetValue());
	local min_val, max_val = 0, glg.message.listLen;

	if delta < 0 and cur_val < max_val then
		cur_val = math.min(max_val, cur_val + 1);
		glg.scrollbar:SetValue(cur_val);
	elseif delta > 0 and cur_val > min_val then
		cur_val = math.max(min_val, cur_val - 1);
		glg.scrollbar:SetValue(cur_val);
	end
end)

-- glg.messagebg = glg:CreateTexture();
-- glg.messagebg:ClearAllPoints();
-- glg.messagebg:SetAllPoints(glg.message);
-- glg.messagebg:SetColorTexture(0, 0, 0, 0.1);

glg.scrollbar = CreateFrame("Slider", nil, glg, "UIPanelScrollBarTemplate");
glg.scrollbar:ClearAllPoints();
glg.scrollbar:SetPoint("LEFT", glg.message, "RIGHT", 4, 1);
glg.scrollbar:SetSize(16, 117);
glg.scrollbar:SetMinMaxValues(0, 999);
glg.scrollbar:SetValueStep(1);
glg.scrollbar:SetScript("OnValueChanged", function(self, value)
	glg.message:SetScrollOffset(glg.message.listLen - math.floor(value));
end)
glg.scrollbar:SetValue(0);

function GLG_SlashHandler()
	if not glg:IsShown() then
		glg:Show();
	else
		glg:Hide();
	end
end

SlashCmdList["GLG"] = GLG_SlashHandler;
SLASH_GLG1 = "/glg";
