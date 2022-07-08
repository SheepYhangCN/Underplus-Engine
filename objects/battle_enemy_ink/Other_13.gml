//if(Battle_GetTurnNumber()<8){
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
		var random_flash=choose(0,1)
		if(random_flash=0){
		Anim_Create(self,"x",0,0,320,80,10)
		Anim_Create(self,"x",0,0,400,-80,10,40)
		}
		if(random_flash=1){
		Anim_Create(self,"x",0,0,320,-80,10)
		Anim_Create(self,"x",0,0,240,80,10,40)
		}
}
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
	var attack_damage = instance_create_depth(320,y-48,0,battle_damage);
		attack_damage.bar_hp_max = _hpmax;
		attack_damage.bar_hp_original = _hp;
		Battle_SetMenuFightDamage(-2)
		attack_damage.damage = -2
		attack_damage.bar_hp_target = _hp-Battle_GetMenuFightDamage();
}