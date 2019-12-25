TF_RAIDS = {
    -- TODO: Update instance locations, esp blackrock mountain entrances
    { zone = TF_ZONE.STRANGLETHORN_VALE, x = 0.5396, y = 0.1757, name = "Zul'Gurub", raidSize = 20 },
    { zone = TF_ZONE.SILITHUS, x = 0.362, y = 0.842, name = "Ruins of Ahn'Qiraj", raidSize = 20 },
    { zone = TF_ZONE.DUSTWALLOW_MARSH, x = 0.529, y = 0.777, name = "Onyxia's Lair", raidSize = 40 },
--    { zone = TF_ZONE.BURNING_STEPPES, x = 0.29, y = 0.382, name = "Molten Core", raidSize = 40 },
--    { zone = TF_ZONE.BURNING_STEPPES, x = 0.30, y = 0.382, name = "Blackwing Lair", raidSize = 40 },
    { zone = TF_ZONE.SILITHUS, x = 0.235, y = 0.862, name = "Temple of Ahn'Qiraj", raidSize = 40 },
    { zone = TF_ZONE.EASTERN_PLAGUELANDS, x = 0.39, y = 0.25, name = "Naxxramas", raidSize = 40 },

    -- Blackrock Mountain instances
    { zone = TF_ZONE.BURNING_STEPPES, x = 0.2905, y = 0.3813, name = "Blackrock Mountain", group = {
        dungeons = {
            { name = "Blackrock Depths", recommendedLevel = { 52, 60 } },
            { name = "Lower Blackrock Spire", recommendedLevel = { 55, 60 } },
            { name = "Upper Blackrock Spire", recommendedLevel = { 55, 60 } },
        },
        raids = {
            { name = "Molten Core", raidSize = 40 },
            { name = "Blackwing Lair", raidSize = 40 },
        }
    }, altEntrance = { zone = TF_ZONE.SEARING_GORGE, x = 0.3469, y = 0.8402 } }
}
