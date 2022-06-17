if(timer<860&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 820:
		fader.color=c_black
		fader.alpha=1
		audio_play_sound(snd_cut,0,0)
		audio_pause_sound(bgm_snowsans)
		break
	case 859:
		fader.alpha=0
		audio_play_sound(snd_cut,0,0)
		audio_resume_sound(bgm_snowsans)
		Battle_EndTurn()
		break
}
