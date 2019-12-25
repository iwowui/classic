
-- MinimapButton.lua: code to handle the little Recipe Radar minimap button
-- $Id: MinimapButton.lua 1022 2008-03-07 20:57:50Z jnmiller $
local L = LibStub("AceLocale-3.0"):GetLocale("RecipeRadarClassic")

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
-- Minimap Button

CreateFrame("Frame", "RecipeRadarMinimapButtonFrame", Minimap)
RecipeRadarMinimapButtonFrame:EnableMouse(true)
RecipeRadarMinimapButtonFrame:SetMovable(false)
RecipeRadarMinimapButtonFrame:SetFrameStrata("LOW")
RecipeRadarMinimapButtonFrame:SetWidth(32)
RecipeRadarMinimapButtonFrame:SetHeight(32)
RecipeRadarMinimapButtonFrame:SetPoint("TOPLEFT", Minimap, "RIGHT", 2, 0)


CreateFrame("Frame", "RecipeRadarMinimapButtonHighlightFrame", RecipeRadarMinimapButtonFrame)
RecipeRadarMinimapButtonHighlightFrame:SetWidth(32)
RecipeRadarMinimapButtonHighlightFrame:SetHeight(32)
RecipeRadarMinimapButtonHighlightFrame:SetPoint("TOPLEFT", RecipeRadarMinimapButtonFrame, 0, 0)
local t = RecipeRadarMinimapButtonHighlightFrame:CreateTexture(nil,"OVERLAY")
t:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
t:SetAllPoints()
RecipeRadarMinimapButtonHighlightFrame:Hide()



CreateFrame("Button", "RecipeRadar_MinimapButton", RecipeRadarMinimapButtonFrame)
RecipeRadar_MinimapButton:SetWidth(32)
RecipeRadar_MinimapButton:SetHeight(32)
RecipeRadar_MinimapButton:SetNormalTexture("Interface\\AddOns\\RecipeRadarClassic\\Images\\Misc\\MinimapButtonUp.blp")
RecipeRadar_MinimapButton:SetPushedTexture("Interface\\AddOns\\RecipeRadarClassic\\Images\\Misc\\MinimapButtonDown.blp")
RecipeRadar_MinimapButton:SetPoint("TOPLEFT", RecipeRadarMinimapButtonFrame)

-- Thanks to Yatlas for this code
function RecipeRadar_MinimapButton_BeingDragged()
	-- Thanks to Gello for this code
	local xpos,ypos = GetCursorPosition()
	local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom()

	xpos = xmin-xpos/UIParent:GetScale()+70
	ypos = ypos/UIParent:GetScale()-ymin-70

	local v = math.deg(math.atan2(ypos, xpos))
	if v < 0 then
		v = v + 360
	end
	RecipeRadar.db.profile.MinimapButtonPosition = math.ceil(v)
	RecipeRadar_MinimapButton_UpdatePosition()

end

RecipeRadar_MinimapButton:RegisterEvent("VARIABLES_LOADED")
RecipeRadar_MinimapButton:RegisterForDrag("RightButton")
RecipeRadar_MinimapButton:SetScript("OnDragStart", function(self)
	self:SetScript("OnUpdate", RecipeRadar_MinimapButton_BeingDragged)
	RecipeRadar_MinimapButton_BeingDragged()
end)
RecipeRadar_MinimapButton:SetScript("OnDragStop", function(self)
	self:SetScript("OnUpdate", RecipeRadar_MinimapButton_OnUpdate)
	if RecipeRadar_OptionsFrame:IsVisible() then
		LibStub("AceConfigRegistry-3.0"):NotifyChange("RecipeRadar") 
	end
end)
RecipeRadar_MinimapButton:SetScript("OnClick", function(self)
	RecipeRadar_Toggle()
end)
RecipeRadar_MinimapButton:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_LEFT")
	GameTooltip:SetText(L["Recipe Radar Classic"] .. " " .. RECIPERADAR_VERSION)
	GameTooltip:AddLine(L["Left-click to open RecipeRadar."])
	GameTooltip:AddLine(L["Right-click and drag to move this button."])
	GameTooltip:Show()
end)
RecipeRadar_MinimapButton:SetScript("OnLeave", RecipeRadar_Button_OnLeave)
RecipeRadar_MinimapButton:SetScript("OnEvent", RecipeRadar_MinimapButton_Init)
RecipeRadar_MinimapButton:SetScript("OnUpdate", function(self, elapsed)
RecipeRadar_MinimapButton_OnUpdate(self, elapsed)
end)
RecipeRadar_MinimapButton:SetScript("OnShow", function(self)
        self.total = 0
        self.cntr = 0
        self.sign = 1
        RECIPERADAR_FLASH_MINIMAP_BUTTON = false
end)


---------------------------------------------------------------------------------------
function RecipeRadar_Button_OnLeave(self)
	ResetCursor()
	GameTooltip:Hide()
end

function RecipeRadar_MinimapButton_Init(self)

   if (RecipeRadar.db.profile.ShowMinimapButton) then
      RecipeRadarMinimapButtonFrame:Show()
   else
      RecipeRadarMinimapButtonFrame:Hide()
   end
   RecipeRadar_MinimapButton_UpdatePosition()

end

-- Turns on the slow highlight/outline flash.
function RecipeRadar_MinimapButton_Flash(self)

   RECIPERADAR_FLASH_MINIMAP_BUTTON = true
   RecipeRadarMinimapButtonHighlightFrame:Show()

end

-- OnUpdate event handler manages the flashing highlight when appropriate.
function RecipeRadar_MinimapButton_OnUpdate(self, elapsed)

   if (not RECIPERADAR_FLASH_MINIMAP_BUTTON) then
      return
   end

   if (self.total == nil) then
      self.total = 0
   end
   if (self.cntr == nil) then
      self.cntr = 0
   end
   if (self.sign == nil) then
      self.sign = 1
   end
   self.total = self.total + elapsed
   local cntr = self.cntr + elapsed
   local sign = self.sign
   local alpha

   -- alternate coming/going every half-second
   if (cntr > 0.5) then
      sign = -sign
      self.sign = sign
   end
   cntr = mod(cntr, 0.5)
   self.cntr = cntr

   -- change the alpha value to create the flashing
   if (sign == 1) then
      alpha = (25  + (cntr * 400)) / 255
   else
      alpha = (255 - (cntr * 400)) / 255
   end

   -- only make the new value visible if the button is also visible
   if (RecipeRadarMinimapButtonFrame:IsVisible()) then
      RecipeRadarMinimapButtonHighlightFrame:SetAlpha(alpha)
   end

   -- only flash for a few seconds, then shut off
   if (self.total > 4) then
      RecipeRadarMinimapButtonHighlightFrame:Hide()
      RECIPERADAR_FLASH_MINIMAP_BUTTON = false
      self.total = 0
   end

end

-- Sets the location of the button according to the current options.
function RecipeRadar_MinimapButton_UpdatePosition()

        RecipeRadarMinimapButtonFrame:SetPoint("TOPLEFT", "Minimap", "TOPLEFT",
         54 - (78 * cos(RecipeRadar.db.profile.MinimapButtonPosition)),
         (78 * sin(RecipeRadar.db.profile.MinimapButtonPosition)) - 55)

end
