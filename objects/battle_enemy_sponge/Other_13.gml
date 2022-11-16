if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
		_face=2
		var random_flash=choose(0,1)
		if(random_flash=0){
		Anim_Create(id,"x",0,0,320,100,15)
		Anim_Create(id,"headx",0,0,headx,100,15)
		Anim_Create(id,"bodyx",0,0,bodyx,100,15)
		Anim_Create(id,"legx",0,0,legx,100,15)
		Anim_Create(id,"x",0,0,420,-100,15,40)
		Anim_Create(id,"headx",0,0,headx+100,-100,15,40)
		Anim_Create(id,"bodyx",0,0,bodyx+100,-100,15,40)
		Anim_Create(id,"legx",0,0,legx+100,-100,15,40)
		}
		if(random_flash=1){
		Anim_Create(id,"x",0,0,320,-100,15)
		Anim_Create(id,"headx",0,0,headx,-100,15)
		Anim_Create(id,"bodyx",0,0,bodyx,-100,15)
		Anim_Create(id,"legx",0,0,legx,-100,15)
		Anim_Create(id,"x",0,0,220,100,15,40)
		Anim_Create(id,"headx",0,0,headx-100,100,15,40)
		Anim_Create(id,"bodyx",0,0,bodyx-100,100,15,40)
		Anim_Create(id,"legx",0,0,legx-100,100,15,40)
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