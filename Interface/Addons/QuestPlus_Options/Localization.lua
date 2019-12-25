if (GetLocale() == "zhCN") then
    QAChannelDropDown = {"聊天窗口", "队伍", "团队"};--"说", 
    QA_Text = "任务通告"
    QA_ChannelText = "通告频道："
    QA_FinishText  = "仅在子任务完成时通告";
    QL_Text  = "任务等级";
    QL_EnableText  = "在任务日志中显示任务等级";
    QT_Text  = "追踪列表";
    QT_EnableText  = "允许shift+鼠标左键拖拽任务追踪列表";
    QT_AutoTrackText  = "允许任务自动追踪";
elseif (GetLocale() == "zhTW") then
    QAChannelDropDown = {"聊天視窗", "隊伍", "團隊"};--"說", 
    QA_Text = "任務通告"
    QA_ChannelText = "通告頻道："
    QA_FinishText  = "僅在子任務完成時通告";
    QL_Text  = "任務等級";
    QL_EnableText  = "在任務日誌中顯示任務等級";
    QT_Text  = "追蹤列表";
    QT_EnableText  = "允許shift+滑鼠左鍵拖拽任務追蹤列表";
    QT_AutoTrackText  = "允許任務自動追蹤";
else
    QAChannelDropDown = {"ChatFrame", "PARTY", "RAID"};--"SAY", 
    QA_Text = "Quest Announce"
    QA_ChannelText = "Channel："
    QA_FinishText  = "Announce completion only";
    QL_Text  = "Quest Level";
    QL_EnableText  = "Show quest level in quest log";
    QT_Text  = "Quest Tracker";
    QT_EnableText  = "Quest tracker dragging (shift + left button)";
    QT_AutoTrackText  = "Quest auto track";
end