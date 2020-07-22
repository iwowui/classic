-- Get locale table
local void, ConvertRatings = ...
local L = ConvertRatings.L

--Set color variables default values to avoid first load errors :M
cvred = 1
cvgreen = .996
cvblue = .545
cvalpha = 1

--Hard coded color options table :L
local colorTable = {
	["blue"] = {0, 0, 1},
	["green"] = {0, 1, 0},
	["red"] = {1, 0, 0},
	["black"] = {0, 0, 0},
	["white"] = {1, 1, 1},
	["lightblue"] = {0, 1, 1},
	["lightred"] = {1, .5, .5},
	["pink"] = {1, .5, 1},
	["purple"] = {.7, 0, 1},
	["orange"] = {1, 0.5, 1},
	["default"] = {1, .996, .545}
}

--Classes
local str_to_ap = {
	["DRUID"] = 2,
	["HUNTER"] = 1,
	["MAGE"] = 0,
	["PALADIN"] = 2,
	["PRIEST"] = 0,
	["ROGUE"] = 1,
	["SHAMAN"] = 2,
	["WARLOCK"] = 0,
	["WARRIOR"] = 2
}
local str_to_block = {
	["DRUID"] = 0,
	["HUNTER"] = 0,
	["MAGE"] = 0,
	["PALADIN"] = 20,
	["PRIEST"] = 0,
	["ROGUE"] = 0,
	["SHAMAN"] = 20,
	["WARLOCK"] = 0,
	["WARRIOR"] = 20
}

local agil_to_ap = {
	["DRUID"] = 1,
	["HUNTER"] = 2,
	["MAGE"] = 0,
	["PALADIN"] = 0,
	["PRIEST"] = 0,
	["ROGUE"] = 1,
	["SHAMAN"] = 0,
	["WARLOCK"] = 0,
	["WARRIOR"] = 1
}
local agil_to_crit = {
	["DRUID"] = 20,
	["HUNTER"] = 53,
	["MAGE"] = 0,
	["PALADIN"] = 20,
	["PRIEST"] = 0,
	["ROGUE"] = 29,
	["SHAMAN"] = 20,
	["WARLOCK"] = 0,
	["WARRIOR"] = 20
}
local agil_to_dodge = {
	["DRUID"] = 20,
	["HUNTER"] = 26,
	["MAGE"] = 20,
	["PALADIN"] = 20,
	["PRIEST"] = 20,
	["ROGUE"] = 14.5,
	["SHAMAN"] = 20,
	["WARLOCK"] = 20,
	["WARRIOR"] = 20
}
local int_to_mana = {
	["DRUID"] = 15,
	["HUNTER"] = 15,
	["MAGE"] = 15,
	["PALADIN"] = 15,
	["PRIEST"] = 15,
	["ROGUE"] = 0,
	["SHAMAN"] = 15,
	["WARLOCK"] = 15,
	["WARRIOR"] = 0
}
local int_to_crit = {
	["DRUID"] = 60,
	["HUNTER"] = 0,
	["MAGE"] = 59.5,
	["PALADIN"] = 54,
	["PRIEST"] = 59.2,
	["ROGUE"] = 0,
	["SHAMAN"] = 59.5,
	["WARLOCK"] = 60.6,
	["WARRIOR"] = 0
}
local stam_to_health = {
	["DRUID"] = 10,
	["HUNTER"] = 10,
	["MAGE"] = 10,
	["PALADIN"] = 10,
	["PRIEST"] = 10,
	["ROGUE"] = 10,
	["SHAMAN"] = 10,
	["WARLOCK"] = 10,
	["WARRIOR"] = 10
}
local spirit_to_regen = {
	["DRUID"] = 15,
	["HUNTER"] = 15,
	["MAGE"] = 12.5,
	["PALADIN"] = 15,
	["PRIEST"] = 12.5,
	["ROGUE"] = 0,
	["SHAMAN"] = 17,
	["WARLOCK"] = 15,
	["WARRIOR"] = 0
}

