local _, addonTable = ...

local function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

local UnitPopupButtons = deepcopy(_G.UnitPopupButtons)
local UnitPopupMenus = deepcopy(_G.UnitPopupMenus)
local UnitPopupShown = { {}, {}, {}, };

local UnitPopup_AddDropDownButton

local function UnitPopup_CheckAddSubsection(dropdownMenu, info, menuLevel, currentButton, previousButton, previousIndex, previousValue)
    if previousButton and previousButton.isSubsection then
        if not currentButton.isSubsection then
            if previousButton.isSubsectionSeparator then
                L_UIDropDownMenu_AddSeparator(menuLevel);
            end

            if previousButton.isSubsectionTitle and info then
                UnitPopup_AddDropDownButton(info, dropdownMenu, previousButton, previousValue, menuLevel);
            end
        else
            UnitPopupShown[menuLevel][previousIndex] = 0;
        end
    end
end

local g_mostRecentPopupMenu;

local function UnitPopup_HasVisibleMenu()
    return g_mostRecentPopupMenu == L_UIDROPDOWNMENU_OPEN_MENU;
end

local function UnitPopup_GetBNetIDAccount(dropdownMenu)
    if dropdownMenu.bnetIDAccount then
        return dropdownMenu.bnetIDAccount;
    elseif dropdownMenu.guid and C_AccountInfo.IsGUIDBattleNetAccountType(dropdownMenu.guid) then
        return C_AccountInfo.GetIDFromBattleNetAccountGUID(dropdownMenu.guid);
    end
end

local function UnitPopup_GetGUID(menu)
    if menu.guid then
        return menu.guid;
    elseif menu.unit then
        return UnitGUID(menu.unit);
    elseif type(menu.userData) == "table" and menu.userData.guid then
        return menu.userData.guid;
    elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and menu.accountInfo and menu.accountInfo.gameAccountInfo.playerGuid then
        return menu.accountInfo.gameAccountInfo.playerGuid;
    end
end

local function UnitPopup_GetBNetAccountInfo(menu)
    local bnetIDAccount = UnitPopup_GetBNetIDAccount(menu)
    if bnetIDAccount then
        return C_BattleNet.GetAccountInfoByID(bnetIDAccount);
    else
        local guid = UnitPopup_GetGUID(menu);
        if guid then
            return C_BattleNet.GetAccountInfoByGUID(guid);
        end
    end
end

local function UnitPopup_GetIsMobile(menu)
    if menu.isMobile ~= nil then
        return menu.isMobile;
    elseif menu.accountInfo and menu.accountInfo.gameAccountInfo then
        return menu.accountInfo.gameAccountInfo.isWowMobile;
    end
end

local function GetDropDownButtonText(button, dropdownMenu)
    if (type(button.text) == "function") then
        return button.text(dropdownMenu);
    end

    return button.text or "";
end

local UnitPopup_HideButtons
local UnitPopup_AddDropDownTitle
local UnitPopup_OnClick

function addonTable.UnitPopup_ShowMenu (dropdownMenu, which, unit, name, userData)
    g_mostRecentPopupMenu = nil;

    local server = nil;
    -- Init variables
    dropdownMenu.which = which;
    dropdownMenu.unit = unit;
    if ( unit ) then
        name, server = UnitName(unit);
    elseif ( name ) then
        local n, s = strmatch(name, "^([^-]+)-(.*)");
        if ( n ) then
            name = n;
            server = s;
        end
    end
    dropdownMenu.name = name;
    dropdownMenu.userData = userData;
    dropdownMenu.server = server;

    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        dropdownMenu.accountInfo = UnitPopup_GetBNetAccountInfo(dropdownMenu);
        dropdownMenu.isMobile = UnitPopup_GetIsMobile(dropdownMenu);
    end

    -- Determine which buttons should be shown or hidden
    UnitPopup_HideButtons();

    -- If only one menu item (the cancel button) then don't show the menu
    local count = 0;
    for index, value in ipairs(UnitPopupMenus[L_UIDROPDOWNMENU_MENU_VALUE] or UnitPopupMenus[which]) do
        if( UnitPopupShown[L_UIDROPDOWNMENU_MENU_LEVEL][index] == 1 and not UnitPopupButtons[value].isCloseCommand ) then
            count = count + 1;
        end
    end
    if ( count < 1 ) then
        return;
    end

    -- Note the fact that a popup is being shown. If this menu is hidden through other means, it's fine, the unitpopup system
    -- checks to see if this is visible.
    g_mostRecentPopupMenu = dropdownMenu;

    local inParty
    local inInstance, instanceType
    local isLeader
    local showLootOptions
    local lootOption

    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        UnitPopupButtons["GARRISON_VISIT"].text = (C_Garrison.IsUsingPartyGarrison() and GARRISON_RETURN) or GARRISON_VISIT_LEADER;
    else
        -- Determine which loot method and which loot threshold are selected and set the corresponding buttons to the same text
        dropdownMenu.selectedLootMethod = UnitLootMethod[GetLootMethod()].text;
        UnitPopupButtons["LOOT_METHOD"].text = dropdownMenu.selectedLootMethod;
        UnitPopupButtons["LOOT_METHOD"].tooltipText = UnitLootMethod[GetLootMethod()].tooltipText;
        dropdownMenu.selectedLootThreshold = _G["ITEM_QUALITY"..GetLootThreshold().."_DESC"];
        UnitPopupButtons["LOOT_THRESHOLD"].text = dropdownMenu.selectedLootThreshold;

        -- This allows player to view loot settings if he's not the leader
        inParty = IsInGroup();
        inInstance, instanceType = IsInInstance();
        isLeader = UnitIsGroupLeader("player");
        showLootOptions = inParty and isLeader;
        lootOption = showLootOptions and 1 or nil;

        UnitPopupButtons["LOOT_METHOD"].nested = lootOption;
        UnitPopupButtons["LOOT_THRESHOLD"].nested = lootOption;

        -- Set the selected opt out of loot option to the opt out of loot button text
        if ( GetOptOutOfLoot() ) then
            UnitPopupButtons["OPT_OUT_LOOT_TITLE"].text = format(OPT_OUT_LOOT_TITLE, UnitPopupButtons["OPT_OUT_LOOT_ENABLE"].text);
        else
            UnitPopupButtons["OPT_OUT_LOOT_TITLE"].text = format(OPT_OUT_LOOT_TITLE, UnitPopupButtons["OPT_OUT_LOOT_DISABLE"].text);
        end
    end

    -- Disable dungeon and raid difficulty in instances except for for leaders in dynamic instances
    local toggleDifficultyID;
    local _, instanceType, instanceDifficultyID, _, _, _, isDynamicInstance = GetInstanceInfo();
    if ( isDynamicInstance and CanChangePlayerDifficulty() ) then
        _, _, _, _, _, _, toggleDifficultyID = GetDifficultyInfo(instanceDifficultyID);
    end

    local inPublicParty = IsInGroup(LE_PARTY_CATEGORY_INSTANCE);

    if ( not inInstance ) then
        UnitPopupButtons["DUNGEON_DIFFICULTY"].nested = 1;
        if( inPublicParty ) then
            UnitPopupButtons["RAID_DIFFICULTY"].nested = nil;
        else
            UnitPopupButtons["RAID_DIFFICULTY"].nested = 1;
        end
    else
        if (instanceType == "raid") then
            UnitPopupButtons["RAID_DIFFICULTY"].nested = 1;
            UnitPopupButtons["DUNGEON_DIFFICULTY"].nested = nil;
        else
            UnitPopupButtons["DUNGEON_DIFFICULTY"].nested = 1;
            UnitPopupButtons["RAID_DIFFICULTY"].nested = nil;
        end
    end

    -- setup default Loot Specialization
    local specPopupButton = UnitPopupButtons["LOOT_SPECIALIZATION_DEFAULT"];
    local specIndex
    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        specIndex = GetSpecialization();
    end
    local sex = UnitSex("player");
    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        if ( specIndex) then
            local specID, specName = GetSpecializationInfo(specIndex, nil, nil, nil, sex);
            if ( specName ) then
                specPopupButton.text = format(LOOT_SPECIALIZATION_DEFAULT, specName);
            end
        end
        -- setup specialization coices for Loot Specialization
        for index = 1, 4 do
            specPopupButton = UnitPopupButtons["LOOT_SPECIALIZATION_SPEC"..index];
            if ( specPopupButton ) then
                local id, name = GetSpecializationInfo(index, nil, nil, nil, sex);
                if ( id ) then
                    specPopupButton.specializationID = id;
                    specPopupButton.text = name;
                else
                    specPopupButton.specializationID = -1;
                end
            end
        end
    end

    --Add the cooldown to the RAF Summon
    do
        local start, duration = GetSummonFriendCooldown();
        local remaining = start + duration - GetTime();
        if ( remaining > 0 ) then
            UnitPopupButtons["RAF_SUMMON"].text = format(RAF_SUMMON_WITH_COOLDOWN, SecondsToTime(remaining, true));
        else
            UnitPopupButtons["RAF_SUMMON"].text = RAF_SUMMON;
        end
    end

    -- If level 2 dropdown
    local info;
    local color;
    local icon;
    if ( L_UIDROPDOWNMENU_MENU_LEVEL == 2 ) then
        dropdownMenu.which = L_UIDROPDOWNMENU_MENU_VALUE;
        -- Set which menu is being opened
        L_OPEN_DROPDOWNMENUS[L_UIDROPDOWNMENU_MENU_LEVEL] = {which = dropdownMenu.which, unit = dropdownMenu.unit};
        local previousButton, previousIndex, previousValue;
        for index, value in ipairs(UnitPopupMenus[L_UIDROPDOWNMENU_MENU_VALUE]) do
            if( UnitPopupShown[L_UIDROPDOWNMENU_MENU_LEVEL][index] == 1 ) then
                local cntButton = UnitPopupButtons[value];

                UnitPopup_CheckAddSubsection(dropdownMenu, info, L_UIDROPDOWNMENU_MENU_LEVEL, cntButton, previousButton, previousIndex, previousValue);

                -- Note, for the subsections, this info is 'created' later so that when the subsection is added retroactively, it doesn't overwrite or lose fields
                info = L_UIDropDownMenu_CreateInfo();
                info.text = UnitPopupButtons[value].text;
                info.owner = L_UIDROPDOWNMENU_MENU_VALUE;
                -- Set the text color
                color = UnitPopupButtons[value].color;
                if ( color ) then
                    info.colorCode = string.format("|cFF%02x%02x%02x", color.r*255, color.g*255, color.b*255);
                else
                    info.colorCode = nil;
                end
                -- Icons
                info.icon = UnitPopupButtons[value].icon;
                info.tCoordLeft = UnitPopupButtons[value].tCoordLeft;
                info.tCoordRight = UnitPopupButtons[value].tCoordRight;
                info.tCoordTop = UnitPopupButtons[value].tCoordTop;
                info.tCoordBottom = UnitPopupButtons[value].tCoordBottom;
                -- Checked conditions
                info.checked = nil;
                if ( info.text == dropdownMenu.selectedLootMethod  ) then
                    info.checked = true;
                elseif ( info.text == dropdownMenu.selectedLootThreshold ) then
                    info.checked = true;
                elseif ( strsub(value, 1, 12) == "RAID_TARGET_" ) then
                    local buttonRaidTargetIndex = strsub(value, 13);
                    if ( buttonRaidTargetIndex == "NONE" ) then
                        buttonRaidTargetIndex = 0;
                    else
                        buttonRaidTargetIndex = tonumber(buttonRaidTargetIndex);
                    end

                    local activeRaidTargetIndex = GetRaidTargetIndex(unit);
                    if ( activeRaidTargetIndex == buttonRaidTargetIndex ) then
                        info.checked = true;
                    end
                elseif ( strsub(value, 1, 18) == "DUNGEON_DIFFICULTY" and (strlen(value) > 18)) then
                    local dungeonDifficultyID = GetDungeonDifficultyID();
                    if ( dungeonDifficultyID == UnitPopupButtons[value].difficultyID ) then
                        info.checked = true;
                    end
                    if ( ( inParty and not isLeader ) or inInstance ) then
                        info.disabled = true;
                    end
                elseif (strsub(value, 1, 15) == "RAID_DIFFICULTY" and (strlen(value) > 15) ) then
                    if ( isDynamicInstance ) then
                        -- Yay, legacy hacks!
                        if ( IsLegacyDifficulty(instanceDifficultyID) ) then
                            -- 3 and 4 are normal, 5 and 6 are heroic
                            if ((instanceDifficultyID == DIFFICULTY_RAID10_NORMAL or instanceDifficultyID == DIFFICULTY_RAID25_NORMAL) and UnitPopupButtons[value].difficultyID == DIFFICULTY_PRIMARYRAID_NORMAL) then
                                info.checked = true;
                            elseif ((instanceDifficultyID == DIFFICULTY_RAID10_HEROIC or instanceDifficultyID == DIFFICULTY_RAID25_HEROIC) and UnitPopupButtons[value].difficultyID == DIFFICULTY_PRIMARYRAID_HEROIC) then
                                info.checked = true;
                            end
                        elseif ( instanceDifficultyID == UnitPopupButtons[value].difficultyID ) then
                            info.checked = true;
                        end
                    else
                        local raidDifficultyID = GetRaidDifficultyID();
                        if ( raidDifficultyID == UnitPopupButtons[value].difficultyID ) then
                            info.checked = true;
                        end
                    end

                    if ( ( inParty and not isLeader ) or inPublicParty or inInstance ) then
                        info.disabled = true;
                    end
                    if ( toggleDifficultyID and CheckToggleDifficulty(toggleDifficultyID, UnitPopupButtons[value].difficultyID) ) then
                        info.disabled = nil;
                    end
                elseif (strsub(value, 1, 22) == "LEGACY_RAID_DIFFICULTY" and (strlen(value) > 15) ) then
                    if ( isDynamicInstance ) then
                        if ( NormalizeLegacyDifficultyID(instanceDifficultyID) == UnitPopupButtons[value].difficultyID ) then
                            info.checked = true;
                        end
                    else
                        local raidDifficultyID = GetLegacyRaidDifficultyID();
                        if ( NormalizeLegacyDifficultyID(raidDifficultyID) == UnitPopupButtons[value].difficultyID ) then
                            info.checked = true;
                        end
                    end
                    if ( ( inParty and not isLeader ) or inPublicParty or inInstance or GetRaidDifficultyID() == DIFFICULTY_PRIMARYRAID_MYTHIC ) then
                        info.disabled = true;
                    end
                    if ( toggleDifficultyID and not GetRaidDifficultyID() == DIFFICULTY_PRIMARYRAID_MYTHIC and CheckToggleDifficulty(toggleDifficultyID, UnitPopupButtons[value].difficultyID) ) then
                        info.disabled = nil;
                    end
                elseif ( value == "PVP_ENABLE" ) then
                    if ( GetPVPDesired()) then
                        info.checked = true;
                    end
                elseif ( value == "PVP_DISABLE" ) then
                    if ( not GetPVPDesired() ) then
                        info.checked = true;
                    end
                elseif ( strsub(value, 1, 20) == "LOOT_SPECIALIZATION_" ) then
                    if ( GetLootSpecialization() == UnitPopupButtons[value].specializationID ) then
                        info.checked = true;
                    end
                elseif ( value == "OPT_OUT_LOOT_ENABLE" ) then
                    if ( GetOptOutOfLoot() ) then
                        info.checked = true;
                    end
                elseif ( value == "OPT_OUT_LOOT_DISABLE" ) then
                    if ( not GetOptOutOfLoot() ) then
                        info.checked = true;
                    end
                elseif ( value == "TARGET_FRAME_BUFFS_ON_TOP" ) then
                    if ( TARGET_FRAME_BUFFS_ON_TOP ) then
                        info.checked = true;
                    end
                elseif ( value == "FOCUS_FRAME_BUFFS_ON_TOP" ) then
                    if ( FOCUS_FRAME_BUFFS_ON_TOP ) then
                        info.checked = true;
                    end
                elseif ( value == "PLAYER_FRAME_SHOW_CASTBARS" ) then
                    if ( PLAYER_FRAME_CASTBARS_SHOWN ) then
                        info.checked = true;
                    end
                elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and strsub(value, 1, 9) == "SET_ROLE_" ) then
                    if ( UnitGroupRolesAssigned(unit) == strsub(value, 10) ) then
                        info.checked = true;
                    end
                end

                info.value = value;
                info.func = UnitPopup_OnClick;
                if ( not UnitPopupButtons[value].checkable ) then
                    info.notCheckable = true;
                else
                    info.notCheckable = nil;
                end
                if ( UnitPopupButtons[value].isNotRadio ) then
                    info.isNotRadio = true;
                else
                    info.isNotRadio = nil;
                end
                -- Setup newbie tooltips
                if (WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC or cntButton.isSubsectionTitle) then
                    info.tooltipTitle = UnitPopupButtons[value].text;
                else
                    -- We need to call GetDropDownButtonText here in case the text is a function (e.g. IGNORE).
                    info.tooltipTitle = GetDropDownButtonText(cntButton, dropdownMenu);
                end
                info.tooltipText = _G["NEWBIE_TOOLTIP_UNIT_"..value];

                if not cntButton.isSubsection then
                    UnitPopup_AddDropDownButton(info, dropdownMenu, cntButton, value, L_UIDROPDOWNMENU_MENU_LEVEL);
                end

                previousButton = cntButton;
                previousIndex = index;
                previousValue = value;
            end
        end
        return;
    end

    UnitPopup_AddDropDownTitle(unit, name, userData);

    -- Set which menu is being opened
    L_OPEN_DROPDOWNMENUS[L_UIDROPDOWNMENU_MENU_LEVEL] = {which = dropdownMenu.which, unit = dropdownMenu.unit};
    -- Show the buttons which are used by this menu
    info = L_UIDropDownMenu_CreateInfo();
    local tooltipText;
    local previousButton, previousIndex, previousValue;
    for index, value in ipairs(UnitPopupMenus[which]) do
        if( UnitPopupShown[L_UIDROPDOWNMENU_MENU_LEVEL][index] == 1 ) then
            local cntButton = UnitPopupButtons[value];

            UnitPopup_CheckAddSubsection(dropdownMenu, info, L_UIDROPDOWNMENU_MENU_LEVEL, cntButton, previousButton, previousIndex, previousValue);

            if not cntButton.isSubsection then
                UnitPopup_AddDropDownButton(info, dropdownMenu, cntButton, value);
            end

            previousButton = cntButton;
            previousIndex = index;
            previousValue = value;
        end
    end
    PlaySound(SOUNDKIT.IG_MAINMENU_OPEN);
