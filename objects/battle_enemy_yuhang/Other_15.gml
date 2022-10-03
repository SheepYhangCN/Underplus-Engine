switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(Battle_GetTurnNumber()!=8){
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* SheepYhangCN - ATK 1 DEF 1{sleep 15}&* Never relax your vigilance.");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 憨憨羊の宇航鸽鸽 - 攻击 1 防御 1{sleep 15}&* 永远不要放松警惕。");}}
			break;
}}