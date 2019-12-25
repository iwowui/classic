if GetLocale() == "zhCN" then
    UFPLocal_DeathText = "死亡";
    UFPLocal_GhostText = "鬼魂";
    UFPLocal_LeftOpen  = "左键点击打开插件设置面板";
    UFPLocal_RightMove = "右键点住按钮后拖动移动位置";
    UFPLocal_OptionFailed = "|cFFFF0000UnitFramesPlus设置面板载入失败|R";
    UFPLocal_Loaded    = "|cFFFFFF99UnitFramesPlus载入成功，请输入|R |cFF00FF00/ufp|R |cFFFFFF99或|R |cFF00FF00/unitframesplus|R |cFFFFFF99进行设置 (|cFF00FF00/ufp reset|R |cFFFFFF99可重置插件设置)|R";
elseif GetLocale() == "zhTW" then
    UFPLocal_DeathText = "死亡";
    UFPLocal_GhostText = "鬼魂";
    UFPLocal_LeftOpen  = "左鍵點擊打開插件設置面板";
    UFPLocal_RightMove = "右鍵點住按鈕後拖動移動位置";
    UFPLocal_OptionFailed = "|cFFFF0000UnitFramesPlus設置面板載入失敗|R";
    UFPLocal_Loaded    = "|cFFFFFF99UnitFramesPlus載入成功，請輸入|R |cFF00FF00/ufp|R |cFFFFFF99或|R |cFF00FF00/unitframesplus|R |cFFFFFF99進行設置 (|R|cFF00FF00/ufp reset|R |cFFFFFF99可重置插件設置)|R";
else
    UFPLocal_DeathText = "Death";
    UFPLocal_GhostText = "Ghost";
    UFPLocal_LeftOpen  = "Left-click to open option panel";
    UFPLocal_RightMove = "Right-click and drag to move this button";
    UFPLocal_OptionFailed = "|cFFFF0000The option panel can't be loaded.|R";
    UFPLocal_Loaded    = "|cFFFFFF99UnitFramesPlus loaded. Type|R |cFF00FF00/ufp|R |cFFFFFF99or|R |cFF00FF00/unitframesplus|R |cFFFFFF99to open the option panel, (|R|cFF00FF00/ufp reset|R |cFFFFFF99to restore defaults).|R";
end
