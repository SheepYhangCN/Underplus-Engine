if(Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ACT||Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ITEM){
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}
if(Battle_GetMenuChoiceButton()=BATTLE_BUTTON.FIGHT||Battle_GetMenuChoiceButton()=BATTLE_BUTTON.MERCY){
	instance_create_depth(0,0,0,asset_get_index("battle_shift_sans_turn"+string(Battle_GetTurnNumber())))
}