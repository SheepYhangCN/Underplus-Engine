switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(Battle_GetTurnNumber()!=8){
			if(global.language=0){
			Dialog_Add("* Enemy - ATK 1 DEF 1{sleep 15}&* Want to teach you a lesson.");}
			if(global.language=1){
			Dialog_Add("* 敌人 - 攻击 1 防御 1{sleep 15}&* 想给你上一课。");}}
			break;
}}