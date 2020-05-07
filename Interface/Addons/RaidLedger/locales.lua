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

--
-- Use https://www.curseforge.com/wow/addons/raidledger/localization to translate thanks
--
local locale = GetLocale()

if locale == 'enUs' then
L["# line starts with # will be ignored"] = true
L["# one item per line, can be item name or item id"] = true
L["#Try to convert to item link"] = true
L["/raidledger"] = true
L["[Unknown]"] = true
L["0 credit items"] = true
L["Auto recording blacklist"] = true
L["Auto recording loot"] = true
L["Auto recording loot: In Raid Only"] = true
L["Auto recording loot: Off"] = true
L["Auto recording loot: On"] = true
L["Auto recording quality"] = true
L["Beneficiary"] = true
L["Bid accept"] = true
L["Bid canceled"] = true
L["Bid denied"] = true
L["Bid increment"] = true
L["Bid mode"] = true
L["Bid price"] = true
L["Cannot find any debit entry in template, please check your template in options"] = true
L["Clear"] = true
L["Click here to clear ledger"] = true
L["Close text export"] = true
L["Compensation"] = true
L["Compensation added"] = true
L["Compensation: DPS"] = true
L["Compensation: Healer"] = true
L["Compensation: Other"] = true
L["Compensation: Repait Bot"] = true
L["Compensation: Tank"] = true
L["convert failed, text can be either item id or item name"] = true
L["Count down time"] = true
L["Credit"] = true
L["CTRL + click for summary mode"] = true
L["CTRL + Click to apply debit template"] = true
L["CTRL + Click to start and then pause timer"] = true
L["Current price"] = true
L["Debit"] = true
L["Debit Template"] = true
L["Entry"] = true
L["Expense"] = true
L["Export as text"] = true
L["Feedback"] = true
L["Go"] = true
L["Hammer Price"] = true
L["Hide locked items"] = true
L["Import from ledger"] = true
L["In Raid Only"] = true
L["Input only"] = true
L["is bought in"] = true
L["Item added"] = true
L["Last used"] = true
L["Member credit for subgroup"] = true
L["Minimap Icon"] = true
L["Must bid higher than"] = true
L["Name of Debit template"] = true
L["Net Profit"] = true
L["Other"] = true
L["Pause"] = true
L["Per Member"] = true
L["Per Member credit"] = true
L["Raid Frame Button"] = true
L["Raid Ledger"] = true
L["Remove all records?"] = true
L["Remove ALL SAME record?"] = true
L["Remove this record?"] = true
L["Rename"] = true
L["Report"] = true
L["Revenue"] = true
L["Right click to choose channel"] = true
L["Right click to fine-tune"] = true
L["Right click to remove record"] = true
L["Round down"] = true
L["Round per member credit down"] = true
L["Set split into number when team size changes automatically"] = true
L["Shift + item/name to add to record"] = true
L["Shift + Right click to remove ALL SAME record"] = true
L["Special Members"] = true
L["Split into"] = true
L["Split into (Current %d)"] = true
L["Start bid"] = true
L["Starting price"] = true
L["Subgroup total"] = true
L["Time left"] = true
L["TITLE"] = "Raid Ledger"
L["TOC_NOTES"] = "A ledger for GDKP/gold run raid. Feedback: farmer1992@gmail.com"
L["toggle Auto recording on/off"] = true
L["Top [%d] contributors"] = true
L["Value"] = true
L["Winner"] = true