local spirit_to_regen_class = {
	["DRUID"] = 4.5,
	["HUNTER"] = 5,
	["MAGE"] = 4,
	["PALADIN"] = 5,
	["PRIEST"] = 4,
	["ROGUE"] = 0,
	["SHAMAN"] = 5,
	["WARLOCK"] = 5,
	["WARRIOR"] = 0
}

local itemSlotTable = {
	-- Source: http://wowwiki.wikia.com/wiki/ItemEquipLoc
	["INVTYPE_AMMO"] =           { 0 },
	["INVTYPE_HEAD"] =           { 1 },
	["INVTYPE_NECK"] =           { 2 },
	["INVTYPE_SHOULDER"] =       { 3 },
	["INVTYPE_BODY"] =           { 4 },
	["INVTYPE_CHEST"] =          { 5 },
	["INVTYPE_ROBE"] =           { 5 },
	["INVTYPE_WAIST"] =          { 6 },
	["INVTYPE_LEGS"] =           { 7 },
	["INVTYPE_FEET"] =           { 8 },
	["INVTYPE_WRIST"] =          { 9 },
	["INVTYPE_HAND"] =           { 10 },
	["INVTYPE_FINGER"] =         { 11, 12 },
	["INVTYPE_TRINKET"] =        { 13, 14 },
	["INVTYPE_CLOAK"] =          { 15 },
	["INVTYPE_WEAPON"] =         { 16, 17 },
	["INVTYPE_SHIELD"] =         { 17 },
	["INVTYPE_2HWEAPON"] =       { 16 },
	["INVTYPE_WEAPONMAINHAND"] = { 16 },
	["INVTYPE_WEAPONOFFHAND"] =  { 17 },
	["INVTYPE_HOLDABLE"] =       { 17 },
	["INVTYPE_RANGED"] =         { 18 },
	["INVTYPE_THROWN"] =         { 18 },
	["INVTYPE_RANGEDRIGHT"] =    { 18 },
	["INVTYPE_RELIC"] =          { 18 },
	["INVTYPE_TABARD"] =         { 19 },
	["INVTYPE_BAG"] =            { 20, 21, 22, 23 },
	["INVTYPE_QUIVER"] =         { 20, 21, 22, 23 }
  };

  local function usableSlotID ( itemEquipLoc )
	return itemSlotTable[itemEquipLoc] or nil
  end
  
  local function defaultItemSlotID ( ItemID )
	-- http://wowwiki.wikia.com/wiki/API_GetItemInfo: 9th slot is itemEquipLoc
	return select( 9, GetItemInfo( ItemID ) ) or nil
  end

-- Classic Variables
local strAP, strBLK, agilAP, agilCRIT, agilDODGE, intCRIT, intMANA, stamHP, spiritREGEN, spiritREGENCLASS;

--Color Picker
local function ShowColorPicker(cvred, cvgreen, cvblue, cvalpha, changedCallback)
 ColorPickerFrame:SetColorRGB(cvred, cvgreen, cvblue);
 ColorPickerFrame.hasOpacity, ColorPickerFrame.opacity = (cvalpha ~= nil), cvalpha;
 ColorPickerFrame.previousValues = {cvred, cvgreen, cvblue, cvalpha};
 ColorPickerFrame.func, ColorPickerFrame.opacityFunc, ColorPickerFrame.cancelFunc =  changedCallback, changedCallback, changedCallback;
 ColorPickerFrame:Hide();
 ColorPickerFrame:Show();
end

local function myColorCallback(restore)
 local newR, newG, newB, newA;
 if restore then
  newR, newG, newB, newA = unpack(restore);  
 else
  newA, newR, newG, newB = OpacitySliderFrame:GetValue(), ColorPickerFrame:GetColorRGB();
 end 
  cvred, cvgreen, cvblue, cvalpha = newR, newG, newB, newA;  
end

