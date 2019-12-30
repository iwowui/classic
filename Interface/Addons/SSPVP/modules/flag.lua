local SSPVP = select(2, ...)
local Flag = SSPVP:NewModule("Flag", "AceEvent-3.0", "AceTimer-3.0")
Flag.activeIn = "bg"

local Overlay = SSPVP.modules.Overlay
local L = SSPVP.L
local carriers = {["Alliance"] = {}, ["Horde"] = {}}
local buttons = {}

local raidUnits, raidTargetUnits, partyUnits, partyTargetUnits = {}, {}, {}, {}
local respawnTimes = {["wsg"] = 21, ["eots"] = 10}

function Flag:OnInitialize()
	self.defaults = {
		profile = {
			wsg = {
				enabled = true,
				color = true,
				health = true,
				respawn = true,
				capture = true,
				macro = "/targetexact *name",
			},
			eots = {
				enabled = true,
				color = true,
				health = true,
				respawn = true,
				capture = true,
				macro = "/targetexact *name",
			},
		},
	}
	
	self.db = SSPVP.db:RegisterNamespace("flags", self.defaults)
		
	-- Store these so we don't have to keep concating 500 times
	for i=1, MAX_RAID_MEMBERS do
		raidUnits[i] = "raid" .. i
		raidTargetUnits[i] = "raid" .. i .. "target"
	end
	
	for i=1, MAX_PARTY_MEMBERS do
		partyUnits[i] = "party" .. i
		partyTargetUnits[i] = "party" .. i .. "target"
	end
end

function Flag:EnableModule(abbrev)
	-- Flag are only used inside EoTS and WSG currently
	if( not self.db.profile[abbrev] or not self.db.profile[abbrev].enabled ) then
		self.isActive = nil
		return
	end
	
	self.activeBF = abbrev
	
	self:CreateButton(1)
	self:CreateButton(2)
	self:PositionButtons()

	-- Start health scans
	self.frame:Show()
	
	-- For now, it's consistant. Alliance is always up #1, Horde is always up #2
	-- If the WoTLK battlegrounds change this, then this will have to get updated
	buttons[1].type = "Horde"
	self.Horde = buttons[1]

	buttons[2].type = "Alliance"
	self.Alliance = buttons[2]
	
	self:RegisterEvent("CHAT_MSG_BG_SYSTEM_HORDE", "ParseMessage")
	self:RegisterEvent("CHAT_MSG_BG_SYSTEM_ALLIANCE", "ParseMessage")
	self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL", "ParseMessage")
	self:RegisterEvent("UPDATE_BATTLEFIELD_SCORE")
	self:RegisterEvent("UPDATE_BINDINGS")
	self:UPDATE_BINDINGS()
	
	if( self.db.profile[abbrev].health ) then
		self:RegisterEvent("UNIT_HEALTH")
		self:RegisterEvent("PLAYER_TARGET_CHANGED")
		self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
	end
end

-- Left a battlefield
function Flag:DisableModule()
	self.activeBF = nil
	
	-- Reset
	for faction, data in pairs(carriers) do
		for key in pairs(data) do
			data[key] = nil
		end
		
		self:Hide(faction)
	end
	
	-- Stop health updates
	self.frame:Hide()
	
	-- Clear Overlay
	Overlay:RemoveCategory("timer")
	
	self:UnregisterAllEvents()
end

function Flag:Print(msg)
	DEFAULT_CHAT_FRAME:AddMessage("|cFF33FF99Flag|r: " .. msg)
end

-- Update carriers incase we have class
function Flag:UPDATE_BATTLEFIELD_SCORE()
	for faction, data in pairs(carriers) do
		if( data.name ) then
			self:UpdateCarrier(faction)
		end
	end
end

-- Can't pass arguments to our OOC updater so update them all
function Flag:UpdateAllCarriers()
	for faction in pairs(carriers) do
		self:UpdateCarrierAttributes(faction)
	end
end

-- We split these into two different functions, so we can do color/text/health updates while in combat, but update targeting when out of it
function Flag:UpdateCarrierAttributes(faction)
	self:PositionButtons()

	-- Carrier changed but we can't update it yet
	local carrier = carriers[faction].name
	local button = self[faction]
	if( button.carrier ~= carrier ) then
		button:SetAlpha(0.75)
	else
		button:SetAlpha(1.0)
	end
	
	-- In combat, can't change anything
	if( InCombatLockdown() ) then
		SSPVP:RegisterOOCUpdate(self, "UpdateAllCarriers")
		return
	end

	button.carrier = carrier
	button:SetAttribute("type", "macro")
	button:SetAttribute("macrotext", string.gsub(self.db.profile[self.activeBF].macro, "*name", carriers[faction].fullName or ""))
