--[[To do:
!!Add support for scaled ilevels.
Add a very minor UI and integrate into the options menu.
Look up better LUA table practices.
Use a compression to reduce the size of the database.]]

local SearchFrame = CreateFrame("Frame")
local nTopID = 24283 --Update this for new item IDs, https://classic.wowhead.com/items?filter=151;2;24283
local tclassic = {172070} --Weird itemids for classic.
local nStepSize = 50 --Database build speed.  This can be set to 500+ on beefier computers.
local nVersion = 3
local bBuilding = false
local nCurrentID = 0
local tc = {
	["a335ee"] = "1",
	["0070dd"] = "2",
	["1eff00"] = "3",
	["ffffff"] = "4",
	["9d9d9d"] = "5",
	["ff8000"] = "6",
	["e6cc80"] = "8"
}
local rtc = {
	["1"] = "a335ee",
	["2"] = "0070dd",
	["3"] = "1eff00",
	["4"] = "ffffff",
	["5"] = "9d9d9d",
	["6"] = "ff8000",
	["8"] = "e6cc80"
}

local lasttime = GetTime()

SLASH_GetLink1 = "/gl"
SLASH_GetLink2 = "/getlink"
SLASH_DevLink1 = "/gldev"

SlashCmdList["GetLink"] = function(msg) GetLink_Command(msg) end

SlashCmdList["DevLink"] = function(msg)
	if msg == "purge" then
		GLTable = nil
		GLOptions = nil
		print("Saved variables purged.")
	else
		GLTest(msg)
	end
end

function GLTest(msg) end

--[[Checks the query to make sure it's a decent length to prevent full on spam.
Then it turns it and the results into lower case and generates the saved link if there's
a match.  If there's a - then we need to replace that to %%- to work around the search
filters built into LUA strings.  May need to add other filters in the future.]]

function GetLink_Str2Table(str)
	local tb = {}
	local lenInByte = #str
	local i = 1
	while i < (lenInByte + 1) do
		local curByte = string.byte(str, i)
		local byteCount = 1
		if curByte > 0 and curByte <= 127 then
			byteCount = 1
		elseif curByte >= 192 and curByte < 223 then
			byteCount = 2
		elseif curByte >= 224 and curByte < 239 then
			byteCount = 3
		elseif curByte >= 240 and curByte <= 247 then
			byteCount = 4
		end

		local char = string.sub(str, i, i+byteCount-1)
		i = i + byteCount

		table.insert(tb, char:lower())
	end

	return tb
end

function GetLink_Command(msg)
	if not bBuilding then
		local tmptime = GetTime()
		if tmptime - lasttime > 1 then
			lasttime = tmptime
			if msg:len() > 0 then
				_G["GetLinkGui"].msg:Clear()
				msg = string.lower(msg:gsub("-", "%%-"))
				local num = 0
				local tb
				if GLOptions["extra"] == 0 then
					tb = GetLink_Str2Table(msg)
				end
				_G["GetLinkGui"].msg.listLen = 99999
				_G["GetLinkGui"].msg:SetMaxLines(99999)
				_G["GetLinkGui"].scrollBar:SetMinMaxValues(0, 99999)
				for id, name in pairs(GLTable) do
					if GLOptions["extra"] == 1 then
						if string.find(name:lower(), msg, 2) then
							if not _G["GetLinkGui"]:IsShown() then
								print("|cff" .. rtc[name:sub(1,1)] .. "|Hitem:" .. id .. ":::::::::::::::|h[" .. name:sub(2) .. "]|h|r")
							end
							_G["GetLinkGui"].msg:AddMessage("|cff" .. rtc[name:sub(1,1)] .. "|Hitem:" .. id .. ":::::::::::::::|h[" .. name:sub(2) .. "]|h|r")
							num = num + 1
						end
					else
						local found = 1
						for k, v in pairs(tb) do
							if not string.find(name:lower(), v, 2) then
								found = 0
								break
							end
						end
						if found == 1 then
							if not _G["GetLinkGui"]:IsShown() then
								print("|cff" .. rtc[name:sub(1,1)] .. "|Hitem:" .. id .. ":::::::::::::::|h[" .. name:sub(2) .. "]|h|r")
							end
							_G["GetLinkGui"].msg:AddMessage("|cff" .. rtc[name:sub(1,1)] .. "|Hitem:" .. id .. ":::::::::::::::|h[" .. name:sub(2) .. "]|h|r")
							num = num + 1
						end
					end
				end
				if num == 0 then
					if not _G["GetLinkGui"]:IsShown() then
						print("No items found.")
					end
					_G["GetLinkGui"].msg:AddMessage("No items found.")
					num = 1
				end
				_G["GetLinkGui"].msg.listLen = num
				_G["GetLinkGui"].msg:SetMaxLines(num)
				_G["GetLinkGui"].scrollBar:SetMinMaxValues(0, num)
				-- print("End of results.")
			else
				print("The query is too short.")
			end
		else
			print("Slow down!")
		end
	elseif bBuilding then print("Working, " ..  math.floor(100 * (1 - (nCurrentID / nTopID))) .. "% complete.") end
end

--[[Splits the potential item pool into groups of fifty, checks if there's already
an entry in the saved database.  If there isn't an entry it requests the item information.]]

function GetSearch(self, elapsed)
	if bBuilding and nCurrentID > 0 then
		TickStop = nCurrentID - nStepSize
		if TickStop < 0	then TickStop = 0 end
		while nCurrentID > TickStop do
			if C_Item.DoesItemExistByID(nCurrentID) then
				AddItem(nCurrentID)
			end
			nCurrentID = nCurrentID - 1
		end
	elseif bBuilding then
		bBuilding = false
		SearchFrame:SetScript("OnUpdate", nil)
		print("Get Link: The database has been updated.  Use /gl [text] to search.")
	end
end

--[[Clean item links then save them.]]

function AddItem(idnum)
	if not idnum or idnum == "" or idnum == 0 then return end
	name, link = GetItemInfo(idnum)
	if name then GLTable[tostring(idnum)] = string.format("%s%s", tc[link:sub(5, 10)], name) end
end

--[[SearchFrame registers this function to activate whenever the addon is loaded
and whenever item data is received.  If the addon deteects it's running a different
version than the database it will purge and make a new one.]]

function EventHandler(self, event, arg1, arg2)
	if event == "ADDON_LOADED" and arg1 == "GetLinkClassic" then
		if not GLOptions or GLOptions["Version"] ~= nVersion then 
			GLTable = {}
			GLOptions = {}
			GLOptions["Version"] = nVersion
			GLOptions["extra"] = 0
			for i, id in pairs(tclassic) do AddItem(id) end
			bBuilding = true
			nCurrentID = nTopID
			SearchFrame:SetScript("OnUpdate", GetSearch)
			print("Get Link: Updating the database.")
		end
	elseif event == "GET_ITEM_INFO_RECEIVED" then AddItem(arg1) end
end

SearchFrame:RegisterEvent("ADDON_LOADED")
SearchFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
SearchFrame:SetScript("OnEvent", EventHandler)