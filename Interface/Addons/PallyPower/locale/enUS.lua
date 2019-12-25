local L = LibStub("AceLocale-3.0"):NewLocale("PallyPower", "enUS", true, false)
if not L then return end
L["AURA"] = "Aura Button"
L["AURA_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Aura Button or select the Aura you want to track."
L["AURABTN"] = "Aura Button"
L["AURABTN_DESC"] = "[Enable/Disable] The Aura Button"
L["AURATRACKER"] = "Aura Tracker"
L["AURATRACKER_DESC"] = "Select the Aura you want to track"
L["AUTO"] = "Auto Buff Button"
L["AUTO_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Auto Buff Button or [|cffffd200Enable|r/|cffffd200Disable|r] Wait for Players."
L["AUTOASSIGN"] = "Auto-Assign"
L["AUTOASSIGN_DESC"] = [=[Auto-Assign all Blessings based on
the number of available Paladins
and their available Blessings.

|cffffffff[Shift-Left-Click]|r Use Battleground
assignment template instead of Raid
assignement template.]=]
L["AUTOBTN"] = "Auto Buff Button"
L["AUTOBTN_DESC"] = "[Enable/Disable] The Auto Buff Button"
L["AUTOKEY1"] = "Auto Normal Blessing Key"
L["AUTOKEY1_DESC"] = "Key Binding for automated buffing of normal blessings."
L["AUTOKEY2"] = "Auto Greater Blessing Key"
L["AUTOKEY2_DESC"] = "Key Binding for automated buffing of greater blessings."
L["BRPT"] = "Blessings Report"
L["BRPT_DESC"] = [=[Report all Blessing 
assignments to the 
Raid or Party channel.]=]
L["BSC"] = "Buff Scale"
L["BSC_DESC"] = "Set the Buff Bar scale"
L["BUTTONS"] = "Buttons"
L["BUTTONS_DESC"] = "Change the button settings"
L["CLASSBTN"] = "Class Buttons"
L["CLASSBTN_DESC"] = "If this option is disabled it will also disable the Player Buttons and you will only be able to buff using the Auto Buff button."
L["CPBTNS"] = "Class & Player Buttons"
L["CPBTNS_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Player(s) or Class Buttons."
L["DISPEDGES"] = "Borders"
L["DISPEDGES_DESC"] = "Change the Button Borders"
L["DRAG"] = "Drag Handle Button"
L["DRAG_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Drag Handle Button."
L["DRAGHANDLE"] = [=[|cffffffff[Left-Click]|r |cffff0000Lock|r/|cff00ff00Unlock|r PallyPower 
|cffffffff[Left-Click-Hold]|r Move PallyPower 
|cffffffff[Right-Click]|r Open Blessing Assignments 
|cffffffff[Shift-Right-Click]|r Open Options]=]
L["DRAGHANDLE_ENABLED"] = "Drag Handle"
L["DRAGHANDLE_ENABLED_DESC"] = "[Enable/Disable] The Drag Handle"
L["FREEASSIGN"] = "Free Assignment"
L["FREEASSIGN_DESC"] = [=[Allow others to change your 
blessings without being Party 
Leader / Raid Assistant.]=]
L["Fully Buffed"] = "Fully Buffed"
L["HorLeftDown"] = "Horizontal Left | Down"
L["HorLeftUp"] = "Horizontal Left | Up"
L["HorRightDown"] = "Horizontal Right | Down"
L["HorRightUp"] = "Horizontal Right | Up"
L["LAYOUT"] = "Buff Button | Player Button Layout"
L["LAYOUT_DESC"] = [=[Vertical [Left/Right] 
Horizontal [Up/Down]]=]
L["MAINASSISTANT"] = "Auto-Buff Main Assistant"
L["MAINASSISTANT_DESC"] = "If you enable this option PallyPower will automatically over-write a Greater Blessing with a Normal Blessing on players marked with the |cffffd200Main Assistant|r role in the Blizzard Raid Panel. This is useful to avoid blessing the |cffffd200Main Assistant|r role with a Greater Blessing of Salvation."
L["MAINASSISTANTGBUFFDP"] = "Override Druids / Paladins..."
L["MAINASSISTANTGBUFFDP_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Druids / Paladins."
L["MAINASSISTANTGBUFFW"] = "Override Warriors..."
L["MAINASSISTANTGBUFFW_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Warriors."
L["MAINASSISTANTNBUFFDP"] = "...with Normal..."
L["MAINASSISTANTNBUFFDP_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Druids / Paladins."
L["MAINASSISTANTNBUFFW"] = "...with Normal..."
L["MAINASSISTANTNBUFFW_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Warriors."
L["MAINROLES"] = "Main Tank / Main Assist Roles"
L["MAINROLES_DESC"] = [=[These options can be used to automatically assign alternate Normal Blessings for any Greater Blessing assigned to Warriors, Druids or Paladins |cffff0000only|r. 

Normally the Main Tank and the Main Assist roles have been used to identify Main Tanks and Off-Tanks (Main Assist) however, some guilds assign the Main Tank role to both Main Tanks and Off-Tanks and assign the Main Assist role to Healers. 

By having a separate setting for both roles it will allow Paladin Class Leaders or Raid Leaders to remove, as an example, Greater Blessing of Salvation from Tanking classes or if Druid or Paladin Healers are marked with the Main Assist role they could be setup to get Normal Blessing of Wisdom vs Greater Blessing of Might which would allow assigning Greater Blessing of Might for DPS spec'd Druids and Paladins and Normal Blessing of Wisdom to Healing spec'd Druids and Paladins. 

|cffffff00Note: When there are 5 or more Paladins in a Raid (enough to assign all the Greater Blessings), these settings will automatically be disabled. Tanking Classes will have to manually switch off Blessing of Salvation.|r
]=]
L["MAINTANK"] = "Auto-Buff Main Tank"
L["MAINTANK_DESC"] = "If you enable this option PallyPower will automatically over-write a Greater Blessing with a Normal Blessing on players marked with the |cffffd200Main Tank|r role in the Blizzard Raid Panel. This is useful to avoid blessing the |cffffd200Main Tank|r role with a Greater Blessing of Salvation."
L["MAINTANKGBUFFDP"] = "Override Druids / Paladins..."
L["MAINTANKGBUFFDP_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Druids / Paladins."
L["MAINTANKGBUFFW"] = "Override Warriors..."
L["MAINTANKGBUFFW_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Warriors."
L["MAINTANKNBUFFDP"] = "...with Normal..."
L["MAINTANKNBUFFDP_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Druids / Paladins."
L["MAINTANKNBUFFW"] = "...with Normal..."
L["MAINTANKNBUFFW_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Warriors."
L["None"] = "None"
L["None Buffed"] = "None Buffed"
L["OPTIONS"] = "Options"
L["OPTIONS_DESC"] = [=[Opens the PallyPower 
addon options panel.]=]
L["Partially Buffed"] = "Partially Buffed"
L["PLAYERBTNS"] = "Player Buttons"
L["PLAYERBTNS_DESC"] = "If this option is disabled then you will no longer see the pop out buttons showing individual players and you will not be able to reapply Normal Blessings while in combat."
L["PP_CLEAR"] = "Clear"
L["PP_CLEAR_DESC"] = [=[Clears all Blessing 
assignments for Self, 
Party, and Raid Paladins.]=]
L["PP_COLOR"] = "Change the status colors of the buff buttons"
L["PP_LOOKS"] = "Change the way PallyPower looks"
L["PP_NAME"] = "PallyPower"
L["PP_RAS1"] = "--- Paladin assignments ---"
L["PP_RAS2"] = "--- End of assignments ---"
L["PP_RAS3"] = "WARNING: There are more than 5 Paladins in raid."
L["PP_RAS4"] = "Tanks, manually switch off Blessing of Salvation!"
L["PP_REFRESH"] = "Refresh"
L["PP_REFRESH_DESC"] = [=[Refreshes all Blessing 
assignments, Talents, and 
Symbol of Kings among Self, 
Party, and Raid Paladins.]=]
L["PP_RESET"] = "Just in case you mess up"
L["PP_SHOW"] = "When to show PallyPower"
L["RAID"] = "Raid"
L["RAID_DESC"] = "Raid only options"
L["RESET"] = "Reset Frames"
L["RESET_DESC"] = "Reset all PallyPower frames back to center"
L["RESIZEGRIP"] = [=[Left-Click-Hold to resize 
Right-Click resets default size]=]
L["RFM"] = "Righteous Fury"
L["RFM_DESC"] = "[Enable/Disable] Righteous Fury"
L["SEAL"] = "Seal Button"
L["SEAL_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Seal Button, Enable/Disable Righteous Fury or select the Seal you want to track."
L["SEALBTN"] = "Seal Button"
L["SEALBTN_DESC"] = "[Enable/Disable] The Aura Button"
L["SEALTRACKER"] = "Seal Tracker"
L["SEALTRACKER_DESC"] = "Select the Seal you want to track"
L["SETTINGS"] = "Settings"
L["SETTINGS_DESC"] = "Change global settings"
L["SHOWGLOBAL"] = "Show Globally"
L["SHOWGLOBAL_DESC"] = "[Show/Hide] PallyPower"
L["SHOWPARTY"] = "Show in Party"
L["SHOWPARTY_DESC"] = "[Show/Hide] PallyPower in a Party"
L["SHOWPETS"] = "Show Pets"
L["SHOWPETS_DESC"] = [=[If you enable this option pets will appear under their own class.

|cffffff00Note: Due to the way Greater Blessings work and the way that pets are classified, Pets will need to be buffed separately. Additionally, Warlock Imps will be hidden automatically unless Phase Shift is off.|r]=]
L["SHOWSOLO"] = "Show when Solo"
L["SHOWSOLO_DESC"] = "[Show/Hide] PallyPower while Solo"
L["SHOWTIPS"] = "Show Tooltips"
L["SHOWTIPS_DESC"] = "[Show/Hide] The PallyPower Tooltips"
L["SKIN"] = "Background Textures"
L["SKIN_DESC"] = "Change the Button Background Textures"
L["SMARTBUFF"] = "Smart Buffs"
L["SMARTBUFF_DESC"] = "If you enable this option you will not be allowed to assign Blessing of Wisdom to Warriors or Rogues and Blessing of Might to Mages, Warlocks and Hunters."
L["VerDownLeft"] = "Vertical Down | Left"
L["VerDownRight"] = "Vertical Down | Right"
L["VerUpLeft"] = "Vertical Up | Left"
L["VerUpRight"] = "Vertical Up | Right"
L["WAIT"] = "Wait for Players"
L["WAIT_DESC"] = "If this option is enabled then the Auto Buff Button will not auto buff a class with a greater blessing or a player with a normal blessing if they are dead, offline or not in range."
 
