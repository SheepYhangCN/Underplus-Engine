///@arg action_choice
///@arg call_event*
function Battle_SetMenuChoiceAction() {
	var ACTION=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}
	
	//if(ACTION<Battle_GetEnemyActionNumber(0)){
		battle._menu_choice_action=ACTION;
		while(ACTION>=battle._menu_choice_action_first+3){
			battle._menu_choice_action_first+=1;
		}
		while(ACTION<battle._menu_choice_action_first){
			battle._menu_choice_action_first-=1;
		}
		var text="";
		text+="{color `gray`}"+Battle_GetEnemyActionName(Battle_GetMenuChoiceEnemyNum(),Battle_GetMenuChoiceAction()-2)+"&";
		text+="{color `gray`}"+Battle_GetEnemyActionName(Battle_GetMenuChoiceEnemyNum(),Battle_GetMenuChoiceAction()-1)+"&";
		text+="{color `white`}"+Battle_GetEnemyActionName(Battle_GetMenuChoiceEnemyNum(),Battle_GetMenuChoiceAction())+"&";
		text+="{color `gray`}"+Battle_GetEnemyActionName(Battle_GetMenuChoiceEnemyNum(),Battle_GetMenuChoiceAction()+1)+"&";
		text+="{color `gray`}"+Battle_GetEnemyActionName(Battle_GetMenuChoiceEnemyNum(),Battle_GetMenuChoiceAction()+2)+"&";
		Battle_SetDialog5Line(text,true);
	
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	/*}else{
		return false;
	}*/


}
