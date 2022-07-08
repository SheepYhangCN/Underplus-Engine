switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=0){
			Dialog_Add("* Ink!Sans - ATK 10 DEF 10{sleep 15}&* Dreaming to protect AUs and&  imagination.");}
			if(global.language=1){
			Dialog_Add("* Ink!Sans - 攻击 10 防御 10{sleep 15}&* 妄想着守护AU和想象力。");}
			break;
			case 1:
			if(global.language=0){
			Dialog_Add("* You put on a sexy pose.{sleep 20}&* Ink {pause}had no response.");}
			if(global.language=1){
			Dialog_Add("* 你摆出了一个性感的姿势。{sleep 20}&* Ink {pause}完全没有反应。");}
			break;
}}