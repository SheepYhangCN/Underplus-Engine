if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}

if(timer=1500){
	fader.color=c_black
	Fader_Fade(0,1,60)
}
if(timer=1580){
	battle_enemy_sans_core._face=0
	with(battle_dialog_enemy){instance_destroy()}
	fader.alpha=0
}