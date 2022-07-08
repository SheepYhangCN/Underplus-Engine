if(global.choice_button = 1||global.choice_button = 2||(global.choice_button = 3&&global.turn_number!=8)){
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}
if(global.choice_button = 0){
	instance_create_depth(0,0,0,asset_get_index("battle_isf_turn"+string(Battle_GetTurnNumber())))
}