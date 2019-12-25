
-- Globals.lua: global/saved variables and some related initialization code
-- $Id: Globals.lua 1099 2009-08-10 04:51:22Z jnmiller $
local L = LibStub("AceLocale-3.0"):GetLocale("RecipeRadarClassic")
local BFAC = LibStub("LibBabble-Faction-3.0"):GetLookupTable()

RECIPERADAR_VERSION = "1.0.0.23"

RECIPERADAR_VENDORS_DISPLAYED = 8
RECIPERADAR_VENDOR_HEIGHT = 16
RECIPERADAR_VENDOR_OFFSET = 20
RECIPERADAR_IMAGE_ROOT = "Interface\\Addons\\RecipeRadarClassic\\Images\\"

-- this should be <= the number of RecipeRadar*Icons
RECIPERADAR_MAPPED_VENDORS_MAX = 20

BINDING_HEADER_RECIPERADAR_HEADER = L["Recipe Radar Bindings"]
BINDING_NAME_RECIPERADAR_TOGGLE = L["Toggle Recipe Radar"]

RecipeRadar_Options = { }

RecipeRadar_Filters = {
   Teams = { },
   Professions = { },
   RealmAvails = { },
   PersonAvails = { },
}

RecipeRadar_Colors = {

   MainFont           = { r = 1.0, g = 0.75, b = 0.0 },
   Alliance           = { r = 0.5, g = 0.625, b = 1.0 },
   Horde              = { r = 1.0, g = 0.125, b = 0.25 },
   Neutral            = { r = 1.0, g = 0.82, b = 0.0 },
   LightGray          = { r = 0.9, g = 0.9, b = 0.9 },
   UncachedRecipe     = { r = 0.75, g = 0.75, b = 0.75 },
   DisabledGray       = { r = 0.5, g = 0.5, b = 0.5 },

   TooltipHeading     = { r = 0.9, g = 0.9, b = 0.9 },
   TooltipWarning     = { r = 1.0, g = 0.3, b = 0.3 },
   
   -- realm-wide availability tooltip/indicator colors
   LearnableByPlayer  = { r = 0.0, g = 1.0, b = 0.0 },
   LearnableByAlt     = { r = 0.0, g = 0.8, b = 0.0 },
   ProspectForPlayer  = { r = 1.0, g = 0.2, b = 0.2 },
   ProspectForAlt     = { r = 0.8, g = 0.2, b = 0.2 },
   KnownByPlayer      = { r = 0.7, g = 0.7, b = 0.7 },
   KnownByAlt         = { r = 0.5, g = 0.5, b = 0.5 },
   NotApplicable      = { r = 0.5, g = 0.5, b = 0.5 },
   
   -- person-wide availability tooltip/indicator colors
   Available          = GREEN_FONT_COLOR,
   Unavailable        = RED_FONT_COLOR,
   AlreadyKnown       = GRAY_FONT_COLOR,
   
   -- amount that colors will be phased to highlight the text
   Highlight          = 0.2,
   
}

RecipeRadar_Continents = {

   [0] = L["Instances"],
   [1414] = L["Kalimdor"],
   [1415] = L["Eastern Kingdoms"],

}

RecipeRadar_Teams = {

   ["Alliance"] = {
      Name = FACTION_ALLIANCE,
      Color = RecipeRadar_Colors.Alliance,
   },
   ["Horde"] = {
      Name = FACTION_HORDE,
      Color = RecipeRadar_Colors.Horde,
   },
   ["Neutral"] = {
      Name = L["Neutral"],
      Color = RecipeRadar_Colors.Neutral,
   },

}