--Slash Command to change the color of the output :M
SLASH_CONVERTRATINGS1, SLASH_CONVERTRATINGS2 = '/convertratings', '/cvr';
function SlashCmdList.CONVERTRATINGS(msg, editBox)
	--Grab the first input word as the command and the rest of the input as a user variable :M
	local command, rest = msg:match("^(%S*)%s*(.-)$");
	--Hard coded color options parsing :M&L
	
	if (colorTable[string.lower(command)]) then
		cvred, cvgreen, cvblue = unpack(colorTable[string.lower(command)]);
		print("Convert Ratings output color set to "..string.lower(command));
	elseif string.lower(command) == 'custom' and rest == "" then
		ShowColorPicker(cvred, cvgreen, cvblue, nil, myColorCallback);
	else
		--when no valid args entered, output this stuff :M
		print("Convert Ratings: Valid color options are red, green, blue, black, white, lightblue, lightred, pink, purple, orange or custom")
		print("Convert Ratings: The custom option will bring up the Color Picker for you to choose a color.")
		print("Convert Ratings: To reset to the default color, use /convertratings default")
	end
end

--rating tables to allow addon to work at all levels :M

--Create Function to round the decimals :M
local function mathround(number, precision)
  precision = precision or 0

  local decimal = string.find(tostring(number), ".", nil, true);
  
  if ( decimal ) then  
    local power = 10 ^ precision;
    
    if ( number >= 0 ) then 
      number = math.floor(number * power + 0.5) / power;
    else 
      number = math.ceil(number * power - 0.5) / power;    
    end
    
    -- convert number to string for formatting :M
    number = tostring(number);      
    
    -- set cutoff :M
    local cutoff = number:sub(decimal + 1 + precision);
      
    -- delete everything after the cutoff :M
    number = number:gsub(cutoff, "");
  else
    -- number is an integer :M
    if ( precision > 0 ) then
      number = tostring(number);
      
      number = number .. ".";
      
      for i = 1,precision
      do
        number = number .. "0";
      end
    end
  end    
  return number;
end

function dump(o)
	if type(o) == 'table' then
	   local s = '{ '
	   for k,v in pairs(o) do
		  if type(k) ~= 'number' then k = '"'..k..'"' end
		  s = s .. '['..k..'] = ' .. dump(v) .. ','
	   end
	   return s .. '} '
	else
	   return tostring(o)
	end
 end

 local function scanTooltip(itemId, statToFind)
	--Gets stats from non Artifact items
	--print(itemId)

	local aaalink = select(2,GetItemInfo(itemId))

	

	CreateFrame( "GameTooltip", "MyScanningTooltip", nil, "GameTooltipTemplate" ); -- Tooltip name cannot be nil
	MyScanningTooltip:SetOwner( WorldFrame, "ANCHOR_NONE" );
	MyScanningTooltip:SetHyperlink(aaalink)

	-- Store the number of lines for after ClearLines().
	local numLines = MyScanningTooltip:NumLines()

	local stat;
	--Set output values in the same line as the rating in tooltip :L
	for i=1, numLines do		
		local line = _G[MyScanningTooltip:GetName().."TextLeft"..i]
		local text = line:GetText()
		local bFound = false;
		if text then

			-- because wow is dumb, and sometimes we need to correct it....
			
			local stringBuilder, stringSep;
			--print(text)
			if string.find(text, _G[statToFind]) then
				stat = string.match(text,"%d+")
				bFound = true;
			end
			
		end

		if (bFound) then
			break;
		end

	end

	return stat;


end

