if(keyboard_check_pressed(ord("X"))&&temp=0){
temp=1
Fader_Fade(0,1,60)
alarm[0]=70}
if(keyboard_check_pressed(ord("Z"))&&temp=0){
temp=1
Fader_Fade(0,1,60)
alarm[1]=70}
if(global.language=0){
window_set_caption(GAME_NAME+" - Anya Fight | The End")}
if(global.language=1){
window_set_caption(GAME_NAME+" - Anya战 | 结束")}