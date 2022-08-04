if(Battle_GetMenuChoiceButton()=1||Battle_GetMenuChoiceButton()=2||(Battle_GetMenuChoiceButton()=3&&Battle_GetTurnNumber()!=8)){
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}
if(Battle_GetMenuChoiceButton()=0){
	instance_create_depth(0,0,0,asset_get_index("battle_tutorial_turn"+string(Battle_GetTurnNumber())))
}