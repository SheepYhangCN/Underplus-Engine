switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(Battle_GetTurnNumber()=13){
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Warma - ATK 1 DEF 1{sleep 15}&* Truthly giving you the second&  chance.");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 沃玛 - 攻击 1 防御 1{sleep 15}&* 真心给你第二次机会。");}
			}else{
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Warma - ATK 1 DEF 1{pause}{clear}* She've no idea what to do next.{sleep 15}&* She just think that it's cool&  to stand like this.");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 沃玛 - 攻击 1 防御 1{pause}{clear}* 她根本不知道她接下来要干什么。{sleep 15}&* 她只是觉得这样站着很酷。");}
			}
			break;
			case 1:
			if(Battle_GetTurnNumber()=13){
			Dialog_Add("* ...")
			}else{
			var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
			Battle_SetEnemyActionNumber(_enemy_slot,1);
			Battle_SetEnemyActionName(_enemy_slot,1,"")
			Battle_SetEnemyActionInfo(_enemy_slot,1,"")
			Battle_SetEnemyActionName(_enemy_slot,2,"")
			Battle_SetEnemyActionInfo(_enemy_slot,2,"")
			if(global.language=LANGUAGE.ENGLISH){
			inst.text="{skippable false}{sleep 30}Laugh again?{audio_play `snd_hurt`}{black_cut 10}{kr true}{alarm `battle_enemy_warma` 3 10}"
			Dialog_Add("* You laughed at Warma is flat-chested.{sleep 15}&* She didn't respond.")}
			if(global.language=LANGUAGE.SCHINESE){
			inst.text="{skippable false}{sleep 30}你再骂?{audio_play `snd_hurt`}{black_cut 10}{kr true}{alarm `battle_enemy_warma` 3 10}"
			Dialog_Add("* 你嘲笑沃玛是平胸。{sleep 15}&* 她没鸟你。")}}
			break
			case 2:
			Player_Heal(999999999)
			break
}}