switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(Battle_GetTurnNumber()=16){
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Warma{sleep 15}&* A angel which facing world&  with honest and kindness.");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 沃玛{sleep 15}&* 以真心和善良面对着世界的天使");}
			}else if(Battle_GetTurnNumber()>=13){
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Warma - ATK 20 DEF 20{sleep 15}&* Angel with tears,&  hoping redeem demon.");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 沃玛 - 攻击 20 防御 20{sleep 15}&* 落着泪的天使, 渴望救赎恶魔。");}
			}else{
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Warma - ATK 20 DEF 20{pause}{clear}* With the warm of whole world, {sleep 15}&  Vow to let everyone come back&  safely.");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 沃玛 - 攻击 20 防御 20{pause}{clear}* 带着整个世界的温暖, {sleep 15}&  誓要让所有人平安的回来。");}
			}
			break;
			case 1:
			if(Battle_GetTurnNumber()>=13){
			Dialog_Add("* ...")
			}else{
			var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
			Battle_SetEnemyActionNumber(_enemy_slot,1);
			Battle_SetEnemyActionName(_enemy_slot,1,"")
			Battle_SetEnemyActionInfo(_enemy_slot,1,"")
			Battle_SetEnemyActionName(_enemy_slot,2,"")
			Battle_SetEnemyActionInfo(_enemy_slot,2,"")
			if(global.language=LANGUAGE.ENGLISH){
			inst.text="{skippable false}{sleep 30}Laugh again?{audio_play `snd_hurt`}{black_cut 10}{alarm `battle_enemy_warma` 3 10}"
			Dialog_Add("* You laughed at Warma is flat-chested.{sleep 15}&* She didn't respond.")}
			if(global.language=LANGUAGE.SCHINESE){
			inst.text="{skippable false}{sleep 30}你再骂?{audio_play `snd_hurt`}{black_cut 10}{alarm `battle_enemy_warma` 3 10}"
			Dialog_Add("* 你嘲笑沃玛是平胸。{sleep 15}&* 她没鸟你。")}}
			break
			case 2:
			Player_Heal(999999999)
			break
}}