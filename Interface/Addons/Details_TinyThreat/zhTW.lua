local Loc = LibStub("AceLocale-3.0"):NewLocale("Details_Threat", "zhTW") 

if (not Loc) then
    return 
end 

Loc ["STRING_PLUGIN_NAME"] = "仇恨監控"

Loc ["STRING_SLASH_ANIMATE"] = "活躍"
Loc ["STRING_SLASH_SPEED"] = "速度"
Loc ["STRING_SLASH_AMOUNT"] = "合計"

Loc ["STRING_COMMAND_LIST"] = "可用命令:"
Loc ["STRING_SLASH_SPEED_DESC"] = "更改視窗更新的頻率（以秒為單位），允許值介於0.1和3.0之間"
Loc ["STRING_SLASH_SPEED_CHANGED"] = "更新速度已更改為 "
Loc ["STRING_SLASH_SPEED_CURRENT"] = "更新速度當前值是 "
