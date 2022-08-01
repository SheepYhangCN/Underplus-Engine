if(global.choice_button=1||global.choice_button = 2){
	Battle_SetNextState(BATTLE_MENU.BUTTON)
	Battle_GotoNextState()
}
if(global.choice_button = 0||global.choice_button=3){
if(Battle_GetTurnNumber()<11){
	if(Battle_GetTurnNumber()=8){Battle_SetTurnNumber(Battle_GetTurnNumber()+1)}
	body.image_index=0
	head.image_index=0
	instance_create_depth(0,0,0,asset_get_index("battle_anya_turn"+string(Battle_GetTurnNumber())))
}else{
Battle_SetMenuDialog("")
fader.color=c_black
fader.alpha=1
audio_stop_all()
audio_play_sound(snd_cut,0,0)
alarm[0]=30}}