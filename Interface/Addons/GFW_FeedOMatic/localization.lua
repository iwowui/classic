-----------------------------------------------------
-- localization.lua
-- English strings by default, localizations override with their own.
------------------------------------------------------
-- This file contains only strings for localizing Feed-O-Matic's UI.
-- See LocaleSupport.lua for strings that MUST be localized for Feed-O-Matic to work correctly in a locale.
------------------------------------------------------

if (GetLocale() == "zhCN") then
    FOM_BUTTON_TOOLTIP1             = "左键点击喂养宠物:"
    FOM_BUTTON_TOOLTIP1_FALLBACK    = "Alt-左键点击喂养宠物:"
    FOM_BUTTON_TOOLTIP2             = "<右键点击进行设置>"
    FOM_BUTTON_TOOLTIP_NOFOOD       = "不能喂养宠物"
    FOM_BUTTON_TOOLTIP_DIET         = "%s 吃:"

    -- Used in tooltips to indicate food quality.
    FOM_QUALITY_UNDER               = "%s 不喜欢这种食物。"
    FOM_QUALITY_WILL                = "%s 可以吃这种食物。"
    FOM_QUALITY_LIKE                = "%s 愿意吃这种食物。"
    FOM_QUALITY_LOVE                = "%s 喜欢吃这种食物。"

    -- User-visible errors
    FOM_ERROR_NO_FOOD               = "没有食物给 %s。"
    FOM_ERROR_NO_FOOD_NO_FALLBACK   = "没有食物给 %s （还未指定需要避免的食物）。"
    FOM_FALLBACK_MESSAGE            = "按住 Alt 再点击喂养按钮或使用快捷键。"

    -- Feeding status messages
    FOM_FEEDING_EAT                 = "喂 %s %s..."
    FOM_FEEDING_FEED                = "喂 %s %s。"

    -- Options panel
    FOM_OPTIONS_GENERAL             = "常规选项"
    FOM_OPTIONS_PROFILE             = "选项配置"
    FOM_OPTIONS_SUBTEXT             = "喂养宠物时请单击宠物血条旁边的按钮，或为喂养宠物绑定一个快捷键，或将'/ click FOM_FeedButton'放在宏中。"

    FOM_FOOD_QUALITY_INFO           = "接近宠物等级的食物可以恢复更多的生命值。\n"
    FOM_OPTIONS_TOOLTIP             = "在鼠标提示中显示食品质量"
    FOM_OPTIONS_TOOLTIP_TIP         = FOM_FOOD_QUALITY_INFO.."开启后鼠标提示中讲显示该食物可以恢复宠物多少生命值。"
    FOM_OPTIONS_LOW_LVL_1ST         = "优先使用低等级食物"
    FOM_OPTIONS_LOW_LVL_1ST_TIP     = FOM_FOOD_QUALITY_INFO.."开启后将默认使用低等级食物（需要更频繁地喂食）。\n禁用后将可以减少喂食频率（无法更快清空低等级食物）。"
    FOM_OPTIONS_AVOID_QUEST         = "避免任务所需物品"
    FOM_OPTIONS_AVOID_QUEST_TIP     = "有些任务所需物品也可以用于喂养宠物。开启后可以防止喂养宠物干扰任务进度。"
    FOM_OPTIONS_NO_BUTTON           = "隐藏宠物喂养按钮"
    FOM_OPTIONS_NO_BUTTON_TIP       = "不要在宠物血条边显示宠物喂养按钮。\n(用于有插件改变/隐藏系统默认宠物头像时。)"

    FOM_OPTIONS_FEED_NOTIFY         = "喂养时提示:"
    FOM_OPTIONS_NOTIFY_EMOTE        = "通过表情"
    FOM_OPTIONS_NOTIFY_TEXT         = "通过聊天窗口"
    FOM_OPTIONS_NOTIFY_NONE         = "不提示"

    FOM_OPTIONS_FOODS_TITLE         = "食物偏好"
    FOM_OPTIONS_FOODS_TEXT          = "取消下面选中的食物（或食物类别），可以避免将它们喂给宠物。\n否则将优先使用更接近列表顶部类别的食物。"

    FOM_OPTIONS_FOODS_NAME          = "食物"
    FOM_OPTIONS_FOODS_COOKING       = "成分"

    FOM_OPTIONS_FOODS_CONJURED      = "魔法制造物"
    FOM_OPTIONS_FOODS_CONJ_COMBO    = "同时恢复法力的食物"
    FOM_OPTIONS_FOODS_BASIC         = "普通食物"
    FOM_OPTIONS_FOODS_COMBO         = "恢复法力的食物"
    FOM_OPTIONS_FOODS_BONUS         = "能喂饱的食物"
    FOM_OPTIONS_FOODS_INEDIBLE      = "生食"

    FOM_OPTIONS_FOODS_ONLY_PET      = "仅显示喂养宠物的食物"
    FOM_OPTIONS_FOODS_ONLY_PET_TIP  = "只显示%d级 %s 可以吃的食物" -- e.g. level 80 Gorilla
    FOM_OPTIONS_FOODS_ONLY_LVL_TIP  = "只显示%d宠物可以吃的食物"
    FOM_OPTIONS_FOODS_ONLY_INV      = "仅显示包裹里的食物"

    FOM_DIFFICULTY_HEADER           = "配方状态:"
    FOM_DIFFICULTY_1                = "不重要的"
    FOM_DIFFICULTY_2                = "容易的"
    FOM_DIFFICULTY_3                = "中等的"
    FOM_DIFFICULTY_4                = "困难的"
    FOM_DIFFICULTY_5                = "未知的"
