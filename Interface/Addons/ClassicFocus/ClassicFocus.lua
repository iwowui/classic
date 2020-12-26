local version = "1.0.2"
--/run print(GetBuildInfo());

-- local focusButton = CreateFrame("Button","focusButton",TargetFrameTextureFrame,"UIPanelButtonTemplate") --frameType, frameName, frameParent, frameTemplate
-- focusButton:SetSize(125,20)
-- focusButton:SetText("set focus")
-- focusButton:SetPoint("TOPLEFT",2,-2)
-- focusButton:SetScript("OnClick", function(self, arg1)
--     setFocusFromCurrentTarget()
-- end)


local focusButton = CreateFrame("Button","focusButton",TargetFrameTextureFrame) --frameType, frameName, frameParent, frameTemplate
focusButton:SetWidth(32);
focusButton:SetHeight(32);
focusButton:ClearAllPoints();
focusButton:SetPoint("TOPLEFT", TargetFrame, "TOPLEFT", 160, 3);
focusButton:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight");
-- focusButton:SetAlpha(0);

focusButton.Border = focusButton:CreateTexture("focusButtonBorder", "OVERLAY");
focusButton.Border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder");
focusButton.Border:SetWidth(54);
focusButton.Border:SetHeight(54);
focusButton.Border:ClearAllPoints();
focusButton.Border:SetPoint("CENTER", 11, -12);

focusButton.Background = focusButton:CreateTexture("focusButtonBG", "BORDER");
focusButton.Background:SetTexture("Interface\\Minimap\\UI-Minimap-Background");
focusButton.Background:SetWidth(20);
focusButton.Background:SetHeight(20);
focusButton.Background:ClearAllPoints();
focusButton.Background:SetPoint("CENTER");
focusButton.Background:SetVertexColor(0, 0, 0, 1);

focusButton.Icon = focusButton:CreateTexture("focusButtonIcon", "ARTWORK");
focusButton.Icon:SetTexture("Interface\\AddOns\\UnitFramesPlus\\MinimapButton");
focusButton.Icon:SetWidth(20);
focusButton.Icon:SetHeight(20);
focusButton.Icon:ClearAllPoints();
focusButton.Icon:SetPoint("CENTER");

focusButton:SetScript("OnClick", function(self, arg1)
    setFocusFromCurrentTarget()
end)
focusButton:SetScript("OnEnter",function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
    GameTooltip:SetText("设置焦点");
end)
focusButton:SetScript("OnLeave",function()
    GameTooltip:Hide();
end)

-----------------------

local focus = CreateFrame("Button", "focus", UIParent, "SecureUnitButtonTemplate")
-- Give it click actions:
focus:RegisterForClicks("AnyUp")
focus:SetAttribute("*type1", "macro") -- left click causes macro
focus:SetAttribute("macrotext1", "/run checkIfHasNoFocusAndDisplayError()")

focus:SetMovable(true)
focus:EnableMouse(true)
focus:SetClampedToScreen(true);
focus:RegisterForDrag("LeftButton")
focus:SetScript("OnDragStart", focus.StartMoving)
focus:SetScript("OnDragStop", focus.StopMovingOrSizing)

focus:SetFrameStrata("LOW")
focus:SetSize(200,90)
focus:SetText("set as target")
focus:SetPoint("LEFT",0,0)
focus:SetBackdrop({ bgFile = "Interface\\BUTTONS\\WHITE8X8" })
focus:SetBackdropColor(0.9, 0.9, 0.9, 0.0)

-----------------------

local focusTargetPortrait = focus:CreateTexture(nil, "BACKGROUND")
focusTargetPortrait:SetSize(60,60)
focusTargetPortrait:SetPoint("TOPRIGHT",-13,-14)

-----------------------

local focusBG = focus:CreateTexture(nil, "BACKGROUND2")
focusBG:SetSize(200,90)
focusBG:SetPoint("TOPLEFT",0,0);
focusBG:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame");
focusBG:SetTexCoord(0.1, 0.87, 0, 0.7);

-----------------------

local focusButton = CreateFrame("Button","focusButton",focus,"UIPanelButtonTemplate") --frameType, frameName, frameParent, frameTemplate
focusButton:SetSize(125,20)
-- focusButton:SetText("clear focus")
focusButton:SetText("取消焦点")
focusButton:SetPoint("TOPLEFT",1,-2)
focusButton:SetScript("OnClick", function(self, arg1)
    --setFocusFromCurrentTarget()
	clearFocus()
end)

-----------------------

