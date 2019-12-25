
-- MainFrame.lua: main Recipe Radar window code
-- $Id: MainFrame.lua 1060 2008-11-16 04:27:27Z jnmiller $
local L = LibStub("AceLocale-3.0"):GetLocale("RecipeRadarClassic")

function RecipeRadar_MainFrame_Init()

   RecipeRadarFrame:RegisterForDrag("LeftButton")

   RecipeRadarListScrollFrameScrollBar:SetMinMaxValues(0, 0)
   RecipeRadarListScrollFrameScrollBar:SetValue(0)
   RecipeRadarListScrollFrameScrollBar.scrollBarHideable = 1
   
   RecipeRadarOptionsButton:SetText(L["Options"])
   RecipeRadarMapVendorIndicatorText:SetText(L["Locate Vendor on Map"])
   RecipeRadar_UpdateLock()
   
   RecipeRadar_RadarTab_Init()

   RECIPERADAR_TOOLTIP_LINK = ""

end

function RecipeRadar_Toggle()

   if (RecipeRadarFrame:IsVisible()) then
      HideUIPanel(RecipeRadarFrame)
   else
      RecipeRadar_InitVendorFilters()
      RecipeRadar_InitRecipeFilters()
      RecipeRadar_Frame_Show()
   end

end

function RecipeRadar_Frame_Show()

   ShowUIPanel(RecipeRadarFrame)
   --RecipeRadar_SkillDB_ParseSpellbookFrame()
   RecipeRadar_SkillDB_ParseSkillFrame()
   RecipeRadar_SkillDB_ParseReputationFrame()
   RecipeRadar_FrameUpdate()

end

function RecipeRadar_FrameUpdate()

   if (RecipeRadar.db.profile.ActiveTab == 1) then
      RecipeRadar_RadarTab_Update()
   else
      RecipeRadar_RecipesTab_Update()
   end

end

------------------------------------------------------------------------
-- Tab code
------------------------------------------------------------------------

-- Draws the borders around each tab according to which is active.
function RecipeRadar_SetActiveTab(id)

   local active_tab_height, background_tab_height = 33, 29

   if (id == 1) then
      RecipeRadarRadarTabFrameMiddle:SetHeight(active_tab_height)
      RecipeRadarRadarTabFrameRight:SetHeight(active_tab_height)
      RecipeRadarRecipesTabFrameLeft:SetHeight(background_tab_height)
      RecipeRadarRecipesTabFrameMiddle:SetHeight(background_tab_height)
      RecipeRadarRecipesTabFrameRight:SetHeight(background_tab_height)
      RecipeRadar.db.profile.ActiveTab = 1
   else
      RecipeRadarRadarTabFrameMiddle:SetHeight(background_tab_height)
      RecipeRadarRadarTabFrameRight:SetHeight(background_tab_height)
      RecipeRadarRecipesTabFrameLeft:SetHeight(active_tab_height)
      RecipeRadarRecipesTabFrameMiddle:SetHeight(active_tab_height)
      RecipeRadarRecipesTabFrameRight:SetHeight(active_tab_height)
      RecipeRadar.db.profile.ActiveTab = 2
   end  

end

-- Sets the button color to the specified team colors.
function RecipeRadar_SetButtonFont(button, team)

   if (team == "Alliance") then
      button:SetNormalFontObject(RecipeRadarAlliance)
      button:SetHighlightFontObject(RecipeRadarAllianceHighlight)
   elseif (team == "Horde") then
      button:SetNormalFontObject(RecipeRadarHorde)
      button:SetHighlightFontObject(RecipeRadarHordeHighlight)
   elseif (team == "Neutral") then
      button:SetNormalFontObject(RecipeRadarNeutral)
      button:SetHighlightFontObject(RecipeRadarNeutralHighlight)
   end
   
end

-- Common drawing code for list items in the scroll frame.
function RecipeRadar_DrawListItem(index, recipe)

   local button = _G["RecipeRadarVendor" .. index]

   -- get and set the text color according to recipe availability
   local name = RecipeRadar_GetSafeItemInfo(recipe.ID)
   local indicator = RecipeRadar_Availability_GetIndicator(recipe)

   if (name == L["Uncached Recipe"]) then
      button:SetNormalFontObject(RecipeRadarDarkGray)
      button:SetHighlightFontObject(RecipeRadarDarkGrayHighlight)
   else
      button:SetNormalFontObject(RecipeRadarGray)
      button:SetHighlightFontObject(RecipeRadarGrayHighlight)
   end

   -- basic drawing code
   if (RecipeRadar.db.profile.RealmAvailability) then
      button:SetText(name .. indicator)
   else
      button:SetText(name)
   end
   button:SetID(index)
   button:Show()

   -- drawing code for the little subtext field
   local subtext = _G["RecipeRadarVendor" .. index .. "SubText"]
   if (not RecipeRadar.db.profile.RealmAvailability) then
      local avail = RecipeRadar_Availability_GetKey(recipe)
      if (avail) then
         button.r = RecipeRadar_Availabilities[avail].Color.r
         button.g = RecipeRadar_Availabilities[avail].Color.g
         button.b = RecipeRadar_Availabilities[avail].Color.b
      else
         button.r = RecipeRadar_Colors.UncachedRecipe.r
         button.g = RecipeRadar_Colors.UncachedRecipe.g
         button.b = RecipeRadar_Colors.UncachedRecipe.b
      end
      subtext:SetText(indicator)
      subtext:SetTextColor(button.r, button.g, button.b)
      subtext:SetPoint("LEFT", "RecipeRadarVendor" .. index .. "Text",
            "RIGHT", 10, 0)
      subtext:Show()
   else
      subtext:Hide()
   end

   -- provide information for the availability tooltip
   button.Recipe = recipe