end

function Flag:UpdateCarrier(faction)
	-- Check if we have a carrier
	local carrier = carriers[faction]
	if( not carrier.name ) then
		self:Hide(faction)
		return
	end
		
	local button = self[faction]
	if( carrier.health ) then
		button.text:SetFormattedText("%s |cffffffff[%d%%]|r", carrier.name, carrier.health)		
	else
		button.text:SetText(carrier.name)
	end

	-- Carrier class color if enabled/not set
	if( button.colorSet ~= carrier.name and self.db.profile[self.activeBF].color ) then
		for i=1, GetNumBattlefieldScores() do
			local name, _, _, _, _, _, _, _, _, classToken = GetBattlefieldScore(i)
			
			if( self:StripServer(name) == carrier.name ) then
				button.text:SetTextColor(RAID_CLASS_COLORS[classToken].r, RAID_CLASS_COLORS[classToken].g, RAID_CLASS_COLORS[classToken].b)
				button.colorSet = carrier.name
				break
			end
		end
	end
		
	-- Update the color to the default because we couldn't find one
	if( button.colorSet ~= carrier.name ) then
		button.text:SetTextColor(GameFontNormal:GetTextColor())
	end
end

function Flag:StripServer(text)
	local name, server = string.match(text, "(.-)%-(.*)$")
	if( not name and not server ) then
		return text
	end
	
	return name
end

-- Parse event for changes
function Flag:ParseMessage(event, msg)
	-- More sane for us to do it here
	local faction
	if( self.activeBF == "wsg" ) then
		-- Reverse the factions because Alliance found = Horde event
		-- Horde found = Alliance event
		if( string.match(msg, L["Alliance"]) ) then
			faction = "Horde"
		elseif( string.match(msg, L["Horde"]) ) then
			faction = "Alliance"
		end
	elseif( event == "CHAT_MSG_BG_SYSTEM_HORDE" ) then
		faction = "Horde"
	elseif( event == "CHAT_MSG_BG_SYSTEM_ALLIANCE" ) then
		faction = "Alliance"
	end
	
	-- WSG, pick up
	if( string.match(msg, L["was picked up by (.+)!"]) ) then
		self:PickUp(faction, string.match(msg, L["was picked up by (.+)!"]))
	
	-- EoTS, pick up
	elseif( string.match(msg, L["(.+) has taken the flag!"]) ) then
		self:PickUp(faction, string.match(msg, L["(.+) has taken the flag!"]))

	-- WSG, returned
	elseif( string.match(msg, L["was returned to its base"]) ) then
		self:Returned(faction)
	
	-- EOTS, returned
	elseif( string.match(msg, L["flag has been reset"]) ) then
		self:Returned("Horde")
		self:Returned("Alliance")
		
	-- WSG/EoTS, captured
	elseif( string.match(msg, L["captured the"]) ) then
		self:Captured(faction)
	
	-- EoTS/WSG, dropped
	elseif( string.match(msg, L["was dropped by (.+)!"]) or string.match(msg, L["The flag has been dropped"]) ) then
		self:Dropped(faction)
	end
end

-- Flag captured = time reset as well
function Flag:Captured(faction)
	if( self.db.profile[self.activeBF].respawn and respawnTimes[self.activeBF] ) then
		Overlay:RegisterTimer("respawn", "timer", L["Flag Respawn: %s"], respawnTimes[self.activeBF], SSPVP:GetFactionColor(faction))
	end
	
	--Overlay:RemoveRow(faction .. "time")
	if( carriers[faction].time ) then
		--Overlay:RegisterText(faction .. "capture", "timer", string.format(L["Capture Time: %s"], SecondsToTime(GetTime() - carriers[faction].time)), SSPVP:GetFactionColor(faction))
	end

	-- Clear out
	carriers[faction].time = nil
	carriers[faction].name = nil
	carriers[faction].fullName = nil
	carriers[faction].health = nil
	
	self:Hide(faction)
end

function Flag:Dropped(faction)
	carriers[faction].name = nil
	carriers[faction].fullName = nil
	carriers[faction].health = nil
	Overlay:RemoveRow(faction .. "time")

	self:Hide(faction)
