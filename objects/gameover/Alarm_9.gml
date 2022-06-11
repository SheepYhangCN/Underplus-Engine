temp=0
audio_play_sound(snd_break_1,0,0)
repeat(6){
	instance_create_depth(soulx,souly,depth-1,gameover_shard);
}