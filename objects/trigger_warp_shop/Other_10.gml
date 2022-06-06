///@desc Trigger
if(Shop_IsExists(target_shop)){
	fader.color=fade_in_color;
	Fader_Fade(-1,1,fade_in_time);
	if(instance_exists(char_player)){
		char_player._moveable_warp=false;
		char_player.y+=0.5
		char_player.dir=DIR.DOWN
	}
	if(bgm_fade){
		BGM_SetVolume(0,0,bgm_fade_time);
	}
	alarm[0]=fade_in_time+warp_wait+1;
}