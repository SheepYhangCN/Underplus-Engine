/*if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
		Anim_Create(id,"x",0,0,320,100,15)
		Anim_Create(id,"bodyx",0,0,bodyx,100,15)
		Anim_Create(id,"x",0,0,420,-100,15,40)
		Anim_Create(id,"bodyx",0,0,bodyx+100,-100,15,40)
	}*/
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
		audio_play_sound(snd_damage,0,0);
	var attack_damage = instance_create_depth(320,y-30,0,battle_damage);
		attack_damage.bar_hp_max = _hpmax;
		attack_damage.bar_hp_original = _hp;
		Battle_SetMenuFightDamage(BATTLE_DAMAGE.BLOCK)
		attack_damage.damage = BATTLE_DAMAGE.BLOCK
		attack_damage.bar_hp_target = _hp-Battle_GetMenuFightDamage();
		var a = instance_create_depth(0,0,0,shaker);
		a.target = id;
		a.var_name = "x";
		a.shake_distance = 20;
		a.shake_speed = 3;
		a.shake_random = 0;
		a.shake_decrease = 10;
		var a = instance_create_depth(0,0,0,shaker);
		a.target = id;
		a.var_name = "bodyx";
		a.shake_distance = 20;
		a.shake_speed = 3;
		a.shake_random = 0;
		a.shake_decrease = 10;
}