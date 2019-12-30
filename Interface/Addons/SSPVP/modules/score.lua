local SSPVP = select(2, ...)
local Score = SSPVP:NewModule("Score", "AceEvent-3.0")
Score.activeIn = "bf"

local L = SSPVP.L

local classes = {}
local classColors = {}
local _G = getfenv(0)

function Score:OnInitialize()
	self.defaults = {
		profile = {
			icon = true,
			color = true,
			sameServer = true,
		},
	}
	
	self.db = SSPVP.db:RegisterNamespace("score", self.defaults)	
	
	for class, color in pairs(RAID_CLASS_COLORS) do
		classColors[class] = string.format("|cff%02x%02x%02x", color.r * 255, color.g * 255, color.b * 255)
	end
end

function Score:EnableModule()
	self:CreateInfoButtons()
end

function Score:DisableModule()
	self:UnregisterAllEvents()
end

function Score:Reload()
	if( self.isActive ) then
		self:UnregisterAllEvents()
		self:EnableModule()
	end
end

-- Create our tooltip
local function sortTotals(a, b)
	if( not a ) then
		return true
	elseif( not b ) then
		return false
	end
	
	return a.total > b.total
end


function Score:AddClass(class)
	for _, row in pairs(classes) do
		if( row.class == class ) then
			row.total = row.total + 1
			return
		end
	end
	
	table.insert(classes, {total = 1, class = class})
end

function Score:GetTooltip(faction)
	for _, row in pairs(classes) do
		row.total = 0
	end
	
	-- Base stuff
	local color, factionID
	if( faction == "Alliance" ) then
		color = "|cff0070dd"
		factionID = 1

	elseif( faction == "Horde" ) then
		color = RED_FONT_COLOR_CODE
		factionID = 0

	end
	
	local players = 0
	
	for i=1, GetNumBattlefieldScores() do
		local name, _, _, _, _, playerFaction, _, _, class = GetBattlefieldScore(i)
		if( playerFaction == factionID and name ) then
			players = players + 1
			self:AddClass(class)
		end
	end
	
	table.sort(classes, sortTotals)
	
	-- Parse it out
	local tooltip = string.format(L["%s (%d players)"], color .. L[faction] .. FONT_COLOR_CODE_CLOSE, players) .. "\n\n"
	
	-- Add class info
	tooltip = tooltip .. "\n" .. color .. L["Classes"] .. FONT_COLOR_CODE_CLOSE .. "\n"
	for _, row in pairs(classes) do
		if( row.total > 0 ) then
			tooltip = tooltip .. string.format("%s: |cffffffff%d|r", row.class, row.total) .. "\n"
		end
	end
	
	return tooltip
end


-- Create the Alliance/Horde buttons on the score
local function hideTooltip()
	GameTooltip:Hide()
end

local function showFactionTooltip(self)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
	GameTooltip:SetText(Score:GetTooltip(self.faction))
	GameTooltip:Show()
end

local function outputServerInfo(self, mouse)
	if( mouse == "RightButton" ) then
		Score:GetTooltip(self.faction)
		
		-- Classes
		local parsedClasses = {}
		for _, row in pairs(classes) do
			if( row.total > 0 ) then
				table.insert(parsedClasses, row.class .. ": " .. row.total)
			end
		end
		
		SSPVP:ChannelMessage(table.concat(parsedClasses, ", "))
	end
end

function Score:CreateInfoButtons()
	if( not self.allianceButton ) then
		local button = CreateFrame("Button", nil, WorldStateScoreFrame, "GameMenuButtonTemplate")
		button:SetText(L["Alliance"])
		button:SetHeight(19)
		button:SetWidth(button:GetFontString():GetStringWidth() + 10)
		button:SetPoint("TOPRIGHT", WorldStateScoreFrame, "TOPRIGHT", -190, -18)
		button:SetNormalFontObject(GameFontHighlightSmall)
		button:SetHighlightFontObject(GameFontHighlightSmall)

		button:SetScript("OnLeave", hideTooltip)
		button:SetScript("OnEnter", showFactionTooltip)
		button:SetScript("OnMouseUp", outputServerInfo)
		button.faction = "Alliance"
		
		self.allianceButton = button
	end
	
	if( not self.hordeButton ) then
		local button = CreateFrame("Button", nil, WorldStateScoreFrame, "GameMenuButtonTemplate")
		button:SetText(L["Horde"])
		button:SetHeight(19)
		button:SetWidth(button:GetFontString():GetStringWidth() + 10)
		button:SetPoint("TOPRIGHT", WorldStateScoreFrame, "TOPRIGHT", -140, -18)
		button:SetNormalFontObject(GameFontHighlightSmall)
		button:SetHighlightFontObject(GameFontHighlightSmall)

		button:SetScript("OnLeave", hideTooltip)
		button:SetScript("OnEnter", showFactionTooltip)
		button:SetScript("OnMouseUp", outputServerInfo)
		button.faction = "Horde"

		self.hordeButton = button
	end
end

-- Battlefield score changes
hooksecurefunc("WorldStateScoreFrame_Update", function()
	for i=1, 22 do
		local name, _, _, _, _, faction, _, _, _, classToken = GetBattlefieldScore(FauxScrollFrame_GetOffset(WorldStateScoreScrollFrame) + i)
		if( name ) then
			local nameText = _G["WorldStateScoreButton" .. i .. "NameText"]

			-- Append server name to everyone even if they're from the same server
			local server
			if( string.match(name, "-") ) then
				name, server = string.match(name, "(.-)%-(.*)$")
			elseif( Score.db.profile.sameServer ) then
				server = GetRealmName()	
			end
			
			-- Add class color
			local color = ""
			if( Score.db.profile.color and classColors[classToken] ) then
				color = classColors[classToken]
			end
			
			-- Server provided, so show it!
			if( server ) then
				nameText:SetFormattedText("%s%s|r - %s", color, name, server)
			else
				nameText:SetFormattedText("%s%s|r", color, name)
			end
		end
	end
end)
