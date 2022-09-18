switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Sans - ATK 2 DEF 80{sleep 15}&* The co-captain of Royal Guards.{sleep 15}&* Used to be friendly to humans.{pause}{clear}{color `red`}{voice 7}* Of course,&  it's before you did everything.");
			}else if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* Sans - 攻击 2 防御 80{sleep 15}&* 皇家护卫队的副队长。{sleep 15}&* 曾对人类保持友善。{pause}{clear}{color `red`}{voice 7}* 当然，是在你做出一切之前。");
			}
			break;
			case 1:
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* You taunted Sans, {sleep 15}said&  everything he did are&  meaningless.{pause}{clear}* He will turn to dust at last.{pause}{clear}* Sans ignored.");
			}else if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 你嘲讽了Sans，{sleep 15}&  说他所做的所有事情都没有用。{sleep 15}&  他终将化为尘埃。{pause}{clear}* Sans没有理会。");
			}
			break;
}}