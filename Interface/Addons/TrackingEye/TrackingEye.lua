
--====================================================================================================================================================
-- TrackingEye-1.0
--
-- A simple addon to add a tracking button to the minimap.
--
-- License: MIT
--====================================================================================================================================================

local TrackingEye = LibStub("AceAddon-3.0"):NewAddon("TrackingEye", "AceConsole-3.0", "AceEvent-3.0")

-- Setup minimap button
local LDB = LibStub("LibDataBroker-1.1"):NewDataObject("TrackingEyeData",
{
	type = "group",
	text = "Tracking Eye",
	icon = "",
	OnClick = function(_, msg)
		if msg == "LeftButton" then
			TrackingEye:Menu_Open();
		elseif msg == "RightButton" then
			CancelTrackingBuff();
		end
	end,
})
local LDBIcon = LibStub("LibDBIcon-1.0")

------------------------------------------------------------------------------------------------------------------------------------------------------
-- Initialise Tracking Eye
--
-- Setups up default profile values, and registers for all events etc.
------------------------------------------------------------------------------------------------------------------------------------------------------
function TrackingEye:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("TrackingEyeDB",
	{
		profile =
		{
			minimap =
			{
				hide = false,
				minimapPos = 142,
				lock = true,
			},
		},
	})

	MiniMapTrackingFrame:SetScale(0.001) --hide frame permanently by making it tiny

	LDBIcon:Register("TrackingEyeData", LDB, self.db.profile.minimap)
	LDBIcon:GetMinimapButton("TrackingEyeData"):SetScale(1.13)

	LDB.icon = GetTrackingTexture()

	self:RegisterChatCommand("te", "MinimapButton_ToggleLock")
	self:RegisterEvent("MINIMAP_UPDATE_TRACKING", "TrackingIcon_Updated")
end

------------------------------------------------------------------------------------------------------------------------------------------------------
-- Match the Tracking Eye button image to the current tracking target.
--
-- Event callback triggered when the Blizzard UI Tracking Icon has changed.
------------------------------------------------------------------------------------------------------------------------------------------------------
function TrackingEye.TrackingIcon_Updated()
	LDB.icon = GetTrackingTexture()
end

------------------------------------------------------------------------------------------------------------------------------------------------------
-- Lock and unlock the Tracking Eye minimap button position.
------------------------------------------------------------------------------------------------------------------------------------------------------
function TrackingEye:MinimapButton_ToggleLock()
	self.db.profile.minimap.lock = not self.db.profile.minimap.lock

	if self.db.profile.minimap.lock then
		LDBIcon:Lock("TrackingEyeData")
	else
		LDBIcon:Unlock("TrackingEyeData")
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------
-- Create the display the Tracking Eye context menu.
---
--- Will check what spells are known and populate the menu with all usable tracking types.
------------------------------------------------------------------------------------------------------------------------------------------------------
function TrackingEye:Menu_Open()
	local menu =
	{
		{
			text = "Select Tracking", isTitle = true
		}
	}

	-- In level order, with racial/professions last
	local spells =
	{
		1494,	--Track Beasts
		19883,	--Track Humanoids
		19884,	--Track Undead
		19885,	--Track Hidden
		19880,	--Track Elementals
		19878,	--Track Demons
		19882,	--Track Giants
		19879,	--Track Dragonkin
		5225,	--Track Humanoids: Druid
		5500,	--Sense Demons
		5502,	--Sense Undead
		2383,	--Find Herbs
		2580,	--Find Minerals
		2481	--Find Treasure
	}

	for key,spellId in ipairs(spells) do
		spellName = GetSpellInfo(spellId)
		if IsPlayerSpell(spellId) then
			table.insert(menu,
			{
				text = spellName,
				icon = GetSpellTexture(spellId),
				func = function()
					CastSpellByID(spellId)
				end
			})
		end
	end

	local menuFrame = CreateFrame("Frame", "ExampleMenuFrame", UIParent, "UIDropDownMenuTemplate")
	EasyMenu(menu, menuFrame, "cursor", 0 , 0, "MENU");
end
