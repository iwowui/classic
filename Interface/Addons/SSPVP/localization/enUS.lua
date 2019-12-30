local SSPVP = select(2, ...)
local L = {}
--[[Translation missing --]]
--[[ L[" - /arena - Easy Arena calculations and conversions"] = ""--]] 
--[[Translation missing --]]
--[[ L[" - /av - Alterac Valley sync queuing."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - attend <played> <team> - Calculates games required to reach 30% using the passed games <played> out of the <team> games played."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - cancel - Cancels a running sync."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - change <winner rating> <loser rating> - Calculates points gained/lost assuming the <winner rating> beats <loser rating>."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - drop - Drops all Alterac Valley queues."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - join <instanceID> - Forces everyone with the specified instance id to join Alterac Valley."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - Other slash commands"] = ""--]] 
--[[Translation missing --]]
--[[ L[" - points <points> - Calculates rating required to reach the passed points."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - rating <rating> - Calculates points given from the passed rating."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - ready - Does a check to see who has the battlemaster window open and is ready to queue."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - status - Shows the status list of everyone regarding queue or window."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - suspend - Suspends auto join and leave for 5 minutes, or until you log off."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - sync <seconds> - Starts a count down for an Alterac Valley sync queue."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - ui - Opens the OptionHouse configuration for SSPVP."] = ""--]] 
--[[Translation missing --]]
--[[ L[" - update - Forces a status update on everyones Alterac Valley queues."] = ""--]] 
--[[Translation missing --]]
--[[ L["%d games out of %d total is already above 30%% (%.2f%%)."] = ""--]] 
--[[Translation missing --]]
--[[ L["%d more games have to be played (%d total) to reach 30%%."] = ""--]] 
--[[Translation missing --]]
--[[ L["%d personal rating in %s (%dvs%d)"] = ""--]] 
L["-%d Reinforcements"] = "-%d Reinforcements"
--[[Translation missing --]]
--[[ L["%s %d points (%d rating)"] = ""--]] 
L["%s (%d players)"] = "%s (%d players)"
L["%s (%dvs%d)"] = "%s (%dvs%d)"
--[[Translation missing --]]
--[[ L["%s |cffffffff(%dvs%d)|r"] = ""--]] 
--[[Translation missing --]]
--[[ L["%s flag carrier %s, held for %s."] = ""--]] 
--[[Translation missing --]]
--[[ L["%s has requested you join Alterac Valley #%d, but you have force join disabled."] = ""--]] 
L["%s is out of range"] = "%s is out of range"
--[[Translation missing --]]
--[[ L["%s is ready to join, auto leave disabled."] = ""--]] 
L["%s will be captured by the %s in %s"] = "%s will be captured by the %s in %s"
L["(.+) has taken the flag!"] = "(.+) has taken the flag!"
L["(.+) is under attack"] = "(.+) is under attack"
--[[Translation missing --]]
--[[ L["(.+) Mark of Honor"] = ""--]] 
L["(.+) was destroyed"] = "(.+) was destroyed"
L["(.+) was taken"] = "(.+) was taken"
--[[Translation missing --]]
--[[ L["(L) %s"] = ""--]] 
L[".+ Roll -"] = ".+ Roll -"
--[[Translation missing --]]
--[[ L["/ %d personal (%d rating)"] = ""--]] 
--[[Translation missing --]]
--[[ L["[%d vs %d] %d points = %d rating"] = ""--]] 
--[[Translation missing --]]
--[[ L["[%d vs %d] %d rating = %d points"] = ""--]] 
--[[Translation missing --]]
--[[ L["[%d vs %d] %d rating = %d points - %d%% = %d points"] = ""--]] 
--[[Translation missing --]]
--[[ L["[%s] %s: %s"] = ""--]] 
L["^You "] = "^You "
L["+%d Points"] = "+%d Points"
--[[Translation missing --]]
--[[ L["+%d points (%d rating) / %d points (%d rating)"] = ""--]] 
L["<1 Min"] = "<1 Min"
L["0 Sec"] = "0 Sec"
L["1 minute"] = "1 minute"
L["2 minute"] = "2 minute"
--[[Translation missing --]]
--[[ L["25%"] = ""--]] 
L["30 seconds"] = "30 seconds"
--[[Translation missing --]]
--[[ L["50%"] = ""--]] 
--[[Translation missing --]]
--[[ L["75%"] = ""--]] 
--[[Translation missing --]]
--[[ L["ab"] = ""--]] 
--[[Translation missing --]]
--[[ L["afk"] = ""--]] 
--[[Translation missing --]]
--[[ L["AFK"] = ""--]] 
--[[Translation missing --]]
--[[ L["AFK battleground join delay"] = ""--]] 
L["Alert interval"] = "Alert interval"
L["Alerts"] = "Alerts"
L["All Arenas"] = "All Arenas"
L["Alliance"] = "Alliance"
--[[Translation missing --]]
--[[ L["Alliance flag carrier %s, held for %s."] = ""--]] 
--[[Translation missing --]]
--[[ L["Allow group leader or assist to force join you into a specific Alterac Valley"] = ""--]] 
--[[Translation missing --]]
--[[ L["Allows you to sync queue with other SSPVP2, StinkyQueue or LightQueue users at the same time increasing your chance of getting into the same match."] = ""--]] 
L["Alterac Valley"] = "Alterac Valley"
--[[Translation missing --]]
--[[ L["Alterac Valley queue has been dropped by %s."] = ""--]] 
--[[Translation missing --]]
--[[ L["Alterac Valley queue stopped."] = ""--]] 
--[[Translation missing --]]
--[[ L["Alterac Valley sync queue has been stopped by %s."] = ""--]] 
--[[Translation missing --]]
--[[ L["Alterac Valley sync queuing"] = ""--]] 
L["Announcement channel"] = "Announcement channel"
L["Arathi Basin"] = "Arathi Basin"
L["Arena"] = "Arena"
--[[Translation missing --]]
--[[ L["Arena join delay"] = ""--]] 
--[[Translation missing --]]
--[[ L["Auto append server name while in battlefields for whispers"] = ""--]] 
L["Auto append server names when whispering"] = "Auto append server names when whispering"
L["Auto group queue when grouped and leader"] = "Auto group queue when grouped and leader"
L["Auto join"] = "Auto join"
--[[Translation missing --]]
--[[ L["Auto Join"] = ""--]] 
--[[Translation missing --]]
--[[ L["Auto join and leave has been suspended for the next 5 minutes, or until you log off."] = ""--]] 
L["Auto leave"] = "Auto leave"
--[[Translation missing --]]
--[[ L["Auto Leave"] = ""--]] 
L["Auto leave has been suspended for the next 5 minutes, or until you log off."] = "Auto leave has been suspended for the next 5 minutes, or until you log off."
L["Auto queue"] = "Auto queue"
--[[Translation missing --]]
--[[ L["Auto Queue"] = ""--]] 
--[[Translation missing --]]
--[[ L["Auto queue when inside a group and leader"] = ""--]] 
--[[Translation missing --]]
--[[ L["Auto queue when inside of a group and leader"] = ""--]] 
--[[Translation missing --]]
--[[ L["Auto queue when outside of a group"] = ""--]] 
L["Auto queue when ungrouped"] = "Auto queue when ungrouped"
L["Auto release disabled, %d %s until release"] = "Auto release disabled, %d %s until release"
L["Auto release from corpse while inside"] = "Auto release from corpse while inside"
L["Auto use soul stone on death"] = "Auto use soul stone on death"
--[[Translation missing --]]
--[[ L["Automatically append \"-server\" to peoples names when you whisper them, if multiple people are found to match the same name then it won't add the server."] = ""--]] 
L["Automatically appends \"-server\" to player names when whispering them, will not append if more than one person matches the name."] = "Automatically appends \"-server\" to player names when whispering them, will not append if more than one person matches the name."
--[[Translation missing --]]
--[[ L["av"] = ""--]] 
L["Background color"] = "Background color"
L["Background opacity"] = "Background opacity"
--[[Translation missing --]]
--[[ L["Background opacity: %d%%"] = ""--]] 
L["Base Final: %d"] = "Base Final: %d"
L["Bases %d  Points %d/2000"] = "Bases %d  Points %d/2000"
--[[Translation missing --]]
--[[ L["Bases to win"] = ""--]] 
L["Bases to win: %d"] = "Bases to win: %d"
L["Bases: ([0-9]+)  Resources: ([0-9]+)/2000"] = "Bases: ([0-9]+)  Resources: ([0-9]+)/2000"
L["Bases: ([0-9]+)  Victory Points: ([0-9]+)/2000"] = "Bases: ([0-9]+)  Victory Points: ([0-9]+)/2000"
L["Battle starts: %s"] = "Battle starts: %s"
L["Battlefield"] = "Battlefield"
--[[Translation missing --]]
--[[ L["Battlefield leave delay"] = ""--]] 
L["Battlefield Queue"] = "Battlefield Queue"
L["Battleground"] = "Battleground"
--[[Translation missing --]]
--[[ L["battleground"] = ""--]] 
--[[Translation missing --]]
--[[ L["Battleground join delay"] = ""--]] 
--[[Translation missing --]]
--[[ L["Battlemaster window ready check started, you have 10 seconds to get the window open."] = ""--]] 
L["Begone, uncouth scum!"] = "Begone, uncouth scum!"
L["Blade's Edge Arena"] = "Blade's Edge Arena"
L["Bomb: %s"] = "Bomb: %s"
L["Border color"] = "Border color"
L["by"] = "by"
L["Call to Arms: %s"] = "Call to Arms: %s"
L["Cannot target %s, in combat"] = "Cannot target %s, in combat"
L["Captain Balinda Stonehearth"] = "Captain Balinda Stonehearth"
L["Captain Galvangar"] = "Captain Galvangar"
L["Capture bar anchor"] = "Capture bar anchor"
L["Capture Time: %s"] = "Capture Time: %s"
L["captured the"] = "captured the"
L["Category text color"] = "Category text color"
--[[Translation missing --]]
--[[ L["Channel to output to when you send timers out from the overlay."] = ""--]] 
L["claims the ([^!]+)"] = "claims the ([^!]+)"
L["claims the Snowfall graveyard"] = "claims the Snowfall graveyard"
L["Classes"] = "Classes"
--[[Translation missing --]]
--[[ L["Cleaning up the text in the PvP objectives along with points gained from captures in Eye of the Storm."] = ""--]] 
L["Color"] = "Color"
L["Color carrier name by class"] = "Color carrier name by class"
--[[Translation missing --]]
--[[ L["Color carrier name by class color"] = ""--]] 
--[[Translation missing --]]
--[[ L["Color player name by class"] = ""--]] 
L["Color player names by class"] = "Color player names by class"
--[[Translation missing --]]
--[[ L["Confirm #%d"] = ""--]] 
--[[Translation missing --]]
--[[ L["Confirm when leaving a battlefield queue through minimap list"] = ""--]] 
--[[Translation missing --]]
--[[ L["Confirm when leaving a finished battlefield through score"] = ""--]] 
L["Confirm when leaving queues"] = "Confirm when leaving queues"
--[[Translation missing --]]
--[[ L["Confirmation"] = ""--]] 
L["Death"] = "Death"
--[[Translation missing --]]
--[[ L["Delay"] = ""--]] 
--[[Translation missing --]]
--[[ L["Disable %s"] = ""--]] 
--[[Translation missing --]]
--[[ L["Disable auto release"] = ""--]] 
L["Disable overlay clicking"] = "Disable overlay clicking"
--[[Translation missing --]]
--[[ L["Disables auto release for this specific battleground."] = ""--]] 
--[[Translation missing --]]
--[[ L["Display"] = ""--]] 
--[[Translation missing --]]
--[[ L["Displays how many people are queued, number of people who have confirmation for specific instance id's and the instance id's that people are currently playing inside."] = ""--]] 
--[[Translation missing --]]
--[[ L["Don't auto join a battlefield if the queue window is hidden"] = ""--]] 
L["Drek'Thar"] = "Drek'Thar"
--[[Translation missing --]]
--[[ L["Drop Queue"] = ""--]] 
L["Eastern Kingdoms"] = "Eastern Kingdoms"
--[[Translation missing --]]
--[[ L["Enable auto join"] = ""--]] 
L["Enable auto leave"] = "Enable auto leave"
L["Enable battlefield join reminder"] = "Enable battlefield join reminder"
L["Enable battlefield queue overlay"] = "Enable battlefield queue overlay"
--[[Translation missing --]]
--[[ L["Enable battlefield queue status"] = ""--]] 
L["Enable capture timers"] = "Enable capture timers"
L["Enable interval capture messages"] = "Enable interval capture messages"
L["Enable modified battlefield join dialog"] = "Enable modified battlefield join dialog"
--[[Translation missing --]]
--[[ L["Enable modified battlefield join window"] = ""--]] 
--[[Translation missing --]]
--[[ L["Enable sync queuing"] = ""--]] 
--[[Translation missing --]]
--[[ L["Entry Window"] = ""--]] 
L["Entry window"] = "Entry window"
--[[Translation missing --]]
--[[ L["eots"] = ""--]] 
--[[Translation missing --]]
--[[ L["Everyone is ready to go!"] = ""--]] 
L["Eye of the Storm"] = "Eye of the Storm"
L["Faction Balance"] = "Faction Balance"
L["Failed to save screenshot."] = "Failed to save screenshot."
L["Fifteen seconds"] = "Fifteen seconds"
L["Filthy Frostwolf cowards"] = "Filthy Frostwolf cowards"
L["Final Score: %d"] = "Final Score: %d"
--[[Translation missing --]]
--[[ L["flag carrier"] = ""--]] 
--[[Translation missing --]]
--[[ L["Flag Carrier"] = ""--]] 
L["flag has been reset"] = "flag has been reset"
L["Flag Respawn: %s"] = "Flag Respawn: %s"
L["Flags"] = "Flags"
--[[Translation missing --]]
--[[ L["Forcing join on instance #%d."] = ""--]] 
L["Frame"] = "Frame"
L["Frame anchors"] = "Frame anchors"
--[[Translation missing --]]
--[[ L["Frame Moving"] = ""--]] 
L["General"] = "General"
--[[Translation missing --]]
--[[ L["General battleground specific changes like auto release."] = ""--]] 
--[[Translation missing --]]
--[[ L["General scoreboard changes like coloring by class or hiding the class icons."] = ""--]] 
--[[Translation missing --]]
--[[ L["group"] = ""--]] 
L["Grow display up"] = "Grow display up"
--[[Translation missing --]]
--[[ L["Grow up"] = ""--]] 
L["has assaulted the ([^!]+)"] = "has assaulted the ([^!]+)"
L["has defended the ([^!]+)"] = "has defended the ([^!]+)"
L["has passed on:"] = "has passed on:"
L["has selected .+ for:"] = "has selected .+ for:"
L["has taken the ([^!]+)"] = "has taken the ([^!]+)"
L["Held Time: %s"] = "Held Time: %s"
L["Herald"] = "Herald"
--[[Translation missing --]]
--[[ L["Hide class icon next to names"] = ""--]] 
L["Hide class icons"] = "Hide class icons"
--[[Translation missing --]]
--[[ L["Higher priority battlefield ready, auto joining %s in %d seconds."] = ""--]] 
L["Horde"] = "Horde"
--[[Translation missing --]]
--[[ L["Horde flag carrier %s, held for %s."] = ""--]] 
L["How much faster alerts should come when theres two minute left on the timer."] = "How much faster alerts should come when theres two minute left on the timer."
L["I'll never fall for that, fool!"] = "I'll never fall for that, fool!"
--[[Translation missing --]]
--[[ L["Inside #%d"] = ""--]] 
L["Instance"] = "Instance"
--[[Translation missing --]]
--[[ L["instance"] = ""--]] 
L["Interval frequency increase"] = "Interval frequency increase"
--[[Translation missing --]]
--[[ L["Invalid number entered for sync queue."] = ""--]] 
L["Isle of Conquest"] = "Isle of Conquest"
L["Ivus Moving: %s"] = "Ivus Moving: %s"
L["Ivus the Forest Lord"] = "Ivus the Forest Lord"
--[[Translation missing --]]
--[[ L["Join Disabled"] = ""--]] 
--[[Translation missing --]]
--[[ L["Join priorities"] = ""--]] 
--[[Translation missing --]]
--[[ L["Join Suspended"] = ""--]] 
--[[Translation missing --]]
--[[ L["Joining"] = ""--]] 
--[[Translation missing --]]
--[[ L["Joining Alterac Valley #%d at the request of %s"] = ""--]] 
L["Leave delay"] = "Leave delay"
--[[Translation missing --]]
--[[ L["Leaving Alterac Valley queues."] = ""--]] 
L["Left Click + Drag to move the frame, Right Click + Drag to reset it to it's original position."] = "Left Click + Drag to move the frame, Right Click + Drag to reset it to it's original position."
--[[Translation missing --]]
--[[ L["Less than"] = ""--]] 
--[[Translation missing --]]
--[[ L["Less than/equal"] = ""--]] 
L["Lock battlefield score board"] = "Lock battlefield score board"
--[[Translation missing --]]
--[[ L["Lock capture bar"] = ""--]] 
L["Lock node capture bar"] = "Lock node capture bar"
L["Lock overlay"] = "Lock overlay"
L["Lock PvP objectives"] = "Lock PvP objectives"
--[[Translation missing --]]
--[[ L["Lock scoreboard"] = ""--]] 
L["Lokholar Moving: %s"] = "Lokholar Moving: %s"
L["Lokholar the Ice Lord"] = "Lokholar the Ice Lord"
--[[Translation missing --]]
--[[ L["Macro Text"] = ""--]] 
L["Match Info"] = "Match Info"
L["Match info"] = "Match info"
--[[Translation missing --]]
--[[ L["match information"] = ""--]] 
L["Mine Reinforcement"] = "Mine Reinforcement"
--[[Translation missing --]]
--[[ L["Modules"] = ""--]] 
L["Nagrand Arena"] = "Nagrand Arena"
--[[Translation missing --]]
--[[ L["Name"] = ""--]] 
--[[Translation missing --]]
--[[ L["New version available!"] = ""--]] 
--[[Translation missing --]]
--[[ L["Next Update"] = ""--]] 
--[[Translation missing --]]
--[[ L["none"] = ""--]] 
--[[Translation missing --]]
--[[ L["None"] = ""--]] 
--[[Translation missing --]]
--[[ L["Not queued"] = ""--]] 
--[[Translation missing --]]
--[[ L["Not ready"] = ""--]] 
--[[Translation missing --]]
--[[ L["Not Ready"] = ""--]] 
--[[Translation missing --]]
--[[ L["Not Ready: %s"] = ""--]] 
--[[Translation missing --]]
--[[ L["Offline"] = ""--]] 
L["One minute"] = "One minute"
--[[Translation missing --]]
--[[ L["Online"] = ""--]] 
L["Only show the battle start timer when the match starts within the set amount of minutes."] = "Only show the battle start timer when the match starts within the set amount of minutes."
L["Overlay"] = "Overlay"
L["Party"] = "Party"
L["passed on:"] = "passed on:"
--[[Translation missing --]]
--[[ L["Play"] = ""--]] 
L["Play sound"] = "Play sound"
--[[Translation missing --]]
--[[ L["Priority check mode"] = ""--]] 
L["PvP objectives anchor"] = "PvP objectives anchor"
--[[Translation missing --]]
--[[ L["PvP Objectives Anchor"] = ""--]] 
--[[Translation missing --]]
--[[ L["Queue"] = ""--]] 
--[[Translation missing --]]
--[[ L["Queue for Alterac Valley!"] = ""--]] 
L["Queue overlay"] = "Queue overlay"
--[[Translation missing --]]
--[[ L["Queue Overlay"] = ""--]] 
--[[Translation missing --]]
--[[ L["Queue Status"] = ""--]] 
--[[Translation missing --]]
--[[ L["Queued #%d"] = ""--]] 
--[[Translation missing --]]
--[[ L["Queued Any"] = ""--]] 
--[[Translation missing --]]
--[[ L["Queuing %d second."] = ""--]] 
--[[Translation missing --]]
--[[ L["Queuing %d seconds."] = ""--]] 
L["Raid"] = "Raid"
L["Rated"] = "Rated"
L["Rated Arena"] = "Rated Arena"
--[[Translation missing --]]
--[[ L["ratedArena"] = ""--]] 
--[[Translation missing --]]
--[[ L["Rating"] = ""--]] 
--[[Translation missing --]]
--[[ L["Ready"] = ""--]] 
--[[Translation missing --]]
--[[ L["Ready Check"] = ""--]] 
--[[Translation missing --]]
--[[ L["Ready: %s"] = ""--]] 
L["Reinforcements: ([0-9]+)"] = "Reinforcements: ([0-9]+)"
--[[Translation missing --]]
--[[ L["Release even with a soul stone active"] = ""--]] 
--[[Translation missing --]]
--[[ L["Release from corpse when inside an active battleground"] = ""--]] 
L["Releasing..."] = "Releasing..."
--[[Translation missing --]]
--[[ L["Removes the ability to click on the overlay, allowing you to interact with the 3D world instead. While the overlay is unlocked, this option is ignored."] = ""--]] 
--[[Translation missing --]]
--[[ L["Reshows the battlefield window even if it's been hidden, requires modified window to be enabled."] = ""--]] 
L["Ruins of Lordaeron"] = "Ruins of Lordaeron"
L["Scale"] = "Scale"
--[[Translation missing --]]
--[[ L["Scale: %d%%"] = ""--]] 
--[[Translation missing --]]
--[[ L["score"] = ""--]] 
L["Score objectives anchor"] = "Score objectives anchor"
--[[Translation missing --]]
--[[ L["Score Objectives Anchor"] = ""--]] 
L["Scoreboard"] = "Scoreboard"
--[[Translation missing --]]
--[[ L["Screenshot saved as %s."] = ""--]] 
L["Screenshot saved as WoWScrnShot_%s.%s."] = "Screenshot saved as WoWScrnShot_%s.%s."
--[[Translation missing --]]
--[[ L["Screenshot score board when game ends"] = ""--]] 
L["Screenshot score on game end"] = "Screenshot score on game end"
--[[Translation missing --]]
--[[ L["Season"] = ""--]] 
--[[Translation missing --]]
--[[ L["Seconds between capture messages"] = ""--]] 
L["Self resurrection available, %d %s until release"] = "Self resurrection available, %d %s until release"
L["Servers"] = "Servers"
L["Show bases to win"] = "Show bases to win"
L["Show basic match information"] = "Show basic match information"
L["Show battle start time"] = "Show battle start time"
--[[Translation missing --]]
--[[ L["Show battlefield window after it's hidden"] = ""--]] 
L["Show bomb explosion timers"] = "Show bomb explosion timers"
L["Show carrier health when available"] = "Show carrier health when available"
L["Show flag capture times on overlay"] = "Show flag capture times on overlay"
L["Show flag carrier"] = "Show flag carrier"
--[[Translation missing --]]
--[[ L["Show flag held time and time taken to capture"] = ""--]] 
L["Show flag respawn time on overlay"] = "Show flag respawn time on overlay"
--[[Translation missing --]]
--[[ L["Show inside an active battlefield"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show personal rating change after arena ends"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show player levels next to name"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show player queue status in overlay"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show points gained from flag captures in MSBT/SCT/FCT"] = ""--]] 
L["Show queue overlay inside battlefields"] = "Show queue overlay inside battlefields"
L["Show resources gained through mines"] = "Show resources gained through mines"
--[[Translation missing --]]
--[[ L["Show resources lost from captains and towers in MSBT/SCT/FCT"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show resources lost from captains in towers in MSBT/SCT/FCT"] = ""--]] 
L["Show resources lost from objectives in SCT/FCT/MSBT/ect"] = "Show resources lost from objectives in SCT/FCT/MSBT/ect"
--[[Translation missing --]]
--[[ L["Show team summary after rated arena ends"] = ""--]] 
L["Show timer when match starts in"] = "Show timer when match starts in"
--[[Translation missing --]]
--[[ L["Shows an anchor above the frame that lets you move it, the frame you're trying to move may have to be visible to actually move it."] = ""--]] 
--[[Translation missing --]]
--[[ L["Shows how much personal rating you gain/lost, will only show up if it's no the same amount of points as your actual team got."] = ""--]] 
--[[Translation missing --]]
--[[ L["Shows team names, points change and the new ratings after the arena ends."] = ""--]] 
L["Shows the time left to join a battlefield in the battlefield entry dialog."] = "Shows the time left to join a battlefield in the battlefield entry dialog."
--[[Translation missing --]]
--[[ L["Shows time left to join the battlefield, also required for disabling the battlefield window from reshowing again."] = ""--]] 
--[[Translation missing --]]
--[[ L["Shows timers as HH:MM:SS instead of X Minutes, X Seconds"] = ""--]] 
--[[Translation missing --]]
--[[ L["skirmArena"] = ""--]] 
L["Skirmish"] = "Skirmish"
L["Skirmish Arena"] = "Skirmish Arena"
L["Snowfall Graveyard"] = "Snowfall Graveyard"
L["Soldiers of Stormpike, your General is under attack"] = "Soldiers of Stormpike, your General is under attack"
L["Sound file"] = "Sound file"
--[[Translation missing --]]
--[[ L["Sound file to play when a queue is ready, file must be inside Interface/AddOns/SSPVP before you started the game."] = ""--]] 
L["Sound file to play when a queue is ready, this must be located inside Interface/AddOns/SSPVP before WoW is opened."] = "Sound file to play when a queue is ready, this must be located inside Interface/AddOns/SSPVP before WoW is opened."
--[[Translation missing --]]
--[[ L["SSPVP Alterac Valley slash commands"] = ""--]] 
--[[Translation missing --]]
--[[ L["SSPVP Arena slash commands"] = ""--]] 
--[[Translation missing --]]
--[[ L["SSPVP slash commands"] = ""--]] 
L["Starting: %s"] = "Starting: %s"
--[[Translation missing --]]
--[[ L["Status"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stop"] = ""--]] 
L["Stop sound"] = "Stop sound"
L["Stormpike filth!"] = "Stormpike filth!"
L["Stormpike weaklings"] = "Stormpike weaklings"
L["Strand of the Ancients"] = "Strand of the Ancients"
--[[Translation missing --]]
--[[ L["Suspension has been removed, you will now auto join and leave again."] = ""--]] 
L["Suspension has been removed, you will now auto leave again."] = "Suspension has been removed, you will now auto leave again."
--[[Translation missing --]]
--[[ L["Suspension is still active, will not auto join or leave."] = ""--]] 
L["Suspension is still active, will not auto leave."] = "Suspension is still active, will not auto leave."
--[[Translation missing --]]
--[[ L["Sync Queue"] = ""--]] 
L["Target enemy flag carrier"] = "Target enemy flag carrier"
L["Target friendly flag carrier"] = "Target friendly flag carrier"
L["Targetting %s"] = "Targetting %s"
L["Text color"] = "Text color"
--[[Translation missing --]]
--[[ L["Text to execute when clicking on the flag carrier button"] = ""--]] 
L["Text to execute when clicking the carrier button"] = "Text to execute when clicking the carrier button"
L["The"] = "The"
L["The Alliance has engaged Captain Galvangar."] = "The Alliance has engaged Captain Galvangar."
L["The Alliance has engaged Drek'Thar."] = "The Alliance has engaged Drek'Thar."
L["The Alliance has reset Captain Galvangar."] = "The Alliance has reset Captain Galvangar."
L["The Alliance has reset Drek'Thar."] = "The Alliance has reset Drek'Thar."
L["The Alliance has slain Captain Galvangar."] = "The Alliance has slain Captain Galvangar."
--[[Translation missing --]]
--[[ L["The Alliance wins"] = ""--]] 
L["The flag has been dropped"] = "The flag has been dropped"
L["The Horde has engaged Captain Balinda Stonehearth."] = "The Horde has engaged Captain Balinda Stonehearth."
L["The Horde has engaged Vanndar Stormpike."] = "The Horde has engaged Vanndar Stormpike."
L["The Horde has reset Captain Balinda Stonehearth."] = "The Horde has reset Captain Balinda Stonehearth."
L["The Horde has reset Vanndar Stormpike."] = "The Horde has reset Vanndar Stormpike."
L["The Horde has slain Captain Balinda Stonehearth."] = "The Horde has slain Captain Balinda Stonehearth."
--[[Translation missing --]]
--[[ L["The Horde wins"] = ""--]] 
L["the instance group.$"] = "the instance group.$"
--[[Translation missing --]]
--[[ L["The overlay will grow up instead of down when new rows are added, a reloadui maybe required for this to take affect."] = ""--]] 
L["the raid group.$"] = "the raid group.$"
L["Thirty seconds"] = "Thirty seconds"
--[[Translation missing --]]
--[[ L["Time left in match, final scores and bases to win for Eye of the Storm and Arathi Basin."] = ""--]] 
L["Time Left: %s"] = "Time Left: %s"
--[[Translation missing --]]
--[[ L["Time until flag respawns"] = ""--]] 
--[[Translation missing --]]
--[[ L["Timer channel"] = ""--]] 
L["Timers"] = "Timers"
--[[Translation missing --]]
--[[ L["Timers for Alterac Valley when capturing nodes, as well interval alerts on time left before capture."] = ""--]] 
--[[Translation missing --]]
--[[ L["Timers for Arathi Basin when capturing nodes."] = ""--]] 
--[[Translation missing --]]
--[[ L["Total Players"] = ""--]] 
L["Unavailable"] = "Unavailable"
L["Unknown"] = "Unknown"
L["Use HH:MM:SS short time format"] = "Use HH:MM:SS short time format"
--[[Translation missing --]]
--[[ L["Use short time format"] = ""--]] 
L["Using %s..."] = "Using %s..."
L["Vanndar Stormpike"] = "Vanndar Stormpike"
--[[Translation missing --]]
--[[ L["Version"] = ""--]] 
L["Warsong Gulch"] = "Warsong Gulch"
L["was dropped by (.+)!"] = "was dropped by (.+)!"
L["was picked up by (.+)!"] = "was picked up by (.+)!"
L["was returned to its base"] = "was returned to its base"
--[[Translation missing --]]
--[[ L["Week"] = ""--]] 
--[[Translation missing --]]
--[[ L["When the leader is ready for the group to join an Alterac Valley, he can force everyone into it with the required instance id. You will still be shown the instance id to join even if you disable this."] = ""--]] 
L["Where did auto join go?!"] = "Where did auto join go?!"
L["WHO DARES SUMMON LOKHOLA"] = "WHO DARES SUMMON LOKHOLA"
--[[Translation missing --]]
--[[ L["Who's holding the flag currently for Eye of the Storm and Warsong Gulch."] = ""--]] 
L["Why don't ya try again"] = "Why don't ya try again"
L["Wicked, wicked, mortals"] = "Wicked, wicked, mortals"
L["Will pop the battlefield window back up after it's been closed occasionally until the queue expires."] = "Will pop the battlefield window back up after it's been closed occasionally until the queue expires."
L["Wintergrasp"] = "Wintergrasp"
--[[Translation missing --]]
--[[ L["wsg"] = ""--]] 
L["You are about to leave the active or queued arena %s (%dvs%d), are you sure?"] = "You are about to leave the active or queued arena %s (%dvs%d), are you sure?"
L["You are about to leave the active or queued battleground %s, are you sure?"] = "You are about to leave the active or queued battleground %s, are you sure?"
--[[Translation missing --]]
--[[ L["You are about to send a queue drop request, are you sure?"] = ""--]] 
L["You are now eligible to enter %s. %s left to join."] = "You are now eligible to enter %s. %s left to join."
--[[Translation missing --]]
--[[ L["You are now in the queue for %s Arena (%dvs%d)."] = ""--]] 
L["You are now in the queue for %s Arenas (%dvs%d)."] = "You are now in the queue for %s Arenas (%dvs%d)."
L["You are now in the queue for %s."] = "You are now in the queue for %s."
L[ [=[You are probably wondering where auto joining has gone, unfortunately due design decisions by Blizzard addons (like SSPVP!) can no longer auto join battlegrounds.

There is no way around this, so please don't request that they are added back, I can't do anything about it.]=] ] = [=[You are probably wondering where auto joining has gone, unfortunately due design decisions by Blizzard addons (like SSPVP!) can no longer auto join battlegrounds.

There is no way around this, so please don't request that they are added back, I can't do anything about it.]=]
--[[Translation missing --]]
--[[ L["You can now enter %s and have %s left."] = ""--]] 
L["You currently have the battleground daily quest for %s, auto leave has been set to occure once the quest completes."] = "You currently have the battleground daily quest for %s, auto leave has been set to occure once the quest completes."
--[[Translation missing --]]
--[[ L["You do not have Alterac Valley syncing enabled, and cannot use any of the slash commands yourself."] = ""--]] 
--[[Translation missing --]]
--[[ L["You have been queued for Alterac Valley by %s."] = ""--]] 
--[[Translation missing --]]
--[[ L["You have the battlefield entry window hidden for %s, will not auto join."] = ""--]] 
--[[Translation missing --]]
--[[ L["You must be group leader, or assist to do this."] = ""--]] 
--[[Translation missing --]]
--[[ L["You must be in a raid or party to do this."] = ""--]] 
--[[Translation missing --]]
--[[ L["You provided an invalid instance ID to join."] = ""--]] 
L["You seek to draw the General of the Frostwolf"] = "You seek to draw the General of the Frostwolf"
L["You'll never get me out of me"] = "You'll never get me out of me"
--[[Translation missing --]]
--[[ L["Your current activity is a higher priority then %s, not auto joining."] = ""--]] 
L["Your kind has no place in Alterac Valley"] = "Your kind has no place in Alterac Valley"
--[[Translation missing --]]
--[[ L["You're current activity is a higher priority then %s, not auto joining."] = ""--]] 


SSPVP.L = L
--[===[@debug@
SSPVP.L = setmetatable(SSPVP.L, {
	__index = function(tbl, value)
		rawset(tbl, value, value)
		return value
	end,
})
--@end-debug@]===]
