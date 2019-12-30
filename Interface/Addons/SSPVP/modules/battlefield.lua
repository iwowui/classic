local SSPVP = select(2, ...)
local BF = SSPVP:NewModule("Battlefield", "AceEvent-3.0", "AceTimer-3.0")
BF.activeIn = "bf"

local L = SSPVP.L
local Overlay = SSPVP.modules.Overlay
local filterItems = {}
local playerName = UnitName("player")

function BF:OnInitialize()
	self.defaults = {
		profile = {
			soulstone = false,
			
			release = {
				eots = true,
				av = true,
				wsg = true,
				ab = true,
				arena = false,
				wg = false,
				sota = false,
			},
		},
	}
	
	self.db = SSPVP.db:RegisterNamespace("battlefield", self.defaults)

	table.insert(filterItems, (GetItemInfo(20560))) -- AV
	table.insert(filterItems, (GetItemInfo(20559))) -- AB
	table.insert(filterItems, (GetItemInfo(20558))) -- WSG

	-- Various AV items
	for _, id in pairs({18230, 17422, 17423, 17502, 17503, 17306, 17504, 17326, 17328, 17327, 18145}) do
		table.insert(filterItems, (GetItemInfo(id)))
	end
end

function BF:EnableModule(abbrev)
	self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL")
	self:RegisterEvent("PLAYER_DEAD")

	self.activeBF = abbrev
	
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", self.FilterSystemMessages)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_LOOT", self.FilterLootMessages)

	-- Blizzards code is fucked up, so we do this ourselves
	if( GetCVar("showBattlefieldMinimap") == "1" ) then
		LoadAddOn("Blizzard_BattlefieldMap")
		BattlefieldMapFrame:Show()
	end
end

function BF:DisableModule()
	Overlay:RemoveRow("start")

	-- Add a small delay before we remove the filters to ensure we can get all of the proper filtering.
	self:ScheduleTimer("UnregisterMessageFilters", 4)

	self:UnregisterAllEvents()
	self.activeBF = nil
	
	-- Blizzards code doesn't seem to hide it correctly, so will do it ourselves
	if( GetCVar("showBattlefieldMinimap") == "1" and BattlefieldMapFrame ) then
		BattlefieldMapFrame:Hide()
	end
end

function BF:UnregisterMessageFilters()
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", self.FilterSystemMessages)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_LOOT", self.FilterLootMessages)
end

-- Filter spam
function BF.FilterLootMessages(self, event, msg, ...)
	if( msg ) then
		if( not string.match(msg, L["^You "]) ) then
			for _, itemScan in pairs(filterItems) do
				if( string.match(msg, itemScan) ) then
					return true, msg, ...
				end
			end
		end
		
		if( string.match(msg, L["has selected .+ for:"]) or string.match(msg, L["passed on:"]) ) then
			return true, msg, ...
		elseif( string.match(msg, L[".+ Roll -"]) ) then
			if( not string.match(msg, L["by"] .. " " .. playerName) ) then
				return true, msg, ...
			end
		end
	end

	return false, msg, ...
end

function BF.FilterSystemMessages(self, event, msg, ...)
	if( msg and string.match(msg, L["the instance group.$"]) ) then
		return true
	end
	
	return false, msg, ...
end

-- Start timers
function BF:CHAT_MSG_BG_SYSTEM_NEUTRAL(event, msg)
	if( string.match(msg, L["2 minute"]) ) then
		Overlay:RegisterTimer("start", "timer", L["Starting: %s"], 120)
	elseif( string.match(msg, L["1 minute"]) or string.match(msg, L["One minute"]) ) then
		Overlay:RegisterTimer("start", "timer", L["Starting: %s"], 60)
	elseif( string.match(msg, L["30 seconds"]) or string.match(msg, L["Thirty seconds"]) ) then
		Overlay:RegisterTimer("start", "timer", L["Starting: %s"], 30)
	elseif( string.match(msg, L["Fifteen seconds"]) ) then
		Overlay:RegisterTimer("start", "timer", L["Starting: %s"], 15)
	end
end

-- Auto release
function BF:PLAYER_DEAD()
	if( self.db.profile.release[self.activeBF] ) then
		local options = C_DeathInfo.GetSelfResurrectOptions()
		-- No soul stone, release
		if( not options or #(options) == 0 ) then
			StaticPopupDialogs["DEATH"].text = L["Releasing..."]
			RepopMe()
		else
			StaticPopupDialogs["DEATH"].text = L["Self resurrection available, %d %s until release"]
		end
	
	elseif( not self.db.profile.release[self.activeBF] ) then
		StaticPopupDialogs["DEATH"].text = L["Auto release disabled, %d %s until release"]
	else
		StaticPopupDialogs["DEATH"].text = DEATH_RELEASE_TIMER
	end
end
