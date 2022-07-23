if(Battle_GetTurnNumber()<11){
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
		body.image_index=1
		head.image_index=2
		var random_flash=choose(0,1)
		if(random_flash=0){
		Anim_Create(self,"x",0,0,320,80,15)
		Anim_Create(head,"x",0,0,head.x,80,15)
		Anim_Create(body,"x",0,0,body.x,80,15)
		Anim_Create(legs,"x",0,0,legs.x,80,15)
		Anim_Create(self,"x",0,0,400,-80,15,40)
		Anim_Create(head,"x",0,0,head.x+80,-80,15,40)
		Anim_Create(body,"x",0,0,body.x+80,-80,15,40)
		Anim_Create(legs,"x",0,0,legs.x+80,-80,15,40)
		}
		if(random_flash=1){
		Anim_Create(self,"x",0,0,320,-80,15)
		Anim_Create(head,"x",0,0,head.x,-80,15)
		Anim_Create(body,"x",0,0,body.x,-80,15)
		Anim_Create(legs,"x",0,0,legs.x,-80,15)
		Anim_Create(self,"x",0,0,240,80,15,40)
		Anim_Create(head,"x",0,0,head.x-80,80,15,40)
		Anim_Create(body,"x",0,0,body.x-80,80,15,40)
		Anim_Create(legs,"x",0,0,legs.x-80,80,15,40)
		}
}
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
	var attack_damage = instance_create_depth(320,y-48,0,battle_damage);
		attack_damage.bar_hp_max = _hpmax;
		attack_damage.bar_hp_original = _hp;
		Battle_SetMenuFightDamage(-2)
		attack_damage.damage = -2
		attack_damage.bar_hp_target = _hp-Battle_GetMenuFightDamage();
}}