end

function UnitPopup_AddDropDownTitle(unit, name, userData)
    if ( unit or name ) then
        local info = L_UIDropDownMenu_CreateInfo();

        local titleText = name;
        if not titleText and unit then
            titleText = UnitName(unit);
        end

        info.text = titleText or UNKNOWN;
        info.isTitle = true;
        info.notCheckable = true;

        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            local class;
            if unit and UnitIsPlayer(unit) then
                class = select(2, UnitClass(unit));
            end

            if not class and userData and userData.guid then
                class = select(2, GetPlayerInfoByGUID(userData.guid));
            end

            if class then
                local colorCode = select(4, GetClassColor(class));
                info.disablecolor = "|c" .. colorCode;
            end
        end

        L_UIDropDownMenu_AddButton(info);
    end
end

local commandToRoleId = {
    ["COMMUNITIES_ROLE_MEMBER"] = Enum.ClubRoleIdentifier.Member,
    ["COMMUNITIES_ROLE_MODERATOR"] = Enum.ClubRoleIdentifier.Moderator,
    ["COMMUNITIES_ROLE_LEADER"] = Enum.ClubRoleIdentifier.Leader,
    ["COMMUNITIES_ROLE_OWNER"] = Enum.ClubRoleIdentifier.Owner
};

local function UnitPopup_TryCreatePlayerLocation(menu, guid)
    if menu.battlefieldScoreIndex then
        return PlayerLocation:CreateFromBattlefieldScoreIndex(menu.battlefieldScoreIndex);
    elseif menu.communityClubID and menu.communityStreamID and menu.communityEpoch and menu.communityPosition then
        return PlayerLocation:CreateFromCommunityChatData(menu.communityClubID, menu.communityStreamID, menu.communityEpoch, menu.communityPosition);
    elseif menu.communityClubID and not menu.communityStreamID then
        return PlayerLocation:CreateFromCommunityInvitation(menu.communityClubID, guid);
    elseif C_ChatInfo.IsValidChatLine(menu.lineID) then
        return PlayerLocation:CreateFromChatLineID(menu.lineID);
    elseif guid then
        return PlayerLocation:CreateFromGUID(guid);
    elseif menu.unit then
        return PlayerLocation:CreateFromUnit(menu.unit);
    end

    return nil;
end

function UnitPopup_AddDropDownButton(info, dropdownMenu, cntButton, buttonIndex, level)
    if (not level) then
        level = 1;
    end

    info.text = GetDropDownButtonText(cntButton, dropdownMenu);
    info.value = buttonIndex;
    info.owner = nil;
    info.func = UnitPopup_OnClick;
    if ( not cntButton.checkable ) then
        info.notCheckable = true;
    else
        info.notCheckable = nil;
    end
    -- Text color
    if ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and buttonIndex == "LOOT_THRESHOLD" ) then
        -- Set the text color
        info.colorCode = ITEM_QUALITY_COLORS[GetLootThreshold()].hex;
    else
        local color = cntButton.color;
        if ( color ) then
            info.colorCode = string.format("|cFF%02x%02x%02x",  color.r*255,  color.g*255,  color.b*255);
        else
            info.colorCode = nil;
        end
    end
        -- Icons
    if ( cntButton.iconOnly ) then
        info.iconOnly = 1;
        info.icon = cntButton.icon;
        info.iconInfo = { tCoordLeft = cntButton.tCoordLeft,
                            tCoordRight = cntButton.tCoordRight,
                            tCoordTop = cntButton.tCoordTop,
                            tCoordBottom = cntButton.tCoordBottom,
                            tSizeX = cntButton.tSizeX,
                            tSizeY = cntButton.tSizeY,
                            tFitDropDownSizeX = cntButton.tFitDropDownSizeX };
    else
        info.iconOnly = nil;
        info.icon = cntButton.icon;
        info.tCoordLeft = cntButton.tCoordLeft;
        info.tCoordRight = cntButton.tCoordRight;
        info.tCoordTop = cntButton.tCoordTop;
        info.tCoordBottom = cntButton.tCoordBottom;
        info.iconInfo = nil;
    end

    -- Checked conditions
    if (level == 1) then
        info.checked = nil;
    end

    info.checked = UnitPopup_GetOverrideIsChecked(buttonIndex, info.checked, dropdownMenu);

    if ( cntButton.nested ) then
        info.hasArrow = true;
    else
        info.hasArrow = nil;
    end
    if ( cntButton.isNotRadio ) then
        info.isNotRadio = true
    else
        info.isNotRadio = nil;
    end

    if ( cntButton.isTitle ) then
        info.isTitle = true;
    else
        info.isTitle = nil;

        -- NOTE: UnitPopup_AddDropDownButton is called for both level 1 and 2 buttons, level 2 buttons already
        -- had a disable mechanism, so only set disabled to nil for level 1 buttons.
        -- All buttons can define IsDisabledFn to override behavior.
        -- NOTE: There are issues when both 'nested' and 'disabled' are true, the label on the menu won't respect
        -- the disabled state, but the arrow will.  Should fix this at some point.
        if cntButton.IsDisabledFn then
            info.disabled = cntButton.IsDisabledFn();
        else
            if (level == 1) then
                info.disabled = nil;
            end
        end
    end

    -- Setup newbie tooltips
    if (WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC or cntButton.isSubsectionTitle) then
        info.tooltipTitle = cntButton.text;
    else
        -- We need to call GetDropDownButtonText here in case the text is a function (e.g. IGNORE).
        info.tooltipTitle = GetDropDownButtonText(cntButton, dropdownMenu);
    end

    local tooltipText = _G["NEWBIE_TOOLTIP_UNIT_"..buttonIndex];
    if ( not tooltipText ) then
        tooltipText = cntButton.tooltipText;
    end

    info.tooltipText = tooltipText;
    info.customFrame = cntButton.customFrame;
    if info.customFrame then
        local guid = UnitPopup_GetGUID(dropdownMenu);
        local playerLocation = UnitPopup_TryCreatePlayerLocation(dropdownMenu, guid);
        local contextData = {
            guid = guid,
            playerLocation = playerLocation,
            voiceChannelID = dropdownMenu.voiceChannelID,
            voiceMemberID = dropdownMenu.voiceMemberID,
            voiceChannel = dropdownMenu.voiceChannel,
        };

        info.customFrame:SetContextData(contextData);
    end

    info.tooltipWhileDisabled = cntButton.tooltipWhileDisabled;
    info.noTooltipWhileEnabled = cntButton.noTooltipWhileEnabled;
    info.tooltipOnButton = cntButton.tooltipOnButton;
    info.tooltipInstruction = cntButton.tooltipInstruction;
    info.tooltipWarning = cntButton.tooltipWarning;

    UnitPopup_UpdateButtonInfo(info);

    L_UIDropDownMenu_AddButton(info, level);
