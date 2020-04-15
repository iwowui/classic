local f = CreateFrame('frame', nil, Minimap)
f:SetAllPoints()

local tx = f:CreateTexture(nil, 'BACKGROUND')
tx:SetTexture('interface/buttons/white8x8')
tx:SetGradientAlpha('VERTICAL', 0, 0, 0, 0.5, 1, 0, 0, 0.8)
tx:SetSize(2, f:GetWidth() / 2)
tx:SetPoint('BOTTOM', f, 'CENTER')

local ag = f:CreateAnimationGroup()
local rotation = ag:CreateAnimation('Rotation')
rotation:SetOrigin('BOTTOM', 0, 0)
rotation:SetDuration(0)
rotation:SetEndDelay(1)

local function OnUpdate(self)
	self:Pause()
	self:SetScript('OnUpdate', nil)
end

local function OnPlay(self)
	self:SetScript('OnUpdate', OnUpdate)
end

rotation:SetScript('OnPlay', OnPlay)

ag:Play()
rotation:Play()

f:SetScript('OnUpdate', function(self, elapsed)
	local r = GetPlayerFacing()
	if r then
		rotation:SetRadians(GetCVarBool('rotateMinimap') and 0 or r)
		f:Show()
	else
		f:Hide()
	end
end)