elseif locale == 'zhCN' then
L["# line starts with # will be ignored"] = "# 以 # 开头的行自动被忽略"
L["# one item per line, can be item name or item id"] = "# 每行一条, 可以是物品名称或物品ID"
L["#Try to convert to item link"] = "#尝试转换为物品链接"
L["/raidledger"] = "/gtuan"
L["[Unknown]"] = "[未知]"
L["0 credit items"] = "0 收入物品"
L["Auto recording blacklist"] = "自动拾取黑名单"
L["Auto recording loot"] = "自动拾取记录"
L["Auto recording loot: In Raid Only"] = "自动拾取记录: 仅团队中"
L["Auto recording loot: Off"] = "自动拾取记录关闭"
L["Auto recording loot: On"] = "自动拾取记录开启"
L["Auto recording quality"] = "自动拾取记录品质"
L["Beneficiary"] = "获取人"
L["Bid accept"] = "拍卖被接受"
L["Bid canceled"] = "拍卖取消"
L["Bid denied"] = "出价被拒绝"
L["Bid increment"] = "加价"
L["Bid mode"] = "加价模式"
L["Bid price"] = "竞拍价"
L["Cannot find any debit entry in template, please check your template in options"] = "无法在支出模板中找到任何内容, 请在选项中检查模板内容"
L["Clear"] = "清空"
L["Click here to clear ledger"] = "点我清空账本"
L["Close text export"] = "关闭文本模式"
L["Compensation"] = "补助"
L["Compensation added"] = "已经添补助"
L["Compensation: DPS"] = "补助: 输出"
L["Compensation: Healer"] = "补助: 治疗"
L["Compensation: Other"] = "补助: 其他"
L["Compensation: Repait Bot"] = "补助: 修理机器人"
L["Compensation: Tank"] = "补助: 坦克"
L["convert failed, text can be either item id or item name"] = "转换失败, 名称可以是物品ID, 物品名称"
L["Count down time"] = "倒计时"
L["Credit"] = "收入"
L["CTRL + click for summary mode"] = "CTRL + 点击以简介模式报告"
L["CTRL + Click to apply debit template"] = "CTRL + 点击应用支出模板"
L["CTRL + Click to start and then pause timer"] = "CTRL + 点击开始并马上暂停计时"
L["Current price"] = "当前价格"
L["Debit"] = "支出"
L["Debit Template"] = "支出模板"
L["Entry"] = "条目"
L["Expense"] = "总支出"
L["Export as text"] = "导出战报"
L["Feedback"] = "反馈"
L["Go"] = "继续"
L["Hammer Price"] = "成交价格"
L["Hide locked items"] = "隐藏锁定物品"
L["Import from ledger"] = "从账本中提取"
L["In Raid Only"] = "仅团队中"
L["Input only"] = "仅输入"
L["is bought in"] = "流拍"
L["Item added"] = "已添加物品"
L["Last used"] = "上次使用"
L["Member credit for subgroup"] = "小队收入明细"
L["Minimap Icon"] = "小地图图标"
L["Must bid higher than"] = "出价必须高于"
L["Name of Debit template"] = "支出模板的标题"
L["Net Profit"] = "净收入"
L["Other"] = "其他"
L["Pause"] = "暂停"
L["Per Member"] = "平均每人"
L["Per Member credit"] = "平均每人收入"
L["Raid Frame Button"] = "团队面板按钮"
L["Raid Ledger"] = "金团账本"
L["Remove all records?"] = "确定清空所有记录?"
L["Remove ALL SAME record?"] = "删除全部相同记录?"
L["Remove this record?"] = "确定删除这条记录?"
L["Rename"] = "重命名"
L["Report"] = "广播"
L["Revenue"] = "总收入"
L["Right click to choose channel"] = "右键点击选择频道"
L["Right click to fine-tune"] = "右键微调"
L["Right click to remove record"] = "右键点击删除记录"
L["Round down"] = "抹零"
L["Round per member credit down"] = "人均收入自动抹零"
L["Set split into number when team size changes automatically"] = "团队人数变化是否自动设置分账人数"
L["Shift + item/name to add to record"] = "Shift + 人名/物品 自动添加到记录"
L["Shift + Right click to remove ALL SAME record"] = "Shift + 右键点击 删除 全部相同 记录"
L["Special Members"] = "特别成员"
L["Split into"] = "分钱人数"
L["Split into (Current %d)"] = "分钱人数 (当前 %d)"
L["Start bid"] = "开始拍卖"
L["Starting price"] = "起拍价"
L["Subgroup total"] = "小队总和"
L["Time left"] = "剩余时间"
L["TITLE"] = "Raid Ledger 金团账本"
L["TOC_NOTES"] = "金团账本，帮你在金团中记账 反馈问题 farmer1992@gmail.com"
L["toggle Auto recording on/off"] = "开启/关闭自动拾取记录"
L["Top [%d] contributors"] = "贡献钱 [%d] 的老板"
L["Value"] = "费用"
L["Winner"] = "赢家"