elseif (GetLocale() == "zhTW") then
    FOM_BUTTON_TOOLTIP1             = "左鍵點擊餵養寵物:"
    FOM_BUTTON_TOOLTIP1_FALLBACK    = "Alt-左鍵點擊餵養寵物:"
    FOM_BUTTON_TOOLTIP2             = "<右鍵點擊進行設置>"
    FOM_BUTTON_TOOLTIP_NOFOOD       = "不能餵養寵物"
    FOM_BUTTON_TOOLTIP_DIET         = "%s 吃:"

    -- Used in tooltips to indicate food quality.
    FOM_QUALITY_UNDER               = "%s 不喜歡這種食物。"
    FOM_QUALITY_WILL                = "%s 可以吃這種食物。"
    FOM_QUALITY_LIKE                = "%s 願意吃這種食物。"
    FOM_QUALITY_LOVE                = "%s 喜歡吃這種食物。"

    -- User-visible errors
    FOM_ERROR_NO_FOOD               = "沒有食物給 %s。"
    FOM_ERROR_NO_FOOD_NO_FALLBACK   = "沒有食物給 %s （還未指定需要避免的食物）。"
    FOM_FALLBACK_MESSAGE            = "按住 Alt 再點擊餵養按鈕或使用快速鍵。"

    -- Feeding status messages
    FOM_FEEDING_EAT                 = "喂 %s %s..."
    FOM_FEEDING_FEED                = "喂 %s %s。"

    -- Options panel
    FOM_OPTIONS_GENERAL             = "常規選項"
    FOM_OPTIONS_PROFILE             = "選項配置"
    FOM_OPTIONS_SUBTEXT             = "餵養寵物時請按一下寵物血條旁邊的按鈕，或為餵養寵物綁定一個快速鍵，或將'/ click FOM_FeedButton'放在宏中。"

    FOM_FOOD_QUALITY_INFO           = "接近寵物等級的食物可以恢復更多的生命值。\n"
    FOM_OPTIONS_TOOLTIP             = "在滑鼠提示中顯示食品品質"
    FOM_OPTIONS_TOOLTIP_TIP         = FOM_FOOD_QUALITY_INFO.."開啟後滑鼠提示中講顯示該食物可以恢復寵物多少生命值。"
    FOM_OPTIONS_LOW_LVL_1ST         = "優先使用低等級食物"
    FOM_OPTIONS_LOW_LVL_1ST_TIP     = FOM_FOOD_QUALITY_INFO.."開啟後將預設使用低等級食物（需要更頻繁地餵食）。\n禁用後將可以減少餵食頻率（無法更快清空低等級食物）。"
    FOM_OPTIONS_AVOID_QUEST         = "避免任務所需物品"
    FOM_OPTIONS_AVOID_QUEST_TIP     = "有些任務所需物品也可以用於餵養寵物。開啟後可以防止餵養寵物干擾任務進度。"
    FOM_OPTIONS_NO_BUTTON           = "隱藏寵物餵養按鈕"
    FOM_OPTIONS_NO_BUTTON_TIP       = "不要在寵物血條邊顯示寵物餵養按鈕。\n(用於有插件改變/隱藏系統預設寵物頭像時。)"

    FOM_OPTIONS_FEED_NOTIFY         = "餵養時提示:"
    FOM_OPTIONS_NOTIFY_EMOTE        = "通過表情"
    FOM_OPTIONS_NOTIFY_TEXT         = "通過聊天視窗"
    FOM_OPTIONS_NOTIFY_NONE         = "不提示"

    FOM_OPTIONS_FOODS_TITLE         = "食物偏好"
    FOM_OPTIONS_FOODS_TEXT          = "取消下面選中的食物（或食物類別），可以避免將它們喂給寵物。\n否則將優先使用更接近列表頂部類別的食物。"

    FOM_OPTIONS_FOODS_NAME          = "食物"
    FOM_OPTIONS_FOODS_COOKING       = "成分"

    FOM_OPTIONS_FOODS_CONJURED      = "魔法制造物"
    FOM_OPTIONS_FOODS_CONJ_COMBO    = "同時恢復法力的食物"
    FOM_OPTIONS_FOODS_BASIC         = "普通食物"
    FOM_OPTIONS_FOODS_COMBO         = "恢復法力的食物"
    FOM_OPTIONS_FOODS_BONUS         = "能喂飽的食物"
    FOM_OPTIONS_FOODS_INEDIBLE      = "生食"

    FOM_OPTIONS_FOODS_ONLY_PET      = "僅顯示餵養寵物的食物"
    FOM_OPTIONS_FOODS_ONLY_PET_TIP  = "只顯示%d級 %s 可以吃的食物" -- e.g. level 80 Gorilla
    FOM_OPTIONS_FOODS_ONLY_LVL_TIP  = "只顯示%d寵物可以吃的食物"
    FOM_OPTIONS_FOODS_ONLY_INV      = "僅顯示包裹裡的食物"

    FOM_DIFFICULTY_HEADER           = "配方狀態:"
    FOM_DIFFICULTY_1                = "不重要的"
    FOM_DIFFICULTY_2                = "容易的"
    FOM_DIFFICULTY_3                = "中等的"
    FOM_DIFFICULTY_4                = "困難的"
    FOM_DIFFICULTY_5                = "未知的"
