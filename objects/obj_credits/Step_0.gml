//instance_create_depth(random(room_width+100),0,0,obj_season_effect)
a=instance_create_depth(random(room_width+10), 0, 0, obj_season_effect)
a.image_xscale=1
a.image_yscale=1
a.alarm[0]=-1
a.alarm[1]=1

if(global.language=LANGUAGE.ENGLISH){
window_set_caption(GAME_NAME+" - Credits")
}else if(global.language=LANGUAGE.SCHINESE){
window_set_caption(GAME_NAME+" - 制作名单")
}

if(Input_IsPressed(INPUT.CANCEL)){
room_goto(room_menu)}

if((Input_IsPressed(INPUT.LEFT)||Input_IsPressed(INPUT.UP))&&page>0){
audio_play_sound(snd_menu_switch,0,0)
instance_destroy(dialog1)
instance_destroy(dialog3)
page-=1
event_user(0)
}
if((Input_IsPressed(INPUT.RIGHT)||Input_IsPressed(INPUT.DOWN))&&page<3){
audio_play_sound(snd_menu_switch,0,0)
instance_destroy(dialog1)
instance_destroy(dialog3)
page+=1
event_user(0)
}