local mod	= DBM:NewMod("Rajaxx", "DBM-AQ20", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20200619203919")
mod:SetCreatureID(15341)
mod:SetEncounterID(719)
mod:SetModelID(15376)
mod:RegisterCombat("combat")

mod:RegisterEvents(--An exception to not use incombat events, cause boss might not engage until after his waves
	"SPELL_AURA_APPLIED 25471",
	"SPELL_CAST_SUCCESS 26550 25599",
	"CHAT_MSG_MONSTER_YELL"
)

local warnWave			= mod:NewAnnounce("WarnWave", 2, "136116")
local warnOrder			= mod:NewTargetNoFilterAnnounce(25471)
local warnCloud			= mod:NewSpellAnnounce(26550)
local warnThundercrash	= mod:NewSpellAnnounce(25599)

local specWarnOrder		= mod:NewSpecialWarningYou(25471, nil, nil, nil, 1, 2)
local yellOrder			= mod:NewYell(25471)

local timerOrder		= mod:NewTargetTimer(10, 25471, nil, nil, nil, 3)
local timerCloud		= mod:NewBuffActiveTimer(15, 26550, nil, nil, nil, 3)--? Good color?

do
	local AttackOrder = DBM:GetSpellInfo(25471)
	function mod:SPELL_AURA_APPLIED(args)
		--if args.spellId == 25471 then
		if args.spellName == AttackOrder then
			timerOrder:Start(args.destName)
			if args:IsPlayer() then
				specWarnOrder:Show()
				specWarnOrder:Play("targetyou")
				yellOrder:Yell()
			else
				warnOrder:Show(args.destName)
			end
		end
	end
end

do
	local LightningCloud, Thundercrash = DBM:GetSpellInfo(26550), DBM:GetSpellInfo(25599)
	function mod:SPELL_CAST_SUCCESS(args)
		--if args.spellId == 26550 then
		if args.spellName == LightningCloud then
			warnCloud:Show()
			timerCloud:Start()
		--elseif args.spellId == 25599 then
		elseif args.spellName == Thundercrash then
			warnThundercrash:Show()
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)--some of these yells have line breaks that message match doesn't grab, so will try find.
	if msg == L.Wave12 or msg:find(L.Wave12) or msg == L.Wave12Alt or msg:find(L.Wave12Alt) then
		self:SendSync("Wave", "1, 2")
	elseif msg == L.Wave3 or msg:find(L.Wave3) then
		self:SendSync("Wave", 3)
	elseif msg == L.Wave4 or msg:find(L.Wave4) then
		self:SendSync("Wave", 4)
	elseif msg == L.Wave5 or msg:find(L.Wave5) then
		self:SendSync("Wave", 5)
	elseif msg == L.Wave6 or msg:find(L.Wave6) then
		self:SendSync("Wave", 6)
	elseif msg == L.Wave7 or msg:find(L.Wave7) then
		self:SendSync("Wave", 7)
	elseif msg == L.Wave8 or msg:find(L.Wave8) then
		self:SendSync("Wave", 8)
	end
end

function mod:OnSync(msg, count)
	if DBM:GetCurrentArea() ~= 509 then return end--Block syncs if not in the zone
	if msg == "Wave" then
		warnWave:Show(count)
	end
end
