/// @description DRP-sChinese
var time=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)
var minute=time div 60;
var second=time mod 60;
var time_text=(minute<10 ? "0" : "")+string(minute)+":"+(second<10 ? "0" : "")+string(second)

if(instance_exists(char_player)){
np_setpresence("主世界内（"+Player_GetRoomName(room_get_name(room))+"）",time_text,"template_icon_","None")}
if(room=room_battle){
np_setpresence("战斗中",time_text,"template_icon_","None")}
if(room=room_shop){
np_setpresence("商店内",time_text,"template_icon_","None")}
if(room=room_gameover){
np_setpresence("Game Over","保持你的决心...","template_icon_","None")}
if(room=room_menu){
np_setpresence("菜单内","游戏菜单","template_icon_","None")}
if(room=room_settings){
np_setpresence("菜单内","游戏设置","template_icon_","None")}
if(room=room_save_options){
np_setpresence("菜单内","存档选项","template_icon_","None")}
if(room=room_credits){
np_setpresence("菜单内","查看制作名单","template_icon_","None")}
if(room=room_warning){
np_setpresence("菜单内","阅读光敏性癫痫警告","template_icon_","None")}
if(room=room_lobby){
np_setpresence("主世界内","主大厅","template_icon_","None")}
if(room=room_games){
np_setpresence("大厅内","选择游戏","template_icon_","None")}
if(room=room_logo){
np_setpresence("标题画面","按下 Z 或 Enter","template_icon_","None")}
if(room=room_utse){
np_setpresence("主世界内 - UT:SE Sans战 | 开头",time_text,"template_icon_","None")}