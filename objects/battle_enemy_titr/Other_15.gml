switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=0){
			Dialog_Add("{font 0}* Sans&{sleep 15}* ATK 1 DEF 1 HP 1{pause}{clear}* A skeleton that tearing in rain.{sleep 25}&* Judging murder with pain.");
			}else if(global.language=1){
			Dialog_Add("{font 0}* Sans&{sleep 15}{font 0}* {font 3}攻击 {font 0}1{font 3} 防御 {font 0}1{font 3} 血量 {font 0}1{pause}{clear}* {font 3}在雨中流泪的骷髅。{sleep 25}&{font 0}* {font 3}怀着苦痛审判着杀手。");
			}
			break;
			case 1:
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