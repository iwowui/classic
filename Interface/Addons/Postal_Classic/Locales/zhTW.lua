local L = LibStub("AceLocale-3.0"):NewLocale("Postal", "zhTW")
if not L then return end
L["|cffeda55fAlt-Click|r to send this item to %s."] = "|cffeda55fAlt-點擊: |r將物品寄給%s。"
L["|cffeda55fControl-Click|r to attach similar items."] = "|cffeda55fCtrl-點擊|r附加類似物品。"
L["|cffeda55fCtrl-Click|r to return it to sender."] = "|cffeda55fCtrl-點擊: |r返回信件。"
L["|cffeda55fShift-Click|r to take the contents."] = "|cffeda55fShift-點擊: |r收取信件。"
L[ [=[|cFFFFCC00*|r Selected mail will be batch opened or returned to sender by clicking Open or Return.
|cFFFFCC00*|r You can Shift-Click 2 checkboxes to mass select every mail between the 2 checkboxes.
|cFFFFCC00*|r You can Ctrl-Click a checkbox to mass select or unselect every mail from that sender.
|cFFFFCC00*|r Select will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r Select will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = [=[|cFFFFCC00*|r |cFFFFCC00*|r 選定的信件將批次開啟或通過點擊打開或返回來退還給發件人。
|cFFFFCC00*|r 您可以Shift-點擊兩個複選框來選擇兩個複選框之間的所有信件。
|cFFFFCC00*|r 您可以按Ctrl-點擊一個複選框來選定或取消選定一切來自該發件人的信件。
|cFFFFCC00*|r 選擇 永遠不會刪除任何信件(當所有附在信件的物品和金錢被提取後，遊戲會自動刪除郵箱裡沒有文字的信件) 。
|cFFFFCC00*|r 選擇 將跳過CoD信件和暴雪的信件。
|cFFFFCC00*|r 關閉 消息模式 選項來停止當開啟信件時在聊天框的洗頻。]=]
L[ [=[|cFFFFCC00*|r Shift-Click to take item/money from mail.
|cFFFFCC00*|r Ctrl-Click to return mail.
|cFFFFCC00*|r Alt-Click to move an item from your inventory to the current outgoing mail (same as right click in default UI).]=] ] = [=[|cFFFFCC00*|r Shift-點擊將從郵件拿取物品/金錢。
|cFFFFCC00*|r 按Ctrl -點擊將退還信件。
|cFFFFCC00*|r 按Alt-點擊一件物品將從您的背包移到目前的外寄信件（等同UI預設的右鍵點擊 ） 。
|cFFFFCC00*|r 用滑鼠滾輪滾動收件匣。]=]
L[ [=[|cFFFFCC00*|r Simple filters are available for various mail types.
|cFFFFCC00*|r Shift-Click the Open All button to override the filters and take ALL mail.
|cFFFFCC00*|r OpenAll will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r OpenAll will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = [=[|cFFFFCC00*|r 簡單的篩選器可用於篩選各種信件類型。
|cFFFFCC00*|r Shift-點擊 收取全部 按鈕將覆蓋所有的篩選器，並提取所有的信件。
|cFFFFCC00*|r 收取全部 永遠不會刪除任何信件(當所有附在信件的物品和金錢被提取後，遊戲會自動刪除郵箱裡沒有文字的信件) 。
|cFFFFCC00*|r 收取全部 將跳過CoD信件和暴雪的信件。
|cFFFFCC00*|r 關閉 消息模式 選項來停止當開啟信件時在聊天框的洗頻。]=]
L[ [=[|cFFFFCC00*|r This module will list your contacts, friends, guild mates, alts and track the last 10 people you mailed.
|cFFFFCC00*|r It will also autocomplete all names in your BlackBook.]=] ] = [=[|cFFFFCC00*|r 此模組將您的聯絡人名單，朋友，公會隊友，分身，並追踪過去您曾郵寄的10人。
|cFFFFCC00*|r 它也將自動填寫已在您的黑名單內所有的名字。]=]
L["A button that collects all attachments and coins from mail."] = "一個收取全部附件及金錢的按鈕。"
L["Add check boxes to the inbox for multiple mail operations."] = "增加勾選框以供多重信件指令使用。"
L["Add Contact"] = "新增聯絡人"
L["Add multiple item mail tooltips"] = "新增多個物品的郵件提示框"
L["Adds a contact list next to the To: field."] = "在收件人輸入框旁邊添加一個聯絡列表。"
L["AH-related mail"] = "拍賣相關信件"
L["All Alts"] = "所有Alts"
L["Allows you to copy the contents of a mail."] = "允許你複製信的內容物。"
L["Alts"] = "分身"
L["Auto-Attach similar items on Control-Click"] = "Ctrl+點擊時自動附加相似物品"
L["Autofill last person mailed"] = "自動填寫最後曾郵寄的人名"
L["Auto-Send on Alt-Click"] = "Alt-點擊 自動發送"
L["BlackBook"] = "聯絡人名冊"
L["Block incoming trade requests while in a mail session."] = "在處理信件期間拒絕交易要求。"
L["CarbonCopy"] = "複本"
L["Chat Output"] = "聊天內容 輸出"
L["Choose"] = "選取"
L["Clear list"] = "清空列表"
L["Collected"] = "已領取"
L["Contacts"] = "聯絡人"
L["Copy From"] = "複製自"
L["Copy this mail"] = "複製這封信"
L["Delete"] = "刪除"
L["Disable Blizzard's auto-completion popup menu"] = "停用內建彈出自動完成的選單"
L["DoNotWant"] = "不想要"
L["Enable Alt-Click to send mail"] = "開啟Alt-點擊 發送信件"
L["Exclude randoms you interacted with"] = "防止你隨意地受到影響"
L["Express"] = "快速收發"
L["Friends"] = "好友"
L["Guild"] = "公會"
L["Help"] = "幫助"
L["In Progress"] = "正在處理"
L["Keep free space"] = "保持背包空位"
L["Mouse click short cuts for mail."] = "點擊快速收發信件。"
L["Name auto-completion options"] = "名字自動完成選項"
L["New Profile"] = "新設定檔"
L["New Profile Name:"] = "新設定檔名稱:"
L["Non-AH related mail"] = "非拍賣相關信件"
L["Not all messages are shown, refreshing mailbox soon to continue Open All..."] = "尚有郵件未能顯示，請重整收件匣後繼續開啟..."
L["Not taking more items as there are now only %d regular bagslots free."] = "無法拾取更多物品，因目前只有%d個背包空位。"
L["Open"] = "開啟"
L["Open All"] = "收取全部"
L["Open all Auction cancelled mail"] = "打開所有取消拍賣的信件"
L["Open all Auction expired mail"] = "打開所有拍賣過期的信件"
L["Open all Auction successful mail"] = "打開所有拍賣成功的信件"
L["Open all Auction won mail"] = "打開所有赢得拍賣的信件"
L["Open all mail with attachments"] = "打開所有帶有附件的信件"
L["Open all Outbid on mail"] = "打開所有超過出價的信件"
L["Open mail from the Postmaster"] = "從Postmaster開啟郵件"
L["OpenAll"] = "收取全部"
L["Opening Speed"] = "收取速度"
L["Other options"] = "其他選項"
L["Part %d"] = "分組%d"
L["Please post bugs or suggestions at the wowace forums thread at |cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r. When posting bugs, indicate your locale and Postal's version number v%s."] = "如要回報錯誤或建議請往wowace論壇|cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r. 發帖時，說明你的語系和Postal的版本編號 v%s."
L["Prints the amount of money collected during a mail session."] = "顯示這次收取的金錢。"
L["Processing Message"] = "正在處理訊息"
L["Profile"] = "設定檔"
L["Rake"] = "報告"
L["Recently Mailed"] = "最近寄出的郵件"
L["Refreshing mailbox..."] = "重新整理收件匣..."
L["Remove Contact"] = "移除聯絡人"
L["Reset Profile"] = "重置設定檔"
L["Return"] = "返回"
L["Select"] = "選擇"
L["Set subject field to value of coins sent if subject is blank."] = "在「主題:」欄位自動填寫寄件金額。"
L["Shows a clickable visual icon as to whether a mail will be returned or deleted on expiry."] = "視覺顯示點擊圖示是否郵件將被退回或刪除期滿。"
L["Skipping"] = "略過"
L["Some Messages May Have Been Skipped."] = "部份訊息可能會被略過。"
L["Thaumaturge Vashreen"] = "魔术师瓦西里恩"
L["The Postmaster"] = "邮政长"
L["There are %i more messages not currently shown."] = "有%i更多訊息沒有在目前顯示。"
L["There are %i more messages not currently shown. More should become available in %i seconds."] = "有%i更多訊息沒有在目前顯示。在%i秒內將會顯示更多。"
L["TradeBlock"] = "拒絕交易"
L["Use Mr.Plow after opening"] = "在開啟郵件之後使用Mr.Plow 整理背包"
L["Use Postal's auto-complete"] = "使用Postal的自動完成"
L["Verbose mode"] = "消息模式"
L["Wire"] = "自動填寫金額"