end

------------------------------------------------------------------------
-- Base vendor/recipe selection code
------------------------------------------------------------------------

-- OnClick handler for the vendor/recipe buttons in the scroll frame.
function RecipeRadar_VendorButton_OnClick(self, button)

   local offset = FauxScrollFrame_GetOffset(RecipeRadarListScrollFrame)
   local index = self:GetID() + offset

   RecipeRadar_ServiceClickIndex(self, index, button)

   if (button == "LeftButton") then
      RecipeRadar_FrameUpdate()
   end

end

-- Selects the first visible recipe (not vendor).
function RecipeRadar_SelectFirstRecipe()

   RecipeRadar_ServiceClickIndex(-1)

end

-- Abstracts front for click handlers.
function RecipeRadar_ServiceClickIndex(self, index, button)

   if (RecipeRadar.db.profile.ActiveTab == 1) then
      RecipeRadar_RadarTab_ServiceClickIndex(self, index, button)
   else
      RecipeRadar_RecipesTab_ServiceClickIndex(self, index, button)
   end

end

------------------------------------------------------------------------
-- Recipe details and map frames
------------------------------------------------------------------------

function RecipeRadar_ShowRecipeDetails()

   RecipeDetailName:Show()
   RecipeDetailIcon:Show()
   RecipeDetailCostText:Show()

end

function RecipeRadar_HideRecipeDetails()

   RecipeDetailName:Hide()
   RecipeDetailIcon:Hide()
   RecipeCostIcon:Hide()
   RecipeDetailCostText:Hide()
   RecipeDetailSpecialText:Hide()
   RecipeDetailMoneyFrame:Hide()
   RecipeDetailNoteText:Hide()
   RecipeDetailRequirements:Hide()
   RecipeRadarRegionMap:Hide()

   -- reset the mapped indicator to red/off
   RecipeRadarMapVendorIndicator:SetVertexColor(1.0, 0, 0)

   -- hide all of our little mapping scrolls
   for i = 1, RecipeRadar_MaxVendorCoordinates do
      _G["RecipeRadarScroll" .. i]:Hide()
   end

end

