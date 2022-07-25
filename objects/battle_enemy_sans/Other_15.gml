switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=0){
			Dialog_Add("* Sans - ATK 1 DEF 1{sleep 15}&* The easiest enemy.{sleep 15}&* Can only deal 1 damage.");
			}else if(global.language=1){
			Dialog_Add("* Sans - 攻击 1 防御 1{sleep 15}&* 最简单的敌人。{sleep 15}&* 只能造成1点伤害。");
			}
			break;
			case 1:
			if(global.mode=2){
			Player_SetHp(Player_GetHp()+Player_GetKR())
			Player_SetKR(0)
			if(global.language=0){
			Dialog_Add("* You say your prayers silently.{sleep 20}&* Your Karma has been clear!")}
			if(global.language=1){
			Dialog_Add("* {font 0}你默念出祷告词。{sleep 20}&* 你的业报被清除！")}
			Dialog_Start()
			break
			}else if(global.mode=1){
			Player_Heal(9999999999)
			audio_play_sound(snd_item_heal,0,false)}
			break;
}}