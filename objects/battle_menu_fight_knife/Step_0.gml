if(_input_acceptable){
	if((_dir==DIR.LEFT&&_aim_x_1<=battle_board.x-battle_board.left-sprite_get_width(spr_battle_menu_fight_aim)/2+16) || (_dir==DIR.RIGHT&&_aim_x>=battle_board.x+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)/2-16)){
			Battle_SetNextState(BATTLE_MENU.BUTTON)
			Battle_SetMenuFightDamage(-1);
			//Battle_EndMenuFightAim();
			_input_acceptable=false;
			alarm[4]=1
	}
	
	if(Input_IsPressed(INPUT.CONFIRM)&&_input_acceptable){
		alarm[3]=-1
		if(_dir=DIR.RIGHT){
		Anim_Destroy(id,"_aim_x");
		instance_create_depth(_aim_x,y,0,battle_menu_fight_aim_effect)
		}else{
		Anim_Destroy(id,"_aim_x_1");
		instance_create_depth(_aim_x_1,y,0,battle_menu_fight_aim_effect)
		}
		battle_soul.image_angle=0
		if(_dir=DIR.RIGHT){
		battle_soul.x=_aim_x}
		if(_dir=DIR.LEFT){
		battle_soul.x=_aim_x_1}
		battle_soul.y=320
		alarm[0]=1;
		
		var ATK=Player_GetAtkTotal();
		var DEF=Battle_GetEnemyDEF(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy()));
		var DISTANCE=point_distance(x,y,(_dir=DIR.RIGHT ? _aim_x : _aim_x_1),y);
		var WIDTH=sprite_get_width(spr_battle_menu_fight_bg)/2;
		var damage=ATK-DEF+random(2);
		if(DISTANCE<=12){
			damage*=2.2;
		}else{
			damage*=(1-DISTANCE/WIDTH)*2;
		}
		damage=round(damage);
		if(damage<=0){
			damage=0;
		}
		
		Battle_SetMenuFightDamage(damage);
		Battle_SetMenuFightAnimTime(25);
		//Battle_SetMenuFightDamageTime(70);
		Battle_SetMenuFightDamageTime(25);
		Battle_EndMenuFightAim();
		_input_acceptable=false;
	}
}
if(Battle_GetMenu()=BATTLE_MENU.FIGHT_AIM){
battle_soul.image_angle=0
if(_dir=DIR.RIGHT){
battle_soul.x=_aim_x}
if(_dir=DIR.LEFT){
battle_soul.x=_aim_x_1}
battle_soul.y=320}