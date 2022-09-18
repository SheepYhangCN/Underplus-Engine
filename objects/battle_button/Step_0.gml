var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();
image_blend = make_color_hsv(0,0,sat);
if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		if(global.language=LANGUAGE.ENGLISH){
		image_index=1;
		}else if(global.language=LANGUAGE.SCHINESE){
		image_index=3}
		if(MENU==BATTLE_MENU.BUTTON){
			//battle_soul.x=x-47;
			//battle_soul.y=y;
			if(_timer=0&&object_index=battle_button_item&&Item_GetNumber()=0){
			//var tempx=battle_soul.x
			//var tempy=battle_soul.y
			//Anim_Create(battle_soul,"x",0,0,tempx,x-38.5-tempx,2)
			//Anim_Create(battle_soul,"y",0,0,tempy,y-tempy,2)
			battle_soul.x=x-38.5
			battle_soul.y=y
			}
			if(object_index=battle_button_item&&Item_GetNumber()=0){}else{
			if(_timer=0){
			//var tempx=battle_soul.x
			//var tempy=battle_soul.y
			//Anim_Create(battle_soul,"x",0,0,tempx,x-42-tempx,2)
			//Anim_Create(battle_soul,"y",0,0,tempy,y-tempy,2)
			battle_soul.x=x-38.5//42
			battle_soul.y=y
			}
			/*if image_xscale < 1.1
				image_xscale += 0.025;
			if image_yscale < 1.1
				image_yscale += 0.025;*/}
			if sat < 255
				sat+=20;
		}
	}else{
	if(global.language=LANGUAGE.ENGLISH){
	image_index=0;
	}else if(global.language=LANGUAGE.SCHINESE){
	image_index=2}
		_timer=0;
		/*if image_xscale > 1
			image_xscale -= 0.025;
		if image_yscale > 1
			image_yscale -= 0.025;*/
		if sat > 125
			sat-=20;
	}
}else{
	if(global.language=LANGUAGE.ENGLISH){
	image_index=0;
	}else if(global.language=LANGUAGE.SCHINESE){
	image_index=2}
	_timer=0;
	/*if image_xscale > 1
		image_xscale -= 0.025;
	if image_yscale > 1
		image_yscale -= 0.025;*/
	if sat > 125
		sat-=20;
}
