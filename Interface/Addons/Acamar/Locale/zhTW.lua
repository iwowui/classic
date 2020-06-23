local addonName, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhTW")
if not L then return end
------------------------------------------------------------------------------
L["|cffffff00Click|r to toggle the Acamar main window."] = "|cffca99ff點擊|r圖示打開Acamar控制視窗\n|cffca99ff右鍵點擊|r打開選項"

L["Enter /acamar for Acamar engine main interface"] = "輸入 /acamar 打開Acamar自學習垃圾消息插件控制視窗"
L["Found new possible spammer: "] = "發現新的垃圾消息發送者："
L["'s spam score increased."] = "的垃圾得分增加了。"
L["Currently banned players:"] = "當前遮罩的玩家："
L["Top 500 spammers with spam score greater than "] = "垃圾得分最高500名玩家，得分超過"
L["Total players in banned list: "] = "遮罩列表的總玩家："
L["Learning in progress ..."] = "正在學習玩家垃圾消息行為......"
L["Top players with spam score. Max "] = "有垃圾消息嫌疑的玩家排名，最多顯示數量："
L["The list changes along with the learning progress."] = "隨著系統學習的深入，這個清單會動態變化。"
L["Total players in the list: "] = "此列表的總玩家："
L["Resetting DB and learning enging..."] = "[慎點] 重置所有學習的資料，重新開始學習。"
L["Reset and re-learn"] = "重置數據以重新學習"
L["Reset DB to initial status and begin to re-learn players' behavior."] = "[慎點] 將學習的資料清空，重新開始學習。"
L["Top 500 spammers"] = "前500名垃圾資訊發送者"
L["Print current banned player list in chat window."] = "將當前被被遮罩的使用者清單發送到聊天視窗。"
L["Top 500 spammer list"] = "前500名垃圾資訊發送者："

L["Filtering Level"] = "過濾級別"
L["Set messages filtering level"] = "選擇過濾級別。基本後面的數位表示該基本對應分數，高於此分數的玩家將被遮罩。"
L["Most strict level with minimum spam"] = "最嚴格過濾"
L["Bots, spammers, annoying senders and talkative players away"] = "腳本、垃圾資訊、煩人以及多話的玩家走開"
L["Block bots, spammers and annoying messages"] = "禁止腳本、垃圾資訊、煩人的玩家"
L["Block bots and spammers"] = "禁止腳本、垃圾資訊"
L["Block bots only"] = "禁止腳本型玩家"
L["Turn On Engine"] = "啟用Acamar引擎"
L["Turn on messages filtering and learning engine. If turn off, messages will not be filtered."] = "如果關閉，消息過濾及學習都將被停止。"
L["Engine Settings"] = "基本設置"
L["Advanced Settings"] = "高級設置"
L["Spam score"] = "自動評分"
L["About"] = "關於"
L["ABOUT_INFO"] = "|cffca99ffAcamar|r 距離太陽49pc，|cffca99ffTriton|r才0.00014567pc。"
L["Do not disturb"] = "儘量勿擾模式"
L["Enable to bypass printing of progress messages (like talkative player added into learning) in chat window."] = "如果啟用，類如多話玩家被加入學習等資訊將不會列印到聊天視窗。"

L["Regular(LFG, World, Trade, etc.)"] = "常規頻道(尋找團隊、世界頻道、交易頻道等)"
L["Regular and party/raid"] = "常規以及小隊/團隊頻道"
L["Regular and guild"] = "常規以及公會頻道"
L["Regular, guild and party/raid"] = "常規、公會以及小隊/團隊頻道" 
L["Filtering Channels"] = "過濾哪些頻道"
L["Select channels to filtered"] = "選擇要過濾的頻道"
L["FILTER_CHANNEL_NOTE"] = "為了不遺漏重要消息，公會官員以及團隊領袖頻道任何情況下都不會過濾。"

L["Message filtering running ..."] = "開始進行消息過濾..."
L["Message filtering stopped."] = "消息過濾停止。"

