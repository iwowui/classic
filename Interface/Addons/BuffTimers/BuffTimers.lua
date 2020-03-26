--[[

	BuffTimers: Mini timers for the top right buff icons
		copyright 2004 by Telo
	
	- Displays small timer text below each of the top right buff and debuff icons
	- Now simplified substantially by using the Blizzard interface elements to present the
	  timer information in the original BuffTimers format
	
]]

--------------------------------------------------------------------------------------------------
-- Local variables
--------------------------------------------------------------------------------------------------

local lWarned;

--------------------------------------------------------------------------------------------------
-- Internal functions
--------------------------------------------------------------------------------------------------

local function lSetTimeText(button, time)
	if( time <= 0 ) then
		button:SetText("");
	elseif( time < 60 ) then
		local d, h, m, s = ChatFrame_TimeBreakDown(time+1);
		button:SetFormattedText("|c00FF0000%ds|r", s);
	elseif( time < 600 ) then
		local d, h, m, s = ChatFrame_TimeBreakDown(time+1);
		button:SetFormattedText("|c00FF9B00%d:%02d|r", m, s);
	elseif( time < 3600 ) then
		local d, h, m, s = ChatFrame_TimeBreakDown(time+1);
		button:SetFormattedText("|c0000FF00%dm|r", m);
	else
		local d, h, m, s = ChatFrame_TimeBreakDown(time+1);
		button:SetFormattedText("|c0000FF00%dm|r", m+60);
		-- button:SetText("|c0000FF001 h+|r");
	end
end


--------------------------------------------------------------------------------------------------
-- OnFoo functions
--------------------------------------------------------------------------------------------------

function BuffTimers_OnLoad(self)
	-- Hook the functions we need to override
	hooksecurefunc("AuraButton_Update", BT_AuraButton_Update);
	hooksecurefunc("AuraButton_UpdateDuration", BuffTimers_AuraButton_UpdateDuration);

	if( DEFAULT_CHAT_FRAME ) then
		DEFAULT_CHAT_FRAME:AddMessage("Telo's BuffTimers AddOn loaded");
	end
	-- UIErrorsFrame:AddMessage("Telo's BuffTimers AddOn loaded", 1.0, 1.0, 1.0, 1.0, UIERRORS_HOLD_TIME);
end

function BT_AuraButton_Update(buttonName, index, filter)
	local unit = PlayerFrame.unit;
	local name, rank, texture, count, debuffType, duration, expirationTime = UnitAura(unit, index, filter);
 
	local buffName = buttonName..index;
	local buffDuration = getglobal(buffName.."Duration");
 
	if ( duration == 0 ) then
		buffDuration:SetText("|cff00ff00N/A|r");
		buffDuration:Show();
	end
end

function BuffTimers_AuraButton_UpdateDuration(buffButton, timeLeft)
	if( SHOW_BUFF_DURATIONS == "1" ) then
		local duration = getglobal(buffButton:GetName().."Duration");
		if( timeLeft ) then
			lSetTimeText(duration, timeLeft);
			duration:Show();
		else
			duration:Hide();
		end
	elseif( not lWarned ) then
		DEFAULT_CHAT_FRAME:AddMessage("NOTE: In order to see buff timers, you need to go to Blizzard's Options menu, choose Interface, and check Buff Durations.", 1, 1, 0);
		lWarned = true;
	end
end
