if(Battle_GetMenu()=3){
		body.image_index=1
		head.image_index=2
		random_flash=choose(0,1)
		if(Battle_GetTurnNumber()<12){
		if(random_flash=0){
        Anim_Create(id, "headx", 2, 1, 318.4, 80, 18)
        Anim_Create(id, "bodyx", 2, 1, 318.4, 80, 18)
        Anim_Create(id, "legsx", 2, 1, 320, 80, 18)
        Anim_Create(head, "x", 2, 1, 318.4, 80, 18)
        Anim_Create(body, "x", 2, 1, 318.4, 80, 18)
        Anim_Create(legs, "x", 2, 1, 320, 80, 18)
        Anim_Create(id, "headx", 2, 0, 398.4, -80, 18, 30)
        Anim_Create(id, "bodyx", 2, 0, 398.4, -80, 18, 30)
        Anim_Create(id, "legsx", 2, 0, 400, -80, 18, 30)
        Anim_Create(head, "x", 2, 0, 398.4, -80, 18, 30)
        Anim_Create(body, "x", 2, 0, 398.4, -80, 18, 30)
        Anim_Create(legs, "x", 2, 0, 400, -80, 18, 30)
		}else if(random_flash=1){
        Anim_Create(id, "headx", 2, 1, 318.4, -80, 18)
        Anim_Create(id, "bodyx", 2, 1, 318.4, -80, 18)
        Anim_Create(id, "legsx", 2, 1, 320, -80, 18)
        Anim_Create(head, "x", 2, 1, 318.4, -80, 18)
        Anim_Create(body, "x", 2, 1, 318.4, -80, 18)
        Anim_Create(legs, "x", 2, 1, 320, -80, 18)
        Anim_Create(id, "headx", 2, 0, 238.4, 80, 18, 30)
        Anim_Create(id, "bodyx", 2, 0, 238.4, 80, 18, 30)
        Anim_Create(id, "legsx", 2, 0, 240, 80, 18, 30)
        Anim_Create(head, "x", 2, 0, 238.4, 80, 18, 30)
        Anim_Create(body, "x", 2, 0, 238.4, 80, 18, 30)
        Anim_Create(legs, "x", 2, 0, 240, 80, 18, 30)
		}}else{
        Anim_Create(id, "headx", 2, 1, 318.4, -80, 18)
        Anim_Create(id, "bodyx", 2, 1, 318.4, -80, 18)
        Anim_Create(id, "legsx", 2, 1, 320, -80, 18)
        Anim_Create(head, "x", 2, 1, 318.4, -80, 18)
        Anim_Create(body, "x", 2, 1, 318.4, -80, 18)
        Anim_Create(legs, "x", 2, 1, 320, -80, 18)
		}
	}
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
		//a = instance_create_depth(0,0,0,shaker);
		//a.target = id;
		//a.var_name = "x";
		//a.shake_distance = 20;
		//a.shake_speed = 3;
		//a.shake_random = 0;
		//a.shake_decrease = 10;
		//audio_play_sound(snd_damage,0,0);
	var attack_damage = instance_create_depth(320,y-30,0,battle_damage);
		attack_damage.bar_hp_max = _hpmax;
		attack_damage.bar_hp_original = _hp;
			Battle_SetMenuFightDamage(-2)
			attack_damage.damage = -2
		attack_damage.bar_hp_target = _hp-Battle_GetMenuFightDamage();
}