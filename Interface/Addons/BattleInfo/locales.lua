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
L["BattleInfo"] = true
L["BattleInfo Loaded"] = true
L["Button may not work properly during combat"] = true
L["Cannot find battleground %s"] = true
L["CTRL+Hide=Leave"] = true
L["Feedback"] = true
L["Flash Icon taskbar when battle ground is ready to join"] = true
L["List Position"] = true
L["New"] = true
L["Quick select"] = true
L["Replace Enter Battle Button with count down"] = true
L["Replace Hide Button with CTRL+Hide=Leave"] = true
L["Reset score bar position"] = true
L["Show Alterac Valley score bar created by BattleInfo"] = true
L["Show Battleground time elapsed"] = true
L["Show Spirit heal AE Timer"] = true
L["Show team number next to faction crest"] = true
L["Spirit heal AE in: %s Secs"] = true
L["Spirit heal AE: not dead"] = true
L["Spirit healing ..."] = true
L["TITLE"] = "Battle Info"
L["TOC_NOTES"] = "Enrich your battleground information. Feedback: farmer1992@gmail.com"

elseif locale == 'zhCN' then
L["BattleInfo"] = "BattleInfo"
L["BattleInfo Loaded"] = "BattleInfo 已经加载"
L["Button may not work properly during combat"] = "战斗中按钮可能无法正确工作"
L["Cannot find battleground %s"] = "找不到战场 %s"
L["CTRL+Hide=Leave"] = "CTRL+隐藏=离开"
L["Feedback"] = "反馈"
L["Flash Icon taskbar when battle ground is ready to join"] = "战场可以进入时候闪烁任务栏中的图标"
L["List Position"] = "战场列表中位置"
L["New"] = "新"
L["Quick select"] = "快速选择"
L["Replace Enter Battle Button with count down"] = "将进入战场替换为带有倒计时的按钮"
L["Replace Hide Button with CTRL+Hide=Leave"] = "将隐藏战场替换为CTRL+隐藏=退出"
L["Reset score bar position"] = "充值比分栏位置"
L["Show Alterac Valley score bar created by BattleInfo"] = "显示BattleInfo创建的 奥特兰克山谷 比分栏"
L["Show Battleground time elapsed"] = "显示战场已用时间"
L["Show Spirit heal AE Timer"] = "显示灵魂医者倒计时"
L["Show team number next to faction crest"] = "显示阵营图标前的数字"
L["Spirit heal AE in: %s Secs"] = "灵魂医者 %s 秒后群体复活"
L["Spirit heal AE: not dead"] = "灵魂医者: 未阵亡"
L["Spirit healing ..."] = "灵魂医者群体复活中..."
L["TITLE"] = "BattleInfo 战场助手"
L["TOC_NOTES"] = "战场信息增强. 反馈: farmer1992@gmail.com"

elseif locale == 'zhTW' then
L["BattleInfo"] = "BattleInfo"
L["BattleInfo Loaded"] = "BattleInfo 已經載入"
L["Button may not work properly during combat"] = "戰鬥中按鈕可能無法正確工作"
L["Cannot find battleground %s"] = "找不到戰場 %s"
L["CTRL+Hide=Leave"] = "CTRL+隱藏=離開"
L["Feedback"] = "回饋"
L["Flash Icon taskbar when battle ground is ready to join"] = "戰場可以進入時候閃爍工作列中的圖示"
L["List Position"] = "戰場列表中位置"
L["New"] = "新"
L["Quick select"] = "快速選擇"
L["Replace Enter Battle Button with count down"] = "將進入戰場替換為帶有倒計時的按鈕"
L["Replace Hide Button with CTRL+Hide=Leave"] = "將隱藏戰場替換為CTRL+隱藏=退出"
L["Reset score bar position"] = "充值比分欄位置"
L["Show Alterac Valley score bar created by BattleInfo"] = "顯示BattleInfo創建的 奧特蘭克山谷 比分欄"
L["Show Battleground time elapsed"] = "顯示戰場已用時間"
L["Show Spirit heal AE Timer"] = "顯示靈魂醫者倒計時"
L["Show team number next to faction crest"] = "顯示陣營圖示前的數位"
L["Spirit heal AE in: %s Secs"] = "靈魂醫者 %s 秒後群體復活"
L["Spirit heal AE: not dead"] = "靈魂醫者: 未陣亡"
L["Spirit healing ..."] = "靈魂醫者群體復活中..."
L["TITLE"] = "BattleInfo 戰場助手"
L["TOC_NOTES"] = "戰場資訊增強. 回饋: farmer1992@gmail.com"

end
