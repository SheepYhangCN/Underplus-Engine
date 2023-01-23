with(battle_button_fight){
if(instance_exists(collision_rectangle(x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2,battle_soul,true,true))){
if(battle_sans_core_turn0.touched=false){audio_play_sound(snd_menu_switch,0,0);battle_sans_core_turn0.touched=true}
image_index=(global.language ? 3 : 1)
image_blend=c_white
if((image_index=1||image_index=3)&&Input_IsPressed(INPUT.CONFIRM)&&battle_sans_core_turn0.pressed=false){
audio_play_sound(snd_menu_confirm,0,0)
battle_sans_core_turn0.pressed=true}
}else{
battle_sans_core_turn0.touched=false
image_index=(global.language ? 2 : 0)}
}