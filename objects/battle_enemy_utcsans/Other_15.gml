switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Sans - ATK 4 DEF 11{sleep 15}&* For so-called justice,{sleep 15}&  You betrayed them.");
			}else if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* Sans - 攻击 4 防御 11{sleep 15}&* 出于所谓正义的原因，{sleep 15}你背叛了他们。");
			}
			break;
			case 1:
			if(global.mode=GAME_MODE.EASY){
			Player_Heal(9999999999)
			audio_play_sound(snd_item_heal,0,false)}
			break;
}}