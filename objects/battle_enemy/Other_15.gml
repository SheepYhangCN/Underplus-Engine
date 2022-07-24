///@desc Menu End
switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=0){
			Dialog_Add("* Test Enemy{sleep 15}&* ATK 0 DEF 0{sleep 15}&* Check text.")
			}else if(global.language=1){
			Dialog_Add("* {font 0}测试敌人{sleep 15}&{font 0}* {font 0}攻击{font 0} 0 {font 0}防御{font 0} 0{sleep 15}&* {font 0}检查文本。")
			}
			break;
			case 1:
			Player_SetHp(Player_GetHp()+Player_GetKR())
			Player_SetKR(0)
			if(global.language=0){
			Dialog_Add("* You say your prayers silently.{sleep 20}&* Your Karma has been clear!")}
			if(global.language=1){
			Dialog_Add("* {font 0}你默念出祷告词。{sleep 20}&* 你的业报被清除！")}
			Dialog_Start()
			break;
			case 2:
			Player_Heal(9999999999)
			audio_play_sound(snd_item_heal,0,false)
			break
}}