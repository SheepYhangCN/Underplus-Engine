if(((Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ACT&&Battle_GetMenuChoiceAction()!=2)||Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ITEM)&&flirted=true){
	flirted=false
	head.image_index=0
}
switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* Anya Forger - ATK "+string(Battle_GetEnemyAtk())+" DEF 10{sleep 15}&* She seems to be able to see&  through your thoughts.");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* Anya Forger - 攻击 "+string(Battle_GetEnemyAtk())+" 防御 10{sleep 15}&* 她似乎能看穿你的想法。");}
			break;
			case 1:
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* You insulted Anya.{sleep 15}&* Strangely, she seems to know&  what you are going to say.{pause}{clear}{set_hpmax "+string(round(Player_GetHpMax()/2))+"}{set_hp "+string(round(Player_GetHp()/2))+"}{audio_play `snd_hurt` 0 0}* Your HP and Max HP has been&  halved!");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 你侮辱了Anya。{sleep 15}&* 奇怪的是, 她似乎已经知道&  你要说什么了。{pause}{clear}{set_hpmax "+string(round(Player_GetHpMax()/2))+"}{set_hp "+string(round(Player_GetHp()/2))+"}{audio_play `snd_hurt` 0 0}* 你的HP和HP上限被减半!");}
			break;
			case 2:
			if(flirted=true){
			audio_stop_all()
			audio_play_sound(snd_cut,0,0)
			fader.color=c_black
			fader.alpha=1
			Battle_SetMenuDialog("")
			Battle_SetDialog("")
			Battle_SetState(BATTLE_STATE.RESULT)
			alarm[3]=60}
			if(flirted=false){
			head.image_index=5
			flirted=true
			if(global.language=LANGUAGE.ENGLISH){
			Dialog_Add("* You flirted Anya.{sleep 15}&* It's a good chance!");}
			if(global.language=LANGUAGE.SCHINESE){
			Dialog_Add("* 你调情了Anya。{sleep 15}&* 是个好机会!");}}
			break;
}}