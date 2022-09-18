if(Battle_GetMenuChoiceButton() = 1||Battle_GetMenuChoiceButton() = 2||Battle_GetMenuChoiceButton() = 3){
	/*if(Battle_GetMenuChoiceButton()=BATTLE_BUTTON.MERCY&&Battle_GetTurnNumber()=17){
	instance_create_depth(0,0,0,battle_snowsans_spared)
	}else{*/
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}//}
if(Battle_GetMenuChoiceButton() = 0){
		head.image_index=0
		body.image_index=0
	instance_create_depth(0,0,0,asset_get_index("battle_starry_sans_turn"+string(Battle_GetTurnNumber())))
}