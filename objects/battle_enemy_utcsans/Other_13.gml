if(Battle_GetTurnNumber()>=11){
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
		audio_stop_sound(bgm_utcsans)
		alarm[2]=-1
		_face=5
	}
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
		_body=8
		a = instance_create_depth(0,0,0,shaker);
		a.target = id;
		a.var_name = "x";
		a.shake_distance = 20;
		a.shake_speed = 3;
		a.shake_random = 0;
		a.shake_decrease = 10;
		audio_play_sound(snd_damage,0,0);
	var attack_damage = instance_create_depth(320,y-100,0,battle_damage);
		attack_damage.bar_hp_max = 999999999
		attack_damage.bar_hp_original = 999999999
			Battle_SetMenuFightDamage(0)
			attack_damage.damage = 999999999
		attack_damage.bar_hp_target = 0
}
}else{
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
		_face=2
		var random_flash=choose(0,1)
		if(random_flash=0){
		Anim_Create(id,"x",0,0,320,80,15)
		Anim_Create(id,"headx",0,0,headx,80,15)
		Anim_Create(id,"bodyx",0,0,bodyx,80,15)
		Anim_Create(id,"legx",0,0,legx,80,15)
		Anim_Create(id,"x",0,0,400,-80,15,40)
		Anim_Create(id,"headx",0,0,headx+80,-80,15,40)
		Anim_Create(id,"bodyx",0,0,bodyx+80,-80,15,40)
		Anim_Create(id,"legx",0,0,legx+80,-80,15,40)
		}
		if(random_flash=1){
		Anim_Create(id,"x",0,0,320,-80,15)
		Anim_Create(id,"headx",0,0,headx,-80,15)
		Anim_Create(id,"bodyx",0,0,bodyx,-80,15)
		Anim_Create(id,"legx",0,0,legx,-80,15)
		Anim_Create(id,"x",0,0,240,80,15,40)
		Anim_Create(id,"headx",0,0,headx-80,80,15,40)
		Anim_Create(id,"bodyx",0,0,bodyx-80,80,15,40)
		Anim_Create(id,"legx",0,0,legx-80,80,15,40)
		}
	}
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
	var attack_damage = instance_create_depth(320,y-50,0,battle_damage);
		attack_damage.bar_hp_max = _hpmax;
		attack_damage.bar_hp_original = _hp;
			Battle_SetMenuFightDamage(BATTLE_DAMAGE.MISS)
			attack_damage.damage = BATTLE_DAMAGE.MISS
		attack_damage.bar_hp_target = _hp-Battle_GetMenuFightDamage();
}
}
