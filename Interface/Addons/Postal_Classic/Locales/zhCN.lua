local L = LibStub("AceLocale-3.0"):NewLocale("Postal", "zhCN")
if not L then return end
L["|cffeda55fAlt-Click|r to send this item to %s."] = "|cffeda55fAlt+点击|r将该物品发送给%s。"
L["|cffeda55fControl-Click|r to attach similar items."] = "|cffeda55fCtrl+点击|r附加类似物品。"
L["|cffeda55fCtrl-Click|r to return it to sender."] = "|cffeda55fCtrl+点击|r将信退给发件人。"
L["|cffeda55fShift-Click|r to take the contents."] = "|cffeda55fShift+点击|r获得该邮件的内容副本。"
L[ [=[|cFFFFCC00*|r Selected mail will be batch opened or returned to sender by clicking Open or Return.
|cFFFFCC00*|r You can Shift-Click 2 checkboxes to mass select every mail between the 2 checkboxes.
|cFFFFCC00*|r You can Ctrl-Click a checkbox to mass select or unselect every mail from that sender.
|cFFFFCC00*|r Select will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r Select will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = [=[|cFFFFCC00*|r 点击打开或者退信，被选中的邮件会被批量打开或退回。
|cFFFFCC00*|r Shift+点击分别点击2封信的复选框，会将这2封信之前的所有新选中。
|cFFFFCC00*|r Ctrl+点击一封信的复选框，可以将所有来自该发件人的信选中或者取消选中。
|cFFFFCC00*|r 选中则不删除任何邮件（游戏默认当一封没有任何文字的信中的附件被取走之后自动删除该邮件）。
|cFFFFCC00*|r 选中将跳过付款取信的邮件以及来自暴雪的邮件。
|cFFFFCC00*|r 关闭消息模式，取信时聊天窗口将不再显示信息。]=]
L[ [=[|cFFFFCC00*|r Shift-Click to take item/money from mail.
|cFFFFCC00*|r Ctrl-Click to return mail.
|cFFFFCC00*|r Alt-Click to move an item from your inventory to the current outgoing mail (same as right click in default UI).]=] ] = [=[|cFFFFCC00*|r Shift+点击取走信中的金币或者物品。
|cFFFFCC00*|r Ctrl+点击退信。
|cFFFFCC00*|r Alt+点击背包中的物品，将其添加到附件中（同游戏本身的右键点击）。]=]
L[ [=[|cFFFFCC00*|r Simple filters are available for various mail types.
|cFFFFCC00*|r Shift-Click the Open All button to override the filters and take ALL mail.
|cFFFFCC00*|r OpenAll will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r OpenAll will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = [=[|cFFFFCC00*|r各种邮件类型都有简单的过滤条件可用。
|cFFFFCC00*|rShift+点击“打开所有”按钮可以忽略这些过滤并收取所有邮件。
|cFFFFCC00*|r打开所有功能将不会删除任何邮件（无内容邮件将在附件和金钱被收取后自动删除）。
|cFFFFCC00*|r打开所有功能将会阻止付款取信邮件和暴雪发送的邮件。
|cFFFFCC00*|r请关闭详细信息选项来取消打开邮件时的聊天窗口信息。]=]
L[ [=[|cFFFFCC00*|r This module will list your contacts, friends, guild mates, alts and track the last 10 people you mailed.
|cFFFFCC00*|r It will also autocomplete all names in your BlackBook.]=] ] = [=[|cFFFFCC00*|r该模块将列出你所有的联系人、好友、公会成员、小号和你最近发送邮件的10个人。
|cFFFFCC00*|r同时还将自动完成通讯簿中的所有名字。]=]
L["A button that collects all attachments and coins from mail."] = "收取所有邮件的附件和金币。"
L["Add check boxes to the inbox for multiple mail operations."] = "增加可选框以便于对多个邮件进行操作。"
L["Add Contact"] = "添加联系人"
L["Add multiple item mail tooltips"] = "添加多个物品的邮件提示"
L["Adds a contact list next to the To: field."] = "添加联系人列表到收件人栏。"
L["AH-related mail"] = "拍卖相关邮件"
L["All Alts"] = "全部小号"
L["Allows you to copy the contents of a mail."] = "允许你复制信的内容物。"
L["Alts"] = "小号"
L["Auto-Attach similar items on Control-Click"] = "Ctrl+点击自动附加相同物品"
L["Autofill last person mailed"] = "自动填写最后的收件人"
L["Auto-Send on Alt-Click"] = "Alt+点击自动发送"
L["BlackBook"] = "黑名单"
L["Block incoming trade requests while in a mail session."] = "在进行邮件操作中阻止交易请求。"
L["CarbonCopy"] = "复本"
L["Chat Output"] = "聊天输出"
L["Choose"] = "选择"
L["Clear list"] = "清空列表"
L["Collected"] = "已收取"
L["Contacts"] = "联系人"
L["Copy From"] = "从…复制"
L["Copy this mail"] = "复制这封信"
L["Delete"] = "删除"
L["Disable Blizzard's auto-completion popup menu"] = "关闭暴雪的自动完成弹出菜单"
L["DoNotWant"] = "不想要"
L["Enable Alt-Click to send mail"] = "允许 Alt+点击发送邮件"
L["Exclude randoms you interacted with"] = "防止你随意地受到影响"
L["Express"] = "快件"
L["Friends"] = "好友"
L["Guild"] = "公会"
L["Help"] = "帮助"
L["In Progress"] = "处理中"
L["Keep free space"] = "保留背包空间"
L["Mouse click short cuts for mail."] = "鼠标快捷方式。"
L["Name auto-completion options"] = "姓名自动完成选项"
L["New Profile"] = "新配置文件"
L["New Profile Name:"] = "新配置文件名称："
L["Non-AH related mail"] = "非拍卖相关邮件"
L["Not all messages are shown, refreshing mailbox soon to continue Open All..."] = "尚有邮件未能显示，请重整收件匣后继续开启…"
L["Not taking more items as there are now only %d regular bagslots free."] = "无法拿取更多物品，目前仅有%d个背包位置。"
L["Open"] = "打开"
L["Open All"] = "打开所有"
L["Open all Auction cancelled mail"] = "打开所有取消拍卖的邮件"
L["Open all Auction expired mail"] = "打开所有拍卖过期的邮件"
L["Open all Auction successful mail"] = "打开所有拍卖成功的邮件"
L["Open all Auction won mail"] = "打开所有赢得拍卖的邮件"
L["Open all mail with attachments"] = "打开所有带有附件的邮件"
L["Open all Outbid on mail"] = "打开所有超过出价的邮件"
L["Open mail from the Postmaster"] = "打开来自邮政长的邮件"
L["OpenAll"] = "打开所有"
L["Opening Speed"] = "收信速度"
L["Other options"] = "其他选项"
L["Part %d"] = "第%d组"
L["Please post bugs or suggestions at the wowace forums thread at |cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r. When posting bugs, indicate your locale and Postal's version number v%s."] = "请到 WowAce 的论坛|cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r 报告 Bug 或者提交建议。报告 Bug 时请说明 Postal 的版本 v%s。"
L["Prints the amount of money collected during a mail session."] = "显示在一次邮件操作中所收到的金币。"
L["Processing Message"] = "正在处理邮件"
L["Profile"] = "配置文件"
L["Rake"] = "收款显示"
L["Recently Mailed"] = "最近邮寄"
L["Refreshing mailbox..."] = "重新整理收件匣…"
L["Remove Contact"] = "删除联系人"
L["Reset Profile"] = "重置配置文件"
L["Return"] = "退信"
L["Select"] = "选择"
L["Set subject field to value of coins sent if subject is blank."] = "在主题为空时将主题自动填充为金币数量。"
L["Shows a clickable visual icon as to whether a mail will be returned or deleted on expiry."] = "显示一个可点击的图标以确定邮件将被退回或是到期删除。"
L["Skipping"] = "忽略"
L["Some Messages May Have Been Skipped."] = "部分邮件可能被忽略。"
L["Thaumaturge Vashreen"] = "魔术师瓦西里恩"
L["The Postmaster"] = "邮政长"
L["There are %i more messages not currently shown."] = "还有%i或更多的邮件没有显示。"
L["There are %i more messages not currently shown. More should become available in %i seconds."] = "当前还有%i条信息没有显示。将在%i秒内显示。"
L["TradeBlock"] = "阻止交易"
L["Use Mr.Plow after opening"] = "打开邮件后使用 Mr.Plow 插件进行背包整理"
L["Use Postal's auto-complete"] = "使用 Postal 的自动完成"
L["Verbose mode"] = "消息模式"
L["Wire"] = "填充标题"
