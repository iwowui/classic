local SSPVP = select(2, ...)
local Match = SSPVP:NewModule("Match", "AceEvent-3.0")
Match.activeIn = "bg"

local L = SSPVP.L
local Overlay = SSPVP.modules.Overlay

local timers = {}

local pointsSec = {["ab"] = { [0] = 0, [1] = 0.83, [2] = 1.0, [3] = 1.66, [4] = 3.3, [5] = 30.0}, ["eots"] = {[0] = 0, [1] = 0.5, [2] = 1, [3] = 2.5, [4] = 5}}
local Alliance = {}
local Horde = {}
local Lowest = {}

local playerFaction

-- Battleground specific data
local MAX_NODES, ALLIANCE_ID, HORDE_ID, NODE_MATCH

function Match:OnInitialize()
	self.defaults = {
		profile = {
			ab = {
				bases = true,
				finalBase = false,
				matchInfo = true,
			},
			eots = {
				bases = true,
				finalBase = false,
				matchInfo = true,
			},
		},
	}
	
	self.db = SSPVP.db:RegisterNamespace("match", self.defaults)
	playerFaction = UnitFactionGroup("player")
end

function Match:EnableModule(abbrev)
	-- Only enable in AB/EoTS
	if( not self.db.profile[abbrev] ) then
		self.isActive = nil
		return
	end
	
	self.activeBF = abbrev
	
	-- AB specific configurations
	if( abbrev == "ab" ) then
		MAX_NODES = 5
		ALLIANCE_ID = 1
		HORDE_ID = 2
		NODE_MATCH = L["Bases: ([0-9]+)  Resources: ([0-9]+)/2000"]
	
	-- EoTS specific configurations
	elseif( abbrev == "eots" ) then
		MAX_NODES = 4
		ALLIANCE_ID = 2
		HORDE_ID = 3
		NODE_MATCH = L["Bases: ([0-9]+)  Victory Points: ([0-9]+)/2000"]
	end
	
	if( self.db.profile[abbrev].matchInfo or self.db.profile[abbrev].bases ) then
		self:RegisterEvent("UPDATE_WORLD_STATES")
	end
end

function Match:DisableModule()
	self:UnregisterAllEvents()
	
	for k in pairs(Alliance) do
		Alliance[k] = nil
		Horde[k] = nil
	end
	
	Overlay:RemoveCategory("base")
	Overlay:RemoveCategory("match")
end

function Match:Reload()
	if( self.isActive ) then
		self:UnregisterAllEvents()
		self:EnableModule()
	end
end

-- Match info
function Match:UPDATE_WORLD_STATES()	
	-- Time left and final score
	local aBases, aPoints = self:GetCrtPoints("Alliance")
	local hBases, hPoints = self:GetCrtPoints("Horde")

	-- Parse error
	if( not aBases or not hBases or ( aPoints == 0 and hPoints == 0 ) ) then
		return
	end

	Alliance.bases = aBases
	Alliance.points = aPoints
	Alliance.left = 1600 - aPoints
	Alliance.time = Alliance.left / pointsSec[self.activeBF][aBases]		

	Horde.bases = hBases
	Horde.points = hPoints
	Horde.left = 1600 - hPoints
	Horde.time = Horde.left / pointsSec[self.activeBF][hBases]

	-- Figure out time left in match
	local lowest = min(Horde.time, Alliance.time)

	-- Base final scores off of the time left in match
	Alliance.final = Alliance.points + self:GetEstPoints(lowest, Alliance.bases)
	Horde.final = Horde.points + self:GetEstPoints(lowest, Horde.bases)
	
	-- Match info
	if( self.db.profile[self.activeBF].matchInfo ) then
		-- Show finals
		Overlay:RegisterText("allfin", "match", string.format(L["Final Score: %d"], Alliance.final), SSPVP:GetFactionColor("Alliance"))
		Overlay:RegisterText("horfin", "match", string.format(L["Final Score: %d"], Horde.final), SSPVP:GetFactionColor("Horde"))
		
		-- Show time left
		Overlay:RegisterTimer("time", "match", L["Time Left: %s"], lowest, SSPVP:GetFactionColor("Neutral"))
	else
		self:RemoveCategory("match")
	end

	-- Bases to win, and final base to win
	if( self.db.profile[self.activeBF].bases and Alliance and Horde ) then
		local enemy, friendly
		if( playerFaction == "Alliance" ) then
			enemy = Horde
			friendly = Alliance
		else
			enemy = Alliance
			friendly = Horde
		end

		for i=1, MAX_NODES do
			-- Figure out time left with the base, and scores with that time
			local lowestTime = min(enemy.left / pointsSec[self.activeBF][MAX_NODES - i], friendly.left / pointsSec[self.activeBF][i])
			local enemyFinal = enemy.points + self:GetEstPoints(lowestTime, MAX_NODES - i)
			local friendlyFinal = friendly.points + self:GetEstPoints(lowestTime, i)

			-- We win with these bases
			if( friendlyFinal >= 2000 and enemyFinal < 2000 ) then
				Overlay:RegisterText("win", "match", string.format(L["Bases to win: %d"], i), SSPVP:GetFactionColor("Neutral"))

				--if( self.db.profile.finalBase ) then
				--	Overlay:RegisterText("winfin", "match", string.format(L["Base Final: %d"], friendlyFinal), SSPVP:GetFactionColor(playerFaction))
				--end
				break
			end
		end
	else
		Overlay:RemoveCategory("base")
	end
end

function Match:GetEstPoints(time, bases)
	if( bases == 0 ) then
		return 0
	end
	
	if( self.activeBF == "eots" ) then
		return floor(time * pointsSec[self.activeBF][bases] + 0.5)
	else
		return floor((time * pointsSec[self.activeBF][bases] + 0.5) / 10) * 10
	end
end

function Match:GetCrtPoints(faction)
	local text
	if( faction == "Alliance" ) then
		text = select(3, GetWorldStateUIInfo(ALLIANCE_ID))
	elseif( faction == "Horde" ) then
		text = select(3, GetWorldStateUIInfo(HORDE_ID))
	end
	
	-- Invalid
	if( not text ) then
		return
	end
	
	local bases, points = string.match(text, NODE_MATCH)
	points = tonumber(points)
	bases = tonumber(bases)
	
	-- Invalid match
	if( not points or not bases ) then
		return
	end
	
	return bases, points
end
