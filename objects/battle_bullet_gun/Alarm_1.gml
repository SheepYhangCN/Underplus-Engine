audio_play_sound(prepare_snd,0,0)
Anim_Create(id,"image_alpha",0,0,0,1,spawn_time)
Anim_Create(id,"aim_offset",ANIM_TWEEN.BACK,ANIM_EASE.IN,aim_offset,-aim_offset,wait_time,spawn_time)
alarm[2]=spawn_time+wait_time