end

local function UnitPopup_IsValidPlayerLocation(playerLocation)
    return playerLocation and playerLocation:IsValid();
end

local function UnitPopup_IsSameServer(playerLocation, dropdownMenu)
    if playerLocation then
        return C_PlayerInfo.UnitIsSameServer(playerLocation);
    elseif dropdownMenu.accountInfo and dropdownMenu.accountInfo.gameAccountInfo.realmName then
        return dropdownMenu.accountInfo.gameAccountInfo.realmName == GetRealmName();
    end
end

local function UnitPopup_HasBattleTag()
    if BNFeaturesEnabledAndConnected() then
        local _, battleTag = BNGetInfo();
        if battleTag then
            return true;
        end
    end
end

local function UnitPopup_GetLFGCategoryForLFGSlot(lfgSlot)
    if lfgSlot then
        return GetLFGCategoryForID(lfgSlot);
    end
end

local function UnitPopup_IsPlayerOffline(menu)
    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and menu.isOffline then
        return true;
    elseif menu.clubMemberInfo then
        local presence = menu.clubMemberInfo.presence;
        if presence == Enum.ClubMemberPresence.Offline or presence == Enum.ClubMemberPresence.Unknown then
            return true;
        end
    elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and menu.accountInfo then
        if not menu.accountInfo.gameAccountInfo.isOnline then
            return true;
        end
    end

    return false;
end

local function UnitPopup_IsPlayerFavorite(menu)
    return menu.accountInfo and menu.accountInfo.isFavorite;
end

local function UnitPopup_IsPlayerMobile(menu)
    if menu.clubMemberInfo then
        local presence = menu.clubMemberInfo.presence;
        if presence == Enum.ClubMemberPresence.Offline or presence == Enum.ClubMemberPresence.Unknown then
            return true;
        end
    end

    return false;
end

local function UnitPopup_GetIsLocalPlayer(menu)
    if menu.isSelf then
        return true;
    end

    local guid = UnitPopup_GetGUID(menu);
    if guid and C_AccountInfo.IsGUIDRelatedToLocalAccount(guid) then
        return true;
    end

    if menu.clubMemberInfo and menu.clubMemberInfo.isSelf then
        return true;
    end

    return false;
end

local function UnitPopup_IsInGroupWithPlayer(dropdownMenu)
    if dropdownMenu.accountInfo and dropdownMenu.accountInfo.gameAccountInfo.characterName then
        return	UnitInParty(dropdownMenu.accountInfo.gameAccountInfo.characterName) or UnitInRaid(dropdownMenu.accountInfo.gameAccountInfo.characterName);
    elseif dropdownMenu.guid then
        return IsGUIDInGroup(dropdownMenu.guid);
    end
end

local function UnitPopup_IsBNetFriend(dropdownMenu)
    return dropdownMenu.accountInfo and dropdownMenu.accountInfo.isFriend;
end

local function UnitPopup_CanAddBNetFriend(dropdownMenu, isLocalPlayer, haveBattleTag, isPlayer)
    local hasClubInfo = dropdownMenu.clubInfo ~= nil and dropdownMenu.clubMemberInfo ~= nil;
    return not isLocalPlayer and haveBattleTag and (isPlayer or hasClubInfo or dropdownMenu.accountInfo) and not UnitPopup_IsBNetFriend(dropdownMenu);
end

