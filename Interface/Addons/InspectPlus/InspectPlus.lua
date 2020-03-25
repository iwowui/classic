-- based on Examiner

-- Variables
local ITEM_HEIGHT = 13;
local displayList = {};
local resists = {};
local entries = {};

local info = { Sets = {}, Items = {} };
local unitStats = {};

-- Stat Entry Order -- Item 0 is the header for the group
local StatEntryOrder = {
    { [0] = PLAYERSTAT_BASE_STATS, "STR", "AGI", "STA", "INT", "SPI", "ARMOR", "MASTERY" },
    { [0] = HEALTH.." & "..MANA, "HP", "MP", "HP5", "MP5" },
    { [0] = format(STAT_TEMPLATE, PLAYERSTAT_SPELL_COMBAT), "SPELLDMG", "HEAL", "ARCANEDMG", "FIREDMG", "NATUREDMG", "FROSTDMG", "SHADOWDMG", "HOLYDMG", "SPELLCRIT", "SPELLHIT", "SPELLHASTE", "SPELLPENETRATION" },
    { [0] = MELEE.." & "..RANGED, "AP", "RAP", "CRIT", "HIT", "HASTE", "ARMORPENETRATION", "EXPERTISE", "WPNDMG", "RANGEDDMG", "DAGGERSKILL", "ONEAXESKILL", "TWOAXESKILL", "ONESWORDSKILL", "TWOSWORDSKILL", "ONEMACESKILL", "TWOMACESKILL", "BOWSKILL", "GUNSSKILL", "CROSSBOWSKILL" },
    { [0] = PLAYERSTAT_DEFENSES, "DEFENSE", "DODGE", "PARRY", "BLOCK", "BLOCKVALUE", "RESILIENCE", "PVPPOWER" },
};

