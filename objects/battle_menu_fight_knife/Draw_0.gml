surface_set_target(Battle_GetBoardSurface());{
	draw_self();
	if(image_alpha==1){
		if(_dir=DIR.RIGHT){
		draw_sprite(spr_battle_menu_fight_aim,_aim_image,_aim_x,y);}else{
		draw_sprite(spr_battle_menu_fight_aim,_aim_image,_aim_x_1,y);}
	}
}surface_reset_target();