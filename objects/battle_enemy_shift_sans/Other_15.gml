switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(Battle_GetTurnNumber()!=8){
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Sans - ATK 1 DEF 1");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* Sans - 攻击 1 防御 1");}}
			break;
}}