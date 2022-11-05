if(_input_acceptable=true){
if(global.battle=BATTLE.STARRY_SANS){var _speed=90}else{var _speed=65}
if(_dir==DIR.RIGHT){
	Anim_Create(self,"_aim_x",0,0,_aim_x,battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim),_speed);
}else{
	Anim_Create(self,"_aim_x_1",0,0,_aim_x_1,-(battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)),_speed);
}}