function UnitPopup_HideButtons ()
    local dropdownMenu = L_UIDROPDOWNMENU_INIT_MENU;
    local inInstance, instanceType = IsInInstance();

    local inParty = IsInGroup();
    local inRaid = IsInRaid();
    local isLeader = UnitIsGroupLeader("player");
    local isAssistant = UnitIsGroupAssistant("player");
    local inBattleground = UnitInBattleground("player");
    local canCoop = dropdownMenu.unit and UnitCanCooperate("player", dropdownMenu.unit);
    local isPlayer = dropdownMenu.unit and UnitIsPlayer(dropdownMenu.unit);
    local partyLFGSlot
    local partyLFGCategory
    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        partyLFGSlot = GetPartyLFGID();
        partyLFGCategory = UnitPopup_GetLFGCategoryForLFGSlot(partyLFGSlot);
    end
    local guid = UnitPopup_GetGUID(dropdownMenu);
    local playerLocation = UnitPopup_TryCreatePlayerLocation(dropdownMenu, guid);
    local isSameServer
    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        isSameServer = UnitPopup_IsSameServer(playerLocation, dropdownMenu);
    else
        isSameServer = dropdownMenu.unit and UnitIsSameServer(dropdownMenu.unit)
    end
    local haveBattleTag = UnitPopup_HasBattleTag();
    local isOffline = UnitPopup_IsPlayerOffline(dropdownMenu);
    local isBNFriend
    local isBNFriendFavorite
    local isValidPlayerLocation
    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        isBNFriend = UnitPopup_IsBNetFriend(dropdownMenu);
        isBNFriendFavorite = UnitPopup_IsPlayerFavorite(dropdownMenu);
        isValidPlayerLocation = UnitPopup_IsValidPlayerLocation(playerLocation);
    else
        isBNFriend = dropdownMenu.bnetIDAccount and BNIsFriend(dropdownMenu.bnetIDAccount)
    end
    local isLocalPlayer = UnitPopup_GetIsLocalPlayer(dropdownMenu);

    for index, value in ipairs(UnitPopupMenus[L_UIDROPDOWNMENU_MENU_VALUE] or UnitPopupMenus[dropdownMenu.which]) do
        local shown = true;
        if ( value == "TRADE" ) then
            if ( not canCoop or not isPlayer ) then
                shown = false;
            end
        elseif ( value == "ADD_FRIEND" ) then
            if ( haveBattleTag or not canCoop or not isPlayer or not isSameServer or C_FriendList.GetFriendInfo(UnitName(dropdownMenu.unit)) ) then
                shown = false;
            end
        elseif ( value == "ADD_FRIEND_MENU" ) then
            local hasClubInfo = dropdownMenu.clubInfo ~= nil and dropdownMenu.clubMemberInfo ~= nil;
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if ( isLocalPlayer or not haveBattleTag or (not isPlayer and not hasClubInfo and not dropdownMenu.isRafRecruit) ) then
                    shown = false;
                end
            else
                if ( not haveBattleTag or (not isPlayer and not hasClubInfo) ) then
                    shown = false;
                end
            end
        elseif ( value == "GUILD_BATTLETAG_FRIEND" ) then
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if ( not UnitPopup_CanAddBNetFriend(dropdownMenu, isLocalPlayer, haveBattleTag, isPlayer) ) then
                    shown = false;
                end
            else
                if ( not haveBattleTag or UnitName("player" ) == dropdownMenu.name ) then
                    shown = false;
                end
            end
        elseif ( value == "INVITE" or value == "SUGGEST_INVITE" or value == "REQUEST_INVITE" ) then
            if ( isLocalPlayer or isOffline ) then
                shown = false;
            elseif ( dropdownMenu.unit ) then
                if ( not canCoop  or UnitIsUnit("player", dropdownMenu.unit) ) then
                    shown = false;
                end
            elseif ( (dropdownMenu == ChannelRosterDropDown) ) then
                if ( UnitInRaid(dropdownMenu.name) ~= nil ) then
                    shown = false;
                end
            else
                if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                    if ( dropdownMenu.isMobile ) then
                        shown = false;
                    end
                else
                    if ( dropdownMenu == FriendsDropDown and dropdownMenu.isMobile ) then
                        shown = false;
                    elseif ( dropdownMenu == GuildMenuDropDown and dropdownMenu.isMobile ) then
                        shown = false;
                    else
                        if ( dropdownMenu.name == UnitName("party1") or
                            dropdownMenu.name == UnitName("party2") or
                            dropdownMenu.name == UnitName("party3") or
                            dropdownMenu.name == UnitName("party4") or
                            dropdownMenu.name == UnitName("player")) then
                            shown = false;
                        end
                    end
                end
            end

            local displayedInvite = GetDisplayedInviteType(guid);
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if ( not inParty and dropdownMenu.unit and UnitInAnyGroup(dropdownMenu.unit, LE_PARTY_CATEGORY_HOME) ) then
                    --Handle the case where we don't have SocialQueue data about this unit (e.g. because it's a random person)
                    --in the world. In this case, we want to display REQUEST_INVITE if they're in a group.
                    displayedInvite = "REQUEST_INVITE";
                end
            end
            if ( value ~= displayedInvite ) then
                shown = false;
            end
        elseif ( value == "BN_INVITE" or value == "BN_SUGGEST_INVITE" or value == "BN_REQUEST_INVITE" ) then
            local bnetIDAccount, accountName, battleTag, isBattleTag, characterName, bnetIDGameAccount
            if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
                bnetIDAccount, accountName, battleTag, isBattleTag, characterName, bnetIDGameAccount = BNGetFriendInfoByID(dropdownMenu.bnetIDAccount);
            end
            if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and not bnetIDGameAccount then
                shown = false;
            elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and (not dropdownMenu.accountInfo or not dropdownMenu.accountInfo.gameAccountInfo.playerGuid) then
                shown = false;
            else
                local guid
                if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
                    guid = select(20, BNGetGameAccountInfo(bnetIDGameAccount));
                else
                    guid = dropdownMenu.accountInfo.gameAccountInfo.playerGuid
                end
                local inviteType = GetDisplayedInviteType(guid);
                if "BN_"..inviteType ~= value then
                    shown = false;
                elseif not dropdownMenu.bnetIDAccount or not BNFeaturesEnabledAndConnected() then
                    shown = false;
                else
                    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                        if dropdownMenu.isMobile then
                            shown = false;
                        end
                    else
                        if ( UnitInParty(characterName) or UnitInRaid(characterName) ) then
                            shown = false;
                        end
                    end
                end
            end
        elseif ( value == "FOLLOW" ) then
            if ( not canCoop or not isPlayer ) then
                shown = false;
            end
        elseif ( value == "WHISPER" ) then
            local whisperIsLocalPlayer = isLocalPlayer;
            if not whisperIsLocalPlayer then
                local playerName, playerServer = UnitName("player");
                whisperIsLocalPlayer = (dropdownMenu.name == playerName and dropdownMenu.server == playerServer);
            end

            if whisperIsLocalPlayer or (isOffline and not dropdownMenu.bnetIDAccount) or ( dropdownMenu.unit and (not canCoop or not isPlayer)) or (dropdownMenu.bnetIDAccount and not isBNFriend) then
                shown = false;
            end

            if ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and dropdownMenu.isMobile ) then
                shown = false;
            end
        elseif ( value == "DUEL" ) then
            if ( UnitCanAttack("player", dropdownMenu.unit) or not isPlayer ) then
                shown = false;
            end
        elseif ( value == "PET_BATTLE_PVP_DUEL" ) then
            if ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC or not UnitCanPetBattle("player", dropdownMenu.unit) or not isPlayer ) then
                shown = false;
            end
        elseif ( value == "INSPECT" or WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "ACHIEVEMENTS" ) then
            if ( not dropdownMenu.unit or UnitCanAttack("player", dropdownMenu.unit) or not isPlayer ) then
                shown = false;
            end
        elseif ( value == "IGNORE" ) then
            if ( dropdownMenu.name == UnitName("player") or ( dropdownMenu.unit and not isPlayer ) ) then
                shown = false;
            end
        elseif ( value == "REMOVE_FRIEND" ) then
            if ( not dropdownMenu.friendsList ) then
                shown = false;
            end
        elseif ( value == "SET_NOTE" ) then
            if ( not dropdownMenu.friendsList ) then
                shown = false;
            end
        elseif ( value == "BN_SET_NOTE" ) then
            if ( not dropdownMenu.friendsList ) then
                shown = false;
            end
        elseif ( value == "BN_VIEW_FRIENDS" ) then
            if ( not dropdownMenu.friendsList ) then
                shown = false;
            end
        elseif ( value == "BN_REMOVE_FRIEND" ) then
            if ( not dropdownMenu.friendsList ) then
                shown = false;
            end
        elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "BN_ADD_FAVORITE" ) then
            if ( not dropdownMenu.friendsList or isBNFriendFavorite) then
                shown = false;
            end
        elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "BN_REMOVE_FAVORITE" ) then
            if ( not dropdownMenu.friendsList or not isBNFriendFavorite) then
                shown = false;
            end
        elseif ( value == "REPORT_PLAYER" ) then
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if not isValidPlayerLocation or not C_ReportSystem.CanReportPlayer(playerLocation) then
                    shown = false;
                end
            else
                if not playerLocation or not playerLocation:IsValid() or not C_ChatInfo.CanReportPlayer(playerLocation) then
                    shown = false;
                end
            end
        elseif ( value == "REPORT_SPAM" ) then
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if not isValidPlayerLocation or not (playerLocation:IsChatLineID() or playerLocation:IsCommunityInvitation()) then
                    shown = false;
                end
            else
                if not playerLocation:IsChatLineID() and not playerLocation:IsCommunityInvitation() then
                    shown = false;
                end
            end
        elseif ( value == "REPORT_CHEATING" ) then
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if dropdownMenu.bnetIDAccount or not isValidPlayerLocation or playerLocation:IsBattleNetGUID() then
                    shown = false;
                end
            else
                if dropdownMenu.bnetIDAccount or not playerLocation or playerLocation:IsBattleNetGUID() then
                    shown = false;
                end
            end
        elseif ( value == "POP_OUT_CHAT" ) then
            if ( (dropdownMenu.chatType ~= "WHISPER" and dropdownMenu.chatType ~= "BN_WHISPER") or dropdownMenu.chatTarget == UnitName("player") or
                FCFManager_GetNumDedicatedFrames(dropdownMenu.chatType, dropdownMenu.chatTarget) > 0 ) then
                shown = false;
            end
        elseif ( value == "TARGET" ) then
            -- We don't want to show a menu option that will end up being blocked
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if ( dropdownMenu.isMobile or InCombatLockdown() or not issecure() ) then
                    shown = false;
                end
            else
                if ( InCombatLockdown() or not issecure() ) then
                    shown = false;
                elseif ( dropdownMenu.isMobile ) then
                    shown = false;
                end
            end
        elseif ( value == "BN_TARGET" ) then
            -- We don't want to show a menu option that will end up being blocked
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if ( dropdownMenu.isMobile or not isBNFriend or InCombatLockdown() or not issecure() ) then
                    shown = false;
                end
            else
                if ( not dropdownMenu.bnetIDAccount or not BNIsFriend(dropdownMenu.bnetIDAccount) or InCombatLockdown() or not issecure() ) then
                    shown = false;
                end
            end
        elseif ( value == "PROMOTE" ) then
            if ( not inParty or not isLeader or not isPlayer or WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and HasLFGRestrictions()) then
                shown = false;
            end
        elseif ( value == "PROMOTE_GUIDE" ) then
            if ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC or not inParty or not isLeader or not isPlayer or not HasLFGRestrictions()) then
                shown = false;
            end
        elseif ( value == "GUILD_PROMOTE" ) then
            if ( not IsGuildLeader() or dropdownMenu.name == UnitName("player") ) then
                shown = false;
            end
        elseif ( value == "GUILD_LEAVE" ) then
            if ( dropdownMenu.name ~= UnitName("player") ) then
                shown = false;
            end
        elseif ( value == "UNINVITE" ) then
            if ( not inParty or not isPlayer or not isLeader or (instanceType == "pvp") or (instanceType == "arena") or WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and HasLFGRestrictions() ) then
                shown = false;
            end
        elseif ( value == "VOTE_TO_KICK" ) then
            if ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC or not inParty or not isPlayer or (instanceType == "pvp") or (instanceType == "arena") or (not HasLFGRestrictions()) or IsInActiveWorldPVP() ) then
                shown = false;
            end
        elseif ( value == "LEAVE" ) then
            if ( not inParty or IsInGroup(LE_PARTY_CATEGORY_INSTANCE) or (instanceType == "pvp") or (instanceType == "arena") ) then
                shown = false;
            end
        elseif ( value == "INSTANCE_LEAVE" ) then
            if ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC or not inParty or not IsInGroup(LE_PARTY_CATEGORY_INSTANCE) or IsPartyWorldPVP() or instanceType == "pvp" or instanceType == "arena" or partyLFGCategory == LE_LFG_CATEGORY_WORLDPVP ) then
                shown = false;
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "FREE_FOR_ALL" ) then
            if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "freeforall")) ) then
                UnitPopupShown[index] = 0;
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "ROUND_ROBIN" ) then
            if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "roundrobin")) ) then
                UnitPopupShown[index] = 0;
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "MASTER_LOOTER" ) then
            if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "master")) ) then
                UnitPopupShown[index] = 0;
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "GROUP_LOOT" ) then
            if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "group")) ) then
                UnitPopupShown[index] = 0;
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "NEED_BEFORE_GREED" ) then
            if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "needbeforegreed")) ) then
                UnitPopupShown[index] = 0;
            end
        elseif ( value == "LOOT_THRESHOLD" ) then
            if ( not inParty ) then
                shown = false;
            end
        elseif ( value == "MOVE_PLAYER_FRAME" ) then
            if ( dropdownMenu ~= PlayerFrameDropDown ) then
                shown = false;
            end
        elseif ( value == "LOCK_PLAYER_FRAME" ) then
            if ( not PLAYER_FRAME_UNLOCKED ) then
                shown = false;
            end
        elseif ( value == "UNLOCK_PLAYER_FRAME" ) then
            if ( PLAYER_FRAME_UNLOCKED ) then
                shown = false;
            end
        elseif ( value == "MOVE_TARGET_FRAME" ) then
            if ( dropdownMenu ~= TargetFrameDropDown ) then
                shown = false;
            end
        elseif ( value == "LOCK_TARGET_FRAME" ) then
            if ( not TARGET_FRAME_UNLOCKED ) then
                shown = false;
            end
        elseif ( value == "UNLOCK_TARGET_FRAME" ) then
            if ( TARGET_FRAME_UNLOCKED ) then
                shown = false;
            end
       elseif ( value == "LARGE_FOCUS" ) then
            if ( dropdownMenu ~= FocusFrameDropDown ) then
                shown = false;
            end
       elseif ( value == "MOVE_FOCUS_FRAME" ) then
            if ( dropdownMenu ~= FocusFrameDropDown ) then
                shown = false;
            end
        elseif ( value == "LOCK_FOCUS_FRAME" ) then
            if ( FocusFrame_IsLocked() ) then
                shown = false;
            end
        elseif ( value == "UNLOCK_FOCUS_FRAME" ) then
            if ( not FocusFrame_IsLocked() ) then
                shown = false;
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "OPT_OUT_LOOT_TITLE" ) then
            if ( not inParty or ( inParty and GetLootMethod() == "freeforall" ) ) then
                UnitPopupShown[L_UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "LOOT_PROMOTE" ) then
            local isMaster = nil;
            local lootMethod, partyIndex, raidIndex = GetLootMethod();
            if ( (dropdownMenu.which == "RAID") or (dropdownMenu.which == "RAID_PLAYER") ) then
                if ( raidIndex and (dropdownMenu.unit == "raid"..raidIndex) ) then
                    isMaster = true;
                end
            elseif ( dropdownMenu.which == "SELF" ) then
                 if ( partyIndex and (partyIndex == 0) ) then
                    isMaster = true;
                 end
            else
                if ( partyIndex and (dropdownMenu.unit == "party"..partyIndex) ) then
                    isMaster = true;
                end
            end
            if ( not inParty or not isLeader or (lootMethod ~= "master") or isMaster ) then
                shown = false;
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "LOOT_METHOD" ) then
            if ( not inParty ) then
                shown = false;
            end
        elseif ( value == "SELECT_LOOT_SPECIALIZATION" ) then
            if ( not GetSpecialization() ) then
                shown = false;
            end
        elseif ( strsub(value, 1, 20) == "LOOT_SPECIALIZATION_" ) then
            if ( UnitPopupButtons[value].specializationID == -1 ) then
                shown = false;
            end
        elseif ( value == "CONVERT_TO_RAID" ) then
            if ( not inParty or inRaid or not isLeader or IsInGroup(LE_PARTY_CATEGORY_INSTANCE) ) then
                shown = false;
            end
        elseif ( value == "CONVERT_TO_PARTY" ) then
            if ( not inRaid or not isLeader or IsInGroup(LE_PARTY_CATEGORY_INSTANCE) ) then
                shown = false;
            end
        elseif ( value == "RESET_INSTANCES" ) then
            if ( ( inParty and not isLeader ) or inInstance) then
                shown = false;
            end
        elseif ( value == "RESET_CHALLENGE_MODE" ) then
            if ( not inInstance or not C_ChallengeMode.IsChallengeModeActive() or ( inParty and not isLeader ) ) then
                shown = false;
            end
        elseif ( value == "DUNGEON_DIFFICULTY" ) then
            if ( UnitLevel("player") < 65 and GetDungeonDifficultyID() == UnitPopupButtons[value].defaultDifficultyID ) then
                shown = false;
            end
        elseif ( value == "RAID_DIFFICULTY" ) then
            if ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC or UnitLevel("player") < MAX_PLAYER_LEVEL_TABLE[LE_EXPANSION_WRATH_OF_THE_LICH_KING] and GetRaidDifficultyID() == UnitPopupButtons[value].defaultDifficultyID ) then
                shown = false;
            end
        elseif ( value == "RAID_LEADER" ) then
            if ( not isLeader or not isPlayer or UnitIsGroupLeader(dropdownMenu.unit)or not dropdownMenu.name ) then
                shown = false;
            end
        elseif ( value == "RAID_PROMOTE" ) then
            if ( not isLeader or not isPlayer or IsEveryoneAssistant() ) then
                shown = false;
            elseif ( isLeader ) then
                if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                    if ( UnitIsGroupAssistant(dropdownMenu.unit) ) then
                        shown = false;
                    end
                else
                    if ( UnitIsGroupLeader(dropdownMenu.unit) or UnitIsGroupAssistant(dropdownMenu.unit) ) then
                        shown = false;
                    end
                end
            end
        elseif ( value == "RAID_DEMOTE" ) then
            if ( ( not isLeader and not isAssistant ) or not dropdownMenu.name or not isPlayer ) then
                shown = false;
            else
                local b
                if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                    b = not GetPartyAssignment("MAINTANK", dropdownMenu.unit) and not GetPartyAssignment("MAINASSIST", dropdownMenu.unit)
                else
                    b = not GetPartyAssignment("MAINTANK", dropdownMenu.name, 1) and not GetPartyAssignment("MAINASSIST", dropdownMenu.name, 1)
                end
                if ( b ) then
                    if ( not isLeader  and isAssistant and UnitIsGroupAssistant(dropdownMenu.unit) ) then
                        shown = false;
                    elseif ( isLeader or isAssistant ) then
                        if ( UnitIsGroupLeader(dropdownMenu.unit) or not UnitIsGroupAssistant(dropdownMenu.unit) or IsEveryoneAssistant()) then
                            shown = false;
                        end
                    end
                end
        end
        elseif ( value == "RAID_MAINTANK" ) then
            -- We don't want to show a menu option that will end up being blocked
            if ( not issecure() or (not isLeader and not isAssistant) or not isPlayer or GetPartyAssignment("MAINTANK", dropdownMenu.unit) ) then
                shown = false;
            end
        elseif ( value == "RAID_MAINASSIST" ) then
            -- We don't want to show a menu option that will end up being blocked
            if ( not issecure() or (not isLeader and not isAssistant) or not isPlayer or GetPartyAssignment("MAINASSIST", dropdownMenu.unit) ) then
                shown = false;
            end
        elseif ( value == "RAID_REMOVE" ) then
            if ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and HasLFGRestrictions() or not isPlayer ) then
                shown = false;
            elseif ( ( not isLeader and not isAssistant ) or not dropdownMenu.name or (instanceType == "pvp") or (instanceType == "arena") ) then
                shown = false;
            elseif ( not isLeader and isAssistant and UnitIsGroupAssistant(dropdownMenu.unit) ) then
                shown = false;
            elseif ( isLeader and UnitIsUnit(dropdownMenu.unit, "player") ) then
                shown = false;
            end
        elseif ( value == "PVP_REPORT_AFK" ) then
            local b
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                b = C_PvP.IsRatedMap() or  (not IsInActiveWorldPVP() and (not inBattleground or GetCVar("enablePVPNotifyAFK") == "0") )
            else
                b = not inBattleground or GetCVar("enablePVPNotifyAFK") == "0"
            end
            if ( not issecure() or b ) then
                shown = false;
            elseif ( dropdownMenu.unit ) then
                if ( UnitIsUnit(dropdownMenu.unit,"player") ) then
                    shown = false;
                elseif ( not UnitInBattleground(dropdownMenu.unit) and not IsInActiveWorldPVP(dropdownMenu.unit) ) then
                    shown = false;
                elseif ( (PlayerIsPVPInactive(dropdownMenu.unit)) ) then
                    shown = false;
                end
            elseif ( dropdownMenu.name ) then
                if ( dropdownMenu.name == UnitName("player") ) then
                    shown = false;
                elseif ( not UnitInBattleground(dropdownMenu.name) and (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC or not IsInActiveWorldPVP(dropdownMenu.name)) ) then
                    shown = false;
                end
            end
        elseif ( value == "RAF_SUMMON" ) then
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if not guid or dropdownMenu.isMobile or not IsRecruitAFriendLinked(guid) then
                    shown = false;
                end
            else
                if( not IsReferAFriendLinked(dropdownMenu.unit) ) then
                    shown = false;
                end
            end
        elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "RAF_GRANT_LEVEL" ) then
            if( not IsReferAFriendLinked(dropdownMenu.unit) ) then
                shown = false;
            end
        elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "RAF_REMOVE_RECRUIT" then
            if not dropdownMenu.isRafRecruit then
                shown = false;
            end
        elseif ( value == "PET_RENAME" ) then
            if( not PetCanBeAbandoned() or not PetCanBeRenamed() ) then
                shown = false;
            end
        elseif ( value == "PET_ABANDON" ) then
            if( not PetCanBeAbandoned() or not PetHasActionBar() ) then
                shown = false;
            end
        elseif ( value == "PET_DISMISS" ) then
            if( ( PetCanBeAbandoned() and not IsSpellKnown(HUNTER_DISMISS_PET) ) or not PetCanBeDismissed() ) then
                shown = false;
            end
        elseif ( strsub(value, 1, 12)  == "RAID_TARGET_" ) then
            -- Task #30755. Let any party member mark targets
            -- Task 34335 - But only raid leaders can mark targets.
            if ( inRaid and not isLeader and not isAssistant ) then
                shown = false;
            end
            if ( not (dropdownMenu.which == "SELF") ) then
                if ( UnitExists("target") and not UnitPlayerOrPetInParty("target") and not UnitPlayerOrPetInRaid("target") ) then
                    if ( UnitIsPlayer("target") and (not UnitCanCooperate("player", "target") and not UnitIsUnit("target", "player")) ) then
                        shown = false;
                    end
                end
            end
        elseif ( value == "CHAT_PROMOTE" ) then
            if ( dropdownMenu.channelType ~= Enum.ChatChannelType.Custom ) then
                shown = false;
            else
                if ( not IsDisplayChannelOwner() or dropdownMenu.owner or dropdownMenu.moderator or dropdownMenu.name == UnitName("player") ) then -- TODO: Name matching is wrong here, needs full name comparison
                    shown = false;
                end
            end
        elseif ( value == "CHAT_DEMOTE" ) then
            if ( dropdownMenu.channelType ~= Enum.ChatChannelType.Custom ) then
                shown = false;
            else
                if ( not IsDisplayChannelOwner() or dropdownMenu.owner or not dropdownMenu.moderator or dropdownMenu.name == UnitName("player") ) then -- TODO: Name matching is wrong here, needs full name comparison
                    shown = false;
                end
            end
        elseif ( value == "CHAT_OWNER" ) then
            if ( dropdownMenu.channelType ~= Enum.ChatChannelType.Custom ) then
                shown = false;
            else
                if ( not IsDisplayChannelOwner() or dropdownMenu.owner or dropdownMenu.name == UnitName("player") ) then -- TODO: Name matching needs full name comparison
                    shown = false;
                end
            end
        elseif ( value == "CHAT_KICK" ) then
            shown = false;
        elseif ( value == "CHAT_LEAVE" ) then
            if ( not dropdownMenu.active or dropdownMenu.group) then
                shown = false;
            end
        elseif ( value == "VEHICLE_LEAVE" ) then
            if ( not CanExitVehicle() ) then
                shown = false;
            end
        elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "SELECT_ROLE" ) then
            if ( C_Scenario.IsInScenario() or not ( IsInGroup() and not HasLFGRestrictions() and (isLeader or isAssistant or UnitIsUnit(dropdownMenu.unit, "player")) ) ) then
                shown = false;
            end
        elseif ( value == "GARRISON_VISIT" ) then
            if ( not C_Garrison.IsVisitGarrisonAvailable() ) then
                shown = false;
            end
        elseif ( value == "REPORT_BAD_GUILD_NAME" ) then
            if ( not dropdownMenu.unit or not GetGuildInfo(dropdownMenu.unit) ) then
                shown = false;
            end
        elseif ( value == "VOICE_CHAT" ) then
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if not C_VoiceChat.CanPlayerUseVoiceChat() then
                    shown = false;
                elseif not (isLocalPlayer or (isValidPlayerLocation and C_VoiceChat.IsPlayerUsingVoice(playerLocation))) then
                    shown = false;
                end
            else
                if not C_VoiceChat.CanPlayerUseVoiceChat() or not isLocalPlayer and not C_VoiceChat.IsPlayerUsingVoice(playerLocation) then
                    shown = false;
                end
            end
        elseif value == "VOICE_CHAT_MICROPHONE_VOLUME" then
            if not C_VoiceChat.CanPlayerUseVoiceChat() or not isLocalPlayer then
                shown = false;
            end
        elseif value == "VOICE_CHAT_SPEAKER_VOLUME" then
            if not C_VoiceChat.CanPlayerUseVoiceChat() or not isLocalPlayer then
                shown = false;
            end
        elseif value == "VOICE_CHAT_SETTINGS" then
            if not C_VoiceChat.CanPlayerUseVoiceChat() or not isLocalPlayer then
                shown = false;
            end
        elseif value == "VOICE_CHAT_USER_VOLUME" then
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if not C_VoiceChat.CanPlayerUseVoiceChat() then
                    shown = false;
                elseif isLocalPlayer or not isValidPlayerLocation or not C_VoiceChat.IsPlayerUsingVoice(playerLocation) then
                    shown = false;
                end
            else
                if not C_VoiceChat.CanPlayerUseVoiceChat() or isLocalPlayer or not C_VoiceChat.IsPlayerUsingVoice(playerLocation) then
                    shown = false;
                end
            end
        elseif value == "COMMUNITIES_LEAVE" then
            if dropdownMenu.clubInfo == nil or dropdownMenu.clubMemberInfo == nil or not dropdownMenu.clubMemberInfo.isSelf then
                shown = false;
            end
        elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "GUILDS_LEAVE" then
            if dropdownMenu.clubInfo == nil or dropdownMenu.clubMemberInfo == nil or not dropdownMenu.clubMemberInfo.isSelf or IsGuildLeader() then
                shown = false;
            end
        elseif value == "COMMUNITIES_BATTLETAG_FRIEND" then
            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                if not haveBattleTag
                    or not UnitPopup_CanAddBNetFriend(dropdownMenu, isLocalPlayer, haveBattleTag, isPlayer)
                    or dropdownMenu.clubInfo == nil
                    or dropdownMenu.clubMemberInfo == nil
                    or dropdownMenu.clubMemberInfo.isSelf then
                    shown = false;
                end
            else
                if dropdownMenu.clubInfo == nil
                    or dropdownMenu.clubMemberInfo == nil
                    or dropdownMenu.clubMemberInfo.isSelf then
                    shown = false;
                end
            end
        elseif value == "COMMUNITIES_KICK" then
            if dropdownMenu.clubInfo == nil
                or dropdownMenu.clubMemberInfo == nil
                or dropdownMenu.clubMemberInfo.isSelf
                or not CommunitiesUtil.CanKickClubMember(dropdownMenu.clubPrivileges, dropdownMenu.clubMemberInfo) then
                shown = false;
            end
        elseif value == "COMMUNITIES_MEMBER_NOTE" then
            if dropdownMenu.clubInfo == nil
                or dropdownMenu.clubMemberInfo == nil
                or (dropdownMenu.clubMemberInfo.isSelf and not dropdownMenu.clubPrivileges.canSetOwnMemberNote)
                or (not dropdownMenu.clubMemberInfo.isSelf and not dropdownMenu.clubPrivileges.canSetOtherMemberNote) then
                shown = false;
            end
        elseif value == "COMMUNITIES_ROLE" then
            if not dropdownMenu.clubAssignableRoles or #dropdownMenu.clubAssignableRoles == 0 then
                shown = false;
            end
        elseif value == "DELETE_COMMUNITIES_MESSAGE" then
            local clubId = dropdownMenu.communityClubID;
            local streamId = dropdownMenu.communityStreamID;
            if clubId and streamId and dropdownMenu.communityEpoch and dropdownMenu.communityPosition then
                local messageId = { epoch = dropdownMenu.communityEpoch, position = dropdownMenu.communityPosition };
                local function CanDestroyMessage(clubId, streamId, messageId)
                    local messageInfo = C_Club.GetMessageInfo(clubId, streamId, messageId);
                    if not messageInfo or messageInfo.destroyed then
                        return false;
                    end

                    local privileges = C_Club.GetClubPrivileges(clubId);
                    if not messageInfo.author.isSelf and not privileges.canDestroyOtherMessage then
                        return false;
                    elseif messageInfo.author.isSelf and not privileges.canDestroyOwnMessage then
                        return false;
                    end

                    return true;
                end

                if not CanDestroyMessage(clubId, streamId, messageId) then
                    shown = false;
                end
            else
                shown = false;
            end
        elseif value == "COMMUNITIES_INVITE" then
            if dropdownMenu.clubInfo then
                local privileges = C_Club.GetClubPrivileges(dropdownMenu.clubInfo.clubId);
                if not privileges.canSendInvitation then
                    shown = false;
                end
            else
                shown = false;
            end
        elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "GUILDS_INVITE" then
            if not CanGuildInvite() then
                shown = false;
            end
        elseif value == "COMMUNITIES_SETTINGS" then
            if dropdownMenu.clubInfo then
                local privileges = C_Club.GetClubPrivileges(dropdownMenu.clubInfo.clubId);
                local hasCommunitySettingsPrivilege = privileges.canSetName or privileges.canSetDescription or privileges.canSetAvatar or privileges.canSetBroadcast;
                if not hasCommunitySettingsPrivilege then
                    shown = false;
                end
            else
                shown = false;
            end
        elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "GUILDS_SETTINGS" then
            if not IsGuildLeader() then
                shown = false;
            end
        elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "GUILDS_RECRUITMENT_SETTINGS" then
            if dropdownMenu.clubInfo then
                local isPostingBanned = C_ClubFinder.IsPostingBanned(dropdownMenu.clubInfo.clubId);
                if not C_ClubFinder.IsEnabled() or C_ClubFinder.GetClubFinderDisableReason() ~= nil or (not IsGuildLeader() and not C_GuildInfo.IsGuildOfficer()) or isPostingBanned then
                    shown = false;
                end
            else
                shown = false;
            end
        elseif commandToRoleId[value] ~= nil then
            if not dropdownMenu.clubAssignableRoles or not tContains(dropdownMenu.clubAssignableRoles, commandToRoleId[value]) then
                shown = false;
            end
        elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "COPY_CHARACTER_NAME" then
            if isLocalPlayer or (playerLocation and playerLocation:IsBattleNetGUID()) then
                shown = false;
            end
        elseif value == "SET_FOCUS" then
            if not issecure() then
                shown = false;
            end
        elseif value == "CLEAR_FOCUS" then
            if not issecure() then
                shown = false;
            end
        end
        UnitPopupShown[L_UIDROPDOWNMENU_MENU_LEVEL][index] = shown and 1 or 0;
    end