local focusTargetNameBg = CreateFrame("Frame",nil,focus)
focusTargetNameBg:SetFrameLevel(0)
-- focusTargetNameBg:SetBackdrop({
    -- bgFile="Interface/Tooltips/UI-Tooltip-Background", 
    --edgeFile="Interface/Tooltips/UI-Tooltip-Border",
    -- tile=true,tileSize=16,edgeSize=16, 
    -- insets={left=0,right=0,top=0,bottom=0}
-- });
-- focusTargetNameBg:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r,TOOLTIP_DEFAULT_COLOR.g,TOOLTIP_DEFAULT_COLOR.b);
-- focusTargetNameBg:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r,TOOLTIP_DEFAULT_BACKGROUND_COLOR.g,TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
focusTargetNameBg:SetBackdrop({ bgFile = "Interface\\BUTTONS\\WHITE8X8", edgeSize=16 })
focusTargetNameBg:SetBackdropColor(0.0, 0.0, 1.0, 1.0)

local focusTargetNameFrame = CreateFrame("Frame",nil,focus)

local focusTargetName = focusTargetNameFrame:CreateFontString(nil,"OVERLAY",f,"TextStatusBarText")
focusTargetName:SetFont("Fonts\\ARIALN.TTF", 13, "THINOUTLINE")
focusTargetName:SetTextColor(1, 0.8, 0.8)
focusTargetName:SetText("Name")

focusTargetNameBg:SetSize(119,20)
focusTargetNameBg:SetPoint("TOPLEFT",5,-22);
focusTargetNameFrame:SetSize(119,20)
focusTargetNameFrame:SetPoint("TOPLEFT",5,-22);
focusTargetName:SetSize(100,20)
focusTargetName:SetPoint("CENTER",0,0)

-----------------------

local focusTargetLevelFrame = CreateFrame("Frame",nil,focus)

local focusTargetLevel = focusTargetLevelFrame:CreateFontString(nil,"OVERLAY",f,"TextStatusBarText")
focusTargetLevel:SetFont("Fonts\\ARIALN.TTF", 13, "THINOUTLINE")
focusTargetLevel:SetTextColor(1, 0.8, 0)
focusTargetLevel:SetText("??")

focusTargetLevelFrame:SetSize(20,20)
focusTargetLevelFrame:SetPoint("BOTTOMRIGHT",-9.5,13.3);
focusTargetLevel:SetSize(20,20)
focusTargetLevel:SetPoint("CENTER",0,0)

-----------------------

local focusTargetHealthBg = CreateFrame("Frame",nil,focus)
focusTargetHealthBg:SetFrameLevel(0)
-- focusTargetHealthBg:SetBackdrop({
    -- bgFile="Interface/Tooltips/UI-Tooltip-Background", 
    edgeFile="Interface/Tooltips/UI-Tooltip-Border",
    -- tile=true,tileSize=16,edgeSize=16, 
    -- insets={left=0,right=0,top=0,bottom=0}
-- });
-- focusTargetHealthBg:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r,TOOLTIP_DEFAULT_COLOR.g,TOOLTIP_DEFAULT_COLOR.b);
focusTargetHealthBg:SetBackdrop({ bgFile = "Interface\\BUTTONS\\WHITE8X8", edgeSize=16 })
focusTargetHealthBg:SetBackdropColor(0.0, 1.0, 0.0, 1.0)

local focusTargetHealthFrame = CreateFrame("Frame",nil,focus)

local focusTargetHealth = focusTargetHealthFrame:CreateFontString(nil,"OVERLAY",f,"TextStatusBarText")
focusTargetHealth:SetFont("Fonts\\ARIALN.TTF", 13, "THINOUTLINE")
focusTargetHealth:SetTextColor(1, 1, 1)
focusTargetHealth:SetText("HP: ??/??")


local focusTargetHealthMaxW = 119
local focusTargetHealthMaxH = 15
focusTargetHealthBg:SetSize(focusTargetHealthMaxW,focusTargetHealthMaxH)
focusTargetHealthBg:SetPoint("TOPLEFT",5,-40);
focusTargetHealthFrame:SetSize(focusTargetHealthMaxW,focusTargetHealthMaxH)
focusTargetHealthFrame:SetPoint("TOPLEFT",5,-40);
focusTargetHealth:SetSize(118,focusTargetHealthMaxH)
focusTargetHealth:SetPoint("CENTER",0,0)

-----------------------

