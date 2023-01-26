var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();
if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		if(global.language=LANGUAGE.ENGLISH){
		image_index=1;
		}else if(global.language=LANGUAGE.SCHINESE){
		image_index=3}
		if(MENU==BATTLE_MENU.BUTTON){
			battle_soul.x=x-38.5
			battle_soul.y=y
		}
	}else{
	if(global.language=LANGUAGE.ENGLISH){
	image_index=0;
	}else if(global.language=LANGUAGE.SCHINESE){
	image_index=2}
	}
}else{
	if(global.language=LANGUAGE.ENGLISH){
	image_index=0;
	}else if(global.language=LANGUAGE.SCHINESE){
	image_index=2}
}
if(global.battle=BATTLE.WARMA){image_xscale=0.35;image_yscale=0.35}