-- Scans the Gear
local function ScanGear(unit)
    wipe(unitStats);
    wipe(info.Sets);
    local numItems = (#LibGearExam.Slots - 2);
    local iLvlTotal = 0;
    LibGearExam:ScanUnitItems(unit, unitStats, info.Sets);
    for slotName, slotId in next, LibGearExam.SlotIDs do
        local link = (GetInventoryItemLink(unit, slotId) or ""):match(LibGearExam.ITEMLINK_PATTERN);
        info.Items[slotName] = LibGearExam:FixItemStringLevel(link, info.level);
		if (link) then
			if (slotName ~= "TabardSlot") and (slotName ~= "ShirtSlot") then
				local itemLevel = GetDetailedItemLevelInfo(link);
				if (itemLevel) then
					if (slotName == "MainHandSlot") and (not info.Items.SecondaryHandSlot) then
						itemLevel = (itemLevel * 2);
					end
					iLvlTotal = (iLvlTotal + itemLevel);
				end
			end
		end
    end
    info.iLvlAverage = "iLvl: "..string.format("%.2f", (iLvlTotal / numItems));
end

-- Show Resistances
local function UpdateResistances()
    for i = 1, 5 do
        local statToken = (LibGearExam.MagicSchools[i].."RESIST");
        if (unitStats[statToken]) or (isComparing and compareStats[statToken]) then
            local statText = LibGearExam:GetStatValue(statToken, unitStats, false, info.level, true, false);
            resists[i].value:SetText(statText);
        else
            resists[i].value:SetText("");
        end
    end
end

-- ScrollBar: Update Stat List
local function UpdateShownItems(self)
    FauxScrollFrame_Update(self, displayList.count, #entries, ITEM_HEIGHT);
    local index = self.offset;
    for i = 1, #entries do
        index = (index + 1);
        local entry = entries[i];
        if (index <= displayList.count) then
            if (displayList[index].value) then
                entry.left:SetTextColor(1, 1, 1);
                entry.left:SetFormattedText("  %s", displayList[index].name);
                entry.right:SetText(displayList[index].value);
            elseif (displayList[index].name) then
                entry.left:SetTextColor(0.5, 0.75, 1.0);
                entry.left:SetFormattedText("%s:", displayList[index].name);
                entry.right:SetText("");
            else
                entry.left:SetText("");
                entry.right:SetText("");
            end

            -- this is where the tip is drawn

            -- if (displayList[index].tip) then
                -- entry.tip.tip = displayList[index].tip;
                -- entry.tip:SetWidth(max(entry.right:GetWidth(), 20));
                -- entry.tip:Show();
            -- else
                -- entry.tip:Hide();
            -- end

            entry:Show();
        else
            entry:Hide();
        end
    end
    entries[1]:SetWidth(displayList.count > #entries and 200 or 216);
end

-- Adds a List Entry
local function AddListEntry(name, value, tip)
    displayList.count = (displayList.count + 1);
    local tbl = displayList[displayList.count] or {};
    tbl.name = name;
    tbl.value = value;
    tbl.tip = tip;
    displayList[displayList.count] = tbl;
end

-- Build Stat List
local function BuildStatList()
    displayList.count = 0;
    local needHeader;
    -- Build display table
    for _, statCat in ipairs(StatEntryOrder) do
        needHeader = 1;
        for _, statToken in ipairs(statCat) do
            if (unitStats[statToken]) then
                if (needHeader) then
                    AddListEntry(statCat[0]);
                    needHeader = nil;
                end
                local value, tip = LibGearExam:GetStatValue(statToken, unitStats, false, info.level, true, false);
                AddListEntry(LibGearExam:FormatStatName(statToken, false), value, tip);
            end
        end
    end
    -- Add Sets
    if (next(info.Sets)) then
        AddListEntry();
        AddListEntry(WARDROBE_SETS);
    end
    for setName, setEntry in next, info.Sets do
        AddListEntry(setName, setEntry.count.."/"..setEntry.max);
    end
    -- Add Padding + Update Resistances + Shown Items
    AddListEntry();
    UpdateResistances();
    UpdateShownItems(InspectPlusFrameScroll);
end

local StatEntry_OnEnter = function(self, motion)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
    GameTooltip:SetText(self.tip);
end

local function HideGameTooltip(self)
    GameTooltip:Hide();
end

local IPLocal_ShowRaceBGText = "Race background";
local IPLocal_AutoInspectText  = "Auto inspect";
if GetLocale() == "zhCN" then
    IPLocal_ShowRaceBGText = "种族背景";
    IPLocal_AutoInspectText  = "自动观察";
elseif GetLocale() == "zhTW" then
    IPLocal_ShowRaceBGText = "種族背景";
    IPLocal_AutoInspectText  = "自動觀察";
end

local function InspectPlus_Background()
	if InspectPlusFrame then
		if InspectPlusDB["bg"] == 1 then
		    InspectPlusFrame.bgTopLeft:SetAlpha(0.618);
		    InspectPlusFrame.bgTopRight:SetAlpha(0.618);
		    InspectPlusFrame.bgBottomLeft:SetAlpha(0.618);
		    InspectPlusFrame.bgBottomRight:SetAlpha(0.618);
		else
		    InspectPlusFrame.bgTopLeft:SetAlpha(0);
		    InspectPlusFrame.bgTopRight:SetAlpha(0);
		    InspectPlusFrame.bgBottomLeft:SetAlpha(0);
		    InspectPlusFrame.bgBottomRight:SetAlpha(0);
		end
	end
end

local InspectPlus_MenuList = {
	{ text = REFRESH, func = function() ScanGear(info.unit); BuildStatList(); CloseDropDownMenus(); end, },
	-- { text = KEY_NUMLOCK_MAC, func = function() displayList.count = 0, UpdateShownItems(InspectPlusFrameScroll); CloseDropDownMenus(); end, },
	{ text = IPLocal_ShowRaceBGText, hasArrow = true,
		menuList = {
			{ text = YES, func = function() InspectPlusDB["bg"] = 1; InspectPlus_Background(); CloseDropDownMenus(); end, checked = function() return InspectPlusDB["bg"] == 1; end },
			{ text = NO, func = function() InspectPlusDB["bg"] = 0; InspectPlus_Background(); CloseDropDownMenus(); end, checked = function() return InspectPlusDB["bg"] == 0; end },
		},
	},
	{ text = IPLocal_AutoInspectText, hasArrow = true,
		menuList = {
			{ text = YES, func = function() InspectPlusDB["auto"] = 1; CloseDropDownMenus(); end, checked = function() return InspectPlusDB["auto"] == 1; end },
			{ text = NO, func = function() InspectPlusDB["auto"] = 0; CloseDropDownMenus(); end, checked = function() return InspectPlusDB["auto"] == 0; end },
		},
	},
	{ text = CANCEL },
}

local InspectPlus_Menu = CreateFrame("Frame", nil, ip, "UIDropDownMenuTemplate");

local function InspectPlus_Setting()
	EasyMenu(InspectPlus_MenuList, InspectPlus_Menu, "cursor", 0 , 0, "MENU");
end

local function CreateInspectPlusFrame()
    if not InspectPlusFrame then
        InspectModelFrameRotateLeftButton:SetAlpha(0);
        InspectModelFrameRotateRightButton:SetAlpha(0);
        InspectMainHandSlot:SetFrameLevel(InspectMainHandSlot:GetFrameLevel()+1);
        InspectSecondaryHandSlot:SetFrameLevel(InspectSecondaryHandSlot:GetFrameLevel()+1);
        InspectRangedSlot:SetFrameLevel(InspectRangedSlot:GetFrameLevel()+1);

        local ip = CreateFrame("Frame", "InspectPlusFrame", InspectPaperDollFrame);
        ip:SetFrameLevel(CharacterModelFrame:GetFrameLevel()-1);
        ip:SetSize(231, 320);
        ip:ClearAllPoints();
        ip:SetPoint("TOP", InspectModelFrame, "TOP", 0, 2);

        ip.bgTopLeft = ip:CreateTexture(nil, "OVERLAY");
        ip.bgTopLeft:SetPoint("TOPLEFT", 0, 0);
        ip.bgTopRight = ip:CreateTexture(nil, "OVERLAY");
        ip.bgTopRight:SetPoint("LEFT", ip.bgTopLeft, "RIGHT");
        ip.bgBottomLeft = ip:CreateTexture(nil, "OVERLAY");
        ip.bgBottomLeft:SetPoint("TOP", ip.bgTopLeft, "BOTTOM");
        ip.bgBottomRight = ip:CreateTexture(nil, "OVERLAY");
        ip.bgBottomRight:SetPoint("LEFT", ip.bgBottomLeft, "RIGHT");

        ip.bgTopLeft:SetWidth(256 * 0.73);
        ip.bgTopLeft:SetHeight(256 * 0.965);
        ip.bgTopRight:SetWidth(64 * 0.73);
        ip.bgTopRight:SetHeight(256 * 0.965);
        ip.bgBottomLeft:SetWidth(256 * 0.73);
        ip.bgBottomLeft:SetHeight(128 * 0.965);
        ip.bgBottomRight:SetWidth(64 * 0.73);
        ip.bgBottomRight:SetHeight(128 * 0.965);

        ip.bgTopLeft:SetAlpha(0.618);
        ip.bgTopRight:SetAlpha(0.618);
        ip.bgBottomLeft:SetAlpha(0.618);
        ip.bgBottomRight:SetAlpha(0.618);

        ip.mask = CreateFrame("Frame", "InspectPlusFrameMask", ip);
        ip.mask:SetFrameLevel(CharacterModelFrame:GetFrameLevel()+1);
        ip.mask.bg = ip.mask:CreateTexture();
        ip.mask.bg:ClearAllPoints();
        ip.mask.bg:SetAllPoints(ip);
        ip.mask.bg:SetColorTexture(0, 0, 0, 0.272);

        -- Entries
        for i = 1, 20 do
            if not _G["InspectPlusFrameEntry"..i] then
                local t = CreateFrame("Frame", "InspectPlusFrameEntry"..i, InspectPlusFrame);
                t:SetFrameLevel(ip.mask:GetFrameLevel());
                t:SetSize(200, ITEM_HEIGHT);
                t.id = i;

                if (i == 1) then
                    t:SetPoint("TOPLEFT", 8, -42);
                else
                    t:SetPoint("TOPLEFT", entries[i - 1], "BOTTOMLEFT");
                    t:SetPoint("TOPRIGHT", entries[i - 1], "BOTTOMRIGHT");
                end

                t.left = t:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall");
                t.left:SetPoint("LEFT");
                t.left:SetJustifyH("LEFT");

                t.right = t:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall");
                t.right:SetPoint("RIGHT");
                t.right:SetPoint("LEFT", t.left, "RIGHT");
                t.right:SetTextColor(1, 1, 0);
                t.right:SetJustifyH("RIGHT");

                t.tip = CreateFrame("Frame", nil, t);
                t.tip:SetPoint("TOPRIGHT");
                t.tip:SetPoint("BOTTOMRIGHT");
                t.tip:SetScript("OnEnter", StatEntry_OnEnter);
                t.tip:SetScript("OnLeave", HideGameTooltip);
                t.tip:EnableMouse(true);

                entries[i] = t;
            end
        end

        -- Scroll
        ip.scroll = CreateFrame("ScrollFrame", "InspectPlusFrameScroll", ip, "FauxScrollFrameTemplate");
        ip.scroll:SetFrameLevel(ip.mask:GetFrameLevel()+1);
        ip.scroll:SetPoint("TOPLEFT", entries[1]);
        ip.scroll:SetPoint("BOTTOMRIGHT", entries[#entries], -3, -1);
        ip.scroll:SetScript("OnVerticalScroll", function(self, offset) FauxScrollFrame_OnVerticalScroll(self, offset, ITEM_HEIGHT, UpdateShownItems) end);

        -- Resistance
        local ResistsID = {6, 2, 3, 4, 5};
        local Resiststop = {0.2265625, 0, 0.11328125, 0.33984375, 0.453125};
        local Resistsbottom = {0.33984375, 0.11328125, 0.2265625, 0.453125, 0.56640625};
        for i = 1, 5 do
            if not _G["InspectPlusFrameResistance"..i] then
                local t = CreateFrame("Frame", "InspectPlusFrameResistance"..i, ip);
                t:SetFrameLevel(InspectModelFrameRotateLeftButton:GetFrameLevel()+1);
                t:SetSize(32, 29);

                t.texture = t:CreateTexture(nil, "BACKGROUND");
                t.texture:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ResistanceIcons");
                t.texture:SetTexCoord(0, 1, Resiststop[i], Resistsbottom[i]);
                t.texture:SetAllPoints();

                t.value = t:CreateFontString(nil, "ARTWORK", "GameFontNormal");
                t.value:SetFont(GameFontNormal:GetFont(), 12, "OUTLINE");
                t.value:SetPoint("BOTTOM", 1, 3);
                t.value:SetTextColor(1, 1, 0);

                t:EnableMouse(true);

                t:SetScript("OnEnter", function(self)
                    GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", 8, -8);
                    GameTooltip:SetText(_G["RESISTANCE"..ResistsID[i].."_NAME"]);
                end)
                t:SetScript("OnLeave", function()
                    GameTooltip:Hide();
                end)

                if (i == 1) then
                    t:SetPoint("TOPLEFT", 36, -5);
                else
                    t:SetPoint("LEFT", resists[i-1], "RIGHT");
                end

                resists[i] = t;
            end
        end

        -- iLvlAverage
        ip.iLvlAverage = ip:CreateFontString(nil, "ARTWORK", "GameFontNormal");
        ip.iLvlAverage:SetJustifyH("CENTER");
        ip.iLvlAverage:SetPoint("BOTTOM", ip, "TOP", 0, 6);

        -- Settings
		ip.setting = CreateFrame("Button", "InspectPlusFrameSetting", ip);
        ip.setting:SetFrameLevel(ip.mask:GetFrameLevel()+1);
		ip.setting:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton");
		ip.setting:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Round");
		ip.setting:SetWidth(16);
		ip.setting:SetHeight(16);
		ip.setting:ClearAllPoints();
		ip.setting:SetPoint("TOPRIGHT", 1, -1);
		ip.setting:SetAlpha(0.272);
        ip.setting:RegisterForClicks("LeftButtonUp", "RightButtonUp");
		ip.setting:SetScript("OnMouseUp", function(self, button)
            if button == "LeftButton" then
	            ScanGear(info.unit);
	            BuildStatList();
            elseif button == "RightButton" then
            	InspectPlus_Setting();
            end
		end);
        ip.setting:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR", 0, 0);
            GameTooltip:SetText(KEY_BUTTON1..": "..REFRESH.."\n"..KEY_BUTTON2..": "..SETTINGS);
        end)
        ip.setting:SetScript("OnLeave", function()
            GameTooltip:Hide();
        end)
    end
end

local function TryInspect()
    if InspectFrame and InspectFrame:IsShown() and CheckInteractDistance(info.unit, 3) and CanInspect(info.unit) then
        ScanGear(info.unit)
        BuildStatList();
        InspectPlusFrame.iLvlAverage:SetText(info.iLvlAverage);
        C_Timer.After(0.1, function()
            if InspectFrame and InspectFrame:IsShown() and CheckInteractDistance(info.unit, 3) and CanInspect(info.unit) then
                ScanGear(info.unit);
                BuildStatList();
                InspectPlusFrame.iLvlAverage:SetText(info.iLvlAverage);
            end
        end)
        C_Timer.After(0.2, function()
            if InspectFrame and InspectFrame:IsShown() and CheckInteractDistance(info.unit, 3) and CanInspect(info.unit) then
                ScanGear(info.unit);
                BuildStatList();
                InspectPlusFrame.iLvlAverage:SetText(info.iLvlAverage);
            end
        end)
        InspectPlus:SetScript("OnUpdate", nil);
    else
    	InspectPlus:SetScript("OnUpdate", function(self, elapsed)
            self.timer = (self.timer or 0) + elapsed;
            if self.timer >= 0.5 then
				if CheckInteractDistance(info.unit, 3) and CanInspect(info.unit) then
					ScanGear(info.unit);
					TryInspect();
				end
                self.timer = 0;
            end
        end)
    end
end

InspectPlus = CreateFrame("Frame");
InspectPlus:RegisterUnitEvent("UNIT_INVENTORY_CHANGED", "target")
InspectPlus:RegisterEvent('ADDON_LOADED')
InspectPlus:RegisterEvent("PLAYER_TARGET_CHANGED");
InspectPlus:SetScript("OnEvent", function(self, event, ...)
    if event == "INSPECT_READY" then
        TryInspect()
        InspectPlus:UnregisterEvent("INSPECT_READY")
    elseif event == "UNIT_INVENTORY_CHANGED" then
    	TryInspect()
    elseif event == "ADDON_LOADED" then
        local addon = ...
        if addon == 'Blizzard_InspectUI' then
            CreateInspectPlusFrame()
        elseif addon == 'InspectPlus' then
        	if not InspectPlusDB then InspectPlusDB = {} end
        	if not InspectPlusDB["bg"] then InspectPlusDB["bg"] = 1 end
        	if not InspectPlusDB["auto"] then InspectPlusDB["auto"] = 0 end
        end
    elseif event == "PLAYER_TARGET_CHANGED" then
        if InspectFrame and InspectFrame:IsShown() and CheckInteractDistance(info.unit, 3) and CanInspect(info.unit) then
        	if InspectPlusDB["auto"] == 1 then
            	InspectUnit(info.unit)
            end
        end
    end
end)

hooksecurefunc("InspectFrame_LoadUI", function()
    local unit = "target";
    if not UnitExists(unit) then
        unit = "player";
    end

    info.unit = unit;
    -- info.guid = UnitGUID(unit);
    -- info.isSelf = UnitIsUnit(unit, "player");
    -- Unit Type (1 = npc, 2 = opposing faction, 3 = same faction)
    -- info.unitType = (not UnitIsPlayer(unit) and 1) or (UnitCanCooperate("player",unit) and 3) or 2;
    -- info.canInspect = CanInspect(unit);
    -- info.name, info.realm = UnitName(unit);
    -- if (info.realm == "") then
    --     info.realm = nil;
    -- end
    -- info.pvpName = UnitPVPName(unit);
    info.level = (UnitLevel(unit) or 0);
    -- info.sex = (UnitSex(unit) or 1);
    -- info.class, info.classFixed, info.classID = UnitClass(unit);
    -- info.race, info.raceFixed = UnitRace(unit);
    -- if (not info.race) then
    --     info.race = UnitCreatureFamily(unit) or UnitCreatureType(unit);
    -- end
    -- info.guild, info.guildRank, info.guildIndex = GetGuildInfo(unit);
    info.iLvlAverage = 0;

    local _, race = UnitRace(unit);
    local texture = "Interface\\DressUpFrame\\DressUpBackground-"..race;
    InspectPlusFrame.bgTopLeft:SetTexture(texture.."1");
    InspectPlusFrame.bgTopRight:SetTexture(texture.."2");
    InspectPlusFrame.bgBottomLeft:SetTexture(texture.."3");
    InspectPlusFrame.bgBottomRight:SetTexture(texture.."4");

    -- InspectPlusFrame.unitStats = unitStats;
    -- InspectPlusFrame.info = info;

    if CheckInteractDistance(unit, 1) and CanInspect(unit) then
        NotifyInspect(unit);
        InspectPlus:RegisterEvent("INSPECT_READY")
    end
end)