RecipeRadar_Professions = {

   [L["Alchemy"]] = {
      Name = L["Alchemy"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "Alchemy",
   },
   [L["Blacksmithing"]] = {
      Name = L["Blacksmithing"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "Blacksmithing",
   },
   [L["Cooking"]] = {
      Name = L["Cooking"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "Cooking",
   },
   [L["Enchanting"]] = {
      Name = L["Enchanting"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "Enchanting",
   },
   [L["Engineering"]] = {
      Name = L["Engineering"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "Engineering",
   },
   [L["First Aid"]] = {
      Name = L["First Aid"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "First-Aid",
   },
   [L["Fishing"]] = {
      Name = L["Fishing"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "Fishing",
   },
   [L["Leatherworking"]] = {
      Name = L["Leatherworking"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "Leatherworking",
   },
   [L["Tailoring"]] = {
      Name = L["Tailoring"],
      Icon = RECIPERADAR_IMAGE_ROOT .. "Icons\\" .. "Tailoring",
   },

}

RecipeRadar_Specialties = {

   [L["Gnomish Engineer"]] = L["Engineering"],
   [L["Goblin Engineer"]] = L["Engineering"],
   [L["Tribal Leatherworking"]] = L["Leatherworking"],
   [L["Elemental Leatherworking"]] = L["Leatherworking"],
   [L["Dragonscale Leatherworking"]] = L["Leatherworking"],
   [L["Armorsmith"]] = L["Blacksmithing"],
   [L["Weaponsmith"]] = L["Blacksmithing"],
   [L["Master Axesmith"]] = L["Blacksmithing"],
   [L["Master Swordsmith"]] = L["Blacksmithing"],
   [L["Master Hammersmith"]] = L["Blacksmithing"],

}

RecipeRadar_Factions = {

   BFAC["Argent Dawn"],
   BFAC["Cenarion Circle"],
   BFAC["Thorium Brotherhood"],
   BFAC["Timbermaw Hold"],
   BFAC["Zandalar Tribe"],

}

RecipeRadar_Availabilities = {

   ["LearnableByPlayer"] = {
      Text = L["Available Now (Player)"],
      Tooltip = { Group = 1, Heading = L["Available For:"] },
      DropDown = { POrder = 1, ROrder = 1 },
      Color = RecipeRadar_Colors.LearnableByPlayer,
      TestFunction = RecipeRadar_Availability_IsLearnableByPlayer,
   },
   ["LearnableByAlt"] = {
      Text = L["Available Now (Alts)"],
      Tooltip = { Group = 1, Heading = L["Available For:"] },
      DropDown = { POrder = nil, ROrder = 2 },
      Color = RecipeRadar_Colors.LearnableByAlt,
      TestFunction = RecipeRadar_Availability_IsLearnableByAlt,
   },
   ["ProspectForPlayer"] = {
      Text = L["Future Prospect (Player)"],
      Tooltip = { Group = 2, Heading = L["Future Prospect For:"] },
      DropDown = { POrder = 2, ROrder = 3 },
      Color = RecipeRadar_Colors.ProspectForPlayer,
      TestFunction = RecipeRadar_Availability_IsProspectForPlayer,
   },
   ["ProspectForAlt"] = {
      Text = L["Future Prospect (Alts)"],
      Tooltip = { Group = 2, Heading = L["Future Prospect For:"] },
      DropDown = { POrder = nil, ROrder = 4 },
      Color = RecipeRadar_Colors.ProspectForAlt,
      TestFunction = RecipeRadar_Availability_IsProspectForAlt,
   },
   ["KnownByPlayer"] = {
      Text = L["Already Known (Player)"],
      Tooltip = { Group = 3, Heading = L["Already Known By:"] },
      DropDown = { POrder = 3, ROrder = 5 },
      Color = RecipeRadar_Colors.KnownByPlayer,
      TestFunction = RecipeRadar_Availability_IsKnownByPlayer,
   },
   ["KnownByAlt"] = {
      Text = L["Already Known (Alts)"],
      Tooltip = { Group = 3, Heading = L["Already Known By:"] },
      DropDown = { POrder = nil, ROrder = 6 },
      Color = RecipeRadar_Colors.KnownByAlt,
      TestFunction = RecipeRadar_Availability_IsKnownByAlt,
   },
   ["NotApplicable"] = {
      Text = L["Inapplicable"],
      Tooltip = { Group = 0 },  -- do not show in tooltip
      DropDown = { POrder = 4, ROrder = 7 },
      Color = RecipeRadar_Colors.NotApplicable,
      TestFunction = nil,  -- don't need to test the default case
   },

}


-----------------------------------------------------------------------------
-- Global initialization functions
-----------------------------------------------------------------------------

-- This function "upgrades" the user's saved variables, if necessary.
function RecipeRadar_Globals_Init(force)

   RecipeRadar_Options_Init()

   if (not force and RecipeRadar_Options.Version >= RECIPERADAR_VERSION) then
      return  -- running version is current
   end

   -- v1.5 filter upgrades
   if (RecipeRadar_IsVersionLessThan(RecipeRadar_Options.Version, "1.5")) then
      if (RecipeRadar_Filters.PersonAvails[AVAILABLE]) then
         RecipeRadar_Filters.PersonAvails["LearnableByPlayer"] = true
      end
      if (RecipeRadar_Filters.PersonAvails[UNAVAILABLE]) then
         RecipeRadar_Filters.PersonAvails["ProspectForPlayer"] = true
      end
      if (RecipeRadar_Filters.PersonAvails[USED]) then
         RecipeRadar_Filters.PersonAvails["KnownByPlayer"] = true
         RecipeRadar_Filters.PersonAvails["NotApplicable"] = true
      end
      RecipeRadar_Filters.PersonAvails[AVAILABLE] = nil
      RecipeRadar_Filters.PersonAvails[UNAVAILABLE] = nil
      RecipeRadar_Filters.PersonAvails[USED] = nil
   end
   
   -- v1.9 skill DB format change
   if (RecipeRadar_IsVersionLessThan(RecipeRadar_Options.Version, "1.9") and
         RecipeRadar_SkillDB) then
      for realm, realm_info in pairs(RecipeRadar_SkillDB) do
         if (type(realm_info) == "string") then
            realm_info = nil
         else
            realm_info.Team = nil
            for player, player_info in pairs(realm_info) do
               local temp = { }
               for prof, prof_info in pairs(player_info) do
                  if (RecipeRadar_IsProfession(prof)) then
                     temp[prof] = prof_info
                     player_info[prof] = nil
                  end
               end
               if (not player_info.Professions) then
                  player_info.Professions = { }
               end
               for k, v in pairs(temp) do
                  player_info.Professions[k] = v
               end
            end
         end
      end
   end

   -- v1.12 skill DB version removal (sigh)
   if (RecipeRadar_SkillDB and RecipeRadar_SkillDB.Version) then
      RecipeRadar_SkillDB.Version = nil
   end

   -- v1.15 (now v1.17 thanks to my dumbness) skill DB cleanup
   if (RecipeRadar_IsVersionLessThan(RecipeRadar_Options.Version, "1.17") and
         RecipeRadar_SkillDB) then
      for realm, realm_info in pairs(RecipeRadar_SkillDB) do
         for player, player_info in pairs(realm_info) do
            if (player_info.Professions) then
               for prof, _ in pairs(player_info.Professions) do
                  if (not RecipeRadar_IsProfession(prof)) then
                     player_info.Professions[prof] = nil
                  end
               end
            end
         end
      end
   end

   -- upgrade is complete
   RecipeRadar.db.profile.Version = RECIPERADAR_VERSION
 --  BFAC["Guild"],

end

-- Initializes the Options table with some defaults.
function RecipeRadar_Options_Init()

   RecipeRadar_Options.Version = RECIPERADAR_VERSION

   if (RecipeRadar.db.profile.Version == nil) then
      -- setting this to the lowest version forces an
      -- upgrade for all characters on this account
      RecipeRadar.db.profile.Version = "1.0"
   end

   if (RecipeRadar.db.profile.MinimapButtonPosition == nil) then
      RecipeRadar.db.profile.MinimapButtonPosition = 256
   end

   if (RecipeRadar.db.profile.ShowMinimapButton == nil) then
      RecipeRadar.db.profile.ShowMinimapButton = true
      RecipeRadarMinimapButtonFrame:Show()
   end

   if (not RecipeRadar_IsProfession(
         RecipeRadar.db.profile.CurrentProfession)) then
      RecipeRadar.db.profile.CurrentProfession = L["Cooking"]
   end

   if (RecipeRadar.db.profile.RealmAvailability == nil) then
      RecipeRadar.db.profile.RealmAvailability = true
      RecipeRadar_RealmAvailDropDown:Show()
   end

   if (RecipeRadar.db.profile.Locked == nil) then
      RecipeRadar.db.profile.Locked = false
   end

   if (RecipeRadar.db.profile.AutoSelectRegion == nil) then
      RecipeRadar.db.profile.AutoSelectRegion = true
   end

   if (RecipeRadar.db.profile.AutoMapVendors == nil) then
      RecipeRadar.db.profile.AutoMapVendors = false
   end

end
