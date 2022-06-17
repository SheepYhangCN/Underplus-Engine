/// @description sChinese

//date
//new year
if(current_month=1&&current_day=1){
Dialog_Add("{font 0}* "+string(current_year)+"{font 3}新年快乐！&{sleep 20}{font 0}*{font 3} 祝你新的一年能实现自己的愿望！")}
//feb,29th
if(current_month=2&&current_day=29){
Dialog_Add("{font 0}*{font 3} 我超&{sleep 20}{font 0}*{font 3} 事4年一度的闰年！")}
//april fool day
if(current_month=4&&current_day=1){
Dialog_Add("* Never Gonna Give You Up~{sleep 20}{clear}* Never Gonna Let You Down~{sleep 20}{clear}* Never Gonna Run Around And&  Desert You~{sleep 20}{clear}* Never Gonna Make You Cry~{sleep 20}{clear}* Never Gonna Say Good Bye~{sleep 20}{clear}* Never Gonna Tell A Lie And&  Hurt You~{sleep 20}{clear}* {font 3}愚人节快乐{font 0}:D")}
//school open
if(current_month=9&&current_day=1){
Dialog_Add("{font 0}*{font 3} 开学力（悲）{sleep 20}{font 0}*{font 3} ？你怎么还在这")}
//double ninth
if(current_month=9&&current_day=9){
Dialog_Add("{font 0}*{font 3} 九月九日忆山东兄弟")}
//national day
if(current_month=10&&current_day=1){
Dialog_Add("{font 0}*{font 3} 祝中华人民共和国继续繁荣昌盛！")}
//christmas eve
if(current_month=12&&current_day=24){
Dialog_Add("{font 0}*{font 3} 平安夜快乐！")}
//christmas
if(current_month=12&&current_day=25){
Dialog_Add("{font 0}*{font 3} 圣诞快乐！&{sleep 20}{font 0}* Merry Christmas!")}

//festival
if(current_month>=3&&current_month<=5){
Dialog_Add("{font 0}*{font 3} 春天到了{sleep 15}&{font 0}*{font 3} 是万物复苏的季节")}
if(current_month>=6&&current_month<=8){
Dialog_Add("{font 0}*{font 3} 沃日 {sleep 15}夏天到了 {sleep 15}热死了&{font 0}* {font 3}我要吃114514个雪糕")}
if(current_month>=9&&current_month<=11){
Dialog_Add("{font 0}*{font 3} 秋天了啊...{sleep 15}&{font 0}*{font 3} 记得穿秋裤")}
if(current_month=12||current_month<=2){
Dialog_Add("{font 0}*{font 3} 冬天了{sleep 15}&{font 0}*{font 3} 雪糕真好吃")}

//time
if(current_hour=0){
Dialog_Add("{font 0}*{font 3} 大哥啊 都半夜12点了 还不睡吗（恼）{sleep 20}&{font 0}* {font 3}（虽然我通常也是凌晨睡的）")}
if(current_hour>0&&current_hour<4){
Dialog_Add("{font 0}*{font 3} 熬夜打游戏{sleep 20}&{font 0}* {font 3}祝你早日猝死（）")}
if(current_hour=4||current_hour=5){
Dialog_Add("{font 0}*{font 3} 起得这么早（哈欠）{sleep 20}&{font 0}* {font 3}还是说你根本就没睡（）")}
if(current_hour=6){
Dialog_Add("{font 0}*{font 3} 起得真早啊（哈欠）")}
if(current_hour=7||current_hour=8){
Dialog_Add("{font 0}*{font 3} 早上好{font 0}~{font 3}{sleep 20}&{font 0}* {font 3}祝你有美好的一天！")}
if(current_hour<12&&current_hour>8&&!(current_hour=11&&current_minute=45)){
Dialog_Add("{font 0}*{font 3} 上午好{font 0}~{font 3}{sleep 20}&{font 0}* {font 3}今天精神怎么样{sleep 20}&{font 0}* {font 3}反正我是已经元气不满了（）")}
if(current_hour=11&&current_minute=45){
Dialog_Add("{font 0}*{font 3} 不管你有没有注意到{sleep 20} 但是{sleep 20}&{font 0}*{font 3} 好臭的时间（恼）")}
if(current_hour=12){
Dialog_Add("{font 0}*{font 3} 大中午玩游戏的屑")}
if(current_hour>12&&current_hour<18){
Dialog_Add("{font 0}*{font 3} 下午好{font 0}~{font 3}{sleep 20}&{font 0}*{font 3} 睡午觉了吗{sleep 20}&{font 0}*{font 3} 反正我是没睡（）")}
if(current_hour>=18&&current_hour<=21){
Dialog_Add("{font 0}*{font 3} 晚上好{font 0}~{font 3}{sleep 20}&{font 0}*{font 3} 今天过的怎么样啊")}
if(current_hour=22||current_hour=23){
Dialog_Add("{font 0}*{font 3} 很晚了啊{sleep 20}&{font 0}*{font 3} 该睡觉了")}