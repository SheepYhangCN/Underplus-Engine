/// @description DRP-English
var time=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)
var minute=time div 60;
var second=time mod 60;
var time_text=(minute<10 ? "0" : "")+string(minute)+":"+(second<10 ? "0" : "")+string(second)
if(instance_exists(char_player)){
np_setpresence("In Overworld ("+Player_GetRoomName(room_get_name(room))+")",time_text,"template_icon_","None")}
if(room=room_battle){
np_setpresence("In Battle",time_text,"template_icon_","None")}
if(room=room_shop){
np_setpresence("In Shop",time_text,"template_icon_","None")}
if(room=room_gameover){
np_setpresence("Game Over","Stay determined...","template_icon_","None")}
if(room=room_menu){
np_setpresence("In Menu","Game Menu","template_icon_","None")}
if(room=room_settings){
np_setpresence("In Menu","Game Settings","template_icon_","None")}
if(room=room_save_options){
np_setpresence("In Menu","Save Options","template_icon_","None")}
if(room=room_credits){
np_setpresence("In Menu","Watching credits","template_icon_","None")}
if(room=room_warning){
np_setpresence("In Menu","Reading Epilepsy Warning","template_icon_","None")}
if(room=room_lobby){
np_setpresence("In Lobby","Main Lobby","template_icon_","None")}
if(room=room_games){
np_setpresence("In Lobby","Select Game","template_icon_","None")}
if(room=room_logo){
np_setpresence("In Title","Press Z or Enter","template_icon_","None")}