end

local function UnitPopup_IsEnabled(dropdownFrame, unitPopupButton)
    if unitPopupButton.isUninteractable then
        return false;
    end

    if unitPopupButton.dist and not CheckInteractDistance(dropdownFrame.unit, unitPopupButton.dist) then
        return false;
    end

    if unitPopupButton.disabledInKioskMode and Kiosk.IsEnabled() then
        return false;
    end

    return true;
end

local function UnitPopup_OnUpdate (elapsed)
    if ( not L_DropDownList1:IsShown() ) then
        return;
    end

    if ( not UnitPopup_HasVisibleMenu() ) then
        return;
    end

    local currentDropDown = L_UIDROPDOWNMENU_OPEN_MENU;

    local inParty = IsInGroup();
    local inPublicParty = IsInGroup(LE_PARTY_CATEGORY_INSTANCE);
    local isLeader = UnitIsGroupLeader("player");
    local isAssistant = UnitIsGroupAssistant("player");
    local guid
    local playerLocation
    local isSameServer
    local isLocalPlayer
    local haveBattleTag
    local isPlayer
    local isInGroupWithPlayer
    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        guid = UnitPopup_GetGUID(currentDropDown);
        playerLocation = UnitPopup_TryCreatePlayerLocation(currentDropDown, guid);
        isSameServer = UnitPopup_IsSameServer(playerLocation, currentDropDown);
        isLocalPlayer = UnitPopup_GetIsLocalPlayer(currentDropDown);
        haveBattleTag = UnitPopup_HasBattleTag();
        isPlayer = currentDropDown.unit and UnitIsPlayer(currentDropDown.unit);
        isInGroupWithPlayer = UnitPopup_IsInGroupWithPlayer(currentDropDown);
    end

    -- dynamic difficulty
    local toggleDifficultyID;
    local _, instanceType, instanceDifficultyID, _, _, _, isDynamicInstance = GetInstanceInfo();
    if ( isDynamicInstance and CanChangePlayerDifficulty() ) then
        _, _, _, _, _, _, toggleDifficultyID = GetDifficultyInfo(instanceDifficultyID);
    end

    -- Loop through all menus and enable/disable their buttons appropriately
    local count, tempCount;
    local inInstance, instanceType = IsInInstance();
    for level, dropdownFrame in pairs(L_OPEN_DROPDOWNMENUS) do
        if ( dropdownFrame ) then
            count = 0;
            for index, value in ipairs(UnitPopupMenus[dropdownFrame.which]) do
                if ( UnitPopupShown[level][index] == 1 ) then
                    count = count + 1;
                    local enable = UnitPopup_IsEnabled(dropdownFrame, UnitPopupButtons[value]);
                    local notClickable = false;

                    if ( value == "TRADE" ) then
                        if ( UnitIsDeadOrGhost("player") or (not HasFullControl()) or UnitIsDeadOrGhost(dropdownFrame.unit) ) then
                            enable = false;
                        end
                    elseif ( value == "LEAVE" ) then
                        if ( not inParty ) then
                            enable = false;
                        end
                    elseif ( value == "INSTANCE_LEAVE" ) then
                        if ( not inParty ) then
                            enable = false;
                        end
                    elseif (WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and (value == "PVP_FLAG" or value == "PVP_ENABLE" or value == "PVP_DISABLE")) then
                        if ( C_PvP.IsWarModeActive() or (TALENT_WAR_MODE_BUTTON and TALENT_WAR_MODE_BUTTON:GetWarModeDesired()) ) then
                            enable = false;
                        end
                    elseif ( value == "UNINVITE" ) then
                        if ( not inParty or not isLeader or WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and HasLFGRestrictions() or (instanceType == "pvp") or (instanceType == "arena") ) then
                            enable = false;
                        end
                    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and (value == "INVITE" or value == "SUGGEST_INVITE" or value == "REQUEST_INVITE") ) then
                        if isInGroupWithPlayer then
                            enable = false;
                        end
                    elseif ( value == "BN_INVITE" or value == "BN_SUGGEST_INVITE" or value == "BN_REQUEST_INVITE" ) then
                        if not currentDropDown.bnetIDAccount or not CanGroupWithAccount(currentDropDown.bnetIDAccount) or WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and isInGroupWithPlayer then
                            enable = false;
                        end
                    elseif ( value == "BN_TARGET" ) then
                        if ( not currentDropDown.bnetIDAccount) then
                            enable = false;
                        else
                            if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                                if not currentDropDown.accountInfo or (currentDropDown.accountInfo.gameAccountInfo.clientProgram ~= BNET_CLIENT_WOW) or (currentDropDown.accountInfo.gameAccountInfo.wowProjectID ~= WOW_PROJECT_ID) then
                                    enable = false;
                                end
                            else
                                local _, _, _, _, _, _, client, _, _, _, _, _, _, _, _, wowProjectID = BNGetFriendInfoByID(currentDropDown.bnetIDAccount);
                                if (client ~= BNET_CLIENT_WOW or wowProjectID ~= WOW_PROJECT_ID) then
                                    enable = false;
                                end
                            end
                        end
                    elseif ( value == "VOTE_TO_KICK" ) then
                        if ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC or not inParty or not HasLFGRestrictions() ) then
                            enable = false;
                        end
                    elseif ( value == "PROMOTE" or value == "PROMOTE_GUIDE" ) then
                        if ( not inParty or not isLeader or ( dropdownFrame.unit and not UnitIsConnected(dropdownFrame.unit) ) ) then
                            enable = false;
                        end
                    elseif ( value == "WHISPER" ) then
                        if ( dropdownFrame.unit and not UnitIsConnected(dropdownFrame.unit) ) then
                            enable = false;
                        end
                    elseif ( value == "INSPECT" ) then
                        if ( UnitIsDeadOrGhost("player") ) then
                            enable = false;
                        end
                    elseif ( value == "FOLLOW" ) then
                        if ( UnitIsDead("player") ) then
                            enable = false;
                        end
                    elseif ( value == "DUEL" ) then
                        if ( UnitIsDeadOrGhost("player") or (not HasFullControl()) or UnitIsDeadOrGhost(dropdownFrame.unit) ) then
                            enable = false;
                        end
                    elseif ( value == "PET_BATTLE_PVP_DUEL" ) then
                        if ( UnitIsDeadOrGhost("player") or (not HasFullControl()) or UnitIsDeadOrGhost(dropdownFrame.unit) ) then
                            enable = false;
                        end
                    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "LOOT_METHOD" ) then
                        if ( not isLeader ) then
                            enable = false;
                        end
                    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "LOOT_PROMOTE" ) then
                        local lootMethod, partyMaster, raidMaster = GetLootMethod();
                        if ( not inParty or not isLeader or (lootMethod ~= "master") ) then
                            enable = false;
                        else
                            local masterName = 0;
                            if ( partyMaster and (partyMaster == 0) ) then
                                masterName = "player";
                            elseif ( partyMaster ) then
                                masterName = "party"..partyMaster;
                            elseif ( raidMaster ) then
                                masterName = "raid"..raidMaster;
                            end
                            if ( dropdownFrame.unit and UnitIsUnit(dropdownFrame.unit, masterName) ) then
                                enable = false;
                            end
                        end
                    elseif ( value == "DUNGEON_DIFFICULTY" and inInstance and instanceType == "raid" ) then
                        enable = false;
                    elseif ( ( strsub(value, 1, 18) == "DUNGEON_DIFFICULTY" ) and ( strlen(value) > 18 ) ) then
                        if ( ( inParty and not isLeader ) or inInstance or WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and HasLFGRestrictions() ) then
                            enable = false;
                        end
                    elseif ( value == "RAID_DIFFICULTY" ) then
                        if( inPublicParty or (inInstance and instanceType ~= "raid") ) then
                            enable = false;
                        end
                    elseif ( ( strsub(value, 1, 15) == "RAID_DIFFICULTY" ) and ( strlen(value) > 15 ) ) then
                        if ( ( inParty and not isLeader ) or inPublicParty or inInstance ) then
                            enable = false;
                        end
                        if (toggleDifficultyID) then
                            enable = CheckToggleDifficulty(toggleDifficultyID, UnitPopupButtons[value].difficultyID);
                        end
                        if (UnitPopupButtons[value].difficultyID == DIFFICULTY_PRIMARYRAID_MYTHIC and UnitLevel("player") < MAX_PLAYER_LEVEL_TABLE[LE_EXPANSION_MISTS_OF_PANDARIA]) then
                            enable = false;
                        end
                    elseif ( ( strsub(value, 1, 22) == "LEGACY_RAID_DIFFICULTY" ) and ( strlen(value) > 22 ) ) then
                        if ( ( inParty and not isLeader ) or inPublicParty or inInstance or GetRaidDifficultyID() == DIFFICULTY_PRIMARYRAID_MYTHIC ) then
                            enable = false;
                        end
                        if (toggleDifficultyID) then
                            if (IsLegacyDifficulty(toggleDifficultyID)) then
                                notClickable = CheckToggleDifficulty(toggleDifficultyID, UnitPopupButtons[value].difficultyID);
                            end
                            enable = false;
                        end
                    elseif ( value == "CONVERT_TO_PARTY" ) then
                        if ( GetNumGroupMembers() > MEMBERS_PER_RAID_GROUP ) then
                            enable = false;
                        end
                    elseif ( value == "RESET_INSTANCES" ) then
                        if ( ( inParty and not isLeader ) or inInstance or WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and HasLFGRestrictions() ) then
                            enable = false;
                        end
                    elseif ( value == "RESET_CHALLENGE_MODE" ) then
                        local _, _, energized = C_ChallengeMode.GetActiveKeystoneInfo();
                        if (energized) then
                            enable = false;
                        end
                    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "RAF_SUMMON" ) then
                        if( not CanSummonFriend(dropdownFrame.unit) ) then
                            enable = false;
                        end
                    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and value == "RAF_GRANT_LEVEL" ) then
                        if( not CanGrantLevel(dropdownFrame.unit) ) then
                            enable = false;
                        end
                    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "SET_ROLE_TANK" ) then
                        local canBeTank, canBeHealer, canBeDamager = UnitGetAvailableRoles(dropdownFrame.unit);
                        if ( not canBeTank ) then
                            enable = false;
                        end
                    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "SET_ROLE_HEALER" ) then
                        local canBeTank, canBeHealer, canBeDamager = UnitGetAvailableRoles(dropdownFrame.unit);
                        if ( not canBeHealer ) then
                            enable = false;
                        end
                    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "SET_ROLE_DAMAGER" ) then
                        local canBeTank, canBeHealer, canBeDamager = UnitGetAvailableRoles(dropdownFrame.unit);
                        if ( not canBeDamager ) then
                            enable = false;
                        end
                    elseif ( value == "BATTLETAG_FRIEND" ) then
                        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                            if ( not UnitPopup_CanAddBNetFriend(currentDropDown, isLocalPlayer, haveBattleTag, isPlayer) or not BNFeaturesEnabledAndConnected()) then
                                enable = false;
                            end
                        else
                            if ( not BNFeaturesEnabledAndConnected() ) then
                                enable = false;
                            end
                        end
                    elseif ( value == "GUILD_BATTLETAG_FRIEND" ) then
                        -- the unit popup menu cannot handle colors of options that can be disabled
                        if ( not BNFeaturesEnabledAndConnected() ) then
                            enable = false;
                        end
                    elseif ( value == "CHARACTER_FRIEND" ) then
                        if ( L_UIDROPDOWNMENU_INIT_MENU.unit ~= nil ) then
                            if ( not UnitCanCooperate("player", L_UIDROPDOWNMENU_INIT_MENU.unit) ) then
                                enable = false;
                            else
                                -- disable if player is from another realm or already on friends list
                                if ( not UnitIsSameServer(L_UIDROPDOWNMENU_INIT_MENU.unit) or C_FriendList.GetFriendInfo(UnitName(L_UIDROPDOWNMENU_INIT_MENU.unit)) ) then
                                    enable = false;
                                end
                            end
                        elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
                            if currentDropDown.clubMemberInfo then
                                if not isSameServer or C_FriendList.GetFriendInfo(currentDropDown.clubMemberInfo.name) then
                                    enable = false;
                                end
                            elseif not isSameServer or not currentDropDown.accountInfo or not currentDropDown.accountInfo.gameAccountInfo.characterName or C_FriendList.GetFriendInfo(currentDropDown.accountInfo.gameAccountInfo.characterName) then
                                enable = false;
                            end
                        end
                    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and value == "RAF_SUMMON" ) then
                        if not guid then
                            enable = false;
                        end
                    end

                    local diff = (level > 1) and 0 or 1;

                    if ( UnitPopupButtons[value].isSubsectionTitle ) then
                        --If the button is a title then it has a separator above it that is not in UnitPopupButtons.
                        --So 1 extra is added to each count because UnitPopupButtons does not count the separators and
                        --the DropDown does.
                        tempCount = count + diff;
                        count = count + 1;
                    else
                        tempCount = count + diff;
                    end

                    if ( enable) then
                        L_UIDropDownMenu_EnableButton(level, tempCount);
                    else
                        if (notClickable == 1) then
                            L_UIDropDownMenu_SetButtonNotClickable(level, tempCount);
                        else
                            L_UIDropDownMenu_SetButtonClickable(level, tempCount);
                        end
                        L_UIDropDownMenu_DisableButton(level, tempCount);
                    end
                end
            end
        end
    end
