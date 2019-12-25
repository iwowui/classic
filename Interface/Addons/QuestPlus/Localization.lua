if (GetLocale() == "zhCN") then
    QA_MsgProgressText = "任务进度：";
    QA_String = "(.*)：%s*([-%d]+)%s*/([-%d]+)%s*";

    --button
    QA_Name  = "任务通告";
    QA_ON    = "任务通告已开启";
    QA_OFF   = "任务通告已关闭";
    QA_LINE  = "开启任务通告";
    QA_BUTTON  = "开启设置页面";
elseif (GetLocale() == "zhTW") then
    QA_MsgProgressText = "任務進度：";
    QA_String = "(.*)：%s*([-%d]+)%s*/([-%d]+)%s*";

    --button
    QA_Name  = "任務通告";
    QA_ON    = "任務通告已開啟";
    QA_OFF   = "任務通告已關閉";
    QA_LINE  = "開啟任務通告";
    QA_BUTTON  = "開啟設置頁面";
else
    QA_MsgProgressText = "Process: ";
    QA_String = "(.*):%s*([-%d]+)%s*/([-%d]+)%s*";

    --button
    QA_Name  = "Announce";
    QA_ON    = "Quest Announce is enabled.";
    QA_OFF   = "Quest Announce is disabled.";
    QA_LINE  = "Enable Quest Announce";
    QA_BUTTON  = "Click for more settings";
end