end

-- Return = time reset
function Flag:Returned(faction)
	carriers[faction].time = nil
	carriers[faction].name = nil
	carriers[faction].fullName = nil
	carriers[faction].health = nil
	
	Overlay:RemoveRow(faction .. "time")
end

function Flag:PickUp(faction, fullName)
	local name, server = string.split("-", fullName, 2)
	carriers[faction].fullName = fullName
	carriers[faction].name = name

	-- If the flags dropped then picked up, we don't want to reset time
	if( not carriers[faction].time ) then
		carriers[faction].time = GetTime()
	end
	
	--Overlay:RegisterElapsed(faction .. "time", "timer", L["Held Time: %s"], GetTime() - carriers[faction].time, SSPVP:GetFactionColor(faction))
	self:Show(faction)
end

-- Update visibility based on what we have picked up
function Flag:UpdateStatus()
	for key, data in pairs(carriers) do
		if( data.name ) then
			self:Show(key)
		else
			self:Hide(key)
		end
	end
end

-- Show flag
function Flag:Show(faction)
	self:UpdateCarrier(faction)
	
	local button = self[faction]
	if( InCombatLockdown() ) then
		button:SetAlpha(0.75)
		SSPVP:RegisterOOCUpdate(self, "UpdateStatus")
	else
		self:UpdateCarrierAttributes(faction)
		button:SetAlpha(1.0)
		button:Show()
	end
end

-- Hide flag
function Flag:Hide(faction)
	local button = self[faction]
	if( InCombatLockdown() ) then
		button:SetAlpha(0.75)
		SSPVP:RegisterOOCUpdate(self, "UpdateStatus")
	else
		button.carrier = nil
		button:Hide()
	end
end

-- Carrier targeting
local function carrierPostClick(self)
	local faction = self.type
	if( not carriers[faction].name ) then
		return
	end

	if( self:GetAlpha() ~= 1.0 ) then
		UIErrorsFrame:AddMessage(string.format(L["Cannot target %s, in combat"], carriers[faction].name), 1.0, 0.1, 0.1, 1.0)
	elseif( UnitExists("target") and UnitName("target") == carriers[faction].name ) then
		UIErrorsFrame:AddMessage(string.format(L["Targetting %s"], carriers[faction].name), 1.0, 0.1, 0.1, 1.0)
	else
		UIErrorsFrame:AddMessage(string.format(L["%s is out of range"], carriers[faction].name), 1.0, 0.1, 0.1, 1.0)
	end
end

-- Create our target buttons
function Flag:CreateButton(id)
	local button = CreateFrame("Button", "SSFlag" .. id, UIParent, "SecureActionButtonTemplate")
	button:SetHeight(25)
	button:SetWidth(150)
	button:RegisterForClicks("AnyUp")
	button:SetScript("PostClick", carrierPostClick)

	button.text = button:CreateFontString(nil, "BACKGROUND")
	button.text:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0)
	button.text:SetFont((GameFontNormal:GetFont()), 11)
	button.text:SetShadowOffset(1, -1)
	button.text:SetShadowColor(0, 0, 0, 1)
	button.text:SetJustifyH("LEFT")
	button.text:SetHeight(25)
	button.text:SetWidth(150)
	
	buttons[id] = button
end

function Flag:PositionButtons()
	if( InCombatLockdown() ) then
		SSPVP:RegisterOOCUpdate(self, "PositionButtons")
		return
	end

	for i, child in pairs({UIWidgetTopCenterContainerFrame:GetChildren()}) do
		local dynamicIcon = child.DynamicIconButton
		if( dynamicIcon and buttons[i] ) then
			--if( dynamicIcon:GetTexture() ) then
				buttons[i]:ClearAllPoints()
				buttons[i]:SetPoint("LEFT", UIParent, "BOTTOMLEFT", dynamicIcon:GetRight() + 6, dynamicIcon:GetTop() - 13)
			--else
			--	local text = _G[string.format("AlwaysUpFrame%dText", i)]
			--	buttons[i]:ClearAllPoints()
			--	buttons[i]:SetPoint("LEFT", UIParent, "BOTTOMLEFT", text:GetRight() + 8, text:GetTop() - 5)
			--end
		end
	end
end

