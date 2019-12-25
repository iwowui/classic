local L = LibStub("AceLocale-3.0"):GetLocale("TownsfolkTracker")

TF_DEFAULT_TRACKING = {
    [TF_AMMUNITION] = false,
    [TF_AUCTIONEER] = false,
    [TF_BANKER] = false,
    [TF_BATTLEMASTER] = false,
    [TF_CLASS_TRAINER] = true,
    [TF_FLIGHTMASTER] = true,
    [TF_FOOD_DRINK] = false,
    [TF_INNKEEPER] = false,
    [TF_MAILBOX] = true,
    [TF_POISONS] = false,
    [TF_PROFESSION.COOKING] = false,
    [TF_PROFESSION.FIRST_AID] = false,
    [TF_PROFESSION.FISHING] = false,
    [TF_PROFESSION.HERBALISM] = false,
    [TF_PROFESSION.SKINNING] = false,
    [TF_PROFESSION.MINING] = false,
    [TF_PROFESSION.TAILORING] = false,
    [TF_PROFESSION.LEATHERWORKING] = false,
    [TF_PROFESSION.BLACKSMITHING] = false,
    [TF_PROFESSION.ALCHEMY] = false,
    [TF_PROFESSION.ENGINEERING] = false,
    [TF_PROFESSION.ENCHANTING] = false,
    [TF_PROFESSION.WEAPON] = false,
    [TF_PROFESSION.RIDING] = false,
    [TF_REAGENTS] = false,
    [TF_REPAIR] = false,
    [TF_STABLE_MASTER] = TownsfolkUtil_GetPlayerClass() == TF_CLASS.HUNTER,
    [TF_TRADE_GOODS] = false,
    [TF_TRANSPORTATION] = true,
    [TF_DUNGEON] = true,
    [TF_RAID] = true,
}

-- SavedVariablesPerCharacter
tfTrackingList = TownsfolkUtil_CopyTable(TF_DEFAULT_TRACKING)

-- Addon Settings
TF_SETTINGS_MENU = {
    name = L["Townsfolk Tracker"],
    type = "group",
    args = {
        showMinimapButton = {
            type = "toggle",
            name = L["Show Minimap Button"],
            desc = L["Toggles the display of the minimap button."],
            width = "full",
            get = "IsShowMinimapButton",
            set = "ToggleShowMinimapButton",
            order = 1,
        },
        showAllClassTrainers = {
            type = "toggle",
            name = L["Show All Class Trainers"],
            desc = L["Toggles the display of all class trainers or only your for your class."],
            width = "full",
            get = "IsShowAllClassTrainers",
            set = "ToggleShowAllClassTrainers",
            order = 2,
        },
        worldDesc = {
            name = L["WorldMapDescription"],
            type = "description",
            order = 3,
        },
        useWorldMap = {
            type = "toggle",
            name = L["Track On Map"],
            desc = L["Toggles tracking on the map."],
            width = "full",
            get = "IsUseWorldMap",
            set = "ToggleUseWorldMap",
            order = 4,
        },
        showMapButton = {
            type = "toggle",
            name = L["Show Map Button"],
            desc = L["Toggles the display of the map button."],
            width = "full",
            get = "IsShowMapButton",
            set = "ToggleShowMapButton",
            disabled = function()
                return not TownsfolkTracker.db.profile.useWorldMap
            end,
            order = 5,
        },
        showInstancesOnWorld = {
            type = "toggle",
            name = L["Show Instances On World Map"],
            desc = L["Toggles the display of dungeons and raids on the fully zoomed out world map."],
            width = "full",
            get = "IsShowInstanceOnWorldMap",
            set = "ToggleShowInstanceOnWorldMap",
            disabled = function()
                return not TownsfolkTracker.db.profile.useWorldMap
            end,
            order = 6,
        },
        resetTracking = {
            type = "execute",
            name = L["Reset Tracking"],
            desc = L["Tracking menu bugged after an update? Click here to reset it to the default."],
            func = "ResetTracking",
            order = 7,
        }
    },
}

-- Settings Defaults
TF_SETTINGS_DEFAULTS = {
    profile =  {
        showMinimapButton = true,
        showMapButton = true,
        showAllClassTrainers = false,
        showInstanceOnWorldMap = true,
        minimapPos = 315,
        useWorldMap = true,
    },
}
