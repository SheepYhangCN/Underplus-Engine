with(battle_enemy_sponge_p2){
	Anim_Create(self,"x",0,0,320,-100,15)
	Anim_Create(self,"headx",0,0,headx,-100,15)
	Anim_Create(self,"bodyx",0,0,bodyx,-100,15)
	Anim_Create(self,"legx",0,0,legx,-100,15)
	instance_create_depth(x,y,DEPTH_BATTLE.ENEMY-1,battle_menu_fight_anim_knife)
}
alarm[2]=20