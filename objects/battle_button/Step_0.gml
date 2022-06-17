/*var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();

if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		if(global.language=0){
		image_index=1;
		}else if(global.language=1){
		image_index=3}
		//if(Battle_GetMenuChoiceButton()!=2||Item_GetNumber()>0){
		//image_xscale=_xscale+0.2
		//image_yscale=_yscale+0.2
			//Anim_Create(self,"image_xscale",0,0,_xscale,_xscale+0.5,30)
			//Anim_Create(self,"image_yscale",0,0,_yscale,_yscale+0.5,30)
			//Anim_Create(self,"x",0,0,x,_x-10,30)
			//Anim_Create(self,"y",0,0,y,_y-5,30)
			//battle_soul.x=x+18;
			//battle_soul.y=y+26;
		//x=_x-10
		//y=_y-5
		if(MENU==BATTLE_MENU.BUTTON){
			//battle_soul.x=x+18;
			//battle_soul.y=y+26;
		//if(Battle_GetMenuChoiceButton()!=2||Item_GetNumber()>0){
			//if(anim_check!=1){
			//Anim_Create(self,"image_xscale",0,0,_xscale,0.2,5)
			//Anim_Create(self,"image_yscale",0,0,_yscale,0.2,5)
			//Anim_Create(self,"x",0,0,x,-10,5)
			//Anim_Create(self,"y",0,0,y,-5,5)
			//Anim_Create(battle_soul,"x",0,0,x+15,-5,5)
			//Anim_Create(battle_soul,"y",0,0,y,20,5)
			//battle_soul.x=_x+10
			//battle_soul.y=_y+20
			//anim_check=1
			//}else if(anim_check=1){
			//battle_soul.x=_x+10
			//battle_soul.y=_y+20
			//}}else{
			battle_soul.x=_x+16.5;
			battle_soul.y=_y+21.5//}
		}
	}else{
		if(global.language=0){
		image_index=0;
		}else if(global.language=1){
		image_index=2}
		image_xscale=_xscale
		image_yscale=_yscale
		x=_x
		y=_y
	}
}else{
	if(global.language=0){
	image_index=0;
	}else if(global.language=1){
	image_index=2}
	image_xscale=_xscale
	image_yscale=_yscale
	x=_x
	y=_y
}*/
var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();
image_blend = make_color_hsv(0,0,sat);
if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		if(global.language=0){
		image_index=1;
		}else if(global.language=1){
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
			battle_soul.x=x-42
			battle_soul.y=y
			}
			if image_xscale < 1.1
				image_xscale += 0.025;
			if image_yscale < 1.1
				image_yscale += 0.025;}
			if sat < 255
				sat+=20;
		}
	}else{
	if(global.language=0){
	image_index=0;
	}else if(global.language=1){
	image_index=2}
		_timer=0;
		if image_xscale > 1
			image_xscale -= 0.025;
		if image_yscale > 1
			image_yscale -= 0.025;
		if sat > 125
			sat-=20;
	}
}else{
	if(global.language=0){
	image_index=0;
	}else if(global.language=1){
	image_index=2}
	_timer=0;
	if image_xscale > 1
		image_xscale -= 0.025;
	if image_yscale > 1
		image_yscale -= 0.025;
	if sat > 125
		sat-=20;
}
