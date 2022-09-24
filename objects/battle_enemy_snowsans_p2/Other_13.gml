if(Battle_GetMenu()=3){
		body.image_index=1
		head.image_index=2
		random_flash=choose(0,1)
		if(Battle_GetTurnNumber()<12){
		if(random_flash=0){
		Anim_Create(self,"x",0,0,320,100,15)
		Anim_Create(self,"headx",0,0,320-1.6,100,15)
		Anim_Create(self,"bodyx",0,0,320-1.6,100,15)
		Anim_Create(self,"legsx",0,0,320,100,15)
		Anim_Create(head,"x",0,0,head.x,100,15)
		Anim_Create(body,"x",0,0,body.x,100,15)
		Anim_Create(legs,"x",0,0,legs.x,100,15)
		Anim_Create(self,"x",0,0,400,-100,15,40)
		Anim_Create(self,"headx",0,0,320-1.6+100,-100,15,40)
		Anim_Create(self,"bodyx",0,0,320-1.6+100,-100,15,40)
		Anim_Create(self,"legsx",0,0,320+100,-100,15,40)
		Anim_Create(head,"x",0,0,head.x+100,-100,15,40)
		Anim_Create(body,"x",0,0,body.x+100,-100,15,40)
		Anim_Create(legs,"x",0,0,legs.x+100,-100,15,40)
		}
		if(random_flash=1){
		Anim_Create(self,"x",0,0,320,-100,15)
		Anim_Create(self,"headx",0,0,320-1.6,-100,15)
		Anim_Create(self,"bodyx",0,0,320-1.6,-100,15)
		Anim_Create(self,"legsx",0,0,320,-100,15)
		Anim_Create(head,"x",0,0,head.x,-100,15)
		Anim_Create(body,"x",0,0,body.x,-100,15)
		Anim_Create(legs,"x",0,0,legs.x,-100,15)
		Anim_Create(self,"x",0,0,240,100,15,40)
		Anim_Create(self,"headx",0,0,320-1.6-100,100,15,40)
		Anim_Create(self,"bodyx",0,0,320-1.6-100,100,15,40)
		Anim_Create(self,"legsx",0,0,320-100,100,15,40)
		Anim_Create(head,"x",0,0,head.x-100,100,15,40)
		Anim_Create(body,"x",0,0,body.x-100,100,15,40)
		Anim_Create(legs,"x",0,0,legs.x-100,100,15,40)
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
			Battle_SetMenuFightDamage(BATTLE_DAMAGE.MISS)
			attack_damage.damage = BATTLE_DAMAGE.MISS
		attack_damage.bar_hp_target = _hp-Battle_GetMenuFightDamage();
}