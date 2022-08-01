//instance_create_depth(random(room_width+10), 0, depth, season_effect)
if(global.language=0){
window_set_caption(GAME_NAME+" - Warning")
}else if(global.language=1){
window_set_caption(GAME_NAME+" - 警告")
}
if(Input_IsPressed(INPUT.CONFIRM)&&temp=0){
temp=1
alarm[0]=1}