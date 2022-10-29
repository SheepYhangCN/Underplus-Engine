if(Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ACT&&Battle_GetMenuChoiceAction()=0){
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}else{
	instance_create_depth(0,0,0,asset_get_index("battle_shift_sans_turn"+string(Battle_GetTurnNumber())))
}