-- When a recipe is actually selected, this function handles the
-- subsequent drawing in the lower details and map frames.
function RecipeRadar_SetSelection(vendor, recipe, region_name)

   local name, link, colorcode, _, _, _, texture, cached =
         RecipeRadar_GetSafeItemInfo(recipe.ID)

   RecipeDetailName:SetText(name)

   -- handle the little icon in the details frame
   RecipeDetailIcon:SetNormalTexture(texture)
   RecipeDetailIcon.NeedsUpdate = not cached
   RecipeDetailIcon.Name = name
   RecipeDetailIcon.Link = link
   RecipeDetailIcon.Hyperlink =
         RecipeRadar_GetHyperlinkByParts(name, link, colorcode)

   -- set the color/content of the money text
   if (recipe.Cost > 0) then  -- 0 denotes a "special" cost
      RecipeDetailSpecialText:Hide()
   else
      RecipeDetailSpecialText:SetText(L["Special"])
      RecipeDetailSpecialText:Show()
   end
   local cost, cost_item, need_link = RecipeRadar_GetSpecialRecipeCost(recipe)
   if (cost_item ~= nil and cost_item > 0) then
      -- some recipes cost a certain number of items
      if (need_link) then
         local cost_name, cost_link, cost_colorcode, _, _, _, cost_texture =
               RecipeRadar_GetSafeItemInfo(cost_item)
         RecipeCostIcon.Link = cost_link
         RecipeCostIcon.Hyperlink = RecipeRadar_GetHyperlinkByParts(
               cost_name, cost_link, cost_colorcode)
         RecipeCostIcon:SetNormalTexture(cost_texture)
      else
         local cost_name = select(1, GetCurrencyInfo(cost_item))
         local cost_texture = [[Interface\Icons\]]..select(3, GetCurrencyInfo(cost_item))
         RecipeCostIcon:SetNormalTexture(cost_texture)
         RecipeCostIcon.Link = nil
         RecipeCostIcon.Hyperlink = cost_name
      end
      RecipeDetailSpecialText:SetText(cost)
      RecipeDetailMoneyFrame:Hide()
      RecipeDetailSpecialText:Show()
      RecipeCostIcon:Show()
   else
      if (GetMoney() >= recipe.Cost) then
         SetMoneyFrameColor("RecipeDetailMoneyFrame", 1.0, 1.0, 1.0);
      else
         SetMoneyFrameColor("RecipeDetailMoneyFrame", 1.0, 0.1, 0.1);
      end
      MoneyFrame_Update("RecipeDetailMoneyFrame", recipe.Cost);
      RecipeDetailMoneyFrame:Show()
      RecipeDetailSpecialText:Hide()
      RecipeCostIcon:Hide()
   end

   -- some vendors have special requirements
   if (RecipeRadar_GetRecipeReqsString(recipe)) then
      RecipeDetailRequirements:SetText(RecipeRadar_GetRecipeReqsString(recipe))
      RecipeDetailNoteText:Show()
      RecipeDetailRequirements:Show()
   else
      RecipeDetailNoteText:Hide()
      RecipeDetailRequirements:Hide()
   end

   -- sets the color on the little radio button at the top
   if (vendor.IsMapped) then
      RecipeRadarMapVendorIndicator:SetVertexColor(0, 1.0, 0)
   else
      RecipeRadarMapVendorIndicator:SetVertexColor(1.0, 0, 0)
   end

   if (vendor.Coordinates) then

      if (not region_name) then
         region_name = RecipeRadar.db.profile.CurrentRegion
      end

      local region = RecipeRadar_RegionData[region_name]
      if (not region) then return end

      -- draw the map first
      RecipeRadarRegionMap:SetTexture(
            RECIPERADAR_IMAGE_ROOT .. "Regions\\" .. region.MapFile)
      RecipeRadarRegionMap:Show()

      -- then draw the little icon (or multiple icons for moble vendors)
      for i = 1, RecipeRadar_MaxVendorCoordinates do

         local scroll_icon = _G["RecipeRadarScroll" .. i]
         local coords = vendor.Coordinates[i]

         if (not coords) then
            scroll_icon:Hide()
         else
            local x = RecipeRadarMapFrame:GetWidth() * coords.x
            local y = RecipeRadarMapFrame:GetHeight() * -coords.y
            scroll_icon.Vendor = vendor
            scroll_icon:SetPoint("CENTER", "RecipeRadarMapFrame",
                  "TOPLEFT", x, y)
            scroll_icon:Show()
         end

      end

   else  -- no vendor coordinates means no map

      RecipeRadarRegionMap:Hide()
      for i = 1, RecipeRadar_MaxVendorCoordinates do
         _G["RecipeRadarScroll" .. i]:Hide()
      end

   end

end

function RecipeRadar_RecipeDetailIcon_ShowToolTip(self)

   GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
   GameTooltip:SetHyperlink(RecipeDetailIcon.Link)
   GameTooltip:Show()

   if RecipeDetailIcon.NeedsUpdate then return end

   if (RecipeBook_DoHookedFunction) then
      RecipeBook_DoHookedFunction(GameTooltip, RecipeDetailIcon.Link)
   end

   if (EnhTooltip and EnhTooltip.TooltipCall) then
      EnhTooltip.TooltipCall(GameTooltip, RecipeDetailIcon.Name,
            RecipeDetailIcon.Hyperlink, nil, 1)
   end

end

-------------------------------------------------------------------------
-- Frame Movement
-------------------------------------------------------------------------

function RecipeRadar_ToggleLock()

   if (RecipeRadar.db.profile.Locked) then
      RecipeRadar.db.profile.Locked = false
      RecipeRadar_UpdateLock()
   else
      RecipeRadar.db.profile.Locked = true
      RecipeRadar_UpdateLock()
   end

end

function RecipeRadar_UpdateLock()

   if (RecipeRadar.db.profile.Locked) then
      RecipeRadarLockNormal:SetTexture(
            RECIPERADAR_IMAGE_ROOT .. "Frame\\LockButton-Locked-Up")
      RecipeRadarLockPushed:SetTexture(
            RECIPERADAR_IMAGE_ROOT .. "Frame\\LockButton-Locked-Down")
   else
      RecipeRadarLockNormal:SetTexture(
            RECIPERADAR_IMAGE_ROOT .. "Frame\\LockButton-Unlocked-Up")
      RecipeRadarLockPushed:SetTexture(
            RECIPERADAR_IMAGE_ROOT .. "Frame\\LockButton-Unlocked-Down")
   end

end

function RecipeRadar_StartMoving()

   if (not RecipeRadar.db.profile.Locked) then
      RecipeRadarFrame:StartMoving()
   end

end