local function fConvertStat(mode, value, statweight)

	if (value == nil) then return 0; end

	if (mode == "mult") then
		value = value * statweight;
	elseif (mode == "div") then
		value = value / statweight;
		value = mathround(value, 2);
	elseif (mode == "spirit") then
		value = (statweight / spiritREGENCLASS) + value
		value = mathround(value, 2)
	elseif (mode == "allstat") then

		stringBuilder = " (";
		if (strAP~=0) then
			stringBuilder = stringBuilder .. "+" .. fConvertStat("mult", value, strAP) .. " " .. L["AP"]
		end
		if (strBLK~=0) then
			if strlen(stringBuilder) > 3 then stringSep = ", +" else stringSep = "" end
			stringBuilder = stringBuilder .. stringSep .. fConvertStat("div", value, strBLK) .. " " .. L["BLOCK"]
		end
		if (agilAP~=0) then
			if strlen(stringBuilder) > 3 then stringSep = ", +" else stringSep = "" end
			stringBuilder = stringBuilder .. stringSep  .. fConvertStat("mult", value, agilAP) .. " " .. L["AP"]
		end
		if (agilCRIT~=0) then
			if strlen(stringBuilder) > 3 then stringSep = ", " else stringSep = "" end
			stringBuilder = stringBuilder .. stringSep .. fConvertStat("div", value, agilCRIT) .. "% " .. L["CRIT"]
		end
		if (agilDODGE~=0) then
			if strlen(stringBuilder) > 3 then stringSep = ", " else stringSep = "" end
			stringBuilder = stringBuilder .. stringSep .. fConvertStat("div", value, agilDODGE) .. "% " .. L["DODGE"]
		end
		if (intCRIT~=0) then
			if strlen(stringBuilder) > 3 then stringSep = ", " else stringSep = "" end
			stringBuilder = stringBuilder .. stringSep .. fConvertStat("div", value, intCRIT) .. "% " .. L["SPELLCRIT"]
		end	
		if (intMANA~=0) then
			if strlen(stringBuilder) > 3 then stringSep = ", +" else stringSep = "" end
			stringBuilder = stringBuilder .. stringSep .. fConvertStat("mult", value, intMANA) .. " " .. L["MANA"]
		end
		if (stamHP~=0) then
			if strlen(stringBuilder) > 3 then stringSep = ", +" else stringSep = "" end
			stringBuilder = stringBuilder .. stringSep .. fConvertStat("mult", value, stamHP) .. " " .. L["HEALTH"]
		end
		if (spiritREGEN~=0) then
			if strlen(stringBuilder) > 3 then stringSep = ", +" else stringSep = "" end
			stringBuilder = stringBuilder .. stringSep .. fConvertStat("spirit", value, spiritREGEN) .. " " .. L["MANAREGEN"]
		end
		stringBuilder = stringBuilder .. ")";

		if stringBuilder ~= nil then
			if strlen(stringBuilder) > 3 then
				value = stringBuilder;
			end
		end

	elseif (mode == "armor") then
		local playerLevel = UnitLevel("player");
		local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor("player");

		local slot1, slot2 = unpack(usableSlotID(statweight))

		itemId = GetInventoryItemID("player", slot1);
		local armorFromChar
		
		if (itemid ~= nil) then
			armorFromChar = scanTooltip(itemId, "STAT_ARMOR")
		end

		if (armorFromChar == nil) then
			armorFromChar = 0;
		end

		--effectiveArmor = effectiveArmor - armorFromChar;

		local totalArmorReduction;
		if (playerLevel < 60) then
			totalArmorReduction = (effectiveArmor - armorFromChar) / ((effectiveArmor - armorFromChar) + 400 + 85 * playerLevel)
		else
			totalArmorReduction = (effectiveArmor - armorFromChar) / ((effectiveArmor - armorFromChar) + 400 + 85 * (playerLevel + 4.5 * (playerLevel - 59)))
		end

		totalArmorReduction = totalArmorReduction * 100;
		totalArmorReduction = mathround(totalArmorReduction,2)

		if (playerLevel < 60) then
			value = (effectiveArmor + value) / ((effectiveArmor + value) + 400 + 85 * playerLevel)
		else
			value = (effectiveArmor + value) / ((effectiveArmor + value) + 400 + 85 * (playerLevel + 4.5 * (playerLevel - 59)))
		end

		value = value * 100;
		
		

		value = value - totalArmorReduction
		value = mathround(value,2)
	end

	return value;
end

-- Have to override GameTooltip.GetItem() after calling ClearLines().
-- This will restore the original after the tooltip is closed.
local originalGetItem = GameTooltip.GetItem
GameTooltip:HookScript("OnHide", function(self)
  GameTooltip.GetItem = originalGetItem
end)