elseif locale == 'zhTW' then
--[[Translation missing --]]
--[[ L["# line starts with # will be ignored"] = "# line starts with # will be ignored"--]] 
--[[Translation missing --]]
--[[ L["# one item per line, can be item name or item id"] = "# one item per line, can be item name or item id"--]] 
L["#Try to convert to item link"] = "#嘗試轉換為物品連結"
L["/raidledger"] = "/gtuan"
L["[Unknown]"] = "[未知]"
--[[Translation missing --]]
--[[ L["0 credit items"] = "0 credit items"--]] 
--[[Translation missing --]]
--[[ L["Auto recording blacklist"] = "Auto recording blacklist"--]] 
L["Auto recording loot"] = "自動拾取紀錄"
L["Auto recording loot: In Raid Only"] = "自動拾取記錄: 僅團隊中"
L["Auto recording loot: Off"] = "自動拾取記錄關閉"
L["Auto recording loot: On"] = "自動拾取記錄開啟"
--[[Translation missing --]]
--[[ L["Auto recording quality"] = "Auto recording quality"--]] 
L["Beneficiary"] = "獲取人"
--[[Translation missing --]]
--[[ L["Bid accept"] = "Bid accept"--]] 
--[[Translation missing --]]
--[[ L["Bid canceled"] = "Bid canceled"--]] 
--[[Translation missing --]]
--[[ L["Bid denied"] = "Bid denied"--]] 
--[[Translation missing --]]
--[[ L["Bid increment"] = "Bid increment"--]] 
--[[Translation missing --]]
--[[ L["Bid mode"] = "Bid mode"--]] 
--[[Translation missing --]]
--[[ L["Bid price"] = "Bid price"--]] 
L["Cannot find any debit entry in template, please check your template in options"] = "無法在支出模板中找到任何內容, 請在選項中檢查模板內容"
L["Clear"] = "清空"
--[[Translation missing --]]
--[[ L["Click here to clear ledger"] = "Click here to clear ledger"--]] 
L["Close text export"] = "關閉文字模式"
L["Compensation"] = "補助"
L["Compensation added"] = "已經添補助"
L["Compensation: DPS"] = "補助: 輸出"
L["Compensation: Healer"] = "補助: 治療"
L["Compensation: Other"] = "補助: 其他"
L["Compensation: Repait Bot"] = "補助: 修理機器人"
L["Compensation: Tank"] = "補助: 坦克"
L["convert failed, text can be either item id or item name"] = "轉換失敗, 名稱可以是物品ID或物品名稱"
--[[Translation missing --]]
--[[ L["Count down time"] = "Count down time"--]] 
L["Credit"] = "收入"
--[[Translation missing --]]
--[[ L["CTRL + click for summary mode"] = "CTRL + click for summary mode"--]] 
L["CTRL + Click to apply debit template"] = "CTRL + 點擊應用支出模板"
--[[Translation missing --]]
--[[ L["CTRL + Click to start and then pause timer"] = "CTRL + Click to start and then pause timer"--]] 
--[[Translation missing --]]
--[[ L["Current price"] = "Current price"--]] 
L["Debit"] = "支出"
L["Debit Template"] = "支出模板"
L["Entry"] = "條目"
L["Expense"] = "總支出"
L["Export as text"] = "導出為文字"
L["Feedback"] = "反饋"
--[[Translation missing --]]
--[[ L["Go"] = "Go"--]] 
--[[Translation missing --]]
--[[ L["Hammer Price"] = "Hammer Price"--]] 
--[[Translation missing --]]
--[[ L["Hide locked items"] = "Hide locked items"--]] 
L["Import from ledger"] = "從賬本中提取"
L["In Raid Only"] = "僅團隊中"
--[[Translation missing --]]
--[[ L["Input only"] = "Input only"--]] 
--[[Translation missing --]]
--[[ L["is bought in"] = "is bought in"--]] 
L["Item added"] = "已添加物品"
L["Last used"] = "上次使用"
L["Member credit for subgroup"] = "小隊收入明細"
--[[Translation missing --]]
--[[ L["Minimap Icon"] = "Minimap Icon"--]] 
--[[Translation missing --]]
--[[ L["Must bid higher than"] = "Must bid higher than"--]] 
L["Name of Debit template"] = "支出模板的標題"
L["Net Profit"] = "淨收入"
L["Other"] = "其他"
--[[Translation missing --]]
--[[ L["Pause"] = "Pause"--]] 
L["Per Member"] = "平均每人"
L["Per Member credit"] = "平均每人收入"
--[[Translation missing --]]
--[[ L["Raid Frame Button"] = "Raid Frame Button"--]] 
L["Raid Ledger"] = "金團賬本"
L["Remove all records?"] = "確定清空所有記錄？"
L["Remove ALL SAME record?"] = "刪除全部相同紀錄？"
L["Remove this record?"] = "確定刪除這條記錄？"
L["Rename"] = "重命名"
L["Report"] = "廣播"
L["Revenue"] = "總收入"
L["Right click to choose channel"] = "右鍵點擊選擇頻道"
--[[Translation missing --]]
--[[ L["Right click to fine-tune"] = "Right click to fine-tune"--]] 
L["Right click to remove record"] = "右鍵點擊記錄刪除"
--[[Translation missing --]]
--[[ L["Round down"] = "Round down"--]] 
--[[Translation missing --]]
--[[ L["Round per member credit down"] = "Round per member credit down"--]] 
--[[Translation missing --]]
--[[ L["Set split into number when team size changes automatically"] = "Set split into number when team size changes automatically"--]] 
L["Shift + item/name to add to record"] = "Shift + 人名/物品 自動添加到記錄"
L["Shift + Right click to remove ALL SAME record"] = "Shift + 右鍵點擊 刪除全部相同記錄"
L["Special Members"] = "特別成員"
L["Split into"] = "分錢人數"
L["Split into (Current %d)"] = "分錢人數 (當前 %d)"
--[[Translation missing --]]
--[[ L["Start bid"] = "Start bid"--]] 
--[[Translation missing --]]
--[[ L["Starting price"] = "Starting price"--]] 
L["Subgroup total"] = "小隊總和"
--[[Translation missing --]]
--[[ L["Time left"] = "Time left"--]] 
L["TITLE"] = "金團賬本"
L["TOC_NOTES"] = "金團賬本，幫你在金團中記賬 反饋問題 farmer1992@gmail.com"
L["toggle Auto recording on/off"] = "開啟/關閉自動拾取記錄"
L["Top [%d] contributors"] = "貢獻錢 [%d] 的老闆"
L["Value"] = "費用"
--[[Translation missing --]]
--[[ L["Winner"] = "Winner"--]] 

end
