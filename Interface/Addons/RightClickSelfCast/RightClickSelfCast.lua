--This mod makes every actionbutton of the blizzard actionbars right-click to be self-casting regardless of target.

local ADDON_NAME, addon = ...
if not _G[ADDON_NAME] then
	_G[ADDON_NAME] = CreateFrame("Frame", ADDON_NAME, UIParent, BackdropTemplateMixin and "BackdropTemplate")
end
addon = _G[ADDON_NAME]

addon:SetScript("OnEvent", function(self, event, ...) if self[event] then return self[event](self, event, ...) end end)

local bars = {
"MainMenuBarArtFrame",
"MultiBarBottomLeft",
"MultiBarBottomRight",
"MultiBarRight",
"MultiBarLeft",
--"BonusActionBarFrame",
--"ShapeshiftBarFrame",
"PossessBarFrame",
}

local debugf = tekDebug and tekDebug:GetFrame(ADDON_NAME)
local function Debug(...)
    if debugf then debugf:AddMessage(string.join(", ", tostringall(...))) end
end

function addon:PLAYER_REGEN_ENABLED()
	self:PLAYER_LOGIN()
	self:UnregisterEvent("PLAYER_REGEN_ENABLED")
	self.PLAYER_REGEN_ENABLED = nil
end

function addon:PLAYER_LOGIN()

	-- if we load/reload in combat don't try to set secure attributes or we get action_blocked errors
	if InCombatLockdown() or UnitAffectingCombat("player") then
		self:RegisterEvent("PLAYER_REGEN_ENABLED")
		return
	end
	
	-- Blizzard bars
	for i, v in ipairs(bars) do
		local bar = _G[v]
		if bar ~= nil then
			bar:SetAttribute("unit2", "player")
		end
	end
	
	-- ElvUI (Author: Elv22, TukUI fork)
	-- https://www.tukui.org/about.php?ui=elvui
	-- Since there are so many different forks/modifications of ElvUI out there.  Just do it without using IsAddOnLoaded()
	local barID = 1
	while _G["ElvUI_Bar"..barID] do
		for	_,button in next,_G["ElvUI_Bar"..barID].buttons,nil do
			button:SetAttribute("unit2", "player")
		end
		barID = barID+1
	end
	
	-- Tukui (Author: Elv22, TukUI fork)
	-- https://www.tukui.org
	-- Since there are so many different forks/modifications of Tukui out there.  Just do it without using IsAddOnLoaded()
	for id=1, 12 do
		local button = _G["ActionButton"..id]
		if button ~= nil then
			button:SetAttribute("unit2", "player")
		end
	end
	
	-- this is for the mod ExtraBar (Author: Cowmonster)
	-- http://www.wowinterface.com/downloads/info14492-ExtraBar.html
	if IsAddOnLoaded('ExtraBar') then
		for id=1, 12 do
			local button = _G["ExtraBarButton"..id]
			if button ~= nil then
				button:SetAttribute("unit2", "player")
			end
		end
	end

	-- this is for the mod ExtraBars (Author: Alternator)
	-- http://www.wowinterface.com/downloads/info13335-ExtraBars.html
	if IsAddOnLoaded('Extra Bars') then
		for id=1, 4 do
			local frame = _G["ExtraBar"..id]
			if frame ~= nil then
				frame:SetAttribute("unit2", "player")
				for bid=1, 12 do
					local button = _G["ExtraBar"..id.."Button"..bid]
					if button ~= nil then
						button:SetAttribute("unit2", "player")
					end
				end
			end
		end
	end
	
	local ver = GetAddOnMetadata(ADDON_NAME,"Version") or '1.0'
	DEFAULT_CHAT_FRAME:AddMessage(string.format("|cFF99CC33%s|r [v|cFF20ff20%s|r] loaded", ADDON_NAME, ver or "1.0"))
	
	self:UnregisterEvent("PLAYER_LOGIN")
	self.PLAYER_LOGIN = nil

end

if IsLoggedIn() then addon:PLAYER_LOGIN() else addon:RegisterEvent("PLAYER_LOGIN") end