-- BINDINGS
function Flag:UPDATE_BINDINGS()
	if( InCombatLockdown() ) then
		SSPVP:RegisterOOCUpdate(self, "UPDATE_BINDINGS")
		return
	end

	local friendlyFaction, enemyFaction
	if( UnitFactionGroup("player") == "Alliance" ) then
		enemyFaction = "Horde"
		friendlyFaction = "Alliance"
	else
		enemyFaction = "Alliance"
		friendlyFaction = "Horde"
	end
	
	-- Enemy carrier
	local bindKey = GetBindingKey("ETARFLAG")
	if( bindKey ) then
		SetOverrideBindingClick(self[enemyFaction], false, bindKey, self[enemyFaction]:GetName())
	else
		ClearOverrideBindings(self[enemyFaction])
	end
	
	-- Friendly carrier
	bindKey = GetBindingKey("FTARFLAG")
	if( bindKey ) then
		SetOverrideBindingClick(self[friendlyFaction], false, bindKey, self[friendlyFaction]:GetName())
	else
		ClearOverrideBindings(self[friendlyFaction])
	end
end

-- HEALTH UPDATES
local HEALTH_TIMEOUT = 10
local partyScan = 0
local allianceTimeout, hordeTimeout

function Flag:UNIT_HEALTH(event, unit)
	self:UpdateHealth(unit)
end

function Flag:UPDATE_MOUSEOVER_UNIT()
	self:UpdateHealth("mouseover")
end

function Flag:PLAYER_TARGET_CHANGED()
	self:UpdateHealth("target")
end

-- Scan raid targets
function Flag:ScanParty()
	for i=1, GetNumGroupMembers() do
		self:UpdateHealth(raidUnits[i])
		self:UpdateHealth(raidTargetUnits[i])
	end
end

-- Update health
function Flag:UpdateHealth(unit)
	if( not UnitExists(unit) or not UnitFactionGroup(unit) ) then
		return
	end

	local name = UnitName(unit)
	local faction = UnitFactionGroup(unit)

	if( carriers[faction].name == name ) then
		carriers[faction].health = floor((UnitHealth(unit) / UnitHealthMax(unit) * 100) + 0.5)
		
		self:UpdateCarrier(faction)
		
		if( faction == "Alliance" ) then
			allianceTimeout = HEALTH_TIMEOUT
		else
			hordeTimeout = HEALTH_TIMEOUT
		end
	end
end

-- Check if we can still get health updates from them
function Flag:IsTargeted(name)
	-- Check if it's our target or mouseover
	if( UnitName("target") == name or UnitName("mouseover") == name ) then
		return true
	end
	
	-- Scan raid member targets, and raid member targets of target
	for i=1, GetNumGroupMembers() do
		if( ( UnitExists(raidUnits[i]) and UnitName(raidUnits[i]) == name ) or ( UnitExists(raidTargetUnits[i]) and UnitName(raidTargetUnits[i]) == name ) ) then
			return true
		end
	end
	
	-- Scan party member targets, and party member targets of target
	for i=1, GetNumSubgroupMembers() do
		if( ( UnitExists(partyUnits[i]) and UnitName(partyUnits[i]) == name ) or ( UnitExists(partyTargetUnits[i]) and UnitName(partyTargetUnits[i]) == name ) ) then
			return true
		end
	end
	
	return nil
end

-- More then HEALTH_TIMEOUT seconds without updates means they're too far away
function Flag:ResetHealth(type)
	-- If we still have them targeted, don't reset health
	if( self:IsTargeted(carriers[type].name) ) then
		if( type == "Alliance" ) then
			allianceTimeout = HEALTH_TIMEOUT
		else
			hordeTimeout = HEALTH_TIMEOUT
		end
		return
	end

	if( carriers[type] and carriers[type].health ) then
		carriers[type].health = nil
		self:UpdateCarrier(type)
	end
end

-- Health OnUpdate
Flag.frame = CreateFrame("Frame")
Flag.frame:Hide()

Flag.frame:SetScript("OnUpdate", function(self, elapsed)
	if( allianceTimeout ) then
		allianceTimeout = allianceTimeout - elapsed
		
		if( allianceTimeout <= 0 ) then
			allianceTimeout = nil
			Flag:ResetHealth("Alliance")
		end
	end
	
	if( hordeTimeout ) then
		hordeTimeout = hordeTimeout - elapsed
		
		if( hordeTimeout <= 0 ) then
			hordeTimeout = nil
			Flag:ResetHealth("Horde")
		end
	end
	
	partyScan = partyScan + elapsed
	if( partyScan >= 5 ) then
		Flag:ScanParty()
	end
end)
