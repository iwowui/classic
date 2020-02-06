local Loc = LibStub("AceLocale-3.0"):NewLocale("Details_Threat", "zhCN") 

if (not Loc) then
	return 
end 

Loc ["STRING_PLUGIN_NAME"] = "仇恨监控"

Loc ["STRING_SLASH_ANIMATE"] = "活跃"
Loc ["STRING_SLASH_SPEED"] = "速度"
Loc ["STRING_SLASH_AMOUNT"] = "合计"

Loc ["STRING_COMMAND_LIST"] = "可用命令:"
Loc ["STRING_SLASH_SPEED_DESC"] = "更改窗口更新的频率（以秒为单位），允许值介于0.1和3.0之间"
Loc ["STRING_SLASH_SPEED_CHANGED"] = "更新速度已更改为 "
Loc ["STRING_SLASH_SPEED_CURRENT"] = "更新速度当前值是 "
