local L = LibStub("AceLocale-3.0"):GetLocale("TownsfolkTracker")

TOWNSFOLK = {
    [TF_AMMUNITION] = {
        title = L["Ammunition"],
        icon = [[Interface\MINIMAP\TRACKING\Ammunition]],
        points = TF_AMMUNITION_VENDORS,
    },
    [TF_AUCTIONEER] = {
        title = L["Auctioneer"],
        icon = [[Interface\MINIMAP\TRACKING\Auctioneer]],
        points = TF_AUCTIONEERS,
    },
    [TF_BANKER] = {
        title = L["Banker"],
        icon = [[Interface\MINIMAP\TRACKING\Banker]],
        points = TF_BANKERS,
    },
    [TF_BATTLEMASTER] = {
        title = L["Battlemaster"],
        icon = [[Interface\MINIMAP\TRACKING\BattleMaster]],
        allianceIcon = [[Interface\Addons\TownsfolkTracker\Icons\AllianceBattleMaster.tga]],
        hordeIcon = [[Interface\Addons\TownsfolkTracker\Icons\HordeBattleMaster.tga]],
        points = TF_BATTLEMASTERS,
    },
    [TF_CLASS_TRAINER] = {
        title = L["Class Trainer"],
        icon = [[Interface\MINIMAP\TRACKING\Class]],
        points = TF_CLASS_TRAINERS,
    },
    [TF_FLIGHTMASTER] = {
        title = L["Flight Master"],
        icon = [[Interface\MINIMAP\TRACKING\FlightMaster]],
        allianceIcon = [[Interface\Addons\TownsfolkTracker\Icons\AllianceFlightMaster.tga]],
        hordeIcon = [[Interface\Addons\TownsfolkTracker\Icons\HordeFlightMaster.tga]],
        neutralIcon = [[Interface\Addons\TownsfolkTracker\Icons\NeutralFlightMaster.tga]],
        iconSize = 1.2,
        points = TF_FLIGHTMASTERS,
    },
    [TF_FOOD_DRINK] = {
        title = L["Food & Drink"],
        icon = [[Interface\MINIMAP\TRACKING\Food]],
        points = TF_FOOD_DRINK_VENDORS,
    },
    [TF_INNKEEPER] = {
        title = L["Innkeeper"],
        icon = [[Interface\MINIMAP\TRACKING\Innkeeper]],
        points = TF_INNKEEPERS,
    },
    [TF_MAILBOX] = {
        title = L["Mailbox"],
        icon = [[Interface\MINIMAP\TRACKING\Mailbox]],
        points = TF_MAILBOXES,
    },
    [TF_POISONS] = {
        title = L["Poison Supplies"],
        icon = [[Interface\MINIMAP\TRACKING\Poisons]],
        points = TF_POISON_VENDORS,
    },
    [TF_PROFESSION_TRAINER] = {
        title = L["Profession Trainer"],
        icon = [[Interface\MINIMAP\TRACKING\Profession]],
        points = TF_PROFESSION_TRAINERS,
    },
    [TF_REAGENTS] = {
        title = L["Reagents"],
        icon = [[Interface\MINIMAP\TRACKING\Reagents]],
        points = TF_REAGENT_VENDORS,
    },
    [TF_REPAIR] = {
        title = L["Repair"],
        icon = [[Interface\MINIMAP\TRACKING\Repair]],
        points = TF_REPAIR_VENDORS,
    },
    [TF_STABLE_MASTER] = {
        title = L["Stable Master"],
        icon = [[Interface\MINIMAP\TRACKING\StableMaster]],
        points = TF_STABLE_MASTERS,
    },
    [TF_TRADE_GOODS] = {
        title = L["Trade Goods"],
        icon = [[Interface\Addons\TownsfolkTracker\Icons\TradeGoods.tga]],
        iconSize = 0.8,
        points = TF_TRADE_GOOD_VENDORS,
    },
    [TF_TRANSPORTATION] = {
        title = L["Transportation"],
        icon = [[Interface\Addons\TownsfolkTracker\Icons\Transportation.tga]],
        allianceIcon = [[Interface\Addons\TownsfolkTracker\Icons\AllianceTransportation.tga]],
        hordeIcon = [[Interface\Addons\TownsfolkTracker\Icons\HordeTransportation.tga]],
        iconSize = 1.25,
        points = TF_TRANSPORTATION_SPOTS,
    },
    [TF_DUNGEON] = {
        title = L["Dungeon"],
        icon = [[Interface\MINIMAP\Dungeon]],
        groupIcon = [[Interface\Addons\TownsfolkTracker\Icons\InstanceGroup.tga]],
        iconSize = 2.4,
        points = TF_DUNGEONS,
    },
    [TF_RAID] = {
        title = L["Raid"],
        icon = [[Interface\MINIMAP\Raid]],
        groupIcon = [[Interface\Addons\TownsfolkTracker\Icons\InstanceGroup.tga]],
        iconSize = 2.4,
        points = TF_RAIDS,
    },
};