--Here is the function where the stats are pulled from the item that is currently moused over
local function getItemIdFromTooltip(self)

   	--Get itemLink of mouseover :L
	local name, itemLink = self:GetItem();
	--Check to make sure an itemLink is actually returned
	if(itemLink == nil) then
		return;
	end

	--Set Player level
	--cvlevel = UnitLevel("player")
	
	--Declare variables for future use
	local hexcolor;
	
	--Get Item rarity
	--local irare = select(3,GetItemInfo(itemLink))
	local itemType = select(12,GetItemInfo(itemLink))

	if (itemType ~= 4 and itemType ~= 2) then
		return;
	end

	--Gets stats from non Artifact items
	local stats = GetItemStats(itemLink);
	
	--If not an item with stats, don't do anything
	if(stats == nil) then
		return;
	end

	local localizedClass, englishClass, classIndex = UnitClass("Player");
	
	--Select the level based rating amounts
	strAP = str_to_ap[englishClass];
	strBLK = str_to_block[englishClass];
	agilAP = agil_to_ap[englishClass];
	agilCRIT = agil_to_crit[englishClass];
	agilDODGE = agil_to_dodge[englishClass];
	intCRIT = int_to_crit[englishClass];
	intMANA = int_to_mana[englishClass];
	stamHP = stam_to_health[englishClass];
	spiritREGEN = spirit_to_regen[englishClass];
	spiritREGENCLASS = spirit_to_regen_class[englishClass];
	

	--Convert text color from decimal to hex
	hexcolor = string.format("|cff%02x%02x%02x", cvred*255, cvgreen*255, cvblue*255)
	white = string.format("|cff%02x%02x%02x", 255, 255, 255)
	
	local leftText = {}
	local leftTextR = {}
	local leftTextG = {}
	local leftTextB = {}
	
	local rightText = {}
	local rightTextR = {}
	local rightTextG = {}
	local rightTextB = {}
	
	-- Store the number of lines for after ClearLines().
	local numLines = self:NumLines()

	--Set output values in the same line as the rating in tooltip :L
	for i=2, self:NumLines() do		
		local line = _G[self:GetName().."TextLeft"..i]
		local text = line:GetText()
		local bFound = false;
		if text then


			-- because wow is dumb, and sometimes we need to correct it....
			local stat;
			local stringBuilder, stringSep;
			
			if string.find(text, _G["ITEM_MOD_STRENGTH_SHORT"]) then

				stat = string.match(text,"%d+")

				stringBuilder = " (";
				if (strAP~=0) then
					stringBuilder = stringBuilder .. "+" .. fConvertStat("mult", stat, strAP) .. " " .. L["AP"]
				end
				if (strBLK~=0) then
					if strlen(stringBuilder) > 3 then stringSep = ", +" else stringSep = "" end
					stringBuilder = stringBuilder .. stringSep .. fConvertStat("div", stat, strBLK) .. " " .. L["BLOCK"]
				end
				stringBuilder = stringBuilder .. ")";

			elseif string.find(text, _G["ITEM_MOD_AGILITY_SHORT"]) then
				stat = string.match(text,"%d+")
				
				stringBuilder = " (";
				if (agilAP~=0) then
					stringBuilder = stringBuilder .. "+" .. fConvertStat("mult", stat, agilAP) .. " " .. L["AP"]
				end
				if (agilCRIT~=0) then
					if strlen(stringBuilder) > 3 then stringSep = ", " else stringSep = "" end
					stringBuilder = stringBuilder .. stringSep .. fConvertStat("div", stat, agilCRIT) .. "% " .. L["CRIT"]
				end
				if (agilDODGE~=0) then
					if strlen(stringBuilder) > 3 then stringSep = ", " else stringSep = "" end
					stringBuilder = stringBuilder .. stringSep .. fConvertStat("div", stat, agilDODGE) .. "% " .. L["DODGE"]
				end
				stringBuilder = stringBuilder .. ")";

			elseif string.find(text, _G["ITEM_MOD_INTELLECT_SHORT"]) then
				stat = string.match(text,"%d+")
				
				stringBuilder = " (";
				if (intCRIT~=0) then
					stringBuilder = stringBuilder .. fConvertStat("div", stat, intCRIT) .. "% " .. L["SPELLCRIT"]
				end	
				if (intMANA~=0) then
					if strlen(stringBuilder) > 3 then stringSep = ", +" else stringSep = "" end
					stringBuilder = stringBuilder .. stringSep .. fConvertStat("mult", stat, intMANA) .. " " .. L["MANA"]
				end
				stringBuilder = stringBuilder .. ")";

			elseif string.find(text, _G["ITEM_MOD_STAMINA_SHORT"]) then
				stat = string.match(text,"%d+")
				
				stringBuilder = " (";
				if (stamHP~=0) then
					stringBuilder = stringBuilder .. "+" .. fConvertStat("mult", stat, stamHP) .. " " .. L["HEALTH"]
				end
				stringBuilder = stringBuilder .. ")";

			elseif string.find(text, _G["ITEM_MOD_SPIRIT_SHORT"]) then

				stat = string.match(text,"%d+")
				
				stringBuilder = " (";
				if (spiritREGEN~=0) then
					stringBuilder = stringBuilder .. "+" .. fConvertStat("spirit", stat, spiritREGEN) .. " " .. L["MANAREGEN"]
				end
				stringBuilder = stringBuilder .. ")";

			elseif string.find(string.lower(text), _G["SPELL_STATALL"]) then

				stat = string.match(text,"%d+")

				stringBuilder = fConvertStat("allstat", stat, "")

			elseif string.find(text, _G["ITEM_MOD_DEFENSE_SKILL_RATING_SHORT"]) then

				stat = string.match(text,"%d+")
				
				stringBuilder = " (";
				stringBuilder = stringBuilder  .. fConvertStat("mult", stat, "0.04") .. "% ".. L["MITIGATION"]
				stringBuilder = stringBuilder .. ")";

			elseif string.find(text, _G["STAT_ARMOR"]) then
				stat = string.match(text,"%d+")

				if (stat ~= "0") then
					local invType = select(9,GetItemInfo(itemLink))

					--local invType C_Item.GetItemInventoryTypeByID("itemInfo")
					--print(invType)
					stringBuilder = " (";
					stringBuilder = stringBuilder  .. fConvertStat("armor", stat, invType) .. "% ".. L["ARMOR"]
					stringBuilder = stringBuilder .. ")";
				end
				
			end
			
			if stringBuilder ~= nil then
				if strlen(stringBuilder) > 3 then
					line:SetText(text .. " " .. hexcolor .. "" .. stringBuilder);
					--leftText[i] = text
					--leftTextR[i], leftTextG[i], leftTextB[i] = _G[self:GetName().."TextLeft"..i]:GetTextColor()
					--rightText[i] = hexcolor .. "" .. stringBuilder
					--bFound = true;

				end
			end
			
		end

		--if bFound == false then

			--leftText[i] = _G[self:GetName().."TextLeft"..i]:GetText()
			--leftTextR[i], leftTextG[i], leftTextB[i] = _G[self:GetName().."TextLeft"..i]:GetTextColor()
		
			--rightText[i] = _G[self:GetName().."TextRight"..i]:GetText()
			--rightTextR[i], rightTextG[i], rightTextB[i] = _G[self:GetName().."TextRight"..i]:GetTextColor()
		--end

	end

	--local nameOriginal, linkOriginal = self:GetItem()
	--self.GetItem = function(self) return nameOriginal, linkOriginal end
	--self:ClearLines()
	
	  
	--for i=1, numLines do
  
		--if rightText[i] then
			--self:AddDoubleLine(leftText[i], rightText[i], leftTextR[i], leftTextG[i], leftTextB[i], rightTextR[i], rightTextG[i], rightTextB[i])
		--else
			-- TODO: Unfortunately I do not know how to store the "indented word wrap".
			--       Therefore, we have to put wrap=true for all lines in the new tooltip.
			--self:AddLine(leftText[i], leftTextR[i], leftTextG[i], leftTextB[i], true)
		--end
		
	--end

	

end

--Hooks to mbcake the addon function :L
GameTooltip:HookScript("OnTooltipSetItem", getItemIdFromTooltip);
ItemRefTooltip:HookScript("OnTooltipSetItem", getItemIdFromTooltip);
ShoppingTooltip1:HookScript("OnTooltipSetItem", getItemIdFromTooltip);
ShoppingTooltip2:HookScript("OnTooltipSetItem", getItemIdFromTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetItem", getItemIdFromTooltip);

ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", getItemIdFromTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", getItemIdFromTooltip);

--ManyItemTooltips
MITgetItemIdFromTooltip = getItemIdFromTooltip;