local focusTargetPowerBg = CreateFrame("Frame",nil,focus)
focusTargetPowerBg:SetFrameLevel(0)
-- focusTargetPowerBg:SetBackdrop({
    -- bgFile="Interface/Tooltips/UI-Tooltip-Background", 
    edgeFile="Interface/Tooltips/UI-Tooltip-Border",
    -- tile=true,tileSize=16,edgeSize=16, 
    -- insets={left=0,right=0,top=0,bottom=0}
-- });
-- focusTargetPowerBg:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r,TOOLTIP_DEFAULT_COLOR.g,TOOLTIP_DEFAULT_COLOR.b);
focusTargetPowerBg:SetBackdrop({ bgFile = "Interface\\BUTTONS\\WHITE8X8", edgeSize=16 })
focusTargetPowerBg:SetBackdropColor(0.0, 0.0, 1.0, 1.0)

local focusTargetPowerFrame = CreateFrame("Frame",nil,focus)

local focusTargetPower = focusTargetPowerFrame:CreateFontString(nil,"OVERLAY",f,"TextStatusBarText")
focusTargetPower:SetFont("Fonts\\ARIALN.TTF", 13, "THINOUTLINE")
focusTargetPower:SetTextColor(1, 1, 1)
focusTargetPower:SetText("PWR: ??/??")

local focusTargetPowerMaxW = 119
local focusTargetPowerMaxH = 15
focusTargetPowerBg:SetSize(focusTargetPowerMaxW,focusTargetPowerMaxH)
focusTargetPowerBg:SetPoint("TOPLEFT",5,-51);
focusTargetPowerFrame:SetSize(focusTargetPowerMaxW,focusTargetPowerMaxH)
focusTargetPowerFrame:SetPoint("TOPLEFT",5,-51)
focusTargetPower:SetSize(118,focusTargetPowerMaxH)
focusTargetPower:SetPoint("CENTER",0,0)

-----------------------

focus:SetFrameLevel(120)
--focus:Hide()

-----------------------

-- focus:HookScript('OnClick', function(self, button, down)
   --if button == 'LeftButton' and not IsModifierKeyDown() then
   --   DoEmote('point')
   --end
   --DoEmote('point')
   --if button == 'LeftButton' and not down then
	   --if currentFocusTargetName ~= UnitName("target") then
		--	NotWhileDeadError()
		--	NotWhileDeadError()
		--	NotWhileDeadError()
		--	print("|cffFF0000--ClassicFocus: UNABLE TO SELECT YOUR FOCUS TARGET--");
	   --end
   --end
-- end)

function displayCantSelectFocusTargetError()
	NotWhileDeadError()
	NotWhileDeadError()
	NotWhileDeadError()
	print("|cffFF0000--ClassicFocus: UNABLE TO SELECT YOUR FOCUS TARGET--");
end

function displayYouHaveNoFocusTargetError()
	NotWhileDeadError()
	NotWhileDeadError()
	NotWhileDeadError()
	print("|cffFF0000--ClassicFocus: YOU HAVE NO FOCUS TARGET--");
end

function displayYouHaveNoTargetError()
	NotWhileDeadError()
	NotWhileDeadError()
	NotWhileDeadError()
	print("|cffFF0000--ClassicFocus: YOU HAVE NO TARGET TO SET FOCUS TO--");
end

function checkIfHasNoFocusAndDisplayError()
	if currentFocusTargetName == nil then
		displayYouHaveNoFocusTargetError()
	end
end

currentFocusTargetName = nil

function clearFocus()
    focusTargetHealthBg:SetSize(focusTargetHealthMaxW,15)
    focusTargetPowerBg:SetSize(focusTargetPowerMaxW,15)
	currentFocusTargetName = nil
	-- focus:SetAttribute("macrotext1", "/cleartarget\n/target " .. "-" .. "\n/stopmacro [exists]\n/run displayYouHaveNoFocusTargetError()") -- text for macro on left clickclick
	focus:SetAttribute("macrotext1", "/target " .. "-" .. "\n/stopmacro [exists]\n/run displayYouHaveNoFocusTargetError()") -- text for macro on left
	focus:Hide()
end

function setFocusFromCurrentTarget()
	if UnitName("target") ~= nil then
		currentFocusTargetName = UnitName("target")
		-- focus:SetAttribute("macrotext1", "/cleartarget\n/target " .. currentFocusTargetName .. "\n/stopmacro [exists]\n/run displayCantSelectFocusTargetError()") -- text for macro on left clickclick
		focus:SetAttribute("macrotext1", "/target " .. currentFocusTargetName .. "\n/stopmacro [exists]\n/run displayCantSelectFocusTargetError()")
		if currentFocusTargetName ~= nil then
			updateFocusFromCurrentTarget()
			focus:Show()
			checkFocusTarget()
		end
	else
		displayYouHaveNoTargetError()
	end
end

