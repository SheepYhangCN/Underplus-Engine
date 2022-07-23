switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=0){
			Dialog_Add("* Anya Forger - ATK "+string(Battle_GetEnemyAtk())+" DEF 10{sleep 15}&* She seems to be able to see&  through your thoughts.");}
			if(global.language=1){
			Dialog_Add("* Anya Forger - 攻击 "+string(Battle_GetEnemyAtk())+" 防御 10{sleep 15}&* 她似乎能看穿你的想法。");}
			break;
			case 1:
			if(global.language=0){
			Dialog_Add("* You insulted Anya.{sleep 15}&* Strangely, she seems to know&  what you are going to say.{pause}{clear}{set_hpmax "+string(int64(Player_GetHpMax()/2))+"}{set_hp "+string(int64(Player_GetHp()/2))+"}{audio_play `snd_hurt` 0 0}* Your HP and Max HP has been&  halved!");}
			if(global.language=1){
			Dialog_Add("* 你侮辱了Anya。{sleep 15}&* 奇怪的是，她似乎已经知道&  你要说什么了。{pause}{clear}{set_hpmax "+string(int64(Player_GetHpMax()/2))+"}{set_hp "+string(int64(Player_GetHp()/2))+"}{audio_play `snd_hurt` 0 0}* 你的HP和HP上限被减半!");}
			break;
}}