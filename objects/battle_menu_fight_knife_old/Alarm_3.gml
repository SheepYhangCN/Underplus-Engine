if(_dir==DIR.RIGHT){
	Anim_Create(self,"_aim_x",0,0,_aim_x,battle_board.left+battle_board.right+sprite_get_width(_aim_spr),42);
}else{
	//_aim_x=x+battle_board.right+sprite_get_width(_aim_spr)/2;
	Anim_Create(self,"_aim_x_1",0,0,_aim_x_1,-(battle_board.left+battle_board.right+sprite_get_width(_aim_spr)),42);
}