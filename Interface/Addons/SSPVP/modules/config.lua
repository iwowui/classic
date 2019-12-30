local SSPVP = select(2, ...)
local Config = SSPVP:NewModule("Config")

local L = SSPVP.L

local registered, options, config, dialog

-- General set/get
local function set(info, value)
	local key = info[#(info)]
	if( info.arg and SSPVP.modules[info.arg] ) then
		local module = SSPVP.modules[info.arg]
		
		local cat = info[#(info) - 1]
		if( type(module.db.profile[cat]) == "table" ) then
			module.db.profile[cat][key] = value
		else
			module.db.profile[key] = value
		end
		
		module:Reload()
		return
	end

	if( info.arg ) then
		SSPVP.db.profile[info.arg][key] = value
	else
		SSPVP.db.profile[key] = value
	end

	SSPVP:Reload()
end

local function get(info)
	local key = info[#(info)]
	if( info.arg and SSPVP.modules[info.arg] ) then
		local module = SSPVP.modules[info.arg]
		
		local cat = info[#(info) - 1]
		if( type(module.db.profile[cat]) == "table" ) then
			return module.db.profile[cat][key]
		end
		
		return module.db.profile[key]
	end

	if( info.arg ) then
		return SSPVP.db.profile[info.arg][key]
	end
	
	return SSPVP.db.profile[key]
end

-- Set/Get multis
local function setMulti(info, value, state)
	local key = info[#(info)]
	if( info.arg and SSPVP.modules[info.arg] ) then
		local module = SSPVP.modules[info.arg]
		
		local cat = info[#(info) - 1]
		if( type(module.db.profile[cat]) == "table" ) then
			module.db.profile[cat][key][value] = state
		else
			module.db.profile[key][value] = state
		end
		
		if( module.Reload ) then
			module:Reload()
		end
		return
	end

	if( info.arg ) then
		SSPVP.db.profile[info.arg][key][value] = state
	else
		SSPVP.db.profile[key][value] = state
	end

	SSPVP:Reload()
end

local function getMulti(info, value)
	local key = info[#(info)]
	if( info.arg and SSPVP.modules[info.arg] ) then
		local module = SSPVP.modules[info.arg]
		
		local cat = info[#(info) - 1]
		if( type(module.db.profile[cat]) == "table" ) then
			return module.db.profile[cat][key][value]
		end
		
		return module.db.profile[key][value]
	end

	if( info.arg ) then
		return SSPVP.db.profile[info.arg][key][value]
	end
	
	return SSPVP.db.profile[key][value]
end

-- Set/Get colors
local function setColor(info, r, g, b)
	set(info, {r = r, g = g, b = b})
end

local function getColor(info)
	local value = get(info)
	if( type(value) == "table" ) then
		return value.r, value.g, value.b
	end
	
	return value
end


-- FLAG OPTIONS
local function setFlag(info, value)
	SSPVP.modules.Flag.db.profile[info.arg][info[#(info)]] = value
end

local function getFlag(info)
	return SSPVP.modules.Flag.db.profile[info.arg][info[#(info)]]
end

local function createFlagOptions(bg, order)
	order = order or 0
	
	return {
		order = order,
		type = "group",
		name = L["Flags"],
		set = setFlag,
		get = getFlag,
		inline = true,
		args = {
			enabled = {
				order = order + 1,
				type = "toggle",
				name = L["Show flag carrier"],
				width = "full",
				arg = bg,
			},
			respawn = {
				order = order + 2,
				type = "toggle",
				name = L["Show flag respawn time on overlay"],
				width = "full",
				arg = bg,
			},
			--capture = {
			--	order = order + 3,
			--	type = "toggle",
			--	name = L["Show flag capture times on overlay"],
			--	width = "full",
			--	arg = bg,
			--},
			color = {
				order = order + 4,
				type = "toggle",
				name = L["Color carrier name by class"],
				width = "full",
				arg = bg,
			},
			health = {
				order = order + 5,
				type = "toggle",
				name = L["Show carrier health when available"],
				width = "full",
				arg = bg,
			},
			macro = {
				order = order + 6,
				type = "input",
				multiline = true,
				name = L["Text to execute when clicking the carrier button"],
				width = "full",
				arg = bg,
			},
		},
	}
end

local battlefields = {
	--["arena"] = L["Arena"],
	--["eots"] = L["Eye of the Storm"],
	["wsg"] = L["Warsong Gulch"],
	["ab"] = L["Arathi Basin"],
	["av"] = L["Alterac Valley"],
	--["sota"] = L["Strand of the Ancients"],
	--["wg"] = L["Wintergrasp"]
}
local channels = {["INSTANCE_CHAT"] = L["Instance"], ["RAID"] = L["Raid"], ["PARTY"] = L["Party"]}

local function loadOptions()
	-- If options weren't loaded yet, then do so now
	options = {
		type = "group",
		name = "SSPVP",
		args = {}
	}

	-- EYE OF THE STORM 
	--[[
	options.args.eots = {
		type = "group",
		order = 1,
		name = L["Eye of the Storm"],
		get = get,
		set = set,
		args = {
			flag = createFlagOptions("eots", 0),
			eots = {
				type = "group",
				order = 7,
				inline = true,
				name = L["Match info"],
				args = {
					matchInfo = {
						order = 1,
						type = "toggle",
						name = L["Show basic match information"],
						width = "full",
						arg = "Match",
					},
					bases = {
						order = 2,
						type = "toggle",
						name = L["Show bases to win"],
						width = "full",
						arg = "Match",
					},
				},
			},
		},
	}

	-- Strand of the Ancient
	options.args.sota = {
		type = "group",
		order = 1,
		name = L["Strand of the Ancients"],
		get = get,
		set = set,
		args = {
			sota = {
				type = "group",
				order = 7,
				inline = true,
				name = L["General"],
				args = {
					bomb = {
						order = 1,
						type = "toggle",
						name = L["Show bomb explosion timers"],
						width = "full",
						arg = "SOTA",
					},
				},
			},
		},
	}
	]]

	-- ARATHI BASIN
	options.args.ab = {
		type = "group",
		order = 1,
		name = L["Arathi Basin"],
		get = get,
		set = set,
		args = {
			ab = {
				type = "group",
				order = 7,
				inline = true,
				name = L["Match info"],
				args = {
					matchInfo = {
						order = 1,
						type = "toggle",
						name = L["Show basic match information"],
						width = "full",
						arg = "Match",
					},
					bases = {
						order = 2,
						type = "toggle",
						name = L["Show bases to win"],
						width = "full",
						arg = "Match",
					},
				},
			},
		},
	}
	
	-- ALTERAC VALLEY
	options.args.av = {
		type = "group",
		order = 1,
		name = L["Alterac Valley"],
		get = get,
		set = set,
		args = {
			timers = {
				type = "group",
				order = 1,
				inline = true,
				name = L["Timers"],
				args = {
					timers = {
						order = 1,
						type = "toggle",
						name = L["Enable capture timers"],
						width = "full",
						arg = "AV",
					},
					mine = {
						order = 2,
						type = "toggle",
						name = L["Show resources gained through mines"],
						width = "full",
						arg = "AV",
					},
					combat = {
						order = 3,
						type = "toggle",
						name = L["Show resources lost from objectives in SCT/FCT/MSBT/ect"],
						width = "full",
						arg = "AV",
					},
				},
			},
			alerts = {
				type = "group",
				order = 2,
				inline = true,
				name = L["Alerts"],
				args = {
					announce = {
						order = 1,
						type = "toggle",
						name = L["Enable interval capture messages"],
						width = "full",
						arg = "AV",
					},
					interval = {
						order = 2,
						type = "range",
						name = L["Alert interval"],
						min = 0, max = 300, step = 1,
						arg = "AV",
					},
					speed = {
						order = 3,
						type = "range",
						name = L["Interval frequency increase"],
						desc = L["How much faster alerts should come when theres two minute left on the timer."],
						min = 0, max = 1.0, step = 0.10,
						isPercent = true,
						arg = "AV",
					},
				},
			},
		},
	}	

	-- WARSONG GULCH
	options.args.wsg = {
		type = "group",
		order = 1,
		name = L["Warsong Gulch"],
		get = get,
		set = set,
		args = {
			wsg = createFlagOptions("wsg", 0),
		},
	}
	
	-- WINTERGRASP
	--[[
	options.args.wg = {
		type = "group",
		order = 1,
		name = L["Wintergrasp"],
		get = get,
		set = set,
		args = {
			timers = {
				order = 1,
				type = "group",
				inline = true,
				name = L["Timers"],
				args = {
					start = {
						order = 1,
						type = "toggle",
						name = L["Show battle start time"],
						width = "full",
						arg = "WG"
					},
					showAt = {
						order = 2,
						type = "range",
						name = L["Show timer when match starts in"],
						desc = L["Only show the battle start timer when the match starts within the set amount of minutes."],
						min = 0, max = 170, step = 5,
						width = "full",
						arg = "WG",
					},
				},
			},
		},
	}
	]]
	
	-- GENERAL
	options.args.general = {
		type = "group",
		order = 1,
		name = L["General"],
		get = get,
		set = set,
		args = {
			general = {
				type = "group",
				order = 1,
				name = L["General"],
				inline = true,
				args = {
					channel = {
						order = 1,
						type = "select",
						name = L["Announcement channel"],
						values = channels,
						arg = "general",
					},
					sound = {
						order = 2,
						type = "input",
						name = L["Sound file"],
						desc = L["Sound file to play when a queue is ready, this must be located inside Interface/AddOns/SSPVP before WoW is opened."],
						arg = "general",
					},
					play = {
						order = 3,
						type = "execute",
						name = L["Play sound"],
						handler = SSPVP,
						func = "PlaySound",
					},
					stop = {
						order = 4,
						type = "execute",
						name = L["Stop sound"],
						handler = SSPVP,
						func = "StopSound",
					},
				},
			},			
			overlay = {
				type = "group",
				order = 3,
				name = L["Queue overlay"],
				inline = true,
				args = {
					enabled = {
						order = 1,
						type = "toggle",
						name = L["Enable battlefield queue overlay"],
						width = "full",
						arg = "queue",
					},
					inBattle = {
						order = 2,
						type = "toggle",
						name = L["Show queue overlay inside battlefields"],
						width = "full",
						arg = "queue",
					},
				},
			},
			lock = {
				type = "group",
				order = 5,
				name = L["Frame anchors"],
				inline = true,
				args = {
					pvp = {
						order = 1,
						type = "toggle",
						name = L["Lock PvP objectives"],
						width = "full",
						arg = "Move",
					},
					score = {
						order = 2,
						type = "toggle",
						name = L["Lock battlefield score board"],
						width = "full",
						arg = "Move",
					},
					capture = {
						order = 3,
						type = "toggle",
						name = L["Lock node capture bar"],
						width = "full",
						arg = "Move",
					},
				},
			},
		},
	}

	-- LEAVING
	options.args.leave = {
		type = "group",
		order = 1,
		name = L["Auto leave"],
		get = get,
		set = set,
		args = {
			general = {
				type = "group",
				order = 1,
				name = L["General"],
				inline = true,
				args = {
					enabled = {
						order = 1,
						type = "toggle",
						name = L["Enable auto leave"],
						width = "full",
						arg = "leave",
					},
					screen = {
						order = 2,
						type = "toggle",
						name = L["Screenshot score on game end"],
						width = "full",
						arg = "leave",
					},
					delay = {
						order = 4,
						type = "range",
						name = L["Leave delay"],
						min = 0, max = 120, step = 1,
						arg = "leave",
					},
				},
			},
		},
	}
	
	-- BATTLEFIELD
	options.args.battlefield = {
		type = "group",
		order = 1,
		name = L["Battlefield"],
		get = get,
		set = set,
		args = {
			score = {
				type = "group",
				order = 2,
				name = L["Scoreboard"],
				inline = true,
				args = {
					color = {
						order = 1,
						type = "toggle",
						name = L["Color player names by class"],
						width = "full",
						arg = "Score",
					},
				},
			},
			death = {
				type = "group",
				order = 3,
				name = L["Death"],
				inline = true,
				args = {
					soulstone = {
						order = 1,
						type = "toggle",
						name = L["Auto use soul stone on death"],
						width = "full",
						arg = "Battlefield",
					},
					release = {
						order = 2,
						type = "multiselect",
						name = L["Auto release from corpse while inside"],
						values = battlefields,
						set = setMulti,
						get = getMulti,
						arg = "Battlefield",
					},
				},
			},
		},
	}

	-- OVERLAY
	options.args.overlay = {
		type = "group",
		order = 1,
		name = L["Overlay"],
		get = get,
		set = set,
		handler = Overlay,
		args = {
			growUp = {
				order = 1,
				type = "toggle",
				name = L["Grow display up"],
				width = "full",
				arg = "Overlay",
			},
			noClick = {
				order = 2,
				type = "toggle",
				name = L["Disable overlay clicking"],
				width = "full",
				arg = "Overlay",
			},
			shortTime = {
				order = 3,
				type = "toggle",
				name = L["Use HH:MM:SS short time format"],
				width = "full",
				arg = "Overlay",
			},
			frame = {
				type = "group",
				order = 4,
				inline = true,
				name = L["Frame"],
				args = {
					locked = {
						order = 1,
						type = "toggle",
						name = L["Lock overlay"],
						width = "full",
						arg = "Overlay",
					},
					opacity = {
						order = 2,
						type = "range",
						name = L["Background opacity"],
						min = 0, max = 1.0, step = 0.01,
						isPercent = true,
						arg = "Overlay",
					},
					scale = {
						order = 2,
						type = "range",
						name = L["Scale"],
						min = 0.1, max = 2.0, step = 0.01,
						isPercent = true,
						arg = "Overlay",
					},
				},
			},
			color = {
				type = "group",
				order = 5,
				inline = true,
				name = L["Color"],
				set = setColor,
				get = getColor,
				args = {
					background = {
						order = 1,
						type = "color",
						name = L["Background color"],
						arg = "Overlay",
					},
					border = {
						order = 1,
						type = "color",
						name = L["Border color"],
						arg = "Overlay",
					},
					textColor = {
						order = 1,
						type = "color",
						name = L["Text color"],
						arg = "Overlay",
					},
					categoryColor = {
						order = 1,
						type = "color",
						name = L["Category text color"],
						arg = "Overlay",
					},
				},
			},
		},
	}
 
	-- DB profile management
	options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(SSPVP.db)

	-- Easier to set the ordering down here
	options.args.general.order = 1
	options.args.overlay.order = 2
	options.args.battlefield.order = 3
	options.args.leave.order = 5
	-- options.args.eots.order = 6
	-- options.args.sota.order = 7
	options.args.ab.order = 8
	options.args.av.order = 9
	options.args.wsg.order = 10
	-- options.args.wg.order = 11
	options.args.profile.order = 12
end

function Config:Open()
	if( not config and not dialog ) then
		config = LibStub("AceConfig-3.0")
		dialog = LibStub("AceConfigDialog-3.0")

		loadOptions()

		config:RegisterOptionsTable("SSPVP", options)
		dialog:SetDefaultSize("SSPVP", 625, 500)
	end

	dialog:Open("SSPVP")
end

-- Slash command
SLASH_SSPVP1 = "/sspvp"
SLASH_SSPVP2 = "/sspvp3"
SlashCmdList["SSPVP"] = function(input)
	input = string.lower(input or "")
	local self = SSPVP
	if( input == "suspend" ) then
		if( self.suspend ) then
			self:DisableSuspense()
			self:CancelTimer("DisableSuspense", true)
		else
			self.suspend = true
			self:Print(L["Auto leave has been suspended for the next 5 minutes, or until you log off."])
			self:ScheduleTimer("DisableSuspense", 300)
		end

		-- Update queue overlay if required
		self:UPDATE_BATTLEFIELD_STATUS()
	else
		Config:Open()
	end
end
