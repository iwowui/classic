if (GetLocale() ~= "zhCN") then return end

local TranqRotate = select(2, ...)

local L = {

    ["LOADED_MESSAGE"] = "TranqRotate 已加载, 输入 /tranq 进入设置",
    ["TRANQ_WINDOW_HIDDEN"] = "Tranqrotate 窗口隐藏. 输入 /tranq toggle 显示窗口",

    -- Settings
    ["SETTING_GENERAL"] = "一般",
    ["SETTING_GENERAL_REPORT"] = "请报告问题: ",
    ["SETTING_GENERAL_DESC"] = "新内容: TranqRotate 当你需要施放你的宁神射击时，现在将播放一个声音!也有一些显示选项，可以减少插件得干扰。",

    ["LOCK_WINDOW"] = "锁定窗口",
    ["LOCK_WINDOW_DESC"] = "锁定窗口",
    ["HIDE_WINDOW_NOT_IN_RAID"] = "不在团队时隐藏窗口",
    ["HIDE_WINDOW_NOT_IN_RAID_DESC"] = "不在团队时隐藏窗口",
    ["DO_NOT_SHOW_WHEN_JOINING_RAID"] = "加入团队时隐藏窗口",
    ["DO_NOT_SHOW_WHEN_JOINING_RAID_DESC"] = "如果您不想每次加入团队时都显示窗口，请选中此选项",
    ["SHOW_WHEN_TARGETING_BOSS"] = "当你的目标是一个可宁神的Boss时，显示窗口",
    ["SHOW_WHEN_TARGETING_BOSS_DESC"] = "当你的目标是一个可宁神的Boss时，显示窗口",
    ["WINDOW_LOCKED"] = "TranqRotate: 窗口已隐藏",
    ["WINDOW_UNLOCKED"] = "TranqRotate: 窗口已锁定",

    ["TEST_MODE_HEADER"] = "测试模式",
    ["ENABLE_ARCANE_SHOT_TESTING"] = "切换测试模式",
    ["ENABLE_ARCANE_SHOT_TESTING_DESC"] =
        "当测试模式启用时, 奥术射击将注册为宁神射击\n" ..
        "测试模式将持续10分钟, 除非你提前关闭它",
    ["ARCANE_SHOT_TESTING_ENABLED"] = "奥术射击测试模式已启用, 持续10分钟",
    ["ARCANE_SHOT_TESTING_DISABLED"] = "奥术射击测试模式已禁用",

    ["FEATURES_HEADER"] = "可选功能",
    ["DISPLAY_BOSS_FRENZY_COOLDOWN"] = "显示激怒冷却进度条",
    ["DISPLAY_BOSS_FRENZY_COOLDOWN_DESC"] = "标题栏下方显示一个细进度条",
    ["ENABLE_AUTOMATIC_BACKUP_ALERT_WHEN_INCAPACITATED"] = "当无法工作时，启用自动替补通告",
    ["ENABLE_AUTOMATIC_BACKUP_ALERT_WHEN_INCAPACITATED_DESC"] = "TranqRotate会检查你的Debuff，如果轮到你宁神时，你瘫痪时间超过定义的延迟时间，则会要求替补",
    ["INCAPACITATED_DELAY_THRESHOLD"] = "瘫痪通告阀值",
    ["INCAPACITATED_DELAY_THRESHOLD_DESC"] = "如果您瘫痪时间超过配置的延迟时间，TranqRotate将自动调用替补",
    ["ENABLE_AUTOMATIC_TIMED_BACKUP_ALERT"] = "启用定时自动替补通告",
    ["ENABLE_AUTOMATIC_TIMED_BACKUP_ALERT_DESC"] = "如果BOSS在规定的延迟时间内激怒，而你已经宁神了，那么TranqRotate会要求替补",
    ["TIMED_DELAY_THRESHOLD"] = "定时通告阈值",
    ["TIMED_DELAY_THRESHOLD_DESC"] = "如果你没有在配置的阈值内进行宁神, TranqRotate将自动调用替补",

    --- Announces
    ["SETTING_ANNOUNCES"] = "通告",
    ["ENABLE_ANNOUNCES"] = "启用通告",
    ["ENABLE_ANNOUNCES_DESC"] = "启用 / 禁用通告",

    ---- Channels
    ["ANNOUNCES_CHANNEL_HEADER"] = "通告频道",
    ["MESSAGE_CHANNEL_TYPE"] = "发送到",
    ["MESSAGE_CHANNEL_TYPE_DESC"] = "你想发送到哪个频道",
    ["MESSAGE_CHANNEL_NAME"] = "频道名或玩家名",
    ["MESSAGE_CHANNEL_NAME_DESC"] = "设置目标频道的名称",

    ----- Channels types
    ["CHANNEL_CHANNEL"] = "频道",
    ["CHANNEL_RAID_WARNING"] = "团队警告",
    ["CHANNEL_SAY"] = "说",
    ["CHANNEL_YELL"] = "大喊",
    ["CHANNEL_PARTY"] = "小队",
    ["CHANNEL_RAID"] = "团队",

    ---- Messages
    ["ANNOUNCES_MESSAGE_HEADER"] = "通告信息",
    ["SUCCESS_MESSAGE_LABEL"] = "施放成功通告信息",
    ["FAIL_MESSAGE_LABEL"] = "施放失败通告信息",
    ["FAIL_WHISPER_LABEL"] = "施放失败私聊信息",
    ["UNABLE_TO_TRANQ_MESSAGE_LABEL"] = "Message whispered when you cannot tranq or call for backup",

    ['DEFAULT_SUCCESS_ANNOUNCE_MESSAGE'] = "已对 %s 施放了宁神射击!",
    ['DEFAULT_FAIL_ANNOUNCE_MESSAGE'] = "!!! 对 %s 宁神失败!!!",
    ['DEFAULT_FAIL_WHISPER_MESSAGE'] = "宁神失败 !! 赶紧补宁神!!",
    ['DEFAULT_UNABLE_TO_TRANQ_MESSAGE'] = "I'M UNABLE TO TRANQ ! TRANQ NOW !",

    ['TRANQ_NOW_LOCAL_ALERT_MESSAGE'] = "立即使用宁神 !!",

    ["BROADCAST_MESSAGE_HEADER"] = "循环顺序广播频道选择",
    ["USE_MULTILINE_ROTATION_REPORT"] = "连续多行发送宁神通告",
    ["USE_MULTILINE_ROTATION_REPORT_DESC"] = "如果您想要更易于理解的顺序显示，请选中此选项",

    --- Sounds
    ["SETTING_SOUNDS"] = "音效",
    ["ENABLE_NEXT_TO_TRANQ_SOUND"] = "当下一个宁神射击是您时，播放提示音",
    ["ENABLE_TRANQ_NOW_SOUND"] = "当您需要立即宁神射击时，播放提示音",
    ["TRANQ_NOW_SOUND_CHOICE"] = "选择要用于“宁神射击”提示的声音",
    ["DBM_SOUND_WARNING"] = "DBM在激怒时播放的'flag taken'提示音，可能导致您无法听到TranqRotate的提示音。建议选择一个响亮的提示音，或者在DBM中禁用激怒的警告。",

    --- Profiles
    ["SETTING_PROFILES"] = "配置文件",

    --- Raid broadcast messages
    ["BROADCAST_HEADER_TEXT"] = "猎人宁神顺序",
    ["BROADCAST_ROTATION_PREFIX"] = "循环",
    ["BROADCAST_BACKUP_PREFIX"] = "替补",
}

TranqRotate.L = L
