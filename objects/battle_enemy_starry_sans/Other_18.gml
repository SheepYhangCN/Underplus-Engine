if(global.choice_button = 1||global.choice_button = 2||global.choice_button = 3){
	/*if(Battle_GetMenuChoiceButton()=3&&Battle_GetTurnNumber()=17){
	instance_create_depth(0,0,0,battle_snowsans_spared)
	}else{*/
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}//}
if(global.choice_button = 0){
		head.image_index=0
		body.image_index=0
	instance_create_depth(0,0,0,asset_get_index("battle_starry_sans_turn"+string(Battle_GetTurnNumber())))
}