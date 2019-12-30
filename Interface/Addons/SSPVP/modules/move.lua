local SSPVP = select(2, ...)
local Move = SSPVP:NewModule("Move", "AceEvent-3.0")
local L = SSPVP.L
local originalPosition = {}
local tooltip
local _G = getfenv(0)

function Move:OnInitialize()
	self.defaults = {
		profile = {
			score = true,
			pvp = true,
			capture = true,
			position = {},
		},
	}
	
	self.db = SSPVP.db:RegisterNamespace("move", self.defaults)
	-- Wait to do all of our positioning stuff until scale was set correctly
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

function Move:Reload()
	self:TogglePVP()
	self:ToggleCapture()
	self:ToggleScore()
end

function Move:PLAYER_ENTERING_WORLD()
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")
	
	--self:RestorePosition("pvp", WorldStateAlwaysUpFrame)
	self:RestorePosition("score", WorldStateScoreFrame)
	self:Reload()

	hooksecurefunc("UIParent_ManageFramePositions", self.UpdateCapturePosition)
end

-- Save frame position
function Move:SavePosition(type, frame)
	if( not self.db.profile.position[type] ) then
		self.db.profile.position[type] = {}
	end
	
	local scale = frame:GetEffectiveScale()
	self.db.profile.position[type].x = frame:GetLeft() * scale
	self.db.profile.position[type].y = frame:GetTop() * scale
end

-- Reset to the default
function Move:ResetPosition(type, frame)
	frame:ClearAllPoints()
	frame:SetPoint(unpack(originalPosition[type]))
	
	self.db.profile.position[type] = nil
end

-- Restore the saved positioned
function Move:RestorePosition(type, frame)
	-- Save original position before we modify it
	if( not originalPosition[type] ) then
		originalPosition[type] = {frame:GetPoint()}
	end

	if( not self.db.profile.position[type] ) then
		return
	end
	
	local x, y = self.db.profile.position[type].x, self.db.profile.position[type].y
	local scale = frame:GetEffectiveScale()
	
	frame:ClearAllPoints()
	frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x / scale, y / scale)
end

-- CAPTURE BARS
function Move:UpdateCapturePosition()
	if( not Move.db.profile.position.capture ) then
		return
	end

	if( NUM_EXTENDED_UI_FRAMES > 0 ) then
		if( not originalPosition.capture ) then
			originalPosition.capture = {WorldStateCaptureBar1:GetPoint()}
		end
		
		if( not Move.db.profile.capture and not Move.captureFrame ) then
			Move.captureFrame = Move:CreateAnchor("capture", L["Capture bar anchor"], WorldStateCaptureBar1)
		end
		
		local scale = WorldStateCaptureBar1:GetEffectiveScale()
		local y = Move.db.profile.position.capture.y / scale
		for i=1, NUM_EXTENDED_UI_FRAMES do
			local captureBar = _G["WorldStateCaptureBar" .. i]
			if( captureBar and captureBar:IsShown() ) then
				captureBar:ClearAllPoints()
				captureBar:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", Move.db.profile.position.capture.x / scale, y)
				y = y - captureBar:GetHeight()
			end
		end	
	end
end

function Move:ToggleCapture()
	if( self.db.profile.capture ) then
		if( self.captureFrame ) then
			self.captureFrame:Hide()
		end
		return
	elseif( not self.db.profile.capture ) then
		if( self.captureFrame ) then
			self.captureFrame:Show()
			return
		end
	end

	if( WorldStateCaptureBar1 ) then
		self.captureFrame = self:CreateAnchor("capture", L["Capture bar anchor"], WorldStateCaptureBar1)
	end
end

-- PVP OBJECTIVES
function Move:TogglePVP()
	if( self.db.profile.pvp ) then
		if( self.pvpFrame ) then
			self.pvpFrame:Hide()
		end
		return
	elseif( not self.db.profile.pvp ) then
		if( self.pvpFrame ) then
			self.pvpFrame:Show()
			return
		end
	end
	
	self.pvpFrame = self:CreateAnchor("pvp", L["PvP objectives anchor"], WorldStateAlwaysUpFrame)
end

-- SCOREBOARD
function Move:ToggleScore()
	if( self.db.profile.score ) then
		if( self.scoreFrame ) then
			self.scoreFrame:Hide()
		end
		return
	elseif( not self.db.profile.score ) then
		if( self.scoreFrame ) then
			self.scoreFrame:Show()
			return
		end
	end
	
	self.scoreFrame = self:CreateAnchor("score", L["Score objectives anchor"], WorldStateScoreFrame)
end

-- ANCHOR UI
local backdrop = {bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 9,
		edgeSize = 9,
		insets = { left = 2, right = 2, top = 2, bottom = 2 }}

local function showTooltip(self)
	if( not tooltip ) then
		tooltip = CreateFrame("GameTooltip", "SSInfoTooltip", nil, "GameTooltipTemplate")
	end

	tooltip:SetOwner(self, "ANCHOR_RIGHT")
	tooltip:SetText(L["Left Click + Drag to move the frame, Right Click + Drag to reset it to it's original position."], nil, nil, nil, nil, 1)
	tooltip:Show()
end

local function hideTooltip(self)
	tooltip:Hide()
end

local function onDragStart(self, button)
	if( button == "RightButton" ) then
		Move:ResetPosition(self.type, self.anchor)
		return
	end
	
	-- Capture bars have to stop updates to the always up frame so it doesn't mess up positioning
	if( self.type == "capture" ) then
		WorldStateAlwaysUpFrame:UnregisterEvent("UPDATE_WORLD_STATES")
	end

	self.isMoving = true
	self.anchor:SetMovable(true)
	self.anchor:StartMoving()
end

local function onDragStop(self)
	if( self.isMoving ) then
		Move:SavePosition(self.type, self.anchor)

		if( self.type == "capture" ) then
			WorldStateAlwaysUpFrame:RegisterEvent("UPDATE_WORLD_STATES")
			WorldStateAlwaysUpFrame_Update()
		end

		-- Whenever you call StopMovingOrSizing() SetUserPlaced is changed back to true
		self.isMoving = nil
		self.anchor:StopMovingOrSizing()
		self.anchor:SetUserPlaced(nil)
		self.anchor:SetMovable(false)
	end
end

function Move:CreateAnchor(type, text, anchor)
	local frame = CreateFrame("Frame", nil, anchor)
	frame:SetHeight(20)
	frame:SetWidth(150)
	frame:RegisterForDrag("LeftButton", "RightButton")
	frame:EnableMouse(true)
	frame:SetMovable(true)
	frame:SetClampedToScreen(true)
	frame:SetPoint("CENTER", anchor, "TOP", 0, 0)
	frame:SetScript("OnEnter", showTooltip)
	frame:SetScript("OnLeave", hideTooltip)
	
	frame.type = type
	frame.anchor = anchor
	
	frame:SetScript("OnDragStart", onDragStart)
	frame:SetScript("OnDragStop", onDragStop)
	
	frame:SetBackdrop(backdrop)	
	frame:SetBackdropColor(0, 0, 0, 1.0)
	frame:SetBackdropBorderColor(0.75, 0.75, 0.75, 1.0)

	frame.text = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.text:SetText(text)
	frame.text:SetPoint("CENTER", frame, "CENTER")
	
	return frame
end
