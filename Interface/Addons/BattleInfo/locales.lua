local _, ADDONSELF = ...

local L = setmetatable({}, {
    __index = function(table, key)
        if key then
            table[key] = tostring(key)
        end
        return tostring(key)
    end,
})


ADDONSELF.L = L

local locale = GetLocale()

if locale == 'enUs' then
L["BatteInfo Loaded"] = true
L["Cannot find battleground %s"] = true
L["CTRL+Hide=Leave"] = true
L["List Position"] = true
L["New"] = true
L["Quick select"] = true
L["Spirit heal AE in: %s Secs"] = true
L["Spirit heal AE: not dead"] = true
L["Spirit healing ..."] = true
L["TITLE"] = "Battle Info"
L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"

elseif locale == 'deDE' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

elseif locale == 'esES' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

elseif locale == 'esMX' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

elseif locale == 'frFR' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

elseif locale == 'itIT' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

elseif locale == 'koKR' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

elseif locale == 'ptBR' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

elseif locale == 'ruRU' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

elseif locale == 'zhCN' then
L["BatteInfo Loaded"] = "BatteInfo 已加载"
L["Cannot find battleground %s"] = "找不到战场 %s"
L["CTRL+Hide=Leave"] = "CTRL+隐藏=离开"
L["List Position"] = "战场列表中位置"
L["New"] = "新"
L["Quick select"] = "快速选择"
L["Spirit heal AE in: %s Secs"] = "灵魂医者 %s 秒后群体复活"
L["Spirit heal AE: not dead"] = "灵魂医者: 未阵亡"
L["Spirit healing ..."] = "灵魂医者群体复活中..."
L["TITLE"] = "BattleInfo 战场助手"
L["TOC_NOTES"] = "战场信息增强. 反馈: farmer1992@gmail.com"

elseif locale == 'zhTW' then
--[[Translation missing --]]
--[[ L["BatteInfo Loaded"] = "BatteInfo Loaded"--]] 
--[[Translation missing --]]
--[[ L["Cannot find battleground %s"] = "Cannot find battleground %s"--]] 
--[[Translation missing --]]
--[[ L["CTRL+Hide=Leave"] = "CTRL+Hide=Leave"--]] 
--[[Translation missing --]]
--[[ L["List Position"] = "List Position"--]] 
--[[Translation missing --]]
--[[ L["New"] = "New"--]] 
--[[Translation missing --]]
--[[ L["Quick select"] = "Quick select"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE in: %s Secs"] = "Spirit heal AE in: %s Secs"--]] 
--[[Translation missing --]]
--[[ L["Spirit heal AE: not dead"] = "Spirit heal AE: not dead"--]] 
--[[Translation missing --]]
--[[ L["Spirit healing ..."] = "Spirit healing ..."--]] 
--[[Translation missing --]]
--[[ L["TITLE"] = "Battle Info"--]] 
--[[Translation missing --]]
--[[ L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"--]] 

end