end

function UnitPopup_OnClick (self)
    local dropdownFrame = L_UIDROPDOWNMENU_INIT_MENU;
    local button = self.value;
    local unit = dropdownFrame.unit;
    local name = dropdownFrame.name;
    local server = dropdownFrame.server;
    local fullname = name;
    local clubInfo = dropdownFrame.clubInfo;
    local clubMemberInfo = dropdownFrame.clubMemberInfo;

    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
        if dropdownFrame.isRafRecruit and dropdownFrame.accountInfo.gameAccountInfo.characterName and dropdownFrame.accountInfo.gameAccountInfo.realmName then
            fullname = dropdownFrame.accountInfo.gameAccountInfo.characterName.."-"..dropdownFrame.accountInfo.gameAccountInfo.realmName;
        elseif ( server and ((not unit and GetNormalizedRealmName() ~= server) or (unit and UnitRealmRelationship(unit) ~= LE_REALM_RELATION_SAME)) ) then
            fullname = name.."-"..server;
        end
    else
        if ( server and ((not unit and GetNormalizedRealmName() ~= server) or (unit and UnitRealmRelationship(unit) ~= LE_REALM_RELATION_SAME)) ) then
            fullname = name.."-"..server;
        end
    end

    local guid = UnitPopup_GetGUID(dropdownFrame);
    local playerLocation = UnitPopup_TryCreatePlayerLocation(dropdownFrame, guid);

    local inParty = IsInGroup();
    local isLeader = UnitIsGroupLeader("player");
    local isAssistant = UnitIsGroupAssistant("player");

    if ( button == "TRADE" ) then
        InitiateTrade(unit);
    elseif ( button == "WHISPER" ) then
        local isBNetAccount
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            isBNetAccount = dropdownFrame.bnetIDAccount or (dropdownFrame.playerLocation and dropdownFrame.playerLocation:IsBattleNetGUID());
        else
            isBNetAccount = dropdownFrame.bnetIDAccount
        end
        if ( isBNetAccount  ) then
            ChatFrame_SendBNetTell(fullname);
        else
            ChatFrame_SendTell(fullname, dropdownFrame.chatFrame);
        end
    elseif ( button == "INSPECT" ) then
        InspectUnit(unit);
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "ACHIEVEMENTS" ) then
        InspectAchievements(unit);
    elseif ( button == "TARGET" ) then
        TargetUnit(fullname, true);
    elseif ( button == "IGNORE" ) then
        C_FriendList.AddOrDelIgnore(fullname);
    elseif ( button == "REPORT_SPAM" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            C_ReportSystem.OpenReportPlayerDialog(PLAYER_REPORT_TYPE_SPAM, fullname, playerLocation);
        else
            PlayerReportFrame:InitiateReport(PLAYER_REPORT_TYPE_SPAM, fullname, playerLocation)
        end
    elseif ( button == "REPORT_BAD_LANGUAGE" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            C_ReportSystem.OpenReportPlayerDialog(PLAYER_REPORT_TYPE_LANGUAGE, fullname, playerLocation);
        else
            PlayerReportFrame:InitiateReport(PLAYER_REPORT_TYPE_LANGUAGE, fullname, playerLocation)
        end
    elseif ( button == "REPORT_BAD_NAME" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            C_ReportSystem.OpenReportPlayerDialog(PLAYER_REPORT_TYPE_BAD_PLAYER_NAME, fullname, playerLocation);
        else
            PlayerReportFrame:InitiateReport(PLAYER_REPORT_TYPE_BAD_PLAYER_NAME, fullname, playerLocation)
        end
    elseif ( button == "REPORT_BAD_GUILD_NAME" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            C_ReportSystem.OpenReportPlayerDialog(PLAYER_REPORT_TYPE_BAD_GUILD_NAME, fullname, playerLocation);
        else
            PlayerReportFrame:InitiateReport(PLAYER_REPORT_TYPE_BAD_GUILD_NAME, fullname, playerLocation)
        end
    elseif ( button == "REPORT_PET" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            C_ReportSystem.SetPendingReportPetTarget(unit);
        else
            SetPendingReportPetTarget(unit);
        end
        StaticPopup_Show("CONFIRM_REPORT_PET_NAME", fullname);
    elseif ( button == "REPORT_BATTLE_PET" ) then
        C_PetBattles.SetPendingReportTargetFromUnit(unit);
        StaticPopup_Show("CONFIRM_REPORT_BATTLEPET_NAME", fullname);
    elseif ( button == "REPORT_CHEATING" ) then
        HelpFrame_ShowReportCheatingDialog(playerLocation);
    elseif ( button == "POP_OUT_CHAT" ) then
        FCF_OpenTemporaryWindow(dropdownFrame.chatType, dropdownFrame.chatTarget, dropdownFrame.chatFrame, true);
    elseif ( button == "DUEL" ) then
        StartDuel(unit, true);
    elseif ( button == "PET_BATTLE_PVP_DUEL" ) then
        C_PetBattles.StartPVPDuel(unit, true);
    elseif ( button == "INVITE" or button == "SUGGEST_INVITE" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            TryInvite(dropdownFrame, button, fullname);
        else
            InviteToGroup(fullname);
        end
    elseif ( button == "REQUEST_INVITE" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            TryInvite(dropdownFrame, button, fullname);
        else
            RequestInviteFromUnit(fullname);
        end
    elseif ( button == "UNINVITE" or button == "VOTE_TO_KICK" ) then
        UninviteUnit(fullname, nil, 1);
    elseif ( button == "REMOVE_FRIEND" ) then
        if(not C_FriendList.RemoveFriend(fullname)) then
            UIErrorsFrame:AddExternalErrorMessage(ERR_FRIEND_NOT_FOUND);
        end
    elseif ( button == "SET_NOTE" ) then
        FriendsFrame.NotesID = fullname;
        StaticPopup_Show("SET_FRIENDNOTE", fullname);
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE);
    elseif ( button == "BN_REMOVE_FRIEND" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            if dropdownFrame.accountInfo then
                local promptText;
                if dropdownFrame.accountInfo.isBattleTagFriend then
                    promptText = string.format(BATTLETAG_REMOVE_FRIEND_CONFIRMATION, dropdownFrame.accountInfo.accountName);
                else
                    promptText = string.format(REMOVE_FRIEND_CONFIRMATION, dropdownFrame.accountInfo.accountName);
                end
                local dialog = StaticPopup_Show("CONFIRM_REMOVE_FRIEND", promptText, nil, dropdownFrame.accountInfo.bnetAccountID);
            end
        else
            local bnetIDAccount, accountName, _, isBattleTag = BNGetFriendInfoByID(dropdownFrame.bnetIDAccount);
            if ( bnetIDAccount ) then
                local promptText;
                if ( isBattleTag ) then
                    promptText = string.format(BATTLETAG_REMOVE_FRIEND_CONFIRMATION, accountName);
                else
                    promptText = string.format(REMOVE_FRIEND_CONFIRMATION, accountName);
                end
                local dialog = StaticPopup_Show("CONFIRM_REMOVE_FRIEND", promptText, nil, bnetIDAccount);
            end
        end
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "BN_ADD_FAVORITE" ) then
        local accountId = dropdownFrame.bnetIDAccount;
        if accountId then
            BNSetFriendFavoriteFlag(accountId, true);
        end
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "BN_REMOVE_FAVORITE" ) then
        local accountId = dropdownFrame.bnetIDAccount;
        if accountId then
            BNSetFriendFavoriteFlag(accountId, false);
        end
    elseif ( button == "BN_SET_NOTE" ) then
        FriendsFrame.NotesID = dropdownFrame.bnetIDAccount;
        StaticPopup_Show("SET_BNFRIENDNOTE", fullname);
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE);
    elseif ( button == "BN_VIEW_FRIENDS" ) then
        FriendsFriendsFrame_Show(dropdownFrame.bnetIDAccount);
    elseif ( button == "BN_INVITE" or button == "BN_SUGGEST_INVITE" or button == "BN_REQUEST_INVITE" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            TryBNInvite(dropdownFrame);
        else
            FriendsFrame_BattlenetInvite(nil, dropdownFrame.bnetIDAccount);
        end
    elseif ( button == "BN_TARGET" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            if dropdownFrame.accountInfo and dropdownFrame.accountInfo.gameAccountInfo.characterName then
                TargetUnit(dropdownFrame.accountInfo.gameAccountInfo.characterName);
            end
        else
            local bnetIDAccount, accountName, battleTag, isBattleTag, characterName = BNGetFriendInfoByID(dropdownFrame.bnetIDAccount);
            if ( characterName ) then
                TargetUnit(characterName);
            end
        end
    elseif ( button == "PROMOTE" or button == "PROMOTE_GUIDE" ) then
        PromoteToLeader(unit, 1);
    elseif ( button == "GUILD_PROMOTE" ) then
        local dialog = StaticPopup_Show("CONFIRM_GUILD_PROMOTE", fullname);
        dialog.data = fullname;
    elseif ( button == "GUILD_LEAVE" ) then
        local guildName = GetGuildInfo("player");
        StaticPopup_Show("CONFIRM_GUILD_LEAVE", guildName);
    elseif ( button == "LEAVE" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            C_PartyInfo.LeaveParty();
        else
            LeaveParty();
        end
    elseif ( button == "INSTANCE_LEAVE" ) then
        ConfirmOrLeaveLFGParty();
    elseif ( button == "PET_DISMISS" ) then
        if ( PetCanBeAbandoned() ) then
            CastSpellByID(HUNTER_DISMISS_PET);
        else
            PetDismiss();
        end
    elseif ( button == "PET_ABANDON" ) then
        StaticPopup_Show("ABANDON_PET");
    elseif ( button == "PET_RENAME" ) then
        StaticPopup_Show("RENAME_PET");
    elseif ( button == "PET_SHOW_IN_JOURNAL" ) then
        if (not CollectionsJournal) then
            CollectionsJournal_LoadUI();
        end
        if (not CollectionsJournal:IsShown()) then
            ShowUIPanel(CollectionsJournal);
        end
        CollectionsJournal_SetTab(CollectionsJournal, 2);
        PetJournal_SelectSpecies(PetJournal, UnitBattlePetSpeciesID(unit));
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "FREE_FOR_ALL" ) then
        SetLootMethod("freeforall");
        L_UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
        L_UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "ROUND_ROBIN" ) then
        SetLootMethod("roundrobin");
        L_UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
        L_UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "MASTER_LOOTER" ) then
        SetLootMethod("master", fullname, 2);
        L_UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
        L_UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "GROUP_LOOT" ) then
        SetLootMethod("group");
        L_UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
        L_UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "NEED_BEFORE_GREED" ) then
        SetLootMethod("needbeforegreed");
        L_UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
        L_UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "OPT_OUT_LOOT_ENABLE" ) then
        SetOptOutOfLoot(1);
        L_CloseDropDownMenus()
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "OPT_OUT_LOOT_DISABLE" ) then
        SetOptOutOfLoot(nil);
        L_CloseDropDownMenus();
    elseif ( strsub(button, 1, 20) == "LOOT_SPECIALIZATION_" ) then
        SetLootSpecialization(UnitPopupButtons[button].specializationID);
    elseif ( strsub(button, 1, 18) == "DUNGEON_DIFFICULTY" and (strlen(button) > 18) ) then
        local dungeonDifficultyID = UnitPopupButtons[button].difficultyID;
        SetDungeonDifficultyID(dungeonDifficultyID);
    elseif ( strsub(button, 1, 15) == "RAID_DIFFICULTY" and (strlen(button) > 15)) then
        local raidDifficultyID = UnitPopupButtons[button].difficultyID;
        SetRaidDifficulties(true, raidDifficultyID);
    elseif ( strsub(button, 1, 22) == "LEGACY_RAID_DIFFICULTY" and (strlen(button) > 22)) then
        local raidDifficultyID = UnitPopupButtons[button].difficultyID;
        SetRaidDifficulties(false, raidDifficultyID);
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "LOOT_PROMOTE" ) then
        SetLootMethod("master", fullname, 2);
    elseif ( button == "PVP_ENABLE" ) then
        SetPVP(1);
    elseif ( button == "PVP_DISABLE" ) then
        SetPVP(nil);
    elseif ( button == "CONVERT_TO_RAID" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            C_PartyInfo.ConvertToRaid();
        else
            ConvertToRaid();
        end
    elseif ( button == "CONVERT_TO_PARTY" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            C_PartyInfo.ConvertToParty();
        else
            ConvertToParty();
        end
    elseif ( button == "RESET_INSTANCES" ) then
        StaticPopup_Show("CONFIRM_RESET_INSTANCES");
    elseif ( button == "RESET_CHALLENGE_MODE" ) then
        StaticPopup_Show("CONFIRM_RESET_CHALLENGE_MODE");
    elseif ( button == "FOLLOW" ) then
        FollowUnit(fullname, true);
    elseif ( button == "RAID_LEADER" ) then
        PromoteToLeader(fullname, true)
    elseif ( button == "RAID_PROMOTE" ) then
        PromoteToAssistant(fullname, true);
    elseif ( button == "RAID_DEMOTE" ) then
        if ( isLeader and UnitIsGroupAssistant(unit) ) then
            DemoteAssistant(fullname, true);
        end
        if ( GetPartyAssignment("MAINTANK", fullname, true) ) then
            ClearPartyAssignment("MAINTANK", fullname, true);
        elseif ( GetPartyAssignment("MAINASSIST", fullname, true) ) then
            ClearPartyAssignment("MAINASSIST", fullname, true);
        end
    elseif ( button == "RAID_MAINTANK" ) then
        SetPartyAssignment("MAINTANK", fullname, true);
    elseif ( button == "RAID_MAINASSIST" ) then
        SetPartyAssignment("MAINASSIST", fullname, true);
    elseif ( button == "RAID_REMOVE" ) then
        UninviteUnit(fullname, nil, 1);
    elseif ( button == "PVP_REPORT_AFK" ) then
        ReportPlayerIsPVPAFK(fullname);
    elseif ( button == "RAF_SUMMON" ) then
        if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            SummonFriend(guid, fullname);
        else
            SummonFriend(unit)
        end
    elseif ( WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and button == "RAF_GRANT_LEVEL" ) then
        local isAlliedRace = UnitAlliedRaceInfo(unit);
        if (isAlliedRace) then
            StaticPopup_Show("RAF_GRANT_LEVEL_ALLIED_RACE", nil, nil, unit);
        else
            GrantLevel(unit);
        end
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "RAF_REMOVE_RECRUIT" ) then
        StaticPopup_Show("CONFIRM_RAF_REMOVE_RECRUIT", dropdownFrame.name, nil, dropdownFrame.wowAccountGUID);
    elseif ( button == "ITEM_QUALITY2_DESC" or button == "ITEM_QUALITY3_DESC" or button == "ITEM_QUALITY4_DESC" ) then
        local id = self:GetID()+1;
        SetLootThreshold(id);
        L_UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text, ITEM_QUALITY_COLORS[id].hex);
    elseif ( strsub(button, 1, 12) == "RAID_TARGET_" and button ~= "RAID_TARGET_ICON" ) then
        local raidTargetIndex = strsub(button, 13);
        if ( raidTargetIndex == "NONE" ) then
            raidTargetIndex = 0;
        end
        SetRaidTargetIcon(unit, tonumber(raidTargetIndex));
    elseif ( button == "CHAT_PROMOTE" ) then
        ChannelModerator(dropdownFrame.channelName, fullname);
    elseif ( button == "CHAT_DEMOTE" ) then
        ChannelUnmoderator(dropdownFrame.channelName, fullname);
    elseif ( button == "CHAT_OWNER" ) then
        SetChannelOwner(dropdownFrame.channelName, fullname);
    elseif ( button == "CHAT_KICK" ) then
        ChannelKick(dropdownFrame.channelName, fullname);
    elseif ( button == "CHAT_BAN" ) then
        ChannelBan(dropdownFrame.channelName, fullname);
    elseif ( button == "VEHICLE_LEAVE" ) then
        VehicleExit();
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "SET_FOCUS" ) then
        FocusUnit(unit);
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "CLEAR_FOCUS" ) then
        ClearFocus(unit);
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "LOCK_FOCUS_FRAME" ) then
        FocusFrame_SetLock(true);
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "UNLOCK_FOCUS_FRAME" ) then
        FocusFrame_SetLock(false);
    elseif ( button == "LOCK_PLAYER_FRAME" ) then
        PlayerFrame_SetLocked(true);
    elseif ( button == "UNLOCK_PLAYER_FRAME" ) then
        PlayerFrame_SetLocked(false);
    elseif ( button == "LOCK_TARGET_FRAME" ) then
        TargetFrame_SetLocked(true);
    elseif ( button == "UNLOCK_TARGET_FRAME" ) then
        TargetFrame_SetLocked(false);
    elseif ( button == "RESET_PLAYER_FRAME_POSITION" ) then
        PlayerFrame_ResetUserPlacedPosition();
    elseif ( button == "RESET_TARGET_FRAME_POSITION" ) then
        TargetFrame_ResetUserPlacedPosition();
    elseif ( button == "TARGET_FRAME_BUFFS_ON_TOP" ) then
        TARGET_FRAME_BUFFS_ON_TOP = not TARGET_FRAME_BUFFS_ON_TOP;
        TargetFrame_UpdateBuffsOnTop();
    elseif ( button == "FOCUS_FRAME_BUFFS_ON_TOP" ) then
        FOCUS_FRAME_BUFFS_ON_TOP = not FOCUS_FRAME_BUFFS_ON_TOP;
        FocusFrame_UpdateBuffsOnTop();
    elseif ( button == "LARGE_FOCUS" ) then
        local setting = GetCVarBool("fullSizeFocusFrame");
        setting = not setting;
        SetCVar("fullSizeFocusFrame", setting and "1" or "0" )
        FocusFrame_SetSmallSize(not setting, true);
    elseif ( button == "PLAYER_FRAME_SHOW_CASTBARS" ) then
        PLAYER_FRAME_CASTBARS_SHOWN = not PLAYER_FRAME_CASTBARS_SHOWN;
        if ( PLAYER_FRAME_CASTBARS_SHOWN ) then
            PlayerFrame_AttachCastBar();
        else
            PlayerFrame_DetachCastBar();
        end
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and strsub(button, 1, 9) == "SET_ROLE_" ) then
        UnitSetRole(dropdownFrame.unit, strsub(button, 10));
    elseif ( button == "ADD_FRIEND" or button == "CHARACTER_FRIEND" ) then
        C_FriendList.AddFriend(fullname);
    elseif ( button == "BATTLETAG_FRIEND" ) then
        local _, battleTag = BNGetInfo();
        if ( not battleTag ) then
            StaticPopupSpecial_Show(CreateBattleTagFrame);
        elseif ( clubInfo ~= nil and clubMemberInfo ~= nil ) then
            C_Club.SendBattleTagFriendRequest(clubInfo.clubId, clubMemberInfo.memberId);
        elseif WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and dropdownFrame.accountInfo then
            BNSendFriendInvite(dropdownFrame.accountInfo.battleTag);
        else
            BNCheckBattleTagInviteToUnit(unit);
        end
        L_CloseDropDownMenus();
    elseif ( button == "GUILD_BATTLETAG_FRIEND" ) then
        local _, battleTag = BNGetInfo();
        if ( not battleTag ) then
            StaticPopupSpecial_Show(CreateBattleTagFrame);
        else
            BNCheckBattleTagInviteToGuildMember(fullname);
        end
        L_CloseDropDownMenus();
    elseif ( button == "GARRISON_VISIT" ) then
        C_Garrison.SetUsingPartyGarrison( not C_Garrison.IsUsingPartyGarrison());
    elseif ( button == "VOICE_CHAT_SETTINGS" ) then
        ChannelFrame:ToggleVoiceSettings();
    elseif ( button == "COMMUNITIES_LEAVE" ) then
        if (#C_Club.GetClubMembers(clubInfo.clubId) == 1) then
            StaticPopup_Show("CONFIRM_LEAVE_AND_DESTROY_COMMUNITY", nil, nil, clubInfo);
        elseif (clubMemberInfo.isSelf and clubMemberInfo.role == Enum.ClubRoleIdentifier.Owner) then
            UIErrorsFrame:AddMessage(COMMUNITIES_LIST_TRANSFER_OWNERSHIP_FIRST, RED_FONT_COLOR:GetRGBA());
        else
            StaticPopup_Show("CONFIRM_LEAVE_COMMUNITY", nil, nil, clubInfo);
        end
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "GUILDS_LEAVE" ) then
        local guildName = GetGuildInfo("player");
        StaticPopup_Show("CONFIRM_GUILD_LEAVE", guildName);
    elseif ( button == "COMMUNITIES_BATTLETAG_FRIEND" ) then
        C_Club.SendBattleTagFriendRequest(clubInfo.clubId, clubMemberInfo.memberId);
    elseif ( button == "COMMUNITIES_KICK" ) then
        StaticPopup_Show("CONFIRM_REMOVE_COMMUNITY_MEMBER", nil, nil, { clubType = clubInfo.clubType, name = clubMemberInfo.name, clubId = clubInfo.clubId, memberId = clubMemberInfo.memberId });
    elseif ( button == "COMMUNITIES_MEMBER_NOTE" ) then
        StaticPopup_Show("SET_COMMUNITY_MEMBER_NOTE", clubMemberInfo.name, nil, { clubId = clubInfo.clubId, memberId = clubMemberInfo.memberId });
    elseif ( button == "COMMUNITIES_FAVORITE" ) then
        CommunitiesFrame.CommunitiesList:SetFavorite(clubInfo.clubId, clubInfo.favoriteTimeStamp == nil);
    elseif ( button == "COMMUNITIES_INVITE" or WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "GUILDS_INVITE") then
        local streams = C_Club.GetStreams(clubInfo.clubId);
        local defaultStreamId = #streams > 0 and streams[1] or nil;
        for i, stream in ipairs(streams) do
            if stream.streamType == Enum.ClubStreamType.General or stream.streamType == Enum.ClubStreamType.Guild then
                defaultStreamId = stream.streamId;
                break;
            end
        end

        if defaultStreamId then
            CommunitiesUtil.OpenInviteDialog(clubInfo.clubId, defaultStreamId);
        end
    elseif ( button == "COMMUNITIES_SETTINGS" ) then
        OpenCommunitiesSettingsDialog(clubInfo.clubId);
    elseif (WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "GUILDS_SETTINGS") then
        if ( not GuildControlUI ) then
            UIParentLoadAddOn("Blizzard_GuildControlUI");
        end

        local wasShown = GuildControlUI:IsShown();
        if not wasShown then
            ShowUIPanel(GuildControlUI);
        end
    elseif (WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "GUILDS_RECRUITMENT_SETTINGS") then
        CommunitiesFrame.RecruitmentDialog.clubId = clubInfo.clubId;
        CommunitiesFrame.RecruitmentDialog.clubName = clubInfo.name;
        CommunitiesFrame.RecruitmentDialog:UpdatedPostingInformationInit();
    elseif ( button == "COMMUNITIES_NOTIFICATION_SETTINGS" ) then
        CommunitiesFrame:ShowNotificationSettingsDialog(clubInfo.clubId);
    elseif ( button == "COMMUNITIES_CLEAR_UNREAD_NOTIFICATIONS" ) then
        CommunitiesUtil.ClearAllUnreadNotifications(clubInfo.clubId);
    elseif ( button == "DELETE_COMMUNITIES_MESSAGE" ) then
        C_Club.DestroyMessage(dropdownFrame.communityClubID, dropdownFrame.communityStreamID, { epoch = dropdownFrame.communityEpoch, position = dropdownFrame.communityPosition });
    elseif ( commandToRoleId[button] ~= nil ) then
        C_Club.AssignMemberRole(clubInfo.clubId, clubMemberInfo.memberId, commandToRoleId[button]);
    elseif ( WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC and button == "COPY_CHARACTER_NAME" ) then
        CopyToClipboard(name);
    end

    PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
end

UIParent:HookScript("OnUpdate", function(self, elapsed)
    UnitPopup_OnUpdate(elapsed)
end)

hooksecurefunc("ToggleDropDownMenu", L_CloseDropDownMenus)
hooksecurefunc("CloseDropDownMenus", L_CloseDropDownMenus)
