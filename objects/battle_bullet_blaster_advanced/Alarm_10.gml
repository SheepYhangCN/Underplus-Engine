image_alpha=1;
Anim_Create(id,"image_angle",4,1,angle_start,angle_target-angle_start,move_time);
Anim_Create(id,"x",4,1,x,x_target-x,move_time);
Anim_Create(id,"y",4,1,y,y_target-y,move_time);
audio_stop_sound(snd_gb_charge);
audio_play_sound(snd_gb_charge,0,0);
alarm[1]=move_time+fire_pause_time+1;
Anim_Create(id,"_exit_speed",_exit_anim_tween,_exit_anim_ease,_exit_speed_initial,_exit_speed_end-_exit_speed_initial,_exit_speed_add_time,move_time+fire_pause_time+((index_fire_pause_change_time/3)*2));