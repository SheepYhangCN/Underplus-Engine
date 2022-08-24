switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=0){
			Dialog_Add("* Spongebob Squarepants{sleep 15}&* ATK 1 DEF 1{pause}{clear}* The weakest guy undersea.{sleep 15}&* Can only deal 1 damage.{sleep 15}&* But he's ready.");
			}else if(global.language=1){
			Dialog_Add("* Spongebob Squarepants{sleep 15}&* 攻击 1 防御 1{pause}{clear}* 海底最脆弱的敌人。{sleep 15}&* 只能承受1点伤害。{sleep 15}&* 但是他准备好了。");
			}
			break;
			case 1:
			if(global.mode=1){
			Player_Heal(9999999999)
			audio_play_sound(snd_item_heal,0,false)}
			break;
}}