TF_DUNGEONS = {
    { zone = TF_ZONE.ORGRIMMAR, x = 0.5275, y = 0.4899, name = "Ragefire Chasm", minLevel = 10, recommendedLevel = { 13, 18 } },
    { zone = TF_ZONE.THE_BARRENS, x = 0.4597, y = 0.3634, name = "Wailing Caverns", minLevel = 10, recommendedLevel = { 17, 24 }, entrance = { zone = TF_ZONE.KALIMDOR, x = 0.5240, y = 0.5520 } },
    { zone = TF_ZONE.WESTFALL, x = 0.4256, y = 0.7176, name = "The Deadmines", minLevel = 10, recommendedLevel = { 17, 27 }, entrance = { zone = TF_ZONE.EASTERN_KINGDOMS, x = 0.4068, y = 0.7958 } },
    { zone = TF_ZONE.SILVERPINE_FOREST, x = 0.448, y = 0.678, name = "Shadowfang Keep", minLevel = 14, recommendedLevel = { 22, 30 } },
    { zone = TF_ZONE.ASHENVALE, x = 0.1415, y = 0.14, name = "Blackfathom Deeps", minLevel = 15, recommendedLevel = { 24, 32 }, entrance = { zone = TF_ZONE.KALIMDOR, x = 0.4435, y = 0.3486 } },
    { zone = TF_ZONE.STORMWIND_CITY, x = 0.3970, y = 0.5405, name = "The Stockade", minLevel = 15, recommendedLevel = { 24, 32 } },
    { zone = TF_ZONE.DUN_MOROGH, x = 0.2434, y = 0.3978, name = "Gnomeregan", minLevel = 19, recommendedLevel = { 29, 38 }, entrance = { zone = TF_ZONE.EASTERN_KINGDOMS, x = 0.4280, y = 0.5382 } },
    { zone = TF_ZONE.THE_BARRENS, x = 0.4231, y = 0.899, name = "Razorfen Kraul", minLevel = 25, recommendedLevel = { 29, 38 } },
    { zone = TF_ZONE.TIRISFAL_GLADES, x = 0.8244, y = 0.3299, name = "Scarlet Monastery", group = {
        prefix = true,
        dungeons = {
            { zone = TF_ZONE.EASTERN_KINGDOMS, x = 0.4773, y = 0.1939, name = "Graveyard", minLevel = 21, recommendedLevel = { 26, 36 } },
            { zone = TF_ZONE.EASTERN_KINGDOMS, x = 0.4779, y = 0.1960, name = "Library", minLevel = 21, recommendedLevel = { 29, 39 } },
            { zone = TF_ZONE.EASTERN_KINGDOMS, x = 0.4783, y = 0.1953, name = "Armory", minLevel = 21, recommendedLevel = { 32, 42 }, attunement = { item = 7146 } },
            { zone = TF_ZONE.EASTERN_KINGDOMS, x = 0.4779, y = 0.1939, name = "Cathedral", minLevel = 21, recommendedLevel = { 35, 45 }, attunement = { item = 7146 } },
        },
    }, minLevel = 21, recommendedLevel = { 26, 45 } },
    { zone = TF_ZONE.THE_BARRENS, x = 0.4913, y = 0.9348, name = "Razorfen Downs", minLevel = 35, recommendedLevel = { 37, 46 } },
    { zone = TF_ZONE.BADLANDS, x = 0.4453, y = 0.1212, name = "Uldaman", minLevel = 30, recommendedLevel = { 41, 51 } },
    { zone = TF_ZONE.TANARIS, x = 0.3872, y = 0.2, name = "Zul'Farrak", minLevel = 39, recommendedLevel = { 42, 46 } },
    { zone = TF_ZONE.DESOLACE, x = 0.291, y = 0.625, name = "Maraudon", minLevel = 30, recommendedLevel = { 46, 55 } },
    { zone = TF_ZONE.SWAMP_OF_SORROWS, x = 0.695, y = 0.525, name = "The Temple of Atal'Hakkar", minLevel = 45, recommendedLevel = { 50, 56 } },
    -- TODO: add all Dire Maul wing entrances
    { zone = TF_ZONE.FERALAS, x = 0.589, y = 0.415, name = "Dire Maul", minLevel = 48, recommendedLevel = { 55, 60 } },
    { zone = TF_ZONE.WESTERN_PLAGUELANDS, x = 0.69, y = 0.729, name = "Scholomance", minLevel = 48, recommendedLevel = { 58, 60 } },
    { zone = TF_ZONE.EASTERN_PLAGUELANDS, x = 0.3085, y = 0.17, name = "Stratholme", minLevel = 48, recommendedLevel = { 58, 60 } },

    -- TODO find and get zone/cords of all blackrock mountain instances
    -- Blackrock Mountain instances
    { zone = TF_ZONE.BURNING_STEPPES, x = 0.2905, y = 0.3813, name = "Blackrock Mountain", group = {
        dungeons = {
            { name = "Blackrock Depths", minLevel = 48, recommendedLevel = { 52, 60 } },
            { name = "Lower Blackrock Spire", minLevel = 48, recommendedLevel = { 55, 60 } },
            { name = "Upper Blackrock Spire", minLevel = 48, recommendedLevel = { 55, 60 }, attunement = { item = 12344 } },
        },
        raids = {
            { name = "Molten Core", raidSize = 40 },
            { name = "Blackwing Lair", raidSize = 40 },
        }
    }, altEntrance = { zone = TF_ZONE.SEARING_GORGE, x = 0.3469, y = 0.8402 } }
}
