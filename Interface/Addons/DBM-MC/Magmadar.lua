local mod	= DBM:NewMod("Magmadar", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20191229152337")
mod:SetCreatureID(11982)
mod:SetEncounterID(664)
mod:SetModelID(10193)
mod:SetHotfixNoticeRev(20191205000000)--2019, 12, 05

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 19451 19428",
	"SPELL_AURA_REMOVED 19451",
	"SPELL_CAST_SUCCESS 19408"
)

--[[
(ability.id = 19408 or ability.id = 19451) and type = "cast"
 or ability.id = 19428 and type = "applydebuff"
--]]
local warnPanic			= mod:NewSpellAnnounce(19408, 2)
local warnEnrage		= mod:NewTargetNoFilterAnnounce(19451, 3, nil , "Healer|Tank|RemoveEnrage")
local warnConflagration	= mod:NewTargetNoFilterAnnounce(19428, 2, nil , false)

local specWarnEnrage	= mod:NewSpecialWarningDispel(19451, "RemoveEnrage", nil, nil, 1, 6)

local timerPanicCD		= mod:NewCDTimer(30, 19408, nil, nil, nil, 2)--30-40
local timerEnrage		= mod:NewBuffActiveTimer(8, 19451, nil, nil, nil, 5, nil, DBM_CORE_ENRAGE_ICON)

do
	local Enrage, Conflagration = DBM:GetSpellInfo(19451), DBM:GetSpellInfo(19428)
	function mod:SPELL_AURA_APPLIED(args)
		--if args.spellId == 19451 then
		if args.spellName == Enrage and args:IsDestTypeHostile() then
			self:SendSync("Enrage")
			if self:AntiSpam(5, 1) then
				if self.Options.SpecWarn19451dispel then
					specWarnEnrage:Show(args.destName)
					specWarnEnrage:Play("enrage")
				else
					warnEnrage:Show(args.destName)
				end
				timerEnrage:Start()
			end
		elseif args.spellName == Conflagration and args:IsDestTypePlayer() then
			warnConflagration:CombinedShow(0.5, args.destName)
		end
	end

	function mod:SPELL_AURA_REMOVED(args)
		--if args.spellId == 19451 then
		if args.spellName == Enrage and args:IsDestTypeHostile() then
			self:SendSync("EnrageStop")
			if self:AntiSpam(5, 2) then
				timerEnrage:Stop()
			end
		end
	end
end

do
	local Panic = DBM:GetSpellInfo(19408)
	function mod:SPELL_CAST_SUCCESS(args)
		--if args.spellId == 19408 then
		if args.spellName == Panic then
			self:SendSync("Panic")
			if self:AntiSpam(5, 3) then
				warnPanic:Show()
				timerPanicCD:Start()
			end
		end
	end
end

function mod:OnSync(msg, targetName)
	if not self:IsInCombat() then return end
	if msg == "Enrage" and self:AntiSpam(5, 1) then
		if self.Options.SpecWarn19451dispel then
			specWarnEnrage:Show(L.name)
			specWarnEnrage:Play("enrage")
		else
			warnEnrage:Show(L.name)
		end
		timerEnrage:Start()
	elseif msg == "EnrageStop" and self:AntiSpam(5, 2) then
		timerEnrage:Stop()
	elseif msg == "Panic" and self:AntiSpam(5, 3) then
		warnPanic:Show()
		timerPanicCD:Start()
	end
end
