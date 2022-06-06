switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=0){
			Dialog_Add("* Ink!Sans&{sleep 15}* ATK 1 DEF 1&{sleep 15}* Colorless.");
			}else if(global.language=1){
			Dialog_Add("* Ink!Sans&{sleep 15}* 攻击 1 防御 1&{sleep 15}* 毫无色彩。");
			}
			break;
			case 1:
			if(global.language=0){
			Dialog_Add("{color `red`}* You really think this will work?")}
			if(global.language=1){
			Dialog_Add("{color `red`}* 你真的觉得这会有用？")}
			break;
			case 2:
			if(global.mode=2){
			Player_SetHp(Player_GetHp()+Player_GetKR())
			Player_SetKR(0)
			if(global.language=0){
			Dialog_Add("* You say your prayers silently.{sleep 20}&* Your Karma has been clear!")}
			if(global.language=1){
			Dialog_Add("* {font 3}你默念出祷告词。{sleep 20}&* 你的业报被清除！")}
			Dialog_Start()
			break
			}else if(global.mode=1){
			Player_Heal(9999999999)
			audio_play_sound(snd_item_heal,0,false)}
			break;
}}