audio_stop_sound(bgm_snowsans)
titr_head.image_index=5
instance_create_depth(240,battle_enemy_snowsans_p2.y+10,0,battle_menu_fight_anim_knife)
titr_head.sweat=2
with(battle_enemy_snowsans_p2.effect){
instance_destroy()}
instance_destroy(battle_enemy_snowsans_p2.a)
battle_enemy_snowsans_p2.enable_effect=false
alarm[0]=60