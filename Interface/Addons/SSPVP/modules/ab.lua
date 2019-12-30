local SSPVP = select(2, ...)
local AB = SSPVP:NewModule("AB", "AceEvent-3.0")
AB.activeIn = "ab"

local Overlay = SSPVP.modules.Overlay
local L = SSPVP.L
local timers = {}

function AB:OnInitialize()
	self.defaults = {
		profile = {
			timers = true,
		},
	}

	self.db = SSPVP.db:RegisterNamespace("ab", self.defaults)
end

function AB:EnableModule()
	if( self.db.profile.timers ) then
		self:RegisterEvent("CHAT_MSG_BG_SYSTEM_HORDE", "ParseCombat")
		self:RegisterEvent("CHAT_MSG_BG_SYSTEM_ALLIANCE", "ParseCombat")
	end
end

function AB:DisableModule()
	self:UnregisterAllEvents()
	
	for k in pairs(timers) do
		Overlay:RemoveRow(k)
		timers[k] = nil
	end
end

function AB:Reload()
	if( self.isActive ) then
		self:UnregisterAllEvents()
		self:EnableModule()
	end
end

function AB:PrintTimer(node, captureTime, faction)
	if( faction == "CHAT_MSG_BG_SYSTEM_HORDE" ) then
		faction = L["Horde"]
	elseif( faction == "CHAT_MSG_BG_SYSTEM_ALLIANCE" ) then
		faction = L["Alliance"]
	end
	
	SSPVP:ChannelMessage(string.format("[%s] %s: %s", faction, node, SecondsToTime(captureTime - GetTime())))
end

function AB:ParseCombat(event, msg)
	if( string.match(msg, L["claims the ([^!]+)"]) ) then
		local name = string.match(msg, L["claims the ([^!]+)"])
		local node = SSPVP:ParseNode(name)
		timers[name] = GetTime() + 62
		
		Overlay:RegisterTimer(name, "timer", node .. ": %s", 62, SSPVP:GetFactionColor(event))
		Overlay:RegisterOnClick(name, self, "PrintTimer", node, timers[name], event)
				
	elseif( string.match(msg, L["has assaulted the ([^!]+)"]) ) then
		local name = string.match(msg, L["has assaulted the ([^!]+)"])
		local node = SSPVP:ParseNode(name)
		timers[name] = GetTime() + 62
		
		Overlay:RegisterTimer(name, "timer", node .. ": %s", 62, SSPVP:GetFactionColor(event))
		Overlay:RegisterOnClick(name, self, "PrintTimer", node, timers[name], event)
	elseif( string.match(msg, L["has taken the ([^!]+)"]) ) then
		local name = string.match(msg, L["has taken the ([^!]+)"])
		
		timers[name] = nil
		Overlay:RemoveRow(name)
	elseif( string.match(msg, L["has defended the ([^!]+)"]) ) then
		local name = string.match(msg, L["has defended the ([^!]+)"])
		
		timers[name] = nil
		Overlay:RemoveRow(name)
	end
end