L["Rewrite messages"] = "精簡消息"
L["[RW] "] = "[|cff00cccc簡|r] "
L["REWRITE_DESC"] = "將重複和囉嗦的消息精簡，這類消息前面會添加[|cff00cccc簡|r]的標誌。消息量大的時候cpu負載會略高。"

L["Bypass friends"] = "不過濾好友"
L["Do not filter members of guild, party/raid, and myself."] = "不要過濾公會、小組、團隊的成員，當然包括我自己。"

L["White list"] = "白名單"
L["Enter player's name list to bypass filtering:"] = "輸入白名單，名單裡的玩家將不被遮罩"
L["One player in one single line"] = "注意格式：一行一個用戶"

L["Show minimap icon"] = "在小地圖邊顯示圖示"

L["Blocklist has synced."] = "遮罩名單已經更新。"
L["Block list"] = "無限遮罩名單"
L["BL_DESC"] = "點擊一個玩家把該玩家移出遮罩名單。通過系統功能添加的遮罩玩家也會同步到這個列表。\n\n有些插件可能互相干擾導致遮罩名單無法超過50，此時，可以通過按住SHIFT鍵，在聊天視窗右鍵點擊玩家名字，選擇'添加到遮罩名單'來確保不受50的限制。"
L["Ignore list is empty."] = "尚無被遮罩的玩家。"
L[" had been removed from blocklist."] = "已經被移出遮罩名單。"

L["MIN_INTERVAL_DESC"] = "允許同一玩家，或者同一玩家的相同消息，在設定時間內只發能一次。設為0則取消該限制。"
L["Same player"] = "同一玩家"
L["Allow only 1 message sent by same player during set interval (seconds)"] = "在設定的秒數內，同一玩家只能發1條消息。"
L["Same message"] = "相同消息"
L["Allow only 1 message with same content sent by same player during set interval (seconds)"] = "在設定的秒數內，同一玩家在同一頻道裡只能發1條相同內容的消息。"

L["Choose operation: |cff00cccc"] = "選擇操作:"
L["Add to blocklist"] = "添加到Acamar無限遮罩名單"
L["Add to whitelist"] = "添加到Acamar白名單"
L["Query spam score"] = "查詢垃圾評分"
L["|cffff9900Cancel"] = "|cffff9900取消"

L[" added to blocklist."] = "已添加至無限遮罩名單。"
L[" added to whitelist."] = "已添加至白名單"

L["'s spam score is "] = "的垃圾評分為"
L[" doesn't classfied as spammer."] = "沒有垃圾評分。"

-- logs
L["Acamar control window opened."] = "Acamar控制視窗已打開。"
L["At current level, block spam score set to: "] = "當前過濾級別對應的垃圾得分為："
L["'s behavior return normal and removed from the learning process."] = "的行為恢復正常，停止學習該玩家。"
L[" was talkative in last hour and added to learning process."] = "最近話多起來，開始關注後續聊天資訊。"
L[" was talkative in last day and added to learning process."] = "最近一天話多起來，開始關注後續聊天資訊。"
L["Performing analysis on user behavior ..."] = "正在分析使用者聊天行為資料..."
L["Performing optimization on learning DB ..."] = "正在優化資料庫..."
L["Chat messages filtering started."] = "聊天過濾及遮罩名單啟用。"
L["Chat messages filtering stopped, but learning engine still running."] = "聊天過濾及遮罩名單停止，不過學習引擎繼續運行。"
L["Turn on learning engine..."] = "打開學習引擎..."
L["Turn off learning engine..."] = "關閉學習引擎..."

-- app info
L["ADDON_INFO"] = '|cffca99ffAcamar|r 自學習垃圾消息遮罩插件。'

L["AUTHOR_INFO"] = '|cffca99ffAcamar|r 學習用戶的聊天行為，從中辨識出正常玩家、垃圾發送者以及腳本。只需選擇過濾的級別，隨著學習的資訊越來越多，過濾就會變得越來越準確。\n\n' .. 
"可以使用|cffca99ff /acamar |r命令或者小地圖圖示打開小控制視窗來暫停和啟用過濾。" ..
'\n\nhttps://github.com/bayard/acamar\n|cffca99ffTriton|r@匕首嶺 2020'

-- EOF