else
    FOM_BUTTON_TOOLTIP1             = "Left-Click to Feed Pet:"
    FOM_BUTTON_TOOLTIP1_FALLBACK    = "Alt-Left-Click to Feed Pet:"
    FOM_BUTTON_TOOLTIP2             = "<Right-Click for Options>"
    FOM_BUTTON_TOOLTIP_NOFOOD       = "Cannot Feed Pet"
    FOM_BUTTON_TOOLTIP_DIET         = "%s eats:"

    -- Used in tooltips to indicate food quality.
    FOM_QUALITY_UNDER               = "%s doesn't like this anymore."
    FOM_QUALITY_WILL                = "%s will eat this."
    FOM_QUALITY_LIKE                = "%s likes to eat this."
    FOM_QUALITY_LOVE                = "%s loves to eat this."

    -- User-visible errors
    FOM_ERROR_NO_FOOD               = "Found no food for %s."
    FOM_ERROR_NO_FOOD_NO_FALLBACK   = "Found no food for %s that you haven't told Feed-O-Matic to avoid."
    FOM_FALLBACK_MESSAGE            = "Hold Alt while pressing the Feed Pet button or key to feed %s anyway."

    -- Feeding status messages
    FOM_FEEDING_EAT                 = "Feeding %s a %s..."
    FOM_FEEDING_FEED                = "feeds %s a %s. "

    -- Options panel
    FOM_OPTIONS_GENERAL             = "General Options"
    FOM_OPTIONS_PROFILE             = "Options Profile"
    FOM_OPTIONS_SUBTEXT             = "To feed your pet with Feed-O-Matic, click the button next to your pet's health bar, bind a key to Feed Pet in the Key Bindings menu, or put '/click FOM_FeedButton' in a macro."

    FOM_FOOD_QUALITY_INFO           = "Foods of a level closer to your pet's restore more health.\n"
    FOM_OPTIONS_TOOLTIP             = "Show food quality in tooltips"
    FOM_OPTIONS_TOOLTIP_TIP         = FOM_FOOD_QUALITY_INFO.."If enabled, food item tooltips show a quick summary of how much the food will restore your pet's health."
    FOM_OPTIONS_LOW_LVL_1ST         = "Prefer lower-level foods"
    FOM_OPTIONS_LOW_LVL_1ST_TIP     = FOM_FOOD_QUALITY_INFO.."Enable this option and your pet will quickly dispose of lower-quality foods but require feeding more often.\nDisable it and your pet will require feeding less often, but your inventory may quickly fill with less-useful foods."
    FOM_OPTIONS_AVOID_QUEST         = "Avoid foods needed for quests"
    FOM_OPTIONS_AVOID_QUEST_TIP     = "Some quests require collecting items which are also edible by pets. Enable this option to prevent your pet's appetite from interfering with your quest progress."
    FOM_OPTIONS_NO_BUTTON           = "Hide Feed Pet button"
    FOM_OPTIONS_NO_BUTTON_TIP       = "Don't show the button Feed-O-Matic normally puts next to your pet's health bar.\n(You might find this option useful if using a UI that changes/hides the default pet frame.)"

    FOM_OPTIONS_FEED_NOTIFY         = "Notify when feeding:"
    FOM_OPTIONS_NOTIFY_EMOTE        = "With an emote"
    FOM_OPTIONS_NOTIFY_TEXT         = "In chat window"
    FOM_OPTIONS_NOTIFY_NONE         = "Don't notify"

    FOM_OPTIONS_FOODS_TITLE         = "Food Preferences"
    FOM_OPTIONS_FOODS_TEXT          = "Uncheck individul foods (or food categories) below to prevent Feed-O-Matic from feeding them to your pet.\nFeed-O-Matic will prefer to use foods from categories closer to the top of the list."

    FOM_OPTIONS_FOODS_NAME          = "Food"
    FOM_OPTIONS_FOODS_COOKING       = "Ingredient for"

    FOM_OPTIONS_FOODS_CONJURED      = "Conjured Foods"
    FOM_OPTIONS_FOODS_CONJ_COMBO    = "Conjured Mana Restoring Foods"
    FOM_OPTIONS_FOODS_BASIC         = "Basic Foods"
    FOM_OPTIONS_FOODS_COMBO         = "Mana Restoring Foods"
    FOM_OPTIONS_FOODS_BONUS         = "“Well Fed” Foods"
    FOM_OPTIONS_FOODS_INEDIBLE      = "Raw Foods"

    FOM_OPTIONS_FOODS_ONLY_PET      = "Only show foods for my pet"
    FOM_OPTIONS_FOODS_ONLY_PET_TIP  = "Filters the list to show only foods a level %d %s will eat" -- e.g. level 80 Gorilla
    FOM_OPTIONS_FOODS_ONLY_LVL_TIP  = "Filters the list to show only foods a level %d pet can eat"
    FOM_OPTIONS_FOODS_ONLY_INV      = "Only show foods in my inventory"

    FOM_DIFFICULTY_HEADER           = "Recipe status:"
    FOM_DIFFICULTY_1                = "Trivial"
    FOM_DIFFICULTY_2                = "Easy"
    FOM_DIFFICULTY_3                = "Medium"
    FOM_DIFFICULTY_4                = "Difficult"
    FOM_DIFFICULTY_5                = "Unknown"
end