function updateFocusFromCurrentTarget()
	--focusTargetName:SetFormattedText("%s (%s)", UnitName("target"))
	focusTargetName:SetText(UnitName("target"))
	if UnitLevel("target") > 0 then
		focusTargetLevel:SetText(UnitLevel("target"))
	else
		focusTargetLevel:SetText("??")
	end
	if not UnitExists("target") then
		focusTargetHealth:SetText("n/e")
		focusTargetPower:SetText("n/e")
	elseif UnitIsDead("target") then
		focusTargetHealth:SetText("dead")
		focusTargetPower:SetText("dead")
		SetPortraitTexture(focusTargetPortrait, "target")
	else
	SetPortraitTexture(focusTargetPortrait, "target")
		if UnitHealthMax("target") == 100 then
			focusTargetHealth:SetFormattedText("%d/%d (%%)", UnitHealth("target"), UnitHealthMax("target"))
		else 
			focusTargetHealth:SetFormattedText("%d/%d", UnitHealth("target"), UnitHealthMax("target"))
		end			
		focusTargetPower:SetFormattedText("%d/%d", UnitPower("target"), UnitPowerMax("target"))
		
		if UnitHealth("target") == 0 or UnitHealthMax("target") == 0 then
			focusTargetHealthBg:SetSize(1,focusTargetHealthMaxH)	
		else
			focusTargetHealthBg:SetSize(focusTargetHealthMaxW*(UnitHealth("target")/UnitHealthMax("target")),focusTargetHealthMaxH)	
		end
		if UnitPower("target") == 0 or UnitPowerMax("target") == 0 then
			focusTargetPowerBg:SetSize(1,focusTargetPowerMaxH)
		else
			focusTargetPowerBg:SetSize(focusTargetPowerMaxW*(UnitPower("target")/UnitPowerMax("target")),focusTargetPowerMaxH)
		end
	end
end

function dispatchEventsHere(self, event, arg1, ...)
	if event == "ADDON_LOADED" and arg1 == "ClassicFocus" then
		print("ClassicFocus: Addon is loaded. Version: "..version)
	end
	if event == "PLAYER_TARGET_CHANGED" then
		--nothing
		--if UnitName("target") ~= nil then
		--	focusTargetName:SetFormattedText("arg1: "..UnitName("target"))
		--elseif currentFocusTargetName ~= nil then
		--	--focus:Click()
		--end
	end
	--if event == "OnKeyDown" then
	--	focusTargetName:SetFormattedText("Focused: %s", UnitName("target"))
	--end
	checkFocusTarget()
end

function checkFocusTarget()
	if currentFocusTargetName ~= nil and currentFocusTargetName == UnitName("target") then
		updateFocusFromCurrentTarget()
		focusTargetHealthBg:SetBackdropColor(0.0, 0.7, 0.0, 1.0)
		focusTargetPowerBg:SetBackdropColor(0.0, 0.0, 0.6, 1.0)
		
		if UnitIsPlayer("target") then
			if UnitIsEnemy("target", "player") then
				focusTargetNameBg:SetBackdropColor(0.6, 0.0, 0.0, 1.0)
			elseif UnitIsPVP("target") then
				focusTargetNameBg:SetBackdropColor(0.0, 0.7, 0.0, 1.0)
			else
				focusTargetNameBg:SetBackdropColor(0.0, 0.0, 0.6, 1.0)
			end
		else
			if UnitIsEnemy("target", "player") then
				focusTargetNameBg:SetBackdropColor(0.6, 0.0, 0.0, 1.0)
			elseif UnitReaction("target", "player") == 4 then
				focusTargetNameBg:SetBackdropColor(0.7, 0.7, 0.1, 1.0)
			elseif UnitReaction("target", "player") < 4 then
				focusTargetNameBg:SetBackdropColor(0.6, 0.0, 0.0, 1.0)
			else
				focusTargetNameBg:SetBackdropColor(0.0, 0.7, 0.0, 1.0)
			end
		end
		
	else
		--focusTargetNameBg:SetBackdropColor(0.0, 0.0, 0.6, 1.0)
		focusTargetHealthBg:SetBackdropColor(0.8, 0.8, 0.8, 1.0)
		focusTargetPowerBg:SetBackdropColor(0.4, 0.4, 0.4, 1.0)
	end
end

--INIT

focus:SetScript("OnEvent", dispatchEventsHere)
--focus:SetScript("OnKeyDown", dispatchEventsHere)
focus:RegisterEvent("ADDON_LOADED")
focus:RegisterEvent("UNIT_HEALTH")
focus:RegisterEvent("PLAYER_TARGET_CHANGED")
focus:RegisterEvent("PLAYER_ENTERING_WORLD")
focus:RegisterEvent("UNIT_POWER_FREQUENT")

clearFocus()