visible=false;

repeat(150){
	instance_create_depth(x,y,0,gameover_shard);
}

audio_play_sound(snd_break_1,0,false);
audio_play_sound(snd_damage_long,0,false);

alarm[2]=80;